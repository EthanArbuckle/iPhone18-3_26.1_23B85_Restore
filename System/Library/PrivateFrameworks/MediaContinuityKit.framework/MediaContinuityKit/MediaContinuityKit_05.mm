uint64_t sub_2584D4BC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - v6;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask))
  {
    v9 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v10 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation;
  (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation, v2);
  v16[1] = 0;
  sub_2585337FC();
  v11 = *(v3 + 8);
  v11(v7, v2);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream, &unk_27F930970, &unk_25853ACE0);
  v11((v1 + v10), v2);
  v12 = *(v1 + v8);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream, &unk_27F930DA0, &unk_25853BD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation, &unk_27F930990, &unk_25853AD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation, &unk_27F930DB0, &qword_258536390);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, &unk_27F930DB0, &qword_258536390);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;
  v14 = sub_258532A4C();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2584D4E38()
{
  sub_2584D4BC4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AVConferenceBackedVideoStream()
{
  result = qword_27F930D08;
  if (!qword_27F930D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584D4EEC()
{
  sub_2584A7894(319, &qword_27F9308A8, &qword_27F9308B0, &unk_25853AC38);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_2584BB8BC();
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_2584A7894(319, &qword_27F9308C8, &qword_27F9308D0, &qword_25853AC60);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_2584A7894(319, &qword_27F9308D8, &unk_27F9308E0, &qword_25853AC68);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_2584A7894(319, &qword_27F92FE88, &qword_27F9308F0, &qword_25853AC70);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = sub_258532A4C();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2584D5150(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v7 = a3;

  v8 = a5;
  sub_2584D5450(a4, a5);
}

uint64_t sub_2584D526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v12 - v9;
  v12[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  sub_2585337EC();

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2584D5384(uint64_t a1)
{
  result = sub_2584D540C(&qword_27F9309D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584D53C8(uint64_t a1)
{
  result = sub_2584D540C(&unk_27F930D80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584D540C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AVConferenceBackedVideoStream();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584D5450(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - v15;
  result = (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation, v5);
  if (a1)
  {
    a2 = 3;
LABEL_5:
    v19[1] = a2;
    sub_2585337EC();
    (*(v6 + 8))(v10, v5);
    return (*(v12 + 8))(v16, v11);
  }

  if (a2)
  {
    v18 = a2;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_2584D5658@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v126 = a3;
  v127 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v119 = &v109 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DE0, &unk_25853BD80);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v116 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v121 = &v109 - v18;
  v124 = sub_258532AAC();
  v123 = *(v124 - 8);
  v19 = *(v123 + 64);
  v21 = MEMORY[0x28223BE20](v124, v20);
  v115 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v118 = &v109 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v120 = &v109 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v109 - v31;
  v33 = sub_258532D8C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for NetworkBackedNetworkInterface();
  v122 = *(v117 - 8);
  v39 = *(v122 + 64);
  v41 = MEMORY[0x28223BE20](v117, v40);
  v43 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v44);
  v125 = (&v109 - v45);
  v131 = 1;
  sub_2584A7B8C(a1, a2);
  v128 = a2;
  sub_2584B80A0(a1, a2);
  if (!v46)
  {
    goto LABEL_15;
  }

  sub_2584BA8B8();
  v48 = v47;

  if (!v48)
  {
    goto LABEL_15;
  }

  sub_258532D9C();
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_258465168(v32, &qword_27F930620, &unk_25853E7D0);
  }

  else
  {
    v49 = *(v34 + 32);
    v49(v38, v32, v33);
    v49(v43, v38, v33);
    v50 = v125;
    sub_258465104(v43, v125);
    v51 = v128;
    sub_2584A7B8C(a1, v128);
    v52 = v121;
    sub_25852E2E0(a1, v51, v121);
    v53 = v123;
    v54 = *(v123 + 48);
    v55 = v124;
    if (v54(v52, 1, v124) != 1)
    {
      v56 = *(v53 + 32);
      v57 = v120;
      v121 = v53 + 32;
      v114 = v56;
      v56(v120, v52, v55);
      v58 = v118;
      v113 = *(v53 + 16);
      v113(v118, v57, v55);
      v59 = v50;
      v60 = v119;
      sub_2584D62FC(v59, v119);
      v61 = *(v122 + 56);
      v122 += 56;
      v112 = v61;
      v61(v60, 0, 1, v117);
      v62 = sub_2584F1368(v58, v60);
      if (v65)
      {
        v66 = v65;
        v67 = v62;
        v110 = v63;
        v111 = v64;
        v68 = v126;
        v69 = v127;
        sub_2584A7B8C(v126, v127);
        v70 = v116;
        v71 = v69;
        v72 = v124;
        sub_25852E2E0(v68, v71, v116);
        if (v54(v70, 1, v72) == 1)
        {
          sub_2584D6360(v67, v110, v111, v66);
          (*(v123 + 8))(v120, v72);
          sub_2584D62A0(v125);
          sub_258465168(v70, &qword_27F930DE0, &unk_25853BD80);
          goto LABEL_15;
        }

        v109 = v66;
        v74 = v115;
        v114(v115, v70, v72);
        v75 = v118;
        v113(v118, v74, v72);
        v76 = v125;
        v77 = v119;
        sub_2584D62FC(v125, v119);
        v78 = v117;
        v112(v77, 0, 1, v117);
        v79 = sub_2584F1368(v75, v77);
        if (v82)
        {
          v83 = v82;
          v130[3] = v78;
          v130[4] = &off_2869900B8;
          v121 = v79;
          v119 = v80;
          v122 = v81;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
          sub_2584D62FC(v76, boxed_opaque_existential_1);
          v130[8] = &type metadata for NetworkBackedNetworkAddress;
          v130[9] = &off_2869900A0;
          v85 = swift_allocObject();
          v86 = v110;
          v85[2] = v67;
          v85[3] = v86;
          v87 = v109;
          v85[4] = v111;
          v85[5] = v87;
          v130[5] = v85;
          v130[13] = &type metadata for NetworkBackedNetworkAddress;
          v130[14] = &off_2869900A0;
          v88 = swift_allocObject();
          v130[10] = v88;
          sub_258467E20(a1, v128);
          sub_258467E20(v126, v127);
          v89 = v119;
          v88[2] = v121;
          v88[3] = v89;
          v88[4] = v122;
          v88[5] = v83;
          v90 = *(v123 + 8);
          v90(v74, v72);
          v90(v120, v72);
          sub_2584D62A0(v76);
          sub_2584D63E0(v130, a5);
          sub_2584D6418(v130);
          return result;
        }

        sub_2584D6360(v67, v110, v111, v109);
        v92 = *(v123 + 8);
        v92(v74, v72);
        v92(v120, v72);
        v73 = v76;
      }

      else
      {
        (*(v53 + 8))(v57, v55);
        v73 = v125;
      }

      sub_2584D62A0(v73);
      goto LABEL_15;
    }

    sub_2584D62A0(v50);
    sub_258465168(v52, &qword_27F930DE0, &unk_25853BD80);
  }

LABEL_15:
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v93 = sub_258532A4C();
  __swift_project_value_buffer(v93, qword_27F93CFD8);
  v94 = v128;
  sub_2584A7B8C(a1, v128);
  v96 = v126;
  v95 = v127;
  sub_2584A7B8C(v126, v127);
  v97 = sub_258532A2C();
  v98 = sub_2585338CC();
  sub_258467E20(a1, v94);
  sub_258467E20(v96, v95);
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v129 = v100;
    *v99 = 136315138;
    sub_2584A7B8C(a1, v94);
    sub_2584A7B8C(v96, v95);
    v101 = sub_2584AE0D8(a1, v94, v96, v95);
    v125 = a5;
    v102 = v94;
    v103 = v101;
    v105 = v104;
    sub_258467E20(a1, v102);
    sub_258467E20(v96, v95);
    v106 = sub_2584713B0(v103, v105, &v129);

    *(v99 + 4) = v106;
    _os_log_impl(&dword_25845E000, v97, v98, "Unable to create ControlConnectionInfoBackedNetworkPath controlConnectionInfo: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x259C82900](v100, -1, -1);
    MEMORY[0x259C82900](v99, -1, -1);

    v107 = a1;
    v108 = v102;
    a5 = v125;
  }

  else
  {

    v107 = a1;
    v108 = v94;
  }

  sub_258467E20(v107, v108);
  sub_258467E20(v96, v95);
  result = 0.0;
  *(a5 + 105) = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  return result;
}

uint64_t sub_2584D615C()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD0, &unk_25853BD70);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000011, 0x80000002585414F0);
  sub_258533C8C();
  return 0;
}

uint64_t sub_2584D62A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkBackedNetworkInterface();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584D62FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkInterface();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584D6360(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_258467E20(result, a2);
  }

  return result;
}

uint64_t sub_2584D63A0()
{
  sub_258467E20(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2584D6474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2584D64BC(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584D652C()
{
  v1 = v0;
  if (!*(v0 + 16))
  {
    goto LABEL_8;
  }

  v2 = qword_27F92F900;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D050);
  swift_unknownObjectRetain();
  v4 = sub_258532A2C();
  v5 = sub_2585338DC();
  if (!os_log_type_enabled(v4, v5))
  {
    swift_unknownObjectRelease_n();

    goto LABEL_8;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v14 = v7;
  *v6 = 136315138;
  description = os_transaction_get_description();
  result = swift_unknownObjectRelease();
  if (description)
  {
    v10 = sub_2585334CC();
    v12 = sub_2584713B0(v10, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "Transaction=%s not released", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);

    swift_unknownObjectRelease();
LABEL_8:
    v13 = *(v1 + 16);
    swift_unknownObjectRelease();
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2584D66D4()
{
  sub_2584D652C();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2584D672C()
{
  v1 = v0;
  sub_258533B8C();

  sub_2585329BC();
  sub_2584BA1B0();
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  sub_25853348C();

  v3 = os_transaction_create();

  v4 = *(v1 + 16);
  *(v1 + 16) = v3;

  return swift_unknownObjectRelease();
}

uint64_t sub_2584D6810()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2584D6874()
{
  v1 = v0;
  v2 = sub_25853398C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Signpost();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584D6A6C(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v12;
  if (EnumCaseMultiPayload != 1)
  {
    v22 = *(v12 + 1);
    v21 = *(v12 + 2);
    v23 = *(v12 + 3);
    return v14;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
  v16 = &v12[*(v15 + 64)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  result = (*(v3 + 32))(v7, &v12[*(v15 + 48)], v2);
  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_25853397C();
    sub_2585339DC();
    (*(v3 + 8))(v7, v2);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2584D6A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2584D6AD0(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  v4 = a1[13];
  v5 = a1[14];
  v6 = a1[15];
  type metadata accessor for ControlConnectionEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v7 = sub_25853384C();
  if (v8 <= 0x3F)
  {
    v19 = *(v7 - 8) + 64;
    v9 = sub_25853380C();
    if (v10 <= 0x3F)
    {
      v20 = *(v9 - 8) + 64;
      type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
      v11 = sub_25853372C();
      if (v12 <= 0x3F)
      {
        v21 = *(v11 - 8) + 64;
        v13 = sub_2585336EC();
        if (v14 <= 0x3F)
        {
          v22 = *(v13 - 8) + 64;
          sub_258472254();
          if (v16 <= 0x3F)
          {
            v23 = *(v15 - 8) + 64;
            sub_2584E1A48();
            if (v18 <= 0x3F)
            {
              v24 = *(v17 - 8) + 64;
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2584D6D74@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v3 = sub_2585337DC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2584D6E64(unsigned __int8 a1)
{
  sub_258533EEC();
  MEMORY[0x259C81F40](a1);
  return sub_258533F2C();
}

uint64_t sub_2584D6EC8()
{
  sub_258533EEC();
  sub_2584D6E3C(v2, *v0);
  return sub_258533F2C();
}

uint64_t sub_2584D6F10()
{
  type metadata accessor for NetworkBackedControlConnection.State();
  swift_getWitnessTable();
  return sub_2585333EC() & 1;
}

uint64_t sub_2584D6FBC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_2584D6E64(*v1);
}

uint64_t sub_2584D6FD0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  return sub_2584D6E3C(a1, *v2);
}

uint64_t sub_2584D6FE4(uint64_t a1, void *a2)
{
  sub_258533EEC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  sub_2584D6E3C(v11, *v2);
  return sub_258533F2C();
}

void sub_2584D707C(uint64_t a1)
{
  v102 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v104 = *(*v1 + 80);
  v105 = v4;
  v106 = *(v3 + 112);
  v5 = type metadata accessor for ControlConnectionEvent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v97 = &v87 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v9 = sub_25853380C();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v94 = &v87 - v12;
  v98 = v5;
  v93 = sub_2585337CC();
  v92 = *(v93 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v93, v14);
  v91 = &v87 - v15;
  v16 = type metadata accessor for NetworkBackedNetworkPath();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v90 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v89 = &v87 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v88 = &v87 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v101 = &v87 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v87 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930F98, &qword_25853C230);
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v87 - v43;
  v45 = *(v2 + 256);
  v100 = v1;
  v46 = v1 + v45;
  swift_beginAccess();
  v47 = *(v40 + 56);
  v99 = v46;
  sub_2584AC3B8(v46, v44, &qword_27F930F88, &unk_25853C1E8);
  v48 = v102;
  sub_2584AC3B8(v102, &v44[v47], &qword_27F930F88, &unk_25853C1E8);
  v49 = *(v17 + 48);
  if (v49(v44, 1, v16) == 1)
  {
    if (v49(&v44[v47], 1, v16) == 1)
    {
      sub_258465168(v44, &qword_27F930F88, &unk_25853C1E8);
      return;
    }
  }

  else
  {
    sub_2584AC3B8(v44, v38, &qword_27F930F88, &unk_25853C1E8);
    if (v49(&v44[v47], 1, v16) != 1)
    {
      sub_2584E22D8(&v44[v47], v21);
      v66 = sub_2584F3CC0(v38, v21);
      sub_2584E23A0(v21);
      sub_2584E23A0(v38);
      sub_258465168(v44, &qword_27F930F88, &unk_25853C1E8);
      v50 = v48;
      v51 = v100;
      if (v66)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_2584E23A0(v38);
  }

  sub_258465168(v44, qword_27F930F98, &qword_25853C230);
  v50 = v48;
  v51 = v100;
LABEL_7:
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v52 = sub_258532A4C();
  __swift_project_value_buffer(v52, qword_27F93CFD8);
  v53 = v101;
  sub_2584AC3B8(v50, v101, &qword_27F930F88, &unk_25853C1E8);

  v54 = sub_258532A2C();
  v55 = sub_2585338EC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v103 = v100;
    *v56 = 136315650;
    v57 = sub_2584E1FC0();
    v58 = v53;
    v60 = v59;

    v61 = sub_2584713B0(v57, v60, &v103);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    v62 = v58;
    v63 = v88;
    sub_2584AC3B8(v62, v88, &qword_27F930F88, &unk_25853C1E8);
    if (v49(v63, 1, v16) == 1)
    {
      sub_258465168(v63, &qword_27F930F88, &unk_25853C1E8);
      v64 = 0xE400000000000000;
      v65 = 1701736270;
    }

    else
    {
      sub_258464C30(v63 + *(v16 + 20), &v104);
      sub_2584E23A0(v63);
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      v65 = sub_258532D5C();
      v64 = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
    }

    sub_258465168(v101, &qword_27F930F88, &unk_25853C1E8);
    v68 = sub_2584713B0(v65, v64, &v103);

    *(v56 + 14) = v68;
    *(v56 + 22) = 2080;
    v69 = v99;
    v70 = v49(v99, 1, v16);
    v50 = v102;
    if (v70)
    {
      v71 = 0xE400000000000000;
      v72 = 1701736270;
    }

    else
    {
      sub_258464C30(v69 + *(v16 + 20), &v104);
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      v73 = sub_258532D5C();
      v71 = v74;
      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
      v72 = v73;
    }

    v75 = sub_2584713B0(v72, v71, &v103);

    *(v56 + 24) = v75;
    _os_log_impl(&dword_25845E000, v54, v55, "%s migrated from %s to %s", v56, 0x20u);
    v76 = v100;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v76, -1, -1);
    MEMORY[0x259C82900](v56, -1, -1);
  }

  else
  {

    sub_258465168(v53, &qword_27F930F88, &unk_25853C1E8);
  }

  if (v51[112] == 2)
  {
    v78 = v95;
    v77 = v96;
    v79 = &v51[*(*v51 + 192)];
    v80 = v94;
    (*(v95 + 16))(v94, v79, v96);
    v81 = v89;
    sub_2584AC3B8(v50, v89, &qword_27F930F88, &unk_25853C1E8);
    if (v49(v81, 1, v16) == 1)
    {
      sub_258465168(v81, &qword_27F930F88, &unk_25853C1E8);
      v82 = v97;
      *v97 = 0u;
      *(v82 + 1) = 0u;
      *(v82 + 4) = 0;
    }

    else
    {
      v82 = v97;
      *(v97 + 3) = v16;
      *(v82 + 4) = &off_2869900E8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      sub_2584E22D8(v81, boxed_opaque_existential_1);
    }

    v84 = v90;
    sub_2584AC3B8(v99, v90, &qword_27F930F88, &unk_25853C1E8);
    if (v49(v84, 1, v16) == 1)
    {
      sub_258465168(v84, &qword_27F930F88, &unk_25853C1E8);
      *(v82 + 40) = 0u;
      *(v82 + 56) = 0u;
      *(v82 + 9) = 0;
    }

    else
    {
      *(v82 + 8) = v16;
      *(v82 + 9) = &off_2869900E8;
      v85 = __swift_allocate_boxed_opaque_existential_1(v82 + 5);
      sub_2584E22D8(v84, v85);
    }

    swift_storeEnumTagMultiPayload();
    v86 = v91;
    sub_2585337EC();
    (*(v78 + 8))(v80, v77);
    (*(v92 + 8))(v86, v93);
  }
}

uint64_t sub_2584D7A88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v10[-v6];
  v8 = *(*v1 + 256);
  swift_beginAccess();
  sub_2584AC3B8(v1 + v8, v7, &qword_27F930F88, &unk_25853C1E8);
  swift_beginAccess();
  sub_2584E2664(a1, v1 + v8);
  swift_endAccess();
  sub_2584D707C(v7);
  sub_258465168(a1, &qword_27F930F88, &unk_25853C1E8);
  return sub_258465168(v7, &qword_27F930F88, &unk_25853C1E8);
}

uint64_t sub_2584D7BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_2584D7BF8(a1, a2, a3);
  return v9;
}

uint64_t sub_2584D7BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v75 = a2;
  v65 = a1;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 104);
  v9 = *(*v3 + 112);
  v10 = *(*v3 + 120);
  v77 = *(*v3 + 80);
  v5 = v77;
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = v10;
  v11 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
  v73 = sub_2585336BC();
  v71 = *(v73 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v73, v13);
  v69 = &v60 - v14;
  v72 = sub_2585336EC();
  v70 = *(v72 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v72, v16);
  v68 = &v60 - v17;
  v74 = v11;
  v66 = sub_25853372C();
  v64 = *(v66 - 8);
  v18 = *(v64 + 64);
  MEMORY[0x28223BE20](v66, v19);
  v63 = &v60 - v20;
  v77 = v5;
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = v10;
  type metadata accessor for ControlConnectionEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v62 = sub_2585337DC();
  v21 = *(v62 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v62, v23);
  v25 = &v60 - v24;
  v61 = sub_25853380C();
  v26 = *(v61 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v61, v28);
  v30 = &v60 - v29;
  v31 = sub_25853384C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v60 - v35;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  *(v4 + *(*v4 + 224)) = 0;
  *(v4 + *(*v4 + 232)) = 0;
  v37 = *(*v4 + 240);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v38 - 8) + 56))(v4 + v37, 1, 1, v38);
  *(v4 + *(*v4 + 248)) = 0;
  v39 = *(*v4 + 256);
  v40 = type metadata accessor for NetworkBackedNetworkPath();
  (*(*(v40 - 8) + 56))(v4 + v39, 1, 1, v40);
  if (*(v75 + 24))
  {
    v41 = 0;
    *(v4 + 176) = v65;
  }

  else
  {
    v41 = v65;
  }

  *(v4 + 128) = v41;
  sub_2584AC3B8(v75, v4 + 136, &qword_27F9304F8, &qword_258538138);
  *(v4 + 120) = v67;
  sub_2584D6D74(v25);

  sub_2585337BC();
  (*(v21 + 8))(v25, v62);
  (*(v32 + 32))(v4 + *(*v4 + 184), v36, v31);
  (*(v26 + 32))(v4 + *(*v4 + 192), v30, v61);
  v42 = v71;
  v43 = v69;
  v44 = v73;
  (*(v71 + 104))(v69, *MEMORY[0x277D85778], v73);
  v45 = v63;
  v46 = v68;
  sub_25853369C();
  (*(v42 + 8))(v43, v44);
  (*(v64 + 32))(v4 + *(*v4 + 200), v45, v66);
  (*(v70 + 32))(v4 + *(*v4 + 208), v46, v72);
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v47 = sub_258532A4C();
  __swift_project_value_buffer(v47, qword_27F93CFD8);

  v48 = sub_258532A2C();
  v49 = sub_2585338EC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v77 = v51;
    *v50 = 136315394;
    v52 = sub_2584E1FC0();
    v54 = v53;

    v55 = sub_2584713B0(v52, v54, &v77);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2080;
    v76 = sub_258532C0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
    v56 = sub_25853347C();
    v58 = sub_2584713B0(v56, v57, &v77);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_25845E000, v48, v49, "%s created with connection=%s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v51, -1, -1);
    MEMORY[0x259C82900](v50, -1, -1);
  }

  else
  {
  }

  sub_258465168(v75, &qword_27F9304F8, &qword_258538138);
  return v4;
}

uint64_t sub_2584D84E4()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2584D852C, v0, 0);
}

uint64_t sub_2584D852C()
{
  v36 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v8 = v1[14];
  v7 = v1[15];
  v9 = *(v2 + 112);
  if ((sub_2584D6F10() & 1) == 0)
  {
    v33 = v7;
    v34 = v8;
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = sub_258532A4C();
    __swift_project_value_buffer(v11, qword_27F93CFD8);

    v12 = sub_258532A2C();
    v13 = sub_2585338EC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[8];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v32 = v2;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v16 = 136315138;

      v17 = v6;
      v18 = v5;
      v19 = v3;
      v20 = sub_2584E1FC0();
      v31 = v4;
      v22 = v21;

      v23 = v20;
      v3 = v19;
      v5 = v18;
      v6 = v17;
      v24 = sub_2584713B0(v23, v22, &v35);
      v4 = v31;

      *(v16 + 4) = v24;
      _os_log_impl(&dword_25845E000, v12, v13, "%s invalidating", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v2 = v32;
      MEMORY[0x259C82900](v30, -1, -1);
      MEMORY[0x259C82900](v16, -1, -1);
    }

    else
    {
    }

    v25 = v0[8];
    *(v2 + 112) = 3;
    v0[2] = v3;
    v0[3] = v4;
    v0[4] = v5;
    v0[5] = v6;
    v0[6] = v34;
    v0[7] = v33;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    v26 = swift_allocError();
    *v27 = 2;
    sub_2584E0A68(v26);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_2584D87C8(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v2[50] = *v1;
  return MEMORY[0x2822009F8](sub_2584D8810, v1, 0);
}

uint64_t sub_2584D8810()
{
  v47 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v1 + 112);
  v4 = v2[10];
  *(v0 + 408) = v4;
  v5 = v2[11];
  *(v0 + 416) = v5;
  v6 = v2[12];
  *(v0 + 424) = v6;
  v7 = v2[13];
  *(v0 + 432) = v7;
  v8 = v2[14];
  *(v0 + 440) = v8;
  v9 = v2[15];
  *(v0 + 448) = v9;
  if (v3)
  {
    *&v10 = v6;
    *(&v10 + 1) = v7;
    *&v11 = v4;
    *(&v11 + 1) = v5;
    *(v0 + 16) = v11;
    *(v0 + 32) = v10;
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    v12 = swift_allocError();
    *v13 = 0;
LABEL_3:
    swift_willThrow();
    v14 = *(v0 + 392);
    sub_2584E10BC(v12);
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }

  *(v1 + 112) = 1;
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 392);
  v18 = sub_258532A4C();
  *(v0 + 456) = __swift_project_value_buffer(v18, qword_27F93CFD8);

  v19 = sub_258532A2C();
  v20 = sub_2585338EC();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 392);
  if (v21)
  {
    log = v19;
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v23 = 136315138;

    v42 = sub_2584E1FC0();
    v43 = v20;
    v25 = v24;

    v26 = sub_2584713B0(v42, v25, &v46);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_25845E000, log, v43, "%s activating", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x259C82900](v45, -1, -1);
    MEMORY[0x259C82900](v23, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 392);
  v28 = *(v27 + 176);
  *(v0 + 464) = v28;
  if (v28)
  {

    v29 = swift_task_alloc();
    *(v0 + 472) = v29;
    *v29 = v0;
    v29[1] = sub_2584D8D60;
    v30 = *(v0 + 392);

    return sub_2584DB670(v28);
  }

  else
  {
    v31 = *(v27 + 128);
    *(v0 + 488) = v31;
    if (!v31)
    {
      *&v36 = v4;
      *(&v36 + 1) = v5;
      *&v37 = v6;
      *(&v37 + 1) = v7;
      *(v0 + 64) = v36;
      *(v0 + 80) = v37;
      *(v0 + 96) = v8;
      *(v0 + 104) = v9;
      type metadata accessor for NetworkBackedControlConnection.Errors();
      swift_getWitnessTable();
      v12 = swift_allocError();
      *v38 = 5;
      goto LABEL_3;
    }

    sub_2584DEA2C();
    *(v0 + 376) = v31;
    v32 = sub_258532F6C();
    *(v0 + 344) = sub_25853313C();
    *(v0 + 352) = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v34 = MEMORY[0x277CD8F50];
    *(v0 + 360) = MEMORY[0x277CD8F48];
    *(v0 + 368) = v34;
    *(v0 + 304) = 2;
    *(v0 + 312) = v32;
    *(v0 + 320) = v0 + 344;
    *(v0 + 328) = WitnessTable;
    *(v0 + 336) = v0 + 360;
    sub_258532C6C();
    swift_getWitnessTable();
    if (sub_25852FEC4())
    {
      v35 = *(v0 + 392);
      sub_2584DFE70();
      v39 = swift_task_alloc();
      *(v0 + 496) = v39;
      *v39 = v0;
      v40 = sub_2584D9164;
    }

    else
    {
      v39 = swift_task_alloc();
      *(v0 + 512) = v39;
      *v39 = v0;
      v40 = sub_2584D955C;
    }

    v39[1] = v40;
    v41 = *(v0 + 392);

    return sub_2584DB8D0(v31);
  }
}

uint64_t sub_2584D8D60()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_2584D9964;
  }

  else
  {
    v6 = sub_2584D8E8C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584D8E8C()
{
  v27 = v0;
  v1 = (v0 + 408);
  if (*(*(v0 + 392) + 112) == 1)
  {
    sub_2584DD9E4(*(v0 + 464));

    v2 = *(v0 + 456);
    *(*(v0 + 392) + 112) = 2;

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 392);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;

      v9 = sub_2584E1FC0();
      v11 = v10;

      v12 = sub_2584713B0(v9, v11, &v26);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25845E000, v3, v4, "%s activated", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
    }

    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    v21 = *(*v20 + 184);
    v22 = *(v0 + 424);
    *(v0 + 160) = *v1;
    v23 = *(v0 + 440);
    *(v0 + 176) = v22;
    *(v0 + 192) = v23;
    type metadata accessor for ControlConnectionEvent();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v24 = sub_25853384C();
    (*(*(v24 - 8) + 16))(v19, v20 + v21, v24);
    v18 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 464);
    v14 = *(v0 + 424);
    *(v0 + 256) = *v1;
    *(v0 + 272) = v14;
    *(v0 + 288) = *(v0 + 440);
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = 2;
    swift_willThrow();

    v17 = *(v0 + 392);
    sub_2584E10BC(v15);
    swift_willThrow();
    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_2584D9164()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_2584D99E8;
  }

  else
  {
    v6 = sub_2584D9290;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584D9290()
{
  v29 = v0;
  v1 = (v0 + 408);
  if (*(*(v0 + 392) + 112) == 1)
  {
    v2 = *(v0 + 488);

    v3 = *(v0 + 456);
    *(*(v0 + 392) + 112) = 2;

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 392);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136315138;

      v10 = sub_2584E1FC0();
      v12 = v11;

      v13 = sub_2584713B0(v10, v12, &v28);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_25845E000, v4, v5, "%s activated", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 384);
    v22 = *(v0 + 392);
    v23 = *(*v22 + 184);
    v24 = *(v0 + 424);
    *(v0 + 160) = *v1;
    v25 = *(v0 + 440);
    *(v0 + 176) = v24;
    *(v0 + 192) = v25;
    type metadata accessor for ControlConnectionEvent();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v26 = sub_25853384C();
    (*(*(v26 - 8) + 16))(v21, v22 + v23, v26);
    v20 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 488);
    v15 = *(v0 + 424);
    *(v0 + 208) = *v1;
    v16 = *(v0 + 440);
    *(v0 + 224) = v15;
    *(v0 + 240) = v16;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    v17 = swift_allocError();
    *v18 = 2;
    swift_willThrow();

    v19 = *(v0 + 392);
    sub_2584E10BC(v17);
    swift_willThrow();
    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_2584D955C()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_2584D9A6C;
  }

  else
  {
    v6 = sub_2584D9688;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584D9688()
{
  v30 = v0;
  v1 = (v0 + 408);
  if (*(*(v0 + 392) + 112) == 1)
  {
    v2 = *(v0 + 520);
    sub_2584DFE70();
    v3 = v2;
    v4 = *(v0 + 488);

    if (!v2)
    {
      v5 = *(v0 + 456);
      *(*(v0 + 392) + 112) = 2;

      v6 = sub_258532A2C();
      v7 = sub_2585338EC();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 392);
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v29 = v11;
        *v10 = 136315138;

        v12 = sub_2584E1FC0();
        v14 = v13;

        v15 = sub_2584713B0(v12, v14, &v29);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_25845E000, v6, v7, "%s activated", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x259C82900](v11, -1, -1);
        MEMORY[0x259C82900](v10, -1, -1);
      }

      else
      {
      }

      v23 = *(v0 + 384);
      v24 = *(v0 + 392);
      v25 = *(*v24 + 184);
      v26 = *(v0 + 424);
      *(v0 + 160) = *v1;
      v27 = *(v0 + 440);
      *(v0 + 176) = v26;
      *(v0 + 192) = v27;
      type metadata accessor for ControlConnectionEvent();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
      v28 = sub_25853384C();
      (*(*(v28 - 8) + 16))(v23, v24 + v25, v28);
      v21 = *(v0 + 8);
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *(v0 + 424);
    *(v0 + 112) = *v1;
    v17 = *(v0 + 488);
    v18 = *(v0 + 440);
    *(v0 + 128) = v16;
    *(v0 + 144) = v18;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    v3 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  v20 = *(v0 + 392);
  sub_2584E10BC(v3);
  swift_willThrow();
  v21 = *(v0 + 8);
LABEL_7:

  return v21();
}

uint64_t sub_2584D9964()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 392);
  sub_2584E10BC(*(v0 + 480));
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2584D99E8()
{
  v1 = *(v0 + 488);

  v2 = *(v0 + 392);
  sub_2584E10BC(*(v0 + 504));
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2584D9A6C()
{
  v1 = *(v0 + 488);

  v2 = *(v0 + 392);
  sub_2584E10BC(*(v0 + 520));
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2584D9AF0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *v1;
  v2[16] = *v1;
  v4 = *(v3 + 80);
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584D9BF4, v1, 0);
}

uint64_t sub_2584D9BF4()
{
  v1 = v0[16];
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  if (*(v0[15] + 112) == 2)
  {
    sub_2584DD8A4();
    v7 = *(v0[15] + 176);
    v0[21] = v7;
    if (v7)
    {
      v8 = *(MEMORY[0x277CD8B70] + 4);

      v9 = swift_task_alloc();
      v0[22] = v9;
      *v9 = v0;
      v9[1] = sub_2584D9DE8;
      v10 = v0[14];
      v11 = MEMORY[0x277D84F90];

      return MEMORY[0x282125408](v10, v11, 0);
    }

    v12 = v0 + 8;
    v13 = 4;
    v14 = 13;
    v15 = 12;
    v16 = 11;
    v17 = 10;
    v18 = 9;
  }

  else
  {
    v12 = v0 + 2;
    v13 = 3;
    v14 = 7;
    v15 = 6;
    v16 = 5;
    v17 = 4;
    v18 = 3;
  }

  *v12 = v0[17];
  v0[v18] = v2;
  v0[v17] = v3;
  v0[v16] = v4;
  v0[v15] = v5;
  v0[v14] = v6;
  type metadata accessor for NetworkBackedControlConnection.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v19 = v13;
  swift_willThrow();
  v21 = v0[19];
  v20 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2584D9DE8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_2584DA1E8;
  }

  else
  {
    v6 = sub_2584D9F14;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584D9F14()
{
  v38 = v0;
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = sub_258532A4C();
  __swift_project_value_buffer(v6, qword_27F93CFD8);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);

  v8 = sub_258532A2C();
  v9 = sub_2585338BC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  if (v10)
  {
    v32 = v0[19];
    v36 = v0[21];
    v13 = v0[17];
    v12 = v0[18];
    v35 = v9;
    v14 = v0[15];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v15 = 136315394;

    v16 = sub_2584E1FC0();
    log = v8;
    v17 = v7;
    v19 = v18;

    v20 = sub_2584713B0(v16, v19, &v37);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v17(v32, v11, v13);
    v21 = sub_25853347C();
    v23 = v22;
    (*(v12 + 8))(v11, v13);
    v24 = sub_2584713B0(v21, v23, &v37);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25845E000, log, v35, "%s sent %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v34, -1, -1);
    MEMORY[0x259C82900](v15, -1, -1);
  }

  else
  {
    v25 = v0[17];
    v26 = v0[18];
    v27 = v0[15];

    (*(v26 + 8))(v11, v25);
  }

  v29 = v0[19];
  v28 = v0[20];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2584DA1E8()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2584DA25C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 112);
  if (v1[112] == 2)
  {
    v18 = *(*v1 + 112);
    v19 = *(*v1 + 80);
    v8 = v1;
    result = sub_2584DD644();
    if (!v2)
    {
      v10 = sub_258532F6C();
      v21[0] = sub_25853313C();
      v21[1] = sub_25853318C();
      WitnessTable = swift_getWitnessTable();
      v20[0] = MEMORY[0x277CD8F48];
      v20[1] = MEMORY[0x277CD8F50];
      v22.i64[0] = 2;
      v22.i64[1] = v10;
      *&v23 = v21;
      *(&v23 + 1) = WitnessTable;
      *&v24 = v20;
      sub_258532C6C();

      v12 = sub_258532C2C();
      v22 = vdupq_laneq_s64(v19, 1);
      v23 = v18;
      v24 = v18;
      v13 = type metadata accessor for NetworkBackedControlConnection();
      v22 = v19;
      *&v23 = v4;
      *(&v23 + 1) = v5;
      v24 = v18;
      *(&v23 + 1) = type metadata accessor for NetworkBackedControlConnection();
      *&v24 = swift_getWitnessTable();
      v22.i64[0] = v8;
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();

      sub_2584D7BF8(v12, &v22, 1);
      a1[3] = v13;
      a1[4] = swift_getWitnessTable();

      *a1 = v16;
    }
  }

  else
  {
    v22 = *(*v1 + 80);
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2584DA4F4(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *v1;
  v2[28] = *v1;
  v4 = *(v3 + 80);
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DA604, v1, 0);
}

uint64_t sub_2584DA604()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v2 + 112);
  v4 = v1[11];
  *(v0 + 272) = v4;
  v5 = v1[12];
  *(v0 + 280) = v5;
  v6 = v1[13];
  *(v0 + 288) = v6;
  v7 = v1[14];
  *(v0 + 296) = v7;
  v8 = v1[15];
  *(v0 + 304) = v8;
  if (v3)
  {
    *(v0 + 16) = *(v0 + 232);
    *&v9 = v4;
    *(&v9 + 1) = v5;
    *&v10 = v6;
    *(&v10 + 1) = v7;
    *(v0 + 40) = v10;
    *(v0 + 24) = v9;
    *(v0 + 56) = v8;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v11 = 0;
LABEL_6:
    swift_willThrow();
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);

    v19 = *(v0 + 8);

    return v19();
  }

  if (*(v2 + 128))
  {
    *(v0 + 160) = *(v0 + 232);
    *&v12 = v4;
    *(&v12 + 1) = v5;
    *&v13 = v6;
    *(&v13 + 1) = v7;
    *(v0 + 184) = v13;
    *(v0 + 168) = v12;
    *(v0 + 200) = v8;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    v15 = 8;
LABEL_5:
    *v14 = v15;
    goto LABEL_6;
  }

  v21 = *(v2 + 176);
  *(v0 + 312) = v21;
  if (!v21)
  {
    *(v0 + 64) = *(v0 + 232);
    *&v24 = v4;
    *(&v24 + 1) = v5;
    *&v25 = v6;
    *(&v25 + 1) = v7;
    *(v0 + 88) = v25;
    *(v0 + 72) = v24;
    *(v0 + 104) = v8;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    v15 = 4;
    goto LABEL_5;
  }

  v22 = swift_task_alloc();
  *(v0 + 320) = v22;
  *v22 = v0;
  v22[1] = sub_2584DA89C;
  v23 = *(v0 + 216);

  return sub_2584DB670(v21);
}

