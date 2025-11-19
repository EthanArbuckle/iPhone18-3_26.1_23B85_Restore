uint64_t sub_1D5241774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_1D5240E38(a4, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1D5240794(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t _s14IdentifierKindOMa()
{
  result = qword_1EC7F2510;
  if (!qword_1EC7F2510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5241870()
{
  result = qword_1EDD53BC8;
  if (!qword_1EDD53BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA428, &unk_1D561C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BC8);
  }

  return result;
}

uint64_t sub_1D52418D4(uint64_t a1)
{
  v2 = _s14IdentifierKindOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5241930(uint64_t a1, uint64_t a2)
{
  v4 = _s14IdentifierKindOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5241994(uint64_t a1, uint64_t a2)
{
  v4 = _s14IdentifierKindOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52419F8()
{
  result = sub_1D560F148();
  if (v1 <= 0x3F)
  {
    result = sub_1D560D4C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5241ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5241B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t MusicCreditsSection.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v113 = a5;
  v127 = a2;
  v128 = a4;
  v125 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v112 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2530, &qword_1D5648648);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v121 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2538, &qword_1D5648650);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v114 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v129 = v27;
  OUTLINED_FUNCTION_70_0();
  v28 = sub_1D560CE48();
  v29 = OUTLINED_FUNCTION_4(v28);
  v118 = v30;
  v119 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  v36 = sub_1D560CED8();
  v37 = OUTLINED_FUNCTION_4(v36);
  v123 = v38;
  v124 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v130 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v111 - v47;
  v49 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  OUTLINED_FUNCTION_24_0(v49);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v55 = (v54 - v53);
  v57 = *(v56 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  v122 = v57;
  OUTLINED_FUNCTION_33();
  v120 = v58;
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v126 = a3;
  v62 = sub_1D560D9A8();
  __swift_project_value_buffer(v62, qword_1EC7F1B20);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  v67 = v49[8];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2540, &qword_1D5648658);
  sub_1D56105B8();
  sub_1D4E7661C(v48, &qword_1EC7EB5C0, &unk_1D56223C0);
  v69 = v55 + v49[9];
  sub_1D5610658();
  v70 = sub_1D5610618();
  v116 = v71;
  v117 = v70;
  v115 = sub_1D56105C8();
  v72 = sub_1D56105F8();
  v73 = sub_1D56105E8();
  v74 = a1;
  v75 = sub_1D56105A8();
  if (qword_1EC7E9318 != -1)
  {
    swift_once();
  }

  v76 = qword_1EC87C4A8;
  if (qword_1EC87C4A8 >> 62)
  {
    v109 = qword_1EC87C4A8 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C4A8 < 0)
    {
      v109 = qword_1EC87C4A8;
    }

    v111 = v109;
    sub_1D560CDE8();

    v110 = sub_1D5615E18();

    v76 = v110;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v55 + v49[7]) = v76;
  v77 = (v55 + v49[10]);
  v78 = v116;
  *v77 = v117;
  v77[1] = v78;
  *(v55 + v49[11]) = v115;
  *(v55 + v49[12]) = v72;
  *(v55 + v49[13]) = v73;
  *(v55 + v49[14]) = v75;
  v117 = v74;
  sub_1D5610648();
  sub_1D560CE58();
  v79 = sub_1D560CE28();
  v81 = v80;
  v82 = v119;
  v83 = *(v118 + 8);
  v83(v35, v119);
  *v55 = v79;
  v55[1] = v81;
  sub_1D560CE58();
  v84 = sub_1D560CE38();
  v86 = v85;
  v83(v35, v82);
  v55[2] = v84;
  v55[3] = v86;
  v87 = v121;
  sub_1D560CEA8();
  v88 = sub_1D560CE98();
  if (__swift_getEnumTagSinglePayload(v87, 1, v88) == 1)
  {
    sub_1D4E7661C(v87, &qword_1EC7F2530, &qword_1D5648648);
    v89 = 1;
    v91 = v127;
    v90 = v128;
  }

  else
  {
    v92 = v114;
    sub_1D560CE78();
    OUTLINED_FUNCTION_24_0(v88);
    (*(v93 + 8))(v87, v88);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2548, &qword_1D5648660);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v94);
    v91 = v127;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v92, &qword_1EC7F2538, &qword_1D5648650);
      v89 = 1;
      v90 = v128;
    }

    else
    {
      sub_1D560CD98();
      v96 = v112;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
      v121 = type metadata accessor for CreditArtist();
      v101 = v92;
      sub_1D524300C(&qword_1EC7EB618, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_3_113();
      sub_1D524300C(v102, type metadata accessor for CreditArtist);
      v90 = v128;
      sub_1D5612368();
      sub_1D4E7661C(v96, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v94);
      (*(v103 + 8))(v101, v94);
      v89 = 0;
    }
  }

  v104 = v129;
  __swift_storeEnumTagSinglePayload(v129, v89, 1, v120);
  sub_1D5237C90(v104, v55 + v122);
  v131[3] = v49;
  v131[4] = sub_1D524300C(&qword_1EC7F24A8, type metadata accessor for MusicCreditsSectionPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v131);
  sub_1D52423D8(v55, boxed_opaque_existential_0);
  MusicCreditsSection.init(propertyProvider:)(v131, v125);

  OUTLINED_FUNCTION_24_0(v90);
  (*(v106 + 8))(v91, v90);
  OUTLINED_FUNCTION_24_0(v68);
  (*(v107 + 8))(v117, v68);
  (*(v123 + 8))(v130, v124);
  return sub_1D5238A60(v55);
}

uint64_t sub_1D52423D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCreditsSectionPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicCreditsSection.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v141 = a3;
  v140 = a2;
  v139 = a1;
  v155 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v154 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610088();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v161 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v148 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v147 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D5612B78();
  v28 = OUTLINED_FUNCTION_4(v27);
  v152 = v29;
  v153 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v151 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2550, &qword_1D5648668);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v146 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2558, &qword_1D5648670);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v145 = v43;
  OUTLINED_FUNCTION_70_0();
  v44 = sub_1D560CED8();
  v45 = OUTLINED_FUNCTION_4(v44);
  v149 = v46;
  v150 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  v159 = v49 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v160 = &v136 - v52;
  OUTLINED_FUNCTION_70_0();
  v138 = sub_1D5613578();
  v53 = OUTLINED_FUNCTION_4(v138);
  v137 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v59 = v58 - v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2538, &qword_1D5648650);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  v143 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  v66 = OUTLINED_FUNCTION_22(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_59_0();
  v71 = v69 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v136 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2530, &qword_1D5648648);
  v76 = OUTLINED_FUNCTION_22(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_59_0();
  v144 = v79 - v80;
  v82 = MEMORY[0x1EEE9AC00](v81);
  v142 = &v136 - v83;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v136 - v84;
  v86 = sub_1D560CE48();
  v87 = OUTLINED_FUNCTION_4(v86);
  v157 = v88;
  v158 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_59_0();
  v93 = v91 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v136 - v95;
  MusicCreditsSection.kind.getter();
  MusicCreditsSection.title.getter();
  v156 = v96;
  sub_1D560CE18();
  v97 = sub_1D560CE98();
  v162 = v85;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  if (qword_1EC7E8C30 != -1)
  {
    swift_once();
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  sub_1D524300C(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
  sub_1D524300C(&qword_1EC7EE850, type metadata accessor for MusicCreditsSection);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v74, 1, v101) != 1)
  {
    v136 = v97;
    sub_1D4F43D5C(v74, v71, &qword_1EC7EE880, &qword_1D562CC60);
    if (__swift_getEnumTagSinglePayload(v71, 1, v101) == 1)
    {
      sub_1D4E7661C(v71, &qword_1EC7EE880, &qword_1D562CC60);
      v102 = 1;
      v103 = v143;
    }

    else
    {
      type metadata accessor for CreditArtist();
      sub_1D524300C(&qword_1EC7EB618, type metadata accessor for CreditArtist);
      OUTLINED_FUNCTION_3_113();
      sub_1D524300C(v104, type metadata accessor for CreditArtist);
      sub_1D4F1ABE8(v59);
      v103 = v143;
      sub_1D560DA98();
      (*(v137 + 8))(v59, v138);
      OUTLINED_FUNCTION_24_0(v101);
      (*(v105 + 8))(v71, v101);
      v102 = 0;
    }

    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2548, &qword_1D5648660);
    __swift_storeEnumTagSinglePayload(v103, v102, 1, v106);
    v107 = v142;
    sub_1D560CE88();
    v108 = v162;
    sub_1D4E7661C(v162, &qword_1EC7F2530, &qword_1D5648648);
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v136);
    sub_1D5242EE0(v107, v108);
  }

  v109 = *v5;
  v110 = v5[1];
  v143 = v74;
  (*(v157 + 16))(v93, v156, v158);
  sub_1D4F43D5C(v162, v144, &qword_1EC7F2530, &qword_1D5648648);
  sub_1D560CE68();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  sub_1D560CEC8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);

  v119 = v160;
  sub_1D560CEB8();
  v120 = *(type metadata accessor for MusicCreditsSection() + 20);
  v121 = v147;
  sub_1D5611A28();
  v122 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v121, 0, 1, v122);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  v127 = v151;
  sub_1D5612B38();
  v128 = v149;
  v129 = v150;
  (*(v149 + 16))(v159, v119, v150);
  sub_1D5611A98();
  v130 = sub_1D5611A88();
  v147 = v131;
  v148 = v130;
  v133 = v152;
  v132 = v153;
  v134 = v154;
  (*(v152 + 16))(v154, v127, v153);
  __swift_storeEnumTagSinglePayload(v134, 0, 1, v132);
  v146 = sub_1D5611A38();
  v145 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D524300C(&qword_1EC7F2560, MEMORY[0x1E6974D50]);
  sub_1D5610628();
  (*(v133 + 8))(v127, v132);
  (*(v128 + 8))(v160, v129);
  sub_1D4E7661C(v162, &qword_1EC7F2530, &qword_1D5648648);
  (*(v157 + 8))(v156, v158);
  return sub_1D4E7661C(v143, &qword_1EC7EE880, &qword_1D562CC60);
}

uint64_t sub_1D5242EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2530, &qword_1D5648648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5242FA0()
{
  sub_1D524300C(&qword_1EC7EE860, type metadata accessor for MusicCreditsSection);

  return sub_1D5612668();
}

uint64_t sub_1D524300C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FlexAnalysisPropertyProvider()
{
  result = qword_1EC7F2568;
  if (!qword_1EC7F2568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52430C8()
{
  sub_1D4E518A0(319, &qword_1EC7F2578);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7F2580, &qword_1EC7ED000, &unk_1D56257F0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EC7F2588, &qword_1EC7ED008, &qword_1D5623E38);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D4F4E49C();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          v1 = sub_1D560D838();
          if (v9 <= 0x3F)
          {
            v1 = sub_1D5610088();
            if (v10 <= 0x3F)
            {
              sub_1D4E518A0(319, &qword_1EDD5F070);
              v1 = v11;
              if (v12 <= 0x3F)
              {
                sub_1D4E5CF94();
                v1 = v13;
                if (v14 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1D52432BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_4_1();
    goto LABEL_39;
  }

  v4 = qword_1EC7E8AB8;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_6_82();
  }

  sub_1D5244524();
  if (sub_1D5614D18())
  {
    v5 = v1[2];
    if (!v5)
    {

      v10 = 0;
      v9 = 0;
      v7 = 0;
      goto LABEL_20;
    }

    v6 = *(v2 + 2);
    v7 = *v2;
LABEL_7:

    v9 = &type metadata for FlexAnalysis.SampledValues;
    v10 = v6 & 1;
LABEL_20:
    *a1 = v7;
    *(a1 + 8) = v10;
    *(a1 + 15) = 0;
    *(a1 + 13) = 0;
    *(a1 + 9) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = v9;
    return result;
  }

  v11 = qword_1EC7E8AC0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_5_86();
  }

  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_21_15();
  if ((v11 & 1) == 0)
  {
    v15 = qword_1EC7E8AC8;

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_4_84();
    }

    OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_21_15();
    if (v15)
    {
      v12 = v1[4];
      if (v12)
      {
        v13 = &qword_1EC7ED008;
        v14 = &qword_1D5623E38;
        goto LABEL_18;
      }
    }

    else
    {
      v17 = qword_1EC7E8AD0;

      if (v17 != -1)
      {
        OUTLINED_FUNCTION_3_114();
      }

      OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_21_15();
      if ((v17 & 1) == 0)
      {
        v18 = qword_1EC7E8AD8;

        if (v18 != -1)
        {
          OUTLINED_FUNCTION_2_113();
        }

        OUTLINED_FUNCTION_22_9();
        OUTLINED_FUNCTION_21_15();
        if (v18)
        {
          v5 = v1[8];
          if (v5)
          {
            v6 = *(v2 + 14);
            v7 = v2[6];
            goto LABEL_7;
          }
        }

        else
        {
          v19 = qword_1EC7E8AE0;

          if (v19 != -1)
          {
            OUTLINED_FUNCTION_1_114();
          }

          v20 = OUTLINED_FUNCTION_22_9();

          if ((v20 & 1) == 0)
          {
            while (1)
            {
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_4_1();
LABEL_39:
              OUTLINED_FUNCTION_3_78();
              __break(1u);
            }
          }

          v5 = v2[11];
          if (v5)
          {
            v6 = *(v2 + 20);
            v7 = v2[9];
            goto LABEL_7;
          }
        }

        v10 = 0;
        v7 = 0;
        v9 = 0;
        goto LABEL_20;
      }

      v12 = v1[5];
      if (v12)
      {
        goto LABEL_12;
      }
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v12 = v1[3];
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_12:
  v13 = &qword_1EC7ED000;
  v14 = &unk_1D56257F0;
LABEL_18:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);

LABEL_26:

  *a1 = v12;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v16;
  return result;
}

void sub_1D52436D8()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_78();
  __break(1u);
}

void sub_1D5243784(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F25A8, &unk_1D5648850);
  if (swift_dynamicCastClass())
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D5688AB0);
    sub_1D5615D48();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5688A70);
    v2 = *(v1 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_78();
  __break(1u);
}

uint64_t sub_1D524390C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D56486E0;
  if (qword_1EC7E8AB8 != -1)
  {
    OUTLINED_FUNCTION_6_82();
  }

  *(v0 + 32) = qword_1EC87BF00;
  v1 = qword_1EC7E8AC0;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_5_86();
  }

  *(v0 + 40) = qword_1EC87BF08;
  v2 = qword_1EC7E8AC8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_4_84();
  }

  *(v0 + 48) = qword_1EC87BF10;
  v3 = qword_1EC7E8AD0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_3_114();
  }

  *(v0 + 56) = qword_1EC87BF18;
  v4 = qword_1EC7E8AD8;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_2_113();
  }

  *(v0 + 64) = qword_1EC87BF20;
  v5 = qword_1EC7E8AE0;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_114();
  }

  *(v0 + 72) = qword_1EC87BF28;
  qword_1EC87C4B0 = v0;
}

