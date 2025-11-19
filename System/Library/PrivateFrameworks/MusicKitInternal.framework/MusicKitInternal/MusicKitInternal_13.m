void sub_1D4F6F3DC()
{
  sub_1D4F6F5F8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D4F6F648();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D4F6F5F8()
{
  if (!qword_1EDD54420)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54420);
    }
  }
}

void sub_1D4F6F648()
{
  if (!qword_1EDD543C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC748, &qword_1D56219E0);
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD543C0);
    }
  }
}

uint64_t sub_1D4F6F6AC()
{
  OUTLINED_FUNCTION_25_14();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D4F6E610(v6, v7, v8, v3, v2);
}

uint64_t objectdestroy_24Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D4F6F79C()
{
  OUTLINED_FUNCTION_25_14();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D4F6EC54(v6, v7, v8, v3, v2);
}

uint64_t sub_1D4F6F854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F6F89C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D4F6C81C(v5, v6, v7, v2);
}

uint64_t sub_1D4F6F934()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D4F6CFA8(v5, v6, v7, v2);
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return swift_dynamicCast();
}

id sub_1D4F6F9F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D4F6FA4C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D4F6FAA8()
{
  type metadata accessor for MusicKitInternal_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDD76788 = result;
  return result;
}

uint64_t MusicPin.Item.id.getter()
{
  MusicPin.Item.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_45_0();
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t MusicPin.Item.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicPin.Item();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D4F6FD08(v2, v9 - v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = sub_1D5613EF8();
      v12 = MEMORY[0x1E6976EF8];
      break;
    case 2u:
      v11 = sub_1D560EEA8();
      v12 = MEMORY[0x1E69754B0];
      break;
    case 3u:
      v11 = sub_1D5614898();
      v12 = MEMORY[0x1E69773A0];
      break;
    case 4u:
      v11 = sub_1D5613838();
      v12 = MEMORY[0x1E6976BB0];
      break;
    default:
      v11 = sub_1D5613AF8();
      v12 = MEMORY[0x1E6976CF0];
      break;
  }

  a1[3] = v11;
  a1[4] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (*(*(v11 - 8) + 32))(boxed_opaque_existential_0, v10, v11);
}

uint64_t type metadata accessor for MusicPin.Item()
{
  result = qword_1EDD59468;
  if (!qword_1EDD59468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F6FD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MusicPin.Item.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D5613838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v56 = v4;
  v57 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v55 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_4(v8);
  v53 = v10;
  v54 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D560EEA8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v52 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v21 = sub_1D5613EF8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v51 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v26 = sub_1D5613AF8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v32 = type metadata accessor for MusicPin.Item();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  sub_1D4F6FD08(v0, v37 - v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v45 = OUTLINED_FUNCTION_16_20();
      v46(v45);
      sub_1D5613E18();
      v47 = *(v51 + 8);
      v48 = OUTLINED_FUNCTION_161();
      v50(v48, v49);
      break;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v43(v1, v38, v16);
      sub_1D560EDC8();
      (*(v52 + 8))(v1, v16);
      break;
    case 3u:
      OUTLINED_FUNCTION_81();
      v44(v15, v38, v54);
      sub_1D5614598();
      (*(v53 + 8))(v15, v54);
      break;
    case 4u:
      v0 = v55;
      v29 = v56;
      OUTLINED_FUNCTION_81();
      v41 = OUTLINED_FUNCTION_222();
      v26 = v57;
      v42(v41);
      sub_1D56136D8();
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_81();
      v39 = OUTLINED_FUNCTION_222();
      v40(v39);
      sub_1D5613968();
LABEL_4:
      (*(v29 + 8))(v0, v26);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.artwork.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D5613838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v56 = v5;
  v57 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v55 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v55);
  v53 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v15 = sub_1D560EEA8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v51 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v54 = sub_1D5613EF8();
  v20 = OUTLINED_FUNCTION_4(v54);
  v52 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v24 = sub_1D5613AF8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v30 = type metadata accessor for MusicPin.Item();
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_7(v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_18();
      v47(v2, v0, v54);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D0, &qword_1D562DEE0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      sub_1D560DE48();
      sub_1D5613EE8();
      (*(v52 + 8))(v2, v54);

      break;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v41 = OUTLINED_FUNCTION_16_20();
      v42(v41);
      sub_1D560EE78();
      v43 = *(v51 + 8);
      v44 = OUTLINED_FUNCTION_161();
      v45(v44);
      break;
    case 3u:
      OUTLINED_FUNCTION_81();
      v46(v1, v0, v55);
      sub_1D5614848();
      (*(v53 + 8))(v1, v55);
      break;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v40(v10, v0, v57);
      sub_1D56137F8();
      (*(v56 + 8))(v10, v57);
      break;
    default:
      OUTLINED_FUNCTION_11_18();
      v35 = OUTLINED_FUNCTION_222();
      v36(v35);
      sub_1D5613AE8();
      v37 = *(v27 + 8);
      v38 = OUTLINED_FUNCTION_159();
      v39(v38);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.playParameters.getter()
{
  OUTLINED_FUNCTION_47();
  v50 = v3;
  v4 = sub_1D5613838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v49 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v9 = sub_1D5614898();
  v10 = OUTLINED_FUNCTION_4(v9);
  v48 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D560EEA8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v47 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v22 = sub_1D5613AF8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v28 = type metadata accessor for MusicPin.Item();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  sub_1D4F6FD08(v0, v33 - v32);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = sub_1D56109F8();
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v46);
      sub_1D4F70890(v34);
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v43(v1, v34, v17);
      sub_1D560ED68();
      (*(v47 + 8))(v1, v17);
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_33_1();
      v44(v16, v34, v9);
      sub_1D5614518();
      v45 = *(v48 + 8);
      v37 = OUTLINED_FUNCTION_15_2();
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_33_1();
      v40 = OUTLINED_FUNCTION_159();
      v41(v40);
      sub_1D5613688();
      v42 = *(v49 + 8);
      v37 = OUTLINED_FUNCTION_159();
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_33_1();
      v35(v2, v34, v22);
      sub_1D5613918();
      v36 = *(v25 + 8);
      v37 = OUTLINED_FUNCTION_161();
LABEL_6:
      v39(v37, v38);
LABEL_7:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D4F70890(uint64_t a1)
{
  v2 = type metadata accessor for MusicPin.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MusicPin.Item.title.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D5613838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v53 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_4(v8);
  v51 = v10;
  v52 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D560EEA8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v20 = sub_1D5613EF8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v24 = sub_1D5613AF8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v28 = type metadata accessor for MusicPin.Item();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  sub_1D4F6FD08(v0, v33 - v32);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v50(v2, v34, v20);
      sub_1D5613ED8();
      OUTLINED_FUNCTION_44_10();
      v38 = OUTLINED_FUNCTION_176();
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v45(v1, v34, v16);
      sub_1D560EE68();
      OUTLINED_FUNCTION_44_10();
      v38 = v1;
      v39 = v16;
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_11_18();
      v46(v15, v34, v52);
      sub_1D56146D8();
      v47 = *(v51 + 8);
      v48 = OUTLINED_FUNCTION_93();
      v49(v48);
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v40 = OUTLINED_FUNCTION_159();
      v41(v40);
      sub_1D56137E8();
      v42 = *(v53 + 8);
      v43 = OUTLINED_FUNCTION_222();
      v44(v43);
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_33_1();
      v35 = OUTLINED_FUNCTION_159();
      v36(v35);
      sub_1D5613AB8();
      OUTLINED_FUNCTION_44_10();
      v38 = v0;
      v39 = v24;
LABEL_7:
      v37(v38, v39);
LABEL_8:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void static MusicPin.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v94 = v1;
  v95 = v2;
  v3 = sub_1D5613838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v92 = v5;
  v93 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v84 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5614898();
  v10 = OUTLINED_FUNCTION_4(v9);
  v90 = v11;
  v91 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v83 = v14;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D560EEA8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v88 = v17;
  v89 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v82 = v20;
  OUTLINED_FUNCTION_70_0();
  v21 = sub_1D5613EF8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v86 = v23;
  v87 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v81 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D5613AF8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v85 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v32 = type metadata accessor for MusicPin.Item();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  v38 = v36 - v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v80 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v80 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v80 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v80 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D8, &qword_1D5621AA0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v55 = &v80 - v54;
  v56 = *(v53 + 56);
  sub_1D4F6FD08(v94, &v80 - v54);
  sub_1D4F6FD08(v95, &v55[v56]);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F6FD08(v55, v48);
      if (OUTLINED_FUNCTION_54_8() != 1)
      {
        (*(v86 + 8))(v48, v87);
        goto LABEL_18;
      }

      v73 = v86;
      v72 = v87;
      OUTLINED_FUNCTION_11_18();
      v74(v81, &v55[v56], v72);
      sub_1D5613EA8();
      v75 = *(v73 + 8);
      v76 = OUTLINED_FUNCTION_93();
      v75(v76);
      (v75)(v48, v72);
      goto LABEL_13;
    case 2u:
      sub_1D4F6FD08(v55, v45);
      if (OUTLINED_FUNCTION_54_8() == 2)
      {
        v64 = v88;
        v63 = v89;
        (*(v88 + 32))(v82, &v55[v56], v89);
        OUTLINED_FUNCTION_15_2();
        sub_1D560EE28();
        v65 = *(v64 + 8);
        v66 = OUTLINED_FUNCTION_93();
        v65(v66);
        (v65)(v45, v63);
        goto LABEL_13;
      }

      (*(v88 + 8))(v45, v89);
      goto LABEL_18;
    case 3u:
      sub_1D4F6FD08(v55, v42);
      if (OUTLINED_FUNCTION_54_8() == 3)
      {
        v68 = v90;
        v67 = v91;
        OUTLINED_FUNCTION_11_18();
        v69(v83, &v55[v56], v67);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v70 = *(v68 + 8);
        v71 = OUTLINED_FUNCTION_93();
        v70(v71);
        (v70)(v42, v67);
        goto LABEL_13;
      }

      (*(v90 + 8))(v42, v91);
      goto LABEL_18;
    case 4u:
      sub_1D4F6FD08(v55, v38);
      if (OUTLINED_FUNCTION_54_8() == 4)
      {
        v57 = v92;
        OUTLINED_FUNCTION_11_18();
        v58 = &v55[v56];
        v59 = v84;
        v60 = v93;
        v61(v84, v58, v93);
        sub_1D56137A8();
        v62 = *(v57 + 8);
        v62(v59, v60);
        v62(v38, v60);
        goto LABEL_13;
      }

      (*(v92 + 8))(v38, v93);
      goto LABEL_18;
    default:
      sub_1D4F6FD08(v55, v50);
      if (OUTLINED_FUNCTION_54_8())
      {
        (*(v85 + 8))(v50, v27);
LABEL_18:
        sub_1D4E50004(v55, &qword_1EC7EC7D8, &qword_1D5621AA0);
      }

      else
      {
        v77 = v85;
        OUTLINED_FUNCTION_11_18();
        v78(v0, &v55[v56], v27);
        OUTLINED_FUNCTION_176();
        sub_1D5613A68();
        v79 = *(v77 + 8);
        v79(v0, v27);
        v79(v50, v27);
LABEL_13:
        sub_1D4F70890(v55);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

void MusicPin.Item.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v67 = v1;
  v4 = sub_1D5613838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v64 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v10);
  v62 = v12;
  v63 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = sub_1D560EEA8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v61 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v23 = sub_1D5613EF8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v60 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v28 = sub_1D5613AF8();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v34 = type metadata accessor for MusicPin.Item();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  sub_1D4F6FD08(v67, v39 - v38);
  OUTLINED_FUNCTION_222();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v53(v3, v40, v23);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_20_24();
      sub_1D4F73958(v54, v55);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      v56 = *(v60 + 8);
      v57 = OUTLINED_FUNCTION_161();
      v59(v57, v58);
      break;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v47(v2, v40, v18);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_22_18();
      sub_1D4F73958(v48, v49);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v61 + 8))(v2, v18);
      break;
    case 3u:
      OUTLINED_FUNCTION_33_1();
      v50(v17, v40, v63);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_21_19();
      sub_1D4F73958(v51, v52);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v62 + 8))(v17, v63);
      break;
    case 4u:
      OUTLINED_FUNCTION_33_1();
      v44(v64, v40, v66);
      MEMORY[0x1DA6EC0D0](4);
      OUTLINED_FUNCTION_23_18();
      sub_1D4F73958(v45, v46);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v65 + 8))(v64, v66);
      break;
    default:
      OUTLINED_FUNCTION_81();
      v41(v0, v40, v28);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_25_24();
      sub_1D4F73958(v42, v43);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v31 + 8))(v0, v28);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicPin.Item.hashValue.getter()
{
  sub_1D56162D8();
  MusicPin.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F717C4()
{
  sub_1D56162D8();
  MusicPin.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F71800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4F73958(&qword_1EC7EC830, type metadata accessor for MusicPin.Item);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t MusicPin.Item.init(from:)(uint64_t *a1)
{
  type metadata accessor for MusicPin.Item();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_18_22();
  sub_1D4F73958(v3, v4);
  OUTLINED_FUNCTION_17_18();
  sub_1D4F73958(v5, v1);
  OUTLINED_FUNCTION_28_16(&qword_1EC7EC800);
  sub_1D560CA18();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPin.Item.encode(to:)()
{
  type metadata accessor for MusicPin.Item();
  OUTLINED_FUNCTION_18_22();
  sub_1D4F73958(v1, v2);
  OUTLINED_FUNCTION_17_18();
  sub_1D4F73958(v3, v0);
  OUTLINED_FUNCTION_28_16(&qword_1EC7EC800);
  return sub_1D560CA28();
}

uint64_t sub_1D4F71AE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7EC788 = v4;
  return result;
}

uint64_t sub_1D4F71C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  v6(v5 + v2, *MEMORY[0x1E6975218], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6975200], v0);
  qword_1EC7EC790 = v4;
  return result;
}

void MusicPin.Item.init(propertyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v171 = v25;
  v149 = sub_1D5613838();
  v26 = OUTLINED_FUNCTION_4(v149);
  v148[2] = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v148[1] = v30;
  OUTLINED_FUNCTION_70_0();
  v155 = sub_1D5614898();
  v31 = OUTLINED_FUNCTION_4(v155);
  v154 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v153 = v35;
  OUTLINED_FUNCTION_70_0();
  v152 = sub_1D560EEA8();
  v36 = OUTLINED_FUNCTION_4(v152);
  v151 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v150 = v40;
  OUTLINED_FUNCTION_70_0();
  v41 = sub_1D5613EF8();
  v42 = OUTLINED_FUNCTION_4(v41);
  v157 = v43;
  v158 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v156 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1D5613AF8();
  v48 = OUTLINED_FUNCTION_4(v47);
  v167 = v49;
  v168 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v166 = v52;
  OUTLINED_FUNCTION_70_0();
  v53 = sub_1D5610088();
  v54 = OUTLINED_FUNCTION_4(v53);
  v164 = v55;
  v165 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_59_0();
  v163 = v58 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v162 = v148 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  OUTLINED_FUNCTION_31_6();
  v64 = sub_1D560D838();
  v65 = OUTLINED_FUNCTION_4(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v70 = sub_1D560D9A8();
  v71 = OUTLINED_FUNCTION_4(v70);
  v161 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_59_0();
  v159 = v75 - v76;
  v78 = MEMORY[0x1EEE9AC00](v77);
  v160 = (v148 - v79);
  MEMORY[0x1EEE9AC00](v78);
  v81 = v148 - v80;
  v170 = type metadata accessor for MusicPin.Item();
  v82 = OUTLINED_FUNCTION_14(v170);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  v169 = v85;
  v86 = v24[3];
  v87 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v86);
  v88 = v70;
  sub_1D5610CD8();
  sub_1D560D5E8();
  v89 = *(v67 + 8);
  v90 = OUTLINED_FUNCTION_16_20();
  v91(v90);
  if (__swift_getEnumTagSinglePayload(v20, 1, v70) == 1)
  {
    sub_1D4E50004(v20, &qword_1EC7F6DF0, &qword_1D561D1E0);
    v92 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    OUTLINED_FUNCTION_45_0();
    sub_1D5610CF8();
    v93 = v163;
    sub_1D560FFB8();
    OUTLINED_FUNCTION_24_19();
    sub_1D4F73958(v94, v95);
    OUTLINED_FUNCTION_16_20();
    v96 = v165;
    v97 = sub_1D5614D18();
    v86 = *(v164 + 8);
    (v86)(v93, v96);
    if (v97)
    {
      v99 = OUTLINED_FUNCTION_220();
      v86(v99);
      OUTLINED_FUNCTION_55_8();
      sub_1D5613978();
    }

    else
    {
      sub_1D560FEA8();
      OUTLINED_FUNCTION_5_20();
      v98 = OUTLINED_FUNCTION_8_26();
      v86(v98);
      sub_1D5610038();
      OUTLINED_FUNCTION_5_20();
      v118 = OUTLINED_FUNCTION_8_26();
      v86(v118);
      if (v97)
      {
        v120 = OUTLINED_FUNCTION_220();
        v86(v120);
        OUTLINED_FUNCTION_55_8();
        OUTLINED_FUNCTION_38_15(&a16);
        sub_1D56145A8();
      }

      else
      {
        sub_1D560FF58();
        OUTLINED_FUNCTION_5_20();
        v119 = OUTLINED_FUNCTION_8_26();
        v86(v119);
        sub_1D560FFA8();
        OUTLINED_FUNCTION_5_20();
        v129 = OUTLINED_FUNCTION_8_26();
        v86(v129);
        if (v97)
        {
          v131 = OUTLINED_FUNCTION_220();
          v86(v131);
          OUTLINED_FUNCTION_55_8();
          OUTLINED_FUNCTION_38_15(&a10);
          sub_1D56136E8();
        }

        else
        {
          sub_1D560FE48();
          OUTLINED_FUNCTION_5_20();
          v130 = OUTLINED_FUNCTION_8_26();
          v86(v130);
          sub_1D560FE38();
          OUTLINED_FUNCTION_5_20();
          v135 = OUTLINED_FUNCTION_8_26();
          v86(v135);
          if (v97)
          {
            v137 = OUTLINED_FUNCTION_220();
            v86(v137);
            OUTLINED_FUNCTION_55_8();
            OUTLINED_FUNCTION_38_15(&a13);
            sub_1D560EDD8();
          }

          else
          {
            sub_1D560FDF8();
            OUTLINED_FUNCTION_5_20();
            v136 = OUTLINED_FUNCTION_8_26();
            v86(v136);
            sub_1D560FFD8();
            OUTLINED_FUNCTION_5_20();
            v138 = OUTLINED_FUNCTION_8_26();
            v86(v138);
            if ((v97 & 1) == 0)
            {
              sub_1D560FEE8();
              OUTLINED_FUNCTION_5_20();
              v139 = OUTLINED_FUNCTION_8_26();
              v86(v139);
              while (1)
              {
                v172 = 0;
                v173 = 0xE000000000000000;
                sub_1D5615B68();
                MEMORY[0x1DA6EAC70](0xD00000000000004FLL, 0x80000001D56803A0);
                v144 = v87[4];
                __swift_project_boxed_opaque_existential_1(v87, v87[3]);
                OUTLINED_FUNCTION_45_0();
                sub_1D5610CF8();
                OUTLINED_FUNCTION_24_19();
                sub_1D4F73958(v145, v146);
                v147 = sub_1D56160F8();
                MEMORY[0x1DA6EAC70](v147);

                (v86)(v93, v96);
                MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_29:
                sub_1D5615E08();
                __break(1u);
              }
            }

            v140 = OUTLINED_FUNCTION_220();
            v86(v140);
            OUTLINED_FUNCTION_55_8();
            sub_1D5613E28();
          }
        }
      }
    }
  }

  else
  {
    v96 = v24;
    v100 = v161;
    OUTLINED_FUNCTION_81();
    v101(v81, v20, v88);
    v102 = *(v100 + 16);
    v87 = v160;
    v103 = OUTLINED_FUNCTION_15_2();
    v104(v103);
    v93 = v159;
    sub_1D560D908();
    OUTLINED_FUNCTION_19_16();
    v97 = sub_1D4F73958(v105, v106);
    v107 = OUTLINED_FUNCTION_12_25();
    v108 = *(v100 + 8);
    v109 = OUTLINED_FUNCTION_161();
    v108(v109);
    if (v107)
    {
      v110 = OUTLINED_FUNCTION_159_0();
      v108(v110);
      OUTLINED_FUNCTION_34_14();
      sub_1D5613978();
      v111 = OUTLINED_FUNCTION_47_12();
      v108(v111);
    }

    else
    {
      sub_1D560D938();
      v114 = OUTLINED_FUNCTION_12_25();
      v115 = OUTLINED_FUNCTION_161();
      v108(v115);
      if (v114)
      {
        v116 = OUTLINED_FUNCTION_159_0();
        v108(v116);
        OUTLINED_FUNCTION_34_14();
        sub_1D5613E28();
        v117 = OUTLINED_FUNCTION_47_12();
        v108(v117);
      }

      else
      {
        sub_1D560D878();
        v121 = OUTLINED_FUNCTION_12_25();
        v122 = OUTLINED_FUNCTION_161();
        v108(v122);
        if (v121)
        {
          v123 = OUTLINED_FUNCTION_159_0();
          v108(v123);
          OUTLINED_FUNCTION_34_14();
          OUTLINED_FUNCTION_38_15(&a13);
          sub_1D560EDD8();
          v124 = OUTLINED_FUNCTION_47_12();
          v108(v124);
        }

        else
        {
          sub_1D560D968();
          v125 = OUTLINED_FUNCTION_12_25();
          v126 = OUTLINED_FUNCTION_161();
          v108(v126);
          if (v125)
          {
            v127 = OUTLINED_FUNCTION_159_0();
            v108(v127);
            OUTLINED_FUNCTION_34_14();
            OUTLINED_FUNCTION_38_15(&a16);
            sub_1D56145A8();
            v128 = OUTLINED_FUNCTION_47_12();
            v108(v128);
          }

          else
          {
            sub_1D560D8E8();
            v97 = OUTLINED_FUNCTION_12_25();
            v132 = OUTLINED_FUNCTION_161();
            v108(v132);
            if ((v97 & 1) == 0)
            {
              v172 = 0;
              v173 = 0xE000000000000000;
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD000000000000060, 0x80000001D56803F0);
              OUTLINED_FUNCTION_19_16();
              sub_1D4F73958(v141, v142);
              v143 = sub_1D56160F8();
              MEMORY[0x1DA6EAC70](v143);

              MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
              goto LABEL_29;
            }

            v133 = OUTLINED_FUNCTION_159_0();
            v108(v133);
            OUTLINED_FUNCTION_34_14();
            OUTLINED_FUNCTION_38_15(&a10);
            sub_1D56136E8();
            v134 = OUTLINED_FUNCTION_47_12();
            v108(v134);
          }
        }
      }
    }
  }

  v112 = OUTLINED_FUNCTION_9_23();
  v113(v112);
  swift_storeEnumTagMultiPayload();
  sub_1D4F7296C(v97, v171);
  __swift_destroy_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F7296C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void MusicPin.Item.description.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D5613838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v63 = v6;
  v64 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v62 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v10);
  v60 = v12;
  v61 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v58 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D560EEA8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v59 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v21 = sub_1D5613AF8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v27 = sub_1D5613EF8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v33 = type metadata accessor for MusicPin.Item();
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_7(v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v54(v0, v1, v27);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_20_24();
      sub_1D4F73958(v55, v56);
      v57 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v57);

      OUTLINED_FUNCTION_56_2();
      (*(v30 + 8))(v0, v27);
      break;
    case 2u:
      OUTLINED_FUNCTION_81();
      v47(v2, v1, v16);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_22_18();
      sub_1D4F73958(v48, v49);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v43 = *(v59 + 8);
      v41 = v2;
      v42 = v16;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_11_18();
      v50 = OUTLINED_FUNCTION_93();
      v51(v50);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_21_19();
      sub_1D4F73958(v52, v53);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      (*(v60 + 8))(v58, v61);
      break;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v44(v62, v1, v64);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_23_18();
      sub_1D4F73958(v45, v46);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      (*(v63 + 8))(v62, v64);
      break;
    default:
      (*(v24 + 32))(v3, v1, v21);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_25_24();
      sub_1D4F73958(v38, v39);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v40 = *(v24 + 8);
      v41 = OUTLINED_FUNCTION_176();