uint64_t sub_2584DA89C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_2584DAF74;
  }

  else
  {
    v6 = sub_2584DA9C8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584DA9C8()
{
  if (*(*(v0 + 216) + 112))
  {
    *(v0 + 112) = *(v0 + 232);
    v1 = *(v0 + 304);
    v2 = *(v0 + 312);
    v3 = *(v0 + 288);
    *(v0 + 120) = *(v0 + 272);
    *(v0 + 136) = v3;
    *(v0 + 152) = v1;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 248);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 312);
    v11 = *(MEMORY[0x277CD8B78] + 4);
    v12 = swift_task_alloc();
    *(v0 + 336) = v12;
    *v12 = v0;
    v12[1] = sub_2584DAB40;
    v13 = *(v0 + 264);

    return MEMORY[0x282125410](v13);
  }
}

uint64_t sub_2584DAB40()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_2584DAFFC;
  }

  else
  {

    v6 = sub_2584DAC7C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584DAC7C()
{
  v38 = v0;
  (*(v0[30] + 32))(v0[26], v0[33], v0[29]);
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = sub_258532A4C();
  __swift_project_value_buffer(v6, qword_27F93CFD8);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);

  v8 = sub_258532A2C();
  v9 = sub_2585338BC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[32];
  if (v10)
  {
    v33 = v0[31];
    v36 = v0[39];
    v13 = v0[29];
    v12 = v0[30];
    v35 = v9;
    v14 = v0[27];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v15 = 136315394;

    v16 = sub_2584E1FC0();
    v32 = v7;
    v18 = v17;

    v19 = sub_2584713B0(v16, v18, &v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v32(v33, v11, v13);
    v20 = sub_25853347C();
    v22 = v21;
    (*(v12 + 8))(v11, v13);
    v23 = sub_2584713B0(v20, v22, &v37);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_25845E000, v8, v35, "%s receivedOnce, message: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v34, -1, -1);
    MEMORY[0x259C82900](v15, -1, -1);
  }

  else
  {
    v24 = v0[29];
    v25 = v0[30];
    v26 = v0[27];

    (*(v25 + 8))(v11, v24);
  }

  v28 = v0[32];
  v27 = v0[33];
  v29 = v0[31];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2584DAF74()
{
  v1 = v0[39];

  v2 = v0[41];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2584DAFFC()
{
  v1 = v0[39];

  v2 = v0[43];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2584DB084(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DB148, v1, 0);
}

uint64_t sub_2584DB148()
{
  v1 = *(v0 + 176);
  if (*(v1 + 112) == 2)
  {
    sub_2584AC3B8(v1 + 136, v0 + 104, &qword_27F9304F8, &qword_258538138);
    if (*(v0 + 128))
    {
      sub_258464C18((v0 + 104), v0 + 64);
      v2 = *(v0 + 88);
      v3 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
      v4 = *(v3 + 104);
      v24 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      *(v0 + 200) = v6;
      *v6 = v0;
      v6[1] = sub_2584DB46C;
      v7 = *(v0 + 168);

      return v24(v7, v2, v3);
    }

    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    sub_258465168(v0 + 104, &qword_27F9304F8, &qword_258538138);
    v17 = *(*v16 + 256);
    swift_beginAccess();
    sub_2584AC3B8(v16 + v17, v15, &qword_27F930F88, &unk_25853C1E8);
    v18 = type metadata accessor for NetworkBackedNetworkPath();
    v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
    v20 = *(v0 + 192);
    v21 = *(v0 + 168);
    if (v19 == 1)
    {
      sub_258465168(*(v0 + 192), &qword_27F930F88, &unk_25853C1E8);
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0;
    }

    else
    {
      *(v21 + 24) = v18;
      *(v21 + 32) = &off_2869900E8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
      sub_2584E22D8(v20, boxed_opaque_existential_1);
    }

    v23 = *(v0 + 192);

    v14 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 184);
    v10 = v9[6];
    v11 = v9[7];
    *(v0 + 16) = v9[5];
    *(v0 + 32) = v10;
    *(v0 + 48) = v11;
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    v13 = *(v0 + 192);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_2584DB46C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_2584DB604;
  }

  else
  {
    v6 = sub_2584DB598;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584DB598()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[24];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2584DB604()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[26];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2584DB670(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2584DB690, v1, 0);
}

uint64_t sub_2584DB690()
{
  if (*(v0[3] + 184))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_2584DEA2C();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_2584DB768;
    v4 = v0[2];
    v5 = v0[3];

    return sub_2584DB8D0(v4);
  }
}

uint64_t sub_2584DB768()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_2584DB8AC, v7, 0);
  }
}

uint64_t sub_2584DB8D0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DB994, v1, 0);
}

uint64_t sub_2584DB994()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_2584E1378();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2584DBA30;
  v4 = v0[12];
  v5 = v0[13];

  return sub_2584DBD24(v4);
}

uint64_t sub_2584DBA30()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = *(v2 + 120);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_2584DBB80, v8, 0);
  }
}

uint64_t sub_2584DBB80()
{
  v1 = v0[12];
  result = sub_258532C0C();
  if (result)
  {
    v3 = v0[17];
    v4 = v0[13];
    sub_2584DD36C();

    if (!v3)
    {
      v5 = *(v0[13] + 128);
      if (v5)
      {
        v6 = v0[14];
        v7 = v0[15];
        v0[11] = v5;
        v8 = v6[10];
        v9 = v6[12];
        v10 = v6[13];
        v11 = sub_258532F6C();

        v0[7] = sub_25853313C();
        v0[8] = sub_25853318C();
        WitnessTable = swift_getWitnessTable();
        v13 = MEMORY[0x277CD8F50];
        v0[9] = MEMORY[0x277CD8F48];
        v0[10] = v13;
        v0[2] = 2;
        v0[3] = v11;
        v0[4] = v0 + 7;
        v0[5] = WitnessTable;
        v0[6] = v0 + 9;
        sub_258532C6C();
        swift_getWitnessTable();
        sub_25852FF2C(v7);
        sub_2584D7A88(v7);
      }
    }

    v14 = v0[15];

    v15 = v0[1];

    return v15();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2584DBD24(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x2822009F8](sub_2584DBD6C, v1, 0);
}

uint64_t sub_2584DBD6C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = v1[6];
  v5 = v1[7];
  *(v0 + 16) = v1[5];
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  type metadata accessor for NetworkBackedControlConnection();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_2584DBEA8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, v2, WitnessTable, 0xD00000000000001ELL, 0x80000002585417B0, sub_2584E25F8, v7, v10);
}