void sub_1D5243A8C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_42;
    }

    if (a1[1])
    {
      if ((a2[1] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *a1;
      v7 = *a2;
      OUTLINED_FUNCTION_12_64();
      if (v8)
      {
        goto LABEL_9;
      }
    }

    if ((sub_1D4EFA0D0(v4, v5) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_42;
    }
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10 || (sub_1D4EF8004(v9, v10) & 1) == 0)
    {
      return;
    }
  }

  else if (v10)
  {
    return;
  }

  v11 = a1[4];
  v12 = a2[4];
  if (v11)
  {
    if (!v12 || (sub_1D4EF8150(v11, v12) & 1) == 0)
    {
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  v13 = a1[5];
  v14 = a2[5];
  if (v13)
  {
    if (!v14 || (sub_1D4EF8004(v13, v14) & 1) == 0)
    {
      return;
    }
  }

  else if (v14)
  {
    return;
  }

  v15 = a1[8];
  v16 = a2[8];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    if (a1[7])
    {
      if ((a2[7] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = a1[6];
      v18 = a2[6];
      OUTLINED_FUNCTION_12_64();
      if (v19)
      {
        goto LABEL_9;
      }
    }

    if ((sub_1D4EFA0D0(v15, v16) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_42;
    }
  }

  v20 = a1[11];
  v21 = a2[11];
  if (!v20)
  {
    if (!v21)
    {

      goto LABEL_48;
    }

LABEL_42:

    return;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  if ((a1[10] & 1) == 0)
  {
    v22 = a1[9];
    v23 = a2[9];
    OUTLINED_FUNCTION_12_64();
    if ((v24 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_9:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  if ((a2[10] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_47:
  if ((sub_1D4EFA0D0(v20, v21) & 1) == 0)
  {
    return;
  }

LABEL_48:
  v25 = a1[12];
  v26 = a2[12];
  sub_1D4EF6F7C();
  if ((v27 & 1) == 0)
  {
    return;
  }

  v28 = type metadata accessor for FlexAnalysisPropertyProvider();
  v29 = v28[11];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return;
  }

  v30 = v28[12];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    return;
  }

  v31 = v28[13];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      return;
    }

    v36 = *v32 == *v34 && v33 == v35;
    if (!v36 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v35)
  {
    return;
  }

  OUTLINED_FUNCTION_44_0(v28[14]);
  sub_1D4F286E0();
  if (v37)
  {
    OUTLINED_FUNCTION_44_0(v28[15]);
    sub_1D4F286E0();
    if (v38)
    {
      OUTLINED_FUNCTION_44_0(v28[16]);
      sub_1D4F286E0();
      if (v39)
      {
        OUTLINED_FUNCTION_44_0(v28[17]);

        sub_1D4F286E0();
      }
    }
  }
}

void sub_1D5243D3C()
{
  v1 = v0;
  if (v0[2])
  {
    v2 = *v0;
    v3 = *(v0 + 2);
    OUTLINED_FUNCTION_27();
    if (v3)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x1DA6EC100](v4);
    }

    v5 = OUTLINED_FUNCTION_24();
    sub_1D4F07ACC(v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[3])
  {
    OUTLINED_FUNCTION_27();
    v7 = OUTLINED_FUNCTION_24();
    sub_1D4F07B78(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[4])
  {
    OUTLINED_FUNCTION_27();
    v9 = OUTLINED_FUNCTION_24();
    sub_1D4F07B18(v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[5])
  {
    OUTLINED_FUNCTION_27();
    v11 = OUTLINED_FUNCTION_24();
    sub_1D4F07B78(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[8])
  {
    v13 = v0[6];
    v14 = *(v0 + 14);
    OUTLINED_FUNCTION_27();
    if (v14)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      MEMORY[0x1DA6EC100](v15);
    }

    v16 = OUTLINED_FUNCTION_24();
    sub_1D4F07ACC(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[11])
  {
    v18 = v0[9];
    v19 = *(v0 + 20);
    OUTLINED_FUNCTION_27();
    if (v19)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      MEMORY[0x1DA6EC100](v20);
    }

    v21 = OUTLINED_FUNCTION_24();
    sub_1D4F07ACC(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v23 = v0[12];
  sub_1D4F070FC();
  v24 = type metadata accessor for FlexAnalysisPropertyProvider();
  v25 = v24[11];
  sub_1D560D838();
  sub_1D5244588(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_22_2();
  v26 = v24[12];
  sub_1D5610088();
  sub_1D5244588(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_22_2();
  v27 = (v1 + v24[13]);
  if (v27[1])
  {
    v28 = *v27;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v24[14]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v24[15]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v24[16]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v24[17]);

  sub_1D4F31AC0();
}

uint64_t sub_1D5243F98()
{
  sub_1D56162D8();
  sub_1D5243D3C();
  return sub_1D5616328();
}

void (*sub_1D5243FEC(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D52432BC(v5);
  return sub_1D5244058;
}

void sub_1D5244058(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4F508D8(v2, v2 + 32);

    sub_1D52436D8();
  }

  v4 = *(v2 + 64);

  sub_1D52436D8();
}

uint64_t sub_1D52440B8()
{
  sub_1D56162D8();
  sub_1D5243D3C();
  return sub_1D5616328();
}

uint64_t sub_1D524413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5244588(&qword_1EC7F25A0, type metadata accessor for FlexAnalysisPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D52441D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D524424C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D52442C0(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1D52442E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D5244358(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D5244390(uint64_t a1)
{
  v2 = sub_1D5244588(&qword_1EC7F25A0, type metadata accessor for FlexAnalysisPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D524440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5244588(&qword_1EC7F2590, type metadata accessor for FlexAnalysisPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D52444A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5244588(&qword_1EC7F2598, type metadata accessor for FlexAnalysisPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D5244524()
{
  result = qword_1EC7F25B0;
  if (!qword_1EC7F25B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED968, &qword_1D5626D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F25B0);
  }

  return result;
}

uint64_t sub_1D5244588(unint64_t *a1, void (*a2)(uint64_t))
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

void Song.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v99 = v2;
  v3 = sub_1D560D838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v96 = v5;
  v97 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v95 = v9 - v8;
  v85 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_4(v85);
  v94 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v89 = v15 - v14;
  v92 = sub_1D5611AB8();
  v16 = OUTLINED_FUNCTION_4(v92);
  v86 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v78 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v83 = &v78 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_0();
  v82 = v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v81 = &v78 - v44;
  v45 = sub_1D5613838();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v93 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v53 = v52 - v51;
  v54 = *(v48 + 16);
  v54(v52 - v51, v0, v45);
  v55 = sub_1D56137E8();
  v90 = v56;
  v91 = v55;
  v57 = sub_1D56135B8();
  v87 = v58;
  v88 = v57;
  sub_1D56137F8();
  sub_1D5613628();
  sub_1D56137D8();
  v84 = sub_1D5613668();
  v59 = v98;
  v60 = v85;
  __swift_storeEnumTagSinglePayload(v98, 1, 1, v85);
  v101 = v45;
  v102 = MEMORY[0x1E6976BC8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
  v79 = v53;
  v54(boxed_opaque_existential_0, v53, v45);
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v80 = v45;
  sub_1D5612AF8();
  v62 = v89;
  sub_1D5611A98();
  (*(v86 + 8))(v22, v92);
  sub_1D560FDD8();
  (*(v94 + 8))(v62, v60);
  sub_1D4E7661C(v59, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v60);
  v63 = v29;
  sub_1D4F7AFE0(v29, v59);
  __swift_destroy_boxed_opaque_existential_1(v100);
  v64 = v95;
  sub_1D560EC98();
  sub_1D4F43D5C(v59, v29, &qword_1EC7EA358, &unk_1D561DF50);
  v65 = type metadata accessor for MusicSiriRepresentation();
  v66 = v99;
  v67 = v81;
  sub_1D4F43D5C(v81, v99 + v65[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v68 = v82;
  sub_1D4F43D5C(v82, v66 + v65[9], &qword_1EC7EC478, &unk_1D56299D0);
  v69 = v83;
  sub_1D4F43D5C(v83, v66 + v65[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v100[0]) = 12;
  v70 = v64;
  sub_1D50391CC();
  v72 = v71;
  v74 = v73;
  sub_1D4E7661C(v63, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v96 + 8))(v70, v97);
  sub_1D4E7661C(v98, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v69, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v68, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v67, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v93 + 8))(v79, v80);
  v75 = v99;
  *v99 = v72;
  v75[1] = v74;
  *(v75 + 16) = 12;
  v76 = v90;
  v75[3] = v91;
  v75[4] = v76;
  v77 = v87;
  v75[5] = v88;
  v75[6] = v77;
  OUTLINED_FUNCTION_46();
}

uint64_t Song.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D56128E8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1D5613698();
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

uint64_t Song.catalogID.getter()
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
  v14 = &v19 - v13;
  sub_1D5613838();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v3 + 8))(v8, v0);
  v15 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D4E7661C(v14, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v16 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0(v15);
    (*(v17 + 8))(v14, v15);
  }

  return v16;
}

uint64_t sub_1D5244FD4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (!a1())
  {
    return 0;
  }

  v3 = a2();

  return v3;
}

uint64_t Song.spatialOffsets.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2608, &qword_1D5648878);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D5613768();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  OUTLINED_FUNCTION_2_49(v6);
  if (v7)
  {
    sub_1D4E7661C(v0, &qword_1EC7F2608, &qword_1D5648878);
    return 0;
  }

  else
  {
    sub_1D5431B8C(v12);
    OUTLINED_FUNCTION_24_0(v1);
    (*(v8 + 8))(v0, v1);
    memcpy(v11, v12, sizeof(v11));
    v9 = v11[20];

    sub_1D524528C(v11);
  }

  return v9;
}

void *Song.spatialTimingInformation.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2608, &qword_1D5648878);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  sub_1D5613768();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2608, &qword_1D5648878);
    sub_1D51D30CC(v12);
  }

  else
  {
    sub_1D5431B8C(v11);
    OUTLINED_FUNCTION_24_0(v7);
    (*(v8 + 8))(v1, v7);
    memcpy(v12, v11, sizeof(v12));
    nullsub_1(v12, v9);
  }

  return memcpy(a1, v12, 0xB0uLL);
}

uint64_t Song.audioAnalysis.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D52453FC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v7 = OUTLINED_FUNCTION_2_49(v6);
  if (v8)
  {
    sub_1D4E7661C(v0, &qword_1EC7F1548, &unk_1D5649E50);
    type metadata accessor for AudioAnalysis();
    v9 = OUTLINED_FUNCTION_17_2();
    return __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  }

  else
  {
    sub_1D4EC9674(v7);
    OUTLINED_FUNCTION_24_0(v1);
    return (*(v11 + 8))(v0, v1);
  }
}

void sub_1D52453FC()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v7 = sub_1D560CD48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2688, &unk_1D5648BD0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43_7();
  sub_1D5613648();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2690, &unk_1D564E650);
  OUTLINED_FUNCTION_10_79(v15);
  if (v16)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2688, &unk_1D5648BD0);
    v21 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v17 = sub_1D560CD98();
    OUTLINED_FUNCTION_11_80(v17);
    type metadata accessor for AudioAnalysis();
    sub_1D52468E8(&qword_1EC7F2698, type metadata accessor for AudioAnalysis);
    sub_1D52468E8(&qword_1EC7F26A0, type metadata accessor for AudioAnalysis);
    OUTLINED_FUNCTION_2_114();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v18 = OUTLINED_FUNCTION_12_65();
    v19(v18);
    OUTLINED_FUNCTION_24_0(v2);
    (*(v20 + 8))(v1, v2);
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v22 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v22, v21, 1, v23);
  OUTLINED_FUNCTION_46();
}

uint64_t Song.flexAnalysis.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D5245750();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v7 = OUTLINED_FUNCTION_2_49(v6);
  if (v8)
  {
    sub_1D4E7661C(v0, &qword_1EC7F1558, &unk_1D5649E60);
    type metadata accessor for FlexAnalysis();
    v9 = OUTLINED_FUNCTION_17_2();
    return __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  }

  else
  {
    sub_1D4EC9728(v7);
    OUTLINED_FUNCTION_24_0(v1);
    return (*(v11 + 8))(v0, v1);
  }
}

void sub_1D5245750()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v7 = sub_1D560CD48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2678, &qword_1D5648BC0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43_7();
  sub_1D5613608();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2680, &qword_1D5648BC8);
  OUTLINED_FUNCTION_10_79(v15);
  if (v16)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2678, &qword_1D5648BC0);
    v21 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v17 = sub_1D560CD98();
    OUTLINED_FUNCTION_11_80(v17);
    type metadata accessor for FlexAnalysis();
    sub_1D52468E8(&qword_1EC7ED018, type metadata accessor for FlexAnalysis);
    sub_1D52468E8(&qword_1EC7ECFF0, type metadata accessor for FlexAnalysis);
    OUTLINED_FUNCTION_2_114();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v18 = OUTLINED_FUNCTION_12_65();
    v19(v18);
    OUTLINED_FUNCTION_24_0(v2);
    (*(v20 + 8))(v1, v2);
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v22 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v22, v21, 1, v23);
  OUTLINED_FUNCTION_46();
}

void Song.credits.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v7 = sub_1D560CD48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2618, &qword_1D56488A0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43_7();
  sub_1D5613808();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2620, &qword_1D56488A8);
  OUTLINED_FUNCTION_10_79(v15);
  if (v16)
  {
    sub_1D4E7661C(v1, &qword_1EC7F2618, &qword_1D56488A0);
    v21 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v17 = sub_1D560CD98();
    OUTLINED_FUNCTION_11_80(v17);
    type metadata accessor for MusicCreditsSection();
    sub_1D52468E8(&qword_1EC7EE860, type metadata accessor for MusicCreditsSection);
    sub_1D52468E8(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection);
    OUTLINED_FUNCTION_2_114();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v18 = OUTLINED_FUNCTION_12_65();
    v19(v18);
    OUTLINED_FUNCTION_24_0(v2);
    (*(v20 + 8))(v1, v2);
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2628, &qword_1D56488B0);
  v22 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v22, v21, 1, v23);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5245C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D52468E8(&qword_1EC7F2670, type metadata accessor for AudioAnalysis);
  OUTLINED_FUNCTION_15_69();
  OUTLINED_FUNCTION_63();

  qword_1EC7F25B8 = v0;
  return result;
}

uint64_t sub_1D5245CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D52468E8(&qword_1EC7ED960, type metadata accessor for FlexAnalysis);
  OUTLINED_FUNCTION_15_69();
  OUTLINED_FUNCTION_63();

  qword_1EC7F25C0 = v0;
  return result;
}

uint64_t sub_1D5245DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D52467D8();
  v0 = sub_1D560D138();

  qword_1EC7F25C8 = v0;
  return result;
}

uint64_t sub_1D5245ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  if (qword_1EC7E8C30 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EC7EE800;
  sub_1D52468E8(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection);

  v1 = sub_1D560D108();

  qword_1EC7F25D0 = v1;
  return result;
}

uint64_t sub_1D524603C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D5615288();
  v0 = sub_1D560D138();

  qword_1EC7F25D8 = v0;
  return result;
}

uint64_t sub_1D5246118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D524675C(&qword_1EC7F0C78, &qword_1EC7F0C80, &qword_1D5648AE0, sub_1D5161350);
  v0 = sub_1D560D138();

  qword_1EC7F25E0 = v0;
  return result;
}

uint64_t sub_1D5246230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D524675C(&qword_1EC7F2640, &qword_1EC7F2648, &qword_1D5648AB0, sub_1D5246708);
  v0 = sub_1D560D138();

  qword_1EC7F25E8 = v0;
  return result;
}

uint64_t sub_1D5246358()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F25F0 = v0;
  return result;
}

uint64_t sub_1D5246430()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D52468E8(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  OUTLINED_FUNCTION_15_69();
  OUTLINED_FUNCTION_63();

  qword_1EC7F25F8 = v0;
  return result;
}

uint64_t sub_1D5246514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D52466B4();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F2600 = v0;
  return result;
}

unint64_t sub_1D52466B4()
{
  result = qword_1EC7F2638;
  if (!qword_1EC7F2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2638);
  }

  return result;
}

unint64_t sub_1D5246708()
{
  result = qword_1EC7F2650;
  if (!qword_1EC7F2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2650);
  }

  return result;
}

uint64_t sub_1D524675C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D52467D8()
{
  result = qword_1EC7F2658;
  if (!qword_1EC7F2658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2660, &qword_1D5648B68);
    sub_1D5246894();
    sub_1D52468E8(&qword_1EDD5CF88, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2658);
  }

  return result;
}

unint64_t sub_1D5246894()
{
  result = qword_1EC7F2668;
  if (!qword_1EC7F2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2668);
  }

  return result;
}

uint64_t sub_1D52468E8(unint64_t *a1, void (*a2)(uint64_t))
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

void CatalogInternalSearchRawResponse.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F26A8, &unk_1D5648BE0);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_108();
  v9 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D5246CC0();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1D5246D14();
    sub_1D5615F78();
    v10 = v23;
    v11 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A58, &qword_1D564C060);
    sub_1D5247198();
    sub_1D5615F78();
    v18 = v23;
    OUTLINED_FUNCTION_65_4();
    sub_1D5246E44();
    sub_1D5615F78();
    v12 = OUTLINED_FUNCTION_28_0();
    v13(v12);
    v17 = v33;
    v16 = v34;
    v14 = v36;
    v15 = v35;
    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    v22[3] = v26;
    v22[4] = v27;
    v22[5] = v23;
    v22[6] = v33;
    v22[7] = v34;
    v22[8] = v35;
    v22[9] = v36;
    memcpy(v4, v22, 0x50uLL);
    sub_1D5246E98(v22, &v23);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v23 = v10;
    v24 = v11;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v18;
    v29 = v17;
    v30 = v16;
    v31 = v15;
    v32 = v14;
    sub_1D50A1F8C(&v23);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5246CC0()
{
  result = qword_1EC7F26B0;
  if (!qword_1EC7F26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26B0);
  }

  return result;
}

unint64_t sub_1D5246D14()
{
  result = qword_1EC7F26B8;
  if (!qword_1EC7F26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26B8);
  }

  return result;
}

unint64_t sub_1D5246D68(uint64_t a1)
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

uint64_t sub_1D5246DAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1D5246DF0(result, a2);
  }

  return result;
}

uint64_t sub_1D5246DF0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1D5246E44()
{
  result = qword_1EC7F26C0;
  if (!qword_1EC7F26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26C0);
  }

  return result;
}

void CatalogInternalSearchRawResponse.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F26C8, &qword_1D5648BF0);
  OUTLINED_FUNCTION_4(v35);
  v36 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v15 = v0[4];
  v14 = v0[5];
  v16 = *(v0 + 3);
  v31 = *(v0 + 4);
  v32 = v16;
  v18 = v3[3];
  v17 = v3[4];
  v33 = v14;
  v34 = v17;
  OUTLINED_FUNCTION_23_23(v3, v18);
  v19 = OUTLINED_FUNCTION_58_24();
  sub_1D5247100(v19, v20, v21, v22, v23);
  sub_1D5246CC0();
  v24 = v35;
  sub_1D56163D8();
  *&v37 = v10;
  *(&v37 + 1) = v11;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  v39 = v15;
  sub_1D5247144();
  OUTLINED_FUNCTION_50_24();
  sub_1D5616068();
  v25 = OUTLINED_FUNCTION_58_24();
  sub_1D5246DAC(v25, v26, v27, v28, v29);
  if (v1)
  {
    (*(v36 + 8))(v9, v24);
  }

  else
  {
    v30 = v36;
    *&v37 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A58, &qword_1D564C060);
    sub_1D5247198();
    OUTLINED_FUNCTION_50_24();
    sub_1D5616068();
    v38 = v31;
    v37 = v32;
    OUTLINED_FUNCTION_65_4();
    sub_1D5247374();
    OUTLINED_FUNCTION_50_24();
    sub_1D5616068();
    (*(v30 + 8))(v9, v24);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5247100(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1D50A2198(result, a2);
  }

  return result;
}

unint64_t sub_1D5247144()
{
  result = qword_1EC7F26D0;
  if (!qword_1EC7F26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26D0);
  }

  return result;
}

void sub_1D5247198()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A58, &qword_1D564C060);
    v1();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D5247208()
{
  result = qword_1EC7F26E0;
  if (!qword_1EC7F26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2C0, &qword_1D5630FB0);
    sub_1D52472B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26E0);
  }

  return result;
}

void sub_1D52472B0()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D5246D68(&qword_1EDD5CE68);
    sub_1D5246D68(qword_1EDD5CE70);
    OUTLINED_FUNCTION_222();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D5247374()
{
  result = qword_1EC7F26E8;
  if (!qword_1EC7F26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26E8);
  }

  return result;
}

uint64_t sub_1D52473C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D52474CC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 7107189;
}