LABEL_5:
      v43(v41, v42);
      break;
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D5613838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v71 = v6;
  v72 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v70 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v10);
  v68 = v12;
  v69 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v65 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D560EEA8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v66 = v18;
  v67 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v21 = sub_1D5613EF8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v27 = sub_1D5613AF8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v33 = type metadata accessor for MusicPin.Item();
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  sub_1D4F6FD08(v1, v38 - v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v58(v3, v39, v21);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v59 = sub_1D5613DF8();
      OUTLINED_FUNCTION_7_4(v59, v60);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      v61 = *(v24 + 8);
      v62 = OUTLINED_FUNCTION_176();
      v64(v62, v63);
      break;
    case 2u:
      OUTLINED_FUNCTION_40_3();
      v50(v2, v39, v67);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v51 = sub_1D560EDB8();
      OUTLINED_FUNCTION_7_4(v51, v52);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      (*(v66 + 8))(v2, v67);
      break;
    case 3u:
      (*(v68 + 32))(v65, v39, v69);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v53 = sub_1D5614588();
      OUTLINED_FUNCTION_7_4(v53, v54);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      v55 = *(v68 + 8);
      v56 = OUTLINED_FUNCTION_15_2();
      v57(v56);
      break;
    case 4u:
      OUTLINED_FUNCTION_11_18();
      v47(v70, v39, v72);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v48 = sub_1D56136C8();
      OUTLINED_FUNCTION_7_4(v48, v49);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      (*(v71 + 8))(v70, v72);
      break;
    default:
      OUTLINED_FUNCTION_11_18();
      v40 = OUTLINED_FUNCTION_24();
      v41(v40);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v42 = sub_1D5613958();
      OUTLINED_FUNCTION_7_4(v42, v43);
      v44 = OUTLINED_FUNCTION_4_2();
      v46 = v45;

      MEMORY[0x1DA6EAC70](v44, v46);

      OUTLINED_FUNCTION_53();
      (*(v30 + 8))(v0, v27);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F73510()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC798);
  __swift_project_value_buffer(v0, qword_1EC7EC798);
  type metadata accessor for MusicPin.Item();
  sub_1D4F73958(&qword_1EC7EC830, type metadata accessor for MusicPin.Item);
  return sub_1D560D978();
}

uint64_t sub_1D4F735F0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC7B0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EC7B0);
  if (qword_1EC7E8A18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7EC798);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4F736DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = *(sub_1D560D9A8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561D750;
  sub_1D560D908();
  sub_1D560D938();
  sub_1D560D878();
  sub_1D560D968();
  result = sub_1D560D8E8();
  qword_1EC7EC7C8 = v3;
  return result;
}

uint64_t sub_1D4F737EC(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_1D4F73958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F739A4()
{
  result = sub_1D5613AF8();
  if (v1 <= 0x3F)
  {
    result = sub_1D5613EF8();
    if (v2 <= 0x3F)
    {
      result = sub_1D560EEA8();
      if (v3 <= 0x3F)
      {
        result = sub_1D5614898();
        if (v4 <= 0x3F)
        {
          result = sub_1D5613838();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_16(unint64_t *a1)
{

  return sub_1D4F73958(a1, v1);
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return sub_1D4E628D4(v0, v1 - 128);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v7 = a3 + *(v6 + 24);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v8 = sub_1D5614898();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 32))(a3, a1);
  v10 = *(v6 + 20);
  v11 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 32);

  return v13(a3 + v10, a2);
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.JoinRequest()
{
  result = qword_1EC7EC880;
  if (!qword_1EC7EC880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.playlist.getter()
{
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4, v0);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.invitationURL.getter()
{
  v0 = *(type metadata accessor for MusicCollaborativePlaylist.JoinRequest() + 20);
  v1 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4);
}

uint64_t MusicCollaborativePlaylist.JoinRequest._configuration.getter()
{
  v0 = *(type metadata accessor for MusicCollaborativePlaylist.JoinRequest() + 24);
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4);
}

uint64_t MusicCollaborativePlaylist.JoinRequest._configuration.setter()
{
  OUTLINED_FUNCTION_64_1();
  v2 = *(type metadata accessor for MusicCollaborativePlaylist.JoinRequest() + 24);
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

double (*MusicCollaborativePlaylist.JoinRequest._configuration.modify())(void, void)
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicCollaborativePlaylist.JoinRequest() + 24);
  return nullsub_1;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = v1 + *(type metadata accessor for MusicCollaborativePlaylist.JoinRequest() + 24);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v13 = type metadata accessor for MusicRequestConfiguration();
  v14 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v11, v14 ^ 1u, 1, v13);
  sub_1D4F73F78(v11, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
    {
      sub_1D4E50004(v9, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v9, a1);
  }

  return sub_1D4E50004(v11, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D4F73F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F73FE8(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D4F78C24(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicCollaborativePlaylist.JoinRequest.configuration.setter();
}

uint64_t MusicCollaborativePlaylist.JoinRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_1_34();
  sub_1D4F78C80(v9, v10);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_9_24();
  sub_1D4E5840C();
  v11 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  return (*(v3 + 40))(v0 + *(v11 + 24), v8, v1);
}

void (*MusicCollaborativePlaylist.JoinRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicCollaborativePlaylist.JoinRequest.configuration.getter(v10);
  return sub_1D4F74290;
}

void sub_1D4F74290(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_1D4F78C24((*a1)[6], v3);
    OUTLINED_FUNCTION_1_34();
    sub_1D4F78C80(v10, v11);
    sub_1D560E6C8();
    sub_1D4E5840C();
    v12 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
    v13 = OUTLINED_FUNCTION_20_6(v12);
    v14(v13);
    OUTLINED_FUNCTION_16_2();
    sub_1D4E5840C();
  }

  else
  {
    OUTLINED_FUNCTION_1_34();
    sub_1D4F78C80(v15, v16);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_9_24();
    sub_1D4E5840C();
    v17 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
    v18 = OUTLINED_FUNCTION_20_6(v17);
    v19(v18);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.validate()(uint64_t a1)
{
  v2 = v1;
  v17 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC850, &qword_1D5621DA8);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v2[20] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC858, &qword_1D5621DB0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v10 = sub_1D560EB18();
  v2[23] = v10;
  OUTLINED_FUNCTION_69(v10);
  v2[24] = v11;
  v13 = *(v12 + 64);
  v2[25] = OUTLINED_FUNCTION_127();
  v14 = swift_task_alloc();
  v2[26] = v14;
  *v14 = v2;
  v14[1] = sub_1D4F74580;
  v15 = *MEMORY[0x1E69E9840];

  return sub_1D4F74E04(a1);
}

uint64_t sub_1D4F74580()
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  v2[27] = v0;

  if (v0)
  {
    v8 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v2[25];
    v14 = v2[21];
    v13 = v2[22];
    v15 = v2[20];

    OUTLINED_FUNCTION_55();
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }
}

uint64_t sub_1D4F7471C()
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 216);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_147();
  type metadata accessor for ICError();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 120);
    *(v0 + 128) = v3;
    sub_1D4F78C80(&qword_1EDD52A10, type metadata accessor for ICError);
    OUTLINED_FUNCTION_16_2();
    v4 = sub_1D560BE68();
    v5 = *MEMORY[0x1E69E42C0];
    v6 = sub_1D5614D68();
    sub_1D4E494C8(v6, v7, v4);

    if (*(v0 + 40))
    {
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 152);
        if (v8 == 409)
        {
          v9 = 7;
        }

        else
        {
          v9 = 10;
        }

        if (v8 == 400)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

LABEL_12:
        *(v0 + 136) = v3;
        OUTLINED_FUNCTION_16_2();
        v11 = sub_1D560BE68();
        v12 = *MEMORY[0x1E69E42C8];
        v13 = sub_1D5614D68();
        sub_1D4E494C8(v13, v14, v11);

        if (!*(v0 + 104))
        {
          sub_1D4E50004(v0 + 80, &qword_1EC7E9F98, &qword_1D561C420);
          goto LABEL_27;
        }

        v15 = (v0 + 48);
        sub_1D4E519A8((v0 + 80), (v0 + 48));
        v16 = objc_opt_self();
        __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
        v17 = sub_1D5616158();
        *(v0 + 144) = 0;
        v18 = [v16 dataWithJSONObject:v17 options:0 error:v0 + 144];
        swift_unknownObjectRelease();
        v19 = *(v0 + 144);
        if (!v18)
        {
          v25 = v19;
          sub_1D560BE98();

          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v15);
          goto LABEL_40;
        }

        v20 = *(v0 + 200);
        v21 = *(v0 + 184);
        sub_1D560C198();

        v22 = sub_1D560B9C8();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        sub_1D560B9B8();
        sub_1D4F78C80(&qword_1EC7EC868, MEMORY[0x1E6975408]);
        sub_1D560B948();
        v26 = *(v0 + 200);
        v27 = *(v0 + 176);
        v28 = sub_1D560EB08();
        sub_1D4EC9FC4(v28);

        v29 = sub_1D560EB68();
        v30 = OUTLINED_FUNCTION_24_20();
        v31 = *(v0 + 176);
        if (v30 == 1)
        {
          sub_1D4E50004(*(v0 + 176), &qword_1EC7EC858, &qword_1D5621DB0);
        }

        else
        {
          v32 = sub_1D560EB28();
          OUTLINED_FUNCTION_24_0(v29);
          (*(v33 + 8))(v31, v29);
          if (v32 == 40015)
          {
            v10 = 9;
          }
        }

        v34 = *(v0 + 200);
        v35 = *(v0 + 168);
        v36 = sub_1D560EB08();
        sub_1D4EC9FC4(v36);

        if (OUTLINED_FUNCTION_24_20() == 1)
        {
          v37 = OUTLINED_FUNCTION_26_13();
          v38 = *(v0 + 168);
          (*(v39 + 8))(v37);

          OUTLINED_FUNCTION_23_19();
          v40 = &qword_1EC7EC858;
          v41 = &qword_1D5621DB0;
        }

        else
        {
          v43 = *(v0 + 160);
          v42 = *(v0 + 168);
          sub_1D560EB38();
          OUTLINED_FUNCTION_24_0(v29);
          (*(v44 + 8))(v42, v29);
          v45 = sub_1D560EB58();
          if (OUTLINED_FUNCTION_24_20() != 1)
          {
            v48 = *(v0 + 160);
            v66 = sub_1D560EB48();
            v50 = v49;
            OUTLINED_FUNCTION_24_0(v45);
            (*(v51 + 8))(v48, v45);
            if (v50)
            {
              v52 = *(v0 + 192);
              v65 = *(v0 + 200);
              v53 = *(v0 + 184);
              if (v66 == 0xD000000000000021 && v50 == 0x80000001D56805A0)
              {

                OUTLINED_FUNCTION_23_19();

                (*(v52 + 8))(v65, v53);
                __swift_destroy_boxed_opaque_existential_1(v15);
              }

              else
              {
                v67 = sub_1D5616168();

                OUTLINED_FUNCTION_23_19();

                (*(v52 + 8))(v65, v53);
                __swift_destroy_boxed_opaque_existential_1(v15);
                if ((v67 & 1) == 0)
                {
LABEL_27:
                  if (v10 == 10)
                  {
                    swift_willThrow();
                    goto LABEL_40;
                  }

                  goto LABEL_39;
                }
              }

              LOBYTE(v10) = 8;
LABEL_39:
              sub_1D4F763B4();
              OUTLINED_FUNCTION_121_0();
              *v57 = v10;
              swift_willThrow();

              goto LABEL_40;
            }

            v55 = OUTLINED_FUNCTION_26_13();
            (*(v56 + 8))(v55);

            OUTLINED_FUNCTION_23_19();
LABEL_26:
            __swift_destroy_boxed_opaque_existential_1(v15);
            goto LABEL_27;
          }

          v46 = OUTLINED_FUNCTION_26_13();
          v38 = *(v0 + 160);
          (*(v47 + 8))(v46);

          OUTLINED_FUNCTION_23_19();
          v40 = &unk_1EC7EC850;
          v41 = &unk_1D5621DA8;
        }

        sub_1D4E50004(v38, v40, v41);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D4E50004(v0 + 16, &qword_1EC7E9F98, &qword_1D561C420);
    }

    v10 = 10;
    goto LABEL_12;
  }

LABEL_40:
  v58 = *(v0 + 200);
  v60 = *(v0 + 168);
  v59 = *(v0 + 176);
  v61 = *(v0 + 160);

  OUTLINED_FUNCTION_55();
  v63 = *MEMORY[0x1E69E9840];

  return v62();
}

uint64_t sub_1D4F74E04(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC890, "Z9\b") - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA610, &qword_1D561C518);
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_1D560D428();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_1D560CD48();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = sub_1D560D348();
  v2[20] = v16;
  v17 = *(v16 - 8);
  v2[21] = v17;
  v18 = *(v17 + 64) + 15;
  v2[22] = swift_task_alloc();
  v19 = sub_1D560D388();
  v2[23] = v19;
  v20 = *(v19 - 8);
  v2[24] = v20;
  v21 = *(v20 + 64) + 15;
  v2[25] = swift_task_alloc();
  v22 = sub_1D560EBD8();
  v2[26] = v22;
  v23 = *(v22 - 8);
  v2[27] = v23;
  v24 = *(v23 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v25 = sub_1D560BB98();
  v2[30] = v25;
  v26 = *(v25 - 8);
  v2[31] = v26;
  v27 = *(v26 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v28 = sub_1D560D838();
  v2[35] = v28;
  v29 = *(v28 - 8);
  v2[36] = v29;
  v30 = *(v29 + 64) + 15;
  v2[37] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F7525C, 0, 0);
}