uint64_t sub_2584DBEA8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2584DC038;
  }

  else
  {
    v6 = sub_2584DBFD4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584DBFD4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584DC038()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_2584DC09C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a3;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = *(*a2 + 240);
  swift_beginAccess();
  sub_258472790(v12, a2 + v15);
  swift_endAccess();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v7[11];
  v17[3] = v7[14];
  v17[4] = v7[15];
  v17[5] = v16;
  sub_258532BFC();

  v20 = a3;
  sub_2584E228C();
  v18 = sub_25853395C();
  swift_getWitnessTable();
  sub_25853301C();
}

uint64_t sub_2584DC31C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v151 = sub_25853322C();
  v11 = *(v151 - 8);
  v12 = *(v11 + 8);
  v14 = MEMORY[0x28223BE20](v151, v13);
  v144 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v145 = &v141 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v141 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v143 = (&v141 - v25);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = (&v141 - v28);
  MEMORY[0x28223BE20](v27, v30);
  v150 = &v141 - v31;
  v32 = *(v10 + *MEMORY[0x277CD8B80] + 8);
  v33 = *(v32 + 24);
  v153[1] = *(v32 + 16);
  v153[2] = a4;
  v154 = v33;
  v155 = a5;
  v156 = a6;
  v34 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v34);
  v146 = v36;
  v147 = (&v141 - v37);
  v38 = sub_2585336AC();
  v149 = *(v38 - 8);
  v39 = *(v149 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v148 = &v141 - v41;
  v42 = sub_258532E7C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v49 = result;
  (*(v43 + 16))(v47, a2, v42);
  v50 = (*(v43 + 88))(v47, v42);
  if (v50 == *MEMORY[0x277CD8DE8])
  {
    (*(v43 + 96))(v47, v42);
    v52 = v150;
    v51 = v151;
    (*(v11 + 4))(v150, v47, v151);
    v53 = *(v11 + 2);
    (v53)(v29, v52, v51);
    if ((*(v11 + 11))(v29, v51) == *MEMORY[0x277CD8FA0])
    {
      (*(v11 + 12))(v29, v51);
      if (*v29 >> 1 == 2147450871)
      {
        if (qword_27F92F8D8 != -1)
        {
          swift_once();
        }

        v142 = v38;
        v54 = sub_258532A4C();
        __swift_project_value_buffer(v54, qword_27F93CFD8);
        v55 = v143;
        (v53)(v143, v52, v51);

        v56 = sub_258532A2C();
        v57 = sub_2585338CC();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = v11;
          v59 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v153[0] = v144;
          *v59 = 136315650;
          v145 = v53;
          v60 = sub_2584E1FC0();
          v62 = v61;

          v63 = sub_2584713B0(v60, v62, v153);

          *(v59 + 4) = v63;
          *(v59 + 12) = 2080;
          v152 = sub_258532C0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
          v64 = sub_25853347C();
          v66 = sub_2584713B0(v64, v65, v153);

          *(v59 + 14) = v66;
          *(v59 + 22) = 2112;
          sub_2584E260C();
          swift_allocError();
          v67 = v145;
          (v145)(v68, v55, v151);
          v69 = _swift_stdlib_bridgeErrorToNSError();
          v70 = *(v58 + 1);
          v70(v55, v151);
          *(v59 + 24) = v69;
          v71 = v141;
          *v141 = v69;
          _os_log_impl(&dword_25845E000, v56, v57, "%s connection=%s waiting error:%@, failing", v59, 0x20u);
          sub_258465168(v71, &qword_27F92FBC0, &qword_258537930);
          v72 = v71;
          v51 = v151;
          MEMORY[0x259C82900](v72, -1, -1);
          v73 = v144;
          swift_arrayDestroy();
          MEMORY[0x259C82900](v73, -1, -1);
          MEMORY[0x259C82900](v59, -1, -1);

          v74 = v67;
        }

        else
        {

          v70 = *(v11 + 1);
          v70(v55, v51);
          v74 = v53;
        }

        v134 = *(*v49 + 208);
        sub_2584E260C();
        v135 = swift_allocError();
        v136 = v150;
        (v74)(v137, v150, v51);
        *v147 = v135;
        swift_storeEnumTagMultiPayload();
        sub_2585336EC();
        v138 = v148;
        sub_2585336CC();

        (*(v149 + 8))(v138, v142);
        return v70(v136, v51);
      }
    }

    else
    {
      (*(v11 + 1))(v29, v51);
    }

    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v100 = sub_258532A4C();
    __swift_project_value_buffer(v100, qword_27F93CFD8);
    (v53)(v22, v52, v51);

    v101 = sub_258532A2C();
    v102 = v52;
    v103 = sub_2585338EC();

    if (os_log_type_enabled(v101, v103))
    {
      v104 = swift_slowAlloc();
      v148 = v11;
      v105 = v104;
      v147 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v153[0] = v149;
      *v105 = 136315650;
      v106 = sub_2584E1FC0();
      v145 = v53;
      v107 = v106;
      v109 = v108;

      v110 = sub_2584713B0(v107, v109, v153);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2080;
      v152 = sub_258532C0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
      v111 = sub_25853347C();
      v113 = sub_2584713B0(v111, v112, v153);

      *(v105 + 14) = v113;
      *(v105 + 22) = 2112;
      sub_2584E260C();
      swift_allocError();
      (v145)(v114, v22, v51);
      v115 = _swift_stdlib_bridgeErrorToNSError();
      v116 = *(v148 + 1);
      v116(v22, v51);
      *(v105 + 24) = v115;
      v117 = v147;
      *v147 = v115;
      _os_log_impl(&dword_25845E000, v101, v103, "%s connection=%s waiting error:%@", v105, 0x20u);
      sub_258465168(v117, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v117, -1, -1);
      v118 = v149;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v118, -1, -1);
      MEMORY[0x259C82900](v105, -1, -1);

      return (v116)(v150, v51);
    }

    else
    {

      v128 = *(v11 + 1);
      v128(v22, v51);
      return (v128)(v102, v51);
    }
  }

  else if (v50 == *MEMORY[0x277CD8DE0])
  {
    v142 = v38;
    (*(v43 + 96))(v47, v42);
    v75 = v11;
    v76 = v145;
    v77 = v151;
    (*(v11 + 4))(v145, v47, v151);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v78 = sub_258532A4C();
    __swift_project_value_buffer(v78, qword_27F93CFD8);
    v79 = *(v11 + 2);
    v80 = v144;
    v79(v144, v76, v77);

    v81 = sub_258532A2C();
    v82 = sub_2585338CC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v153[0] = v150;
      *v83 = 136315650;
      LODWORD(v141) = v82;
      v84 = v80;
      v85 = sub_2584E1FC0();
      v87 = v86;

      v88 = sub_2584713B0(v85, v87, v153);

      *(v83 + 4) = v88;
      *(v83 + 12) = 2080;
      v152 = sub_258532C0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
      v89 = sub_25853347C();
      v91 = sub_2584713B0(v89, v90, v153);

      *(v83 + 14) = v91;
      *(v83 + 22) = 2112;
      sub_2584E260C();
      swift_allocError();
      v92 = v84;
      v79(v93, v84, v151);
      v94 = _swift_stdlib_bridgeErrorToNSError();
      v95 = *(v75 + 1);
      v96 = v79;
      v95(v92, v151);
      *(v83 + 24) = v94;
      v97 = v143;
      *v143 = v94;
      _os_log_impl(&dword_25845E000, v81, v141, "%s connection=%s failed error:%@", v83, 0x20u);
      sub_258465168(v97, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v97, -1, -1);
      v98 = v150;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v98, -1, -1);
      v99 = v83;
      v77 = v151;
      MEMORY[0x259C82900](v99, -1, -1);
    }

    else
    {

      v95 = *(v11 + 1);
      v96 = v79;
      v95(v80, v77);
    }

    v129 = *(*v49 + 208);
    sub_2584E260C();
    v130 = swift_allocError();
    v131 = v145;
    v96(v132, v145, v77);
    *v147 = v130;
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();
    v133 = v148;
    sub_2585336CC();

    (*(v149 + 8))(v133, v142);
    return (v95)(v131, v77);
  }

  else if (v50 == *MEMORY[0x277CD8DD0])
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v119 = sub_258532A4C();
    __swift_project_value_buffer(v119, qword_27F93CFD8);

    v120 = sub_258532A2C();
    v121 = sub_2585338BC();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v153[0] = v123;
      *v122 = 136315138;
      v124 = sub_2584E1FC0();
      v126 = v125;

      v127 = sub_2584713B0(v124, v126, v153);

      *(v122 + 4) = v127;
      _os_log_impl(&dword_25845E000, v120, v121, "%s connection ready", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      MEMORY[0x259C82900](v123, -1, -1);
      MEMORY[0x259C82900](v122, -1, -1);
    }

    else
    {
    }

    v139 = *(*v49 + 208);
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();
    v140 = v148;
    sub_2585336CC();

    return (*(v149 + 8))(v140, v38);
  }

  else
  {

    return (*(v43 + 8))(v47, v42);
  }
}

uint64_t sub_2584DD36C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_258532F8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258532FBC();
  sub_258532F7C();
  v9 = sub_258532E9C();

  if (!v9)
  {
    goto LABEL_8;
  }

  sub_258532FAC();
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    v16 = v2[6];
    v19[0] = v2[5];
    v19[1] = v16;
    v19[2] = v2[7];
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 9;
    return swift_willThrow();
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v10 = sub_258532A4C();
  __swift_project_value_buffer(v10, qword_27F93CFD8);

  v11 = sub_258532A2C();
  v12 = sub_2585338BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = v4;
    v14 = v13;
    *v13 = 134217984;
    *(v13 + 4) = v1[15];

    _os_log_impl(&dword_25845E000, v11, v12, "Setting QUIC keep-alive time to %ld seconds", v14, 0xCu);
    v15 = v14;
    v4 = v20;
    MEMORY[0x259C82900](v15, -1, -1);
  }

  else
  {
  }

  *v8 = v1[15];
  (*(v4 + 104))(v8, *MEMORY[0x277CD8EA0], v3);
  sub_258532F9C();
}

uint64_t sub_2584DD644()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[16];
  if (!v3)
  {
    v12 = v1[6];
    v19 = v1[5];
    v20 = v12;
    v21 = v1[7];
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    return v0;
  }

  v4 = v0[16];

  result = sub_258532C0C();
  if (result)
  {
    v16 = sub_258532EAC();
    v22 = v3;
    v6 = *(v2 + 10);
    v7 = *(v2 + 12);
    v8 = *(v2 + 13);
    v9 = sub_258532F6C();
    v18[0] = sub_25853313C();
    v18[1] = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v17[0] = MEMORY[0x277CD8F48];
    v17[1] = MEMORY[0x277CD8F50];
    *&v19 = 2;
    *(&v19 + 1) = v9;
    *&v20 = v18;
    *(&v20 + 1) = WitnessTable;
    *&v21 = v17;
    sub_258532C6C();
    swift_getWitnessTable();
    sub_258532FFC();
    v0 = v16;
    v11 = sub_258532E5C();
    if (v11)
    {
      v0 = v11;
    }

    else
    {
      v14 = *(v2 + 11);
      *&v19 = v6;
      *(&v19 + 1) = v14;
      *&v20 = v7;
      *(&v20 + 1) = v8;
      v21 = v2[7];
      type metadata accessor for NetworkBackedControlConnection.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v15 = 6;
      swift_willThrow();
    }

    return v0;
  }

  __break(1u);
  return result;
}

void sub_2584DD8A4()
{
  if (!v0[22])
  {
    v2 = *v0;
    sub_2584DD644();
    if (!v1)
    {
      v3 = v2[10];
      v4 = v2[12];
      v5 = v2[13];
      sub_258532F6C();
      sub_25853313C();
      sub_25853318C();
      swift_getWitnessTable();
      sub_258532C6C();

      v6 = sub_258532C2C();
      v7 = v0[22];
      v0[22] = v6;

      sub_2584DD9E4(v6);
    }
  }
}

uint64_t sub_2584DD9E4(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v17 - v7;
  v9 = sub_25853368C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v3[6];
  v17[0] = v3[5];
  v17[1] = v10;
  v17[2] = v3[7];
  type metadata accessor for NetworkBackedControlConnection();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = WitnessTable;
  v12[4] = a1;
  v12[5] = v1;
  swift_retain_n();

  v13 = sub_258476C88(0, 0, v8, &unk_25853C210, v12);
  v14 = *(*v1 + 224);
  v15 = *(v1 + v14);
  *(v1 + v14) = v13;
}

uint64_t sub_2584DDB8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 136) = *a4;
  v7 = *a5;
  v8 = *(*a5 + 80);
  *(v5 + 144) = v8;
  v9 = v7[11];
  *(v5 + 152) = v9;
  v10 = v7[12];
  *(v5 + 160) = v10;
  v11 = v7[13];
  *(v5 + 168) = v11;
  v12 = v7[14];
  *(v5 + 176) = v12;
  v13 = v7[15];
  *(v5 + 184) = v13;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *(v5 + 32) = v15;
  *(v5 + 16) = v14;
  *(v5 + 48) = v12;
  *(v5 + 56) = v13;
  v16 = type metadata accessor for ControlConnectionEvent();
  *(v5 + 192) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v18 = sub_2585337CC();
  *(v5 + 216) = v18;
  v19 = *(v18 - 8);
  *(v5 + 224) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930F90, &qword_25853C218);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *(v5 + 240) = TupleTypeMetadata3;
  v22 = *(TupleTypeMetadata3 - 8);
  *(v5 + 248) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v24 = *(*(sub_258533A0C() - 8) + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  v25 = sub_25853384C();
  *(v5 + 288) = v25;
  v26 = *(v25 - 8);
  *(v5 + 296) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 304) = swift_task_alloc();
  v28 = sub_25853383C();
  *(v5 + 312) = v28;
  v29 = *(v28 - 8);
  *(v5 + 320) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DDF50, a5, 0);
}

uint64_t sub_2584DDF50()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v7 = *(*(v0 + 136) + *MEMORY[0x277CD8B80] + 8);
  swift_getWitnessTable();
  v17 = *(v0 + 160);
  v18 = *(v0 + 144);
  v16 = *(v0 + 176);
  sub_258532C5C();
  sub_2585336FC();
  (*(v3 + 8))(v2, v4);
  *(v0 + 64) = v18;
  *(v0 + 80) = v17;
  *(v0 + 96) = v16;
  type metadata accessor for NetworkBackedControlConnection();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 336) = WitnessTable;
  *(v0 + 344) = *(*v5 + 192);
  v9 = *(v0 + 128);
  v10 = *(MEMORY[0x277D858B8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 352) = v11;
  *v11 = v0;
  v11[1] = sub_2584DE0F0;
  v12 = *(v0 + 328);
  v13 = *(v0 + 312);
  v14 = *(v0 + 280);

  return MEMORY[0x2822005A8](v14, v9, WitnessTable, v13, v0 + 112);
}

uint64_t sub_2584DE0F0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;

  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_2584DE784;
  }

  else
  {
    v5 = sub_2584DE204;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2584DE204()
{
  v76 = v0;
  v1 = v0[35];
  v2 = v0[30];
  if ((*(v0[31] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);
LABEL_5:
    v12 = v0[41];
    v13 = v0[38];
    v15 = v0[34];
    v14 = v0[35];
    v17 = v0[32];
    v16 = v0[33];
    v18 = v0[29];
    v19 = v0[25];

    v20 = v0[1];

    return v20();
  }

  v3 = v0[34];
  v4 = *(v2 + 48);
  v5 = *(v1 + v4);
  v6 = *(v2 + 64);
  v7 = *(v1 + v6);
  v8 = *(*(v0[18] - 8) + 32);
  v8(v3, v1);
  *(v3 + v4) = v5;
  *(v3 + v6) = v7;
  if (sub_25853376C())
  {
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[39];
    (*(v0[31] + 8))(v0[34], v0[30]);
    (*(v10 + 8))(v9, v11);
    goto LABEL_5;
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v73 = v8;
  v22 = v0[33];
  v23 = v0[34];
  v24 = v0[30];
  v25 = v0[31];
  v26 = v0[16];
  v27 = sub_258532A4C();
  __swift_project_value_buffer(v27, qword_27F93CFD8);
  v74 = *(v25 + 16);
  v74(v22, v23, v24);

  v28 = sub_258532A2C();
  v29 = sub_2585338BC();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[33];
  if (v30)
  {
    v32 = v0[31];
    v33 = v0[32];
    v34 = v0[30];
    v71 = v0[18];
    v69 = v29;
    v35 = v0[16];
    v36 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v36 = 136315394;
    v37 = sub_2584E1FC0();
    v39 = v38;

    v40 = sub_2584713B0(v37, v39, &v75);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v74(v33, v31, v34);
    v41 = *(v33 + *(v34 + 48));

    v42 = sub_25853347C();
    v44 = v43;
    v72 = *(v32 + 8);
    v72(v31, v34);
    v45 = sub_2584713B0(v42, v44, &v75);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_25845E000, v28, v69, "%s received %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v68, -1, -1);
    MEMORY[0x259C82900](v36, -1, -1);
  }

  else
  {
    v46 = v0[30];
    v47 = v0[31];
    v48 = v0[16];

    v72 = *(v47 + 8);
    v72(v31, v46);
  }

  v49 = v0[34];
  v50 = v0[32];
  v52 = v0[29];
  v51 = v0[30];
  v53 = v0[28];
  v70 = v0[27];
  v55 = v0[25];
  v54 = v0[26];
  v56 = v0[24];
  v57 = v0[18];
  log = v0[43];
  v66 = v0[16];
  v74(v50, v49, v51);
  v58 = *(v50 + *(v51 + 48));

  v73(v55, v50, v57);
  swift_storeEnumTagMultiPayload();
  sub_25853380C();
  sub_2585337EC();
  (*(v53 + 8))(v52, v70);
  v72(v49, v51);
  v59 = v0[42];
  v60 = v0[16];
  v61 = *(MEMORY[0x277D858B8] + 4);
  v62 = swift_task_alloc();
  v0[44] = v62;
  *v62 = v0;
  v62[1] = sub_2584DE0F0;
  v63 = v0[41];
  v64 = v0[39];
  v65 = v0[35];

  return MEMORY[0x2822005A8](v65, v60, v59, v64, v0 + 14);
}

uint64_t sub_2584DE784()
{
  v30 = v0;
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[14];
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFD8);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v9 = 136315394;
    v12 = sub_2584E1FC0();
    v14 = v13;

    v15 = sub_2584713B0(v12, v14, &v29);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_25845E000, v5, v6, "%s connection failed error:%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {
  }

  v18 = v0[16];
  sub_2584E10BC(v1);

  v19 = v0[41];
  v20 = v0[38];
  v22 = v0[34];
  v21 = v0[35];
  v24 = v0[32];
  v23 = v0[33];
  v25 = v0[29];
  v26 = v0[25];

  v27 = v0[1];

  return v27();
}

uint64_t sub_2584DEA2C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v15 - v5;
  v7 = sub_25853368C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = v1[6];
  v15[0] = v1[5];
  v15[1] = v8;
  v15[2] = v1[7];
  type metadata accessor for NetworkBackedControlConnection();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = WitnessTable;
  v10[4] = v0;
  swift_retain_n();
  v11 = sub_2585135CC(0, 0, v6, &unk_25853C200, v10);
  v12 = *(*v0 + 216);
  v13 = *(v0 + v12);
  *(v0 + v12) = v11;
}

uint64_t sub_2584DEBC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 160) = a4;
  v6 = *a4;
  v7 = sub_25853321C();
  *(v4 + 168) = v7;
  v8 = *(v7 - 8);
  *(v4 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  *(v4 + 192) = v10;
  v11 = *(v10 - 8);
  *(v4 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v14 = v6[10];
  *(v4 + 232) = v14;
  v15 = v6[11];
  *(v4 + 240) = v15;
  v16 = v6[12];
  *(v4 + 248) = v16;
  v17 = v6[13];
  *(v4 + 256) = v17;
  v18 = v6[14];
  *(v4 + 264) = v18;
  v19 = v6[15];
  *(v4 + 272) = v19;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  *(v4 + 32) = v21;
  *(v4 + 16) = v20;
  *(v4 + 48) = v18;
  *(v4 + 56) = v19;
  v22 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
  *(v4 + 280) = v22;
  v23 = *(v22 - 8);
  *(v4 + 288) = v23;
  v24 = *(v23 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  v25 = *(*(sub_258533A0C() - 8) + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  v26 = sub_25853371C();
  *(v4 + 320) = v26;
  v27 = *(v26 - 8);
  *(v4 + 328) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DEEEC, a4, 0);
}

uint64_t sub_2584DEEEC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 280);
  v3 = *(v0 + 160);
  v4 = *(*v3 + 200);
  sub_25853372C();
  v14 = *(v0 + 248);
  v15 = *(v0 + 232);
  v13 = *(v0 + 264);
  sub_2585336FC();
  *(v0 + 64) = v15;
  *(v0 + 80) = v14;
  *(v0 + 96) = v13;
  type metadata accessor for NetworkBackedControlConnection();
  *(v0 + 344) = swift_getWitnessTable();
  *(v0 + 352) = *(*v3 + 240);
  swift_beginAccess();
  v5 = *(v0 + 344);
  v6 = *(v0 + 160);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 360) = v8;
  *v8 = v0;
  v8[1] = sub_2584DF05C;
  v9 = *(v0 + 336);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);

  return MEMORY[0x2822003E8](v10, v6, v5, v11);
}