void sub_1D524750C()
{
  OUTLINED_FUNCTION_83_14();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2850, &qword_1D5649340);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_4();
  v12 = v5[3];
  v13 = v5[4];
  OUTLINED_FUNCTION_6_1(v5);
  sub_1D524E824();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  OUTLINED_FUNCTION_46_24();
  if (!v1)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_46_24();
    v18 = *(type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0) + 24);
    OUTLINED_FUNCTION_190_1();
    sub_1D560FDA8();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v19);
    OUTLINED_FUNCTION_48_26();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D524767C()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2860, &qword_1D5649348);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_29_28();
  v13 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(v12);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v18 = v3[3];
  v17 = v3[4];
  v19 = OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_23_23(v19, v20);
  sub_1D524E824();
  OUTLINED_FUNCTION_61_24();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_44_28();
    *(v1 + 16) = OUTLINED_FUNCTION_35_39(v21, v22);
    *(v1 + 24) = v23;
    sub_1D560FDA8();
    OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v24);
    OUTLINED_FUNCTION_36_35();
    v25 = OUTLINED_FUNCTION_45_28();
    v26(v25, v17);
    v27 = *(v28 + 24);
    sub_1D4FB8058();
    sub_1D524E650();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1D524E6A8(v1, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D52478EC()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560FDA8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB008, &qword_1D561DDC0);
  OUTLINED_FUNCTION_14(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v26 = v6[1];
  v27 = v4[1];
  if (!v26)
  {
    if (v27)
    {
      goto LABEL_25;
    }

LABEL_10:
    v29 = v6[3];
    v30 = v4[3];
    if (v29)
    {
      if (!v30)
      {
        goto LABEL_25;
      }

      v31 = v6[2] == v4[2] && v29 == v30;
      if (!v31 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v30)
    {
      goto LABEL_25;
    }

    v48 = v10;
    v32 = *(v2(0) + 24);
    v33 = *(v20 + 48);
    sub_1D4FB8150();
    sub_1D4FB8150();
    OUTLINED_FUNCTION_77_12();
    if (__swift_getEnumTagSinglePayload(v34, v35, v36) == 1)
    {
      OUTLINED_FUNCTION_77_12();
      if (__swift_getEnumTagSinglePayload(v37, v38, v39) == 1)
      {
        sub_1D4E50004(v25, &qword_1EC7EAFF8, &qword_1D561DDB8);
        goto LABEL_25;
      }
    }

    else
    {
      sub_1D4FB8150();
      OUTLINED_FUNCTION_77_12();
      if (__swift_getEnumTagSinglePayload(v40, v41, v42) != 1)
      {
        v43 = v48;
        (*(v48 + 32))(v15, &v25[v33], v7);
        OUTLINED_FUNCTION_0_146();
        sub_1D5246D68(v44);
        OUTLINED_FUNCTION_134_0();
        sub_1D5614D18();
        v45 = *(v43 + 8);
        v46 = OUTLINED_FUNCTION_71();
        v45(v46);
        (v45)(v0, v7);
        sub_1D4E50004(v25, &qword_1EC7EAFF8, &qword_1D561DDB8);
        goto LABEL_25;
      }

      (*(v48 + 8))(v0, v7);
    }

    sub_1D4E50004(v25, &qword_1EC7EB008, &qword_1D561DDC0);
    goto LABEL_25;
  }

  if (v27)
  {
    v28 = *v6 == *v4 && v26 == v27;
    if (v28 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5247C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5247D34(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 1954047348;
  }

  return 7107189;
}

void sub_1D5247D78()
{
  OUTLINED_FUNCTION_83_14();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2828, &qword_1D5649330);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_4();
  v12 = v5[3];
  v13 = v5[4];
  OUTLINED_FUNCTION_6_1(v5);
  sub_1D524E7D0();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  OUTLINED_FUNCTION_46_24();
  if (!v1)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_46_24();
    v18 = *(type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0) + 24);
    OUTLINED_FUNCTION_190_1();
    sub_1D560FDA8();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v19);
    OUTLINED_FUNCTION_48_26();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D5247EE8()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = sub_1D560FDA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9();
  if (v0[1])
  {
    v17 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[3])
  {
    v18 = v0[2];
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v19 = *(v3(0) + 24);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v7 + 32))(v12, v1, v4);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v20);
    sub_1D5614CB8();
    (*(v7 + 8))(v12, v4);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52480EC()
{
  OUTLINED_FUNCTION_164();
  sub_1D5247EE8();
  return sub_1D5616328();
}

void sub_1D524812C()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2840, &qword_1D5649338);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_29_28();
  v13 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(v12);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v18 = v3[3];
  v17 = v3[4];
  v19 = OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_23_23(v19, v20);
  sub_1D524E7D0();
  OUTLINED_FUNCTION_61_24();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_44_28();
    *(v1 + 16) = OUTLINED_FUNCTION_35_39(v21, v22);
    *(v1 + 24) = v23;
    sub_1D560FDA8();
    OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_146();
    sub_1D5246D68(v24);
    OUTLINED_FUNCTION_36_35();
    v25 = OUTLINED_FUNCTION_45_28();
    v26(v25, v17);
    v27 = *(v29 + 24);
    sub_1D4FB8058();
    sub_1D524E650();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_5_87();
    sub_1D524E6A8(v1, v28);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D524838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4EFBF50();
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {

      OUTLINED_FUNCTION_159();
      sub_1D4EFBF90();
      OUTLINED_FUNCTION_82();

      if (a4)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5248454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461746963 && a2 == 0xE900000000000073;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5248568(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461746963;
  }

  return 0x736B6E696CLL;
}

void sub_1D52485B8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27C0, &qword_1D5649308);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D524E584();
  OUTLINED_FUNCTION_79_14();
  OUTLINED_FUNCTION_22_14();
  sub_1D5616028();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27D0, &qword_1D5649310);
    sub_1D524E758();
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27E8, &unk_1D5649318);
    sub_1D524E5D8();
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
  }

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_134_0();
  v12(v11);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void sub_1D52487BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_1D56162F8();
    sub_1D5614E28();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D56162F8();
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1D56162F8();
    return;
  }

  sub_1D56162F8();
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D56162F8();
  OUTLINED_FUNCTION_222();
  sub_1D4F0A0C8();
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1D56162F8();
  OUTLINED_FUNCTION_159();

  sub_1D4F0A088();
}

uint64_t sub_1D5248880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_51_25();
  sub_1D52487BC(v5, v6, v7, v8, a4);
  return sub_1D5616328();
}

void sub_1D52488D8()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2800, &qword_1D5649328);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_108();
  v6 = v1[3];
  v7 = v1[4];
  v8 = OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_23_23(v8, v9);
  sub_1D524E584();
  sub_1D5616398();
  sub_1D5615F38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27D0, &qword_1D5649310);
  sub_1D524E758();
  OUTLINED_FUNCTION_41_31();
  sub_1D5615F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27E8, &unk_1D5649318);
  sub_1D524E5D8();
  OUTLINED_FUNCTION_41_31();
  sub_1D5615F78();
  v10 = OUTLINED_FUNCTION_54_22();
  v11(v10);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_26();
}