uint64_t sub_1D4F7525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v20 = *(v18 + 296);
  v19 = *(v18 + 304);
  v21 = *(v18 + 280);
  v22 = *(v18 + 288);
  v23 = *(v18 + 40);
  sub_1D5614898();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v22 + 8))(v20, v21);
  v24 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
  {
    sub_1D4E50004(*(v18 + 304), &unk_1EC7F1970, &qword_1D561F4A0);
    sub_1D4F763B4();
    v66 = OUTLINED_FUNCTION_121_0();
    *v25 = 4;
    swift_willThrow();
    OUTLINED_FUNCTION_3_21();
    v61 = *(v18 + 128);
    v62 = *(v18 + 104);
    v63 = *(v18 + 80);
    v64 = *(v18 + 72);
    v65 = *(v18 + 48);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_16_5();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v61, v62, v63, v64, v65, v66, a15, a16, a17, a18);
  }

  else
  {
    v35 = *(v18 + 304);
    v36 = *(v18 + 264);
    v37 = *(v18 + 272);
    v39 = *(v18 + 248);
    v38 = *(v18 + 256);
    v40 = *(v18 + 240);
    v41 = *(v18 + 40);
    *(v18 + 16) = sub_1D560F138();
    *(v18 + 24) = v42;
    *(v18 + 312) = v42;
    OUTLINED_FUNCTION_24_0(v24);
    (*(v43 + 8))(v35, v24);
    sub_1D560BB28();
    v44 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
    v45 = v41 + *(v44 + 20);
    sub_1D560BF08();
    sub_1D560BB28();

    sub_1D560BB28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
    v46 = *(v39 + 72);
    v47 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v48 = swift_allocObject();
    *(v18 + 320) = v48;
    *(v48 + 16) = xmmword_1D5620080;
    v49 = v48 + v47;
    v50 = *(v39 + 16);
    v50(v49, v37, v40);
    v50(v49 + v46, v36, v40);
    v50(v49 + 2 * v46, v38, v40);
    *(v18 + 400) = *(v44 + 24);
    v51 = *(MEMORY[0x1E6974D00] + 4);
    v52 = swift_task_alloc();
    *(v18 + 328) = v52;
    *v52 = v18;
    v52[1] = sub_1D4F75604;
    OUTLINED_FUNCTION_16_5();

    return MEMORY[0x1EEDCE258](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, v41, a15, a16, a17, a18);
  }
}

uint64_t sub_1D4F75604(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v10 = *(v9 + 328);
  v11 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;
  v7[42] = v2;

  if (v2)
  {
    v13 = v7[39];
    v14 = v7[40];
  }

  else
  {
    v15 = v7[2];
    v7[43] = a2;
    v7[44] = a1;
    v7[45] = v15;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D4F7573C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v19 = *(v0 + 400);
  v20 = *(v0 + 352);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v22 = *(v0 + 224);
  v23 = *(v0 + 208);
  v24 = *(v0 + 176);
  v21 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 200);
  v27 = *(v0 + 152);
  v7 = *(v0 + 144);
  v17 = *(v0 + 40);
  v18 = *(v0 + 136);
  sub_1D5615B68();

  v8 = sub_1D560EEC8();
  v10 = v9;

  MEMORY[0x1DA6EAC70](v8, v10);

  sub_1D560EB88();

  (*(v6 + 16))(v22, v5, v23);
  (*(v21 + 104))(v24, *MEMORY[0x1E6974E78], v25);
  sub_1D560D368();
  v11 = *(v7 + 16);
  *(v0 + 368) = v11;
  *(v0 + 376) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v27, v17 + v19, v18);
  sub_1D560D2B8();
  v12 = *(MEMORY[0x1E6974EB0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 384) = v13;
  *v13 = v0;
  v13[1] = sub_1D4F75990;
  v14 = *(v0 + 200);
  v15 = *(v0 + 128);

  return MEMORY[0x1EEDCE5B0](v15);
}

uint64_t sub_1D4F75990()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4F75A8C()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 400);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v110 = *(v0 + 104);
  v114 = *(v0 + 392);
  v7 = *(v0 + 88);
  v8 = *(v0 + 40);
  v9 = sub_1D560B9C8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  v2(v4, v8 + v3, v6);
  sub_1D560B988();
  v12 = sub_1D5612208();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  v16 = sub_1D560D418();
  v18 = v17;
  sub_1D4F78A58();
  sub_1D560B948();
  if (v114)
  {
    v111 = *(v0 + 272);
    v19 = *(v0 + 248);
    v102 = *(v0 + 256);
    v106 = *(v0 + 264);
    v20 = *(v0 + 240);
    v21 = *(v0 + 216);
    v94 = *(v0 + 208);
    v98 = *(v0 + 232);
    v22 = *(v0 + 192);
    v88 = *(v0 + 184);
    v91 = *(v0 + 200);
    v23 = *(v0 + 120);
    v83 = *(v0 + 112);
    v86 = *(v0 + 128);

    sub_1D4E55E1C(v16, v18);

    (*(v23 + 8))(v86, v83);
    (*(v22 + 8))(v91, v88);
    (*(v21 + 8))(v98, v94);
    v24 = *(v19 + 8);
    v24(v102, v20);
    v24(v106, v20);
    v24(v111, v20);
LABEL_5:
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    v44 = *(v0 + 224);
    v43 = *(v0 + 232);
    v45 = *(v0 + 200);
    v46 = *(v0 + 176);
    v47 = *(v0 + 152);
    v96 = *(v0 + 128);
    v100 = *(v0 + 104);
    v104 = *(v0 + 80);
    v108 = *(v0 + 72);
    v113 = *(v0 + 48);

    OUTLINED_FUNCTION_55();
    goto LABEL_6;
  }

  v112 = v15;
  v25 = *(v0 + 104);
  v26 = *(v0 + 88);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  sub_1D4E55E1C(v16, v18);
  v29 = sub_1D56123B8();
  sub_1D4EC9FB0(v29);

  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    v103 = *(v0 + 264);
    v107 = *(v0 + 272);
    v30 = *(v0 + 248);
    v95 = *(v0 + 240);
    v99 = *(v0 + 256);
    v31 = *(v0 + 216);
    v89 = *(v0 + 208);
    v92 = *(v0 + 232);
    v32 = *(v0 + 192);
    v84 = *(v0 + 184);
    v87 = *(v0 + 200);
    v33 = *(v0 + 120);
    v79 = *(v0 + 112);
    v81 = *(v0 + 128);
    v34 = *(v0 + 96);
    v76 = *(v0 + 88);
    v77 = *(v0 + 104);
    v35 = *(v0 + 48);

    sub_1D4E50004(v35, &qword_1EC7EC890, "Z9\b");
    sub_1D4F763B4();
    OUTLINED_FUNCTION_121_0();
    *v36 = 3;
    swift_willThrow();

    (*(v34 + 8))(v77, v76);
    (*(v33 + 8))(v81, v79);
    (*(v32 + 8))(v87, v84);
    (*(v31 + 8))(v92, v89);
    v37 = *(v30 + 8);
    v37(v99, v95);
    v37(v103, v95);
    v37(v107, v95);
    goto LABEL_5;
  }

  v64 = *(v0 + 368);
  v65 = *(v0 + 376);
  v63 = *(v0 + 400);
  v90 = *(v0 + 304);
  v93 = *(v0 + 296);
  v82 = *(v0 + 264);
  v85 = *(v0 + 272);
  v50 = *(v0 + 248);
  v78 = *(v0 + 240);
  v80 = *(v0 + 256);
  v75 = *(v0 + 232);
  v97 = *(v0 + 224);
  v73 = *(v0 + 216);
  v74 = *(v0 + 208);
  v70 = *(v0 + 192);
  v71 = *(v0 + 184);
  v72 = *(v0 + 200);
  v101 = *(v0 + 176);
  v109 = *(v0 + 152);
  v62 = *(v0 + 136);
  v67 = *(v0 + 120);
  v68 = *(v0 + 112);
  v69 = *(v0 + 128);
  v51 = *(v0 + 96);
  v115 = *(v0 + 104);
  v52 = *(v0 + 80);
  v66 = *(v0 + 88);
  v54 = *(v0 + 64);
  v53 = *(v0 + 72);
  v55 = *(v0 + 56);
  v105 = *(v0 + 48);
  v56 = *(v0 + 40);
  v61 = *(v0 + 32);
  (*(v54 + 32))(v52);
  v57 = *(v54 + 16);
  v58 = OUTLINED_FUNCTION_29_12();
  v59(v58);
  v64(v109, v56 + v63, v62);
  sub_1D4F77364(v53, v109, v112, v61);

  (*(v54 + 8))(v52, v55);
  (*(v51 + 8))(v115, v66);
  (*(v67 + 8))(v69, v68);
  (*(v70 + 8))(v72, v71);
  (*(v73 + 8))(v75, v74);
  v60 = *(v50 + 8);
  v60(v80, v78);
  v60(v82, v78);
  v60(v85, v78);

  OUTLINED_FUNCTION_55();
LABEL_6:

  return v48();
}

uint64_t sub_1D4F76138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = v18[33];
  v20 = v18[34];
  v21 = v18[30];
  v22 = *(v18[31] + 8);
  v22(v18[32], v21);
  v22(v19, v21);
  v22(v20, v21);
  v23 = v18[42];
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_13_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_16_5();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D4F7625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = v18[33];
  v20 = v18[34];
  v22 = v18[31];
  v21 = v18[32];
  v24 = v18[29];
  v23 = v18[30];
  v25 = v18[26];
  v26 = v18[27];
  v27 = OUTLINED_FUNCTION_26_13();
  (*(v28 + 8))(v27);
  (*(v26 + 8))(v24, v25);
  v29 = *(v22 + 8);
  v29(v21, v23);
  v29(v19, v23);
  v29(v20, v23);
  v30 = v18[49];
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_13_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_16_5();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_1D4F763B4()
{
  result = qword_1EC7EC860;
  if (!qword_1EC7EC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC860);
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560E728();
  v0[4] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[5] = v6;
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560D9A8();
  v0[7] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[8] = v10;
  v12 = *(v11 + 64);
  v0[9] = OUTLINED_FUNCTION_127();
  v13 = sub_1D560D838();
  v0[10] = v13;
  OUTLINED_FUNCTION_69(v13);
  v0[11] = v14;
  v16 = *(v15 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_1D4F765B8;

  return MusicCollaborativePlaylist.JoinRequest._response()();
}

uint64_t sub_1D4F765B8(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v1)
  {
    v12 = v5[12];
    v11 = v5[13];
    v13 = v5[9];
    v14 = v5[6];
    v15 = v5[3];

    OUTLINED_FUNCTION_55();

    return v16();
  }

  else
  {
    v5[15] = a1;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }
}

uint64_t sub_1D4F76724()
{
  v23 = v0[13];
  v24 = v0[15];
  v1 = v0[11];
  v28 = v0[12];
  v29 = v0[10];
  v26 = v0[8];
  v27 = v0[7];
  v21 = v0[6];
  v22 = v0[9];
  v2 = v0[5];
  v25 = v0[4];
  v3 = v0[3];
  v30 = v0[2];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v4 = sub_1D560DB08();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D5621D90;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x1E6975040], v4);
  v12(v11 + v8, *MEMORY[0x1E6975030], v4);
  sub_1D560E718();
  v13 = *MEMORY[0x1E6974FD8];
  v14 = sub_1D560D9E8();
  OUTLINED_FUNCTION_14(v14);
  (*(v15 + 104))(v3, v13, v14);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v14);
  sub_1D560F7D8();
  sub_1D4E50004(v3, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v2 + 8))(v21, v25);
  (*(v26 + 8))(v22, v27);
  (*(v1 + 16))(v28, v23, v29);
  sub_1D56144C8();
  v16 = *(v1 + 8);
  v17 = OUTLINED_FUNCTION_16_2();
  v18(v17);

  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t MusicCollaborativePlaylist.JoinRequest._response()()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v0;
  v2 = sub_1D560C0A8();
  v1[25] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[26] = v3;
  v5 = *(v4 + 64);
  v1[27] = OUTLINED_FUNCTION_127();
  v6 = sub_1D5614898();
  v1[28] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[29] = v7;
  v9 = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v10 = sub_1D56131C8();
  v1[31] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[32] = v11;
  v13 = *(v12 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D4F76B54()
{
  v1 = v0;
  v24 = v0 + 2;
  v25 = v0 + 18;
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];
  v11 = v1[24];
  v22 = v1[25];
  v23 = v8;
  (*(v5 + 104))(v2, *MEMORY[0x1E6976988], v4);
  (*(v5 + 16))(v3, v2, v4);
  (*(v6 + 16))(v7, v11, v9);
  OUTLINED_FUNCTION_29_12();
  sub_1D4ECAE6C();
  v13 = v12;
  v1[35] = v12;
  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_16_2();
  v16(v15);
  v17 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  (*(v10 + 16))(v23, v11 + *(v17 + 20), v22);
  v18 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryJoinCollaborationChangeRequest);
  v19 = sub_1D4F788B4(v13, v23);
  v1[36] = v19;
  v1[2] = v1;
  v1[7] = v25;
  v1[3] = sub_1D4F76D84;
  v20 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4F772C0;
  v1[13] = &block_descriptor_3;
  v1[14] = v20;
  [v19 performWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1D4F76D84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4F76E84()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[30];
  v16 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_127();
  (*(v7 + 16))();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  OUTLINED_FUNCTION_29_12();
  v10 = sub_1D5616158();

  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_29_12();
  v13(v12);

  v14 = v0[1];

  return v14(v10);
}