uint64_t sub_2584DF05C()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584DF16C, v2, 0);
}

uint64_t sub_2584DF16C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    v12 = *(v0 + 184);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v13 = *(v0 + 8);

    return v13();
  }

  (*(v3 + 32))(*(v0 + 304), v1, v2);
  v4 = sub_25853376C();
  v5 = *(v0 + 304);
  if (v4)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    v6 = *(v0 + 312);
    goto LABEL_4;
  }

  (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v28 = *(v0 + 224);
      v29 = *(v0 + 192);
      v30 = *(v0 + 200);
      sub_2584AC3B8(*(v0 + 160) + *(v0 + 352), v28, &unk_27F930DB0, &qword_258536390);
      v31 = (*(v30 + 48))(v28, 1, v29);
      v32 = *(v0 + 304);
      v33 = *(v0 + 280);
      v34 = *(v0 + 288);
      v35 = *(v0 + 224);
      if (v31)
      {
        (*(v34 + 8))(*(v0 + 304), *(v0 + 280));
        sub_258465168(v35, &unk_27F930DB0, &qword_258536390);
      }

      else
      {
        v37 = *(v0 + 200);
        v36 = *(v0 + 208);
        v38 = *(v0 + 192);
        (*(v37 + 16))(v36, *(v0 + 224), v38);
        sub_258465168(v35, &unk_27F930DB0, &qword_258536390);
        sub_25853364C();
        (*(v37 + 8))(v36, v38);
        (*(v34 + 8))(v32, v33);
      }

      v39 = *(v0 + 352);
      v40 = *(v0 + 216);
      v41 = *(v0 + 160);
      (*(*(v0 + 200) + 56))(v40, 1, 1, *(v0 + 192));
      swift_beginAccess();
      sub_258472790(v40, v41 + v39);
      swift_endAccess();
      goto LABEL_18;
    }

    v16 = *(v0 + 304);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v21 = *(v0 + 160);
    sub_2584E04B4(**(v0 + 296));
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v22 = *(v0 + 304);
      v23 = *(v0 + 280);
      v24 = *(v0 + 288);
      v26 = *(v0 + 176);
      v25 = *(v0 + 184);
      v27 = *(v0 + 168);
      (*(v26 + 32))(v25, *(v0 + 296), v27);
      sub_2584DF5B0();
      (*(v26 + 8))(v25, v27);
      (*(v24 + 8))(v22, v23);
      goto LABEL_18;
    }

    v16 = *(v0 + 304);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 160);
    v20 = **(v0 + 296);
    sub_2584E10BC(v20);
  }

  (*(v18 + 8))(v16, v17);
LABEL_18:
  v42 = *(v0 + 344);
  v43 = *(v0 + 160);
  v44 = *(MEMORY[0x277D85798] + 4);
  v45 = swift_task_alloc();
  *(v0 + 360) = v45;
  *v45 = v0;
  v45[1] = sub_2584DF05C;
  v46 = *(v0 + 336);
  v47 = *(v0 + 312);
  v48 = *(v0 + 320);

  return MEMORY[0x2822003E8](v47, v43, v42, v48);
}

void sub_2584DF5B0()
{
  v1 = v0;
  v2 = *v0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83, v4);
  v6 = &v80 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v80 - v14;
  v16 = type metadata accessor for NetworkBackedNetworkPath();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v80 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = v1[16];
  if (v29)
  {
    v81 = v12;
    v82 = &v80 - v28;
    v88[2] = v29;
    v30 = v2[10];
    v31 = v2[12];
    v32 = v2[13];
    v33 = sub_258532F6C();
    v84 = v29;

    v88[0] = sub_25853313C();
    v88[1] = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v87[0] = MEMORY[0x277CD8F48];
    v87[1] = MEMORY[0x277CD8F50];
    v86[0] = 2;
    v86[1] = v33;
    v86[2] = v88;
    v86[3] = WitnessTable;
    v86[4] = v87;
    sub_258532C6C();
    swift_getWitnessTable();
    sub_25852FF2C(v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_258465168(v15, &qword_27F930F88, &unk_25853C1E8);
      if (qword_27F92F8D8 != -1)
      {
        swift_once();
      }

      v35 = sub_258532A4C();
      __swift_project_value_buffer(v35, qword_27F93CFD8);
      v36 = v84;

      v37 = sub_258532A2C();
      v38 = sub_2585338CC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v86[0] = v82;
        *v39 = 136315395;

        v40 = sub_2584E1FC0();
        v42 = v41;

        v43 = sub_2584713B0(v40, v42, v86);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2081;
        v85 = v36;
        sub_25853300C();
        v44 = sub_2585339FC();
        v46 = v45;
        sub_258465168(v6, &qword_27F931450, &qword_25853C1E0);
        v47 = sub_2584713B0(v44, v46, v86);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_25845E000, v37, v38, "%s Path update: %{private}s skipped", v39, 0x16u);
        v48 = v82;
        swift_arrayDestroy();
        MEMORY[0x259C82900](v48, -1, -1);
        MEMORY[0x259C82900](v39, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v49 = v82;
      sub_2584E22D8(v15, v82);
      if (*(v49 + *(v16 + 32)) == 1)
      {
        if (qword_27F92F8D8 != -1)
        {
          swift_once();
        }

        v50 = sub_258532A4C();
        __swift_project_value_buffer(v50, qword_27F93CFD8);
        sub_2584E233C(v49, v26);

        v51 = sub_258532A2C();
        v52 = sub_2585338EC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v86[0] = v54;
          *v53 = 136315395;

          v55 = sub_2584E1FC0();
          v57 = v56;

          v58 = sub_2584713B0(v55, v57, v86);

          *(v53 + 4) = v58;
          *(v53 + 12) = 2081;
          v59 = sub_2584F3AF4();
          v61 = v60;
          sub_2584E23A0(v26);
          v62 = sub_2584713B0(v59, v61, v86);

          *(v53 + 14) = v62;
          _os_log_impl(&dword_25845E000, v51, v52, "%s Path updated: %{private}s", v53, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v54, -1, -1);
          MEMORY[0x259C82900](v53, -1, -1);
        }

        else
        {

          sub_2584E23A0(v26);
        }

        v78 = v81;
        v79 = v82;
        sub_2584E233C(v82, v81);
        (*(v17 + 56))(v78, 0, 1, v16);
        sub_2584D7A88(v78);

        v77 = v79;
      }

      else
      {
        if (qword_27F92F8D8 != -1)
        {
          swift_once();
        }

        v63 = sub_258532A4C();
        __swift_project_value_buffer(v63, qword_27F93CFD8);
        sub_2584E233C(v49, v22);

        v64 = sub_258532A2C();
        v65 = sub_2585338CC();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = v49;
          v68 = swift_slowAlloc();
          v86[0] = v68;
          *v66 = 136315395;

          v69 = sub_2584E1FC0();
          v71 = v70;

          v72 = sub_2584713B0(v69, v71, v86);

          *(v66 + 4) = v72;
          *(v66 + 12) = 2081;
          v73 = sub_2584F3AF4();
          v75 = v74;
          sub_2584E23A0(v22);
          v76 = sub_2584713B0(v73, v75, v86);

          *(v66 + 14) = v76;
          _os_log_impl(&dword_25845E000, v64, v65, "%s Path update: %{private}s skipped as not satisfied", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v68, -1, -1);
          MEMORY[0x259C82900](v66, -1, -1);

          v77 = v67;
        }

        else
        {

          sub_2584E23A0(v22);
          v77 = v49;
        }
      }

      sub_2584E23A0(v77);
    }
  }
}

uint64_t sub_2584DFE70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[16];
  if (v3)
  {
    v4 = v0;

    result = sub_258532C0C();
    if (result)
    {
      sub_258532BBC();
      v27 = v3;
      v6 = v2[10];
      v7 = v2[12];
      v8 = v2[13];
      v9 = sub_258532F6C();
      v23[0] = sub_25853313C();
      v23[1] = sub_25853318C();
      WitnessTable = swift_getWitnessTable();
      v22[0] = MEMORY[0x277CD8F48];
      v22[1] = MEMORY[0x277CD8F50];
      *&v24 = 2;
      *(&v24 + 1) = v9;
      *&v25 = v23;
      *(&v25 + 1) = WitnessTable;
      *&v26 = v22;
      sub_258532C6C();
      swift_getWitnessTable();
      sub_258532FFC();
      v11 = sub_258532B2C();
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        v14[2] = v6;
        v14[3] = v2[11];
        v14[4] = v7;
        v14[5] = v8;
        v14[6] = v2[14];
        v14[7] = v2[15];
        v14[8] = v13;

        sub_258532B4C();

        sub_2584E228C();
        v15 = sub_25853395C();
        sub_258532B8C();

        v16 = *(*v4 + 232);
        v17 = *(v4 + v16);
        *(v4 + v16) = v12;
      }

      else
      {
        v20 = v2[11];
        *&v24 = v6;
        *(&v24 + 1) = v20;
        *&v25 = v7;
        *(&v25 + 1) = v8;
        v26 = *(v2 + 7);
        type metadata accessor for NetworkBackedControlConnection.Errors();
        swift_getWitnessTable();
        swift_allocError();
        *v21 = 7;
        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = v1[6];
    v24 = v1[5];
    v25 = v18;
    v26 = v1[7];
    type metadata accessor for NetworkBackedControlConnection.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v19 = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2584E01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  v39[4] = a6;
  v39[5] = a7;
  v39[6] = a8;
  v9 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v36 - v12);
  v14 = sub_2585336AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v38 = v19;
    v22 = sub_258532A4C();
    __swift_project_value_buffer(v22, qword_27F93CFD8);

    v23 = sub_258532A2C();
    v24 = sub_2585338EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v15;
      v26 = v25;
      v27 = swift_slowAlloc();
      v39[0] = v27;
      *v26 = 136315138;

      v28 = sub_2584E1FC0();
      v37 = v14;
      v29 = a1;
      v31 = v30;

      v32 = sub_2584713B0(v28, v31, v39);
      a1 = v29;
      v14 = v37;

      *(v26 + 4) = v32;
      _os_log_impl(&dword_25845E000, v23, v24, "%s received peeled connection", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x259C82900](v27, -1, -1);
      v33 = v26;
      v15 = v36;
      MEMORY[0x259C82900](v33, -1, -1);
    }

    else
    {
    }

    v34 = *(*v21 + 208);
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();

    v35 = v38;
    sub_2585336CC();

    return (*(v15 + 8))(v35, v14);
  }

  return result;
}

uint64_t sub_2584E04B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = *(v4 + 96);
  v7 = *(v4 + 104);
  v48 = *(v4 + 112);
  v49 = v5;
  v54 = v5;
  *&v55 = v6;
  *(&v55 + 1) = v7;
  v56 = v48;
  v8 = type metadata accessor for ControlConnectionEvent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v46 - v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v13 = sub_2585337CC();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v19 = &v46 - v18;
  v20 = *(v4 + 248);
  if (*(v2 + v20))
  {
    if (v2[22])
    {
      v46 = v17;
      v47 = v16;
      v21 = sub_258532F6C();
      v52 = sub_25853313C();
      v53 = sub_25853318C();
      WitnessTable = swift_getWitnessTable();
      v50 = MEMORY[0x277CD8F48];
      v51 = MEMORY[0x277CD8F50];
      v54.i64[0] = 2;
      v54.i64[1] = v21;
      *&v55 = &v52;
      *(&v55 + 1) = WitnessTable;
      *&v56 = &v50;
      sub_258532C6C();

      sub_258532C2C();
      v54 = vdupq_laneq_s64(v49, 1);
      v55 = v48;
      v56 = v48;
      v23 = type metadata accessor for NetworkBackedControlConnection();
      v54 = v49;
      *&v55 = v6;
      *(&v55 + 1) = v7;
      v56 = v48;
      *(&v55 + 1) = type metadata accessor for NetworkBackedControlConnection();
      *&v56 = swift_getWitnessTable();
      v54.i64[0] = v2;
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();

      sub_2584D7BF8(v27, &v54, 1);
      v28 = *(*v2 + 192);
      v12[3] = v23;
      v12[4] = swift_getWitnessTable();
      *v12 = v26;
      swift_storeEnumTagMultiPayload();
      sub_25853380C();

      sub_2585337EC();

      return (*(v46 + 8))(v19, v47);
    }

    v41 = sub_258532F6C();
    v52 = sub_25853313C();
    v53 = sub_25853318C();
    v42 = swift_getWitnessTable();
    v50 = MEMORY[0x277CD8F48];
    v51 = MEMORY[0x277CD8F50];
    v54.i64[0] = 2;
    v54.i64[1] = v41;
    *&v55 = &v52;
    *(&v55 + 1) = v42;
    *&v56 = &v50;
    sub_258532C6C();

    v43 = sub_258532C2C();
    v44 = v2[22];
    v2[22] = v43;

    sub_2584DD9E4(v43);
  }

  else
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v30 = sub_258532A4C();
    __swift_project_value_buffer(v30, qword_27F93CFD8);

    v31 = sub_258532A2C();
    v32 = sub_2585338EC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = a1;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54.i64[0] = v35;
      *v34 = 136315138;
      v36 = sub_2584E1FC0();
      v38 = v37;

      v39 = sub_2584713B0(v36, v38, v54.i64);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_25845E000, v31, v32, "%s caching first peeled connection", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x259C82900](v35, -1, -1);
      v40 = v34;
      a1 = v33;
      MEMORY[0x259C82900](v40, -1, -1);
    }

    else
    {
    }

    v45 = *(v2 + v20);
    *(v2 + v20) = a1;
  }
}

uint64_t sub_2584E0A68(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v48 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v48 - v16;
  v58 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  v19 = v4[10];
  v20 = v4[11];
  v21 = v4[12];
  v22 = v4[13];
  v23 = v4[14];
  v24 = v4[15];
  v51 = v21;
  v52 = v19;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v50 = v22;
  v63 = v23;
  v64 = v24;
  type metadata accessor for NetworkBackedControlConnection.Errors();
  if (swift_dynamicCast() && v55 == 2)
  {
    v25 = *(*v2 + 192);
    v58 = 0;
  }

  else
  {
    v26 = *(*v2 + 192);
    v58 = a1;
    v27 = a1;
  }

  v59 = v52;
  v60 = v20;
  v61 = v51;
  v62 = v50;
  v63 = v23;
  v64 = v24;
  type metadata accessor for ControlConnectionEvent();
  sub_25853380C();
  sub_2585337FC();
  v28 = *(*v2 + 240);
  swift_beginAccess();
  sub_2584AC3B8(v2 + v28, v17, &unk_27F930DB0, &qword_258536390);
  if ((*(v6 + 48))(v17, 1, v5))
  {
    sub_258465168(v17, &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v29 = v48;
    (*(v6 + 16))(v48, v17, v5);
    sub_258465168(v17, &unk_27F930DB0, &qword_258536390);
    v59 = a1;
    v30 = a1;
    sub_25853363C();
    (*(v6 + 8))(v29, v5);
  }

  v31 = v49;
  (*(v6 + 56))(v49, 1, 1, v5);
  swift_beginAccess();
  sub_258472790(v31, v2 + v28);
  result = swift_endAccess();
  v33 = *v2;
  v34 = *(*v2 + 224);
  if (*(v2 + v34))
  {
    v35 = *(v2 + v34);

    sub_25853374C();

    v33 = *v2;
  }

  v36 = *(v33 + 216);
  if (*(v2 + v36))
  {
    v37 = *(v2 + v36);

    sub_25853374C();

    v33 = *v2;
  }

  v38 = *(v33 + 232);
  if (*(v2 + v38))
  {
    v39 = *(v2 + v38);

    sub_258532BAC();
  }

  v40 = MEMORY[0x277CD8F48];
  v41 = MEMORY[0x277CD8F50];
  if (v2[16])
  {
    v57 = v2[16];
    v42 = sub_258532F6C();
    v55 = sub_25853313C();
    v56 = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v53 = v40;
    v54 = v41;
    v59 = 2;
    v60 = v42;
    v61 = &v55;
    v62 = WitnessTable;
    v63 = &v53;
    sub_258532C6C();
    swift_getWitnessTable();
    result = sub_25853302C();
  }

  if (v2[22])
  {
    v57 = v2[22];
    v44 = sub_258532F6C();
    v55 = sub_25853313C();
    v56 = sub_25853318C();
    v45 = swift_getWitnessTable();
    v53 = v40;
    v54 = v41;
    v59 = 2;
    v60 = v44;
    v61 = &v55;
    v62 = v45;
    v63 = &v53;
    sub_258532C6C();
    swift_getWitnessTable();
    result = sub_25853302C();
  }

  v46 = *(*v2 + 248);
  if (*(v2 + v46))
  {
    v47 = *(v2 + v46);

    sub_258532E8C();
  }

  return result;
}

uint64_t sub_2584E10BC(void *a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 112);
  v9 = *(*v1 + 120);
  v10 = v1[112];
  result = sub_2584D6F10();
  if ((result & 1) == 0)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v12 = sub_258532A4C();
    __swift_project_value_buffer(v12, qword_27F93CFD8);

    v13 = a1;
    v14 = sub_258532A2C();
    v15 = sub_2585338CC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v16 = 136315394;
      v19 = sub_2584E1FC0();
      v21 = v20;

      v22 = sub_2584713B0(v19, v21, &v25);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      *v17 = v24;
      _os_log_impl(&dword_25845E000, v14, v15, "%s interrupted error:%@", v16, 0x16u);
      sub_258465168(v17, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x259C82900](v18, -1, -1);
      MEMORY[0x259C82900](v16, -1, -1);
    }

    else
    {
    }

    v2[112] = 4;

    return sub_2584E0A68(a1);
  }

  return result;
}

uint64_t sub_2584E1378()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = v1[11];
  v3[3] = v1[14];
  v3[4] = v1[15];
  v3[5] = v2;
  sub_258532BEC();
}

uint64_t sub_2584E1468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a1 + *MEMORY[0x277CD8B80] + 8);
  v8 = *(v7 + 24);
  v23[0] = *(v7 + 16);
  v23[1] = a4;
  v24 = v8;
  v25 = a5;
  v26 = a6;
  v9 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v23 - v12;
  v14 = sub_2585336AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v23 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(*result + 208);
    v22 = sub_25853321C();
    (*(*(v22 - 8) + 16))(v13, a2, v22);
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();
    sub_2585336CC();

    return (*(v15 + 8))(v19, v14);
  }

  return result;
}

char *sub_2584E1680()
{
  v1 = *v0;
  v2 = *(v0 + 16);

  sub_258465168((v0 + 136), &qword_27F9304F8, &qword_258538138);
  v3 = *(v0 + 22);

  v4 = *(*v0 + 184);
  v22 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[15];
  type metadata accessor for ControlConnectionEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v10 = sub_25853384C();
  (*(*(v10 - 8) + 8))(&v0[v4], v10);
  v11 = *(*v0 + 192);
  v12 = sub_25853380C();
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = *(*v0 + 200);
  type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent();
  v14 = sub_25853372C();
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = *(*v0 + 208);
  v16 = sub_2585336EC();
  (*(*(v16 - 8) + 8))(&v0[v15], v16);
  v17 = *&v0[*(*v0 + 216)];

  v18 = *&v0[*(*v0 + 224)];

  v19 = *&v0[*(*v0 + 232)];

  sub_258465168(&v0[*(*v0 + 240)], &unk_27F930DB0, &qword_258536390);
  v20 = *&v0[*(*v0 + 248)];

  sub_258465168(&v0[*(*v0 + 256)], &qword_27F930F88, &unk_25853C1E8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584E19EC()
{
  sub_2584E1680();

  return MEMORY[0x282200960](v0);
}

void sub_2584E1A48()
{
  if (!qword_27F930E70[0])
  {
    type metadata accessor for NetworkBackedNetworkPath();
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, qword_27F930E70);
    }
  }
}

unint64_t sub_2584E1AC0()
{
  result = sub_2584E1B48();
  if (v1 <= 0x3F)
  {
    result = sub_25853321C();
    if (v2 <= 0x3F)
    {
      result = sub_258532EAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2584E1B48()
{
  result = qword_27F930F78;
  if (!qword_27F930F78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F930F78);
  }

  return result;
}

uint64_t sub_2584E1BC8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584D87C8(a1);
}

uint64_t sub_2584E1C64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return sub_2584D84E4();
}

uint64_t sub_2584E1CF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584D9AF0(a1);
}

uint64_t sub_2584E1D8C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584DA4F4(a1);
}

uint64_t sub_2584E1E28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2584E1E48, v3, 0);
}

uint64_t sub_2584E1E48()
{
  v1 = *(v0 + 24);
  sub_2584DA25C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584E1EC4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258464F5C;

  return sub_2584DB084(a1);
}

uint64_t sub_2584E1F60@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  type metadata accessor for NetworkBackedControlConnection();
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_2584E1FC0()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD00000000000001FLL, 0x8000000258540950);
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  type metadata accessor for NetworkBackedControlConnection();
  swift_getWitnessTable();
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](0x6C6565507369205DLL, 0xED00003D656C6261);
  if (v0[16])
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0[16])
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x259C81500](v2, v3);

  return 0;
}

uint64_t sub_2584E2170(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584E21AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584E21E4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E2240()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2584E228C()
{
  result = qword_27F930F80;
  if (!qword_27F930F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F930F80);
  }

  return result;
}

uint64_t sub_2584E22D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkPath();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584E233C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkPath();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584E23A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkBackedNetworkPath();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584E23FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2584E243C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_2584DEBC0(a1, v4, v5, v6);
}

uint64_t sub_2584E24F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E2538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258464F5C;

  return sub_2584DDB8C(a1, v4, v5, v7, v6);
}