void sub_1D5248B58()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v8 = *v0;
  v7 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  if (v2[1] != 1)
  {
    if (v7 != 1)
    {
      v19 = OUTLINED_FUNCTION_30_40();
      sub_1D50A2198(v19, v20);
      v21 = OUTLINED_FUNCTION_7_87();
      sub_1D50A2198(v21, v22);
      v23 = OUTLINED_FUNCTION_7_87();
      v27 = sub_1D524838C(v23, v24, v25, v26, v8, v7, v10, v9);

      v28 = OUTLINED_FUNCTION_7_87();
      sub_1D5246DF0(v28, v29);
      if ((v27 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }

LABEL_5:
    v11 = OUTLINED_FUNCTION_30_40();
    sub_1D50A2198(v11, v12);
    v13 = OUTLINED_FUNCTION_7_87();
    sub_1D50A2198(v13, v14);
    v15 = OUTLINED_FUNCTION_7_87();
    sub_1D5246DF0(v15, v16);
    v17 = OUTLINED_FUNCTION_30_40();
    sub_1D5246DF0(v17, v18);
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (v3[4] && v1[4])
  {
    v30 = v1[4];

    OUTLINED_FUNCTION_159();
    sub_1D4F2EA04();
    OUTLINED_FUNCTION_82();
  }

LABEL_6:
  OUTLINED_FUNCTION_46();
}

void sub_1D5248C68(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  if (v4 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v6 = v2[2];
    v5 = v2[3];
    v7 = *v2;
    sub_1D56162F8();
    sub_1D52487BC(a1, v7, v4, v6, v5);
  }

  if (v2[4])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_159();

    sub_1D4F38CEC();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D5248D1C()
{
  OUTLINED_FUNCTION_164();
  sub_1D5248C68(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5248D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_1D5616168() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5248D9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1D5248E24()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2960, &qword_1D5649D40);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_108();
  v9 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D524F4E0();
  sub_1D56163D8();
  sub_1D5616028();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5248F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_222();

  return sub_1D5614E28();
}

uint64_t sub_1D5248FA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (a2)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

void sub_1D5249014()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2950, &qword_1D5649D38);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9();
  v7 = v2[3];
  v8 = v2[4];
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524F4E0();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  if (!v0)
  {
    sub_1D5615F38();
    v9 = OUTLINED_FUNCTION_68_18();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_82_16();
}

uint64_t sub_1D5249134(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 2)
  {
    if (a5 != 2)
    {
      return 0;
    }
  }

  else if (a5 == 2 || ((a5 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if (BYTE1(a1) == 2)
  {
    if (BYTE1(a5) != 2)
    {
      return 0;
    }
  }

  else if (BYTE1(a5) == 2 || ((BYTE1(a5) ^ BYTE1(a1)) & 1) != 0)
  {
    return 0;
  }

  if (a3 == 1)
  {
    if (a7 == 1)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a7 == 1)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  v10 = a2 == a6 && a3 == a7;
  if (!v10 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v7 = OUTLINED_FUNCTION_159();

  return sub_1D4EF81E0(v7, v8);
}

uint64_t sub_1D524922C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574614365646968 && a2 == 0xEE00736569726F67;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6C61727574616ELL && a2 == 0xEF65676175676E61;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D524938C(char a1)
{
  result = 0x6574614365646968;
  switch(a1)
  {
    case 1:
      result = 0x4C6C61727574616ELL;
      break;
    case 2:
      result = 0x6E6F73616572;
      break;
    case 3:
      result = 0x726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D5249420()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2908, &qword_1D5649A40);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D524F080();
  OUTLINED_FUNCTION_79_14();
  OUTLINED_FUNCTION_22_14();
  sub_1D5616038();
  if (!v0)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D5616038();
    OUTLINED_FUNCTION_65_4();
    sub_1D524F128();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&qword_1EC7ECA00);
    OUTLINED_FUNCTION_7_7();
    sub_1D56160C8();
  }

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_134_0();
  v12(v11);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void sub_1D52495EC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v5 = HIBYTE(a2);
  if (a2 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (v5 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (a4 == 1 || (sub_1D56162F8(), !a4))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  v6 = OUTLINED_FUNCTION_159();

  sub_1D4F06928(v6, v7);
}

void sub_1D52496C0()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F28F0, &unk_1D5649A30);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = v1[3];
  v9 = v1[4];
  OUTLINED_FUNCTION_6_1(v1);
  sub_1D524F080();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  OUTLINED_FUNCTION_57_25();
  sub_1D5615F48();
  OUTLINED_FUNCTION_57_25();
  sub_1D5615F48();
  OUTLINED_FUNCTION_65_4();
  sub_1D524F0D4();
  OUTLINED_FUNCTION_57_25();
  sub_1D5615F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D4F88BF4(&qword_1EDD52778);
  OUTLINED_FUNCTION_57_25();
  sub_1D5615FD8();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_15_2();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_26();
}

void sub_1D5249904()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F27B0, &unk_1D56492F8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45();
  v9 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D524E364();
  sub_1D56163D8();
  sub_1D524E530();
  sub_1D56160C8();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5249A48(__int16 a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_164();
  sub_1D52495EC(v7, a1, a2, a3);
  return sub_1D5616328();
}

void sub_1D5249AA8()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2780, &qword_1D56492E8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524E364();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  if (!v0)
  {
    sub_1D524E3B8();
    OUTLINED_FUNCTION_57_25();
    sub_1D5615FD8();
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_15_2();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_82_16();
}

uint64_t sub_1D5249C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52473C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5249C3C(uint64_t a1)
{
  v2 = sub_1D524E824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5249C78(uint64_t a1)
{
  v2 = sub_1D524E824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5249D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5247C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5249DB4(uint64_t a1)
{
  v2 = sub_1D524E7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5249DF0(uint64_t a1)
{
  v2 = sub_1D524E7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5249EFC()
{
  sub_1D56162D8();
  sub_1D5247EE8();
  return sub_1D5616328();
}

uint64_t sub_1D5249F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5248454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5249F70(uint64_t a1)
{
  v2 = sub_1D524E584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5249FAC(uint64_t a1)
{
  v2 = sub_1D524E584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D5249FE8(void *a1@<X8>)
{
  sub_1D52488D8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1D524A018()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D52485B8();
}

uint64_t sub_1D524A06C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D56162D8();
  sub_1D52487BC(v6, v1, v2, v4, v3);
  return sub_1D5616328();
}

uint64_t sub_1D524A0D4()
{
  sub_1D56162D8();
  sub_1D5248C68(v1);
  return sub_1D5616328();
}

uint64_t sub_1D524A114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5248D9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D524A140(uint64_t a1)
{
  v2 = sub_1D524F4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524A17C(uint64_t a1)
{
  v2 = sub_1D524F4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524A1B8(void *a1@<X8>)
{
  sub_1D5249014();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_1D524A1E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5248E24();
}

uint64_t sub_1D524A224()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

uint64_t sub_1D524A298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D524922C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D524A2C0(uint64_t a1)
{
  v2 = sub_1D524F080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524A2FC(uint64_t a1)
{
  v2 = sub_1D524F080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524A338(uint64_t a1@<X8>)
{
  sub_1D52496C0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_1D524A3D0(uint64_t a1)
{
  v2 = sub_1D524E364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524A40C(uint64_t a1)
{
  v2 = sub_1D524E364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524A448(uint64_t a1@<X8>)
{
  sub_1D5249AA8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_1D524A570()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1D56162D8();
  sub_1D52495EC(v6, v4, v1, v2);
  return sub_1D5616328();
}

BOOL static CatalogInternalSearchRawResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v6 = a1[8];
  v5 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v12 = a2[6];
  v11 = a2[7];
  v14 = a2[8];
  v13 = a2[9];
  if (a1[4] == 1)
  {
    if (v10 == 1)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = OUTLINED_FUNCTION_32_41();
    sub_1D5247100(v15, v16, v17, v18, v10);
    v19 = OUTLINED_FUNCTION_8_78();
    sub_1D5247100(v19, v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_8_78();
    sub_1D5246DAC(v24, v25, v26, v27, v28);
    v29 = OUTLINED_FUNCTION_32_41();
    sub_1D5246DAC(v29, v30, v31, v32, v10);
    return 0;
  }

  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v106 = *a2;
  v107 = a2[1];
  v108 = a2[2];
  v109 = a2[3];
  v110 = a2[4];
  v101 = *a1;
  v102 = a1[1];
  v103 = a1[2];
  v104 = a1[3];
  v105 = a1[4];
  v91 = a2[5];
  v92 = a1[5];
  v34 = OUTLINED_FUNCTION_140_3();
  v99 = v36;
  v100 = v35;
  v93 = v38;
  v94 = v37;
  v97 = v40;
  v98 = v39;
  v95 = v42;
  v96 = v41;
  sub_1D5247100(v34, v43, v7, v8, v10);
  v44 = OUTLINED_FUNCTION_8_78();
  sub_1D5247100(v44, v45, v46, v47, v48);
  sub_1D5248B58();
  v90 = v49;
  v50 = OUTLINED_FUNCTION_32_41();
  sub_1D5246DF0(v50, v51);

  v52 = OUTLINED_FUNCTION_8_78();
  sub_1D5246DAC(v52, v53, v54, v55, v56);
  v9 = v91;
  v2 = v92;
  v12 = v93;
  v11 = v94;
  v14 = v95;
  v13 = v96;
  LODWORD(v4) = v97;
  v3 = v98;
  v6 = v99;
  v5 = v100;
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v2)
  {
    if (!v9)
    {
      return 0;
    }

    v57 = v5;
    v58 = v6;
    v59 = v3;
    v60 = v4;
    v61 = v13;
    v62 = v14;
    v63 = v11;
    v64 = v12;

    OUTLINED_FUNCTION_29_40();
    sub_1D4F289B0();
    v66 = v65;

    v12 = v64;
    v11 = v63;
    v14 = v62;
    v13 = v61;
    LODWORD(v4) = v60;
    v3 = v59;
    v6 = v58;
    v5 = v57;
    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (v13)
    {
      v67 = v12;
      v68 = v11;
      v69 = v14;
      v70 = v13;
      v71 = sub_1D5249134(v4, v3, v6, v5, v12, v11, v14);
      sub_1D524A898(v67, v68, v69, v70);
      OUTLINED_FUNCTION_51_25();
      sub_1D524A898(v72, v73, v74, v75);
      sub_1D50A2184(v68, v69);

      OUTLINED_FUNCTION_51_25();
      sub_1D524A8E0(v76, v77, v78, v79);
      return (v71 & 1) != 0;
    }

LABEL_18:
    v80 = v6;
    v81 = v5;
    v82 = v13;
    v83 = v14;
    v84 = v11;
    v85 = v12;
    sub_1D524A898(v12, v11, v14, v13);
    v86 = OUTLINED_FUNCTION_61();
    sub_1D524A898(v86, v87, v80, v81);
    v88 = OUTLINED_FUNCTION_61();
    sub_1D524A8E0(v88, v89, v80, v81);
    sub_1D524A8E0(v85, v84, v83, v82);
    return 0;
  }

  if (v13)
  {
    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_1D524A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D50A2170(a2, a3);
  }

  return result;
}

uint64_t sub_1D524A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D50A2184(a2, a3);
  }

  return result;
}

uint64_t sub_1D524A928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F736572 && a2 == 0xE900000000000073;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635018093 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D524AA40(char a1)
{
  if (!a1)
  {
    return 0x73746C75736572;
  }

  if (a1 == 1)
  {
    return 0x656372756F736572;
  }

  return 1635018093;
}

uint64_t sub_1D524AA94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D524AAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D524A928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D524AB10(uint64_t a1)
{
  v2 = sub_1D5246CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524AB4C(uint64_t a1)
{
  v2 = sub_1D5246CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogInternalSearchRawResponse.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 5);
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  if (*(v1 + 4) == 1)
  {
    sub_1D56162F8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D56162F8();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1D56162F8();
    return;
  }

  v14 = *v1;
  v15 = v1[1];
  v16 = *(v1 + 4);
  sub_1D56162F8();
  sub_1D5248C68(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D56162F8();
  sub_1D4F32110(a1, v3, v8, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21, v22, v23);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1D56162F8();

  sub_1D52495EC(a1, v4, v5, v6);
}

uint64_t CatalogInternalSearchRawResponse.hashValue.getter()
{
  v14 = *v0;
  v15 = v0[1];
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  sub_1D56162D8();
  if (v2 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v17 = v14;
    v18 = v15;
    v19 = v2;
    sub_1D56162F8();
    sub_1D5248C68(v16);
  }

  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F32110(v16, v1, v7, v8, v9, v10, v11, v12, v14, *(&v14 + 1), v15, *(&v15 + 1), v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7]);
  }

  sub_1D56162F8();
  if (v6)
  {
    sub_1D52495EC(v16, v3, v4, v5);
  }

  return sub_1D5616328();
}

uint64_t sub_1D524ADD4()
{
  sub_1D56162D8();
  CatalogInternalSearchRawResponse.hash(into:)(v1);
  return sub_1D5616328();
}

void sub_1D524AE10()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v63 = v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  v4 = OUTLINED_FUNCTION_4(v66);
  v62 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v65 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v61 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610C98();
  v12 = OUTLINED_FUNCTION_4(v11);
  v71 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0110, &unk_1D56492D0);
  OUTLINED_FUNCTION_4(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9();
  v23 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  OUTLINED_FUNCTION_19_56();
  sub_1D5246D68(v24);
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_27:
    OUTLINED_FUNCTION_26();
    return;
  }

  v25 = v63;
  v59 = v11;
  v26 = sub_1D5615FE8();
  v64 = sub_1D5614BD8();
  v70 = *(v26 + 16);
  if (!v70)
  {
    v79 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 1;
LABEL_26:

    v54 = OUTLINED_FUNCTION_27_43();
    v55(v54, v19);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v25 = v79;
    v25[1] = v72;
    v25[2] = v74;
    v25[3] = v73;
    v25[4] = v64;
    goto LABEL_27;
  }

  v79 = 0;
  v73 = 0;
  v74 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_6_4();
  v69 = v26 + v29;
  v60 = (v62 + 32);
  v72 = 1;
  v30 = v59;
  v68 = v2;
  v56 = v19;
  v67 = v26;
  v57 = v18;
  while (v27 < *(v26 + 16))
  {
    (*(v28 + 16))(v18, v69 + *(v28 + 72) * v27, v30);
    if (sub_1D5610C88() == 0x6E6F437972657571 && v31 == 0xEC00000074786574)
    {

LABEL_16:
      sub_1D5246DF0(v79, v72);
      sub_1D524E310();
      sub_1D5615FD8();
      v44 = OUTLINED_FUNCTION_12_66();
      v45(v44);
      v79 = v75;
      v74 = v77;
      v72 = v76;
      v73 = v78;
      v28 = v71;
      v26 = v67;
      v2 = v68;
      goto LABEL_23;
    }

    sub_1D5616168();
    OUTLINED_FUNCTION_82();

    if (v18)
    {
      goto LABEL_16;
    }

    v33 = sub_1D5610C88();
    v35 = v34;
    sub_1D524E40C();
    sub_1D5615FD8();
    v58 = *v60;
    (*v60)(v65, v61, v66);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v64;
    v36 = sub_1D4E4EFA0();
    if (__OFADD__(v64[2], (v37 & 1) == 0))
    {
      goto LABEL_29;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E0, &qword_1D56492E0);
    if (sub_1D5615D78())
    {
      v40 = v33;
      v41 = v35;
      v42 = sub_1D4E4EFA0();
      v30 = v59;
      if ((v39 & 1) != (v43 & 1))
      {
        goto LABEL_31;
      }

      v38 = v42;
    }

    else
    {
      v40 = v33;
      v41 = v35;
      v30 = v59;
    }

    v18 = v57;
    if (v39)
    {

      (*(v62 + 40))(v64[7] + *(v62 + 72) * v38, v65, v66);
      v46 = OUTLINED_FUNCTION_12_66();
      v47(v46);
    }

    else
    {
      v64[(v38 >> 6) + 8] |= 1 << v38;
      v48 = (v64[6] + 16 * v38);
      *v48 = v40;
      v48[1] = v41;
      v58(v64[7] + *(v62 + 72) * v38, v65, v66);
      v49 = OUTLINED_FUNCTION_12_66();
      v50(v49);
      v51 = v64[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_30;
      }

      v64[2] = v53;
    }

    v26 = v67;
    v2 = v68;
    v25 = v63;
    v19 = v56;
    v28 = v71;
LABEL_23:
    if (v70 == ++v27)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1D5616238();
  __break(1u);
}

void sub_1D524B560()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v112 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  v6 = OUTLINED_FUNCTION_4(v5);
  v96 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v102 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  v94 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD60, &unk_1D561F310);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v104 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v103 = v19;
  OUTLINED_FUNCTION_70_0();
  v20 = sub_1D5610C98();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v101 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_2();
  v108 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0120, &qword_1D5636098);
  OUTLINED_FUNCTION_4(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v91 - v35;
  v37 = v4[3];
  v100 = v4[4];
  OUTLINED_FUNCTION_6_1(v4);
  OUTLINED_FUNCTION_19_56();
  sub_1D5246D68(v38);
  v107 = v20;
  sub_1D56163D8();
  v39 = v112[1];
  if (v39 != 1)
  {
    v100 = v23;
    v40 = *v112;
    sub_1D5614EB8();
    v109 = v40;
    v110 = v39;
    v111 = *(v112 + 1);
    sub_1D524E4DC();
    sub_1D56160C8();
    if (v1)
    {
      (v100[1])(v108, v107);
      (*(v31 + 8))(v36, v29);
LABEL_24:
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_26();
      return;
    }

    v23 = v100;
    (v100[1])(v108, v107);
  }

  v41 = v112[4];
  v106 = v29;
  v91[1] = v31;
  v105 = v36;
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = sub_1D5614BD8();
  }

  v95 = v42;
  v44 = v42 + 64;
  v43 = *(v42 + 64);
  v45 = 1 << *(v44 - 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v48 = (v45 + 63) >> 6;
  v93 = v96 + 16;
  v108 = (v96 + 32);
  v99 = v23 + 1;
  v100 = (v96 + 8);

  v49 = 0;
  v97 = v48;
  v98 = v5;
  v92 = v44;
  if (v47)
  {
    while (1)
    {
      v113 = v2;
      v50 = v49;
LABEL_16:
      v51 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v52 = v51 | (v50 << 6);
      v53 = v96;
      v54 = (*(v95 + 48) + 16 * v52);
      v56 = *v54;
      v55 = v54[1];
      v57 = v94;
      (*(v96 + 16))(v94, *(v95 + 56) + *(v96 + 72) * v52, v5);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      v59 = v5;
      v60 = v58;
      v61 = *(v58 + 48);
      v62 = v104;
      *v104 = v56;
      *(v62 + 1) = v55;
      v63 = v62;
      (*(v53 + 32))(&v62[v61], v57, v59);
      __swift_storeEnumTagSinglePayload(v63, 0, 1, v60);

      v44 = v92;
LABEL_17:
      v64 = v103;
      sub_1D4FB8058();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      OUTLINED_FUNCTION_77_12();
      if (__swift_getEnumTagSinglePayload(v66, v67, v68) == 1)
      {

        v82 = OUTLINED_FUNCTION_72_20();
        v83(v82);
        goto LABEL_24;
      }

      v70 = *v64;
      v69 = v64[1];
      v71 = v64 + *(v65 + 48);
      v72 = v98;
      (*v108)(v102, v71, v98);
      v5 = v72;
      sub_1D5614EB8();

      sub_1D524E40C();
      OUTLINED_FUNCTION_29_40();
      sub_1D56160C8();
      v2 = v113;
      if (v113)
      {
        break;
      }

      v73 = OUTLINED_FUNCTION_63_15();
      v74(v73);
      v75 = *v100;
      v76 = OUTLINED_FUNCTION_140_3();
      v77(v76);
      v48 = v97;
      if (!v47)
      {
        goto LABEL_12;
      }
    }

    v84 = OUTLINED_FUNCTION_63_15();
    v85(v84);
    v86 = *v100;
    v87 = OUTLINED_FUNCTION_140_3();
    v88(v87);
    v89 = OUTLINED_FUNCTION_72_20();
    v90(v89);
    goto LABEL_24;
  }

LABEL_12:
  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v48)
    {
      v113 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
      v47 = 0;
      goto LABEL_17;
    }

    v47 = *(v44 + 8 * v50);
    ++v49;
    if (v47)
    {
      v113 = v2;
      v49 = v50;
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_1D524BBF8@<D0>(uint64_t a1@<X8>)
{
  sub_1D524AE10();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

void sub_1D524BC58()
{
  OUTLINED_FUNCTION_47();
  v176 = v0;
  v2 = v1;
  v4 = v3;
  v177 = v5;
  v178 = v6;
  v195 = sub_1D5611C78();
  v7 = OUTLINED_FUNCTION_4(v195);
  v175 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v194 = (v12 - v11);
  OUTLINED_FUNCTION_70_0();
  v205 = sub_1D560C0A8();
  v13 = OUTLINED_FUNCTION_4(v205);
  v174 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v192 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v185 = v19;
  OUTLINED_FUNCTION_70_0();
  v184 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink();
  v20 = OUTLINED_FUNCTION_4(v184);
  v183 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v182 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  v181 = v171 - v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  v180 = v171 - v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v191 = v30;
  v31 = OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(v31);
  v33 = OUTLINED_FUNCTION_4(v32);
  v173 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  v39 = (v37 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v171 - v41;
  v190 = sub_1D560C368();
  v43 = OUTLINED_FUNCTION_4(v190);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v189 = v49 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  v51 = OUTLINED_FUNCTION_22(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  v204 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_2();
  v202 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v58 = OUTLINED_FUNCTION_22(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  v203 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  v209 = v63;
  v64 = OUTLINED_FUNCTION_70_0();
  v201 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(v64);
  v65 = OUTLINED_FUNCTION_4(v201);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  v207 = v70;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_2();
  v208 = v72;
  OUTLINED_FUNCTION_70_0();
  v73 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  v74 = OUTLINED_FUNCTION_4(v73);
  v199 = v75;
  v200 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  v197 = v78;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_2();
  v198 = v80;
  if (v2)
  {
    v81 = v2;
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  v82 = *(v81 + 16);
  v186 = v32;
  v179 = v4;
  v193 = v42;
  if (v82)
  {
    v172 = v39;
    v213 = MEMORY[0x1E69E7CC0];

    v171[1] = v2;

    v83 = v82;
    sub_1D4F041C4();
    v84 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v210 = v213;
    v171[0] = v81;
    v85 = v81 + v84;
    v196 = *(v67 + 72);
    v188 = 0x80000001D5688B80;
    v187 = (v45 + 8);
    do
    {
      sub_1D524E650();
      v86 = v207;
      sub_1D524E650();
      v88 = *v86;
      v87 = v86[1];
      v89 = v86[3];
      v206 = v86[2];
      v90 = v202;
      v91 = *(v201 + 24);
      sub_1D4FB8150();
      v92 = sub_1D560FDA8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, 1, v92);

      if (EnumTagSinglePayload == 1)
      {
        v94 = OUTLINED_FUNCTION_159();
        sub_1D4E50004(v94, v95, &qword_1D561DDB8);
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v96, v97, v98, v205);
      }

      else
      {
        sub_1D560FD98();
        OUTLINED_FUNCTION_24_0(v92);
        (*(v99 + 8))(v90, v92);
      }

      v100 = v83;
      if (v87)
      {
        v101 = v87;
      }

      else
      {
        v211 = 0;
        v212 = 0xE000000000000000;
        sub_1D5615B68();

        v211 = 0xD000000000000014;
        v212 = v188;
        v102 = v189;
        sub_1D560C358();
        v103 = sub_1D560C338();
        v105 = v104;
        (*v187)(v102, v190);
        MEMORY[0x1DA6EAC70](v103, v105);

        v88 = v211;
        v101 = v212;
      }

      v106 = v197;
      *v197 = v88;
      v106[1] = v101;
      v107 = v200;
      *(v106 + *(v200 + 28)) = v87 == 0;
      if (v89)
      {
        v108 = v206;
      }

      else
      {
        v108 = 0;
      }

      if (v89)
      {
        v109 = v89;
      }

      else
      {
        v109 = 0xE000000000000000;
      }

      sub_1D524E6A8(v208, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation);
      sub_1D524E6A8(v207, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation);
      v106[2] = v108;
      v106[3] = v109;
      v110 = *(v107 + 24);
      sub_1D4FB8058();
      OUTLINED_FUNCTION_18_63();
      sub_1D524E700();
      v111 = v210;
      v213 = v210;
      v113 = *(v210 + 16);
      v112 = *(v210 + 24);
      if (v113 >= v112 >> 1)
      {
        OUTLINED_FUNCTION_52_25(v112);
        sub_1D4F041C4();
        v111 = v213;
      }

      *(v111 + 16) = v113 + 1;
      v114 = (*(v199 + 80) + 32) & ~*(v199 + 80);
      v210 = v111;
      v115 = *(v199 + 72);
      OUTLINED_FUNCTION_18_63();
      sub_1D524E700();
      v85 += v196;
      v83 = v100 - 1;
    }

    while (v100 != 1);

    v4 = v179;
    v116 = v205;
    v117 = v186;
    v39 = v172;
    v42 = v193;
  }

  else
  {

    v210 = MEMORY[0x1E69E7CC0];
    v116 = v205;
    v117 = v32;
  }

  if (v176)
  {
    v118 = v176;
  }

  else
  {
    v118 = MEMORY[0x1E69E7CC0];
  }

  v119 = *(v118 + 16);
  if (v119)
  {
    OUTLINED_FUNCTION_6_4();
    v190 = v118;
    v121 = v118 + v120;
    v209 = *(v122 + 72);
    v200 = v174 + 32;
    v196 = (v174 + 8);
    v197 = (v174 + 16);
    v206 = (v175 + 16);
    v207 = (v175 + 104);
    v208 = MEMORY[0x1E69E7CC0];
    LODWORD(v202) = *MEMORY[0x1E69763E0];
    v201 = v175 + 8;
    while (1)
    {
      sub_1D524E650();
      sub_1D524E650();
      v123 = *(v117 + 24);
      sub_1D4FB8150();
      sub_1D560FDA8();
      v124 = OUTLINED_FUNCTION_75_17();
      if (__swift_getEnumTagSinglePayload(v124, v125, v126) == 1)
      {
        v127 = OUTLINED_FUNCTION_222();
        sub_1D4E50004(v127, v128, &qword_1D561DDB8);
        v129 = v203;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v130, v131, v132, v116);
      }

      else
      {
        v133 = v117;
        v134 = v203;
        sub_1D560FD98();
        OUTLINED_FUNCTION_24_0(type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
        v136 = *(v135 + 8);
        v137 = OUTLINED_FUNCTION_159();
        v129 = v134;
        v117 = v133;
        v138(v137);
        if (__swift_getEnumTagSinglePayload(v129, 1, v116) != 1)
        {
          v199 = *v200;
          v143 = v185;
          v144 = OUTLINED_FUNCTION_134_0();
          v145(v144);
          v146 = v116;
          v148 = *v39;
          v147 = v39[1];
          v150 = v39[2];
          v149 = v39[3];
          (*v197)(v192, v143, v146);
          if (v147)
          {
            v151 = v148;
          }

          else
          {
            v151 = 0;
          }

          if (v147)
          {
            v152 = v147;
          }

          else
          {
            v152 = 0xE000000000000000;
          }

          v153 = v182;
          *v182 = v151;
          *(v153 + 1) = v152;
          if (v149)
          {
            v154 = v150;
          }

          else
          {
            v154 = 0;
          }

          v198 = v154;
          if (v149)
          {
            v155 = v149;
          }

          else
          {
            v155 = 0xE000000000000000;
          }

          v156 = *v196;

          v156(v143, v205);
          v157 = v205;
          sub_1D524E6A8(v39, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
          sub_1D524E6A8(v193, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
          v158 = v199;
          *(v153 + 2) = v198;
          *(v153 + 3) = v155;
          v116 = v157;
          v158(&v153[*(v184 + 24)], v192, v157);
          sub_1D524E700();
          sub_1D524E700();
          sub_1D524E700();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v159 = v208;
          }

          else
          {
            v164 = *(v208 + 16);
            sub_1D4F0151C();
            v159 = v165;
          }

          v160 = *(v159 + 16);
          v117 = v186;
          if (v160 >= *(v159 + 24) >> 1)
          {
            sub_1D4F0151C();
            v159 = v166;
          }

          v42 = v193;
          *(v159 + 16) = v160 + 1;
          OUTLINED_FUNCTION_6_4();
          v208 = v161;
          v163 = *(v162 + 72);
          sub_1D524E700();
          goto LABEL_49;
        }
      }

      sub_1D4E50004(v129, &unk_1EC7E9CA8, &unk_1D561D1D0);
      v140 = v194;
      v139 = v195;
      *v194 = 7107189;
      v140[1] = 0xE300000000000000;
      (*v207)(v140, v202, v139);
      OUTLINED_FUNCTION_21_51();
      sub_1D5246D68(&qword_1EC7EE070);
      v141 = swift_allocError();
      (*v206)(v142, v140, v139);
      swift_willThrow();
      (*v201)(v140, v139);
      sub_1D524E6A8(v39, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);
      sub_1D524E6A8(v42, type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink);

LABEL_49:
      v121 += v209;
      if (!--v119)
      {

        v4 = v179;
        v167 = v208;
        goto LABEL_53;
      }
    }
  }

  v167 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v168 = 0xE000000000000000;
  if (v4)
  {
    v168 = v4;
  }

  v169 = v177;
  if (!v4)
  {
    v169 = 0;
  }

  v170 = v178;
  *v178 = v169;
  v170[1] = v168;
  v170[2] = v210;
  v170[3] = v167;
  OUTLINED_FUNCTION_46();
}

void sub_1D524CA44()
{
  OUTLINED_FUNCTION_47();
  v76 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink();
  v4 = OUTLINED_FUNCTION_4(v76);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v75 = (v8 - v7);
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(v9);
  v74 = OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5();
  v65 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9();
  v23 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  v32 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  v73 = OUTLINED_FUNCTION_4(v32);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v67 = v0[1];
  v68 = *v0;
  v35 = v0[2];
  v66 = v0[3];
  v36 = *(v35 + 16);
  if (v36)
  {
    v72 = v1;
    v83 = MEMORY[0x1E69E7CC0];

    sub_1D4F04274();
    v37 = v83;
    v38 = v35 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v69 = *(v26 + 72);
    v70 = v23;
    v71 = v3;
    do
    {
      OUTLINED_FUNCTION_134_0();
      sub_1D524E650();
      v82 = v37;
      if (*(v31 + *(v23 + 28)))
      {
        v78 = 0;
        v80 = 0;
      }

      else
      {
        v78 = v31[1];
        v80 = *v31;
      }

      v39 = v31[3];
      v77 = v31[2];
      v40 = *(v23 + 24);
      sub_1D4FB8150();
      v41 = sub_1D560C0A8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v41);

      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_26_50();
        sub_1D4E50004(v72, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v43 = v71;
      }

      else
      {
        v43 = v71;
        sub_1D560C038();
        OUTLINED_FUNCTION_26_50();
        OUTLINED_FUNCTION_24_0(v41);
        (*(v44 + 8))(v72, v41);
        EnumTagSinglePayload = 0;
      }

      v45 = sub_1D560FDA8();
      __swift_storeEnumTagSinglePayload(v43, EnumTagSinglePayload, 1, v45);
      *v2 = v80;
      v2[1] = v78;
      v2[2] = v77;
      v2[3] = v39;
      v46 = *(v73 + 24);
      sub_1D4FB8058();
      v37 = v82;
      v48 = *(v82 + 16);
      v47 = *(v82 + 24);
      v23 = v70;
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_52_25(v47);
        sub_1D4F04274();
        v37 = v82;
      }

      *(v37 + 16) = v48 + 1;
      OUTLINED_FUNCTION_6_4();
      v50 = *(v49 + 72);
      sub_1D524E700();
      v38 += v69;
      --v36;
    }

    while (v36);
  }

  else
  {
  }

  v51 = *(v66 + 16);
  if (v51)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1D4F0421C();
    OUTLINED_FUNCTION_6_4();
    v53 = v66 + v52;
    v79 = *(v54 + 72);
    do
    {
      sub_1D524E650();
      v55 = v75[1];
      v81 = *v75;
      v57 = v75[2];
      v56 = v75[3];
      v58 = *(v74 + 24);
      v59 = *(v76 + 24);

      sub_1D560C038();
      sub_1D524E6A8(v75, type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink);
      v60 = sub_1D560FDA8();
      __swift_storeEnumTagSinglePayload(v65 + v58, 0, 1, v60);
      *v65 = v81;
      v65[1] = v55;
      v65[2] = v57;
      v65[3] = v56;
      v62 = *(v84 + 16);
      v61 = *(v84 + 24);
      if (v62 >= v61 >> 1)
      {
        OUTLINED_FUNCTION_52_25(v61);
        sub_1D4F0421C();
      }

      *(v84 + 16) = v62 + 1;
      OUTLINED_FUNCTION_6_4();
      v64 = *(v63 + 72);
      sub_1D524E700();
      v53 += v79;
      --v51;
    }

    while (v51);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D524D024()
{
  OUTLINED_FUNCTION_47();
  v25[0] = v0;
  v1 = type metadata accessor for CloudGenericMusicItem(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v12 = sub_1D5612478();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v25 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  sub_1D5610608();
  sub_1D5610658();
  sub_1D5610618();
  sub_1D5612438();
  sub_1D5610648();
  v24 = sub_1D529924C();
  sub_1D524E6A8(v7, type metadata accessor for CloudGenericMusicItem);
  (*(v15 + 16))(v20, v23, v12);
  v25[1] = v24;
  sub_1D5612E68();
  (*(v15 + 8))(v23, v12);
  OUTLINED_FUNCTION_46();
}

void sub_1D524D22C()
{
  OUTLINED_FUNCTION_25_1();
  v69 = v1;
  v70 = v0;
  v3 = v2;
  v4 = sub_1D5611C78();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v66 - v23;
  v25 = sub_1D560C0A8();
  v26 = OUTLINED_FUNCTION_4(v25);
  v68 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v66 - v34;
  v36 = *(type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0) + 24);
  v71 = v3;
  sub_1D4FB8150();
  sub_1D560FDA8();
  v37 = OUTLINED_FUNCTION_75_17();
  if (__swift_getEnumTagSinglePayload(v37, v38, v39) == 1)
  {
    sub_1D4E50004(v18, &qword_1EC7EAFF8, &qword_1D561DDB8);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v25);
LABEL_4:
    sub_1D4E50004(v24, &unk_1EC7E9CA8, &unk_1D561D1D0);
    *v12 = 7107189;
    v12[1] = 0xE300000000000000;
    (*(v7 + 104))(v12, *MEMORY[0x1E69763E0], v4);
    OUTLINED_FUNCTION_21_51();
    sub_1D5246D68(v47);
    swift_allocError();
    (*(v7 + 16))(v48, v12, v4);
    swift_willThrow();
    OUTLINED_FUNCTION_5_87();
    sub_1D524E6A8(v3, v49);
    v50 = *(v7 + 8);
    v51 = OUTLINED_FUNCTION_15_2();
    v52(v51);
    goto LABEL_18;
  }

  sub_1D560FD98();
  OUTLINED_FUNCTION_24_0(v3);
  v44 = *(v43 + 8);
  v45 = OUTLINED_FUNCTION_159();
  v46(v45);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  v53 = v68;
  v54 = *(v68 + 32);
  v66[1] = v68 + 32;
  v67 = v54;
  v54(v35, v24, v25);
  v56 = *v3;
  v55 = v3[1];
  v58 = *(v71 + 16);
  v57 = *(v71 + 24);
  (*(v53 + 16))(v32, v35, v25);
  if (v55)
  {
    v59 = v56;
  }

  else
  {
    v59 = 0;
  }

  if (v55)
  {
    v60 = v55;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  v61 = v69;
  *v69 = v59;
  *(v61 + 1) = v60;
  if (v57)
  {
    v62 = v58;
  }

  else
  {
    v62 = 0;
  }

  v66[0] = v62;
  if (v57)
  {
    v63 = v57;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_5_87();
  sub_1D524E6A8(v71, v64);
  (*(v53 + 8))(v35, v25);
  *(v61 + 2) = v66[0];
  *(v61 + 3) = v63;
  v65 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink();
  v67(&v61[*(v65 + 24)], v32, v25);
LABEL_18:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D524D650(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a1;

      OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C();
      OUTLINED_FUNCTION_82();

      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D524D6A8()
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

void sub_1D524D6E4()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F28E8, &qword_1D5649A28);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_4();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524EF08();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D524F020();
  sub_1D5616068();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_82_16();
}

void sub_1D524D850(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_159();

    sub_1D4F068B4();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D524D8A8(uint64_t a1)
{
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (a1)
  {
    sub_1D4F068B4();
  }

  return sub_1D5616328();
}

void sub_1D524D904()
{
  OUTLINED_FUNCTION_83_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F28D8, &qword_1D5649A20);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9();
  v7 = v2[3];
  v8 = v2[4];
  OUTLINED_FUNCTION_6_1(v2);
  sub_1D524EF08();
  OUTLINED_FUNCTION_69_21();
  OUTLINED_FUNCTION_43_5();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D524F020();
    sub_1D5615F78();
    v9 = OUTLINED_FUNCTION_68_18();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_82_16();
}

uint64_t sub_1D524DA84(uint64_t a1)
{
  v2 = sub_1D524EF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D524DAC0(uint64_t a1)
{
  v2 = sub_1D524EF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D524DAFC(void *a1@<X8>)
{
  sub_1D524D904();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1D524DB64()
{
  result = qword_1EC7F26F0;
  if (!qword_1EC7F26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F26F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal07CatalogC17SearchRawResponseV7ResultsVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal07CatalogC17SearchRawResponseV8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D524DBF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D524DC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_1D524DD08()
{
  if (!qword_1EC7F2708)
  {
    sub_1D560FDA8();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F2708);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_62_2(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1D524DEBC()
{
  sub_1D4F18AF4();
  if (v0 <= 0x3F)
  {
    sub_1D524DD08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D524DF50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D524DFA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1D524E024()
{
  result = qword_1EC7F2720;
  if (!qword_1EC7F2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2720);
  }

  return result;
}

unint64_t sub_1D524E07C()
{
  result = qword_1EC7F2728;
  if (!qword_1EC7F2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2728);
  }

  return result;
}

unint64_t sub_1D524E0D4()
{
  result = qword_1EC7F2730;
  if (!qword_1EC7F2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2730);
  }

  return result;
}

unint64_t sub_1D524E1BC()
{
  result = qword_1EC7F2748;
  if (!qword_1EC7F2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2748);
  }

  return result;
}

unint64_t sub_1D524E214()
{
  result = qword_1EC7F2750;
  if (!qword_1EC7F2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2750);
  }

  return result;
}

unint64_t sub_1D524E268()
{
  result = qword_1EC7F2768;
  if (!qword_1EC7F2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2768);
  }

  return result;
}

unint64_t sub_1D524E2BC()
{
  result = qword_1EC7F2770;
  if (!qword_1EC7F2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2770);
  }

  return result;
}

unint64_t sub_1D524E310()
{
  result = qword_1EC7F2778;
  if (!qword_1EC7F2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2778);
  }

  return result;
}

unint64_t sub_1D524E364()
{
  result = qword_1EC7F2788;
  if (!qword_1EC7F2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2788);
  }

  return result;
}

unint64_t sub_1D524E3B8()
{
  result = qword_1EC7F2790;
  if (!qword_1EC7F2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2790);
  }

  return result;
}

void sub_1D524E40C()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    v2 = OUTLINED_FUNCTION_61();
    sub_1D524E46C(v2);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D524E46C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D524E268();
    sub_1D524E2BC();
    OUTLINED_FUNCTION_222();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D524E4DC()
{
  result = qword_1EC7F27A8;
  if (!qword_1EC7F27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F27A8);
  }

  return result;
}

unint64_t sub_1D524E530()
{
  result = qword_1EC7F27B8;
  if (!qword_1EC7F27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F27B8);
  }

  return result;
}

unint64_t sub_1D524E584()
{
  result = qword_1EC7F27C8;
  if (!qword_1EC7F27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F27C8);
  }

  return result;
}

void sub_1D524E5D8()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F27E8, &unk_1D5649318);
    sub_1D5246D68(v1);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D524E650()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D524E6A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D524E700()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

void sub_1D524E758()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F27D0, &qword_1D5649310);
    sub_1D5246D68(v1);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D524E7D0()
{
  result = qword_1EC7F2830;
  if (!qword_1EC7F2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2830);
  }

  return result;
}

unint64_t sub_1D524E824()
{
  result = qword_1EC7F2858;
  if (!qword_1EC7F2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2858);
  }

  return result;
}

_BYTE *sub_1D524E898(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D524E984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D524E9C4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D524EA38()
{
  result = qword_1EC7F2868;
  if (!qword_1EC7F2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2868);
  }

  return result;
}

unint64_t sub_1D524EA90()
{
  result = qword_1EC7F2870;
  if (!qword_1EC7F2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2870);
  }

  return result;
}

unint64_t sub_1D524EAE8()
{
  result = qword_1EC7F2878;
  if (!qword_1EC7F2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2878);
  }

  return result;
}

unint64_t sub_1D524EB40()
{
  result = qword_1EC7F2880;
  if (!qword_1EC7F2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2880);
  }

  return result;
}

unint64_t sub_1D524EB98()
{
  result = qword_1EC7F2888;
  if (!qword_1EC7F2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2888);
  }

  return result;
}

unint64_t sub_1D524EBF0()
{
  result = qword_1EC7F2890;
  if (!qword_1EC7F2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2890);
  }

  return result;
}