uint64_t sub_1D4F76FE4()
{
  v1 = *(v0 + 296);
  swift_willThrow();
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_64_1();
  sub_1D4EC5648();
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v3 = *(v0 + 184);
  v4 = [v3 domain];
  v5 = sub_1D5614D68();
  v7 = v6;

  v8 = *MEMORY[0x1E69E4138];
  if (v5 == sub_1D5614D68() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_1D5616168();

    if ((v11 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v12 = [v3 code];

  if (v12 == 2023)
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 280);

    sub_1D4F763B4();
    OUTLINED_FUNCTION_121_0();
    v16 = 7;
LABEL_20:
    *v15 = v16;
    swift_willThrow();

    goto LABEL_23;
  }

LABEL_11:
  v17 = [v3 domain];
  v18 = sub_1D5614D68();
  v20 = v19;

  if (v18 == sub_1D5614D68() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_1D5616168();

    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([v3 code] == 2024)
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 280);

    sub_1D4F763B4();
    OUTLINED_FUNCTION_121_0();
    v16 = 8;
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  v26 = *(v0 + 280);

  swift_willThrow();
  v27 = *(v0 + 296);
LABEL_23:
  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v30 = *(v0 + 240);
  v31 = *(v0 + 216);

  OUTLINED_FUNCTION_55();

  return v32();
}

uint64_t *sub_1D4F772C0(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4F23514(v6, v7);
  }

  else if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    swift_unknownObjectRetain();
    return sub_1D4F231B8(v6, &v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F77364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v157 = a3;
  v158 = a2;
  v155 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v128 = &v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C0, &qword_1D5621E68);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v152 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v148 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v154 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v156 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v127 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v147 = &v127 - v25;
  v145 = sub_1D5610788();
  v144 = *(v145 - 8);
  v26 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1D56107C8();
  v140 = *(v143 - 8);
  v28 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v139 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v137 = &v127 - v32;
  v159 = sub_1D56102D8();
  v164 = *(v159 - 8);
  v33 = *(v164 + 64);
  v34 = MEMORY[0x1EEE9AC00](v159);
  v136 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v138 = &v127 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v127 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D8, &qword_1D5621E78);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v131 = &v127 - v41;
  v153 = sub_1D56103C8();
  v151 = *(v153 - 8);
  v42 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v163 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v127 - v46;
  v48 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  v49 = *(*(v48 - 1) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = (&v127 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = *(v50 + 24);
  v54 = sub_1D560C328();
  v134 = v53;
  __swift_storeEnumTagSinglePayload(v52 + v53, 1, 1, v54);
  v55 = v48[8];
  v56 = sub_1D560C0A8();
  v135 = v55;
  __swift_storeEnumTagSinglePayload(v52 + v55, 1, 1, v56);
  v57 = v48[9];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v146 = v57;
  __swift_storeEnumTagSinglePayload(v52 + v57, 1, 1, v58);
  v149 = v48[10];
  v161 = v58;
  __swift_storeEnumTagSinglePayload(v52 + v149, 1, 1, v58);
  v59 = v48[11];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(v52 + v59, 1, 1, v60);
  if (qword_1EC7E8FD8 != -1)
  {
    swift_once();
  }

  v61 = sub_1D560D9A8();
  __swift_project_value_buffer(v61, qword_1EC7F0FC0);
  v62 = sub_1D56109F8();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v62);
  v63 = v48[13];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA610, &qword_1D561C518);
  sub_1D56105B8();
  sub_1D4E50004(v47, &qword_1EC7EB5C0, &unk_1D56223C0);
  v65 = v52 + v48[14];
  sub_1D5610658();
  v130 = sub_1D5610618();
  v129 = v66;
  v67 = sub_1D56105C8();
  v68 = sub_1D56105F8();
  v69 = sub_1D56105E8();
  v160 = v64;
  v162 = a1;
  v70 = sub_1D56105A8();
  *v52 = 516;
  v132 = v48[7];
  *(v52 + v132) = 2;
  if (qword_1EC7E8D90 != -1)
  {
    swift_once();
  }

  v71 = qword_1EC87C090;
  if (qword_1EC87C090 >> 62)
  {
    sub_1D560CDE8();

    v126 = sub_1D5615E18();

    v71 = v126;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v72 = v159;
  *(v52 + v48[12]) = v71;
  v73 = (v52 + v48[15]);
  v74 = v129;
  *v73 = v130;
  v73[1] = v74;
  *(v52 + v48[16]) = v67;
  *(v52 + v48[17]) = v68;
  *(v52 + v48[18]) = v69;
  *(v52 + v48[19]) = v70;
  sub_1D5610648();
  v75 = v133;
  sub_1D56102E8();
  v76 = v131;
  sub_1D5610288();
  v77 = v164 + 8;
  v78 = *(v164 + 8);
  v78(v75, v72);
  v79 = sub_1D5610398();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v79);
  v141 = v48;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v76, &qword_1EC7EC8D8, &qword_1D5621E78);
    v81 = 4;
  }

  else
  {
    sub_1D516230C(v165);
    (*(*(v79 - 8) + 8))(v76, v79);
    v81 = v165[0];
  }

  v82 = v52;
  *v52 = v81;
  v83 = v139;
  sub_1D56107A8();
  v84 = v138;
  sub_1D56102E8();
  sub_1D56102B8();
  v78(v84, v72);
  v85 = *MEMORY[0x1E6975DC8];
  v164 = v77;
  v86 = v144;
  v87 = *(v144 + 104);
  v88 = v142;
  v133 = v78;
  v89 = v145;
  v87(v142, v85, v145);
  v90 = v137;
  sub_1D5610798();

  v91 = v88;
  v92 = v163;
  (*(v86 + 8))(v91, v89);
  (*(v140 + 8))(v83, v143);
  v93 = v90;
  v94 = v82;
  sub_1D4F78BC4(v93, v82 + v134, &qword_1EC7EA3B8, &unk_1D561E370);
  v95 = v136;
  sub_1D56102E8();
  v96 = sub_1D56102C8();
  v97 = v159;
  v98 = v133;
  (v133)(v95, v159);
  v99 = (v96 & 1) == 0;
  if (v96 == 2)
  {
    v99 = 2;
  }

  *(v82 + v132) = v99;
  sub_1D56102E8();
  v100 = v147;
  sub_1D5610298();
  v98(v84, v97);
  sub_1D4F78BC4(v100, v82 + v135, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v101 = v148;
  sub_1D5610348();
  v102 = sub_1D5610338();
  if (__swift_getEnumTagSinglePayload(v101, 1, v102) == 1)
  {
    sub_1D4E50004(v101, &qword_1EC7EC8C0, &qword_1D5621E68);
    v103 = 1;
    v104 = v152;
    v105 = v150;
    v106 = v141;
    v107 = v162;
  }

  else
  {
    v108 = v127;
    sub_1D5610318();
    (*(*(v102 - 8) + 8))(v101, v102);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
    v110 = __swift_getEnumTagSinglePayload(v108, 1, v109);
    v107 = v162;
    if (v110 == 1)
    {
      sub_1D4E50004(v108, &qword_1EC7EC8C8, &qword_1D5621E70);
      v103 = 1;
      v104 = v152;
      v105 = v150;
    }

    else
    {
      v111 = sub_1D560CD98();
      v112 = v128;
      __swift_storeEnumTagSinglePayload(v128, 1, 1, v111);
      type metadata accessor for Playlist.Collaborator();
      sub_1D560CD48();
      sub_1D4F78C80(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator);
      sub_1D4F78C80(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
      v105 = v150;
      v107 = v162;
      v92 = v163;
      sub_1D5612368();
      sub_1D4E50004(v112, &qword_1EC7EA7D8, &unk_1D561E8B0);
      (*(*(v109 - 8) + 8))(v108, v109);
      v103 = 0;
      v104 = v152;
    }

    v106 = v141;
  }

  __swift_storeEnumTagSinglePayload(v105, v103, 1, v161);
  sub_1D4F78BC4(v105, v94 + v146, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D5610348();
  v113 = __swift_getEnumTagSinglePayload(v104, 1, v102);
  v114 = v154;
  if (v113 == 1)
  {
    v115 = &qword_1EC7EC8C0;
    v116 = &qword_1D5621E68;
    v117 = v104;
  }

  else
  {
    sub_1D5610328();
    (*(*(v102 - 8) + 8))(v104, v102);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
    if (__swift_getEnumTagSinglePayload(v114, 1, v118) != 1)
    {
      v120 = sub_1D560CD98();
      v121 = v128;
      __swift_storeEnumTagSinglePayload(v128, 1, 1, v120);
      type metadata accessor for Playlist.Collaborator();
      sub_1D560CD48();
      sub_1D4F78C80(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator);
      sub_1D4F78C80(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
      v92 = v163;
      sub_1D5612368();
      sub_1D4E50004(v121, &qword_1EC7EA7D8, &unk_1D561E8B0);
      (*(*(v118 - 8) + 8))(v114, v118);
      v119 = 0;
      goto LABEL_24;
    }

    v115 = &qword_1EC7EC8C8;
    v116 = &qword_1D5621E70;
    v117 = v114;
  }

  sub_1D4E50004(v117, v115, v116);
  v119 = 1;
LABEL_24:
  v122 = v156;
  __swift_storeEnumTagSinglePayload(v156, v119, 1, v161);
  sub_1D4F78BC4(v122, v94 + v149, &qword_1EC7EC8D0, &unk_1D5623AD0);
  v165[3] = v106;
  v165[4] = sub_1D4F78C80(&qword_1EC7EC8E8, type metadata accessor for PlaylistCollaborationPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v165);
  sub_1D4F78C24(v94, boxed_opaque_existential_0);
  Playlist.Collaboration.init(propertyProvider:)(v165, v155);

  v124 = sub_1D560CD48();
  (*(*(v124 - 8) + 8))(v158, v124);
  (*(*(v160 - 8) + 8))(v107);
  (*(v151 + 8))(v92, v153);
  return sub_1D4E5840C();
}

uint64_t static MusicCollaborativePlaylist.JoinRequest.== infix(_:_:)()
{
  if ((_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v1 = *(v0 + 20);
  if ((sub_1D560BFB8() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);

  return _s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0();
}

uint64_t MusicCollaborativePlaylist.JoinRequest.hash(into:)()
{
  OUTLINED_FUNCTION_64_1();
  sub_1D5614898();
  OUTLINED_FUNCTION_8_27();
  sub_1D4F78C80(v0, v1);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  v2 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v3 = *(v2 + 20);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_7_26();
  sub_1D4F78C80(v4, v5);
  sub_1D5614CB8();
  v6 = *(v2 + 24);
  sub_1D560CD48();
  OUTLINED_FUNCTION_6_26();
  sub_1D4F78C80(v7, v8);
  return sub_1D5614CB8();
}

uint64_t MusicCollaborativePlaylist.JoinRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_8_27();
  sub_1D4F78C80(v0, v1);
  sub_1D5614CB8();
  v2 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v3 = *(v2 + 20);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_7_26();
  sub_1D4F78C80(v4, v5);
  sub_1D5614CB8();
  v6 = *(v2 + 24);
  sub_1D560CD48();
  OUTLINED_FUNCTION_6_26();
  sub_1D4F78C80(v7, v8);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4F7876C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D4F78C80(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
  sub_1D5614CB8();
  v3 = *(a2 + 20);
  sub_1D560C0A8();
  sub_1D4F78C80(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
  sub_1D5614CB8();
  v4 = *(a2 + 24);
  sub_1D560CD48();
  sub_1D4F78C80(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

id sub_1D4F788B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D560BF68();
  v7 = [v3 initWithPlaylist:a1 invitationURL:v6];

  v8 = sub_1D560C0A8();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

uint64_t sub_1D4F789BC()
{
  result = sub_1D5614898();
  if (v1 <= 0x3F)
  {
    result = sub_1D560C0A8();
    if (v2 <= 0x3F)
    {
      result = sub_1D560CD48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D4F78A58()
{
  result = qword_1EC7EC8A0;
  if (!qword_1EC7EC8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC898, &qword_1D5623B20);
    sub_1D4F78ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC8A0);
  }

  return result;
}

unint64_t sub_1D4F78ADC()
{
  result = qword_1EC7EC8A8;
  if (!qword_1EC7EC8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA610, &qword_1D561C518);
    v1 = MEMORY[0x1E6975C78];
    sub_1D4F78C80(&qword_1EC7EC8B0, MEMORY[0x1E6975C78]);
    sub_1D4F78C80(&qword_1EC7EC8B8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC8A8);
  }

  return result;
}

uint64_t sub_1D4F78BC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_1D4F78C24(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v6 = v5(v4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1D4F78C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_23_19()
{

  return sub_1D4E55E1C(v1, v0);
}

uint64_t sub_1D4F78D74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D561C770;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC920, &qword_1D5622070);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D537434C(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC928, &qword_1D56220A0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D537423C(v9);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 40) = v0;
  qword_1EC87BE80 = v1;
  return result;
}

uint64_t sub_1D4F78E64()
{
  v102 = sub_1D5613858();
  OUTLINED_FUNCTION_1_0();
  v108 = v0;
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v100 = v4;
  v118 = sub_1D5613D38();
  OUTLINED_FUNCTION_1_0();
  v113 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v112 = v9;
  v10 = sub_1D5613598();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v101 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - v18;
  v104 = sub_1D56146E8();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v107 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v93 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1D5621E90;
  KeyPath = swift_getKeyPath();
  v114 = *MEMORY[0x1E6977270];
  v119 = v21;
  v30 = *(v21 + 104);
  v117 = v21 + 104;
  v110 = v30;
  (v30)(v28);
  v31 = *MEMORY[0x1E6976AE0];
  v115 = *(v12 + 104);
  v116 = v12;
  v105 = v12 + 104;
  v115(v19, v31, v10);
  v33 = v112;
  v32 = v113;
  v34 = v118;
  (*(v113 + 104))(v112, *MEMORY[0x1E6976E98], v118);
  v35 = v19;
  v36 = v19;
  v37 = v33;
  v38 = sub_1D4F797C0(KeyPath, v28, v35, v33);

  (*(v32 + 8))(v37, v34);
  v39 = *(v12 + 8);
  v113 = v12 + 8;
  v109 = v39;
  v99 = v10;
  v39(v36, v10);
  v112 = *(v21 + 8);
  v118 = v21 + 8;
  v40 = v104;
  v112(v28, v104);
  *(v111 + 32) = v38;
  swift_getKeyPath();
  v41 = OUTLINED_FUNCTION_1_35();
  v42 = v114;
  v43 = v110;
  v110(v41, v114, v40);
  LODWORD(v98) = *MEMORY[0x1E6976AD0];
  (v115)(v36);
  v44 = *MEMORY[0x1E6976C38];
  v45 = v108;
  v96 = *(v108 + 104);
  v97 = v108 + 104;
  v46 = v100;
  v47 = v102;
  v96(v100, v44, v102);
  v48 = sub_1D4F79A50(v34, v28, v36, v46);

  v49 = *(v45 + 8);
  v108 = v45 + 8;
  v95 = v49;
  v49(v46, v47);
  v50 = v99;
  v109(v36, v99);
  v51 = v104;
  v112(v28, v104);
  v52 = v111;
  *(v111 + 40) = v48;
  v93 = swift_getKeyPath();
  v53 = v51;
  v43(v28, v42, v51);
  v115(v36, *MEMORY[0x1E6976A98], v50);
  v106 = *(v119 + 16);
  v119 += 16;
  v54 = v107;
  v106(v107, v28, v51);
  v55 = *(v116 + 16);
  v116 += 16;
  v103 = v55;
  v56 = v101;
  v94 = v36;
  v55(v101, v36, v50);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC900, &qword_1D5621FA0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v60 = sub_1D4F79F84(v93, v54, v56);
  v109(v36, v50);
  v61 = v112;
  v112(v28, v53);
  *(v52 + 48) = v60;
  v62 = v52;
  v63 = swift_getKeyPath();
  v64 = v110;
  v110(v28, *MEMORY[0x1E6977278], v53);
  v65 = v107;
  v106(v107, v28, v53);
  v66 = OUTLINED_FUNCTION_3_22();
  v67 = v63;
  v68 = v66;
  sub_1D5375784(v67, v65);
  v69 = OUTLINED_FUNCTION_1_35();
  v61(v69, v53);
  *(v62 + 56) = v68;
  swift_getKeyPath();
  v70 = OUTLINED_FUNCTION_1_35();
  v64(v70, v114, v53);
  v71 = v94;
  v72 = v99;
  v73 = v115;
  v115(v94, v98, v99);
  v74 = v100;
  v75 = v102;
  v96(v100, *MEMORY[0x1E6976C28], v102);
  v98 = sub_1D4F79A50(v68, v28, v71, v74);

  v95(v74, v75);
  v76 = v72;
  v77 = v109;
  v109(v71, v72);
  v78 = v104;
  v112(v28, v104);
  *(v111 + 64) = v98;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_10_24();
  v79();
  v73(v71, *MEMORY[0x1E6976AD8], v76);
  v80 = OUTLINED_FUNCTION_5_21();
  v81(v80);
  v82 = OUTLINED_FUNCTION_2_17();
  v83(v82);
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_4_21();
  v84 = OUTLINED_FUNCTION_8_28();
  v77(v84);
  v85 = v112;
  v112(v28, v78);
  v86 = v111;
  *(v111 + 72) = v68;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_10_24();
  v87();
  v115(v71, *MEMORY[0x1E6976A80], v76);
  v88 = OUTLINED_FUNCTION_5_21();
  (v106)(v88);
  v89 = OUTLINED_FUNCTION_2_17();
  v90(v89);
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_4_21();
  v91 = OUTLINED_FUNCTION_8_28();
  (v109)(v91);
  result = v85(v28, v78);
  *(v86 + 80) = v68;
  qword_1EDD76790 = v86;
  return result;
}

uint64_t sub_1D4F79768@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F797C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_1D5613D38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D5613598();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D56146E8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a2);
  (*(v12 + 16))(v15, a3, v11);
  (*(v7 + 16))(v10, v27, v6);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC900, &qword_1D5621FA0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  return sub_1D4F7A158(v24, v19, v15, v10, MEMORY[0x1E6976EA0], &qword_1EC7EC918, MEMORY[0x1E6976EA0]);
}

uint64_t sub_1D4F79A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_1D5613858();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D5613598();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D56146E8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a2);
  (*(v12 + 16))(v15, a3, v11);
  (*(v7 + 16))(v10, v27, v6);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC900, &qword_1D5621FA0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  return sub_1D4F7A158(v24, v19, v15, v10, MEMORY[0x1E6976C48], qword_1EDD5F198, MEMORY[0x1E6976C48]);
}

uint64_t sub_1D4F79CE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F79D38(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D4F79D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D4F79DE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1D4F79E40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F79E98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

id sub_1D4F79EF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977658]);

  return [v0 init];
}

uint64_t sub_1D4F79F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EC7F8068) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = sub_1D56146E8();
  sub_1D4F7A3A8(&qword_1EC7EC908, MEMORY[0x1E6977290]);

  sub_1D56150C8();
  v8 = sub_1D5613598();
  sub_1D4F7A3A8(&qword_1EC7EC910, MEMORY[0x1E6976B10]);
  sub_1D56150C8();
  *(v3 + qword_1EC7F8070) = v6;
  v9 = (v3 + qword_1EC7F8078);
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_1D560CCC8();

  (*(*(v8 - 8) + 8))(a3, v8);
  (*(*(v7 - 8) + 8))(a2, v7);
  return v10;
}

uint64_t sub_1D4F7A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  *(v7 + qword_1EC7F8068) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D5620080;
  v13 = sub_1D56146E8();
  sub_1D4F7A3A8(&qword_1EC7EC908, MEMORY[0x1E6977290]);

  sub_1D56150C8();
  v14 = sub_1D5613598();
  sub_1D4F7A3A8(&qword_1EC7EC910, MEMORY[0x1E6976B10]);
  sub_1D56150C8();
  v15 = a5(0);
  sub_1D4F7A3A8(a6, a7);
  sub_1D56150C8();
  *(v7 + qword_1EC7F8070) = v12;
  v16 = (v7 + qword_1EC7F8078);
  *v16 = 0;
  v16[1] = 0;
  sub_1D560CCC8();
  OUTLINED_FUNCTION_1_35();

  (*(*(v15 - 8) + 8))(a4, v15);
  (*(*(v14 - 8) + 8))(a3, v14);
  (*(*(v13 - 8) + 8))(a2, v13);
  return v7;
}

uint64_t sub_1D4F7A3A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicVideo.catalogID.getter()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1D560EEA8();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v3 + 8))(v8, v0);
  v15 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D4E6C9CC(v14, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v16 = sub_1D560F138();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  return v16;
}

uint64_t sub_1D4F7A5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC940, "j7\b");
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D4F7B134();
  v0 = sub_1D560D138();

  qword_1EC7EC930 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.immersiveURL.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E8A40, &qword_1EC7EC930);
}

{
  return sub_1D50355DC(&off_1EDD54320);
}

{
  return sub_1D50355DC(&qword_1EC7E9298);
}

{
  return sub_1D50355DC(&qword_1EC7E95B0);
}

{
  return sub_1D50355DC(&qword_1EDD53F50);
}

uint64_t sub_1D4F7A6B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC940, "j7\b");
  swift_getKeyPath();
  sub_1D5615288();
  v0 = sub_1D560D138();

  qword_1EC7EC938 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.customLyrics.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E8A48, &qword_1EC7EC938);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E9348, &qword_1EC7F25D8);
}

uint64_t MusicVideo.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D56128E8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1D560ED78();
  (*(v5 + 16))(v10, v12, v2);
  v13 = (*(v5 + 88))(v10, v2);
  if (v13 == *MEMORY[0x1E69765E8])
  {
    v14 = 0;
LABEL_7:
    result = (*(v5 + 8))(v12, v2);
    *a1 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x1E69765F8])
  {
    v14 = 1;
    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x1E69765F0])
  {
    v14 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicVideo.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v100 = a1;
  v2 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v97 = v4;
  v98 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v96 = v8 - v7;
  v86 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_4(v86);
  v95 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v90 = v14 - v13;
  v93 = sub_1D5611AB8();
  v15 = OUTLINED_FUNCTION_4(v93);
  v87 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v79 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v84 = &v79 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v83 = &v79 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v82 = &v79 - v44;
  v45 = sub_1D560EEA8();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v94 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v53 = v52 - v51;
  v54 = *(v48 + 16);
  v54(v52 - v51, v1, v45);
  v55 = sub_1D560EE68();
  v91 = v56;
  v92 = v55;
  v57 = sub_1D560ECC8();
  v88 = v58;
  v89 = v57;
  sub_1D560EE78();
  sub_1D560ED28();
  sub_1D560EE58();
  v85 = sub_1D560ED58();
  v59 = v99;
  v60 = v86;
  __swift_storeEnumTagSinglePayload(v99, 1, 1, v86);
  v102 = v45;
  v103 = MEMORY[0x1E69754C8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
  v80 = v53;
  v54(boxed_opaque_existential_0, v53, v45);
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v81 = v45;
  sub_1D5612AF8();
  v62 = v90;
  sub_1D5611A98();
  (*(v87 + 8))(v21, v93);
  sub_1D560FDD8();
  (*(v95 + 8))(v62, v60);
  sub_1D4E6C9CC(v59, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v60);
  v63 = v28;
  sub_1D4F7AFE0(v28, v59);
  __swift_destroy_boxed_opaque_existential_1(v101);
  v64 = v96;
  sub_1D560EC98();
  sub_1D4F7B054(v59, v28, &qword_1EC7EA358, &unk_1D561DF50);
  v65 = type metadata accessor for MusicSiriRepresentation();
  v66 = v100;
  v67 = v82;
  sub_1D4F7B054(v82, v100 + v65[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v68 = v83;
  sub_1D4F7B054(v83, v66 + v65[9], &qword_1EC7EC478, &unk_1D56299D0);
  v69 = v84;
  sub_1D4F7B054(v84, v66 + v65[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v101[0]) = 7;
  v70 = v64;
  sub_1D50391CC();
  v72 = v71;
  v74 = v73;
  sub_1D4E6C9CC(v63, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v97 + 8))(v70, v98);
  sub_1D4E6C9CC(v99, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E6C9CC(v69, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E6C9CC(v68, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E6C9CC(v67, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = (*(v94 + 8))(v80, v81);
  v76 = v100;
  *v100 = v72;
  v76[1] = v74;
  *(v76 + 16) = 7;
  v77 = v91;
  v76[3] = v92;
  v76[4] = v77;
  v78 = v88;
  v76[5] = v89;
  v76[6] = v78;
  return result;
}

uint64_t sub_1D4F7AFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F7B054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D4F7B134()
{
  result = qword_1EDD5CF88;
  if (!qword_1EDD5CF88)
  {
    sub_1D560C0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CF88);
  }

  return result;
}

void static CloudTVSeason.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D560C0A8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v195 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v196 = v18;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v197);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v198 = v22;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v206);
  v203 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v201 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v199 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  v202 = v34;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  v35 = OUTLINED_FUNCTION_14(v205);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v200 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_154_3(v40);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v212);
  v209 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v207 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_17_19(v50, v193);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14(v210);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v55);
  v57 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_93_5();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_114();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_71_1();
  v213 = v5;
  v214 = v3;
  v69 = v5[1];
  v70 = v3[1];
  if (v69)
  {
    if (!v70)
    {
      goto LABEL_21;
    }

    v71 = *v5 == *v3 && v69 == v70;
    if (!v71 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v70)
  {
    goto LABEL_21;
  }

  v194 = v6;
  v72 = type metadata accessor for CloudTVSeason.Attributes(0);
  v73 = v72[5];
  v74 = *(v65 + 48);
  sub_1D4F39AB0(v213 + v73, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v214 + v73, v1 + v74, &qword_1EC7EB5B8, &unk_1D56206A0);
  v75 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v75, v76, v55);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v1 + v74, 1, v55);
    if (v71)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_23;
    }