unint64_t sub_2584E260C()
{
  result = qword_27F9313B0;
  if (!qword_27F9313B0)
  {
    sub_25853322C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9313B0);
  }

  return result;
}

uint64_t sub_2584E2664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584E26D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_2584E2738(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  swift_getExtendedExistentialTypeMetadata_unique();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v4 = sub_25853384C();
  if (v5 <= 0x3F)
  {
    v16 = *(v4 - 8) + 64;
    v6 = sub_25853380C();
    if (v7 <= 0x3F)
    {
      v17 = *(v6 - 8) + 64;
      sub_258472254();
      if (v9 <= 0x3F)
      {
        v18 = *(v8 - 8) + 64;
        v14 = *(a1 + 96);
        v15 = *(a1 + 112);
        type metadata accessor for NetworkBackedControlConnectionListener.Event();
        v10 = sub_25853372C();
        if (v11 <= 0x3F)
        {
          v19 = *(v10 - 8) + 64;
          v12 = sub_2585336EC();
          if (v13 <= 0x3F)
          {
            v20 = *(v12 - 8) + 64;
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_2584E299C()
{
  type metadata accessor for NetworkBackedControlConnectionListener.State();
  swift_getWitnessTable();
  return sub_2585333EC() & 1;
}

uint64_t sub_2584E2A74(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = *v2;
  return MEMORY[0x2822009F8](sub_2584E2AC0, v2, 0);
}

uint64_t sub_2584E2AC0()
{
  v33 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(*v2 + 216);
  *(v0 + 160) = v3;
  v4 = *(v2 + v3);
  v5 = v1[10];
  *(v0 + 168) = v5;
  v6 = v1[11];
  *(v0 + 176) = v6;
  v7 = v1[12];
  *(v0 + 184) = v7;
  v8 = v1[13];
  *(v0 + 192) = v8;
  v9 = v1[14];
  *(v0 + 200) = v9;
  v10 = v1[15];
  *(v0 + 208) = v10;
  if (v4)
  {
    *&v11 = v5;
    *(&v11 + 1) = v6;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    *(v0 + 32) = v12;
    *(v0 + 16) = v11;
    *(v0 + 48) = v9;
    *(v0 + 56) = v10;
    type metadata accessor for NetworkBackedControlConnectionListener.Errors();
    swift_getWitnessTable();
    v13 = swift_allocError();
    *v14 = 1;
    swift_willThrow();
    *(v0 + 240) = v13;
    v15 = swift_task_alloc();
    *(v0 + 248) = v15;
    *v15 = v0;
    v15[1] = sub_2584E332C;
    v16 = *(v0 + 144);

    return sub_2584E5F10(v13);
  }

  else
  {
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
      v31 = *(v0 + 144);
    }

    v18 = sub_258532A4C();
    *(v0 + 216) = __swift_project_value_buffer(v18, qword_27F93CFC0);

    v19 = sub_258532A2C();
    v20 = sub_2585338EC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 144);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;

      v25 = sub_2584E6FBC();
      v27 = v26;

      v28 = sub_2584713B0(v25, v27, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25845E000, v19, v20, "%s activating", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x259C82900](v24, -1, -1);
      MEMORY[0x259C82900](v23, -1, -1);
    }

    else
    {
    }

    *(v2 + v3) = 1;
    v29 = swift_task_alloc();
    *(v0 + 224) = v29;
    *v29 = v0;
    v29[1] = sub_2584E2E10;
    v30 = *(v0 + 144);

    return sub_2584E4E64();
  }
}

uint64_t sub_2584E2E10()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2[30] = v0;
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v4;
    v5[1] = sub_2584E332C;
    v6 = v0;
    v7 = v2[18];

    return sub_2584E5F10(v6);
  }

  else
  {
    v9 = v2[18];

    return MEMORY[0x2822009F8](sub_2584E2F98, v9, 0);
  }
}

uint64_t sub_2584E2F98()
{
  v39 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  if (*(v2 + v1) == 1)
  {
    if (*(v2 + 112))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v33 = 0u;
      v34 = 0u;
LABEL_11:
      v14 = *(v0 + 216);
      *(v2 + v1) = 2;

      v15 = sub_258532A2C();
      v16 = sub_2585338EC();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 144);
      if (v17)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v35[0] = v20;
        *v19 = 136315138;

        v21 = sub_2584E6FBC();
        v32 = v5;
        v22 = v4;
        v24 = v23;

        v25 = sub_2584713B0(v21, v24, v35);
        v4 = v22;
        v5 = v32;

        *(v19 + 4) = v25;
        _os_log_impl(&dword_25845E000, v15, v16, "%s activated", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x259C82900](v20, -1, -1);
        MEMORY[0x259C82900](v19, -1, -1);
      }

      else
      {
      }

      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v28 = *(v0 + 128);
      v29 = *(*v26 + 152);
      *(v0 + 112) = *(v0 + 168);
      swift_getExtendedExistentialTypeMetadata_unique();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
      v30 = sub_25853384C();
      (*(*(v30 - 8) + 16))(v28, v26 + v29, v30);
      *v27 = v34;
      *(v27 + 16) = v33;
      *(v27 + 32) = v3;
      *(v27 + 40) = v4;
      *(v27 + 48) = v5;
      v31 = *(v0 + 8);

      return v31();
    }

    v9 = *(v0 + 232);
    v10 = *(v0 + 144);
    sub_2584E61C4(v35);
    if (!v9)
    {
      v33 = v35[1];
      v34 = v35[0];
      v3 = v36;
      v4 = v37;
      v5 = v38;
      v1 = *(v0 + 160);
      v2 = *(v0 + 144);
      goto LABEL_11;
    }

    v7 = v9;
  }

  else
  {
    *(v0 + 64) = *(v0 + 168);
    v6 = *(v0 + 200);
    *(v0 + 80) = *(v0 + 184);
    *(v0 + 96) = v6;
    type metadata accessor for NetworkBackedControlConnectionListener.Errors();
    swift_getWitnessTable();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  *(v0 + 240) = v7;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_2584E332C;
  v12 = *(v0 + 144);

  return sub_2584E5F10(v7);
}

uint64_t sub_2584E332C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584E343C, v2, 0);
}

uint64_t sub_2584E343C()
{
  v1 = *(v0 + 240);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 240);

  return v2();
}

uint64_t sub_2584E34A8()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2584E34F0, v0, 0);
}

uint64_t sub_2584E34F0()
{
  v37 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(*v2 + 216);
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[12];
  v6 = v1[13];
  v8 = v1[14];
  v9 = v1[15];
  v10 = *(v2 + v3);
  if ((sub_2584E299C() & 1) == 0)
  {
    v33 = v9;
    v34 = v8;
    v35 = v6;
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = sub_258532A4C();
    __swift_project_value_buffer(v12, qword_27F93CFC0);

    v13 = sub_258532A2C();
    v14 = sub_2585338EC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[8];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v32 = v3;
      v30 = swift_slowAlloc();
      v36 = v30;
      *v17 = 136315138;

      v18 = v7;
      v19 = v4;
      v20 = sub_2584E6FBC();
      v31 = v5;
      v22 = v21;

      v23 = v20;
      v4 = v19;
      v7 = v18;
      v24 = sub_2584713B0(v23, v22, &v36);
      v5 = v31;

      *(v17 + 4) = v24;
      _os_log_impl(&dword_25845E000, v13, v14, "%s invalidating", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v3 = v32;
      MEMORY[0x259C82900](v30, -1, -1);
      MEMORY[0x259C82900](v17, -1, -1);
    }

    else
    {
    }

    v25 = v0[8];
    *(v2 + v3) = 3;
    v0[2] = v4;
    v0[3] = v5;
    v0[4] = v7;
    v0[5] = v35;
    v0[6] = v34;
    v0[7] = v33;
    type metadata accessor for NetworkBackedControlConnectionListener.Errors();
    swift_getWitnessTable();
    v26 = swift_allocError();
    *v27 = 0;
    sub_2584E6564(v26);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_2584E379C(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v17 - v7;
  v9 = sub_25853368C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v3[6];
  v17[0] = v3[5];
  v17[1] = v10;
  v17[2] = v3[7];
  type metadata accessor for NetworkBackedControlConnectionListener();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = WitnessTable;
  v12[4] = a1;
  v12[5] = v1;
  swift_retain_n();

  v13 = sub_258476C88(0, 0, v8, &unk_25853C608, v12);
  v14 = *(*v1 + 184);
  v15 = *(v1 + v14);
  *(v1 + v14) = v13;
}

uint64_t sub_2584E3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v7 = *a4;
  v8 = *a5;
  v5[34] = *a5;
  v9 = *(v8 + 80);
  v5[35] = v9;
  v10 = *(v8 + 88);
  v5[36] = v10;
  v5[24] = v9;
  v5[25] = v10;
  v5[37] = swift_getExtendedExistentialTypeMetadata_unique();
  v5[38] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v11 = sub_2585337CC();
  v5[39] = v11;
  v12 = *(v11 - 8);
  v5[40] = v12;
  v13 = *(v12 + 64) + 15;
  v5[41] = swift_task_alloc();
  v14 = *(v7 + *MEMORY[0x277CD9068] + 8);
  v5[26] = sub_25853313C();
  v5[27] = sub_25853318C();
  WitnessTable = swift_getWitnessTable();
  v5[28] = MEMORY[0x277CD8F48];
  v5[29] = MEMORY[0x277CD8F50];
  v5[14] = 2;
  v5[15] = v14;
  v5[16] = v5 + 26;
  v5[17] = WitnessTable;
  v5[18] = v5 + 28;
  sub_258532C6C();
  v16 = sub_25853383C();
  v5[42] = v16;
  v17 = *(v16 - 8);
  v5[43] = v17;
  v18 = *(v17 + 64) + 15;
  v5[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584E3BE4, a5, 0);
}

uint64_t sub_2584E3BE4()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v18 = *(v0 + 280);
  sub_25853327C();
  sub_25853329C();

  v5 = v2[12];
  *(v0 + 360) = v5;
  v6 = v2[13];
  *(v0 + 368) = v6;
  v7 = v2[14];
  *(v0 + 376) = v7;
  v8 = v2[15];
  *(v0 + 16) = v18;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  *(v0 + 384) = v8;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  *(v0 + 32) = v9;
  *(v0 + 48) = v10;
  type metadata accessor for NetworkBackedControlConnectionListener();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 392) = WitnessTable;
  *(v0 + 400) = *(*v3 + 160);
  v12 = *(v0 + 264);
  v13 = *(MEMORY[0x277D858B8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 408) = v14;
  *v14 = v0;
  v14[1] = sub_2584E3D58;
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);

  return MEMORY[0x2822005A8](v0 + 240, v12, WitnessTable, v16, v0 + 248);
}

uint64_t sub_2584E3D58()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_2584E40F4;
  }

  else
  {
    v6 = sub_2584E3E84;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584E3E84()
{
  v24 = v0;
  if (!*(v0 + 240))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
    goto LABEL_5;
  }

  if (sub_25853376C())
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

LABEL_5:
    v1 = *(v0 + 352);
    v2 = *(v0 + 328);

    v3 = *(v0 + 8);

    return v3();
  }

  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v7 = *(v0 + 304);
  v20 = *(v0 + 400);
  v21 = *(v0 + 312);
  v8 = *(v0 + 296);
  v19 = *(v0 + 264);
  *(v0 + 64) = *(v0 + 280);
  v9 = *(v0 + 376);
  *(v0 + 80) = *(v0 + 360);
  *(v0 + 96) = v9;
  v10 = type metadata accessor for NetworkBackedControlConnection();
  v23 = 0;
  memset(v22, 0, sizeof(v22));

  v12 = sub_2584D7BA0(v11, v22, 1);
  *(v0 + 176) = v10;
  *(v0 + 184) = swift_getWitnessTable();
  *(v0 + 152) = v12;
  sub_25853380C();

  sub_2585337EC();

  (*(v6 + 8))(v5, v21);
  v13 = *(v0 + 392);
  v14 = *(v0 + 264);
  v15 = *(MEMORY[0x277D858B8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 408) = v16;
  *v16 = v0;
  v16[1] = sub_2584E3D58;
  v17 = *(v0 + 352);
  v18 = *(v0 + 336);

  return MEMORY[0x2822005A8](v0 + 240, v14, v13, v18, v0 + 248);
}

uint64_t sub_2584E40F4()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  v1 = v0[31];
  v0[52] = v1;
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_2584E41A8;
  v3 = v0[33];

  return sub_2584E5F10(v1);
}

uint64_t sub_2584E41A8()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584E42B8, v2, 0);
}

uint64_t sub_2584E42B8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2584E4330()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v15 - v5;
  v7 = sub_25853368C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = v1[6];
  v15[0] = v1[5];
  v15[1] = v8;
  v15[2] = v1[7];
  type metadata accessor for NetworkBackedControlConnectionListener();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = WitnessTable;
  v10[4] = v0;
  swift_retain_n();
  v11 = sub_258476C88(0, 0, v6, &unk_25853C5F8, v10);
  v12 = *(*v0 + 192);
  v13 = *(v0 + v12);
  *(v0 + v12) = v11;
}

uint64_t sub_2584E44C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 168) = a4;
  v6 = *a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  *(v4 + 176) = v7;
  v8 = *(v7 - 8);
  *(v4 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v11 = v6[10];
  *(v4 + 216) = v11;
  v12 = v6[11];
  *(v4 + 224) = v12;
  v13 = v6[12];
  *(v4 + 232) = v13;
  v14 = v6[13];
  *(v4 + 240) = v14;
  v15 = v6[14];
  *(v4 + 248) = v15;
  v16 = v6[15];
  *(v4 + 256) = v16;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  *(v4 + 32) = v18;
  *(v4 + 16) = v17;
  *(v4 + 48) = v15;
  *(v4 + 56) = v16;
  *(v4 + 264) = type metadata accessor for NetworkBackedControlConnectionListener.Event();
  v19 = sub_25853371C();
  *(v4 + 272) = v19;
  v20 = *(v19 - 8);
  *(v4 + 280) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584E4700, a4, 0);
}

uint64_t sub_2584E4700()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 168);
  v4 = *(*v3 + 200);
  sub_25853372C();
  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v12 = *(v0 + 248);
  sub_2585336FC();
  *(v0 + 64) = v14;
  *(v0 + 80) = v13;
  *(v0 + 96) = v12;
  type metadata accessor for NetworkBackedControlConnectionListener();
  *(v0 + 296) = swift_getWitnessTable();
  *(v0 + 304) = *(*v3 + 176);
  swift_beginAccess();
  v5 = *(v0 + 296);
  v6 = *(v0 + 168);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 312) = v8;
  *v8 = v0;
  v8[1] = sub_2584E4868;
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);

  return MEMORY[0x2822003E8](v0 + 160, v6, v5, v10);
}

uint64_t sub_2584E4868()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584E4978, v2, 0);
}

uint64_t sub_2584E4978()
{
  v1 = v0[20];
  v0[40] = v1;
  if (v1 == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);
LABEL_5:
    v2 = v0[36];
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[24];

    v6 = v0[1];

    return v6();
  }

  if (sub_25853376C())
  {
    (*(v0[35] + 8))(v0[36], v0[34]);
    sub_2584E72C8(v1);
    goto LABEL_5;
  }

  if (v1)
  {
    v8 = v1;
    v9 = swift_task_alloc();
    v0[41] = v9;
    *v9 = v0;
    v9[1] = sub_2584E4C88;
    v10 = v0[21];

    return sub_2584E5F10(v1);
  }

  else
  {
    v11 = v0[26];
    v12 = v0[22];
    v13 = v0[23];
    sub_258472808(v0[21] + v0[38], v11);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = v0[26];
    if (v14)
    {
      sub_258465168(v0[26], &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      v17 = v0[23];
      v16 = v0[24];
      v18 = v0[22];
      (*(v17 + 16))(v16, v0[26], v18);
      sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
      sub_25853364C();
      (*(v17 + 8))(v16, v18);
    }

    v19 = v0[38];
    v20 = v0[25];
    v21 = v0[21];
    (*(v0[23] + 56))(v20, 1, 1, v0[22]);
    swift_beginAccess();
    sub_258472790(v20, v21 + v19);
    swift_endAccess();
    v22 = v0[37];
    v23 = v0[21];
    v24 = *(MEMORY[0x277D85798] + 4);
    v25 = swift_task_alloc();
    v0[39] = v25;
    *v25 = v0;
    v25[1] = sub_2584E4868;
    v26 = v0[36];
    v27 = v0[34];

    return MEMORY[0x2822003E8](v0 + 20, v23, v22, v27);
  }
}

uint64_t sub_2584E4C88()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584E4D98, v2, 0);
}

uint64_t sub_2584E4D98()
{
  v1 = v0[40];
  sub_2584E72C8(v1);
  sub_2584E72C8(v1);
  v2 = v0[37];
  v3 = v0[21];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_2584E4868;
  v6 = v0[36];
  v7 = v0[34];

  return MEMORY[0x2822003E8](v0 + 20, v3, v2, v7);
}

uint64_t sub_2584E4E64()
{
  v1[17] = v0;
  v2 = *v0;
  v1[18] = *v0;
  v1[19] = v2[10];
  v1[20] = v2[12];
  v1[21] = v2[13];
  v3 = sub_258532F6C();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  v6 = sub_25853323C();
  v1[25] = v6;
  v7 = *(v6 - 8);
  v1[26] = v7;
  v8 = *(v7 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584E4FF4, v0, 0);
}

uint64_t sub_2584E4FF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v24 = *(v0 + 200);
  v25 = *(v0 + 168);
  v6 = *(v0 + 152);
  v26 = *(v0 + 184);
  v27 = *(v0 + 144);
  v7 = *(v0 + 136);
  *(v0 + 104) = sub_25853313C();
  *(v0 + 112) = sub_25853318C();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 120) = MEMORY[0x277CD8F48];
  *(v0 + 128) = MEMORY[0x277CD8F50];
  *(v0 + 64) = 2;
  *(v0 + 72) = v4;
  *(v0 + 80) = v0 + 104;
  *(v0 + 88) = WitnessTable;
  *(v0 + 96) = v0 + 120;
  sub_2585332BC();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9311A0, &unk_25853C5E0) + 48);
  v10 = v7[16];
  *v2 = v7[15];
  *(v2 + 1) = v10;
  v11 = sub_258532DBC();
  (*(*(v11 - 8) + 56))(&v2[v9], 1, 1, v11);
  (*(v1 + 104))(v2, *MEMORY[0x277CD8FD8], v24);
  sub_258532E4C();

  MEMORY[0x259C80FA0](v6, v5, v25);
  v12 = swift_getWitnessTable();
  sub_2584B9B7C(v3, v4, v12);
  (*(v26 + 8))(v3, v4);
  v13 = sub_2585332AC();
  *(v0 + 224) = v13;
  v14 = *(*v7 + 168);
  v15 = *(v7 + v14);
  *(v7 + v14) = v13;

  v16 = *(v27 + 88);
  v17 = *(v27 + 112);
  *(v0 + 16) = v6;
  *(v0 + 24) = v16;
  *(v0 + 32) = v5;
  *(v0 + 40) = v25;
  *(v0 + 48) = v17;
  type metadata accessor for NetworkBackedControlConnectionListener();
  v18 = swift_getWitnessTable();
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  *(v19 + 16) = v7;
  *(v19 + 24) = v13;
  v20 = *(MEMORY[0x277D85A40] + 4);
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_2584E531C;
  v22 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v21, v7, v18, 0x73694C7075746573, 0xEF292872656E6574, sub_2584E7150, v19, v22);
}

uint64_t sub_2584E531C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2584E54D4;
  }

  else
  {
    v6 = sub_2584E5448;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584E5448()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2584E54D4()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_2584E5560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = *(*a2 + 176);
  swift_beginAccess();
  sub_258472790(v11, a2 + v14);
  swift_endAccess();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v6[11];
  v16[3] = v6[14];
  v16[4] = v6[15];
  v16[5] = v15;
  sub_25853328C();

  sub_2584E379C(a3);
  return sub_2584E4330();
}

uint64_t sub_2584E5770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a1 + *MEMORY[0x277CD9068] + 8);
  v8 = *(v7 + 24);
  v78[1] = *(v7 + 16);
  v78[2] = a4;
  v79 = v8;
  v80 = a5;
  v81 = a6;
  v75 = type metadata accessor for NetworkBackedControlConnectionListener.Event();
  v9 = sub_2585336AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v76 = &v67[-v13];
  v14 = sub_258532B7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_25853322C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v67[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v27);
  v77 = &v67[-v28];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    (*(v15 + 16))(v19, a2, v14);
    v31 = (*(v15 + 88))(v19, v14);
    if (v31 == *MEMORY[0x277CD8B40] || v31 == *MEMORY[0x277CD8B38])
    {
      v74 = v10;
      (*(v15 + 96))(v19, v14);
      v33 = v77;
      v72 = *(v21 + 32);
      v73 = v21 + 32;
      v72(v77, v19, v20);
      if (qword_27F92F8D0 != -1)
      {
        swift_once();
      }

      v34 = sub_258532A4C();
      __swift_project_value_buffer(v34, qword_27F93CFC0);
      v35 = *(v21 + 16);
      v35(v26, v33, v20);

      v36 = sub_258532A2C();
      v37 = sub_2585338CC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v69 = v35;
        v39 = v38;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v78[0] = v71;
        *v39 = 136315394;
        v40 = sub_2584E6FBC();
        v68 = v37;
        v41 = v9;
        v43 = v42;

        v44 = sub_2584713B0(v40, v43, v78);
        v9 = v41;

        *(v39 + 4) = v44;
        *(v39 + 12) = 2112;
        sub_2584E260C();
        swift_allocError();
        v69(v45, v26, v20);
        v46 = _swift_stdlib_bridgeErrorToNSError();
        (*(v21 + 8))(v26, v20);
        *(v39 + 14) = v46;
        v47 = v70;
        *v70 = v46;
        _os_log_impl(&dword_25845E000, v36, v68, "%s listener failed error:%@", v39, 0x16u);
        sub_258465168(v47, &qword_27F92FBC0, &qword_258537930);
        MEMORY[0x259C82900](v47, -1, -1);
        v48 = v71;
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x259C82900](v48, -1, -1);
        MEMORY[0x259C82900](v39, -1, -1);
      }

      else
      {

        (*(v21 + 8))(v26, v20);
      }

      v61 = *(*v30 + 208);
      sub_2584E260C();
      v62 = swift_allocError();
      v72(v63, v77, v20);
      v78[0] = v62;
      sub_2585336EC();
      v64 = v76;
      sub_2585336CC();

      return (*(v74 + 8))(v64, v9);
    }

    else if (v31 == *MEMORY[0x277CD8B28])
    {
      v49 = v9;
      if (qword_27F92F8D0 != -1)
      {
        swift_once();
      }

      v50 = sub_258532A4C();
      __swift_project_value_buffer(v50, qword_27F93CFC0);

      v51 = sub_258532A2C();
      v52 = sub_2585338BC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = v10;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v78[0] = v55;
        *v54 = 136315138;
        v56 = sub_2584E6FBC();
        v58 = v57;

        v59 = sub_2584713B0(v56, v58, v78);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_25845E000, v51, v52, "%s listener ready", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x259C82900](v55, -1, -1);
        v60 = v54;
        v10 = v53;
        MEMORY[0x259C82900](v60, -1, -1);
      }

      else
      {
      }

      v65 = *(*v30 + 208);
      v78[0] = 0;
      sub_2585336EC();
      v66 = v76;
      sub_2585336CC();

      return (*(v10 + 8))(v66, v49);
    }

    else
    {

      return (*(v15 + 8))(v19, v14);
    }
  }

  return result;
}