unint64_t sub_1D524EC4C()
{
  result = qword_1EC7F2898;
  if (!qword_1EC7F2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2898);
  }

  return result;
}

unint64_t sub_1D524ECA4()
{
  result = qword_1EC7F28A0;
  if (!qword_1EC7F28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28A0);
  }

  return result;
}

unint64_t sub_1D524ECFC()
{
  result = qword_1EC7F28A8;
  if (!qword_1EC7F28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28A8);
  }

  return result;
}

unint64_t sub_1D524ED54()
{
  result = qword_1EC7F28B0;
  if (!qword_1EC7F28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28B0);
  }

  return result;
}

unint64_t sub_1D524EDAC()
{
  result = qword_1EC7F28B8;
  if (!qword_1EC7F28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28B8);
  }

  return result;
}

unint64_t sub_1D524EE04()
{
  result = qword_1EC7F28C0;
  if (!qword_1EC7F28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28C0);
  }

  return result;
}

unint64_t sub_1D524EE5C()
{
  result = qword_1EC7F28C8;
  if (!qword_1EC7F28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28C8);
  }

  return result;
}

unint64_t sub_1D524EEB4()
{
  result = qword_1EC7F28D0;
  if (!qword_1EC7F28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28D0);
  }

  return result;
}

unint64_t sub_1D524EF08()
{
  result = qword_1EC7F28E0;
  if (!qword_1EC7F28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28E0);
  }

  return result;
}

void sub_1D524EF5C()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D5246D68(&unk_1EC7ED168);
    sub_1D5246D68(&unk_1EC7ED170);
    OUTLINED_FUNCTION_222();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void sub_1D524F020()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED150, &unk_1D565B6C0);
    OUTLINED_FUNCTION_61();
    sub_1D524EF5C();
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D524F080()
{
  result = qword_1EC7F28F8;
  if (!qword_1EC7F28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28F8);
  }

  return result;
}

unint64_t sub_1D524F0D4()
{
  result = qword_1EC7F2900;
  if (!qword_1EC7F2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2900);
  }

  return result;
}

unint64_t sub_1D524F128()
{
  result = qword_1EC7F2910;
  if (!qword_1EC7F2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogInternalSearchRawResponse.Metadata.Results.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D524F27C()
{
  result = qword_1EC7F2918;
  if (!qword_1EC7F2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2918);
  }

  return result;
}

unint64_t sub_1D524F2D4()
{
  result = qword_1EC7F2920;
  if (!qword_1EC7F2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2920);
  }

  return result;
}

unint64_t sub_1D524F32C()
{
  result = qword_1EC7F2928;
  if (!qword_1EC7F2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2928);
  }

  return result;
}

unint64_t sub_1D524F384()
{
  result = qword_1EC7F2930;
  if (!qword_1EC7F2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2930);
  }

  return result;
}

unint64_t sub_1D524F3DC()
{
  result = qword_1EC7F2938;
  if (!qword_1EC7F2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2938);
  }

  return result;
}

unint64_t sub_1D524F434()
{
  result = qword_1EC7F2940;
  if (!qword_1EC7F2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2940);
  }

  return result;
}

unint64_t sub_1D524F48C()
{
  result = qword_1EC7F2948;
  if (!qword_1EC7F2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2948);
  }

  return result;
}

unint64_t sub_1D524F4E0()
{
  result = qword_1EC7F2958;
  if (!qword_1EC7F2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2958);
  }

  return result;
}

_BYTE *sub_1D524F534(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D524F5E4()
{
  result = qword_1EC7F2968;
  if (!qword_1EC7F2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2968);
  }

  return result;
}

unint64_t sub_1D524F63C()
{
  result = qword_1EC7F2970;
  if (!qword_1EC7F2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2970);
  }

  return result;
}

unint64_t sub_1D524F694()
{
  result = qword_1EC7F2978;
  if (!qword_1EC7F2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2978);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_24()
{

  return sub_1D5616028();
}

uint64_t OUTLINED_FUNCTION_61_24()
{

  return sub_1D5616398();
}

uint64_t OUTLINED_FUNCTION_72_20()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 144);
  return result;
}

uint64_t MusicDownloadedSongCatalogProperties.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t type metadata accessor for MusicDownloadedSongCatalogProperties()
{
  result = qword_1EDD59A98;
  if (!qword_1EDD59A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicDownloadedSongCatalogProperties.audioAnalysis.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  OUTLINED_FUNCTION_57_26(*(v11 + 40));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_57(v6, 1, v12);
  if (v19)
  {
    v13 = &qword_1EC7EDEE8;
    v14 = &qword_1D5628A68;
    v15 = v6;
  }

  else
  {
    sub_1D4F39AB0(&v6[*(v12 + 36)], v0, &qword_1EC7F1548, &unk_1D5649E50);
    sub_1D4E50004(v6, &qword_1EC7EDF00, &unk_1D5628A80);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
    v17 = OUTLINED_FUNCTION_95_0();
    v20 = OUTLINED_FUNCTION_57(v17, v18, v16);
    if (!v19)
    {
      sub_1D4EC9674(v20);
      OUTLINED_FUNCTION_24_0(v16);
      return (*(v22 + 8))(v0, v16);
    }

    v13 = &qword_1EC7F1548;
    v14 = &unk_1D5649E50;
    v15 = v0;
  }

  sub_1D4E50004(v15, v13, v14);
  v21 = type metadata accessor for AudioAnalysis();
  return OUTLINED_FUNCTION_64_7(v21);
}

uint64_t MusicDownloadedSongCatalogProperties.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicDownloadedSongCatalogProperties() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MusicDownloadedSongCatalogProperties.flexAnalysis.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  OUTLINED_FUNCTION_57_26(*(v11 + 44));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  OUTLINED_FUNCTION_57(v6, 1, v12);
  if (v19)
  {
    v13 = &qword_1EC7EDEE0;
    v14 = &qword_1D5628A60;
    v15 = v6;
  }

  else
  {
    sub_1D4F39AB0(&v6[*(v12 + 36)], v0, &qword_1EC7F1558, &unk_1D5649E60);
    sub_1D4E50004(v6, &qword_1EC7EDEF8, &qword_1D5628A78);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
    v17 = OUTLINED_FUNCTION_95_0();
    v20 = OUTLINED_FUNCTION_57(v17, v18, v16);
    if (!v19)
    {
      sub_1D4EC9728(v20);
      OUTLINED_FUNCTION_24_0(v16);
      return (*(v22 + 8))(v0, v16);
    }

    v13 = &qword_1EC7F1558;
    v14 = &unk_1D5649E60;
    v15 = v0;
  }

  sub_1D4E50004(v15, v13, v14);
  v21 = type metadata accessor for FlexAnalysis();
  return OUTLINED_FUNCTION_64_7(v21);
}