LABEL_18:
    v85 = &qword_1EC7EC330;
    v86 = &qword_1D56222C0;
LABEL_19:
    v87 = v1;
LABEL_20:
    sub_1D4E50004(v87, v85, v86);
    goto LABEL_21;
  }

  v77 = OUTLINED_FUNCTION_97_1();
  sub_1D4F39AB0(v77, v78, v79, v80);
  OUTLINED_FUNCTION_57(v1 + v74, 1, v55);
  if (v81)
  {
    v82 = *(v57 + 8);
    v83 = OUTLINED_FUNCTION_149_0();
    v84(v83);
    goto LABEL_18;
  }

  (*(v57 + 32))(v0, v1 + v74, v55);
  sub_1D4F39858();
  v88 = sub_1D5614D18();
  v89 = *(v57 + 8);
  v89(v0, v55);
  v90 = OUTLINED_FUNCTION_149_0();
  (v89)(v90);
  sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  v91 = v72[6];
  v92 = *(v214 + v91);
  if (*(v213 + v91))
  {
    if (!v92)
    {
      goto LABEL_21;
    }

    v93 = *(v214 + v91);

    sub_1D4F2C07C();
    v95 = v94;

    if ((v95 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v92)
  {
    goto LABEL_21;
  }

  v96 = v72[7];
  OUTLINED_FUNCTION_62();
  if (v99)
  {
    if (!v97)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31_0(v98);
    v102 = v71 && v100 == v101;
    if (!v102 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v97)
  {
    goto LABEL_21;
  }

  v103 = v72;
  v104 = v72[8];
  v105 = *(v210 + 48);
  v106 = &qword_1EC7EC978;
  sub_1D4F39AB0(v104 + v213, v211, &qword_1EC7EC978, &unk_1D56222A0);
  sub_1D4F39AB0(v104 + v214, v211 + v105, &qword_1EC7EC978, &unk_1D56222A0);
  v107 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_18(v107, v108);
  if (v71)
  {
    OUTLINED_FUNCTION_43_0(v211 + v105);
    if (v71)
    {
      sub_1D4E50004(v211, &qword_1EC7EC978, &unk_1D56222A0);
      goto LABEL_47;
    }

LABEL_45:
    v85 = &qword_1EC7EC980;
    v86 = &qword_1D5628710;
    v87 = v211;
    goto LABEL_20;
  }

  sub_1D4F39AB0(v211, v208, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_43_0(v211 + v105);
  if (v109)
  {
    v110 = *(v209 + 8);
    v111 = OUTLINED_FUNCTION_215();
    v112(v111);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_40_3();
  v113(v207, v211 + v105, v212);
  sub_1D4F7C058();
  OUTLINED_FUNCTION_85();
  v106 = sub_1D5614D18();
  v104 = *(v209 + 8);
  v114 = OUTLINED_FUNCTION_46_1();
  v104(v114);
  v115 = OUTLINED_FUNCTION_215();
  v104(v115);
  sub_1D4E50004(v211, &qword_1EC7EC978, &unk_1D56222A0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  OUTLINED_FUNCTION_116_0(v72[9]);
  if (v106)
  {
    if (!v104)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    v117 = v116;

    if ((v117 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v104)
  {
    goto LABEL_21;
  }

  v118 = v72[10];
  v1 = v204;
  v119 = *(v205 + 48);
  v120 = &qword_1EC7EC960;
  v121 = &unk_1D56334C0;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v122, v123, v124, v125);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v126, v127, v128, v129);
  v130 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_4_18(v130, v131);
  if (v71)
  {
    OUTLINED_FUNCTION_43_0(v204 + v119);
    if (v71)
    {
      sub_1D4E50004(v204, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  sub_1D4F39AB0(v204, v202, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_43_0(v204 + v119);
  if (v132)
  {
    (*(v203 + 8))(v202, v206);
LABEL_60:
    v85 = &qword_1EC7EC968;
    v86 = &unk_1D5622290;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_40_3();
  v133(v201, v204 + v119, v206);
  sub_1D4F7BF60();
  v120 = sub_1D5614D18();
  v121 = v203 + 8;
  v134 = *(v203 + 8);
  v135 = OUTLINED_FUNCTION_122_1();
  v134(v135);
  (v134)(v202, v206);
  sub_1D4E50004(v204, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v120 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_62:
  OUTLINED_FUNCTION_116_0(v103[11]);
  if (v121)
  {
    if (!v120)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    v121 = v136;

    if ((v121 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v120)
  {
    goto LABEL_21;
  }

  v137 = v103[12];
  v138 = *(v213 + v137);
  v139 = *(v214 + v137);
  if (v138)
  {
    if (!v139 || (sub_1D4EF81E0(v138, v139) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v139)
  {
    goto LABEL_21;
  }

  v140 = v103[13];
  OUTLINED_FUNCTION_62();
  if (v143)
  {
    if (!v141)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31_0(v142);
    v146 = v71 && v144 == v145;
    if (!v146 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v141)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_116_0(v103[14]);
  if (v121)
  {
    if (!v120)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF9F7C();
    v148 = v147;

    if ((v148 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v120)
  {
    goto LABEL_21;
  }

  v149 = v103[15];
  v150 = *(v205 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v151, v152, v153, v154);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v155, v156, v157, v158);
  OUTLINED_FUNCTION_57(v200, 1, v206);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v200 + v150, 1, v206);
    if (v71)
    {
      sub_1D4E50004(v200, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  sub_1D4F39AB0(v200, v199, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v200 + v150, 1, v206);
  if (v159)
  {
    (*(v203 + 8))(v199, v206);
LABEL_94:
    v85 = &qword_1EC7EC968;
    v86 = &unk_1D5622290;
    v87 = v200;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_81();
  v160(v201, v200 + v150, v206);
  sub_1D4F7BF60();
  v161 = OUTLINED_FUNCTION_157_0();
  v162 = *(v203 + 8);
  v163 = OUTLINED_FUNCTION_93();
  v162(v163);
  v164 = OUTLINED_FUNCTION_85();
  v162(v164);
  sub_1D4E50004(v200, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v161 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_96:
  v165 = v103[16];
  OUTLINED_FUNCTION_62();
  if (v168)
  {
    if (!v166)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31_0(v167);
    v171 = v71 && v169 == v170;
    if (!v171 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v166)
  {
    goto LABEL_21;
  }

  v172 = v103[17];
  v173 = (v213 + v172);
  v174 = *(v213 + v172 + 8);
  v175 = (v214 + v172);
  v176 = *(v214 + v172 + 8);
  if (v174)
  {
    if (!v176)
    {
      goto LABEL_21;
    }

    goto LABEL_111;
  }

  if (*v173 != *v175)
  {
    LOBYTE(v176) = 1;
  }

  if ((v176 & 1) == 0)
  {
LABEL_111:
    v177 = v103[18];
    v178 = *(v197 + 48);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v179, v180, v181, v182);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v183, v184, v185, v186);
    OUTLINED_FUNCTION_57(v198, 1, v194);
    if (v71)
    {
      OUTLINED_FUNCTION_57(v198 + v178, 1, v194);
      if (v71)
      {
        sub_1D4E50004(v198, &unk_1EC7E9CA8, &unk_1D561D1D0);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1D4F39AB0(v198, v196, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_57(v198 + v178, 1, v194);
      if (!v187)
      {
        OUTLINED_FUNCTION_81();
        v188(v13, v198 + v178, v194);
        OUTLINED_FUNCTION_0_32();
        sub_1D4F7C014(v189);
        OUTLINED_FUNCTION_157_0();
        v190 = *(v195 + 8);
        v191 = OUTLINED_FUNCTION_93();
        v190(v191);
        v192 = OUTLINED_FUNCTION_85();
        v190(v192);
        sub_1D4E50004(v198, &unk_1EC7E9CA8, &unk_1D561D1D0);
        goto LABEL_21;
      }

      (*(v195 + 8))(v196, v194);
    }

    v85 = &qword_1EC7E9FB0;
    v86 = &qword_1D562C590;
    v87 = v198;
    goto LABEL_20;
  }

LABEL_21:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F7BF60()
{
  result = qword_1EC7EC988;
  if (!qword_1EC7EC988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7C014(&unk_1EC7EC990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC988);
  }

  return result;
}

unint64_t sub_1D4F7C014(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F7C058()
{
  result = qword_1EC7EC998;
  if (!qword_1EC7EC998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7C014(&unk_1EC7EC9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC998);
  }

  return result;
}

uint64_t sub_1D4F7C10C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 7107189 && a2 == 0xE300000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1D5616168();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
      }
    }
  }
}

unint64_t sub_1D4F7C5BC(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x6D614E65726E6567;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x73726566666FLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x44657361656C6572;
      break;
    case 13:
      result = 0x756F436B63617274;
      break;
    case 14:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F7C784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F7C10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F7C7AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F7C5B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F7C7D4(uint64_t a1)
{
  v2 = sub_1D4F7CCD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F7C810(uint64_t a1)
{
  v2 = sub_1D4F7CCD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVSeason.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9A8, &qword_1D56222C8);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D4F7CCD0();
  OUTLINED_FUNCTION_132();
  v16 = *v3;
  v17 = v3[1];
  sub_1D5616028();
  if (!v1)
  {
    v18 = type metadata accessor for CloudTVSeason.Attributes(0);
    OUTLINED_FUNCTION_117_3(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v12[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3();
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    OUTLINED_FUNCTION_37_1(3);
    sub_1D5616028();
    v22 = v12[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v12[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4F889A8(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_20_3();
    v23 = v12[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_42_2(v12[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4F7D12C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v12[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_20_3();
    v24 = (v3 + v12[13]);
    v25 = *v24;
    v26 = v24[1];
    OUTLINED_FUNCTION_37_1(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v12[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
    sub_1D4F7D290();
    OUTLINED_FUNCTION_20_3();
    v27 = v12[15];
    OUTLINED_FUNCTION_119();
    v28 = (v3 + v12[16]);
    v29 = *v28;
    v30 = v28[1];
    OUTLINED_FUNCTION_37_1(12);
    sub_1D5616028();
    v31 = v3 + v12[17];
    v32 = *v31;
    v33 = v31[8];
    OUTLINED_FUNCTION_37_1(13);
    sub_1D5616058();
    v34 = v12[18];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_32();
    sub_1D4F7C014(v35);
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4F7CCD0()
{
  result = qword_1EC7EC9B0;
  if (!qword_1EC7EC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9B0);
  }

  return result;
}

unint64_t sub_1D4F7CD24()
{
  result = qword_1EC7EC350;
  if (!qword_1EC7EC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7C014(&unk_1EDD533A8);
    sub_1D4F7C014(&unk_1EDD533B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC350);
  }

  return result;
}

unint64_t sub_1D4F7CE0C()
{
  result = qword_1EC7EC9C0;
  if (!qword_1EC7EC9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F8884C(&unk_1EC7EC9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9C0);
  }

  return result;
}

unint64_t sub_1D4F7CEB4()
{
  result = qword_1EDD55630;
  if (!qword_1EDD55630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55630);
  }

  return result;
}

unint64_t sub_1D4F7CF08()
{
  result = qword_1EDD55638;
  if (!qword_1EDD55638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55638);
  }

  return result;
}

unint64_t sub_1D4F7CF5C()
{
  result = qword_1EC7EC9D0;
  if (!qword_1EC7EC9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7C014(&unk_1EDD53060);
    sub_1D4F7C014(&unk_1EDD53068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9D0);
  }

  return result;
}

unint64_t sub_1D4F7D044()
{
  result = qword_1EC7EC9E0;
  if (!qword_1EC7EC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7C014(&unk_1EDD530E0);
    sub_1D4F7C014(&unk_1EDD530E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9E0);
  }

  return result;
}

unint64_t sub_1D4F7D12C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v4();
    OUTLINED_FUNCTION_68_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F7D1A8()
{
  result = qword_1EC7EC9F8;
  if (!qword_1EC7EC9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F7C014(&unk_1EDD53108);
    sub_1D4F7C014(&unk_1EDD53110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9F8);
  }

  return result;
}

unint64_t sub_1D4F7D290()
{
  result = qword_1EC7ECA10;
  if (!qword_1EC7ECA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA08, &unk_1D56222F0);
    sub_1D4F7D314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA10);
  }

  return result;
}

unint64_t sub_1D4F7D314()
{
  result = qword_1EC7ECA18;
  if (!qword_1EC7ECA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F7C014(&unk_1EDD56FF8);
    sub_1D4F7C014(&unk_1EDD57000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA18);
  }

  return result;
}

void CloudTVSeason.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v89 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v89);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v88 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v12 = OUTLINED_FUNCTION_4(v11);
  v86 = v13;
  v87 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v85 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v84 = v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v83);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_45();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_71_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31();
  if (v0[1])
  {
    v43 = *v0;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v44 = type metadata accessor for CloudTVSeason.Attributes(0);
  sub_1D4F39AB0(v0 + v44[5], v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  v45 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v45, v46, v33);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v48 = *(v35 + 32);
    v49 = OUTLINED_FUNCTION_215();
    v50(v49);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v51 = *(v35 + 8);
    v52 = OUTLINED_FUNCTION_97_1();
    v53(v52);
  }

  if (*(v0 + v44[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v54 = (v0 + v44[7]);
  if (v54[1])
  {
    v55 = *v54;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v44[8], v2, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_5_1(v2);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v56(v82, v2, v83);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_159_3();
    v57 = OUTLINED_FUNCTION_83_3();
    v58(v57);
  }

  if (*(v0 + v44[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v44[10], v84, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_74(v84);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v59 = OUTLINED_FUNCTION_84_2();
    v60(v59, v84, v87);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v61 = *(v86 + 8);
    v62 = OUTLINED_FUNCTION_91_0();
    v63(v62);
  }

  if (*(v0 + v44[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v44[12]))
  {
    OUTLINED_FUNCTION_27();
    v64 = OUTLINED_FUNCTION_128();
    sub_1D4F06928(v64, v65);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v66 = (v0 + v44[13]);
  if (v66[1])
  {
    v67 = *v66;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v44[14]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F085F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v44[15], v85, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_74(v85);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v68 = OUTLINED_FUNCTION_84_2();
    v69(v68, v85, v87);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v70 = *(v86 + 8);
    v71 = OUTLINED_FUNCTION_91_0();
    v72(v71);
  }

  v73 = (v0 + v44[16]);
  if (v73[1])
  {
    v74 = *v73;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v75 = v0 + v44[17];
  if (v75[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v76 = *v75;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v76);
  }

  sub_1D4F39AB0(v0 + v44[18], v88, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_5_1(v88);
  if (v47)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v77 = OUTLINED_FUNCTION_10_25();
    v78(v77);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_32();
    sub_1D4F7C014(v79);
    OUTLINED_FUNCTION_30_9();
    sub_1D5614CB8();
    v80 = OUTLINED_FUNCTION_44_11();
    v81(v80);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVSeason.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v115 = v10;
  v15 = v14;
  v107 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v108 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v106 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_114();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_71_1();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA48, &unk_1D5622300);
  OUTLINED_FUNCTION_4(v109);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_0();
  v114 = type metadata accessor for CloudTVSeason.Attributes(0);
  v44 = OUTLINED_FUNCTION_14(v114);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v112 = v15;
  v113 = v47;
  v48 = v15[3];
  v49 = v15[4];
  v50 = OUTLINED_FUNCTION_121();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_1D4F7CCD0();
  v110 = v11;
  v52 = v115;
  sub_1D5616398();
  if (v52)
  {
    v115 = v52;
    v55 = 0;
    v56 = 0;
    LODWORD(v12) = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
  }

  else
  {
    v53 = v30;
    v106[0] = v28;
    v106[1] = v40;
    v58 = v109;
    v54 = sub_1D5615F38();
    v71 = v113;
    *v113 = v54;
    v71[1] = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v73 = v114;
    sub_1D4F39A1C(v12, v71 + v114[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v116 = 2;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_34_15();
    *(v71 + v73[6]) = a10;
    OUTLINED_FUNCTION_153_0(3);
    v74 = sub_1D5615F38();
    v75 = (v71 + v73[7]);
    *v75 = v74;
    v75[1] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(a10) = 4;
    sub_1D4F888C0();
    sub_1D5615F78();
    sub_1D4F39A1C(v13, v71 + v73[8], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v116 = 5;
    sub_1D4F889A8(&qword_1EDD528F8);
    OUTLINED_FUNCTION_34_15();
    *(v71 + v73[9]) = a10;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 6;
    v59 = sub_1D4F88A24();
    sub_1D5615F78();
    sub_1D4F39A1C(v53, v71 + v73[10], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v116 = 7;
    sub_1D4F7D12C(&qword_1EDD52908);
    OUTLINED_FUNCTION_34_15();
    *(v71 + v73[11]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v116 = 8;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_34_15();
    v115 = 0;
    *(v71 + v73[12]) = a10;
    OUTLINED_FUNCTION_153_0(9);
    v57 = v110;
    v77 = v115;
    v78 = sub_1D5615F38();
    v115 = v77;
    if (v77)
    {
      v80 = OUTLINED_FUNCTION_63_6();
      v81(v80);
      LODWORD(v110) = 0;
      v55 = 1;
      OUTLINED_FUNCTION_11_25();
      OUTLINED_FUNCTION_86_5();
      LODWORD(v109) = v82;
    }

    else
    {
      v83 = (v113 + v114[13]);
      *v83 = v78;
      v83[1] = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
      v116 = 10;
      sub_1D4F88C5C();
      v57 = v110;
      v84 = v115;
      sub_1D5615F78();
      v115 = v84;
      if (!v84)
      {
        *(v113 + v114[14]) = a10;
        v57 = v110;
        v88 = v115;
        sub_1D5615F78();
        v111 = v88 == 0;
        v115 = v88;
        if (v88 || (sub_1D4F39A1C(v106[0], v113 + v114[15], &qword_1EC7EC960, &unk_1D56334C0), OUTLINED_FUNCTION_153_0(12), v57 = v110, v89 = v115, v90 = sub_1D5615F38(), (v115 = v89) != 0))
        {
          v92 = OUTLINED_FUNCTION_63_6();
          v93(v92);
          LODWORD(v107) = 0;
        }

        else
        {
          v95 = (v113 + v114[16]);
          *v95 = v90;
          v95[1] = v91;
          OUTLINED_FUNCTION_153_0(13);
          v57 = v110;
          v96 = v115;
          v97 = sub_1D5615F68();
          v115 = v96;
          if (!v96)
          {
            v99 = v113 + v114[17];
            *v99 = v97;
            v99[8] = v98 & 1;
            sub_1D560C0A8();
            OUTLINED_FUNCTION_0_32();
            sub_1D4F7C014(v100);
            v57 = v110;
            v101 = v115;
            sub_1D5615F78();
            v115 = v101;
            if (!v101)
            {
              v104 = OUTLINED_FUNCTION_63_6();
              v105(v104);
              sub_1D4F39A1C(v108, v113 + v114[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
              OUTLINED_FUNCTION_23_20();
              sub_1D4F899DC();
              __swift_destroy_boxed_opaque_existential_1(v112);
              OUTLINED_FUNCTION_22_19();
              sub_1D4F89A30();
              goto LABEL_31;
            }
          }

          v102 = OUTLINED_FUNCTION_63_6();
          v103(v102);
          LODWORD(v107) = 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v112);
        OUTLINED_FUNCTION_11_25();
        OUTLINED_FUNCTION_86_5();
        LODWORD(v109) = v94;
        LODWORD(v110) = v94;
        v62 = 1;
        v60 = v113;
        v61 = v114;
LABEL_6:
        v63 = v60[1];

        if (v56)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }

      v85 = OUTLINED_FUNCTION_63_6();
      v86(v85);
      v55 = 1;
      OUTLINED_FUNCTION_11_25();
      OUTLINED_FUNCTION_86_5();
      LODWORD(v109) = v87;
      LODWORD(v110) = v87;
    }
  }

  v60 = v113;
  v61 = v114;
  __swift_destroy_boxed_opaque_existential_1(v112);
  if (v55)
  {
    v62 = 0;
    v111 = 0;
    LODWORD(v107) = 0;
    goto LABEL_6;
  }

  LODWORD(v107) = 0;
  v111 = 0;
  v62 = 0;
  if (v56)
  {
LABEL_7:
    sub_1D4E50004(v60 + v61[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v12 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v67 = *(v60 + v61[6]);

    goto LABEL_21;
  }

LABEL_19:
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (!v57)
  {
    if (!v58)
    {
      goto LABEL_23;
    }

LABEL_10:
    v64 = *(v60 + v61[9]);

    if (v59)
    {
      goto LABEL_24;
    }

LABEL_11:
    if (!v108)
    {
      goto LABEL_25;
    }

LABEL_12:
    v65 = *(v60 + v61[11]);

    if (v109)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v110)
    {
      goto LABEL_27;
    }

LABEL_14:
    v66 = *(v60 + v61[13] + 8);

    if (v62)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (!v111)
    {
      goto LABEL_29;
    }

LABEL_16:
    sub_1D4E50004(v60 + v61[15], &qword_1EC7EC960, &unk_1D56334C0);
    if ((v107 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  sub_1D4E50004(v60 + v61[8], &qword_1EC7EC978, &unk_1D56222A0);
  if (v58)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (!v59)
  {
    goto LABEL_11;
  }

LABEL_24:
  sub_1D4E50004(v60 + v61[10], &qword_1EC7EC960, &unk_1D56334C0);
  if (v108)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v109)
  {
    goto LABEL_13;
  }

LABEL_26:
  v68 = *(v60 + v61[12]);

  if (v110)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!v62)
  {
    goto LABEL_15;
  }

LABEL_28:
  v69 = *(v60 + v61[14]);

  if (v111)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v107)
  {
LABEL_30:
    v70 = *(v60 + v61[16] + 8);
  }

LABEL_31:
  OUTLINED_FUNCTION_26();
}

MusicKitInternal::CloudTVSeason::Relationships::CodingKeys_optional __swiftcall CloudTVSeason.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudTVSeason.Relationships.CodingKeys.stringValue.getter()
{
  v1 = 0x7365726E6567;
  if (*v0 != 1)
  {
    v1 = 2003789939;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365646F73697065;
  }
}

uint64_t sub_1D4F7E7FC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudTVSeason.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4F7E840(uint64_t a1)
{
  v2 = sub_1D4F88F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F7E87C(uint64_t a1)
{
  v2 = sub_1D4F88F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVSeason.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v111 = v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v106);
  v102 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v100 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v14);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA60, &unk_1D5627000);
  OUTLINED_FUNCTION_14(v104);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_19(v18, v98);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v110);
  v108 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v103 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_39_9(v28, v99);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_14(v109);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_114();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_71_1();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA80, &unk_1D5622348);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_93_5();
  v47 = *(v46 + 56);
  v48 = OUTLINED_FUNCTION_140_3();
  sub_1D4F39AB0(v48, v49, &qword_1EC7ECA78, &qword_1D5622340);
  sub_1D4F39AB0(v111, v1 + v47, &qword_1EC7ECA78, &qword_1D5622340);
  v50 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v50, v51, v32);
  if (v52)
  {
    OUTLINED_FUNCTION_57(v1 + v47, 1, v32);
    if (v52)
    {
      sub_1D4E50004(v1, &qword_1EC7ECA78, &qword_1D5622340);
      goto LABEL_12;
    }

LABEL_9:
    v56 = &qword_1EC7ECA80;
    v57 = &unk_1D5622348;
LABEL_10:
    v58 = v1;
LABEL_21:
    sub_1D4E50004(v58, v56, v57);
    goto LABEL_22;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v1 + v47, 1, v32);
  if (v52)
  {
    v53 = *(v34 + 8);
    v54 = OUTLINED_FUNCTION_123_2();
    v55(v54);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_3();
  v59(v3, v1 + v47, v32);
  sub_1D4F88EF0();
  OUTLINED_FUNCTION_97_1();
  v60 = sub_1D5614D18();
  v61 = *(v34 + 8);
  v62 = OUTLINED_FUNCTION_149_0();
  v61(v62);
  v63 = OUTLINED_FUNCTION_123_2();
  v61(v63);
  sub_1D4E50004(v1, &qword_1EC7ECA78, &qword_1D5622340);
  if ((v60 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v64 = type metadata accessor for CloudTVSeason.Relationships(0);
  v65 = *(v64 + 20);
  v66 = *(v109 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v67, v68, v69, v70);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v71, v72, v73, v74);
  OUTLINED_FUNCTION_57(v0, 1, v110);
  if (v52)
  {
    OUTLINED_FUNCTION_9_25(v0 + v66);
    if (v52)
    {
      sub_1D4E50004(v0, &qword_1EC7EA7F0, &unk_1D561E8C0);
LABEL_24:
      v78 = *(v64 + 24);
      v79 = *(v104 + 48);
      v1 = v105;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v80, v81, v82, v83);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v84, v85, v86, v87);
      v88 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_4_18(v88, v89);
      if (v52)
      {
        OUTLINED_FUNCTION_43_0(v105 + v79);
        if (v52)
        {
          sub_1D4E50004(v105, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D4F39AB0(v105, v101, &qword_1EC7ECA58, &unk_1D5622310);
        OUTLINED_FUNCTION_43_0(v105 + v79);
        if (!v90)
        {
          OUTLINED_FUNCTION_40_3();
          v94(v100, v105 + v79, v106);
          sub_1D4F88DE8();
          OUTLINED_FUNCTION_85();
          sub_1D5614D18();
          v95 = *(v102 + 8);
          v96 = OUTLINED_FUNCTION_46_1();
          v95(v96);
          v97 = OUTLINED_FUNCTION_215();
          v95(v97);
          sub_1D4E50004(v105, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }

        v91 = *(v102 + 8);
        v92 = OUTLINED_FUNCTION_215();
        v93(v92);
      }

      v56 = &qword_1EC7ECA60;
      v57 = &unk_1D5627000;
      goto LABEL_10;
    }

LABEL_20:
    v56 = &qword_1EC7ECA68;
    v57 = &unk_1D5622330;
    v58 = v0;
    goto LABEL_21;
  }

  sub_1D4F39AB0(v0, v107, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_9_25(v0 + v66);
  if (v75)
  {
    (*(v108 + 8))(v107, v110);
    goto LABEL_20;
  }

  (*(v108 + 32))(v103, v0 + v66, v110);
  sub_1D4F88E6C();
  v76 = sub_1D5614D18();
  v77 = *(v108 + 8);
  v77(v103, v110);
  v77(v107, v110);
  sub_1D4E50004(v0, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (v76)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVSeason.Relationships.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECAA0, &qword_1D5622358);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1D4F88F74();
  OUTLINED_FUNCTION_132();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  sub_1D4F88FC8();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v1)
  {
    v14 = type metadata accessor for CloudTVSeason.Relationships(0);
    OUTLINED_FUNCTION_117_3(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89134();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v15 = *(v10 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F892A0();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  return (*(v6 + 8))(v2, v4);
}

void CloudTVSeason.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v46);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v45 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v12);
  v44 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v43 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_31();
  v28 = OUTLINED_FUNCTION_93();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_118_1();
  v34 = OUTLINED_FUNCTION_149_0();
  sub_1D4F39AB0(v34, v35, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v0, 1, v22);
  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v24 + 32))(v1, v0, v22);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v24 + 8))(v1, v22);
  }

  v37 = type metadata accessor for CloudTVSeason.Relationships(0);
  sub_1D4F39AB0(v0 + *(v37 + 20), v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_9_25(v2);
  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v38(v43, v2, v12);
    sub_1D56162F8();
    sub_1D4F89490();
    OUTLINED_FUNCTION_162_2();
    (*(v44 + 8))(v43, v12);
  }

  sub_1D4F39AB0(v0 + *(v37 + 24), v45, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_5_1(v45);
  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    v39 = OUTLINED_FUNCTION_29_13();
    v40(v39, v45, v46);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    v41 = OUTLINED_FUNCTION_44_11();
    v42(v41);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVSeason.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v50);
  v48 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v47 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v49 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v13);
  v46 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_114();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_38_2();
  v28 = OUTLINED_FUNCTION_98();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v34 = OUTLINED_FUNCTION_123_2();
  sub_1D4F39AB0(v34, v35, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v0, 1, v22);
  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v37(v2, v0, v22);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v24 + 8))(v2, v22);
  }

  v38 = type metadata accessor for CloudTVSeason.Relationships(0);
  sub_1D4F39AB0(v0 + *(v38 + 20), v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_74(v1);
  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    v39 = OUTLINED_FUNCTION_84_2();
    v40(v39, v1, v13);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    v41 = *(v46 + 8);
    v42 = OUTLINED_FUNCTION_91_0();
    v43(v42);
  }

  sub_1D4F39AB0(v0 + *(v38 + 24), v49, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_1(v49);
  if (v36)
  {
    sub_1D56162F8();
  }

  else
  {
    v44 = OUTLINED_FUNCTION_84_2();
    v45(v44, v49, v50);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    (*(v48 + 8))(v47, v50);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudTVSeason.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_22(v9, v32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECAF8, &qword_1D5622360);
  OUTLINED_FUNCTION_4(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v22 = type metadata accessor for CloudTVSeason.Relationships(0);
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D4F88F74();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F89598();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v28, &qword_1EC7ECA78, &qword_1D5622340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v2, v28 + *(v22 + 20), &qword_1EC7EA7F0, &unk_1D561E8C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F89870();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    v30 = OUTLINED_FUNCTION_88_2();
    v31(v30);
    sub_1D4F39A1C(v33, v28 + *(v22 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    sub_1D4F899DC();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F7FE00(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  v37 = *(v40 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v24, &qword_1EC7ECA78, &qword_1D5622340);
  if (__swift_getEnumTagSinglePayload(v24, 1, v16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v17 + 8))(v20, v16);
  }

  v25 = v39;
  sub_1D4F39AB0(v2 + *(v39 + 20), v15, &qword_1EC7EA7F0, &unk_1D561E8C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v9);
  v27 = v40;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v29 = v34;
    v28 = v35;
    (*(v35 + 32))(v34, v15, v9);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v28 + 8))(v29, v9);
  }

  v30 = v38;
  sub_1D4F39AB0(v3 + *(v25 + 24), v38, &qword_1EC7ECA58, &unk_1D5622310);
  if (__swift_getEnumTagSinglePayload(v30, 1, v27) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v32 = v36;
    v31 = v37;
    (*(v37 + 32))(v36, v30, v27);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    (*(v31 + 8))(v32, v27);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F802DC(uint64_t a1)
{
  v2 = sub_1D4F89A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F80318(uint64_t a1)
{
  v2 = sub_1D4F89A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F8041C(uint64_t a1)
{
  v2 = sub_1D4F89AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F80458(uint64_t a1)
{
  v2 = sub_1D4F89AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D4F804D8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudTVSeason.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudTVSeason.attributes.getter()
{
  v0 = *(OUTLINED_FUNCTION_160_2() + 20);
  OUTLINED_FUNCTION_23_20();
  return sub_1D4F899DC();
}

uint64_t static CloudTVSeason.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7EC948 = a1;
}

uint64_t (*static CloudTVSeason.relationshipCodingKeys.modify())()
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4F8077C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7EC948;
}

uint64_t sub_1D4F807CC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7EC948 = v1;
}

uint64_t CloudTVSeason.views.getter()
{
  result = OUTLINED_FUNCTION_160_2();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudTVSeason.meta.getter()
{
  result = OUTLINED_FUNCTION_160_2();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D4F808C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_64_1();
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D5610068();
  qword_1EDD578B0 = v3;
  return result;
}

void static CloudTVSeason.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_106_0();
  v5 = type metadata accessor for CloudTVSeason.Relationships(v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB38, &qword_1D5622380);
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31();
  v17 = *v1 == *v0 && v1[1] == v0[1];
  if (v17 || (sub_1D5616168() & 1) != 0)
  {
    v18 = type metadata accessor for CloudTVSeason(0);
    v19 = v18[5];
    static CloudTVSeason.Attributes.== infix(_:_:)();
    if (v20)
    {
      v21 = v18[6];
      v22 = *(v13 + 48);
      sub_1D4F39AB0(v1 + v21, v2, &qword_1EC7ECB30, &unk_1D565D0F0);
      sub_1D4F39AB0(v0 + v21, v2 + v22, &qword_1EC7ECB30, &unk_1D565D0F0);
      OUTLINED_FUNCTION_74(v2);
      if (v17)
      {
        OUTLINED_FUNCTION_74(v2 + v22);
        if (v17)
        {
          sub_1D4E50004(v2, &qword_1EC7ECB30, &unk_1D565D0F0);
LABEL_17:
          if (*(v1 + v18[7]) == *(v0 + v18[7]))
          {
            v26 = *(v1 + v18[8]) ^ *(v0 + v18[8]) ^ 1u;
          }

          goto LABEL_19;
        }
      }

      else
      {
        sub_1D4F39AB0(v2, v3, &qword_1EC7ECB30, &unk_1D565D0F0);
        OUTLINED_FUNCTION_74(v2 + v22);
        if (!v23)
        {
          sub_1D4F89CF0();
          OUTLINED_FUNCTION_93();
          static CloudTVSeason.Relationships.== infix(_:_:)();
          v25 = v24;
          sub_1D4F89A30();
          sub_1D4F89A30();
          sub_1D4E50004(v2, &qword_1EC7ECB30, &unk_1D565D0F0);
          if ((v25 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_2_18();
        sub_1D4F89A30();
      }

      sub_1D4E50004(v2, &qword_1EC7ECB38, &qword_1D5622380);
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F80C38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7377656976 && a2 == 0xE500000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1635018093 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D4F80DE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F80E78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4F80ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F80C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F80EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F80DDC();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F80F1C(uint64_t a1)
{
  v2 = sub_1D4F89B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F80F58(uint64_t a1)
{
  v2 = sub_1D4F89B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVSeason.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB40, &qword_1D5622388);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D4F89B4C();
  OUTLINED_FUNCTION_132();
  v21 = *v4;
  v24 = v4[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v2)
  {
    v16 = type metadata accessor for CloudTVSeason(0);
    OUTLINED_FUNCTION_117_3(v16);
    type metadata accessor for CloudTVSeason.Attributes(0);
    OUTLINED_FUNCTION_73_5();
    sub_1D4F7C014(v17);
    OUTLINED_FUNCTION_8_1();
    sub_1D56160C8();
    v18 = v12[6];
    type metadata accessor for CloudTVSeason.Relationships(0);
    OUTLINED_FUNCTION_72_9();
    sub_1D4F7C014(v19);
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    v22 = *(v4 + v12[7]);
    sub_1D4F89BF4();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v23 = *(v4 + v12[8]);
    sub_1D4F89C48();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t CloudTVSeason.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for CloudTVSeason(0);
  v5 = v0 + v4[5];
  CloudTVSeason.Attributes.hash(into:)();
  v6 = v1 + v4[6];
  sub_1D4F876D4();
  v7 = *(v1 + v4[7]);
  sub_1D56162F8();
  v8 = *(v1 + v4[8]);
  return sub_1D56162F8();
}

uint64_t sub_1D4F81284(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void CloudTVSeason.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v32 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v33 = type metadata accessor for CloudTVSeason.Attributes(v8);
  v9 = OUTLINED_FUNCTION_14(v33);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB78, &unk_1D5622390);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_114();
  v16 = type metadata accessor for CloudTVSeason(0);
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v23 = v2[3];
  v24 = v2[4];
  v25 = OUTLINED_FUNCTION_122_1();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1D4F89B4C();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v22 = v34;
    v22[1] = v35;
    OUTLINED_FUNCTION_73_5();
    sub_1D4F7C014(v27);
    sub_1D5615FD8();
    v28 = v16[5];
    sub_1D4F89CF0();
    type metadata accessor for CloudTVSeason.Relationships(0);
    OUTLINED_FUNCTION_72_9();
    sub_1D4F7C014(v29);
    sub_1D5615F78();
    sub_1D4F39A1C(v32, v22 + v16[6], &qword_1EC7ECB30, &unk_1D565D0F0);
    sub_1D4F89D44();
    OUTLINED_FUNCTION_128_1();
    *(v22 + v16[7]) = 2;
    sub_1D4F89D98();
    OUTLINED_FUNCTION_128_1();
    v30 = OUTLINED_FUNCTION_51_1();
    v31(v30);
    *(v22 + v16[8]) = 2;
    OUTLINED_FUNCTION_78_5();
    sub_1D4F899DC();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_26_14();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F817A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void TVSeason.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v360[1] = v23;
  v361 = v24;
  v360[0] = v25;
  v27 = v26;
  v357 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v355 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v356 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v353 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v359 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v55 = OUTLINED_FUNCTION_22(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  v354 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  v352 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v358 = v72;
  OUTLINED_FUNCTION_70_0();
  v345 = sub_1D56128C8();
  v73 = OUTLINED_FUNCTION_4(v345);
  v344 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v79 = OUTLINED_FUNCTION_22(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v83);
  v339 = sub_1D5610788();
  v84 = OUTLINED_FUNCTION_4(v339);
  v338 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v337 = sub_1D56107C8();
  v89 = OUTLINED_FUNCTION_4(v337);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v99 = OUTLINED_FUNCTION_22(v98);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v105 = OUTLINED_FUNCTION_22(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v110);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v115);
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_3();
  v120 = OUTLINED_FUNCTION_48(v119);
  v362 = type metadata accessor for CloudTVSeason(v120);
  v121 = OUTLINED_FUNCTION_14(v362);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  v364 = v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v125);
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_31();
  v129 = type metadata accessor for TVSeasonPropertyProvider();
  v130 = OUTLINED_FUNCTION_14(v129);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5();
  v135 = v134 - v133;
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v326 = v136;
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v136);
  v140 = v129[7];
  v141 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v141);
  v145 = v129[9];
  v146 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
  v150 = v129[15];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v141);
  v329 = v129[18];
  OUTLINED_FUNCTION_33();
  v330 = v146;
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v146);
  v331 = v129[19];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v141);
  v160 = v129[24];
  sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  v165 = v129[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_33();
  v341 = v166;
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v166);
  v170 = v129[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_33();
  v346 = v171;
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v171);
  v175 = v129[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v351 = v175;
  OUTLINED_FUNCTION_33();
  v350 = v176;
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v176);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v180 = sub_1D560D9A8();
  __swift_project_value_buffer(v180, qword_1EDD53C60);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
  v185 = v129[29];
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  OUTLINED_FUNCTION_24();
  sub_1D56105B8();
  sub_1D4E50004(v20, &qword_1EC7EB5C0, &unk_1D56223C0);
  v187 = v135 + v129[30];
  sub_1D5610658();
  v188 = sub_1D5610618();
  v347 = v189;
  v190 = sub_1D56105C8();
  v191 = sub_1D56105F8();
  v192 = sub_1D56105E8();
  v363 = v186;
  v193 = v27;
  v194 = sub_1D56105A8();
  *(v135 + v129[13]) = 2;
  *(v135 + v129[14]) = 2;
  v365 = v129;
  v195 = v135 + v129[16];
  *v195 = 0;
  *(v195 + 8) = 1;
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v196 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    sub_1D560CDE8();

    OUTLINED_FUNCTION_123_2();
    v323 = sub_1D5615E18();

    v196 = v323;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v197 = v365;
  *(v135 + v365[28]) = v196;
  v198 = (v135 + v197[31]);
  *v198 = v188;
  v198[1] = v347;
  *(v135 + v197[32]) = v190;
  *(v135 + v197[33]) = v191;
  *(v135 + v197[34]) = v192;
  *(v135 + v197[35]) = v194;
  v348 = v193;
  sub_1D5610648();
  v199 = (v364 + *(v362 + 20));
  v200 = type metadata accessor for CloudTVSeason.Attributes(0);
  sub_1D4F39AB0(v199 + v200[5], v327, &qword_1EC7EB5B8, &unk_1D56206A0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_1(v327);
  if (v281)
  {
    sub_1D4E50004(v327, &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_143_2();
    v202 = v328;
  }

  else
  {
    v202 = v328;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v201);
    v204 = *(v203 + 8);
    v205 = OUTLINED_FUNCTION_159();
    v206(v205);
    OUTLINED_FUNCTION_143_2();
  }

  __swift_storeEnumTagSinglePayload(v202, v207, 1, v326);
  v208 = OUTLINED_FUNCTION_93();
  sub_1D4E68940(v208, v209, v210, v211);
  v212 = *(v199 + v200[6]);
  v213 = v365;
  if (v212)
  {
    v212 = sub_1D511C2A4(v212);
  }

  v214 = (v135 + v365[6]);
  v215 = v365[8];
  *(v135 + v365[5]) = v212;
  v216 = (v199 + v200[7]);
  v217 = v216[1];
  *v214 = *v216;
  v214[1] = v217;
  *(v135 + v215) = *(v199 + v200[9]);
  sub_1D4F39AB0(v199 + v200[10], v192, &qword_1EC7EC960, &unk_1D56334C0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v192, 1, v218);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v192, &qword_1EC7EC960, &unk_1D56334C0);
    v220 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v218);
    (*(v221 + 8))(v192, v218);
    v220 = 0;
  }

  __swift_storeEnumTagSinglePayload(v190, v220, 1, v330);
  v222 = v213[10];
  v223 = v135 + v213[11];
  v224 = v213[12];
  OUTLINED_FUNCTION_103_2(&v355);
  sub_1D4E68940(v190, v225, v226, v227);
  *(v135 + v222) = *(v199 + v200[11]);
  v228 = v199 + v200[17];
  v229 = *v228;
  LOBYTE(v228) = v228[8];
  *v223 = v229;
  *(v223 + 8) = v228;
  *(v135 + v224) = *(v199 + v200[12]);
  if (*(v199 + v200[14]))
  {

    sub_1D501B268();
  }

  else
  {

    v230 = 0;
  }

  *(v135 + v365[17]) = v230;
  sub_1D4F39AB0(v199 + v200[15], v332, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_1(v332);
  if (v281)
  {
    sub_1D4E50004(v332, &qword_1EC7EC960, &unk_1D56334C0);
    v235 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v218);
    v232 = *(v231 + 8);
    v233 = OUTLINED_FUNCTION_159();
    v234(v233);
    v235 = 0;
  }

  __swift_storeEnumTagSinglePayload(v333, v235, 1, v330);
  OUTLINED_FUNCTION_103_2(&v356);
  sub_1D4E68940(v333, v236, v237, v238);
  sub_1D56107A8();
  v239 = (v199 + v200[16]);
  v240 = *v239;
  v241 = v239[1];
  (*(v338 + 104))(v336, *MEMORY[0x1E6975DC8], v339);
  sub_1D5610798();
  (*(v338 + 8))(v336, v339);
  OUTLINED_FUNCTION_136(&v365);
  v242(v335, v337);
  OUTLINED_FUNCTION_103_2(v360);
  sub_1D4E68940(v334, v243, v244, v245);
  v246 = v200[8];
  sub_1D4F39AB0(v199 + v246, v340, &qword_1EC7EC978, &unk_1D56222A0);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_1(v340);
  if (v281)
  {
    sub_1D4E50004(v340, &qword_1EC7EC978, &unk_1D56222A0);
    v252 = 0;
    v254 = 0;
  }

  else
  {
    sub_1D5610708();
    OUTLINED_FUNCTION_24_0(v247);
    v249 = *(v248 + 8);
    v250 = OUTLINED_FUNCTION_159();
    v251(v250);
    v252 = sub_1D56128A8();
    v254 = v253;
    (*(v344 + 8))(v343, v345);
  }

  v256 = v364;
  v255 = v365;
  v257 = (v135 + v365[20]);
  v258 = (v135 + v365[21]);
  *v257 = v252;
  v257[1] = v254;
  v259 = v199[1];
  *v258 = *v199;
  v258[1] = v259;
  sub_1D4F39AB0(v199 + v246, v342, &qword_1EC7EC978, &unk_1D56222A0);
  v260 = OUTLINED_FUNCTION_105();
  v262 = __swift_getEnumTagSinglePayload(v260, v261, v247);

  if (v262 == 1)
  {
    sub_1D4E50004(v342, &qword_1EC7EC978, &unk_1D56222A0);
    v263 = 0;
    v264 = 0;
  }

  else
  {
    sub_1D5610708();
    OUTLINED_FUNCTION_24_0(v247);
    (*(v265 + 8))(v342, v247);
    v263 = sub_1D56128B8();
    v264 = v266;
    OUTLINED_FUNCTION_136(&a12);
    v267(v343, v345);
  }

  v268 = (v135 + *(v255 + 88));
  v269 = (v135 + *(v255 + 92));
  *v268 = v263;
  v268[1] = v264;
  v270 = (v199 + v200[13]);
  v271 = v270[1];
  *v269 = *v270;
  v269[1] = v271;
  v272 = v200[18];

  OUTLINED_FUNCTION_103_2(&v362);
  sub_1D4F89DEC(v273, v274);
  v275 = *(v362 + 24);
  sub_1D4F39AB0(v256 + v275, v349, &qword_1EC7ECB30, &unk_1D565D0F0);
  v276 = type metadata accessor for CloudTVSeason.Relationships(0);
  OUTLINED_FUNCTION_1(v349);
  if (v281)
  {
    v277 = &qword_1EC7ECB30;
    v278 = &unk_1D565D0F0;
    v279 = v349;
  }

  else
  {
    sub_1D4F39AB0(v349, v324, &qword_1EC7ECA78, &qword_1D5622340);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_43_0(v324);
    if (!v281)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v282, v283, v284, v285);
      type metadata accessor for TVEpisode();
      sub_1D4F7C014(&qword_1EC7ECBB8);
      OUTLINED_FUNCTION_71_6();
      sub_1D4F7C014(v286);
      OUTLINED_FUNCTION_110_3();
      v255 = v365;
      sub_1D5612368();
      v256 = v364;
      sub_1D4E50004(v325, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v280);
      (*(v287 + 8))(v324, v280);
      v288 = 0;
      goto LABEL_34;
    }

    v277 = &qword_1EC7ECA78;
    v278 = &qword_1D5622340;
    v279 = v324;
  }

  sub_1D4E50004(v279, v277, v278);
  v288 = 1;
LABEL_34:
  v289 = v358;
  __swift_storeEnumTagSinglePayload(v358, v288, 1, v341);
  OUTLINED_FUNCTION_103_2(&a9);
  sub_1D4E68940(v289, v290, v291, v292);
  sub_1D4F39AB0(v256 + v275, v352, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v352);
  if (v281)
  {
    sub_1D4E50004(v352, &qword_1EC7ECB30, &unk_1D565D0F0);
    v293 = 1;
    v294 = v360[0];
  }

  else
  {
    sub_1D4F39AB0(v352 + *(v276 + 20), v353, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
    v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_43_0(v353);
    v294 = v360[0];
    if (v296)
    {
      sub_1D4E50004(v353, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v293 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v297, v298, v299, v300);
      sub_1D5613C48();
      OUTLINED_FUNCTION_77_2();
      sub_1D4F7C014(v301);
      OUTLINED_FUNCTION_110_3();
      sub_1D5612368();
      sub_1D4E50004(v325, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v295);
      v256 = v364;
      (*(v302 + 8))(v353, v295);
      v293 = 0;
    }
  }

  v303 = v355;
  v304 = v359;
  __swift_storeEnumTagSinglePayload(v359, v293, 1, v346);
  OUTLINED_FUNCTION_103_2(&a15);
  sub_1D4E68940(v304, v305, v306, v307);
  sub_1D4F39AB0(v256 + v275, v354, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v354);
  if (v281)
  {
    sub_1D4E50004(v354, &qword_1EC7ECB30, &unk_1D565D0F0);
    v308 = 1;
    v309 = v356;
  }

  else
  {
    sub_1D4F39AB0(v354 + *(v276 + 24), v303, &qword_1EC7ECA58, &unk_1D5622310);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
    v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_1(v303);
    v309 = v356;
    if (v311)
    {
      sub_1D4E50004(v303, &qword_1EC7ECA58, &unk_1D5622310);
      v308 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v312, v313, v314, v315);
      type metadata accessor for TVShow();
      sub_1D4F7C014(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4F7C014(v316);
      OUTLINED_FUNCTION_110_3();
      sub_1D5612368();
      v255 = v365;
      sub_1D4E50004(v325, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v310);
      v318 = *(v317 + 8);
      v319 = OUTLINED_FUNCTION_159();
      v320(v319);
      v308 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v309, v308, 1, v350);
  sub_1D4E68940(v309, v135 + v351, &qword_1EC7ECBA0, &unk_1D56270F0);
  v366[3] = v255;
  v366[4] = sub_1D4F7C014(&qword_1EC7EA388);
  __swift_allocate_boxed_opaque_existential_0(v366);
  sub_1D4F899DC();
  TVSeason.init(propertyProvider:)(v366, v357);

  OUTLINED_FUNCTION_24_0(v361);
  (*(v321 + 8))(v294);
  OUTLINED_FUNCTION_24_0(v363);
  (*(v322 + 8))(v348);
  OUTLINED_FUNCTION_26_14();
  sub_1D4F89A30();
  sub_1D4F89A30();
  OUTLINED_FUNCTION_46();
}

void TVSeason.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v312 = v3;
  v313 = v4;
  v311 = v5;
  v307 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v306 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5610088();
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v26);
  v305 = sub_1D5612B78();
  v27 = OUTLINED_FUNCTION_4(v305);
  v304 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v32 = OUTLINED_FUNCTION_48(v31);
  v301 = type metadata accessor for CloudTVSeason(v32);
  v33 = OUTLINED_FUNCTION_14(v301);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v319 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v48);
  v49 = sub_1D5613578();
  v50 = OUTLINED_FUNCTION_4(v49);
  v309 = v51;
  v310 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v308 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  v314 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v61 = OUTLINED_FUNCTION_22(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_2();
  v320 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v67 = OUTLINED_FUNCTION_22(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_2();
  v322 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v73 = OUTLINED_FUNCTION_22(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_2();
  v324 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v79 = OUTLINED_FUNCTION_22(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_2();
  v323 = v83;
  OUTLINED_FUNCTION_70_0();
  v300 = sub_1D5610788();
  v84 = OUTLINED_FUNCTION_4(v300);
  v299 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v93);
  v297 = sub_1D56107C8();
  v94 = OUTLINED_FUNCTION_4(v297);
  v296 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v100 = OUTLINED_FUNCTION_22(v99);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v276 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v107 = OUTLINED_FUNCTION_22(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  v318 = v110;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13_2();
  v317 = v112;
  OUTLINED_FUNCTION_70_0();
  v288 = sub_1D56128C8();
  v113 = OUTLINED_FUNCTION_4(v288);
  v287 = v114;
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v117);
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v122);
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_38_2();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v126);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_3();
  v315 = v130;
  v131 = OUTLINED_FUNCTION_70_0();
  v132 = type metadata accessor for CloudTVSeason.Attributes(v131);
  v133 = OUTLINED_FUNCTION_14(v132);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_5_0();
  v321 = v136;
  v294 = TVSeason.showName.getter();
  v293 = v137;
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  v138 = sub_1D56140F8();
  sub_1D4F7C014(&unk_1EDD546A0);
  sub_1D4F7C014(&qword_1EC7EA3C8);
  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v2);
  if (v139)
  {
    sub_1D4E50004(v2, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v138);
    v141 = *(v140 + 8);
    v142 = OUTLINED_FUNCTION_135_0();
    v143(v142);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v144 = OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_24_8(v144, v145, v146, v147);
  if (qword_1EC7E8B60 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  if (v325)
  {
    v148 = v325;
  }

  else
  {
    v148 = MEMORY[0x1E69E7CC0];
  }

  v291 = sub_1D511C730(v148);

  v149 = v292;
  if (qword_1EC7E8B68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v290 = v325;
  v289 = v326;
  if (qword_1EC7E8BC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v150 = v0;
  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  sub_1D56128D8();
  sub_1D5612898();
  OUTLINED_FUNCTION_136(&v315);
  v151(v1, v288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v288 = v325;
  v156 = v317;
  v157 = v295;
  if (qword_1EC7E8B80 != -1)
  {
    swift_once();
  }

  v158 = sub_1D5610978();
  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v105);
  if (v139)
  {
    sub_1D4E50004(v105, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v158);
    v160 = *(v159 + 8);
    v161 = OUTLINED_FUNCTION_15_2();
    v162(v161);
  }

  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_24_8(v156, v164, v165, v163);
  OUTLINED_FUNCTION_96_3();
  sub_1D4F84B48(v166, v167, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();

  v287 = v325;
  if (qword_1EC7E8B90 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v283 = v325;
  v286 = TVSeason.title.getter();
  v285 = v169;
  v170 = v318;
  if (qword_1EC7E8BB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  sub_1D501B598();
  v284 = v171;

  if (qword_1EC7E8BF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v149);
  if (v139)
  {
    sub_1D4E50004(v149, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v158);
    (*(v172 + 8))(v149, v158);
  }

  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_24_8(v170, v174, v175, v173);
  sub_1D56107A8();
  if (qword_1EC7E8BC0 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_108_5();
  v177 = *(v176 - 256);
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v178 = v299;
  (*(v299 + 104))(v298, *MEMORY[0x1E6975DC8], v300);
  v179 = v157;
  v292 = sub_1D56107B8();
  v181 = v180;
  v182 = *(v178 + 8);
  v183 = OUTLINED_FUNCTION_122_1();
  v184(v183);
  sub_1D4E50004(v177, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136(&v324);
  v185(v179, v297);
  if (qword_1EC7E8B88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  if (v326)
  {
    v186 = 0;
  }

  else
  {
    v186 = v325;
  }

  if (qword_1EC7E8BE8 != -1)
  {
    swift_once();
  }

  v187 = v132[18];
  sub_1D560C0A8();
  v188 = v321;
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  if (v283)
  {
    v189 = v283;
  }

  else
  {
    v189 = MEMORY[0x1E69E7CC0];
  }

  v190 = v293;
  *v188 = v294;
  v188[1] = v190;
  sub_1D4F39A1C(v315, v188 + v132[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_1(v132[6]);
  v191 = (v188 + v132[7]);
  v192 = v289;
  *v191 = v290;
  v191[1] = v192;
  sub_1D4F39A1C(v316, v188 + v132[8], &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_148_1(v132[9]);
  v193 = v132[10];
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39A1C(v194, v195, v196, v197);
  OUTLINED_FUNCTION_148_1(v132[11]);
  *(v188 + v132[12]) = v189;
  v198 = (v188 + v132[13]);
  v199 = v285;
  *v198 = v286;
  v198[1] = v199;
  OUTLINED_FUNCTION_148_1(v132[14]);
  v200 = v132[15];
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39A1C(v201, v202, v203, v204);
  v205 = (v188 + v132[16]);
  *v205 = v292;
  v205[1] = v181;
  v206 = v188 + v132[17];
  *v206 = v186;
  v206[8] = 0;
  v207 = type metadata accessor for CloudTVSeason.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v207);
  if (qword_1EC7E8BF8 != -1)
  {
    swift_once();
  }

  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v212 = v150;
  if (qword_1EC7E8C00 != -1)
  {
    swift_once();
  }

  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v214 = v320;
  if (qword_1EC7E8C08 != -1)
  {
    swift_once();
  }

  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v324, 1, v211);
  if (!v139 || (OUTLINED_FUNCTION_9_25(v322), !v139) || (OUTLINED_FUNCTION_74(v214), !v139))
  {
    v318 = v207;
    v216 = v277;
    sub_1D4F39AB0(v324, v277, &qword_1EC7ECBA8, &unk_1D56223B0);
    OUTLINED_FUNCTION_57(v216, 1, v211);
    if (v139)
    {
      sub_1D4E50004(v216, &qword_1EC7ECBA8, &unk_1D56223B0);
    }

    else
    {
      type metadata accessor for TVEpisode();
      sub_1D4F7C014(&qword_1EC7ECBB8);
      OUTLINED_FUNCTION_71_6();
      sub_1D4F7C014(v217);
      OUTLINED_FUNCTION_104_4();
      sub_1D4F1ABE8(v218);
      sub_1D560DA98();
      (*(v309 + 8))(v150, v310);
      OUTLINED_FUNCTION_24_0(v211);
      (*(v219 + 8))(v216, v211);
    }

    v220 = v281;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    v221 = OUTLINED_FUNCTION_144_1();
    OUTLINED_FUNCTION_24_8(v221, v222, v223, v224);
    v225 = v278;
    sub_1D4F39AB0(v322, v278, &qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_9_25(v225);
    v226 = v320;
    if (v139)
    {
      sub_1D4E50004(v225, &qword_1EC7EA788, &unk_1D56223A0);
    }

    else
    {
      sub_1D5613C48();
      OUTLINED_FUNCTION_77_2();
      sub_1D4F7C014(v227);
      v150 = v308;
      sub_1D4F1ABE8(v308);
      sub_1D560DA98();
      (*(v309 + 8))(v150, v310);
      OUTLINED_FUNCTION_24_0(v213);
      (*(v228 + 8))(v225, v213);
    }

    v229 = v282;
    v230 = v280;
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_24_8(v220, v232, v233, v231);
    sub_1D4F39AB0(v226, v230, &qword_1EC7ECBA0, &unk_1D56270F0);
    OUTLINED_FUNCTION_74(v230);
    if (v139)
    {
      sub_1D4E50004(v323, &qword_1EC7ECB30, &unk_1D565D0F0);
      sub_1D4E50004(v230, &qword_1EC7ECBA0, &unk_1D56270F0);
    }

    else
    {
      type metadata accessor for TVShow();
      sub_1D4F7C014(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4F7C014(v234);
      OUTLINED_FUNCTION_104_4();
      sub_1D4F1ABE8(v235);
      sub_1D560DA98();
      (*(v309 + 8))(v150, v310);
      sub_1D4E50004(v323, &qword_1EC7ECB30, &unk_1D565D0F0);
      OUTLINED_FUNCTION_24_0(v215);
      v237 = *(v236 + 8);
      v238 = OUTLINED_FUNCTION_91_0();
      v239(v238);
    }

    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_24_8(v229, v241, v242, v240);
    v243 = v279;
    sub_1D4F39A1C(v314, v279, &qword_1EC7ECA78, &qword_1D5622340);
    v244 = v318;
    sub_1D4F39A1C(v220, v243 + *(v318 + 20), &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D4F39A1C(v229, v243 + *(v244 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v244);
    v248 = OUTLINED_FUNCTION_128();
    sub_1D4F39A1C(v248, v249, v250, v251);
  }

  v253 = *v212;
  v252 = v212[1];
  v254 = v301;
  v255 = v301[5];
  OUTLINED_FUNCTION_23_20();
  v256 = v302;
  sub_1D4F899DC();
  sub_1D4F39AB0(v323, v256 + v254[6], &qword_1EC7ECB30, &unk_1D565D0F0);
  *v256 = v253;
  v256[1] = v252;
  *(v256 + v254[7]) = 1;
  *(v256 + v254[8]) = 1;
  LODWORD(v253) = *(type metadata accessor for TVSeason() + 20);

  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v260);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
  v265 = v303;
  sub_1D5612B38();
  OUTLINED_FUNCTION_78_5();
  sub_1D4F899DC();
  sub_1D5611A98();
  v266 = sub_1D5611A88();
  v317 = v267;
  v318 = v266;
  v268 = v304;
  v269 = v305;
  (*(v304 + 16))(v306, v265, v305);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v270, v271, v272, v269);
  v316 = sub_1D5611A38();
  v315 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4F7C014(&qword_1EC7ECBC8);
  sub_1D5610628();
  v273 = *(v268 + 8);
  v274 = OUTLINED_FUNCTION_215();
  v275(v274);
  OUTLINED_FUNCTION_26_14();
  sub_1D4F89A30();
  sub_1D4E50004(v323, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_22_19();
  sub_1D4F89A30();
  sub_1D4E50004(v324, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v320, &qword_1EC7ECBA0, &unk_1D56270F0);
  sub_1D4E50004(v322, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F8498C()
{
  sub_1D4F7C014(&unk_1EC7ECC90);

  return sub_1D5612668();
}

uint64_t sub_1D4F84B48(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  a3(0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4F8AFC4();
  v4 = OUTLINED_FUNCTION_70_7();

  return v4;
}

uint64_t sub_1D4F84CFC(void (*a1)(void))
{
  a1(0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4F8AFC4();
  v1 = OUTLINED_FUNCTION_70_7();

  return v1;
}

void sub_1D4F84DAC()
{
  OUTLINED_FUNCTION_47();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4(v69);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_9(v6, v63);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v68 = v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v67);
  v66 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_19(v16, v64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_38_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4(v21);
  v65 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = type metadata accessor for CuratorRelationshipProvider();
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = OUTLINED_FUNCTION_121();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39AB0(v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v47, v48, v30);
  if (v49)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v36, v1, &qword_1EC7EA790, &unk_1D561FB10);
    OUTLINED_FUNCTION_43_0(v1);
    if (v49)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      (*(v65 + 32))(v0, v1, v21);
      OUTLINED_FUNCTION_27();
      sub_1D4F4D0F8();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0();
      v50 = *(v65 + 8);
      v51 = OUTLINED_FUNCTION_46_1();
      v52(v51);
    }

    sub_1D4F39AB0(v36 + v30[5], v2, &qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_4_18(v2, 1);
    if (v49)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_40_3();
      v53 = OUTLINED_FUNCTION_145_1();
      v54(v53);
      OUTLINED_FUNCTION_27();
      sub_1D4F21B30();
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v55 = *(v66 + 8);
      v56 = OUTLINED_FUNCTION_122_1();
      v57(v56);
    }

    sub_1D4F39AB0(v36 + v30[6], v68, &qword_1EC7EA780, &unk_1D561FB20);
    OUTLINED_FUNCTION_5_1(v68);
    if (v49)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v58 = OUTLINED_FUNCTION_10_25();
      v59(v58);
      OUTLINED_FUNCTION_27();
      sub_1D4F4D1AC();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v60 = OUTLINED_FUNCTION_44_11();
      v61(v60);
    }

    v62 = v36 + v30[7];
    sub_1D4F8523C();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F8523C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v0, v1, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_1(v1);
  if (v12)
  {
    return sub_1D56162F8();
  }

  v13 = *(v4 + 32);
  v14 = OUTLINED_FUNCTION_46_1();
  v15(v14);
  sub_1D56162F8();
  sub_1D4F219C8();
  sub_1D5614CB8();
  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_98();
  return v18(v17);
}

void sub_1D4F853A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D5610088();
  v4 = OUTLINED_FUNCTION_4(v3);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_93_5();
  v15 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_114();
  sub_1D4F39AB0(v0, v2, &qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_9_25(v2);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_209();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    v27 = *v21;
    v28 = v21[1];
    sub_1D5614E28();
    v29 = v15[5];
    sub_1D4F7C014(&qword_1EDD53358);
    OUTLINED_FUNCTION_128();
    sub_1D5614CB8();
    v30 = (v21 + v15[6]);
    if (v30[1])
    {
      v31 = *v30;
      OUTLINED_FUNCTION_27();
      sub_1D5614E28();
    }

    else
    {
      OUTLINED_FUNCTION_36();
    }

    sub_1D4F39AB0(v21 + v15[7], v1, &qword_1EC7EA358, &unk_1D561DF50);
    OUTLINED_FUNCTION_5_1(v1);
    if (v26)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v32 = *(v35 + 32);
      v33 = OUTLINED_FUNCTION_91_0();
      v34(v33);
      OUTLINED_FUNCTION_27();
      sub_1D5614CB8();
      (*(v35 + 8))(v10, v3);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F8566C()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_22(v6, v44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_2();
  v19 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v23 = OUTLINED_FUNCTION_98();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_98_3();
  v29 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v29, v30, v19);
  if (v35)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_91_0();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v31 = OUTLINED_FUNCTION_145_1();
    sub_1D4F39AB0(v31, v32, v33, v34);
    OUTLINED_FUNCTION_9_25(v1);
    if (v35)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_50_8();
      v37(v36);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B0D4();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_162_2();
      v38 = OUTLINED_FUNCTION_113_0();
      v39(v38);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA7E0, &unk_1D5623AB0, *(v19 + 20));
    OUTLINED_FUNCTION_5_1(v0);
    if (v35)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_53_6();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_159_3();
      v42 = OUTLINED_FUNCTION_83_3();
      v43(v42);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F8596C()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v85 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v84 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v83 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v82 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v81 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v80 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v79 = v21;
  OUTLINED_FUNCTION_23();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_112_0();
  v26 = type metadata accessor for AssetFlavors();
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = OUTLINED_FUNCTION_140_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_38_2();
  sub_1D4F39AB0(v0, v2, &qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_9_25(v2);
  if (v39)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_135_0();
    sub_1D4F89CF0();
    sub_1D56162F8();
    sub_1D4F39AB0(v32, v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v1);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
      v41 = v84;
      v40 = v85;
    }

    else
    {
      v41 = v84;
      v40 = v85;
      OUTLINED_FUNCTION_81();
      v42(v41, v1, v3);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v43);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v44 = OUTLINED_FUNCTION_28_17();
      v45(v44);
    }

    sub_1D4F39AB0(v32 + v26[5], v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v25);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_81();
      v46(v41, v25, v3);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v47);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v48 = OUTLINED_FUNCTION_28_17();
      v49(v48);
    }

    v50 = v79;
    sub_1D4F39AB0(v32 + v26[6], v79, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v50);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v51 = OUTLINED_FUNCTION_18_23();
      v52(v51);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v53);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v54 = OUTLINED_FUNCTION_28_17();
      v55(v54);
    }

    v56 = v80;
    sub_1D4F39AB0(v32 + v26[7], v80, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v56);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v57 = OUTLINED_FUNCTION_18_23();
      v58(v57);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v59);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v60 = OUTLINED_FUNCTION_28_17();
      v61(v60);
    }

    v62 = v81;
    sub_1D4F39AB0(v32 + v26[8], v81, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v62);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v63 = OUTLINED_FUNCTION_18_23();
      v64(v63);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v65);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v66 = OUTLINED_FUNCTION_28_17();
      v67(v66);
    }

    v68 = v82;
    sub_1D4F39AB0(v32 + v26[9], v82, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v68);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v69 = OUTLINED_FUNCTION_18_23();
      v70(v69);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v71);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v72 = OUTLINED_FUNCTION_28_17();
      v73(v72);
    }

    v74 = v83;
    sub_1D4F39AB0(v32 + v26[10], v83, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v74);
    if (v39)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v75 = OUTLINED_FUNCTION_18_23();
      v76(v75);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v77);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      (*(v40 + 8))(v41, v3);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F85FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA6EC100](v9);
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1DA6EC100](v10);
  if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1DA6EC100](v11);
}

uint64_t sub_1D4F86040()
{
  if (v0[4])
  {
    return sub_1D56162F8();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_1D56162F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1DA6EC100](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1DA6EC100](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1DA6EC100](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x1DA6EC100](v9);
}

uint64_t sub_1D4F860C8()
{
  if (*(v0 + 49))
  {
    return sub_1D56162F8();
  }

  v1 = v0[3];
  v2 = v0[5];
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v7 = *v0;
  v6 = v0[1];
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v7);
  if (v5)
  {
    sub_1D56162F8();
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_1D56162F8();
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    return sub_1D56162F8();
  }

  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v6);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v1);
  if (v3)
  {
    return sub_1D56162F8();
  }

LABEL_5:
  sub_1D56162F8();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1DA6EC100](v8);
}

void sub_1D4F86198()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_22(v6, v44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_2();
  v19 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v23 = OUTLINED_FUNCTION_98();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_98_3();
  v29 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v29, v30, v19);
  if (v35)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_91_0();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v31 = OUTLINED_FUNCTION_145_1();
    sub_1D4F39AB0(v31, v32, v33, v34);
    OUTLINED_FUNCTION_9_25(v1);
    if (v35)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_50_8();
      v37(v36);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_162_2();
      v38 = OUTLINED_FUNCTION_113_0();
      v39(v38);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA798, &unk_1D5622EF0, *(v19 + 20));
    OUTLINED_FUNCTION_5_1(v0);
    if (v35)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_53_6();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B314();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_159_3();
      v42 = OUTLINED_FUNCTION_83_3();
      v43(v42);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F86498()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_22(v6, v44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_2();
  v19 = type metadata accessor for CloudUploadedAudio.Relationships(0);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v23 = OUTLINED_FUNCTION_98();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_98_3();
  v29 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v29, v30, v19);
  if (v35)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_91_0();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v31 = OUTLINED_FUNCTION_145_1();
    sub_1D4F39AB0(v31, v32, v33, v34);
    OUTLINED_FUNCTION_9_25(v1);
    if (v35)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_50_8();
      v37(v36);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_162_2();
      v38 = OUTLINED_FUNCTION_113_0();
      v39(v38);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA798, &unk_1D5622EF0, *(v19 + 20));
    OUTLINED_FUNCTION_5_1(v0);
    if (v35)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_53_6();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B314();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_159_3();
      v42 = OUTLINED_FUNCTION_83_3();
      v43(v42);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F86798()
{
  OUTLINED_FUNCTION_47();
  v94 = v0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v93);
  v85[2] = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v85[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_22(v11, v85[0]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v13 = OUTLINED_FUNCTION_4(v12);
  v89 = v14;
  v90 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_19(v18, v85[0]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v87 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v86 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4(v26);
  v91 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v95 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v88 = v36;
  OUTLINED_FUNCTION_23();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v85 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = v85 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = v85 - v44;
  v46 = type metadata accessor for CloudUserProfile.Relationships(0);
  v47 = OUTLINED_FUNCTION_14(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_118_1();
  sub_1D4F39AB0(v94, v0, &qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_43_0(v0);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_121();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v1, v45, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_9_25(v45);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
      v55 = v91;
    }

    else
    {
      v55 = v91;
      v56 = OUTLINED_FUNCTION_82_5();
      v57(v56, v45, v26);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v58 = OUTLINED_FUNCTION_81_5();
      v59(v58);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA7E0, &unk_1D5623AB0, v46[5]);
    OUTLINED_FUNCTION_9_25(v43);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v60 = OUTLINED_FUNCTION_82_5();
      v61(v60, v43, v26);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v62 = OUTLINED_FUNCTION_81_5();
      v63(v62);
    }

    sub_1D4F39AB0(v1 + v46[6], v40, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_9_25(v40);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v64 = OUTLINED_FUNCTION_82_5();
      v65(v64, v40, v26);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v66 = OUTLINED_FUNCTION_81_5();
      v67(v66);
    }

    v68 = v86;
    sub_1D4F39AB0(v1 + v46[7], v86, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_32_1(v68);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v69 = OUTLINED_FUNCTION_107_2();
      v70(v69);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v71 = OUTLINED_FUNCTION_135_0();
      v72(v71);
    }

    v73 = v87;
    sub_1D4F39AB0(v1 + v46[8], v87, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_32_1(v73);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v74 = OUTLINED_FUNCTION_107_2();
      v75(v74);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v76 = OUTLINED_FUNCTION_135_0();
      v77(v76);
    }

    v78 = v88;
    sub_1D4F39AB0(v1 + v46[9], v88, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_9_25(v78);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v79 = v95;
      (*(v55 + 32))(v95, v78, v26);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      (*(v55 + 8))(v79, v26);
    }

    v80 = v92;
    sub_1D4F39AB0(v1 + v46[10], v92, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_5_1(v80);
    if (v54)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v81 = OUTLINED_FUNCTION_10_25();
      v82(v81);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v83 = OUTLINED_FUNCTION_44_11();
      v84(v83);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F86E74()
{
  OUTLINED_FUNCTION_47();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v63);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v60);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_22(v12, v61);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_19(v17, v62);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = type metadata accessor for CloudTVEpisode.Associations(0);
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v34 = OUTLINED_FUNCTION_159();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_99_3();
  v40 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v40, v41, v30);
  if (v46)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_97_1();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v42 = OUTLINED_FUNCTION_209();
    sub_1D4F39AB0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_43_0(v0);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_52_9();
      v48(v47);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0();
      v49 = *(v1 + 8);
      v50 = OUTLINED_FUNCTION_46_1();
      v51(v50);
    }

    sub_1D4F39AB0(v2 + *(v30 + 20), v3, &qword_1EC7ECA78, &qword_1D5622340);
    OUTLINED_FUNCTION_74(v3);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v52 = OUTLINED_FUNCTION_29_13();
      v53(v52, v3, v13);
      OUTLINED_FUNCTION_27();
      sub_1D4F8940C();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v54 = OUTLINED_FUNCTION_111_4();
      v55(v54);
    }

    OUTLINED_FUNCTION_131_3(&qword_1EC7ECD18, &qword_1D5631040, *(v30 + 24));
    OUTLINED_FUNCTION_5_1(&qword_1EC7ECD80);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v56 = OUTLINED_FUNCTION_10_25();
      v57(v56);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v58 = OUTLINED_FUNCTION_44_11();
      v59(v58);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F872A4()
{
  OUTLINED_FUNCTION_47();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v63);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v60);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_22(v12, v61);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_19(v17, v62);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = type metadata accessor for CloudTVEpisode.Relationships(0);
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v34 = OUTLINED_FUNCTION_159();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_99_3();
  v40 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v40, v41, v30);
  if (v46)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_97_1();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v42 = OUTLINED_FUNCTION_209();
    sub_1D4F39AB0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_43_0(v0);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_52_9();
      v48(v47);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0();
      v49 = *(v1 + 8);
      v50 = OUTLINED_FUNCTION_46_1();
      v51(v50);
    }

    sub_1D4F39AB0(v2 + *(v30 + 20), v3, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_74(v3);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v52 = OUTLINED_FUNCTION_29_13();
      v53(v52, v3, v13);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B4A0();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v54 = OUTLINED_FUNCTION_111_4();
      v55(v54);
    }

    OUTLINED_FUNCTION_131_3(&qword_1EC7ECA58, &unk_1D5622310, *(v30 + 24));
    OUTLINED_FUNCTION_5_1(&qword_1EC7ECD98);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v56 = OUTLINED_FUNCTION_10_25();
      v57(v56);
      OUTLINED_FUNCTION_27();
      sub_1D4F89514();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v58 = OUTLINED_FUNCTION_44_11();
      v59(v58);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F876D4()
{
  OUTLINED_FUNCTION_47();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4(v63);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v60);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_22(v12, v61);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_19(v17, v62);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = type metadata accessor for CloudTVSeason.Relationships(0);
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v34 = OUTLINED_FUNCTION_159();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_99_3();
  v40 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v40, v41, v30);
  if (v46)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_97_1();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v42 = OUTLINED_FUNCTION_209();
    sub_1D4F39AB0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_43_0(v0);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_52_9();
      v48(v47);
      OUTLINED_FUNCTION_27();
      sub_1D4F8940C();
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0();
      v49 = *(v1 + 8);
      v50 = OUTLINED_FUNCTION_46_1();
      v51(v50);
    }

    sub_1D4F39AB0(v2 + *(v30 + 20), v3, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_74(v3);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v52 = OUTLINED_FUNCTION_29_13();
      v53(v52, v3, v13);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v54 = OUTLINED_FUNCTION_111_4();
      v55(v54);
    }

    OUTLINED_FUNCTION_131_3(&qword_1EC7ECA58, &unk_1D5622310, *(v30 + 24));
    OUTLINED_FUNCTION_5_1(&qword_1EC7ECB30);
    if (v46)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v56 = OUTLINED_FUNCTION_10_25();
      v57(v56);
      OUTLINED_FUNCTION_27();
      sub_1D4F89514();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v58 = OUTLINED_FUNCTION_44_11();
      v59(v58);
    }

    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}