uint64_t sub_2584E5F10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2584E5F58, v1, 0);
}

uint64_t sub_2584E5F58()
{
  v34 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(*v2 + 216);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[15];
  v10 = *(v2 + v3);
  if ((sub_2584E299C() & 1) == 0)
  {
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_258532A4C();
    __swift_project_value_buffer(v13, qword_27F93CFC0);

    v14 = v12;
    v15 = sub_258532A2C();
    v16 = sub_2585338CC();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[3];
    if (v17)
    {
      v31 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v19 = 136315394;
      v21 = sub_2584E6FBC();
      v23 = v22;

      v24 = sub_2584713B0(v21, v23, &v33);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = v31;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_25845E000, v15, v16, "%s interrupted error:%@", v19, 0x16u);
      sub_258465168(v20, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x259C82900](v32, -1, -1);
      MEMORY[0x259C82900](v19, -1, -1);
    }

    else
    {
    }

    v27 = v0[2];
    v28 = v0[3];
    *(v2 + v3) = 4;
    sub_2584E6564(v27);
  }

  v29 = v0[1];

  return v29();
}

void sub_2584E61C4(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    v27 = v4[6];
    v33 = v4[5];
    v34 = v27;
    v35 = v4[7];
    type metadata accessor for NetworkBackedControlConnectionListener.Errors();
    v28 = 2;
LABEL_9:
    swift_getWitnessTable();
    swift_allocError();
    *v30 = v28;
    swift_willThrow();
    return;
  }

  v7 = sub_25853342C();
  v9 = v8;

  v10 = IDSCopyLocalDeviceUniqueID();
  if (!v10)
  {

    v29 = v4[6];
    v33 = v4[5];
    v34 = v29;
    v35 = v4[7];
    type metadata accessor for NetworkBackedControlConnectionListener.Errors();
    v28 = 3;
    goto LABEL_9;
  }

  v11 = v10;
  v36 = sub_25853342C();
  v13 = v12;

  *&v33 = v7;
  *(&v33 + 1) = v9;
  MEMORY[0x259C81500](46, 0xE100000000000000);
  MEMORY[0x259C81500](v2[15], v2[16]);
  v32 = sub_25853343C();
  v15 = v14;

  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v16 = sub_258532A4C();
  __swift_project_value_buffer(v16, qword_27F93CFC0);

  v17 = sub_258532A2C();
  v18 = sub_2585338EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v33 = v31;
    *v19 = 136315650;
    v20 = sub_2584E6FBC();
    v21 = v13;
    v23 = v22;

    v24 = sub_2584713B0(v20, v23, &v33);
    v13 = v21;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = v32;
    *(v19 + 14) = sub_2584713B0(v32, v15, &v33);
    *(v19 + 22) = 2080;
    v26 = v36;
    *(v19 + 24) = sub_2584713B0(v36, v21, &v33);
    _os_log_impl(&dword_25845E000, v17, v18, "%s applicationServiceName:%s, deviceID:%s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v31, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);
  }

  else
  {

    v26 = v36;
    v25 = v32;
  }

  a1[4] = v15;
  a1[5] = v26;
  a1[6] = v13;
  a1[2] = 0;
  a1[3] = v25;
  *a1 = 1;
  a1[1] = 0;
}

uint64_t sub_2584E6564(void *a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v36 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v35 - v18;
  v20 = *(v5 + 184);
  if (*(v2 + v20))
  {
    v21 = *(v2 + v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v4 = *v2;
  }

  v22 = *(v4 + 192);
  if (*(v2 + v22))
  {
    v23 = *(v2 + v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v38 = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  v25 = *(v5 + 80);
  v26 = *(v5 + 120);
  v39 = v25;
  v37 = *(v5 + 88);
  v27 = *(v5 + 104);
  v40 = v37;
  v41 = v27;
  v42 = v26;
  type metadata accessor for NetworkBackedControlConnectionListener.Errors();
  if (swift_dynamicCast() && !v43)
  {
    v34 = *(*v2 + 160);
    v38 = 0;
  }

  else
  {
    v28 = *(*v2 + 160);
    v38 = a1;
    v29 = a1;
  }

  v39 = v25;
  *&v40 = v37;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_25853380C();
  sub_2585337FC();
  v30 = *(*v2 + 176);
  swift_beginAccess();
  sub_258472808(v2 + v30, v19);
  if ((*(v7 + 48))(v19, 1, v6))
  {
    sub_258465168(v19, &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v31 = v36;
    (*(v7 + 16))(v36, v19, v6);
    sub_258465168(v19, &unk_27F930DB0, &qword_258536390);
    v38 = a1;
    v32 = a1;
    sub_25853363C();
    (*(v7 + 8))(v31, v6);
  }

  (*(v7 + 56))(v16, 1, 1, v6);
  swift_beginAccess();
  sub_258472790(v16, v2 + v30);
  return swift_endAccess();
}

char *sub_2584E69B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + 16);

  v4 = *(*v0 + 152);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  swift_getExtendedExistentialTypeMetadata_unique();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v7 = sub_25853384C();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  v8 = *(*v0 + 160);
  v9 = sub_25853380C();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = *&v0[*(*v0 + 168)];

  sub_258465168(&v0[*(*v0 + 176)], &unk_27F930DB0, &qword_258536390);
  v11 = *&v0[*(*v0 + 184)];

  v12 = *&v0[*(*v0 + 192)];

  v13 = *(*v0 + 200);
  v18 = *(v2 + 96);
  v19 = *(v2 + 112);
  type metadata accessor for NetworkBackedControlConnectionListener.Event();
  v14 = sub_25853372C();
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = *(*v0 + 208);
  v16 = sub_2585336EC();
  (*(*(v16 - 8) + 8))(&v0[v15], v16);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584E6C8C()
{
  sub_2584E69B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2584E6D00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2584E6D48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584E6D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2584E6DEC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2584E6E20(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258464F5C;

  return sub_2584E2A74(a1, a2);
}

uint64_t sub_2584E6ECC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return sub_2584E34A8();
}

uint64_t sub_2584E6F5C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  type metadata accessor for NetworkBackedControlConnectionListener();
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_2584E6FBC()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000027, 0x8000000258540500);
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  type metadata accessor for NetworkBackedControlConnectionListener();
  swift_getWitnessTable();
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2584E70FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584E7158()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584E7190()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E71D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2584E7214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_2584E44C4(a1, v4, v5, v6);
}

void sub_2584E72C8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2584E72D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E7320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258472CF8;

  return sub_2584E3944(a1, v4, v5, v7, v6);
}

uint64_t sub_2584E73E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584E7458()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_availableInterfacesStream;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_avaiableIntefacesStreamContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation, &unk_27F930DB0, &qword_258536390);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for NetworkBackedControlConnectionMigrationController()
{
  result = qword_27F931240;
  if (!qword_27F931240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584E75D0()
{
  sub_2584E7730(319, &qword_27F931250, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2584E7730(319, &qword_27F931258, MEMORY[0x277D858B0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_258472254();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2584E7730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F92FBB0, &qword_25853A840);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2584E77D0()
{
  result = qword_27F931260;
  if (!qword_27F931260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931260);
  }

  return result;
}

uint64_t sub_2584E7828()
{
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931290, &qword_25853C8F0);
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v40, v3);
  v5 = (v32 - v4);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  v39 = *(v41 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v41, v7);
  v36 = v32 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  v35 = *(v37 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v37, v10);
  v34 = v32 - v11;
  v33 = sub_25853394C();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v33, v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25853393C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v20 = sub_25853335C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v32[1] = sub_2584E228C();
  sub_25853334C();
  v42 = MEMORY[0x277D84F90];
  sub_2584EA6E4(&unk_27F9313C0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931298, &qword_25853C8F8);
  sub_2584EA72C();
  sub_258533A8C();
  (*(v12 + 104))(v16, *MEMORY[0x277D85260], v33);
  *(v0 + 32) = sub_25853396C();
  v23 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_availableInterfacesStream;
  v24 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_avaiableIntefacesStreamContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92FBB0, &qword_25853A840);
  *v5 = 1;
  v25 = v38;
  v26 = v40;
  (*(v38 + 104))(v5, *MEMORY[0x277D85898], v40);
  v27 = v34;
  v28 = v36;
  sub_2585337BC();
  (*(v25 + 8))(v5, v26);
  (*(v35 + 32))(v0 + v23, v27, v37);
  (*(v39 + 32))(v0 + v24, v28, v41);
  v29 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  return v1;
}

uint64_t sub_2584E7D24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for NetworkBackedControlConnectionMigrationController();
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

uint64_t sub_2584E7D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[14] = a1;
  return MEMORY[0x2822009F8](sub_2584E7D8C, 0, 0);
}

uint64_t sub_2584E7D8C()
{
  v22 = v0;
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = 6;
LABEL_12:
    sub_2584EA678();
    v13 = swift_allocError();
    *v14 = v2;
    swift_willThrow();
    v15 = v0[16];
    sub_2584E9330(v13);
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }

  v3 = v0[16];
  if (qword_27F92F910 != -1)
  {
    swift_once();
    v17 = v0[16];
  }

  v4 = sub_258532A4C();
  v0[17] = __swift_project_value_buffer(v4, qword_27F93D080);

  v5 = sub_258532A2C();
  v6 = sub_2585338EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    v20 = 0;
    *v8 = 136315138;
    v21 = 0xE000000000000000;
    sub_258533B8C();
    v0[9] = v20;
    v0[10] = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
    type metadata accessor for NetworkBackedControlConnectionMigrationController();
    sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController);
    v0[13] = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(v0[9], v0[10], &v19);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_25845E000, v5, v6, "%s activating", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v11 = v0[15];
  *(v1 + 16) = 1;
  sub_258464C30(v11, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931280, &unk_25853C8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304B0, &qword_258538108);
  if (!swift_dynamicCast())
  {
    v2 = 0;
    goto LABEL_12;
  }

  v12 = v0[11];
  v0[18] = v12;

  return MEMORY[0x2822009F8](sub_2584E80E8, v12, 0);
}

uint64_t sub_2584E80E8()
{
  if (*(*(v0 + 144) + 128))
  {
    *(v0 + 152) = sub_258532C0C();
    v1 = sub_2584E816C;
  }

  else
  {
    v1 = sub_2584E83C0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2584E816C()
{
  if (v0[19])
  {
    v1 = v0[16];
    if (*(v1 + 16) == 1)
    {
      v2 = sub_2585330BC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();

      v5 = sub_25853303C();
      v0[20] = v5;
      v6 = *(v1 + 24);
      *(v1 + 24) = v5;

      sub_25853307C();

      v7 = swift_task_alloc();
      v0[21] = v7;
      *(v7 + 16) = v1;
      *(v7 + 24) = v5;
      v8 = *(MEMORY[0x277D85A40] + 4);
      v9 = swift_task_alloc();
      v0[22] = v9;
      *v9 = v0;
      v9[1] = sub_2584E8474;

      return MEMORY[0x2822008A0]();
    }

    v13 = v0[18];
    sub_2584EA678();
    v11 = swift_allocError();
    *v14 = 6;
    swift_willThrow();
  }

  else
  {
    v10 = v0[18];
    sub_2584EA678();
    v11 = swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  v15 = v0[16];
  sub_2584E9330(v11);
  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_2584E83C0()
{
  v1 = v0[18];
  sub_2584EA678();
  v2 = swift_allocError();
  *v3 = 2;
  swift_willThrow();

  v4 = v0[16];
  sub_2584E9330(v2);
  swift_willThrow();
  v5 = v0[1];

  return v5();
}

uint64_t sub_2584E8474()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2584E88C8;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_2584E8590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2584E8590()
{
  v29 = v0;
  if (*(v0[16] + 16) == 1)
  {
    v1 = v0[17];
    v2 = v0[16];

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    if (v5)
    {
      v9 = v0[16];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      v27 = 0;
      *v10 = 136315138;
      v28 = 0xE000000000000000;
      sub_258533B8C();
      v0[7] = v27;
      v0[8] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
      type metadata accessor for NetworkBackedControlConnectionMigrationController();
      sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController);
      v0[12] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v12 = sub_2584713B0(v0[7], v0[8], &v26);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_25845E000, v3, v4, "%s activated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
      v20 = v0[20];
    }

    v21 = v0[16];
    v22 = v0[14];
    *(v21 + 16) = 2;
    v23 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_availableInterfacesStream;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
    (*(*(v24 - 8) + 16))(v22, v21 + v23, v24);
    v19 = v0[1];
  }

  else
  {
    v13 = v0[19];
    v14 = v0[20];
    v15 = v0[18];
    sub_2584EA678();
    v16 = swift_allocError();
    *v17 = 6;
    swift_willThrow();

    v18 = v0[16];
    sub_2584E9330(v16);
    swift_willThrow();
    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_2584E88C8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  v5 = v0[16];
  sub_2584E9330(v0[23]);
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_2584E8968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931288, &unk_25853C8E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - v15;
  (*(v6 + 16))(v10, a3 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_avaiableIntefacesStreamContinuation, v5);
  v17 = *(a2 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v34 = v16;
    v35 = v12;
    v36 = v11;
    v37 = v10;
    v38 = v6;
    v39 = v5;
    v50 = MEMORY[0x277D84F90];
    sub_2584F92F8(0, v17, 0);
    v18 = v50;
    v19 = sub_258532D8C();
    v20 = *(v19 - 8);
    v42 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v43 = v19;
    v21 = type metadata accessor for NetworkBackedNetworkInterface();
    v22 = 0;
    v40 = v20;
    v41 = v20 + 16;
    do
    {
      v48 = v21;
      v49 = &off_2869900B8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      (*(v40 + 16))(boxed_opaque_existential_1, v42 + *(v40 + 72) * v22, v43);
      v50 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2584F92F8((v24 > 1), v25 + 1, 1);
        v18 = v50;
      }

      ++v22;
      v26 = v48;
      v27 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
      v28 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v27, v27);
      v30 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      v45 = v21;
      v46 = &off_2869900B8;
      v32 = __swift_allocate_boxed_opaque_existential_1(&v44);
      sub_258465104(v30, v32);
      *(v18 + 16) = v25 + 1;
      sub_258464C18(&v44, v18 + 40 * v25 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    while (v17 != v22);
    v6 = v38;
    v5 = v39;
    v11 = v36;
    v10 = v37;
    v16 = v34;
    v12 = v35;
  }

  v47[0] = v18;
  sub_2585337EC();
  (*(v6 + 8))(v10, v5);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_2584E8D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
  swift_beginAccess();
  sub_258472790(v8, a2 + v11);
  swift_endAccess();

  sub_25853304C();

  v12 = *(a2 + 32);
  return sub_25853309C();
}

void sub_2584E8E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v4 = sub_25853322C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v37 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v36 - v21;
  v23 = sub_25853308C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, a2, v23);
  v29 = (*(v24 + 88))(v28, v23);
  if (v29 == *MEMORY[0x277CD8F40])
  {
    (*(v24 + 96))(v28, v23);
    (*(v5 + 32))(v9, v28, v4);
    sub_2584EA6E4(&qword_27F9313B0, MEMORY[0x277CD8FC0]);
    v30 = swift_allocError();
    (*(v5 + 16))(v31, v9, v4);
    sub_2584E9330(v30);
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v32 = v39;
    if (v29 == *MEMORY[0x277CD8F38])
    {
      v33 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
      swift_beginAccess();
      sub_258472808(v32 + v33, v22);
      v34 = v38;
      if ((*(v38 + 48))(v22, 1, v10))
      {
        sub_258465168(v22, &unk_27F930DB0, &qword_258536390);
      }

      else
      {
        (*(v34 + 16))(v14, v22, v10);
        sub_258465168(v22, &unk_27F930DB0, &qword_258536390);
        sub_25853364C();
        (*(v34 + 8))(v14, v10);
      }

      v35 = v37;
      (*(v34 + 56))(v37, 1, 1, v10);
      swift_beginAccess();
      sub_258472790(v35, v32 + v33);
      swift_endAccess();
    }

    else
    {
      (*(v24 + 8))(v28, v23);
    }
  }
}

uint64_t sub_2584E9330(uint64_t result)
{
  if (*(v1 + 16) <= 2u)
  {
    v2 = result;
    *(v1 + 16) = 4;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D080);

    v4 = v2;
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v7 = 136315394;
      v13 = v9;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
      type metadata accessor for NetworkBackedControlConnectionMigrationController();
      sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController);
      sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v10 = sub_2584713B0(0, 0xE000000000000000, &v13);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2112;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v12;
      *v8 = v12;
      _os_log_impl(&dword_25845E000, v5, v6, "%s interrupted: %@", v7, 0x16u);
      sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    return sub_2584EA27C(v2);
  }

  return result;
}