uint64_t MusicDownloadedSongCatalogProperties.spatialTimingInformation.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDownloadedSongCatalogProperties() + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0xB0uLL);
  return sub_1D4F39AB0(__dst, &v5, &qword_1EC7F1608, &qword_1D56409F8);
}

uint64_t MusicDownloadedSongCatalogProperties.fulfilledProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicDownloadedSongCatalogProperties() + 48));

  return sub_1D52D48E0(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t MusicDownloadedSongCatalogProperties.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDownloadedSongCatalogProperties() + 60);
  v4 = sub_1D560C328();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t static MusicDownloadedSongCatalogProperties.== infix(_:_:)(void *a1, void *a2)
{
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  OUTLINED_FUNCTION_14(v164);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v160[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v161 = v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2980, &qword_1D5649E70);
  OUTLINED_FUNCTION_14(v163);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v160 - v18;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_14(v167);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v162 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v165 = v28;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2988, &qword_1D5649E78);
  OUTLINED_FUNCTION_14(v166);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v168 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_71_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v160 - v47;
  v49 = *a1 == *a2 && a1[1] == a2[1];
  if (!v49 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_16;
  }

  v160[0] = v19;
  v50 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  v171 = a2;
  v51 = *(v50 + 20);
  v52 = *(v43 + 48);
  v169 = v50;
  v170 = a1;
  sub_1D4F39AB0(a1 + v51, v48, &qword_1EC7EA788, &unk_1D56223A0);
  v53 = v171 + v51;
  v54 = v171;
  sub_1D4F39AB0(v53, &v48[v52], &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_10(v48);
  if (v49)
  {
    OUTLINED_FUNCTION_10(&v48[v52]);
    if (v49)
    {
      sub_1D4E50004(v48, &qword_1EC7EA788, &unk_1D56223A0);
      goto LABEL_19;
    }

LABEL_14:
    v56 = &qword_1EC7EB668;
    v57 = &qword_1D5637E60;
    v58 = v48;
LABEL_15:
    sub_1D4E50004(v58, v56, v57);
    goto LABEL_16;
  }

  sub_1D4F39AB0(v48, v3, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_10(&v48[v52]);
  if (v55)
  {
    (*(v35 + 8))(v3, v33);
    goto LABEL_14;
  }

  (*(v35 + 32))(v2, &v48[v52], v33);
  sub_1D4F217AC();
  v61 = sub_1D5614D18();
  v62 = *(v35 + 8);
  v62(v2, v33);
  v62(v3, v33);
  sub_1D4E50004(v48, &qword_1EC7EA788, &unk_1D56223A0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v63 = v169;
  v64 = v169[6];
  v65 = (v170 + v64);
  v66 = *(v170 + v64 + 8);
  v67 = (v54 + v64);
  v59 = *(v54 + v64 + 8);
  if (v66)
  {
    if (!v59)
    {
      return v59 & 1;
    }
  }

  else
  {
    if (*v65 != *v67)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      goto LABEL_16;
    }
  }

  v68 = v169[7];
  memcpy(v179, v170 + v68, sizeof(v179));
  v69 = v169[7];
  memcpy(v180, v171 + v69, sizeof(v180));
  memcpy(v178, v170 + v68, 0xB0uLL);
  v70 = v171 + v69;
  v71 = v171;
  memcpy(&v178[176], v70, 0xB0uLL);
  memcpy(v181, v170 + v68, 0xB0uLL);
  if (sub_1D5012280(v181) == 1)
  {
    memcpy(v176, &v178[176], 0xB0uLL);
    if (sub_1D5012280(v176) == 1)
    {
      OUTLINED_FUNCTION_44_29(v177);
      OUTLINED_FUNCTION_20_58();
      sub_1D4F39AB0(v72, v73, v74, v75);
      OUTLINED_FUNCTION_20_58();
      sub_1D4F39AB0(v76, v77, v78, v79);
      OUTLINED_FUNCTION_25_47();
      sub_1D4E50004(v80, v81, v82);
      goto LABEL_33;
    }

    sub_1D4F39AB0(v179, v177, &qword_1EC7F1608, &qword_1D56409F8);
    sub_1D4F39AB0(v180, v177, &qword_1EC7F1608, &qword_1D56409F8);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_44_29(v177);
  OUTLINED_FUNCTION_44_29(v175);
  memcpy(v176, &v178[176], 0xB0uLL);
  if (sub_1D5012280(v176) == 1)
  {
    OUTLINED_FUNCTION_44_29(v174);
    OUTLINED_FUNCTION_41_32(v179);
    OUTLINED_FUNCTION_41_32(v180);
    OUTLINED_FUNCTION_41_32(v177);
    sub_1D524528C(v174);
LABEL_31:
    memcpy(v176, v178, sizeof(v176));
    v56 = &unk_1EC7F2990;
    v57 = &unk_1D5649E80;
    v58 = v176;
    goto LABEL_15;
  }

  memcpy(v174, &v178[176], sizeof(v174));
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v83, v84, v85, v86);
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v87, v88, v89, v90);
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v91, v92, v93, v94);
  static SpatialTimingInformation.== infix(_:_:)(v175, v174);
  v96 = v95;
  memcpy(v172, v174, sizeof(v172));
  sub_1D524528C(v172);
  memcpy(v173, v175, sizeof(v173));
  sub_1D524528C(v173);
  OUTLINED_FUNCTION_44_29(v174);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v97, v98, v99);
  if ((v96 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  v100 = v63[8];
  v101 = *(v170 + v100);
  v102 = *(v71 + v100);
  if (v101 == 2)
  {
    if (v102 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v102 == 2 || ((v102 ^ v101) & 1) != 0)
  {
    goto LABEL_16;
  }

  v103 = v63[9];
  if ((sub_1D560C2E8() & 1) == 0)
  {
    goto LABEL_16;
  }

  v104 = v63[10];
  v105 = *(v166 + 48);
  v106 = v168;
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v107, v108, v109, v110);
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v111, v112, v113, v114);
  OUTLINED_FUNCTION_57(v106, 1, v167);
  if (v49)
  {
    OUTLINED_FUNCTION_10(v106 + v105);
    if (v49)
    {
      sub_1D4E50004(v106, &qword_1EC7EDEE8, &qword_1D5628A68);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v115 = v165;
  sub_1D4F39AB0(v106, v165, &qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_10(v106 + v105);
  if (v116)
  {
    sub_1D4E50004(v115, &qword_1EC7EDF00, &unk_1D5628A80);
LABEL_47:
    v56 = &qword_1EC7F2988;
    v57 = &qword_1D5649E78;
    v58 = v106;
    goto LABEL_15;
  }

  v117 = v162;
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39A1C(v118, v119, v120, v121);
  v122 = v106;
  v123 = sub_1D5250D3C(v115, v117);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v124, v125, v126);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v127, v128, v129);
  sub_1D4E50004(v122, &qword_1EC7EDEE8, &qword_1D5628A68);
  if (!v123)
  {
    goto LABEL_16;
  }

LABEL_49:
  v130 = v63[11];
  v131 = *(v163 + 48);
  v132 = v160[0];
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v133, v134, v135, v136);
  v137 = v171;
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v138, v139, v140, v141);
  OUTLINED_FUNCTION_57(v132, 1, v164);
  if (v49)
  {
    OUTLINED_FUNCTION_10(v132 + v131);
    if (v49)
    {
      sub_1D4E50004(v132, &qword_1EC7EDEE0, &qword_1D5628A60);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v142 = v161;
  sub_1D4F39AB0(v132, v161, &qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_10(v132 + v131);
  if (v143)
  {
    sub_1D4E50004(v142, &qword_1EC7EDEF8, &qword_1D5628A78);
LABEL_57:
    v56 = &qword_1EC7F2980;
    v57 = &qword_1D5649E70;
    v58 = v132;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_20_58();
  sub_1D4F39A1C(v144, v145, v146, v147);
  v148 = OUTLINED_FUNCTION_39_4();
  v150 = sub_1D5251058(v148, v149);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v151, v152, v153);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v154, v155, v156);
  sub_1D4E50004(v132, &qword_1EC7EDEE0, &qword_1D5628A60);
  if (v150)
  {
LABEL_59:
    v157 = v170;
    if (*(v170 + v63[12]) == *(v137 + v63[12]) && *(v170 + v63[13]) == *(v137 + v63[13]))
    {
      v158 = v63[14];
      if (sub_1D560C2E8())
      {
        v159 = v63[15];
        if (sub_1D560C2E8())
        {
          LOBYTE(v59) = *(v157 + v63[16]) ^ *(v137 + v63[16]) ^ 1;
          return v59 & 1;
        }
      }
    }
  }

LABEL_16:
  LOBYTE(v59) = 0;
  return v59 & 1;
}

uint64_t MusicDownloadedSongCatalogProperties.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  OUTLINED_FUNCTION_14(v69);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v65 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v68 = v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_14(v67);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v64 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v66 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v63 - v34;
  v36 = *v2;
  v37 = v2[1];
  sub_1D5614E28();
  v38 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  sub_1D4F39AB0(v2 + v38[5], v35, &qword_1EC7EA788, &unk_1D56223A0);
  v39 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v39, v40, v22);
  if (v41)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v42 = *(v24 + 32);
    OUTLINED_FUNCTION_25_47();
    v43();
    OUTLINED_FUNCTION_42_29();
    sub_1D4F21B30();
    sub_1D5614CB8();
    (*(v24 + 8))(v29, v22);
  }

  v44 = v2 + v38[6];
  if (v44[8] == 1)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v45 = *v44;
    OUTLINED_FUNCTION_42_29();
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1DA6EC100](v46);
  }

  v47 = v38[7];
  memcpy(v73, v2 + v47, sizeof(v73));
  memcpy(v74, v2 + v47, 0xB0uLL);
  if (sub_1D5012280(v74) == 1)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    memcpy(v70, v73, sizeof(v70));
    OUTLINED_FUNCTION_42_29();
    memcpy(v71, v73, sizeof(v71));
    sub_1D51D2A24(v71, v72);
    SpatialTimingInformation.hash(into:)(a1);
    memcpy(v72, v70, sizeof(v72));
    sub_1D524528C(v72);
  }

  if (*(v2 + v38[8]) != 2)
  {
    OUTLINED_FUNCTION_42_29();
  }

  sub_1D56162F8();
  v48 = v38[9];
  sub_1D560C328();
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v49, v50);
  OUTLINED_FUNCTION_43_26();
  v51 = v66;
  sub_1D4F39AB0(v2 + v38[10], v66, &qword_1EC7EDEE8, &qword_1D5628A68);
  v52 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v52, v53, v67);
  if (v41)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v54 = v64;
    sub_1D4F39A1C(v51, v64, &qword_1EC7EDF00, &unk_1D5628A80);
    OUTLINED_FUNCTION_42_29();
    sub_1D525189C();
    sub_1D4E50004(v54, &qword_1EC7EDF00, &unk_1D5628A80);
  }

  v55 = v68;
  sub_1D4F39AB0(v2 + v38[11], v68, &qword_1EC7EDEE0, &qword_1D5628A60);
  v56 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v56, v57, v69);
  if (v41)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v58 = v65;
    sub_1D4F39A1C(v55, v65, &qword_1EC7EDEF8, &qword_1D5628A78);
    OUTLINED_FUNCTION_42_29();
    sub_1D5251684();
    sub_1D4E50004(v58, &qword_1EC7EDEF8, &qword_1D5628A78);
  }

  MEMORY[0x1DA6EC0D0](*(v2 + v38[12]));
  MEMORY[0x1DA6EC0D0](*(v2 + v38[13]));
  v59 = v2 + v38[14];
  OUTLINED_FUNCTION_43_26();
  v60 = v2 + v38[15];
  OUTLINED_FUNCTION_43_26();
  v61 = *(v2 + v38[16]);
  return sub_1D56162F8();
}

uint64_t MusicDownloadedSongCatalogProperties.hashValue.getter()
{
  sub_1D56162D8();
  MusicDownloadedSongCatalogProperties.hash(into:)(v1);
  return sub_1D5616328();
}

BOOL sub_1D5250D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29E8, &qword_1D564A130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v24 = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80) + 36);
  v18 = *(v13 + 48);
  sub_1D4F39AB0(a1 + v17, v16, &qword_1EC7F1548, &unk_1D5649E50);
  sub_1D4F39AB0(a2 + v17, &v16[v18], &qword_1EC7F1548, &unk_1D5649E50);
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v16[v18], 1, v4) == 1)
    {
      sub_1D4E50004(v16, &qword_1EC7F1548, &unk_1D5649E50);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D4F39AB0(v16, v12, &qword_1EC7F1548, &unk_1D5649E50);
  if (__swift_getEnumTagSinglePayload(&v16[v18], 1, v4) == 1)
  {
    (*(v24 + 8))(v12, v4);
LABEL_7:
    sub_1D4E50004(v16, &qword_1EC7F29E8, &qword_1D564A130);
    return 0;
  }

  v20 = v24;
  (*(v24 + 32))(v8, &v16[v18], v4);
  sub_1D52543B8();
  v21 = sub_1D5614D18();
  v22 = *(v20 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1D4E50004(v16, &qword_1EC7F1548, &unk_1D5649E50);
  return (v21 & 1) != 0;
}

BOOL sub_1D5251058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29F8, &qword_1D564A138);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v24 = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78) + 36);
  v18 = *(v13 + 48);
  sub_1D4F39AB0(a1 + v17, v16, &qword_1EC7F1558, &unk_1D5649E60);
  sub_1D4F39AB0(a2 + v17, &v16[v18], &qword_1EC7F1558, &unk_1D5649E60);
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v16[v18], 1, v4) == 1)
    {
      sub_1D4E50004(v16, &qword_1EC7F1558, &unk_1D5649E60);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D4F39AB0(v16, v12, &qword_1EC7F1558, &unk_1D5649E60);
  if (__swift_getEnumTagSinglePayload(&v16[v18], 1, v4) == 1)
  {
    (*(v24 + 8))(v12, v4);
LABEL_7:
    sub_1D4E50004(v16, &qword_1EC7F29F8, &qword_1D564A138);
    return 0;
  }

  v20 = v24;
  (*(v24 + 32))(v8, &v16[v18], v4);
  sub_1D525446C();
  v21 = sub_1D5614D18();
  v22 = *(v20 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1D4E50004(v16, &qword_1EC7F1558, &unk_1D5649E60);
  return (v21 & 1) != 0;
}

BOOL sub_1D5251374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v42 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4(TupleTypeMetadata2);
  v41 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_19_0();
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v38 = v13;
  v39 = a4;
  v40 = v9;
  v26 = *(type metadata accessor for MusicDownloadedSongCatalogProperties.UpdatableProperty() + 36);
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = *(v16 + 16);
  v28(v4, a1 + v26, v14);
  v28(v4 + v27, a2 + v26, v14);
  OUTLINED_FUNCTION_10(v4);
  if (!v31)
  {
    v28(v42, v4, v14);
    OUTLINED_FUNCTION_10(v4 + v27);
    if (!v31)
    {
      (*(v40 + 32))(v38, v4 + v27, a3);
      v33 = *(v39 + 8);
      v34 = sub_1D5614D18();
      v35 = *(v40 + 8);
      v35(v38, a3);
      v35(v42, a3);
      v36 = OUTLINED_FUNCTION_48_27();
      v37(v36);
      return (v34 & 1) != 0;
    }

    (*(v40 + 8))(v42, a3);
LABEL_10:
    (*(v41 + 8))(v4, TupleTypeMetadata2);
    return 0;
  }

  OUTLINED_FUNCTION_10(v4 + v27);
  if (!v31)
  {
    goto LABEL_10;
  }

  v29 = OUTLINED_FUNCTION_48_27();
  v30(v29);
  return 1;
}

uint64_t sub_1D5251684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1D560C328();
  sub_1D5254520(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  sub_1D4F39AB0(v0 + *(v10 + 36), v9, &qword_1EC7F1558, &unk_1D5649E60);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1D56162F8();
  sub_1D5254250();
  sub_1D5614CB8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D525189C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1D560C328();
  sub_1D5254520(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  sub_1D4F39AB0(v0 + *(v10 + 36), v9, &qword_1EC7F1548, &unk_1D5649E50);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1D56162F8();
  sub_1D5254304();
  sub_1D5614CB8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D5251AB4(uint64_t a1, uint64_t a2)
{
  sub_1D560C328();
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v3, v4);
  sub_1D5614CB8();
  v5 = *(a2 + 36);
  v6 = *(a2 + 16);
  sub_1D56158D8();
  v7 = *(a2 + 24);
  return sub_1D56158F8();
}

uint64_t sub_1D5251B44(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5251AB4(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D5251B98()
{
  sub_1D56162D8();
  MusicDownloadedSongCatalogProperties.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5251BE8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5251AB4(v4, a2);
  return sub_1D5616328();
}

unint64_t MusicDownloadedSongCatalogProperties.description.getter()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2998, &qword_1D5649E88);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v13);
  v154 = type metadata accessor for FlexAnalysis();
  v14 = OUTLINED_FUNCTION_14(v154);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v148 - v23;
  v158 = sub_1D560C328();
  v25 = OUTLINED_FUNCTION_4(v158);
  v157 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v152 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v153 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v149 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_11_3(&v148 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29A0, &qword_1D5649E90);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  v40 = type metadata accessor for AudioAnalysis();
  v41 = OUTLINED_FUNCTION_14(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v46 = (v45 - v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_9_0();
  v163 = 0xD000000000000025;
  v164 = v51;
  __dst[0] = 0x22203A6469;
  __dst[1] = 0xE500000000000000;
  v52 = *v0;
  v53 = v0[1];
  v54 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v54);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_9_79();
  v56 = *(v55 - 256);
  OUTLINED_FUNCTION_34_41();

  v57 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  sub_1D4F39AB0(v0 + v57[5], v2, &qword_1EC7EA788, &unk_1D56223A0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_57(v2, 1, v58);
  if (v59)
  {
    sub_1D4E50004(v2, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    OUTLINED_FUNCTION_22_47(&qword_1EC7EB778, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_24_48();
    sub_1D56155F8();
    OUTLINED_FUNCTION_24_0(v58);
    (*(v60 + 8))(v2, v58);
  }

  MusicDownloadedSongCatalogProperties.audioAnalysis.getter();
  v61 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v61, v62, v40);
  if (v59)
  {
    sub_1D4E50004(v1, &qword_1EC7F29A0, &qword_1D5649E90);
  }

  else
  {
    sub_1D52537B4(v1, v46, type metadata accessor for AudioAnalysis);
    OUTLINED_FUNCTION_29_41();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v63);
    OUTLINED_FUNCTION_7_88();
    *(v64 - 256) = v1;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_22(v65);
    v66 = *v46;
    v67 = v46[1];
    v68 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v68);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    v69 = OUTLINED_FUNCTION_4_85();
    v1 = *(v70 - 256);
    MEMORY[0x1DA6EAC70](v69, v1);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_27_44(v71);

    v72 = OUTLINED_FUNCTION_39_4();
    sub_1D5253810(v72, v73);
  }

  v74 = v158;
  sub_1D4F39AB0(v0 + v57[10], v24, &qword_1EC7EDEE8, &qword_1D5628A68);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_57(v24, 1, v75);
  if (v59)
  {
    sub_1D4E50004(v24, &qword_1EC7EDEE8, &qword_1D5628A68);
  }

  else
  {
    OUTLINED_FUNCTION_47_31();
    v76 = v149;
    v77(v149, v24, v74);
    sub_1D4E50004(v24, &qword_1EC7EDF00, &unk_1D5628A80);
    OUTLINED_FUNCTION_40_3();
    v78 = v150;
    v79(v150, v76, v74);
    OUTLINED_FUNCTION_14_62();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v80);
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v81, v82);
    v83 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v83);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_21_52(v84);

    (*(v1 + 8))(v78, v74);
  }

  v85 = v155;
  v86 = v3 + v57[6];
  if ((v86[8] & 1) == 0)
  {
    v87 = *v86;
    OUTLINED_FUNCTION_14_62();
    MEMORY[0x1DA6EAC70](0x697461727564202CLL, 0xEC000000203A6E6FLL);
    sub_1D5615568();
    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_21_52(v88);
  }

  MusicDownloadedSongCatalogProperties.flexAnalysis.getter();
  v89 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v89, v90, v154);
  if (v59)
  {
    sub_1D4E50004(v85, &qword_1EC7F2998, &qword_1D5649E88);
  }

  else
  {
    v91 = v151;
    sub_1D52537B4(v85, v151, type metadata accessor for FlexAnalysis);
    OUTLINED_FUNCTION_29_41();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v92);
    OUTLINED_FUNCTION_7_88();
    *(v93 - 256) = v85;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_5_88(v94);
    v95 = *v91;
    v96 = v91[1];
    v97 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v97);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    v98 = OUTLINED_FUNCTION_4_85();
    v85 = *(v99 - 256);
    MEMORY[0x1DA6EAC70](v98, v85);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_27_44(v100);

    sub_1D5253810(v91, type metadata accessor for FlexAnalysis);
  }

  v101 = v156;
  sub_1D4F39AB0(v3 + v57[11], v156, &qword_1EC7EDEE0, &qword_1D5628A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  v102 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v102, v103, v104);
  if (v59)
  {
    sub_1D4E50004(v101, &qword_1EC7EDEE0, &qword_1D5628A60);
  }

  else
  {
    OUTLINED_FUNCTION_47_31();
    v105 = v152;
    v106(v152, v101, v74);
    sub_1D4E50004(v101, &qword_1EC7EDEF8, &qword_1D5628A78);
    OUTLINED_FUNCTION_40_3();
    v107 = v153;
    v108(v153, v105, v74);
    OUTLINED_FUNCTION_14_62();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v109);
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v110, v111);
    v112 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v112);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_21_52(v113);

    v114 = *(v85 + 8);
    v85 += 8;
    v114(v107, v74);
  }

  memcpy(__dst, v3 + v57[7], sizeof(__dst));
  if (sub_1D5012280(__dst) != 1)
  {
    v85 = 0xE000000000000000;
    OUTLINED_FUNCTION_7_88();
    *(v115 - 256) = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_5_88(v116);
    v117 = __dst[20];
    v159 = 0;
    v160 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v159 = 0xD000000000000022;
    v160 = v118;
    v119 = MEMORY[0x1DA6EAF70](v117, &type metadata for SpatialOffset);
    MEMORY[0x1DA6EAC70](v119);

    MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](v159, v160);

    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_21_52(v120);
  }

  OUTLINED_FUNCTION_39_32();
  v121 = *(v3 + v57[8]);
  if (v121 != 2)
  {
    v161[0] = 0;
    v161[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_5_88(v122);
    if (v121)
    {
      v123 = v2;
    }

    else
    {
      v123 = v85;
    }

    if (v121)
    {
      v124 = 0xE400000000000000;
    }

    else
    {
      v124 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v123, v124);

    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_21_52(v125);
  }

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  v126 = *(v3 + v57[16]);
  strcpy(v161, ", isBackfill: ");
  HIBYTE(v161[1]) = -18;
  if (v126)
  {
    v127 = v2;
  }

  else
  {
    v127 = v85;
  }

  if (v126)
  {
    v128 = 0xE400000000000000;
  }

  else
  {
    v128 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v127, v128);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_21_52(v129);

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_88(v130);
  v159 = *(v3 + v57[13]);
  v131 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v131);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_21_52(v132);

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_88(v133);
  v134 = v57[14];
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v135, v136);
  OUTLINED_FUNCTION_39_4();
  v137 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v137);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_27_44(v138);

  strcpy(v161, ", addedDate: ");
  HIWORD(v161[1]) = -4864;
  v139 = v3 + v57[9];
  OUTLINED_FUNCTION_39_4();
  v140 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v140);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_27_44(v141);

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_49_22(v142);
  v143 = v3 + v57[15];
  OUTLINED_FUNCTION_39_4();
  v144 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v144);

  v145 = OUTLINED_FUNCTION_4_85();
  MEMORY[0x1DA6EAC70](v145, *(v146 - 256));

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v163;
}

unint64_t MusicDownloadedSongCatalogProperties.debugDescription.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v141 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2998, &qword_1D5649E88);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v140 = v12;
  v139 = type metadata accessor for FlexAnalysis();
  v13 = OUTLINED_FUNCTION_14(v139);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v136 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v132 - v22;
  v24 = sub_1D560C328();
  v25 = OUTLINED_FUNCTION_4(v24);
  v142 = v26;
  v143 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v137 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v138 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v134 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  v135 = &v132 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29A0, &qword_1D5649E90);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v132 - v40;
  v42 = type metadata accessor for AudioAnalysis();
  v43 = OUTLINED_FUNCTION_14(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v133 = v47 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_9_0();
  v155 = 0xD000000000000025;
  v156 = v52;
  v154[0] = 0x22203A646920200ALL;
  v154[1] = 0xE800000000000000;
  v53 = *v0;
  v54 = v0[1];
  v55 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v55);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v154[0], v154[1]);

  v56 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  sub_1D4F39AB0(v0 + v56[5], v1, &qword_1EC7EA788, &unk_1D56223A0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_57(v1, 1, v57);
  if (v58)
  {
    sub_1D4E50004(v1, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    OUTLINED_FUNCTION_22_47(&qword_1EC7EB778, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_24_48();
    sub_1D56155F8();
    OUTLINED_FUNCTION_24_0(v57);
    (*(v59 + 8))(v1, v57);
  }

  MusicDownloadedSongCatalogProperties.audioAnalysis.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v42);
  v61 = MEMORY[0x1E69E6158];
  v144 = v56;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v41, &qword_1EC7F29A0, &qword_1D5649E90);
  }

  else
  {
    v62 = v133;
    sub_1D52537B4(v41, v133, type metadata accessor for AudioAnalysis);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v154[0] = 0xD000000000000013;
    v154[1] = v63;
    v64 = AudioAnalysis.debugDescription.getter();
    OUTLINED_FUNCTION_36_36(v64, v65);
    v149 = 2105354;
    v150 = v66;
    sub_1D4F53278();
    OUTLINED_FUNCTION_31_36();
    v132 = v61;
    v133 = v67;
    OUTLINED_FUNCTION_3_31();
    sub_1D5615968();
    OUTLINED_FUNCTION_58_25();
    MEMORY[0x1DA6EAC70](v61, v56);
    v56 = v144;

    OUTLINED_FUNCTION_32_42();

    sub_1D5253810(v62, type metadata accessor for AudioAnalysis);
  }

  sub_1D4F39AB0(v0 + v56[10], v23, &qword_1EC7EDEE8, &qword_1D5628A68);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_57(v23, 1, v68);
  if (v58)
  {
    sub_1D4E50004(v23, &qword_1EC7EDEE8, &qword_1D5628A68);
    v73 = v143;
  }

  else
  {
    v70 = v142;
    v69 = v143;
    v71 = v134;
    (*(v142 + 16))(v134, v23, v143);
    v72 = v23;
    v73 = v69;
    sub_1D4E50004(v72, &qword_1EC7EDF00, &unk_1D5628A80);
    OUTLINED_FUNCTION_40_3();
    v74 = v135;
    v75(v135, v71, v69);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v154[0] = 0xD000000000000022;
    v154[1] = v76;
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v77, v78);
    v79 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v79);

    OUTLINED_FUNCTION_32_42();

    (*(v70 + 8))(v74, v69);
  }

  v80 = v140;
  v81 = v2 + v56[6];
  if ((v81[8] & 1) == 0)
  {
    v82 = *v81;
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_1D5615568();
    OUTLINED_FUNCTION_32_42();
  }

  MusicDownloadedSongCatalogProperties.flexAnalysis.getter();
  v83 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v83, v84, v139);
  if (v58)
  {
    sub_1D4E50004(v80, &qword_1EC7F2998, &qword_1D5649E88);
  }

  else
  {
    v85 = v136;
    sub_1D52537B4(v80, v136, type metadata accessor for FlexAnalysis);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v154[0] = 0xD000000000000012;
    v154[1] = v86;
    v87 = FlexAnalysis.debugDescription.getter();
    OUTLINED_FUNCTION_36_36(v87, v88);
    v149 = 2105354;
    v150 = v89;
    sub_1D4F53278();
    OUTLINED_FUNCTION_31_36();
    v133 = v90;
    v132 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_31();
    v91 = sub_1D5615968();
    v93 = v92;

    v94 = v91;
    v56 = v144;
    MEMORY[0x1DA6EAC70](v94, v93);

    MEMORY[0x1DA6EAC70](v154[0], v154[1]);

    sub_1D5253810(v85, type metadata accessor for FlexAnalysis);
  }

  v95 = v141;
  sub_1D4F39AB0(v2 + v56[11], v141, &qword_1EC7EDEE0, &qword_1D5628A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  v96 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v96, v97, v98);
  if (v58)
  {
    sub_1D4E50004(v95, &qword_1EC7EDEE0, &qword_1D5628A60);
  }

  else
  {
    v99 = v142;
    v100 = v137;
    (*(v142 + 16))(v137, v95, v73);
    sub_1D4E50004(v95, &qword_1EC7EDEF8, &qword_1D5628A78);
    OUTLINED_FUNCTION_40_3();
    v101 = v138;
    v102(v138, v100, v73);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v154[0] = 0xD000000000000021;
    v154[1] = v103;
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v104, v105);
    v106 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v106);

    OUTLINED_FUNCTION_32_42();

    (*(v99 + 8))(v101, v73);
  }

  v107 = MEMORY[0x1E69E6158];
  memcpy(v154, v2 + v56[7], sizeof(v154));
  if (sub_1D5012280(v154) != 1)
  {
    OUTLINED_FUNCTION_55_22();

    OUTLINED_FUNCTION_9_0();
    v152 = 0xD00000000000001ELL;
    v153 = v108;
    memcpy(v151, v154, sizeof(v151));
    v149 = SpatialTimingInformation.debugDescription.getter();
    v150 = v109;
    v147 = 10;
    v148 = 0xE100000000000000;
    v145 = 2105354;
    v146 = 0xE300000000000000;
    v134 = sub_1D4F53278();
    v135 = v134;
    v132 = v107;
    v133 = v134;
    OUTLINED_FUNCTION_3_31();
    sub_1D5615968();
    OUTLINED_FUNCTION_58_25();
    MEMORY[0x1DA6EAC70](v107, v56);
    v56 = v144;

    OUTLINED_FUNCTION_34_41();
  }

  OUTLINED_FUNCTION_39_32();
  v110 = *(v2 + v56[8]);
  if (v110 != 2)
  {
    OUTLINED_FUNCTION_55_22();

    OUTLINED_FUNCTION_9_0();
    v151[0] = 0xD00000000000001ELL;
    v151[1] = v111;
    if (v110)
    {
      v112 = 2105354;
    }

    else
    {
      v112 = v107;
    }

    if (v110)
    {
      v113 = 0xE400000000000000;
    }

    else
    {
      v113 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v112, v113);

    OUTLINED_FUNCTION_34_41();
  }

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v114 = v144;
  v115 = *(v2 + v144[16]);
  v151[0] = 0xD000000000000010;
  v151[1] = v116;
  if (v115)
  {
    v117 = 2105354;
  }

  else
  {
    v117 = v107;
  }

  if (v115)
  {
    v118 = 0xE400000000000000;
  }

  else
  {
    v118 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v117, v118);

  OUTLINED_FUNCTION_34_41();

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v151[0] = 0xD000000000000019;
  v151[1] = v119;
  v152 = *(v2 + v114[13]);
  v120 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v120);

  OUTLINED_FUNCTION_34_41();

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v151[0] = 0xD000000000000020;
  v151[1] = v121;
  v122 = v114[14];
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v123, v124);
  v125 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v125);

  MEMORY[0x1DA6EAC70](v151[0], v151[1]);

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  v151[0] = 0x6564646120200A2CLL;
  v151[1] = 0xEF203A6574614464;
  v126 = v2 + v114[9];
  v127 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v127);

  MEMORY[0x1DA6EAC70](v151[0], v151[1]);

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v151[0] = 0xD000000000000015;
  v151[1] = v128;
  v129 = v2 + v114[15];
  v130 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v130);

  MEMORY[0x1DA6EAC70](v151[0], v151[1]);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v155;
}

uint64_t MusicDownloadedSongCatalogProperties.FulfilledProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D525376C()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicDownloadedSongCatalogProperties.FulfilledProperty.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52537B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D5253810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D52538F8()
{
  result = qword_1EC7F29C0;
  if (!qword_1EC7F29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29C0);
  }

  return result;
}

uint64_t sub_1D5253974()
{
  sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD52730);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD55628);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD5F550);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          v1 = sub_1D560C328();
          if (v9 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EDD59AA8, &qword_1EC7EDF00, &unk_1D5628A80);
            if (v11 > 0x3F)
            {
              return v10;
            }

            sub_1D4E6D600(319, qword_1EDD59AB0, &qword_1EC7EDEF8, &qword_1D5628A78);
            if (v12 > 0x3F)
            {
              return v10;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MusicDownloadedSongCatalogProperties.FulfilledProperty(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5253C20(uint64_t a1)
{
  result = sub_1D560C328();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_1D56158D8();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5253CA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D560C328();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v12);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v11)
      {
LABEL_31:
        if (v7 >= v10)
        {

          return __swift_getEnumTagSinglePayload(a1, v7, v6);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v15) & ~v12, v9, *(a3 + 16));
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1D5253EE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D560C328();
  v9 = 0;
  v10 = *(*(v8 - 8) + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = *(*(v8 - 8) + 84);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(*(v8 - 8) + 64) + v16;
  v18 = v17 & ~v16;
  v19 = *(v12 + 64);
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v18 + v20;
  v22 = 8 * (v18 + v20);
  if (a3 > v15)
  {
    if (v21 <= 3)
    {
      v23 = ((a3 - v15 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v23))
      {
        v9 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v9 = v24;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v21] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v21] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v21] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v10 >= v14)
        {
          v32 = a1;
          v33 = a2;
          v11 = v8;
        }

        else
        {
          v28 = (&a1[v17] & ~v16);
          if (v14 < a2)
          {
            if (v20 <= 3)
            {
              v29 = ~(-1 << (8 * v20));
            }

            else
            {
              v29 = -1;
            }

            if (v20)
            {
              v30 = v29 & (~v14 + a2);
              if (v20 <= 3)
              {
                v31 = v20;
              }

              else
              {
                v31 = 4;
              }

              bzero(v28, v20);
              switch(v31)
              {
                case 2:
                  *v28 = v30;
                  break;
                case 3:
                  *v28 = v30;
                  v28[2] = BYTE2(v30);
                  break;
                case 4:
                  *v28 = v30;
                  break;
                default:
                  *v28 = v30;
                  break;
              }
            }

            return;
          }

          v33 = (a2 + 1);
          v32 = v28;
          v10 = v13;
        }

        __swift_storeEnumTagSinglePayload(v32, v33, v10, v11);
        break;
    }
  }

  else
  {
    v25 = ~v15 + a2;
    if (v21 < 4)
    {
      v26 = (v25 >> v22) + 1;
      if (v21)
      {
        v27 = v25 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v21 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v25;
      v26 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v21] = v26;
        break;
      case 2:
        *&a1[v21] = v26;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v21] = v26;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D5254250()
{
  result = qword_1EC7F29C8;
  if (!qword_1EC7F29C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA4F8, &unk_1D5648890);
    sub_1D5254520(&qword_1EC7F29D0, type metadata accessor for FlexAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29C8);
  }

  return result;
}

unint64_t sub_1D5254304()
{
  result = qword_1EC7F29D8;
  if (!qword_1EC7F29D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA508, &unk_1D561C480);
    sub_1D5254520(&qword_1EC7F29E0, type metadata accessor for AudioAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29D8);
  }

  return result;
}

unint64_t sub_1D52543B8()
{
  result = qword_1EC7F29F0;
  if (!qword_1EC7F29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA508, &unk_1D561C480);
    sub_1D5254520(qword_1EDD57AB8, type metadata accessor for AudioAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29F0);
  }

  return result;
}

unint64_t sub_1D525446C()
{
  result = qword_1EC7F2A00;
  if (!qword_1EC7F2A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA4F8, &unk_1D5648890);
    sub_1D5254520(qword_1EDD57C90, type metadata accessor for FlexAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A00);
  }

  return result;
}