uint64_t sub_2584E95E0()
{
  if (*(v0 + 16) != 2)
  {
    v18 = 6;
LABEL_11:
    sub_2584EA678();
    swift_allocError();
    *v19 = v18;
    swift_willThrow();
    return v0;
  }

  v0 = *(v0 + 24);
  if (!v0)
  {
    v18 = 3;
    goto LABEL_11;
  }

  v2 = sub_25853305C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v21[1] = v0;
    v21[2] = v1;
    v33 = MEMORY[0x277D84F90];
    sub_2584F92F8(0, v3, 0);
    v0 = v33;
    v26 = sub_258532D8C();
    v4 = *(v26 - 8);
    v5 = *(v4 + 80);
    v21[0] = v2;
    v24 = v2 + ((v5 + 32) & ~v5);
    v6 = type metadata accessor for NetworkBackedNetworkInterface();
    v7 = 0;
    v25 = v4;
    v23 = v4 + 16;
    v22 = v3;
    do
    {
      v31 = v6;
      v32 = &off_2869900B8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(v25 + 16))(boxed_opaque_existential_1, v24 + *(v25 + 72) * v7, v26);
      v33 = v0;
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2584F92F8((v9 > 1), v10 + 1, 1);
        v0 = v33;
      }

      ++v7;
      v11 = v31;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      v13 = *(*(v11 - 8) + 64);
      MEMORY[0x28223BE20](v12, v12);
      v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      v28 = v6;
      v29 = &off_2869900B8;
      v17 = __swift_allocate_boxed_opaque_existential_1(&v27);
      sub_258465104(v15, v17);
      *(v0 + 16) = v10 + 1;
      sub_258464C18(&v27, v0 + 40 * v10 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    while (v22 != v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v0;
}

size_t sub_2584E98B4(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v76 = v62 - v8;
  v9 = type metadata accessor for NetworkBackedNetworkInterface();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v75 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258532D8C();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v77 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  MEMORY[0x28223BE20](v20, v21);
  v78 = v62 - v23;
  if (*(v1 + 16) != 2)
  {
    sub_2584EA678();
    swift_allocError();
    v59 = 6;
LABEL_25:
    *v58 = v59;
    return swift_willThrow();
  }

  v24 = *(v1 + 24);
  if (!v24)
  {
    sub_2584EA678();
    swift_allocError();
    v59 = 3;
    goto LABEL_25;
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v71 = v22;
    v62[0] = v3;
    v84 = MEMORY[0x277D84F90];
    v62[1] = v24;

    sub_2584F9318(0, v25, 0);
    v26 = 0;
    v67 = a1 + 32;
    v27 = v84;
    v72 = (v10 + 56);
    v28 = (v79 + 32);
    v29 = v77;
    v66 = v25;
    v65 = (v79 + 32);
    v73 = v9;
    v64 = v79 + 16;
    v63 = (v79 + 8);
    while (1)
    {
      v70 = v27;
      v68 = v26;
      v30 = *(v67 + 8 * v26);
      v31 = *(v30 + 16);
      v74 = v30;
      if (v31)
      {
        break;
      }

      v46 = MEMORY[0x277D84F90];
      v45 = v78;
LABEL_14:
      v69 = v46;
      v47 = *(v46 + 16);
      v48 = sub_2584EA6E4(&qword_27F930B28, MEMORY[0x277CD8CF0]);
      v82[0] = MEMORY[0x259C818D0](v47, v14, v48);
      v49 = *(v69 + 16);
      if (v49)
      {
        v50 = v69 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
        v80 = *(v79 + 72);
        v51 = *(v79 + 16);
        v52 = v14;
        v53 = v63;
        do
        {
          v51(v45, v50, v52);
          sub_2584CEA30(v29, v45);
          (*v53)(v29, v52);
          v50 += v80;
          --v49;
        }

        while (v49);

        v25 = v66;
        v9 = v73;
        v14 = v52;
      }

      else
      {
      }

      v54 = v82[0];
      v27 = v70;
      v84 = v70;
      v56 = *(v70 + 16);
      v55 = *(v70 + 24);
      v57 = v68;
      if (v56 >= v55 >> 1)
      {
        sub_2584F9318((v55 > 1), v56 + 1, 1);
        v57 = v68;
        v27 = v84;
      }

      v26 = v57 + 1;
      *(v27 + 16) = v56 + 1;
      *(v27 + 8 * v56 + 32) = v54;
      v28 = v65;
      if (v26 == v25)
      {
        goto LABEL_28;
      }
    }

    v83 = MEMORY[0x277D84F90];

    v80 = v31;
    result = sub_2584F9338(0, v31, 0);
    v33 = 0;
    v34 = v83;
    v35 = v30 + 32;
    while (v33 < *(v30 + 16))
    {
      sub_258464C30(v35, v82);
      sub_258464C30(v82, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
      v36 = v76;
      v37 = swift_dynamicCast();
      v38 = *v72;
      if (!v37)
      {
        v38(v36, 1, 1, v9);
        sub_258465168(v36, &qword_27F930DD8, &unk_25853CEC0);
        sub_2584EA678();
        swift_allocError();
        *v60 = 1;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1Tm(v82);
      }

      v38(v36, 0, 1, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      v39 = v75;
      sub_258465104(v36, v75);
      v40 = *v28;
      v41 = v71;
      (*v28)(v71, v39, v14);
      v42 = v34;
      v83 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2584F9338(v43 > 1, v44 + 1, 1);
        v42 = v83;
      }

      ++v33;
      *(v42 + 16) = v44 + 1;
      v34 = v42;
      result = (v40)(v42 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v44, v41, v14);
      v35 += 40;
      v9 = v73;
      v30 = v74;
      v29 = v77;
      v45 = v78;
      if (v80 == v33)
      {
        v25 = v66;
        v46 = v34;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v61 = *(v1 + 24);

LABEL_28:
    sub_25853306C();
  }

  return result;
}

uint64_t sub_2584E9FD8()
{
  v18 = v0;
  v1 = v0[5];
  if (*(v1 + 16) <= 2u)
  {
    *(v1 + 16) = 3;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D080);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      v16 = 0;
      *v7 = 136315138;
      v17 = 0xE000000000000000;
      sub_258533B8C();
      v0[2] = v16;
      v0[3] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
      type metadata accessor for NetworkBackedControlConnectionMigrationController();
      sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController);
      v0[4] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v9 = sub_2584713B0(v0[2], v0[3], &v15);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_25845E000, v4, v5, "%s invalidated", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    v10 = v0[5];
    sub_2584EA678();
    v11 = swift_allocError();
    *v12 = 5;
    sub_2584EA27C(v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2584EA27C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23[-v16];
  if (*(v1 + 24))
  {

    sub_2585330AC();
  }

  v24 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (swift_dynamicCast() && v23[0] == 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = a1;
    v19 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  sub_2585337FC();
  v20 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
  swift_beginAccess();
  sub_258472808(v1 + v20, v17);
  if ((*(v4 + 48))(v17, 1, v3))
  {
    sub_258465168(v17, &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    (*(v4 + 16))(v8, v17, v3);
    sub_258465168(v17, &unk_27F930DB0, &qword_258536390);
    *v23 = a1;
    v21 = a1;
    sub_25853363C();
    (*(v4 + 8))(v8, v3);
  }

  (*(v4 + 56))(v14, 1, 1, v3);
  swift_beginAccess();
  sub_258472790(v14, v1 + v20);
  return swift_endAccess();
}

uint64_t sub_2584EA588()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
  type metadata accessor for NetworkBackedControlConnectionMigrationController();
  sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

unint64_t sub_2584EA678()
{
  result = qword_27F931278;
  if (!qword_27F931278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931278);
  }

  return result;
}

uint64_t sub_2584EA6E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2584EA72C()
{
  result = qword_27F9313D0;
  if (!qword_27F9313D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F931298, &qword_25853C8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9313D0);
  }

  return result;
}

unint64_t sub_2584EA7A0(uint64_t a1)
{
  result = sub_2584EA678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584EA7CC()
{
  result = qword_27F9312A0;
  if (!qword_27F9312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9312A0);
  }

  return result;
}

uint64_t sub_2584EA824()
{
  if (*v0)
  {
    return 21;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_2584EA870(uint64_t a1)
{
  result = sub_2584AA71C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584EA89C()
{
  result = qword_27F9312A8;
  if (!qword_27F9312A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9312A8);
  }

  return result;
}

uint64_t sub_2584EA904()
{
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFD8);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
    v6 = sub_258533DFC();
    v8 = sub_2584713B0(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v2, v3, "%s deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state) != 3)
  {
    if (*(v0 + 16))
    {
      v9 = *(v0 + 16);

      sub_258532BAC();
    }

    if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator))
    {
      nw_path_evaluator_cancel();
    }
  }

  v10 = *(v0 + 16);

  v11 = *(v0 + 32);

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_connectionId, &qword_27F931360, &unk_25853CD10);
  v12 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator);
  swift_unknownObjectRelease();

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint, &unk_27F931440, &qword_2585380E0);
  sub_2584AE960(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress + 8));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address, &unk_27F931350, qword_258538C60);
  return v0;
}

uint64_t sub_2584EAB90()
{
  sub_2584EA904();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider()
{
  result = qword_27F931308;
  if (!qword_27F931308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584EAC3C()
{
  sub_2584EADDC(319, &qword_27F931318, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2584EADDC(319, &qword_27F931320, MEMORY[0x277CD8B10]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2584EADDC(319, &unk_27F931328, MEMORY[0x277CD8C88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2584EADDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258533A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2584EAE40()
{
  result = qword_27F931338;
  if (!qword_27F931338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931338);
  }

  return result;
}

void *sub_2584EAE98()
{
  v1 = v0;
  v23 = sub_25853394C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25853393C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_25853335C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v13 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_connectionId;
  v14 = sub_2585329BC();
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator) = 0;
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state) = 0;
  v22 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerQueue;
  sub_2584E228C();
  sub_25853334C();
  v24 = MEMORY[0x277D84F90];
  sub_2584F0608(&unk_27F9313C0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931298, &qword_25853C8F8);
  sub_2584EA72C();
  sub_258533A8C();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v23);
  *(v0 + v22) = sub_25853396C();
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted) = 0;
  v15 = v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID;
  *v15 = 0;
  v15[8] = 1;
  v16 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint;
  v17 = sub_258532B0C();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress) = xmmword_25853CAF0;
  v18 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address;
  v19 = sub_258532CFC();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) = 0;
  return v1;
}

uint64_t sub_2584EB220@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

uint64_t sub_2584EB264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931390, &qword_25853CD30) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v10 = sub_258532AEC();
  v7[16] = v10;
  v11 = *(v10 - 8);
  v7[17] = v11;
  v12 = *(v11 + 64) + 15;
  v7[18] = swift_task_alloc();
  v13 = sub_258532CFC();
  v7[19] = v13;
  v14 = *(v13 - 8);
  v7[20] = v14;
  v15 = *(v14 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584EB408, 0, 0);
}

uint64_t sub_2584EB408()
{
  v52 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state;
  *(v0 + 184) = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state;
  if (*(v1 + v2))
  {
    sub_2584F00E4();
    swift_allocError();
    *v3 = 0;
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 144);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
    v45 = *(v0 + 104);
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = sub_258532A4C();
  *(v0 + 192) = __swift_project_value_buffer(v13, qword_27F93CFD8);

  v14 = sub_258532A2C();
  v15 = sub_2585338EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 104);
    v48 = *(v0 + 80);
    v49 = *(v0 + 88);
    v46 = *(v0 + 72);
    v47 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51[0] = v50;
    *v17 = 136315650;
    *(v0 + 48) = v16;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
    v18 = sub_258533DFC();
    v20 = sub_2584713B0(v18, v19, v51);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    if (v46)
    {
      v21 = v47;
    }

    else
    {
      v21 = 7104878;
    }

    if (v46)
    {
      v22 = v12;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_2584713B0(v21, v22, v51);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_2584713B0(v48, v49, v51);
    _os_log_impl(&dword_25845E000, v14, v15, "%s vendLocalNetworkInfo: localInterface=%s, remoteAddress=%s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v50, -1, -1);
    MEMORY[0x259C82900](v17, -1, -1);
  }

  v24 = *(v0 + 72);
  *(v1 + v2) = 1;
  if (v24)
  {
    v25 = *(v0 + 104);
    if (*(v0 + 64) == 813132908 && *(v0 + 72) == 0xE400000000000000)
    {
      *(v25 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) = 1;
LABEL_20:
      v27 = *(v0 + 104);
      v28 = sub_2584EC41C(*(v0 + 176), *(v0 + 64), v12);
      v30 = v29;
      v31 = *(v0 + 104);
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
      v32 = (v31 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress);
      v33 = *(v31 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress);
      v34 = *(v31 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress + 8);
      *v32 = v28;
      v32[1] = v30;
      sub_2584AE960(v33, v34);
      goto LABEL_21;
    }

    v26 = sub_258533E2C();
    *(v25 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) = v26 & 1;
    if (v26)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v37 = *(v0 + 88);
  v39 = *(v0 + 64);
  v38 = *(v0 + 72);
  v40 = *(v35 + 32);
  *(v35 + 24) = *(v0 + 80);
  *(v35 + 32) = v37;

  v41 = v35 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID;
  *v41 = v36;
  *(v41 + 8) = 0;
  v42 = sub_2584ECBF0(v39, v38);
  *(v0 + 200) = v42;
  v43 = swift_task_alloc();
  *(v0 + 208) = v43;
  *v43 = v0;
  v43[1] = sub_2584EBA9C;
  v44 = *(v0 + 104);

  return sub_2584ECEEC(v42);
}

uint64_t sub_2584EBA9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_2584EC174;
  }

  else
  {
    v5 = sub_2584EBBB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2584EBBB0()
{
  v72 = v0;
  v1 = v0[27];
  if (*(v0[13] + v0[23]) != 1)
  {
    v10 = v0[25];
    sub_2584F00E4();
    v8 = swift_allocError();
    v9 = 2;
    goto LABEL_5;
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  sub_258532B6C();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[27];
    v6 = v0[25];
    sub_258465168(v0[15], &unk_27F931390, &qword_25853CD30);
    sub_2584F00E4();
    v8 = swift_allocError();
    v9 = 3;
LABEL_5:
    *v7 = v9;
    swift_willThrow();
    goto LABEL_6;
  }

  v35 = v0[27];
  v36 = v0[28];
  v37 = v0[13];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  v38 = *(v37 + 16);
  *(v37 + 16) = v35;

  sub_2584ED31C();
  if (!v36)
  {
    v42 = v0[19];
    v41 = v0[20];
    v43 = v0[18];
    v45 = v0[13];
    v44 = v0[14];
    v70 = sub_258532ADC();
    v46 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address;
    swift_beginAccess();
    sub_2584AC3B8(v45 + v46, v44, &unk_27F931350, qword_258538C60);
    v47 = (*(v41 + 48))(v44, 1, v42);
    v48 = v0[27];
    v49 = v0[25];
    if (v47)
    {
      v50 = v0[14];
      (*(v0[17] + 8))(v0[18], v0[16]);

      sub_258465168(v50, &unk_27F931350, qword_258538C60);
      v69 = 0;
      v51 = 0xF000000000000000;
    }

    else
    {
      v52 = v0[20];
      v53 = v0[21];
      v54 = v0[19];
      v68 = v0[18];
      v56 = v0[16];
      v55 = v0[17];
      v57 = v0[14];
      (*(v52 + 16))(v53, v57, v54);
      sub_258465168(v57, &unk_27F931350, qword_258538C60);
      v69 = sub_258532CDC();
      v51 = v58;

      (*(v52 + 8))(v53, v54);
      (*(v55 + 8))(v68, v56);
    }

    v59 = v0[22];
    v60 = v0[21];
    v61 = v0[18];
    v63 = v0[14];
    v62 = v0[15];
    v64 = v0[13];
    v65 = v0[7];
    v67 = *(v64 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress);
    v66 = *(v64 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress + 8);
    *(v64 + v0[23]) = 2;
    sub_2584ABAF4(v67, v66);

    *v65 = v70;
    *(v65 + 8) = v69;
    *(v65 + 16) = v51;
    *(v65 + 24) = v67;
    *(v65 + 32) = v66;
    v33 = v0[1];
    goto LABEL_14;
  }

  v8 = v36;
  v39 = v0[27];
  v40 = v0[25];
  (*(v0[17] + 8))(v0[18], v0[16]);
LABEL_6:

  v11 = v0[24];
  v12 = v0[13];

  v13 = v8;
  v14 = sub_258532A2C();
  v15 = sub_2585338CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[13];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v71 = v19;
    *v17 = 136315394;
    v0[5] = v16;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
    v20 = sub_258533DFC();
    v22 = sub_2584713B0(v20, v21, &v71);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_25845E000, v14, v15, "%s vendLocalNetworkInfo failed with error:%@", v17, 0x16u);
    sub_258465168(v18, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x259C82900](v19, -1, -1);
    MEMORY[0x259C82900](v17, -1, -1);
  }

  v25 = v0[23];
  v26 = v0[13];
  if (*(v26 + v25) != 3)
  {
    *(v26 + v25) = 3;
    if (*(v26 + 16))
    {
      v27 = *(v26 + 16);

      sub_258532BAC();
    }

    if (*(v0[13] + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator))
    {
      nw_path_evaluator_cancel();
    }
  }

  v29 = v0[21];
  v28 = v0[22];
  v30 = v0[18];
  v32 = v0[14];
  v31 = v0[15];
  swift_willThrow();

  v33 = v0[1];
LABEL_14:

  return v33();
}

uint64_t sub_2584EC174()
{
  v28 = v0;
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[13];

  v5 = v2;
  v6 = sub_258532A2C();
  v7 = sub_2585338CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v9 = 136315394;
    v0[5] = v8;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
    v12 = sub_258533DFC();
    v14 = sub_2584713B0(v12, v13, &v27);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25845E000, v6, v7, "%s vendLocalNetworkInfo failed with error:%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v17 = v0[23];
  v18 = v0[13];
  if (*(v18 + v17) != 3)
  {
    *(v18 + v17) = 3;
    if (*(v18 + 16))
    {
      v19 = *(v18 + 16);

      sub_258532BAC();
    }

    if (*(v0[13] + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator))
    {
      nw_path_evaluator_cancel();
    }
  }

  v21 = v0[21];
  v20 = v0[22];
  v22 = v0[18];
  v24 = v0[14];
  v23 = v0[15];
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_2584EC41C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v72 = sub_258532CFC();
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v72, v7);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v65 - v12;
  v14 = sub_25853346C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v68 = a2;
  v74[0] = a2;
  v74[1] = a3;
  v71 = a3;
  sub_25853344C();
  sub_2584B55D8();
  sub_258533A4C();
  (*(v15 + 8))(v19, v14);
  LODWORD(v14) = CUGetInterfaceAddresses();

  if (v14 == sub_258532A6C())
  {
    v19 = sub_2584F0138(v20, v20 + 6);
    v23 = v22;
    v24 = v22 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x259C82900](v20, -1, -1);
    v25 = *(v21 + 24);
    v26 = *v21;
    sub_258507D20(*(v21 + 8), *(v21 + 16), v13);
    v27 = v72;
    if ((*(v5 + 48))(v13, 1, v72) == 1)
    {
      sub_258465168(v13, &unk_27F931350, qword_258538C60);
      sub_2584F00E4();
      swift_allocError();
      *v28 = 5;
      swift_willThrow();
      sub_258467E20(v19, v24);
    }

    else
    {
      v67 = v23;
      v39 = v69;
      (*(v5 + 32))(v69, v13, v27);
      MEMORY[0x259C82900](v21, -1, -1);
      if (qword_27F92F8D8 != -1)
      {
        swift_once();
      }

      v40 = sub_258532A4C();
      __swift_project_value_buffer(v40, qword_27F93CFD8);
      v41 = v70;
      (*(v5 + 16))(v70, v39, v27);
      v42 = v5;
      v43 = v73;

      v44 = v71;

      sub_2584A7B8C(v19, v24);
      v45 = sub_258532A2C();
      v46 = sub_2585338EC();

      sub_258467E20(v19, v24);
      if (os_log_type_enabled(v45, v46))
      {
        v66 = v46;
        v69 = v45;
        v47 = v41;
        v48 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v74[0] = v65;
        *v48 = 136315907;
        v75 = v43;
        type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
        sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
        v49 = sub_258533DFC();
        v51 = sub_2584713B0(v49, v50, v74);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_2584713B0(v68, v44, v74);
        *(v48 + 22) = 2081;
        v52 = sub_258532CCC();
        v54 = v53;
        (*(v42 + 8))(v47, v27);
        v55 = sub_2584713B0(v52, v54, v74);

        *(v48 + 24) = v55;
        *(v48 + 32) = 2081;
        v56 = v67 & 0xFF000000000000;
        sub_258467E20(v19, v24);
        if (v56 == 0x6000000000000)
        {
          v57 = sub_25852F78C(v19 & 0xFFFFFFFFFFFFLL);
          v59 = v58;
        }

        else
        {
          v59 = 0xE700000000000000;
          v57 = 0x64696C61766E69;
        }

        v60 = v66;
        v61 = sub_2584713B0(v57, v59, v74);

        *(v48 + 34) = v61;
        v62 = v69;
        _os_log_impl(&dword_25845E000, v69, v60, "%s localInterface=%s, localLinkLocalIPv6Address=%{private}s, localMacAddress=%{private}s", v48, 0x2Au);
        v63 = v65;
        swift_arrayDestroy();
        MEMORY[0x259C82900](v63, -1, -1);
        MEMORY[0x259C82900](v48, -1, -1);
      }

      else
      {

        (*(v42 + 8))(v41, v27);
      }
    }
  }

  else
  {
    MEMORY[0x259C82900](v20, -1, -1);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v29 = sub_258532A4C();
    __swift_project_value_buffer(v29, qword_27F93CFD8);
    v30 = v73;

    v31 = sub_258532A2C();
    v32 = sub_2585338CC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74[0] = v34;
      *v33 = 136315138;
      v75 = v30;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
      v35 = sub_258533DFC();
      v37 = sub_2584713B0(v35, v36, v74);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_25845E000, v31, v32, "%s Failed to read network address", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x259C82900](v34, -1, -1);
      MEMORY[0x259C82900](v33, -1, -1);
    }

    sub_2584F00E4();
    swift_allocError();
    *v38 = 11;
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_2584ECBF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &aBlock - v7;
  v9 = sub_258532D8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = nullsub_1;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2584EF870;
  v23 = &block_descriptor_53;
  v15 = _Block_copy(&aBlock);
  v24 = nullsub_1;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2584EF870;
  v23 = &block_descriptor_56;
  v16 = _Block_copy(&aBlock);
  secure_udp = nw_parameters_create_secure_udp(v15, v16);
  _Block_release(v16);
  _Block_release(v15);
  swift_unknownObjectRetain();
  nw_parameters_set_disable_listener_datapath();
  if (a2)
  {

    sub_258532D9C();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_258465168(v8, &qword_27F930620, &unk_25853E7D0);
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
      v18 = sub_258532D4C();
      nw_parameters_require_interface(secure_udp, v18);
      swift_unknownObjectRelease();
      (*(v10 + 8))(v14, v9);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) == 1)
  {
    nw_parameters_set_allow_duplicate_state_updates();
  }

  swift_unknownObjectRelease();
  sub_258532EFC();
  return sub_258532F0C();
}

uint64_t sub_2584ECEEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_258532AEC() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584ECF7C, 0, 0);
}

uint64_t sub_2584ECF7C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_258532ACC();
  v3 = sub_258532BBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_258532B9C();
  v0[5] = v6;
  v7 = v6;
  v8 = v0[3];
  sub_258532B4C();
  v9 = swift_task_alloc();
  v0[6] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_2584ED124;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000021, 0x8000000258541B70, sub_2584F0470, v9, v12);
}

uint64_t sub_2584ED124()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2584ED2A8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2584ED240;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2584ED240()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_2584ED2A8()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2584ED31C()
{
  v153 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v141 = &v126 - v4;
  v5 = sub_258532CFC();
  v139 = *(v5 - 8);
  v140 = v5;
  v6 = *(v139 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v138 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  v9 = *(*(v145 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v145, v10);
  v146 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v126 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v126 - v18;
  v20 = sub_258532AAC();
  v149 = *(v20 - 8);
  v21 = *(v149 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v143 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v142 = &v126 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v126 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v147 = &v126 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931390, &qword_25853CD30);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v126 - v37;
  v39 = sub_258532AEC();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v0;
  v45 = *(v0 + 16);
  if (!v45)
  {
    sub_2584F00E4();
    swift_allocError();
    *v48 = 10;
    result = swift_willThrow();
    goto LABEL_33;
  }

  v148 = v44;
  v144 = v20;

  sub_258532B6C();
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_258465168(v38, &unk_27F931390, &qword_25853CD30);
    sub_2584F00E4();
    swift_allocError();
    *v46 = 3;
    swift_willThrow();

    goto LABEL_33;
  }

  v49 = v148;
  (*(v40 + 32))(v148, v38, v39);
  if (!*(v150 + 32))
  {
    sub_2584F00E4();
    swift_allocError();
    *v60 = 6;
    swift_willThrow();

    result = (*(v40 + 8))(v49, v39);
    goto LABEL_33;
  }

  v136 = v40;
  v137 = v39;
  v50 = *(v150 + 24);

  v51 = v147;
  sub_258532ABC();
  v52 = v149;
  v53 = v144;
  (*(v149 + 16))(v31, v51, v144);
  v54 = *(v52 + 88);
  v133 = v52 + 88;
  v132 = v54;
  LODWORD(v50) = v54(v31, v53);
  v55 = *MEMORY[0x277CD8AD8];
  v56 = (v52 + 8);
  v57 = *(v52 + 8);
  v135 = v56;
  v57(v31, v53);
  if (v50 == v55)
  {
    v135 = v57;
    v58 = sub_258532ADC();
    *&address.sa_len = 528;
    *address.sa_data = bswap32(v58) >> 16;
    *&address.sa_data[2] = 0;
    *&address.sa_data[10] = 0;
    v59 = nw_endpoint_create_address(&address);
    goto LABEL_11;
  }

  sub_258532B5C();
  v59 = nw_listener_copy_local_endpoint();
  swift_unknownObjectRelease();
  v61 = v137;
  if (v59)
  {
    v135 = v57;
LABEL_11:
    swift_unknownObjectRetain();
    v62 = v150;
    sub_258532B1C();
    v63 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint;
    swift_beginAccess();
    sub_2584AC5D0(v19, v62 + v63, &unk_27F931440, &qword_2585380E0);
    swift_endAccess();
    v134 = v63;
    sub_2584AC3B8(v62 + v63, v16, &unk_27F931440, &qword_2585380E0);
    v64 = sub_258532B0C();
    v65 = *(v64 - 8);
    v66 = *(v65 + 48);
    v131 = v64;
    v130 = v65 + 48;
    v129 = v66;
    v67 = (v66)(v16, 1);
    sub_258465168(v16, &unk_27F931440, &qword_2585380E0);
    if (v67 == 1)
    {
      sub_2584F00E4();
      swift_allocError();
      *v68 = 4;
      swift_willThrow();

      swift_unknownObjectRelease();
      v135(v51, v144);
    }

    else
    {
      v128 = v59;
      if (qword_27F92F8D8 != -1)
      {
        swift_once();
      }

      v69 = sub_258532A4C();
      __swift_project_value_buffer(v69, qword_27F93CFD8);
      v70 = v150;

      v71 = sub_258532A2C();
      v72 = sub_2585338EC();

      v73 = v65;
      if (os_log_type_enabled(v71, v72))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v151 = v70;
        *&address.sa_len = v75;
        v127 = v65;
        v76 = v75;
        *v74 = 136315395;
        type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
        sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
        v77 = v72;
        v78 = sub_258533DFC();
        v80 = sub_2584713B0(v78, v79, &address);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2081;
        sub_2584AC3B8(v150 + v134, v19, &unk_27F931440, &qword_2585380E0);
        v81 = sub_25853347C();
        v83 = sub_2584713B0(v81, v82, &address);
        v70 = v150;

        *(v74 + 14) = v83;
        _os_log_impl(&dword_25845E000, v71, v77, "%s localEndpoint=%{private}s", v74, 0x16u);
        swift_arrayDestroy();
        v84 = v76;
        v73 = v127;
        MEMORY[0x259C82900](v84, -1, -1);
        MEMORY[0x259C82900](v74, -1, -1);
      }

      v85 = v144;
      v86 = v149;
      v87 = v135;
      if (*(v70 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) == 1)
      {
        v88 = v70 + v134;
        v89 = v146;
        sub_2584AC3B8(v88, v146, &unk_27F931440, &qword_2585380E0);
        v90 = v131;
        if (v129(v89, 1, v131) == 1)
        {
          sub_258465168(v89, &unk_27F931440, &qword_2585380E0);
        }

        else if ((*(v73 + 88))(v89, v90) == *MEMORY[0x277CD8B08])
        {
          v135 = v87;
          (*(v73 + 96))(v89, v90);
          v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9313A0, &unk_25853D090) + 48);
          v112 = *(v86 + 32);
          v113 = v142;
          v112(v142, v89, v85);
          v114 = *(v136 + 8);
          v114(v89 + v111, v137);
          v115 = v143;
          v112(v143, v113, v85);
          if (v132(v115, v85) == *MEMORY[0x277CD8AE0])
          {

            swift_unknownObjectRelease();
            v116 = v149;
            v135(v51, v85);
            v114(v148, v137);
            (*(v116 + 96))(v115, v85);
            v118 = v138;
            v117 = v139;
            v119 = *(v139 + 32);
            v120 = v140;
            v119(v138, v115, v140);
            v121 = v141;
            v119(v141, v118, v120);
            (*(v117 + 56))(v121, 0, 1, v120);
            v122 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address;
            v123 = v150;
            swift_beginAccess();
            sub_2584AC5D0(v121, v123 + v122, &unk_27F931350, qword_258538C60);
            result = swift_endAccess();
            goto LABEL_33;
          }

          v87 = v135;
          v135(v115, v85);
        }

        else
        {
          (*(v73 + 8))(v89, v90);
        }

        sub_2584F00E4();
        swift_allocError();
        *v124 = 4;
        swift_willThrow();
      }

      swift_unknownObjectRelease();
      v87(v51, v85);
    }

    result = (*(v136 + 8))(v148, v137);
    goto LABEL_33;
  }

  v91 = v150;
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v92 = sub_258532A4C();
  __swift_project_value_buffer(v92, qword_27F93CFD8);

  v93 = v91;
  v94 = sub_258532A2C();
  v95 = sub_2585338CC();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = v61;
    v98 = swift_slowAlloc();
    v151 = v93;
    *&address.sa_len = v98;
    *v96 = 136315395;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
    v99 = v57;
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
    v100 = sub_258533DFC();
    v102 = sub_2584713B0(v100, v101, &address);

    *(v96 + 4) = v102;
    *(v96 + 12) = 2081;
    v151 = v45;
    sub_258532BBC();

    v103 = sub_25853347C();
    v105 = sub_2584713B0(v103, v104, &address);

    *(v96 + 14) = v105;
    v57 = v99;
    _os_log_impl(&dword_25845E000, v94, v95, "%s No local endpoint. Listener=%{private}s", v96, 0x16u);
    swift_arrayDestroy();
    v106 = v98;
    v61 = v97;
    MEMORY[0x259C82900](v106, -1, -1);
    v107 = v96;
    v51 = v147;
    MEMORY[0x259C82900](v107, -1, -1);
  }

  v108 = v144;
  v109 = v136;
  sub_2584F00E4();
  swift_allocError();
  *v110 = 4;
  swift_willThrow();

  v57(v51, v108);
  result = (*(v109 + 8))(v148, v61);
LABEL_33:
  v125 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2584EE23C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a1;
  v201 = a2;
  v4 = sub_2585329BC();
  v208 = *(v4 - 8);
  v209 = v4;
  v5 = *(v208 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v204 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v206 = &v180 - v10;
  v11 = sub_25853346C();
  v202 = *(v11 - 8);
  v12 = *(v202 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v180 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v195 = (&v180 - v24);
  v197 = sub_258532CFC();
  v200 = *(v197 - 8);
  v25 = *(v200 + 64);
  v27 = MEMORY[0x28223BE20](v197, v26);
  v196 = &v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v198 = &v180 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v180 - v34;
  v36 = sub_258532B0C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v199 = (&v180 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x28223BE20](v40, v42);
  v203 = &v180 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v207 = &v180 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v48 = *(*(v47 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v47 - 8, v49);
  MEMORY[0x28223BE20](v50, v51);
  v54 = &v180 - v53;
  if (!*(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state))
  {
    v58 = 1;
LABEL_8:
    sub_2584F00E4();
    swift_allocError();
    *v59 = v58;
    return swift_willThrow();
  }

  if (*(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state) != 2)
  {
    v58 = 2;
    goto LABEL_8;
  }

  v191 = v52;
  v194 = v36;
  v193 = v37;
  v192 = v3;
  v55 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_connectionId;
  swift_beginAccess();
  v190 = v55;
  sub_2584AC3B8(v2 + v55, v54, &qword_27F931360, &unk_25853CD10);
  LODWORD(v55) = (*(v208 + 48))(v54, 1, v209);
  sub_258465168(v54, &qword_27F931360, &unk_25853CD10);
  if (v55 != 1)
  {
    sub_2584F00E4();
    swift_allocError();
    v57 = 7;
    goto LABEL_10;
  }

  if (*(&v2[1].isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID))
  {
    sub_2584F00E4();
    swift_allocError();
    v57 = 8;
LABEL_10:
    *v56 = v57;
    return swift_willThrow();
  }

  v61 = *(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID);
  v62 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v62, v35, &unk_27F931440, &qword_2585380E0);
  v63 = v193;
  v64 = v194;
  if ((*(v193 + 48))(v35, 1, v194) == 1)
  {
    sub_258465168(v35, &unk_27F931440, &qword_2585380E0);
    sub_2584F00E4();
    swift_allocError();
    v57 = 4;
    goto LABEL_10;
  }

  v189 = v61;
  v65 = v207;
  (*(v63 + 32))(v207, v35, v64);
  v66 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface;
  v67 = *(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface);
  if (v67 == 1)
  {
    v68 = v205;
    v69 = *(v205 + 4);
    if (v69 >> 60 == 15)
    {
      sub_2584F00E4();
      swift_allocError();
      v71 = 13;
LABEL_25:
      *v70 = v71;
      swift_willThrow();
      return (*(v63 + 8))(v65, v194);
    }

    v132 = *(v205 + 3);
    sub_2584A7B8C(v132, *(v205 + 4));
    v133 = sub_25852F870(v132, v69);
    if ((v133 & 0x1000000000000) != 0)
    {
      sub_2584F00E4();
      swift_allocError();
      *v141 = 14;
      swift_willThrow();
      v140 = v132;
      goto LABEL_32;
    }

    v186 = v132;
    v134 = *(v68 + 2);
    if (v134 >> 60 == 15)
    {
LABEL_30:
      sub_2584F00E4();
      swift_allocError();
      *v139 = 12;
      swift_willThrow();
      v140 = v186;
LABEL_32:
      sub_2584AE960(v140, v69);
      return (*(v63 + 8))(v65, v194);
    }

    v185 = v69;
    v202 = v133;
    v135 = *(v68 + 1);
    v136 = sub_258532D8C();
    (*(*(v136 - 8) + 56))(v20, 1, 1, v136);
    sub_2584ABAF4(v135, v134);
    sub_2584A7B8C(v135, v134);
    v137 = v195;
    sub_258532D0C();
    v138 = v197;
    if ((*(v200 + 48))(v137, 1, v197) == 1)
    {
      sub_2584AE960(v135, v134);
      sub_258465168(v137, &unk_27F931350, qword_258538C60);
      v69 = v185;
      goto LABEL_30;
    }

    v183 = v135;
    v184 = v134;
    v187 = v66;
    v147 = v200;
    v148 = v198;
    (*(v200 + 32))(v198, v137, v138);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v149 = sub_258532A4C();
    __swift_project_value_buffer(v149, qword_27F93CFD8);
    (*(v147 + 16))(v196, v148, v138);

    v150 = v2;
    v78 = v2;
    v151 = v138;
    v152 = sub_258532A2C();
    v153 = sub_2585338EC();

    v182 = v153;
    v195 = v152;
    v154 = os_log_type_enabled(v152, v153);
    v155 = v147;
    v73 = v206;
    if (v154)
    {
      v156 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v210[0] = v181;
      *v156 = 136315651;
      v211 = v150;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
      v157 = v151;
      v158 = sub_258533DFC();
      v160 = sub_2584713B0(v158, v159, v210);

      *(v156 + 4) = v160;
      *(v156 + 12) = 2081;
      v161 = v196;
      v78 = v150;
      v162 = sub_258532CCC();
      v164 = v163;
      v196 = *(v155 + 8);
      (v196)(v161, v157);
      v165 = sub_2584713B0(v162, v164, v210);

      *(v156 + 14) = v165;
      *(v156 + 22) = 2081;
      v166 = sub_25852F78C(v202 & 0xFFFFFFFFFFFFLL);
      v168 = sub_2584713B0(v166, v167, v210);

      *(v156 + 24) = v168;
      v65 = v207;
      v169 = v195;
      _os_log_impl(&dword_25845E000, v195, v182, "%s remoteIPv6Address=%{private}s, remoteMacAddress=%{private}s", v156, 0x20u);
      v170 = v181;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v170, -1, -1);
      v171 = v156;
      v63 = v193;
      MEMORY[0x259C82900](v171, -1, -1);

      v172 = v192;
      v173 = v157;
    }

    else
    {

      v174 = v196;
      v196 = *(v155 + 8);
      (v196)(v174, v151);
      v173 = v151;
      v172 = v192;
    }

    v175 = *v205;
    v176 = v198;
    v177 = sub_2584F02A0();
    if (v172)
    {
      sub_2584AE960(v183, v184);
      sub_2584AE960(v186, v185);
      (v196)(v176, v173);
      return (*(v63 + 8))(v65, v194);
    }

    v178 = v177;
    v192 = 0;
    (v196)(v176, v173);
    sub_2584AE960(v186, v185);
    sub_2584AE960(v183, v184);
    host_with_numeric_port = v178;
  }

  else
  {
    v187 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface;
    isa = v2[4].isa;
    v73 = v206;
    if (!isa)
    {
      goto LABEL_24;
    }

    v74 = v2;
    v210[0] = v2[3].isa;
    v210[1] = isa;

    sub_25853345C();
    sub_2584B55D8();
    v75 = sub_258533A4C();
    (*(v202 + 8))(v15, v11);

    if (!v75)
    {
LABEL_24:
      sub_2584F00E4();
      swift_allocError();
      v71 = 6;
      goto LABEL_25;
    }

    v76 = *v205;
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();

    v202 = 0;
    v78 = v74;
  }

  v188 = v78;
  LODWORD(v205) = v67 ^ 1;
  swift_unknownObjectRetain();
  v79 = v65;
  v80 = sub_2584EF54C();
  swift_unknownObjectRetain();
  v200 = v80;
  sub_258532EEC();
  v81 = v188;
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v83 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator;
  v84 = *(&v81->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator);
  *(&v81->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator) = evaluator_for_endpoint;
  swift_unknownObjectRelease();
  v85 = swift_slowAlloc();
  v86 = *(&v81->isa + v83);
  nw_path_evaluator_get_client_id();
  v87 = v85[7];
  v88 = v85[6];
  v89 = v85[5];
  v90 = v85[4];
  v91 = v85[3];
  v92 = v85[2];
  v93 = v85[1];
  v94 = *v85;
  v179 = *(v85 + 1);
  sub_25853298C();
  MEMORY[0x259C82900](v85, -1, -1);
  v95 = v208;
  v96 = v209;
  v97 = *(v208 + 16);
  v98 = v191;
  v97(v191, v73, v209);
  (*(v95 + 56))(v98, 0, 1, v96);
  v99 = v190;
  swift_beginAccess();
  sub_2584AC5D0(v98, v81 + v99, &qword_27F931360, &unk_25853CD10);
  swift_endAccess();
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v100 = sub_258532A4C();
  __swift_project_value_buffer(v100, qword_27F93CFD8);
  v101 = v79;
  v102 = v194;
  v198 = *(v193 + 16);
  (v198)(v203, v101, v194);
  v97(v204, v73, v96);

  swift_unknownObjectRetain();
  v103 = sub_258532A2C();
  v104 = v188;
  v105 = v103;
  v106 = sub_2585338EC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v195 = host_with_numeric_port;
    v108 = v107;
    v197 = swift_slowAlloc();
    v210[0] = v197;
    *v108 = 136315907;
    v211 = v104;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
    v109 = v102;
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
    LODWORD(v196) = v106;
    v110 = sub_258533DFC();
    v112 = sub_2584713B0(v110, v111, v210);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2081;
    v113 = v203;
    (v198)(v199, v203, v109);
    v114 = sub_25853347C();
    v116 = v115;
    v199 = *(v193 + 8);
    v199(v113, v109);
    v117 = sub_2584713B0(v114, v116, v210);

    *(v108 + 14) = v117;
    *(v108 + 22) = 2081;
    v211 = host_with_numeric_port;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931380, &qword_25853CD20);
    v118 = sub_25853347C();
    v120 = sub_2584713B0(v118, v119, v210);

    *(v108 + 24) = v120;
    *(v108 + 32) = 2080;
    sub_2584F0608(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v121 = v204;
    v122 = v209;
    v123 = sub_258533DFC();
    v104 = v188;
    v124 = v123;
    v126 = v125;
    v127 = v208;
    (*(v208 + 8))(v121, v122);
    v128 = sub_2584713B0(v124, v126, v210);

    *(v108 + 34) = v128;
    _os_log_impl(&dword_25845E000, v105, v196, "%s Created path evaluator localEndpoint:%{private}s, remoteEndpoint:%{private}s, connectionID:%s", v108, 0x2Au);
    v129 = v197;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v129, -1, -1);
    MEMORY[0x259C82900](v108, -1, -1);

    swift_unknownObjectRelease();

    v199(v207, v194);
    v130 = v201;
    v131 = v209;
  }

  else
  {

    swift_unknownObjectRelease_n();

    v127 = v208;
    (*(v208 + 8))(v204, v96);
    v142 = *(v193 + 8);
    v142(v203, v102);
    v142(v207, v102);
    v130 = v201;
    v131 = v96;
  }

  v143 = v205;
  v144 = *(&v104->isa + v187);
  (*(v127 + 32))(v130, v206, v131);
  result = type metadata accessor for MediaConnectionPrerequisites();
  *(v130 + *(result + 20)) = v144;
  v145 = v130 + *(result + 24);
  v146 = v202;
  *(v145 + 4) = WORD2(v202);
  *v145 = v146;
  *(v145 + 6) = v143;
  return result;
}

uint64_t sub_2584EF54C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &aBlock - v4;
  v6 = sub_258532D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = nullsub_1;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2584EF870;
  v21 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  v22 = nullsub_1;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2584EF870;
  v21 = &block_descriptor_43;
  v13 = _Block_copy(&aBlock);
  secure_udp = nw_parameters_create_secure_udp(v12, v13);
  _Block_release(v13);
  _Block_release(v12);
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) == 1)
  {
    sub_258532D9C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_258465168(v5, &qword_27F930620, &unk_25853E7D0);
    }

    else
    {
      (*(v7 + 32))(v11, v5, v6);
      v15 = sub_258532D4C();
      nw_parameters_require_interface(secure_udp, v15);
      swift_unknownObjectRelease();
      (*(v7 + 8))(v11, v6);
    }
  }

  swift_unknownObjectRetain();
  nw_parameters_set_disable_listener_datapath();
  nw_parameters_set_delegated_unique_pid();
  swift_unknownObjectRelease();
  nw_parameters_set_reuse_local_address(secure_udp, 1);
  nw_parameters_set_include_peer_to_peer(secure_udp, 1);
  v16 = sub_258532A8C();
  nw_parameters_set_local_endpoint(secure_udp, v16);
  swift_unknownObjectRelease();
  sub_258532EFC();
  return sub_258532F0C();
}

uint64_t sub_2584EF870(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2584EF8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - v10;
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v11, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  (*(v7 + 32))(v14 + v13, v11, v6);

  sub_258532B3C();

  v15 = *(a3 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerQueue);
  return sub_258532B8C();
}

void sub_2584EFA6C(uint64_t a1)
{
  v2 = sub_25853322C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258532B7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v9 + 16))(v13, a1, v8);
    v16 = (*(v9 + 88))(v13, v8);
    if (v16 == *MEMORY[0x277CD8B40])
    {
      (*(v9 + 8))(v13, v8);
    }

    else
    {
      if (v16 == *MEMORY[0x277CD8B38])
      {
        (*(v9 + 96))(v13, v8);
        (*(v3 + 32))(v7, v13, v2);
        v19 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted;
        if (*(v15 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted))
        {
          (*(v3 + 8))(v7, v2);
        }

        else
        {
          sub_2584F0608(&qword_27F9313B0, MEMORY[0x277CD8FC0]);
          v23 = swift_allocError();
          (*(v3 + 16))(v24, v7, v2);
          v34 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
          sub_25853363C();
          (*(v3 + 8))(v7, v2);
          *(v15 + v19) = 1;
        }

        goto LABEL_15;
      }

      if (v16 != *MEMORY[0x277CD8B28])
      {
        if (v16 != *MEMORY[0x277CD8B48])
        {

          (*(v9 + 8))(v13, v8);
          return;
        }

        v20 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted;
        if ((*(v15 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted) & 1) == 0)
        {
          sub_2584F00E4();
          v21 = swift_allocError();
          *v22 = 9;
          v34 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
          sub_25853363C();
          *(v15 + v20) = 1;
        }

        goto LABEL_15;
      }
    }

    v17 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted;
    if (*(v15 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted))
    {
LABEL_15:

      return;
    }

    sub_258532B5C();
    v18 = nw_listener_copy_local_endpoint();
    swift_unknownObjectRelease();
    if (v18)
    {
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
      sub_25853364C();
      *(v15 + v17) = 1;
      goto LABEL_15;
    }

    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CFD8);

    v26 = sub_258532A2C();
    v27 = sub_2585338CC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[1] = v15;
      v34 = v29;
      *v28 = 136315138;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
      v30 = sub_258533DFC();
      v32 = sub_2584713B0(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_25845E000, v26, v27, "%s No local endpoint", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x259C82900](v29, -1, -1);
      MEMORY[0x259C82900](v28, -1, -1);
    }
  }
}

uint64_t sub_2584EFFF4()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541B00);
  type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  sub_2584F0608(&unk_27F931340, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

unint64_t sub_2584F00E4()
{
  result = qword_27F931368;
  if (!qword_27F931368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931368);
  }

  return result;
}

uint64_t sub_2584F0138(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}