uint64_t sub_1D5254520(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_34_41()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_42_29()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_57_26@<X0>(uint64_t a1@<X8>)
{

  return sub_1D4F39AB0(v1 + a1, v2, v3, v4);
}

uint64_t type metadata accessor for TVSeasonPropertyProvider()
{
  result = qword_1EC7F2A08;
  if (!qword_1EC7F2A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5254680()
{
  sub_1D5254AF8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD52820, &qword_1EC7EA3D0, &unk_1D56223F0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F070);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1D5254AF8(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_1D5254AF8(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
          if (v12 > 0x3F)
          {
            return v11;
          }

          sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
          if (v13 > 0x3F)
          {
            return v9;
          }

          sub_1D4E518A0(319, &qword_1EDD52708);
          if (v15 > 0x3F)
          {
            return v14;
          }

          sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
          if (v16 > 0x3F)
          {
            return v9;
          }

          sub_1D4E518A0(319, &qword_1EDD5F550);
          if (v17 > 0x3F)
          {
            return v9;
          }

          sub_1D4E6D600(319, &qword_1EDD52850, &qword_1EC7ECBC0, &qword_1D562BF20);
          if (v18 > 0x3F)
          {
            return v9;
          }

          sub_1D5254AF8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v19 > 0x3F)
          {
            return v9;
          }

          sub_1D4E6D600(319, &qword_1EC7F0458, &qword_1EC7EA370, &unk_1D561C080);
          if (v20 > 0x3F)
          {
            return v9;
          }

          sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
          if (v21 > 0x3F)
          {
            return v9;
          }

          sub_1D4E6D600(319, &qword_1EC7F0450, &qword_1EC7EA380, &qword_1D561C090);
          if (v22 > 0x3F)
          {
            return v9;
          }

          sub_1D5254AF8(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
          if (v23 > 0x3F)
          {
            return v9;
          }

          v9 = sub_1D560D838();
          if (v24 > 0x3F)
          {
            return v9;
          }

          v9 = sub_1D5610088();
          if (v25 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1D4E5CF94();
            v1 = v26;
            if (v27 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1D5254AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5254BA4()
{
  OUTLINED_FUNCTION_47();
  v160 = v0;
  v161 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v157 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v156 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v158 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v159 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v156 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v40 = v38 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v156 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v156 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v156 - v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D5688FC0);
    v164 = v3;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v155 = 45;
    goto LABEL_139;
  }

  v54 = v53;
  v55 = qword_1EC7E8B58;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_47_32();
  }

  *&v162 = qword_1EC87BFB0;
  v164 = v54;
  sub_1D4EC5794(&qword_1EC7F2A40, &qword_1EC7ECDB0, &qword_1D562BE00);
  if (OUTLINED_FUNCTION_13_66())
  {
    sub_1D4F1C460(v160, v52, &qword_1EC7E9CA0, &unk_1D561A0C0);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v52);
    if (!v56)
    {
LABEL_136:
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_15_1();
      v129 = *(v154 + 32);
      goto LABEL_15;
    }

    v57 = &qword_1EC7E9CA0;
    v58 = &unk_1D561A0C0;
    v59 = v52;
LABEL_8:
    sub_1D4E50004(v59, v57, v58);
    v162 = 0u;
    v163 = 0u;
LABEL_16:
    v66 = v163;
    v67 = v161;
    *v161 = v162;
    v67[1] = v66;
    goto LABEL_84;
  }

  v60 = qword_1EC7E8B60;

  if (v60 != -1)
  {
    OUTLINED_FUNCTION_46_25();
  }

  v61 = OUTLINED_FUNCTION_1_115(qword_1EC87BFB8);

  if (v61)
  {
    v62 = type metadata accessor for TVSeasonPropertyProvider();
    OUTLINED_FUNCTION_82_0(*(v62 + 20));
    if (v30)
    {
      v63 = &qword_1EC7EA3D0;
      v64 = &unk_1D56223F0;
LABEL_14:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);

LABEL_83:

      v116 = v161;
      *v161 = v30;
      v116[1] = 0;
      v116[2] = 0;
      v116[3] = v65;
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  v68 = qword_1EC7E8B68;

  if (v68 != -1)
  {
    OUTLINED_FUNCTION_45_30();
  }

  v69 = OUTLINED_FUNCTION_1_115(qword_1EC87BFC0);

  if (v69)
  {
    v70 = (v160 + *(type metadata accessor for TVSeasonPropertyProvider() + 24));
    v71 = v70[1];
    if (!v71)
    {
      v73 = 0;
      v72 = 0;
      goto LABEL_34;
    }

LABEL_21:
    v72 = *v70;

    v73 = MEMORY[0x1E69E6158];
LABEL_34:

    v83 = v161;
    *v161 = v72;
    v83[1] = v71;
    v83[2] = 0;
    v83[3] = v73;
    goto LABEL_84;
  }

  v74 = qword_1EC7E8B70;

  if (v74 != -1)
  {
    OUTLINED_FUNCTION_43_27();
  }

  v75 = OUTLINED_FUNCTION_1_115(qword_1EC87BFC8);

  if (v75)
  {
    v76 = type metadata accessor for TVSeasonPropertyProvider();
    v77 = OUTLINED_FUNCTION_61_4(*(v76 + 28));
    sub_1D4F1C460(v77, v46, v78, v79);
    sub_1D560C328();
    OUTLINED_FUNCTION_1(v46);
    if (!v56)
    {
      goto LABEL_136;
    }

    v57 = &qword_1EC7EA3B8;
    v58 = &unk_1D561E370;
    v59 = v46;
    goto LABEL_8;
  }

  v80 = qword_1EC7E8B78;

  if (v80 != -1)
  {
    OUTLINED_FUNCTION_6_84();
  }

  v81 = OUTLINED_FUNCTION_1_115(qword_1EC87BFD0);

  if (v81)
  {
    v82 = type metadata accessor for TVSeasonPropertyProvider();
    OUTLINED_FUNCTION_82_0(*(v82 + 32));
    if (v30)
    {
      v63 = &qword_1EC7EC480;
      v64 = &unk_1D56222E0;
      goto LABEL_14;
    }

LABEL_82:
    v65 = 0;
    goto LABEL_83;
  }

  v84 = qword_1EC7E8B80;

  if (v84 != -1)
  {
    OUTLINED_FUNCTION_61_25();
  }

  v85 = OUTLINED_FUNCTION_1_115(qword_1EC87BFD8);

  if (v85)
  {
    v86 = type metadata accessor for TVSeasonPropertyProvider();
    v87 = OUTLINED_FUNCTION_61_4(*(v86 + 36));
    sub_1D4F1C460(v87, v33, v88, v89);
    sub_1D5610978();
    OUTLINED_FUNCTION_1(v33);
    if (!v56)
    {
      goto LABEL_136;
    }

    v57 = &qword_1EC7EAC98;
    v58 = &unk_1D561DA80;
    v59 = v33;
    goto LABEL_8;
  }

  *&v162 = sub_1D4F849F8();
  v164 = v54;
  v90 = OUTLINED_FUNCTION_13_66();

  if (v90)
  {
    v91 = type metadata accessor for TVSeasonPropertyProvider();
    OUTLINED_FUNCTION_82_0(*(v91 + 40));
    if (v30)
    {
      v63 = &qword_1EC7EC9E8;
      v64 = &qword_1D562B870;
      goto LABEL_14;
    }

    goto LABEL_82;
  }

  v92 = qword_1EC7E8B88;

  if (v92 != -1)
  {
    OUTLINED_FUNCTION_33_8();
  }

  OUTLINED_FUNCTION_1_115(qword_1EC87BFE0);
  OUTLINED_FUNCTION_85_13();
  if (v92)
  {
    v93 = 0;
    v94 = 0;
    v95 = *(type metadata accessor for TVSeasonPropertyProvider() + 44);
LABEL_48:
    v96 = (v160 + v95);
    if ((v96[1] & 1) == 0)
    {
      v94 = *v96;
      v93 = MEMORY[0x1E69E6530];
    }

    v97 = v161;
    *v161 = v94;
    v97[1] = 0;
    v97[2] = 0;
    v97[3] = v93;
    goto LABEL_84;
  }

  v98 = qword_1EC7E8B90;

  if (v98 != -1)
  {
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_1_115(qword_1EC87BFE8);
  OUTLINED_FUNCTION_85_13();
  if (v98)
  {
    v99 = type metadata accessor for TVSeasonPropertyProvider();
    OUTLINED_FUNCTION_82_0(*(v99 + 48));
    if (v30)
    {
      v63 = &qword_1EC7EABD8;
      v64 = &unk_1D561D780;
      goto LABEL_14;
    }

    goto LABEL_82;
  }

  v100 = qword_1EC7E8B98;

  if (v100 != -1)
  {
    OUTLINED_FUNCTION_58_26();
  }

  OUTLINED_FUNCTION_1_115(qword_1EC87BFF0);
  OUTLINED_FUNCTION_85_13();
  if (v100)
  {
    v101 = *(type metadata accessor for TVSeasonPropertyProvider() + 52);
  }

  else
  {
    v102 = qword_1EC7E8BA0;

    if (v102 != -1)
    {
      OUTLINED_FUNCTION_57_27();
    }

    OUTLINED_FUNCTION_1_115(qword_1EC87BFF8);
    OUTLINED_FUNCTION_85_13();
    if ((v102 & 1) == 0)
    {
      v106 = qword_1EC7E8BA8;

      if (v106 != -1)
      {
        OUTLINED_FUNCTION_56_22();
      }

      OUTLINED_FUNCTION_1_115(qword_1EC87C000);
      OUTLINED_FUNCTION_85_13();
      if (v106)
      {
        v107 = type metadata accessor for TVSeasonPropertyProvider();
        v108 = OUTLINED_FUNCTION_61_4(*(v107 + 60));
        sub_1D4F1C460(v108, v44, v109, v110);
        sub_1D560C328();
        OUTLINED_FUNCTION_1(v44);
        if (!v56)
        {
          goto LABEL_136;
        }

        v57 = &qword_1EC7EA3B8;
        v58 = &unk_1D561E370;
        v59 = v44;
        goto LABEL_8;
      }

      v111 = qword_1EC7E8BB0;

      if (v111 != -1)
      {
        OUTLINED_FUNCTION_55_23();
      }

      v112 = OUTLINED_FUNCTION_1_115(qword_1EC87C008);

      if ((v112 & 1) == 0)
      {
        v113 = qword_1EC7E8BB8;

        if (v113 != -1)
        {
          OUTLINED_FUNCTION_54_23();
        }

        v114 = OUTLINED_FUNCTION_1_115(qword_1EC87C010);

        if (v114)
        {
          v115 = type metadata accessor for TVSeasonPropertyProvider();
          OUTLINED_FUNCTION_82_0(*(v115 + 68));
          if (v30)
          {
            v63 = &qword_1EC7ECBC0;
            v64 = &qword_1D562BF20;
            goto LABEL_14;
          }

          goto LABEL_82;
        }

        v117 = qword_1EC7E8BF0;

        if (v117 != -1)
        {
          OUTLINED_FUNCTION_10_81();
        }

        v118 = OUTLINED_FUNCTION_1_115(qword_1EC7EE5C0);

        if (v118)
        {
          v119 = type metadata accessor for TVSeasonPropertyProvider();
          v120 = OUTLINED_FUNCTION_61_4(*(v119 + 72));
          sub_1D4F1C460(v120, v30, v121, v122);
          v123 = sub_1D5610978();
          OUTLINED_FUNCTION_57(v30, 1, v123);
          if (!v56)
          {
            *(&v163 + 1) = v123;
            __swift_allocate_boxed_opaque_existential_0(&v162);
            v129 = *(*(v123 - 8) + 32);
LABEL_15:
            v129();

            goto LABEL_16;
          }

          v57 = &qword_1EC7EAC98;
          v58 = &unk_1D561DA80;
          v59 = v30;
          goto LABEL_8;
        }

        v124 = qword_1EC7E8BC0;

        if (v124 != -1)
        {
          OUTLINED_FUNCTION_53_24();
        }

        OUTLINED_FUNCTION_1_115(qword_1EC87C018);
        OUTLINED_FUNCTION_63();
        if (v124)
        {
          v125 = type metadata accessor for TVSeasonPropertyProvider();
          v126 = OUTLINED_FUNCTION_61_4(*(v125 + 76));
          sub_1D4F1C460(v126, v40, v127, v128);
          sub_1D560C328();
          OUTLINED_FUNCTION_1(v40);
          if (!v56)
          {
            goto LABEL_136;
          }

          v57 = &qword_1EC7EA3B8;
          v58 = &unk_1D561E370;
          v59 = v40;
          goto LABEL_8;
        }

        v130 = qword_1EC7E8BC8;

        if (v130 != -1)
        {
          OUTLINED_FUNCTION_52_26();
        }

        OUTLINED_FUNCTION_1_115(qword_1EC87C020);
        OUTLINED_FUNCTION_63();
        if (v130)
        {
          v131 = *(type metadata accessor for TVSeasonPropertyProvider() + 80);
        }

        else
        {
          v132 = qword_1EC7E8BD0;

          if (v132 != -1)
          {
            OUTLINED_FUNCTION_51_26();
          }

          OUTLINED_FUNCTION_1_115(qword_1EC87C028);
          OUTLINED_FUNCTION_63();
          if (v132)
          {
            v131 = *(type metadata accessor for TVSeasonPropertyProvider() + 84);
          }

          else
          {
            v133 = qword_1EC7E8BD8;

            if (v133 != -1)
            {
              OUTLINED_FUNCTION_50_25();
            }

            OUTLINED_FUNCTION_1_115(qword_1EC87C030);
            OUTLINED_FUNCTION_63();
            if (v133)
            {
              v131 = *(type metadata accessor for TVSeasonPropertyProvider() + 88);
            }

            else
            {
              v134 = qword_1EC7E8BE0;

              if (v134 != -1)
              {
                OUTLINED_FUNCTION_49_23();
              }

              OUTLINED_FUNCTION_1_115(qword_1EC87C038);
              OUTLINED_FUNCTION_63();
              if ((v134 & 1) == 0)
              {
                v135 = qword_1EC7E8BE8;

                if (v135 != -1)
                {
                  OUTLINED_FUNCTION_34_1();
                }

                OUTLINED_FUNCTION_1_115(qword_1EC87C040);
                OUTLINED_FUNCTION_63();
                if (v135)
                {
                  v136 = type metadata accessor for TVSeasonPropertyProvider();
                  v137 = v159;
                  sub_1D4F1C460(v160 + *(v136 + 96), v159, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  sub_1D560C0A8();
                  OUTLINED_FUNCTION_1(v137);
                  if (!v56)
                  {
                    goto LABEL_136;
                  }

                  v57 = &unk_1EC7E9CA8;
                  v58 = &unk_1D561D1D0;
                  v59 = v159;
                }

                else
                {
                  v30 = qword_1EC7E8BF8;

                  if (v30 != -1)
                  {
                    goto LABEL_140;
                  }

                  while (1)
                  {
                    OUTLINED_FUNCTION_1_115(qword_1EC7EE5C8);
                    OUTLINED_FUNCTION_63();
                    if (v30)
                    {
                      v138 = type metadata accessor for TVSeasonPropertyProvider();
                      v139 = OUTLINED_FUNCTION_61_4(*(v138 + 100));
                      v140 = v158;
                      sub_1D4F1C460(v139, v158, v141, v142);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
                      OUTLINED_FUNCTION_1(v140);
                      if (!v56)
                      {
                        goto LABEL_136;
                      }

                      v57 = &qword_1EC7ECBA8;
                      v58 = &unk_1D56223B0;
                      v59 = v158;
                      goto LABEL_8;
                    }

                    v143 = qword_1EC7E8C00;

                    if (v143 != -1)
                    {
                      OUTLINED_FUNCTION_8_79();
                    }

                    OUTLINED_FUNCTION_1_115(qword_1EC7EE5D0);
                    OUTLINED_FUNCTION_63();
                    if (v143)
                    {
                      v144 = type metadata accessor for TVSeasonPropertyProvider();
                      v145 = OUTLINED_FUNCTION_61_4(*(v144 + 104));
                      v146 = v156;
                      sub_1D4F1C460(v145, v156, v147, v148);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                      OUTLINED_FUNCTION_1(v146);
                      if (!v56)
                      {
                        goto LABEL_136;
                      }

                      v57 = &qword_1EC7EA788;
                      v58 = &unk_1D56223A0;
                      v59 = v156;
                      goto LABEL_8;
                    }

                    v30 = qword_1EC7E8C08;

                    if (v30 != -1)
                    {
                      OUTLINED_FUNCTION_7_0();
                    }

                    OUTLINED_FUNCTION_1_115(qword_1EC7EE5D8);
                    OUTLINED_FUNCTION_63();
                    if (v30)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_30();
                    sub_1D5615B68();
                    OUTLINED_FUNCTION_16_6();
                    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
                    v164 = v3;
                    sub_1D560CDE8();
                    sub_1D5615D48();
                    OUTLINED_FUNCTION_33_0();
                    OUTLINED_FUNCTION_28();
                    v155 = 100;
LABEL_139:
                    v156 = v155;
                    OUTLINED_FUNCTION_12_3();
                    __break(1u);
LABEL_140:
                    OUTLINED_FUNCTION_9_4();
                  }

                  v149 = type metadata accessor for TVSeasonPropertyProvider();
                  v150 = OUTLINED_FUNCTION_61_4(*(v149 + 108));
                  v151 = v157;
                  sub_1D4F1C460(v150, v157, v152, v153);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
                  OUTLINED_FUNCTION_1(v151);
                  if (!v56)
                  {
                    goto LABEL_136;
                  }

                  v57 = &qword_1EC7ECBA0;
                  v58 = &unk_1D56270F0;
                  v59 = v157;
                }

                goto LABEL_8;
              }

              v131 = *(type metadata accessor for TVSeasonPropertyProvider() + 92);
            }
          }
        }

        v70 = (v160 + v131);
        v71 = v70[1];
        if (!v71)
        {
          v72 = 0;
          v73 = 0;
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      v94 = 0;
      v93 = 0;
      v95 = *(type metadata accessor for TVSeasonPropertyProvider() + 64);
      goto LABEL_48;
    }

    v101 = *(type metadata accessor for TVSeasonPropertyProvider() + 56);
  }

  v103 = *(v160 + v101);

  v104 = MEMORY[0x1E69E6370];
  if (v103 == 2)
  {
    v104 = 0;
  }

  v105 = v161;
  *v161 = v103 & 1;
  v105[1] = 0;
  v105[2] = 0;
  v105[3] = v104;
LABEL_84:
  OUTLINED_FUNCTION_46();
}