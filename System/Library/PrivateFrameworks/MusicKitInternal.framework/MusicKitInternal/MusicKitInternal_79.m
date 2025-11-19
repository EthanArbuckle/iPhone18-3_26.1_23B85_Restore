uint64_t type metadata accessor for MusicShareableItem()
{
  result = qword_1EC7F83D0;
  if (!qword_1EC7F83D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5551868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D55518C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t MusicShareableItem.id.getter()
{
  MusicShareableItem.innerItem.getter(v1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_128();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return OUTLINED_FUNCTION_71();
}

uint64_t MusicShareableItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for MusicShareableItem();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_98();
  sub_1D53570B8(v3, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = sub_1D5613EF8();
      v21 = v20;
      v22 = MEMORY[0x1E6976EF8];
      goto LABEL_19;
    case 2u:
      v20 = sub_1D56141F8();
      v21 = v20;
      v22 = MEMORY[0x1E6977018];
      goto LABEL_19;
    case 3u:
      v20 = sub_1D5613C48();
      v21 = v20;
      v22 = MEMORY[0x1E6976DA0];
      goto LABEL_19;
    case 4u:
      a1[3] = type metadata accessor for MusicMovie();
      v23 = sub_1D55597C4(&qword_1EDD59308, type metadata accessor for MusicMovie);
      v18 = OUTLINED_FUNCTION_104_0(v23);
      v19 = type metadata accessor for MusicMovie;
      goto LABEL_14;
    case 5u:
      v20 = sub_1D560EEA8();
      v21 = v20;
      v22 = MEMORY[0x1E69754B0];
      goto LABEL_19;
    case 6u:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      v28 = sub_1D5614898();
      v29 = MEMORY[0x1E69773A0];
      a1[3] = v28;
      a1[4] = v29;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v28);
      v31 = *(v30 + 32);
      OUTLINED_FUNCTION_64_29();
      v32();
      v15 = &unk_1EC7F2BE0;
      v16 = &qword_1D56250F0;
      goto LABEL_16;
    case 7u:
      v20 = sub_1D5614B68();
      v21 = v20;
      v22 = MEMORY[0x1E6977520];
      goto LABEL_19;
    case 8u:
      v20 = sub_1D560F8B8();
      v21 = v20;
      v22 = MEMORY[0x1E6975870];
      goto LABEL_19;
    case 9u:
      a1[3] = type metadata accessor for SocialProfile();
      v25 = sub_1D55597C4(&qword_1EDD57518, type metadata accessor for SocialProfile);
      v18 = OUTLINED_FUNCTION_104_0(v25);
      v19 = type metadata accessor for SocialProfile;
      goto LABEL_14;
    case 0xAu:
      v20 = sub_1D5613838();
      v21 = v20;
      v22 = MEMORY[0x1E6976BB0];
      goto LABEL_19;
    case 0xBu:
      v20 = sub_1D5614408();
      v21 = v20;
      v22 = MEMORY[0x1E6977150];
LABEL_19:
      a1[3] = v20;
      a1[4] = v22;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v21);
      v34 = *(v33 + 32);
      OUTLINED_FUNCTION_64_29();
      return v35();
    case 0xCu:
      a1[3] = type metadata accessor for TVEpisode();
      v24 = sub_1D55597C4(&qword_1EDD54508, type metadata accessor for TVEpisode);
      v18 = OUTLINED_FUNCTION_104_0(v24);
      v19 = type metadata accessor for TVEpisode;
      goto LABEL_14;
    case 0xDu:
      a1[3] = type metadata accessor for TVShow();
      v26 = sub_1D55597C4(&qword_1EC7EA688, type metadata accessor for TVShow);
      v18 = OUTLINED_FUNCTION_104_0(v26);
      v19 = type metadata accessor for TVShow;
      goto LABEL_14;
    case 0xEu:
      a1[3] = type metadata accessor for UploadedVideo();
      v17 = sub_1D55597C4(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      v18 = OUTLINED_FUNCTION_104_0(v17);
      v19 = type metadata accessor for UploadedVideo;
LABEL_14:
      result = sub_1D55518C0(v1, v18, v19);
      break;
    default:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v10 = sub_1D5613AF8();
      v11 = MEMORY[0x1E6976CF0];
      a1[3] = v10;
      a1[4] = v11;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v10);
      v13 = *(v12 + 32);
      OUTLINED_FUNCTION_64_29();
      v14();
      v15 = &qword_1EC7EA888;
      v16 = &qword_1D563B8C0;
LABEL_16:
      result = sub_1D4E50004(v1 + v9, v15, v16);
      break;
  }

  return result;
}

void MusicShareableItem.name.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for UploadedVideo();
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v153 = v27;
  OUTLINED_FUNCTION_70_0();
  v28 = type metadata accessor for TVShow();
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v152 = v32;
  OUTLINED_FUNCTION_70_0();
  v33 = type metadata accessor for TVEpisode();
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v151 = v37;
  OUTLINED_FUNCTION_70_0();
  v38 = sub_1D5614408();
  v150 = OUTLINED_FUNCTION_4(v38);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v41 = sub_1D5613838();
  v148 = OUTLINED_FUNCTION_4(v41);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v44 = type metadata accessor for SocialProfile();
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v149 = v48;
  OUTLINED_FUNCTION_70_0();
  v49 = sub_1D560F8B8();
  v147 = OUTLINED_FUNCTION_4(v49);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v52 = sub_1D5614B68();
  v146 = OUTLINED_FUNCTION_4(v52);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v145 = sub_1D5614898();
  v55 = OUTLINED_FUNCTION_4(v145);
  v144 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v59);
  v60 = sub_1D560EEA8();
  v61 = OUTLINED_FUNCTION_12_0(v60, &a17);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v64);
  v65 = type metadata accessor for MusicMovie();
  v66 = OUTLINED_FUNCTION_22(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D5613C48();
  v71 = OUTLINED_FUNCTION_12_0(v70, &a13);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v76 = v75 - v74;
  v77 = sub_1D56141F8();
  v78 = OUTLINED_FUNCTION_4(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5();
  v81 = OUTLINED_FUNCTION_134_11();
  v82 = OUTLINED_FUNCTION_4(v81);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  v87 = v86 - v85;
  v88 = sub_1D5613AF8();
  v89 = OUTLINED_FUNCTION_4(v88);
  v91 = v90;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5();
  v94 = OUTLINED_FUNCTION_94_22();
  v95 = OUTLINED_FUNCTION_14(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  v100 = v99 - v98;
  sub_1D53570B8(v20, v99 - v98);
  OUTLINED_FUNCTION_93();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_56(&a10);
      v129(v87, v100, v81);
      sub_1D5613ED8();
      v125 = *(v91 + 8);
      v123 = v87;
      v124 = v81;
      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_40_56(&a11);
      v120 = OUTLINED_FUNCTION_209();
      v121(v120);
      sub_1D56141D8();
      OUTLINED_FUNCTION_53_3();
      v122 = *(v91 + 8);
      v123 = OUTLINED_FUNCTION_26_27();
LABEL_17:
      v125(v123, v124);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19(&a12);
      OUTLINED_FUNCTION_56_1();
      v126();
      sub_1D5613C28();
      OUTLINED_FUNCTION_53_3();
      (*(v94 + 8))(v76, v91);
      break;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_117_0(&a14);
      sub_1D55518C0(v113, v114, v115);
      MusicMovie.title.getter();
      OUTLINED_FUNCTION_53_3();
      v116 = type metadata accessor for MusicMovie;
      goto LABEL_20;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_56_1();
      v130();
      sub_1D560EE68();
      goto LABEL_25;
    case 6u:
      v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      OUTLINED_FUNCTION_81();
      v133 = OUTLINED_FUNCTION_68_4();
      v134(v133);
      sub_1D56146D8();
      OUTLINED_FUNCTION_53_3();
      v135 = *(v144 + 8);
      v136 = OUTLINED_FUNCTION_222();
      v137(v136);
      v104 = &unk_1EC7F2BE0;
      v105 = &qword_1D56250F0;
      v106 = v100 + v132;
      goto LABEL_22;
    case 7u:
      v91 = v146;
      OUTLINED_FUNCTION_33_1();
      v127 = OUTLINED_FUNCTION_68_4();
      v128(v127);
      sub_1D5614B38();
      goto LABEL_25;
    case 8u:
      v140 = OUTLINED_FUNCTION_45_15();
      v91 = v147;
      v141(v140, v100, v147);
      sub_1D560F898();
      goto LABEL_25;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      v107 = v149;
      sub_1D55518C0(v100, v149, v118);
      if (qword_1EDD53FA8 != -1)
      {
        swift_once();
      }

      sub_1D55597C4(&qword_1EDD57518, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_37_2();
      sub_1D55597C4(v119, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_127_4();
      v110 = type metadata accessor for SocialProfile;
      goto LABEL_12;
    case 0xAu:
      v138 = OUTLINED_FUNCTION_45_15();
      v91 = v148;
      v139(v138, v100, v148);
      sub_1D56137E8();
      goto LABEL_25;
    case 0xBu:
      v91 = v150;
      OUTLINED_FUNCTION_33_1();
      v111 = OUTLINED_FUNCTION_68_4();
      v112(v111);
      sub_1D5614388();
LABEL_25:
      OUTLINED_FUNCTION_53_3();
      v142 = OUTLINED_FUNCTION_133_11();
      v143(v142, v91);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      v20 = v151;
      sub_1D55518C0(v100, v151, v117);
      TVEpisode.title.getter();
      OUTLINED_FUNCTION_53_3();
      v116 = type metadata accessor for TVEpisode;
      goto LABEL_20;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      v20 = v152;
      sub_1D55518C0(v100, v152, v131);
      TVShow.name.getter();
      OUTLINED_FUNCTION_53_3();
      v116 = type metadata accessor for TVShow;
LABEL_20:
      sub_1D5551868(v20, v116);
      break;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v107 = v153;
      sub_1D55518C0(v100, v153, v108);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      sub_1D55597C4(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D55597C4(v109, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_127_4();
      v110 = type metadata accessor for UploadedVideo;
LABEL_12:
      sub_1D5551868(v107, v110);
      break;
    default:
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v102 = OUTLINED_FUNCTION_135_2(v91);
      v103(v102, v100, v88);
      sub_1D5613AB8();
      (*(v91 + 8))(v20, v88);
      v104 = &qword_1EC7EA888;
      v105 = &qword_1D563B8C0;
      v106 = v100 + v101;
LABEL_22:
      sub_1D4E50004(v106, v104, v105);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem.artwork.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v26 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v30 = type metadata accessor for TVShow();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v34 = type metadata accessor for TVEpisode();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v170 = v38;
  OUTLINED_FUNCTION_70_0();
  v39 = sub_1D5614408();
  v40 = OUTLINED_FUNCTION_4(v39);
  v168 = v41;
  v169 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v166 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D5613838();
  v46 = OUTLINED_FUNCTION_4(v45);
  v164 = v47;
  v165 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v163 = v50;
  OUTLINED_FUNCTION_70_0();
  v51 = type metadata accessor for SocialProfile();
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v167 = v55;
  OUTLINED_FUNCTION_70_0();
  v56 = sub_1D560F8B8();
  v57 = OUTLINED_FUNCTION_4(v56);
  v161 = v58;
  v162 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v160 = v61;
  OUTLINED_FUNCTION_70_0();
  v62 = sub_1D5614B68();
  v63 = OUTLINED_FUNCTION_4(v62);
  v158 = v64;
  v159 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v156 = v67;
  OUTLINED_FUNCTION_70_0();
  v157 = sub_1D5614898();
  v68 = OUTLINED_FUNCTION_4(v157);
  v155 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v72);
  v73 = sub_1D560EEA8();
  v74 = OUTLINED_FUNCTION_12_0(v73, &a16);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v77);
  v78 = type metadata accessor for MusicMovie();
  v79 = OUTLINED_FUNCTION_22(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = sub_1D5613C48();
  v84 = OUTLINED_FUNCTION_12_0(v83, &a13);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v87 = sub_1D56141F8();
  v88 = OUTLINED_FUNCTION_4(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v91 = sub_1D5613EF8();
  v92 = OUTLINED_FUNCTION_4(v91);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v95 = sub_1D5613AF8();
  v96 = OUTLINED_FUNCTION_4(v95);
  v98 = v97;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  v101 = OUTLINED_FUNCTION_94_22();
  v102 = OUTLINED_FUNCTION_14(v101);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5();
  v107 = (v106 - v105);
  sub_1D53570B8(v20, v106 - v105);
  OUTLINED_FUNCTION_46_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67(&a11);
      v135 = OUTLINED_FUNCTION_93();
      v136(v135);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D0, &qword_1D562DEE0);
      v138 = *(v137 + 48);
      v139 = *(v137 + 52);
      swift_allocObject();
      sub_1D560DE48();
      sub_1D5613EE8();
      v150 = *(v22 + 8);
      v151 = OUTLINED_FUNCTION_86_0();
      v152(v151);

      break;
    case 2u:
      OUTLINED_FUNCTION_40_56(&a10);
      v131(v23, v107, v87);
      sub_1D56141E8();
      (*(v91 + 8))(v23, v87);
      break;
    case 3u:
      OUTLINED_FUNCTION_35_0(&a12);
      OUTLINED_FUNCTION_56_1();
      v132();
      _s8MusicKit5GenreV0aB8InternalE7artworkAA7ArtworkVSgvg_0();
      (*(v101 + 8))(v22, v91);
      break;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_154_9(v107, v124, &a17);
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_21_83();
      sub_1D55597C4(v125, v107);
      OUTLINED_FUNCTION_28_73(&qword_1EDD59300);
      OUTLINED_FUNCTION_39_53();
      v120 = type metadata accessor for MusicMovie;
      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_35_0(&a15);
      v121 = v153;
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_56_1();
      v140();
      sub_1D560EE78();
      goto LABEL_29;
    case 6u:
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      OUTLINED_FUNCTION_40_3();
      v144 = OUTLINED_FUNCTION_222();
      v145(v144);
      sub_1D5614848();
      (*(v155 + 8))(v154, v157);
      v114 = &unk_1EC7F2BE0;
      v115 = &qword_1D56250F0;
      goto LABEL_26;
    case 7u:
      v101 = v158;
      v91 = v159;
      OUTLINED_FUNCTION_81();
      v121 = v156;
      v133 = OUTLINED_FUNCTION_222();
      v134(v133);
      sub_1D5614B48();
      goto LABEL_29;
    case 8u:
      v121 = v160;
      v101 = v161;
      v148 = OUTLINED_FUNCTION_135_2(v161);
      v91 = v162;
      v149(v148, v107, v162);
      sub_1D560F8A8();
      goto LABEL_29;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      v21 = v167;
      sub_1D55518C0(v107, v167, v128);
      if (qword_1EDD53F90 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_77_23();
      sub_1D55597C4(v129, v107);
      OUTLINED_FUNCTION_37_2();
      sub_1D55597C4(v130, v107);
      OUTLINED_FUNCTION_39_53();
      v120 = type metadata accessor for SocialProfile;
      goto LABEL_24;
    case 0xAu:
      v121 = v163;
      v101 = v164;
      v146 = OUTLINED_FUNCTION_135_2(v164);
      v91 = v165;
      v147(v146, v107, v165);
      sub_1D56137F8();
      goto LABEL_29;
    case 0xBu:
      v101 = v168;
      v91 = v169;
      OUTLINED_FUNCTION_81();
      v121 = v166;
      v122 = OUTLINED_FUNCTION_222();
      v123(v122);
      sub_1D56143B8();
LABEL_29:
      (*(v101 + 8))(v121, v91);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      v21 = v170;
      sub_1D55518C0(v107, v170, v126);
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_20_99();
      sub_1D55597C4(v127, v107);
      OUTLINED_FUNCTION_27_76(&qword_1EC7EC490);
      OUTLINED_FUNCTION_39_53();
      v120 = type metadata accessor for TVEpisode;
      goto LABEL_24;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      OUTLINED_FUNCTION_151_10(v107, v141, v142);
      if (qword_1EC7E9538 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_19_90();
      sub_1D55597C4(v143, v107);
      OUTLINED_FUNCTION_26_81(&qword_1EC7EC4A0);
      OUTLINED_FUNCTION_39_53();
      v120 = type metadata accessor for TVShow;
      goto LABEL_24;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      OUTLINED_FUNCTION_152_11(v107, v116, v117);
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_22_79();
      sub_1D55597C4(v118, v107);
      OUTLINED_FUNCTION_23_2();
      sub_1D55597C4(v119, v107);
      OUTLINED_FUNCTION_39_53();
      v120 = type metadata accessor for UploadedVideo;
LABEL_24:
      sub_1D5551868(v21, v120);
      break;
    default:
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v109 = OUTLINED_FUNCTION_135_2(v98);
      v110(v109, v107, v95);
      sub_1D5613AE8();
      v111 = *(v98 + 8);
      v112 = OUTLINED_FUNCTION_20_5();
      v113(v112);
      v114 = &qword_1EC7EA888;
      v115 = &qword_1D563B8C0;
LABEL_26:
      sub_1D4E50004(v107 + v108, v114, v115);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem.url.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v149 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for TVShow();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v36 = type metadata accessor for TVEpisode();
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D5614408();
  v148 = OUTLINED_FUNCTION_4(v40);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v43 = sub_1D5613838();
  v146 = OUTLINED_FUNCTION_4(v43);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v46 = type metadata accessor for SocialProfile();
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v147 = v50;
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D560F8B8();
  v145 = OUTLINED_FUNCTION_4(v51);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D5614B68();
  v144 = OUTLINED_FUNCTION_4(v54);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v143 = sub_1D5614898();
  v57 = OUTLINED_FUNCTION_4(v143);
  v142 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v141 = v61;
  OUTLINED_FUNCTION_70_0();
  v62 = sub_1D560EEA8();
  v63 = OUTLINED_FUNCTION_12_0(v62, &a17);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v67 = type metadata accessor for MusicMovie();
  v68 = OUTLINED_FUNCTION_22(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v71);
  v72 = sub_1D5613C48();
  v73 = OUTLINED_FUNCTION_12_0(v72, &a14);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v76 = sub_1D56141F8();
  v77 = OUTLINED_FUNCTION_4(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5();
  v80 = OUTLINED_FUNCTION_134_11();
  v81 = OUTLINED_FUNCTION_4(v80);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v84 = sub_1D5613AF8();
  v85 = OUTLINED_FUNCTION_4(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5();
  v90 = OUTLINED_FUNCTION_94_22();
  v91 = OUTLINED_FUNCTION_14(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_15_98();
  sub_1D53570B8(v21, v20);
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_30_19(&a11);
      v124 = OUTLINED_FUNCTION_143();
      v125(v124);
      sub_1D5613EC8();
      (*(v90 + 8))(v24, v80);
      break;
    case 2u:
      OUTLINED_FUNCTION_30_19(&a12);
      v113(v23, v20, v76);
      sub_1D56141C8();
      v114 = *(v90 + 8);
      v115 = OUTLINED_FUNCTION_26_27();
      goto LABEL_31;
    case 3u:
      OUTLINED_FUNCTION_30_19(&a13);
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_56_1();
      v121(v118, v119, v120);
      _s8MusicKit5GenreV0aB8InternalE3url10Foundation3URLVSgvg_0();
      v117 = *(v90 + 8);
      v115 = v22;
      goto LABEL_30;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_154_9(v20, v105, &a18);
      if (qword_1EDD541F8 != -1)
      {
        swift_once();
      }

      sub_1D560C0A8();
      OUTLINED_FUNCTION_21_83();
      sub_1D55597C4(v106, v90);
      OUTLINED_FUNCTION_28_73(&qword_1EDD59300);
      OUTLINED_FUNCTION_39_53();
      v102 = type metadata accessor for MusicMovie;
      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_56_1();
      v129(v126, v127, v128);
      sub_1D560EE58();
      goto LABEL_29;
    case 6u:
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      v133 = OUTLINED_FUNCTION_135_2(v142);
      v134(v133, v20, v143);
      sub_1D56146B8();
      (*(v142 + 8))(v141, v143);
      v97 = &unk_1EC7F2BE0;
      v98 = &qword_1D56250F0;
      goto LABEL_26;
    case 7u:
      OUTLINED_FUNCTION_33_1();
      v122 = OUTLINED_FUNCTION_159();
      v20 = v144;
      v123(v122);
      sub_1D5614B28();
      goto LABEL_29;
    case 8u:
      v138 = OUTLINED_FUNCTION_45_15();
      v139 = v20;
      v20 = v145;
      v140(v138, v139, v145);
      sub_1D560F888();
      goto LABEL_29;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      v22 = v147;
      sub_1D55518C0(v20, v147, v110);
      if (qword_1EDD53FB0 != -1)
      {
        swift_once();
      }

      sub_1D560C0A8();
      OUTLINED_FUNCTION_77_23();
      sub_1D55597C4(v111, v90);
      OUTLINED_FUNCTION_37_2();
      sub_1D55597C4(v112, v90);
      OUTLINED_FUNCTION_39_53();
      v102 = type metadata accessor for SocialProfile;
      goto LABEL_24;
    case 0xAu:
      v135 = OUTLINED_FUNCTION_45_15();
      v136 = v20;
      v20 = v146;
      v137(v135, v136, v146);
      sub_1D56137D8();
      goto LABEL_29;
    case 0xBu:
      OUTLINED_FUNCTION_33_1();
      v103 = OUTLINED_FUNCTION_159();
      v20 = v148;
      v104(v103);
      sub_1D5614378();
LABEL_29:
      v115 = OUTLINED_FUNCTION_133_11();
LABEL_30:
      v116 = v20;
LABEL_31:
      v117(v115, v116);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      OUTLINED_FUNCTION_151_10(v20, v107, v108);
      if (qword_1EC7E9288 != -1)
      {
        swift_once();
      }

      sub_1D560C0A8();
      OUTLINED_FUNCTION_20_99();
      sub_1D55597C4(v109, v90);
      OUTLINED_FUNCTION_27_76(&qword_1EC7EC490);
      OUTLINED_FUNCTION_39_53();
      v102 = type metadata accessor for TVEpisode;
      goto LABEL_24;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      OUTLINED_FUNCTION_152_11(v20, v130, v131);
      if (qword_1EC7E9590 != -1)
      {
        swift_once();
      }

      sub_1D560C0A8();
      OUTLINED_FUNCTION_19_90();
      sub_1D55597C4(v132, v90);
      OUTLINED_FUNCTION_26_81(&qword_1EC7EC4A0);
      OUTLINED_FUNCTION_39_53();
      v102 = type metadata accessor for TVShow;
      goto LABEL_24;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v22 = v149;
      sub_1D55518C0(v20, v149, v99);
      if (qword_1EDD53E30 != -1)
      {
        swift_once();
      }

      sub_1D560C0A8();
      OUTLINED_FUNCTION_22_79();
      sub_1D55597C4(v100, v90);
      OUTLINED_FUNCTION_23_2();
      sub_1D55597C4(v101, v90);
      OUTLINED_FUNCTION_39_53();
      v102 = type metadata accessor for UploadedVideo;
LABEL_24:
      sub_1D5551868(v22, v102);
      break;
    default:
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v95 = OUTLINED_FUNCTION_135_2(v87);
      v96(v95, v20, v84);
      sub_1D5613AA8();
      (*(v87 + 8))(v21, v84);
      v97 = &qword_1EC7EA888;
      v98 = &qword_1D563B8C0;
LABEL_26:
      sub_1D4E50004(v20 + v94, v97, v98);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v242[0] = v21;
  v242[1] = v26;
  v240 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_14(v240);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v241 = v30;
  OUTLINED_FUNCTION_70_0();
  v238 = type metadata accessor for TVShow();
  v31 = OUTLINED_FUNCTION_14(v238);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v239 = v34;
  OUTLINED_FUNCTION_70_0();
  v236 = type metadata accessor for TVEpisode();
  v35 = OUTLINED_FUNCTION_14(v236);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v237 = v38;
  OUTLINED_FUNCTION_70_0();
  v39 = sub_1D5614408();
  v40 = OUTLINED_FUNCTION_4(v39);
  v234 = v41;
  v235 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v233 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D5613838();
  v46 = OUTLINED_FUNCTION_4(v45);
  v231 = v47;
  v232 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v230 = v50;
  OUTLINED_FUNCTION_70_0();
  v227 = type metadata accessor for SocialProfile();
  v51 = OUTLINED_FUNCTION_14(v227);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v229 = v54;
  OUTLINED_FUNCTION_70_0();
  v55 = sub_1D560F8B8();
  v56 = OUTLINED_FUNCTION_4(v55);
  v225 = v57;
  v226 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = sub_1D5614B68();
  v62 = OUTLINED_FUNCTION_12_0(v61, &a16);
  v220 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v228 = sub_1D5614828();
  v67 = OUTLINED_FUNCTION_4(v228);
  v213 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v73 = OUTLINED_FUNCTION_22(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v77);
  v78 = sub_1D5614898();
  v79 = OUTLINED_FUNCTION_4(v78);
  v223 = v80;
  v224 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v83);
  v84 = sub_1D560EEA8();
  v85 = OUTLINED_FUNCTION_12_0(v84, &a11);
  v219 = v86;
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v89);
  v218 = type metadata accessor for MusicMovie();
  v90 = OUTLINED_FUNCTION_14(v218);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = sub_1D5613C48();
  v95 = OUTLINED_FUNCTION_12_0(v94, v242);
  v217 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D56141F8();
  v101 = OUTLINED_FUNCTION_12_0(v100, &v237);
  v215 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5();
  v105 = OUTLINED_FUNCTION_134_11();
  v106 = OUTLINED_FUNCTION_4(v105);
  v214 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v110 = sub_1D5613D28();
  v111 = OUTLINED_FUNCTION_12_0(v110, &v240);
  v212 = v112;
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v117 = OUTLINED_FUNCTION_22(v116);
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_59_0();
  v122 = v120 - v121;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v210 - v124;
  v126 = sub_1D5613AF8();
  v127 = OUTLINED_FUNCTION_4(v126);
  v129 = v128;
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_15_98();
  v132 = type metadata accessor for MusicShareableItem();
  v133 = OUTLINED_FUNCTION_14(v132);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_5();
  v138 = v137 - v136;
  sub_1D53570B8(v242[0], v137 - v136);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_56(&v236);
      v173 = OUTLINED_FUNCTION_63_1();
      v174(v173);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_73_27();
      sub_1D55597C4(v175, v176);
      sub_1D5614CB8();
      (*(v20 + 8))(v22, v105);
      break;
    case 2u:
      OUTLINED_FUNCTION_40_56(&v238);
      OUTLINED_FUNCTION_133();
      v168();
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_76_22();
      sub_1D55597C4(v169, v170);
      sub_1D5614CB8();
      (*(v20 + 8))(v23, v22);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19(&v241);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v171();
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_75_28();
      goto LABEL_23;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_132_13(&v243);
      sub_1D55518C0(v157, v158, v159);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v218);
      OUTLINED_FUNCTION_10_131();
      sub_1D55597C4(v160, v161);
      OUTLINED_FUNCTION_49_1();
      v153 = type metadata accessor for MusicMovie;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a10);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v177();
      MEMORY[0x1DA6EC0D0](5);
      OUTLINED_FUNCTION_72_32();
      goto LABEL_23;
    case 6u:
      v181 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      v183 = v223;
      v182 = v224;
      v184 = v221;
      (*(v223 + 32))(v221, v138, v224);
      v185 = v222;
      OUTLINED_FUNCTION_119_12();
      sub_1D4F39A1C(v186, v187, v188, v189);
      MEMORY[0x1DA6EC0D0](6);
      OUTLINED_FUNCTION_37_53();
      sub_1D55597C4(v190, v191);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_117_0(&a12);
      OUTLINED_FUNCTION_119_12();
      sub_1D4F39AB0(v192, v193, v194, v195);
      v196 = OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_57(v196, v197, v228);
      if (v149)
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_30_19(&v235);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_102();
        v205();
        sub_1D56162F8();
        OUTLINED_FUNCTION_35_64();
        sub_1D55597C4(v206, v207);
        sub_1D5614CB8();
        v208 = OUTLINED_FUNCTION_86_0();
        v209(v208);
      }

      sub_1D4E50004(v185, &unk_1EC7F2BE0, &qword_1D56250F0);
      (*(v183 + 8))(v184, v182);
      break;
    case 7u:
      OUTLINED_FUNCTION_30_19(&a14);
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_56_1();
      v172();
      MEMORY[0x1DA6EC0D0](7);
      OUTLINED_FUNCTION_74_31();
      goto LABEL_23;
    case 8u:
      v22 = v225;
      v20 = v226;
      OUTLINED_FUNCTION_33_1();
      v199 = OUTLINED_FUNCTION_57_4();
      v200(v199);
      MEMORY[0x1DA6EC0D0](8);
      OUTLINED_FUNCTION_70_29();
      goto LABEL_23;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      v122 = v229;
      sub_1D55518C0(v138, v229, v165);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v227);
      OUTLINED_FUNCTION_10_131();
      sub_1D55597C4(v166, v167);
      OUTLINED_FUNCTION_49_1();
      v153 = type metadata accessor for SocialProfile;
      goto LABEL_17;
    case 0xAu:
      v122 = v230;
      v22 = v231;
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_146_10();
      v198();
      MEMORY[0x1DA6EC0D0](10);
      OUTLINED_FUNCTION_71_28();
      goto LABEL_23;
    case 0xBu:
      v122 = v233;
      v22 = v234;
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_147_11();
      v154();
      MEMORY[0x1DA6EC0D0](11);
      OUTLINED_FUNCTION_78_27();
LABEL_23:
      sub_1D55597C4(v155, v156);
      sub_1D5614CB8();
      (*(v22 + 8))(v122, v20);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      v122 = v237;
      sub_1D55518C0(v138, v237, v162);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v236);
      OUTLINED_FUNCTION_10_131();
      sub_1D55597C4(v163, v164);
      OUTLINED_FUNCTION_49_1();
      v153 = type metadata accessor for TVEpisode;
      goto LABEL_17;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      v122 = v239;
      sub_1D55518C0(v138, v239, v178);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v238);
      OUTLINED_FUNCTION_10_131();
      sub_1D55597C4(v179, v180);
      OUTLINED_FUNCTION_49_1();
      v153 = type metadata accessor for TVShow;
      goto LABEL_17;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v122 = v241;
      sub_1D55518C0(v138, v241, v150);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_140_5();
      OUTLINED_FUNCTION_139_0(v240);
      OUTLINED_FUNCTION_10_131();
      sub_1D55597C4(v151, v152);
      OUTLINED_FUNCTION_49_1();
      v153 = type metadata accessor for UploadedVideo;
LABEL_17:
      sub_1D5551868(v122, v153);
      break;
    default:
      v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v140 = *(v129 + 32);
      v141 = OUTLINED_FUNCTION_71();
      v142(v141);
      sub_1D4F39A1C(v138 + v139, v125, &qword_1EC7EA888, &qword_1D563B8C0);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_33_60();
      sub_1D55597C4(v143, v144);
      sub_1D5614CB8();
      v145 = OUTLINED_FUNCTION_96_18();
      sub_1D4F39AB0(v145, v146, v147, &qword_1D563B8C0);
      v148 = v216;
      OUTLINED_FUNCTION_57(v122, 1, v216);
      if (v149)
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_67(&v233);
        v201 = v211;
        v202(v211, v122, v148);
        sub_1D56162F8();
        OUTLINED_FUNCTION_34_65();
        sub_1D55597C4(v203, v204);
        sub_1D5614CB8();
        MEMORY[0x171EB9A8](v201, v148);
      }

      sub_1D4E50004(v125, &qword_1EC7EA888, &qword_1D563B8C0);
      (*(v129 + 8))(v20, v126);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicShareableItem.hashValue.getter()
{
  sub_1D56162D8();
  MusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D5554EE8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicShareableItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MusicShareableItem._editorialArtworks.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v26 = type metadata accessor for UploadedVideo();
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v136 = v30;
  OUTLINED_FUNCTION_70_0();
  v31 = type metadata accessor for TVShow();
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for TVEpisode();
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v39 = sub_1D5614408();
  v135 = OUTLINED_FUNCTION_4(v39);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v42 = sub_1D5613838();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D560F8B8();
  v47 = OUTLINED_FUNCTION_4(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v50 = sub_1D5614B68();
  v134 = OUTLINED_FUNCTION_4(v50);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v133 = sub_1D5614898();
  v53 = OUTLINED_FUNCTION_4(v133);
  v132 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v57 = sub_1D560EEA8();
  v58 = OUTLINED_FUNCTION_12_0(v57, &a18);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = type metadata accessor for MusicMovie();
  v63 = OUTLINED_FUNCTION_22(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v131 = v66;
  OUTLINED_FUNCTION_70_0();
  v67 = sub_1D5613C48();
  v68 = OUTLINED_FUNCTION_12_0(v67, &a15);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  v73 = v72 - v71;
  v74 = sub_1D56141F8();
  v75 = OUTLINED_FUNCTION_4(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v78 = sub_1D5613EF8();
  v79 = OUTLINED_FUNCTION_4(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_15_98();
  v82 = sub_1D5613AF8();
  v83 = OUTLINED_FUNCTION_4(v82);
  v85 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  v88 = OUTLINED_FUNCTION_94_22();
  v89 = OUTLINED_FUNCTION_14(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_111_15(v92);
  OUTLINED_FUNCTION_209();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0(&a12);
      v114(v20, v23, v78);
      sub_1D5613E48();
      v115 = *(v73 + 8);
      v116 = OUTLINED_FUNCTION_128();
      v117(v116);
      break;
    case 2u:
      OUTLINED_FUNCTION_40_56(&a13);
      v110(v22, v23, v74);
      sub_1D5614178();
      (*(v20 + 8))(v22, v74);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19(&a14);
      OUTLINED_FUNCTION_56_1();
      v111();
      sub_1D5613BB8();
      (*(v78 + 8))(v73, v20);
      break;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      v88 = v131;
      sub_1D55518C0(v23, v131, v104);
      if (qword_1EDD54250 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
      OUTLINED_FUNCTION_21_83();
      sub_1D55597C4(v105, v78);
      OUTLINED_FUNCTION_28_73(&qword_1EDD59300);
      OUTLINED_FUNCTION_29_65();
      v101 = type metadata accessor for MusicMovie;
      goto LABEL_22;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a17);
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_56_1();
      v118();
      sub_1D560EDE8();
      goto LABEL_27;
    case 6u:
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      OUTLINED_FUNCTION_81();
      v122 = OUTLINED_FUNCTION_20_5();
      v123(v122);
      sub_1D56145B8();
      v124 = *(v132 + 8);
      v125 = OUTLINED_FUNCTION_222();
      v126(v125);
      v96 = &unk_1EC7F2BE0;
      v97 = &qword_1D56250F0;
      goto LABEL_24;
    case 7u:
      v20 = v134;
      OUTLINED_FUNCTION_33_1();
      v112 = OUTLINED_FUNCTION_20_5();
      v113(v112);
      sub_1D5614AE8();
      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_24_74();
      OUTLINED_FUNCTION_146_10();
      v128();
      sub_1D560F848();
      goto LABEL_27;
    case 9u:
      OUTLINED_FUNCTION_7_147();
      sub_1D5551868(v23, v109);
      break;
    case 0xAu:
      OUTLINED_FUNCTION_24_74();
      OUTLINED_FUNCTION_147_11();
      v127();
      sub_1D56136F8();
      goto LABEL_27;
    case 0xBu:
      v102 = OUTLINED_FUNCTION_24_74();
      v20 = v135;
      v103(v102);
      sub_1D5614298();
LABEL_27:
      v129 = OUTLINED_FUNCTION_133_11();
      v130(v129, v20);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      OUTLINED_FUNCTION_151_10(v23, v106, v107);
      if (qword_1EC7E91A8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
      OUTLINED_FUNCTION_20_99();
      sub_1D55597C4(v108, v78);
      OUTLINED_FUNCTION_27_76(&qword_1EC7EC490);
      OUTLINED_FUNCTION_29_65();
      v101 = type metadata accessor for TVEpisode;
      goto LABEL_22;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      OUTLINED_FUNCTION_152_11(v23, v119, v120);
      if (qword_1EC7E9548 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
      OUTLINED_FUNCTION_19_90();
      sub_1D55597C4(v121, v78);
      OUTLINED_FUNCTION_26_81(&qword_1EC7EC4A0);
      OUTLINED_FUNCTION_29_65();
      v101 = type metadata accessor for TVShow;
      goto LABEL_22;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v88 = v136;
      sub_1D55518C0(v23, v136, v98);
      if (qword_1EDD53ED0 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
      OUTLINED_FUNCTION_22_79();
      sub_1D55597C4(v99, v78);
      OUTLINED_FUNCTION_23_2();
      sub_1D55597C4(v100, v78);
      OUTLINED_FUNCTION_29_65();
      v101 = type metadata accessor for UploadedVideo;
LABEL_22:
      sub_1D5551868(v88, v101);
      break;
    default:
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v94 = OUTLINED_FUNCTION_32_65(v85);
      v95(v94);
      sub_1D5613988();
      (*(v85 + 8))(v21, v82);
      v96 = &qword_1EC7EA888;
      v97 = &qword_1D563B8C0;
LABEL_24:
      sub_1D4E50004(v23 + v93, v96, v97);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem._editorialVideoArtworks.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v25 = type metadata accessor for UploadedVideo();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v138 = v29;
  OUTLINED_FUNCTION_70_0();
  v30 = type metadata accessor for TVShow();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v34 = type metadata accessor for TVEpisode();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v38 = sub_1D5614408();
  v137 = OUTLINED_FUNCTION_4(v38);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v41 = sub_1D5613838();
  v42 = OUTLINED_FUNCTION_4(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D560F8B8();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v49 = sub_1D5614B68();
  v136 = OUTLINED_FUNCTION_4(v49);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v135 = sub_1D5614898();
  v52 = OUTLINED_FUNCTION_4(v135);
  v134 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v56 = sub_1D560EEA8();
  v57 = OUTLINED_FUNCTION_12_0(v56, &a18);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = type metadata accessor for MusicMovie();
  v62 = OUTLINED_FUNCTION_22(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  v133 = v65;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D5613C48();
  v67 = OUTLINED_FUNCTION_12_0(v66, &a15);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  v72 = v71 - v70;
  v73 = sub_1D56141F8();
  v74 = OUTLINED_FUNCTION_4(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v77 = sub_1D5613EF8();
  v78 = OUTLINED_FUNCTION_4(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_15_98();
  v81 = sub_1D5613AF8();
  v82 = OUTLINED_FUNCTION_4(v81);
  v84 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  v87 = OUTLINED_FUNCTION_94_22();
  v88 = OUTLINED_FUNCTION_14(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_111_15(v91);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0(&a12);
      v116(v20, v22, v77);
      sub_1D5613E88();
      v117 = *(v72 + 8);
      v118 = OUTLINED_FUNCTION_128();
      v119(v118);
      break;
    case 2u:
      OUTLINED_FUNCTION_40_56(&a13);
      v112(v21, v22, v73);
      sub_1D5614198();
      (*(v20 + 8))(v21, v73);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19(&a14);
      OUTLINED_FUNCTION_56_1();
      v113();
      sub_1D5613BE8();
      (*(v77 + 8))(v72, v20);
      break;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      v81 = v133;
      sub_1D55518C0(v22, v133, v106);
      sub_1D4F84A28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
      OUTLINED_FUNCTION_21_83();
      sub_1D55597C4(v107, v77);
      OUTLINED_FUNCTION_28_73(&qword_1EDD59300);
      OUTLINED_FUNCTION_29_65();

      v103 = type metadata accessor for MusicMovie;
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a17);
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_56_1();
      v120();
      sub_1D560ECB8();
      goto LABEL_19;
    case 6u:
      v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      v124 = OUTLINED_FUNCTION_32_65(v134);
      v125(v124);
      sub_1D5614658();
      v126 = *(v134 + 8);
      v127 = OUTLINED_FUNCTION_222();
      v128(v127);
      v98 = &unk_1EC7F2BE0;
      v99 = &qword_1D56250F0;
      goto LABEL_16;
    case 7u:
      v20 = v136;
      OUTLINED_FUNCTION_33_1();
      v114 = OUTLINED_FUNCTION_20_5();
      v115(v114);
      sub_1D5614B08();
      goto LABEL_19;
    case 8u:
      OUTLINED_FUNCTION_24_74();
      OUTLINED_FUNCTION_146_10();
      v130();
      sub_1D560F868();
      goto LABEL_19;
    case 9u:
      OUTLINED_FUNCTION_7_147();
      sub_1D5551868(v22, v111);
      break;
    case 0xAu:
      OUTLINED_FUNCTION_24_74();
      OUTLINED_FUNCTION_147_11();
      v129();
      sub_1D5613758();
      goto LABEL_19;
    case 0xBu:
      v104 = OUTLINED_FUNCTION_24_74();
      v20 = v137;
      v105(v104);
      sub_1D5614338();
LABEL_19:
      v131 = OUTLINED_FUNCTION_133_11();
      v132(v131, v20);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      OUTLINED_FUNCTION_151_10(v22, v108, v109);
      sub_1D4F84A58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
      OUTLINED_FUNCTION_20_99();
      sub_1D55597C4(v110, v77);
      OUTLINED_FUNCTION_27_76(&qword_1EC7EC490);
      OUTLINED_FUNCTION_29_65();

      v103 = type metadata accessor for TVEpisode;
      goto LABEL_14;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      OUTLINED_FUNCTION_152_11(v22, v121, v122);
      sub_1D4F84AE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
      OUTLINED_FUNCTION_19_90();
      sub_1D55597C4(v123, v77);
      OUTLINED_FUNCTION_26_81(&qword_1EC7EC4A0);
      OUTLINED_FUNCTION_29_65();

      v103 = type metadata accessor for TVShow;
      goto LABEL_14;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v81 = v138;
      sub_1D55518C0(v22, v138, v100);
      sub_1D4F84AB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
      OUTLINED_FUNCTION_22_79();
      sub_1D55597C4(v101, v77);
      OUTLINED_FUNCTION_23_2();
      sub_1D55597C4(v102, v77);
      OUTLINED_FUNCTION_29_65();

      v103 = type metadata accessor for UploadedVideo;
LABEL_14:
      sub_1D5551868(v81, v103);
      break;
    default:
      v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v93 = OUTLINED_FUNCTION_32_65(v84);
      v94(v93);
      sub_1D56139F8();
      v95 = *(v84 + 8);
      v96 = OUTLINED_FUNCTION_68_4();
      v97(v96);
      v98 = &qword_1EC7EA888;
      v99 = &qword_1D563B8C0;
LABEL_16:
      sub_1D4E50004(v22 + v92, v98, v99);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v265 = v21;
  v25 = type metadata accessor for UploadedVideo();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v263 = v29;
  OUTLINED_FUNCTION_70_0();
  v30 = type metadata accessor for TVShow();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v264 = v34;
  OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for TVEpisode();
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v257 = v39;
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D5614408();
  v41 = OUTLINED_FUNCTION_4(v40);
  v258 = v42;
  v259 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v255 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D5613838();
  v47 = OUTLINED_FUNCTION_4(v46);
  v253 = v48;
  v254 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v251 = v51;
  OUTLINED_FUNCTION_70_0();
  v52 = type metadata accessor for SocialProfile();
  v53 = OUTLINED_FUNCTION_22(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v56);
  v57 = sub_1D560F8B8();
  v58 = OUTLINED_FUNCTION_4(v57);
  v249 = v59;
  v250 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v63 = sub_1D5614B68();
  v64 = OUTLINED_FUNCTION_12_0(v63, &a16);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v67);
  v252 = sub_1D5614828();
  v68 = OUTLINED_FUNCTION_4(v252);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v73 = OUTLINED_FUNCTION_22(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_2();
  v260 = v77;
  OUTLINED_FUNCTION_70_0();
  v78 = sub_1D5614898();
  v79 = OUTLINED_FUNCTION_4(v78);
  v261 = v80;
  v262 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  v256 = v83;
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D560EEA8();
  v85 = OUTLINED_FUNCTION_12_0(v84, &a12);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = type metadata accessor for MusicMovie();
  v90 = OUTLINED_FUNCTION_22(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = sub_1D5613C48();
  v95 = OUTLINED_FUNCTION_12_0(v94, &v269);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D56141F8();
  v100 = OUTLINED_FUNCTION_12_0(v99, &v266);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v103 = sub_1D5613EF8();
  v104 = OUTLINED_FUNCTION_4(v103);
  v245 = v105;
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_15_98();
  v108 = sub_1D5613D28();
  v109 = OUTLINED_FUNCTION_12_0(v108, &a9);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v114 = OUTLINED_FUNCTION_22(v113);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_124_13();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_13_2();
  v119 = v118;
  OUTLINED_FUNCTION_70_0();
  v120 = sub_1D5613AF8();
  v121 = OUTLINED_FUNCTION_4(v120);
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  v127 = v126;
  OUTLINED_FUNCTION_70_0();
  v128 = type metadata accessor for MusicShareableItem();
  v129 = OUTLINED_FUNCTION_14(v128);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5();
  v134 = v133 - v132;
  sub_1D53570B8(v21, v133 - v132);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v245 + 32))(v20, v134, v103);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v181 + 1;
      v268 = v180;
      OUTLINED_FUNCTION_73_27();
      sub_1D55597C4(v182, v183);
      v184 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v184);

      OUTLINED_FUNCTION_56_2();
      (*(v245 + 8))(v20, v103);
      break;
    case 2u:
      OUTLINED_FUNCTION_69_2(&v265);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_56_1();
      v168();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v170 | 2;
      v268 = v169;
      OUTLINED_FUNCTION_76_22();
      sub_1D55597C4(v171, v172);
      v173 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v173);

      OUTLINED_FUNCTION_56_2();
      (*(v103 + 8))(v22, v20);
      break;
    case 3u:
      OUTLINED_FUNCTION_69_2(&v267);
      OUTLINED_FUNCTION_89_21();
      OUTLINED_FUNCTION_133();
      v174();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v176;
      v268 = v175;
      OUTLINED_FUNCTION_75_28();
      goto LABEL_22;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      v152 = v246;
      sub_1D55518C0(v134, v246, v162);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      OUTLINED_FUNCTION_119_4(v163);
      MusicMovie.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v155 = type metadata accessor for MusicMovie;
      goto LABEL_16;
    case 5u:
      OUTLINED_FUNCTION_69_2(&a11);
      OUTLINED_FUNCTION_89_21();
      OUTLINED_FUNCTION_133();
      v185();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v187 + 5;
      v268 = v186;
      OUTLINED_FUNCTION_72_32();
      goto LABEL_22;
    case 6u:
      v195 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      v196 = *(v261 + 32);
      v197 = OUTLINED_FUNCTION_26_27();
      v198(v197);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39A1C(v199, v200, v201, v202);
      OUTLINED_FUNCTION_132_13(&a13);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v203, v204, v205, v206);
      OUTLINED_FUNCTION_57(v134, 1, v252);
      if (v145)
      {
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v207, v208, v209);
        OUTLINED_FUNCTION_31_23();
        sub_1D5615B68();

        OUTLINED_FUNCTION_14_98();
        v267 = v211 + 3;
        v268 = v210;
        OUTLINED_FUNCTION_37_53();
        sub_1D55597C4(v212, v213);
        v214 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v214);

        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_64_29();
      }

      else
      {
        OUTLINED_FUNCTION_148_2(&v263);
        v234(v244, v134, v252);
        OUTLINED_FUNCTION_31_23();
        sub_1D5615B68();

        OUTLINED_FUNCTION_14_98();
        v267 = v236 + 3;
        v268 = v235;
        OUTLINED_FUNCTION_37_53();
        sub_1D55597C4(v237, v238);
        sub_1D56160F8();
        OUTLINED_FUNCTION_135_1();

        OUTLINED_FUNCTION_110_15();
        OUTLINED_FUNCTION_35_64();
        sub_1D55597C4(v239, v240);
        sub_1D56160F8();
        OUTLINED_FUNCTION_135_1();

        OUTLINED_FUNCTION_56_2();
        (*(v128 + 8))(v244, v252);
        v241 = &unk_1EC7F2BE0;
        v242 = &qword_1D56250F0;
        v243 = v260;
      }

      sub_1D4E50004(v243, v241, v242);
      (*(v261 + 8))(v256, v262);
      break;
    case 7u:
      OUTLINED_FUNCTION_69_2(&a15);
      OUTLINED_FUNCTION_89_21();
      OUTLINED_FUNCTION_133();
      v177();
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v179 | 4;
      v268 = v178;
      OUTLINED_FUNCTION_74_31();
      goto LABEL_22;
    case 8u:
      v103 = v249;
      v22 = v250;
      OUTLINED_FUNCTION_40_3();
      v219 = OUTLINED_FUNCTION_89_21();
      v220(v219);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v222 | 6;
      v268 = v221;
      OUTLINED_FUNCTION_70_29();
      goto LABEL_22;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      v152 = v248;
      sub_1D55518C0(v134, v248, v166);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      OUTLINED_FUNCTION_119_4(v167);
      SocialProfile.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v155 = type metadata accessor for SocialProfile;
      goto LABEL_16;
    case 0xAu:
      v103 = v253;
      v22 = v254;
      OUTLINED_FUNCTION_40_3();
      v119 = v251;
      v215 = OUTLINED_FUNCTION_96_18();
      v216(v215);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v218 - 1;
      v268 = v217;
      OUTLINED_FUNCTION_71_28();
      goto LABEL_22;
    case 0xBu:
      v103 = v258;
      v22 = v259;
      OUTLINED_FUNCTION_40_3();
      v119 = v255;
      v156 = OUTLINED_FUNCTION_96_18();
      v157(v156);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v159 | 2;
      v268 = v158;
      OUTLINED_FUNCTION_78_27();
LABEL_22:
      sub_1D55597C4(v160, v161);
      sub_1D56160F8();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      (*(v103 + 8))(v119, v22);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      v152 = v257;
      sub_1D55518C0(v134, v257, v164);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      OUTLINED_FUNCTION_119_4(v165);
      TVEpisode.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v155 = type metadata accessor for TVEpisode;
      goto LABEL_16;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      v152 = v264;
      sub_1D55518C0(v134, v264, v188);
      v267 = 0;
      v268 = 0xE000000000000000;
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      v267 = v190 + 1;
      v268 = v189;
      *&v266 = 0;
      *(&v266 + 1) = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(&v266, "TVShow(id: ");
      BYTE13(v266) = 0;
      HIWORD(v266) = -5120;
      v191 = *v264;
      v192 = v264[1];
      v193 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v193);

      MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
      v194 = TVShow.name.getter();
      MEMORY[0x1DA6EAC70](v194);

      MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
      MEMORY[0x1DA6EAC70](v266, *(&v266 + 1));

      OUTLINED_FUNCTION_56_2();
      v155 = type metadata accessor for TVShow;
      goto LABEL_16;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v152 = v263;
      sub_1D55518C0(v134, v263, v153);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_98();
      OUTLINED_FUNCTION_119_4(v154);
      UploadedVideo.description.getter();
      OUTLINED_FUNCTION_135_1();

      OUTLINED_FUNCTION_56_2();
      v155 = type metadata accessor for UploadedVideo;
LABEL_16:
      sub_1D5551868(v152, v155);
      break;
    default:
      v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      (*(v123 + 32))(v127, v134, v120);
      OUTLINED_FUNCTION_119_12();
      sub_1D4F39A1C(v136, v137, v138, v139);
      OUTLINED_FUNCTION_102();
      sub_1D4F39AB0(v140, v141, v142, &qword_1D563B8C0);
      v143 = OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_57(v143, v144, v247);
      if (v145)
      {
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v146, v147, v148);
        OUTLINED_FUNCTION_31_23();
        sub_1D5615B68();

        v267 = 0xD000000000000019;
        v268 = 0x80000001D5690CB0;
        OUTLINED_FUNCTION_33_60();
        sub_1D55597C4(v149, v150);
        v151 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v151);

        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_64_29();
      }

      else
      {
        OUTLINED_FUNCTION_148_2(&v261);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_6_58();
        v223();
        OUTLINED_FUNCTION_31_23();
        sub_1D5615B68();

        v267 = 0xD000000000000019;
        v268 = 0x80000001D5690CB0;
        OUTLINED_FUNCTION_33_60();
        sub_1D55597C4(v224, v225);
        sub_1D56160F8();
        OUTLINED_FUNCTION_135_1();

        OUTLINED_FUNCTION_110_15();
        OUTLINED_FUNCTION_34_65();
        sub_1D55597C4(v226, v227);
        sub_1D56160F8();
        OUTLINED_FUNCTION_135_1();

        OUTLINED_FUNCTION_56_2();
        v228 = *(v135 + 8);
        v229 = OUTLINED_FUNCTION_93();
        v230(v229);
        v231 = &qword_1EC7EA888;
        v232 = &qword_1D563B8C0;
        v233 = v119;
      }

      sub_1D4E50004(v233, v231, v232);
      (*(v123 + 8))(v127, v120);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v277 = v21;
  v25 = type metadata accessor for UploadedVideo();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v270 = v29;
  OUTLINED_FUNCTION_70_0();
  v30 = type metadata accessor for TVShow();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v269 = v34;
  OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for TVEpisode();
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v268 = v39;
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D5614408();
  v41 = OUTLINED_FUNCTION_4(v40);
  v266 = v42;
  v267 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v265 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D5613838();
  v47 = OUTLINED_FUNCTION_12_0(v46, &a18);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v50);
  v51 = type metadata accessor for SocialProfile();
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  v56 = sub_1D560F8B8();
  v57 = OUTLINED_FUNCTION_12_0(v56, &a14);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = sub_1D5614B68();
  v62 = OUTLINED_FUNCTION_12_0(v61, &a11);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v273 = sub_1D5614828();
  v66 = OUTLINED_FUNCTION_4(v273);
  v262 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v72 = OUTLINED_FUNCTION_22(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  v275 = v76;
  OUTLINED_FUNCTION_70_0();
  v276 = sub_1D5614898();
  v77 = OUTLINED_FUNCTION_4(v276);
  v271 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  v274 = v81;
  OUTLINED_FUNCTION_70_0();
  v82 = sub_1D560EEA8();
  v83 = OUTLINED_FUNCTION_12_0(v82, &v285);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v86);
  v87 = type metadata accessor for MusicMovie();
  v88 = OUTLINED_FUNCTION_22(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v91);
  v92 = sub_1D5613C48();
  v93 = OUTLINED_FUNCTION_12_0(v92, &v281);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v96);
  v97 = sub_1D56141F8();
  v98 = OUTLINED_FUNCTION_12_0(v97, &v279);
  v263 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_15_98();
  v102 = sub_1D5613EF8();
  v103 = OUTLINED_FUNCTION_4(v102);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v272 = sub_1D5613D28();
  v106 = OUTLINED_FUNCTION_4(v272);
  v259 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v112 = OUTLINED_FUNCTION_22(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_124_13();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13_2();
  v117 = v116;
  OUTLINED_FUNCTION_70_0();
  v118 = sub_1D5613AF8();
  v119 = OUTLINED_FUNCTION_4(v118);
  v121 = v120;
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  v125 = v124;
  OUTLINED_FUNCTION_70_0();
  v126 = type metadata accessor for MusicShareableItem();
  v127 = OUTLINED_FUNCTION_14(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5();
  v132 = v131 - v130;
  sub_1D53570B8(v21, v131 - v130);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67(&v276);
      v197(v22, v132, v102);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_119_4(v198);
      v199 = sub_1D5613DF8();
      OUTLINED_FUNCTION_12_108(v199, v200);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_22_34();

      OUTLINED_FUNCTION_101_16();

      OUTLINED_FUNCTION_53();
      v201 = *(v121 + 8);
      v202 = OUTLINED_FUNCTION_46_1();
      goto LABEL_25;
    case 2u:
      v178 = v264;
      (*(v263 + 32))(v20, v132);
      OUTLINED_FUNCTION_31_23();
      sub_1D5615B68();

      OUTLINED_FUNCTION_13_102();
      v283 = v180 | 2;
      v284 = v179;
      v181 = sub_1D5614148();
      OUTLINED_FUNCTION_12_108(v181, v182);
      OUTLINED_FUNCTION_5_152();
      v183 = sub_1D5615968();
      v185 = v184;

      MEMORY[0x1DA6EAC70](v183, v185);

      OUTLINED_FUNCTION_53();
      v186 = *(v263 + 8);
      v187 = v20;
      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_67(&v280);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_133();
      v188();
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_114_11(v189);
      v190 = sub_1D5613B88();
      OUTLINED_FUNCTION_12_108(v190, v191);
      OUTLINED_FUNCTION_5_152();
      v192 = sub_1D5615968();
      v194 = v193;

      MEMORY[0x1DA6EAC70](v192, v194);

      OUTLINED_FUNCTION_53();
      (*(v121 + 8))(v118, v22);
      break;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_154_9(v132, v163, v282);
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_109_6(v164);
      v165 = MusicMovie.debugDescription.getter();
      OUTLINED_FUNCTION_12_108(v165, v166);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_26_0();
      v167 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v167);

      OUTLINED_FUNCTION_53();
      v159 = type metadata accessor for MusicMovie;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_67(&v284);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_151();
      v205();
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_114_11(v206);
      v161 = sub_1D560EDB8();
      goto LABEL_24;
    case 6u:
      v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      v178 = v276;
      (*(v271 + 32))(v274, v132, v276);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39A1C(v213, v214, v215, v216);
      OUTLINED_FUNCTION_132_13(&v283);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v217, v218, v219, v220);
      OUTLINED_FUNCTION_57(v102, 1, v273);
      if (v143)
      {
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v221, v222, v223);
        OUTLINED_FUNCTION_13_102();
        v283 = v225 | 3;
        v284 = v224;
        v226 = sub_1D5614588();
        OUTLINED_FUNCTION_12_108(v226, v227);
        OUTLINED_FUNCTION_5_152();
        sub_1D5615968();
        OUTLINED_FUNCTION_22_34();

        OUTLINED_FUNCTION_101_16();

        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v228, v229, v230);
        v186 = *(v271 + 8);
        v187 = v274;
LABEL_21:
        v258 = v178;
      }

      else
      {
        (*(v262 + 32))(v261, v102, v273);
        OUTLINED_FUNCTION_31_23();
        sub_1D5615B68();
        OUTLINED_FUNCTION_121_13();
        MEMORY[0x1DA6EAC70](v246 | 3, v247 | 0x8000000000000000);
        v248 = sub_1D5614588();
        OUTLINED_FUNCTION_58_40(v248, v249);
        v280 = v250;
        v281 = 0xE100000000000000;
        v279 = 0xE300000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_5_152();
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_22_34();

        OUTLINED_FUNCTION_101_16();

        OUTLINED_FUNCTION_121_13();
        MEMORY[0x1DA6EAC70](v251 - 10, v252 | 0x8000000000000000);
        v253 = sub_1D5614748();
        OUTLINED_FUNCTION_58_40(v253, v254);
        v280 = v255;
        v281 = 0xE100000000000000;
        v278 = 2105354;
        v279 = 0xE300000000000000;
        OUTLINED_FUNCTION_3_31();
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_149_7();
        v256 = OUTLINED_FUNCTION_128();
        MEMORY[0x1DA6EAC70](v256);

        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_136(&v275);
        v257(v261, v273);
        sub_1D4E50004(v275, &unk_1EC7F2BE0, &qword_1D56250F0);
        v186 = *(v271 + 8);
        v187 = v274;
        v258 = v276;
      }

      v186(v187, v258);
      break;
    case 7u:
      OUTLINED_FUNCTION_67(&a10);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_151();
      v195();
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_114_11(v196);
      v161 = sub_1D5614AB8();
      goto LABEL_24;
    case 8u:
      OUTLINED_FUNCTION_67(&a13);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_151();
      v233();
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_114_11(v234);
      v161 = sub_1D560F818();
      goto LABEL_24;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      OUTLINED_FUNCTION_154_9(v132, v173, &a15);
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_109_6(v174);
      v175 = SocialProfile.debugDescription.getter();
      OUTLINED_FUNCTION_12_108(v175, v176);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_26_0();
      v177 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v177);

      OUTLINED_FUNCTION_53();
      v159 = type metadata accessor for SocialProfile;
      goto LABEL_17;
    case 0xAu:
      OUTLINED_FUNCTION_67(&a17);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_151();
      v231();
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_114_11(v232);
      v161 = sub_1D56136C8();
      goto LABEL_24;
    case 0xBu:
      v121 = v266;
      (*(v266 + 32))(v265, v132, v267);
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_114_11(v160);
      v161 = sub_1D5614268();
LABEL_24:
      OUTLINED_FUNCTION_12_108(v161, v162);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_26_0();
      v235 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v235);

      OUTLINED_FUNCTION_53();
      v236 = *(v121 + 8);
      v202 = OUTLINED_FUNCTION_209();
LABEL_25:
      v204(v202, v203);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      v125 = v268;
      sub_1D55518C0(v132, v268, v168);
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_109_6(v169);
      v170 = TVEpisode.debugDescription.getter();
      OUTLINED_FUNCTION_12_108(v170, v171);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_26_0();
      v172 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v172);

      OUTLINED_FUNCTION_53();
      v159 = type metadata accessor for TVEpisode;
      goto LABEL_17;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      v125 = v269;
      sub_1D55518C0(v132, v269, v207);
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_109_6(v208);
      v209 = TVShow.debugDescription.getter();
      OUTLINED_FUNCTION_12_108(v209, v210);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_26_0();
      v211 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v211);

      OUTLINED_FUNCTION_53();
      v159 = type metadata accessor for TVShow;
      goto LABEL_17;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v125 = v270;
      sub_1D55518C0(v132, v270, v154);
      OUTLINED_FUNCTION_13_102();
      OUTLINED_FUNCTION_109_6(v155);
      v156 = UploadedVideo.debugDescription.getter();
      OUTLINED_FUNCTION_12_108(v156, v157);
      OUTLINED_FUNCTION_5_152();
      sub_1D5615968();
      OUTLINED_FUNCTION_26_0();
      v158 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v158);

      OUTLINED_FUNCTION_53();
      v159 = type metadata accessor for UploadedVideo;
LABEL_17:
      sub_1D5551868(v125, v159);
      break;
    default:
      v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      (*(v121 + 32))(v125, v132, v118);
      OUTLINED_FUNCTION_119_12();
      sub_1D4F39A1C(v134, v135, v136, v137);
      OUTLINED_FUNCTION_102();
      sub_1D4F39AB0(v138, v139, v140, &qword_1D563B8C0);
      v141 = OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_57(v141, v142, v272);
      if (v143)
      {
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v144, v145, v146);
        OUTLINED_FUNCTION_13_102();
        OUTLINED_FUNCTION_109_6(v147);
        v148 = sub_1D5613958();
        OUTLINED_FUNCTION_58_40(v148, v149);
        v280 = v150;
        v281 = 0xE100000000000000;
        v278 = 2105354;
        v279 = 0xE300000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_5_152();
        sub_1D5615968();
        OUTLINED_FUNCTION_22_34();

        OUTLINED_FUNCTION_101_16();

        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v151, v152, v153);
      }

      else
      {
        v237 = *(v259 + 32);
        OUTLINED_FUNCTION_102();
        v238();
        OUTLINED_FUNCTION_31_23();
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5690F20);
        v282[0] = sub_1D5613958();
        v282[1] = v239;
        v276 = v117;
        v277 = v118;
        v280 = 10;
        v281 = 0xE100000000000000;
        v279 = 0xE300000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_5_152();
        OUTLINED_FUNCTION_294();
        v275 = v125;
        OUTLINED_FUNCTION_22_34();

        OUTLINED_FUNCTION_101_16();

        OUTLINED_FUNCTION_121_13();
        MEMORY[0x1DA6EAC70](v240 - 10, v241 | 0x8000000000000000);
        v242 = sub_1D5613CB8();
        OUTLINED_FUNCTION_58_40(v242, v243);
        v279 = 0xE300000000000000;
        v280 = v244;
        v281 = 0xE100000000000000;
        v278 = 2105354;
        OUTLINED_FUNCTION_3_31();
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_149_7();
        v245 = OUTLINED_FUNCTION_128();
        MEMORY[0x1DA6EAC70](v245);

        OUTLINED_FUNCTION_53();
        (*(v259 + 8))(v260, v272);
        sub_1D4E50004(v117, &qword_1EC7EA888, &qword_1D563B8C0);
      }

      (*(v121 + 8))(v125, v118);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicShareableItem.propertyProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v177 = v21;
  v178 = v27;
  v175 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_14(v175);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v176 = v31;
  OUTLINED_FUNCTION_70_0();
  v173 = type metadata accessor for TVShow();
  v32 = OUTLINED_FUNCTION_14(v173);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v174 = v35;
  OUTLINED_FUNCTION_70_0();
  v171 = type metadata accessor for TVEpisode();
  v36 = OUTLINED_FUNCTION_14(v171);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v172 = v39;
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D5614408();
  v41 = OUTLINED_FUNCTION_4(v40);
  v170 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D5613838();
  v46 = OUTLINED_FUNCTION_4(v45);
  v169 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v167 = type metadata accessor for SocialProfile();
  v50 = OUTLINED_FUNCTION_14(v167);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v168 = v53;
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D560F8B8();
  v55 = OUTLINED_FUNCTION_4(v54);
  v166 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v59 = sub_1D5614B68();
  v60 = OUTLINED_FUNCTION_4(v59);
  v165 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v64);
  v65 = sub_1D5614898();
  v66 = OUTLINED_FUNCTION_12_0(v65, &a18);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D560EEA8();
  v71 = OUTLINED_FUNCTION_12_0(v70, &a14);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v74);
  v164 = type metadata accessor for MusicMovie();
  v75 = OUTLINED_FUNCTION_14(v164);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v78);
  v79 = sub_1D5613C48();
  v80 = OUTLINED_FUNCTION_12_0(v79, &a9);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_15_98();
  v83 = sub_1D56141F8();
  v84 = OUTLINED_FUNCTION_4(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v87 = sub_1D5613EF8();
  v88 = OUTLINED_FUNCTION_4(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v91 = sub_1D5613AF8();
  v92 = OUTLINED_FUNCTION_4(v91);
  v94 = v93;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5();
  v97 = OUTLINED_FUNCTION_94_22();
  v98 = OUTLINED_FUNCTION_14(v97);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_111_15(v101);
  OUTLINED_FUNCTION_26_27();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_56(&v177);
      v142(v22, v23, v87);
      sub_1D5613E18();
      v143 = *(v20 + 8);
      v144 = OUTLINED_FUNCTION_93();
      v146(v144, v145);
      break;
    case 2u:
      OUTLINED_FUNCTION_40_56(&v178);
      v135(v24, v23, v83);
      sub_1D5614158();
      (*(v20 + 8))(v24, v83);
      break;
    case 3u:
      OUTLINED_FUNCTION_35_0(&v179);
      OUTLINED_FUNCTION_133();
      v136();
      sub_1D5613B98();
      v137 = *(v97 + 8);
      v138 = OUTLINED_FUNCTION_128();
      v139(v138);
      break;
    case 4u:
      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_117_0(&a11);
      sub_1D55518C0(v115, v116, v117);
      v118 = OUTLINED_FUNCTION_138_5(v164);
      OUTLINED_FUNCTION_14(v118);
      v120 = *(v119 + 16);
      v121 = OUTLINED_FUNCTION_130_16();
      v122(v121);
      v113 = type metadata accessor for MusicMovie;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a13);
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_56_1();
      v147();
      sub_1D560EDC8();
      goto LABEL_20;
    case 6u:
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      OUTLINED_FUNCTION_35_0(&a16);
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_133();
      v154();
      sub_1D5614598();
      v155 = *(v97 + 8);
      v156 = OUTLINED_FUNCTION_222();
      v157(v156);
      v105 = &unk_1EC7F2BE0;
      v106 = &qword_1D56250F0;
      goto LABEL_17;
    case 7u:
      v87 = v165;
      OUTLINED_FUNCTION_33_1();
      v140 = OUTLINED_FUNCTION_20_5();
      v141(v140);
      sub_1D5614AC8();
      goto LABEL_20;
    case 8u:
      v87 = v166;
      v159 = OUTLINED_FUNCTION_24_74();
      v160(v159);
      sub_1D560F828();
      goto LABEL_20;
    case 9u:
      OUTLINED_FUNCTION_4_159();
      v21 = v168;
      sub_1D55518C0(v23, v168, v129);
      v130 = OUTLINED_FUNCTION_138_5(v167);
      OUTLINED_FUNCTION_14(v130);
      v132 = *(v131 + 16);
      v133 = OUTLINED_FUNCTION_130_16();
      v134(v133);
      v113 = type metadata accessor for SocialProfile;
      goto LABEL_15;
    case 0xAu:
      v87 = v169;
      OUTLINED_FUNCTION_24_74();
      OUTLINED_FUNCTION_146_10();
      v158();
      sub_1D56136D8();
      goto LABEL_20;
    case 0xBu:
      v87 = v170;
      OUTLINED_FUNCTION_24_74();
      OUTLINED_FUNCTION_147_11();
      v114();
      sub_1D5614278();
LABEL_20:
      v161 = *(v87 + 8);
      v162 = OUTLINED_FUNCTION_159();
      v163(v162);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_1_201();
      v21 = v172;
      sub_1D55518C0(v23, v172, v123);
      v124 = OUTLINED_FUNCTION_138_5(v171);
      OUTLINED_FUNCTION_14(v124);
      v126 = *(v125 + 16);
      v127 = OUTLINED_FUNCTION_130_16();
      v128(v127);
      v113 = type metadata accessor for TVEpisode;
      goto LABEL_15;
    case 0xDu:
      OUTLINED_FUNCTION_0_266();
      v21 = v174;
      sub_1D55518C0(v23, v174, v148);
      v149 = OUTLINED_FUNCTION_138_5(v173);
      OUTLINED_FUNCTION_14(v149);
      v151 = *(v150 + 16);
      v152 = OUTLINED_FUNCTION_130_16();
      v153(v152);
      v113 = type metadata accessor for TVShow;
      goto LABEL_15;
    case 0xEu:
      OUTLINED_FUNCTION_3_204();
      v21 = v176;
      sub_1D55518C0(v23, v176, v107);
      v108 = OUTLINED_FUNCTION_138_5(v175);
      OUTLINED_FUNCTION_14(v108);
      v110 = *(v109 + 16);
      v111 = OUTLINED_FUNCTION_130_16();
      v112(v111);
      v113 = type metadata accessor for UploadedVideo;
LABEL_15:
      sub_1D5551868(v21, v113);
      break;
    default:
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v103 = OUTLINED_FUNCTION_32_65(v94);
      v104(v103);
      sub_1D5613968();
      (*(v94 + 8))(v21, v91);
      v105 = &qword_1EC7EA888;
      v106 = &qword_1D563B8C0;
LABEL_17:
      sub_1D4E50004(v23 + v102, v105, v106);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicShareableItem.init(from:)(uint64_t *a1)
{
  type metadata accessor for MusicShareableItem();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_68_30();
  sub_1D55597C4(v3, v4);
  OUTLINED_FUNCTION_67_36();
  sub_1D55597C4(v5, v1);
  OUTLINED_FUNCTION_82_26(&qword_1EC7F2FE8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicShareableItem.encode(to:)()
{
  type metadata accessor for MusicShareableItem();
  OUTLINED_FUNCTION_68_30();
  sub_1D55597C4(v1, v2);
  OUTLINED_FUNCTION_67_36();
  sub_1D55597C4(v3, v0);
  OUTLINED_FUNCTION_82_26(&qword_1EC7F2FE8);
  return sub_1D5612688();
}

uint64_t sub_1D555941C(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x726F7461727563;
      break;
    case 3:
      result = 0x6F6D2D636973756DLL;
      break;
    case 4:
      result = 0x69762D636973756DLL;
      break;
    case 5:
      result = 0x6C616E6F73726570;
      break;
    case 6:
      result = 0x7473696C79616C70;
      break;
    case 7:
      v3 = 0x6C69666F7270;
      goto LABEL_10;
    case 8:
      result = 0x6C6562616CLL;
      break;
    case 9:
      result = 1735290739;
      break;
    case 10:
      result = 0x6E6F6974617473;
      break;
    case 11:
      v3 = 0x646F73697065;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 12:
      result = 2003789939;
      break;
    case 13:
      result = 1953722224;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D55595AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D554F8D0();
  *a2 = result;
  return result;
}

uint64_t sub_1D55595DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D555941C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D55597C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D555980C()
{
  sub_1D55599DC(319, &qword_1EC7F83E0, MEMORY[0x1E6976D28]);
  if (v0 <= 0x3F)
  {
    sub_1D5613EF8();
    if (v1 <= 0x3F)
    {
      sub_1D56141F8();
      if (v2 <= 0x3F)
      {
        sub_1D5613C48();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MusicMovie();
          if (v4 <= 0x3F)
          {
            sub_1D560EEA8();
            if (v5 <= 0x3F)
            {
              sub_1D55599DC(319, &qword_1EC7F83E8, MEMORY[0x1E69773E0]);
              if (v6 <= 0x3F)
              {
                sub_1D5614B68();
                if (v7 <= 0x3F)
                {
                  sub_1D560F8B8();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SocialProfile();
                    if (v9 <= 0x3F)
                    {
                      sub_1D5613838();
                      if (v10 <= 0x3F)
                      {
                        sub_1D5614408();
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for TVEpisode();
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for TVShow();
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for UploadedVideo();
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D55599DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = OUTLINED_FUNCTION_61();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_68_4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MusicShareableItem.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5559B40()
{
  result = qword_1EC7F83F0;
  if (!qword_1EC7F83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F83F0);
  }

  return result;
}

unint64_t sub_1D5559B98()
{
  result = qword_1EC7F83F8;
  if (!qword_1EC7F83F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F8400, qword_1D5672090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F83F8);
  }

  return result;
}

unint64_t sub_1D5559BFC()
{
  result = qword_1EC7F8408;
  if (!qword_1EC7F8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8408);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_73(unint64_t *a1)
{

  return sub_1D55597C4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_87_22()
{

  return sub_1D5551868(v0, type metadata accessor for UploadedVideo);
}

uint64_t OUTLINED_FUNCTION_94_22()
{

  return type metadata accessor for MusicShareableItem();
}

void OUTLINED_FUNCTION_110_15()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_111_15@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 104);

  return sub_1D53570B8(v4, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_134_11()
{

  return sub_1D5613EF8();
}

uint64_t OUTLINED_FUNCTION_149_7()
{
}

uint64_t OUTLINED_FUNCTION_151_10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 128);

  return sub_1D55518C0(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_152_11(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 120);

  return sub_1D55518C0(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_154_9@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1D55518C0(a1, v4, a2);
}

uint64_t sub_1D5559F60(uint64_t a1)
{
  v3 = sub_1D560CBB8();
  v4 = OUTLINED_FUNCTION_1_16(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v31 = *(v15 + 56);
  v32 = v16;
  v18 = (v15 + 16);
  v19 = (v15 + 72);
  v30 = *MEMORY[0x1E6974CD0];
  v20 = (v15 - 8);
  v21 = MEMORY[0x1E69E7CC0];
  v29 = v15;
  do
  {
    v32(v13, v17, v1);
    (*v18)(v11, v13, v1);
    v22 = (*v19)(v11, v1);
    if (v22 == v30)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v21 + 16);
        sub_1D4F00044();
        v21 = v26;
      }

      v23 = *(v21 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v21 + 24) >> 1)
      {
        sub_1D4F00044();
        v21 = v27;
      }

      *(v21 + 16) = v24;
    }

    else
    {
      (*v20)(v11, v1);
    }

    v17 += v31;
    --v14;
  }

  while (v14);
  return v21;
}

uint64_t sub_1D555A178(uint64_t a1)
{
  v3 = sub_1D560CBB8();
  v4 = OUTLINED_FUNCTION_1_16(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D4F03C4C();
    v12 = v17;
    HIDWORD(v16) = *MEMORY[0x1E6974CD0];
    v13 = *(v6 + 104);
    do
    {
      v13(v10, HIDWORD(v16), v1);
      v17 = v12;
      v14 = *(v12 + 16);
      if (v14 >= *(v12 + 24) >> 1)
      {
        sub_1D4F03C4C();
        v12 = v17;
      }

      *(v12 + 16) = v14 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v10, v1);
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t MusicCatalogResourceRequestOption.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

unint64_t sub_1D555A3A8()
{
  result = qword_1EC7F8410;
  if (!qword_1EC7F8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8410);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogResourceRequestOption(_BYTE *result, int a2, int a3)
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

void sub_1D555A4A8()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_229_6(MEMORY[0x1E69E7CC0]);
  sub_1D4F03D34();
  v3 = v1 + 32;
  v4 = v21;
  if (v2)
  {
    while (1)
    {
      sub_1D4E62938(v3, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1D4E48324(v15, v20);
      sub_1D4E48324(v20, v17);
      v21 = v4;
      if (*(v4 + 16) >= *(v4 + 24) >> 1)
      {
        sub_1D4F03D34();
      }

      v5 = v18;
      v6 = v19;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v8 = *(*(v5 - 8) + 64);
      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_5();
      (*(v11 + 16))(v10 - v9);
      v12 = OUTLINED_FUNCTION_164_4();
      sub_1D5285F50(v12, v13, v14, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v4 = v21;
      v3 += 40;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1D4E50004(v15, &unk_1EC7ED400, &qword_1D5620CF0);
  }

LABEL_8:
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D555A6A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v3 = type metadata accessor for TVSeason();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  v7 = *(v1 + 16);
  OUTLINED_FUNCTION_229_6(MEMORY[0x1E69E7CC0]);
  sub_1D4F03D34();
  if (v7)
  {
    OUTLINED_FUNCTION_219_4();
    do
    {
      v8 = OUTLINED_FUNCTION_93();
      sub_1D55AC65C(v8, v9);
      OUTLINED_FUNCTION_93_14();
      if (v10)
      {
        OUTLINED_FUNCTION_337_1();
      }

      v13[3] = v3;
      OUTLINED_FUNCTION_89_22();
      v13[4] = sub_1D55ACD00(&qword_1EC7EA480, v11);
      __swift_allocate_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_4_160();
      sub_1D55AC65C(v0, v12);
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_8_137();
      sub_1D55AC6B4();
      v1 += v2;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D555A800()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v3 = type metadata accessor for TVEpisode();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  v7 = *(v1 + 16);
  OUTLINED_FUNCTION_229_6(MEMORY[0x1E69E7CC0]);
  sub_1D4F03D34();
  if (v7)
  {
    OUTLINED_FUNCTION_219_4();
    do
    {
      v8 = OUTLINED_FUNCTION_93();
      sub_1D55AC65C(v8, v9);
      OUTLINED_FUNCTION_93_14();
      if (v10)
      {
        OUTLINED_FUNCTION_337_1();
      }

      v13[3] = v3;
      OUTLINED_FUNCTION_87_23();
      v13[4] = sub_1D55ACD00(&qword_1EC7EA578, v11);
      __swift_allocate_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_3_205();
      sub_1D55AC65C(v0, v12);
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_7_148();
      sub_1D55AC6B4();
      v1 += v2;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D555A9BC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v3 = type metadata accessor for MusicMovie();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  v7 = *(v1 + 16);
  OUTLINED_FUNCTION_229_6(MEMORY[0x1E69E7CC0]);
  sub_1D4F03D34();
  if (v7)
  {
    OUTLINED_FUNCTION_219_4();
    do
    {
      v8 = OUTLINED_FUNCTION_93();
      sub_1D55AC65C(v8, v9);
      OUTLINED_FUNCTION_93_14();
      if (v10)
      {
        OUTLINED_FUNCTION_337_1();
      }

      v13[3] = v3;
      OUTLINED_FUNCTION_86_27();
      v13[4] = sub_1D55ACD00(&qword_1EC7EA580, v11);
      __swift_allocate_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_2_199();
      sub_1D55AC65C(v0, v12);
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_6_159();
      sub_1D55AC6B4();
      v1 += v2;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D555AB38()
{
  OUTLINED_FUNCTION_47();
  v24 = v2;
  v4 = v3;
  v6 = v5(0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v4 + 16);
  OUTLINED_FUNCTION_229_6(MEMORY[0x1E69E7CC0]);
  sub_1D4F03D34();
  if (v14)
  {
    v17 = *(v8 + 16);
    v15 = v8 + 16;
    v16 = v17;
    v18 = v4 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v23 = *(v15 + 56);
    do
    {
      v19 = OUTLINED_FUNCTION_91_0();
      v16(v19);
      OUTLINED_FUNCTION_93_14();
      if (v20)
      {
        OUTLINED_FUNCTION_337_1();
      }

      v26 = v6;
      v27 = v24;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
      (v16)(boxed_opaque_existential_0, v13, v6);
      v22 = v28;
      *(v28 + 16) = v0;
      sub_1D4E48324(&v25, v22 + 40 * v1 + 32);
      (*(v15 - 8))(v13, v6);
      v18 += v23;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D555ACB8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v179 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v174 = &v162 - v8;
  v9 = sub_1D56128E8();
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v170 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v162 - v13;
  v14 = sub_1D560EEA8();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v176 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v172 = (&v162 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v178 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v162 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v25 = *(*v2 + 176);
  *(v4 + v25) = [objc_opt_self() sharedContentTasteController];
  v26 = *(*v4 + 184);
  v173 = objc_opt_self();
  *(v4 + v26) = [v173 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v168 = v9;
  v38 = a2;
  v40 = v15 + 2;
  v39 = v15[2];
  v41 = v179;
  (v39)(v4 + *(*v4 + 136), v179, v14);
  v42 = *(*v4 + 144);
  (v39)(v4 + v42, v41, v14);
  *(v4 + *(*v4 + 232)) = v38;
  swift_beginAccess();
  v166 = v39;
  (v39)(v24, v4 + v42, v14);

  sub_1D556A5AC();
  v44 = v43;
  v45 = v15[1];
  v165 = v24;
  v180 = v45;
  v181 = v15 + 1;
  v45(v24, v14);
  v46 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v47 = *(*v4 + 160);
  *(v4 + v47) = v46;
  v48 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v169 = v44;
  v49 = [v48 initWithIdentifyingModelObject_];
  v50 = *(*v4 + 168);
  *(v4 + v50) = v49;
  v51 = v38;
  v52 = [*(v4 + v47) currentStatus];
  [*(v4 + v50) currentStatus];
  v53 = aBlock;
  v54 = v183;
  v3 = v184;
  v55 = sub_1D560F0C8();
  v31 = v41;
  v177 = v51;
  v164 = v53;
  v163 = v54;
  v162 = v52;
  if (v55)
  {
    swift_beginAccess();
    LOBYTE(v189) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    v189 = 0;
    v190 = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v166;
  }

  else
  {
    v185 = v14;
    v186 = MEMORY[0x1E69754B0];
    v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v57 = v41;
    v58 = v166;
    (v166)(v56, v57, v14);

    sub_1D518AB68(v52, &aBlock, &v189);
    v59 = v189;
    swift_beginAccess();
    LOBYTE(v191) = v59;
    sub_1D560C8B8();
    swift_endAccess();
    v185 = v14;
    v186 = MEMORY[0x1E69754B0];
    v60 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (v58)(v60, v31, v14);

    sub_1D50A911C(v53, v54, &aBlock, &v189, v3);
    v61 = v189;
    v62 = v190;
    swift_beginAccess();
    v191 = v61;
    v192 = v62;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v58;
  }

  v63 = v175;
  v36 = v40;
  v185 = v15;
  v186 = &protocol witness table for MusicVideo;
  v64 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v64, v31, v15);
  __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D5590088();
  v66 = v65;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v189 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  (v14)(v178, v31, v15);
  v67 = v171;
  sub_1D560ED78();
  v68 = v170;
  v69 = v168;
  (*(v63 + 16))(v170, v67, v168);
  v70 = (*(v63 + 88))(v68, v69);
  if (v70 == *MEMORY[0x1E69765E8])
  {
    v71 = 0;
  }

  else if (v70 == *MEMORY[0x1E69765F8])
  {
    v71 = 1;
  }

  else
  {
    if (v70 != *MEMORY[0x1E69765F0])
    {
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v71 = 2;
  }

  (*(v63 + 8))(v67, v69);
  v180(v178, v15);
  swift_beginAccess();
  LOBYTE(v189) = v71;
  sub_1D560C8B8();
  swift_endAccess();
  v185 = v15;
  v186 = &protocol witness table for MusicVideo;
  v72 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v72, v31, v15);
  v73 = __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D55950B8(v73, MEMORY[0x1E69754E8], &protocol witness table for MusicVideo, sub_1D55ACE98, v74, v75, v76, v77, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);

  v78 = v191;
  swift_beginAccess();
  v188 = v78;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v79;
  v178 = sub_1D4F636B4();
  a2 = v80;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v81 = sub_1D560C758();
  v82 = __swift_project_value_buffer(v81, qword_1EDD76AA8);
  v83 = v172;
  (v14)(v172, v31, v15);

  v171 = v82;
  v84 = v14;
  v85 = sub_1D560C738();
  LODWORD(v82) = sub_1D56156E8();

  LODWORD(v168) = v82;
  v86 = os_log_type_enabled(v85, v82);
  v175 = a2;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v170 = v36;
    v88 = v87;
    v166 = swift_slowAlloc();
    v189 = v166;
    *v88 = 136446978;
    *(v88 + 4) = sub_1D4E6835C(v178, a2, &v189);
    *(v88 + 12) = 2082;
    v84(v165, v83, v15);
    v89 = v15;
    v90 = sub_1D5614DB8();
    v92 = v91;
    v180(v83, v89);
    v93 = sub_1D4E6835C(v90, v92, &v189);

    *(v88 + 14) = v93;
    *(v88 + 22) = 2082;
    v94 = sub_1D4F5E0F8();
    v96 = sub_1D4E6835C(v94, v95, &v189);

    *(v88 + 24) = v96;
    *(v88 + 32) = 2082;
    v31 = v179;
    aBlock = v164;
    v183 = v163;
    v184 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v97 = sub_1D5614DB8();
    v99 = sub_1D4E6835C(v97, v98, &v189);
    a2 = v175;

    *(v88 + 34) = v99;
    v15 = v89;
    _os_log_impl(&dword_1D4E3F000, v85, v168, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v88, 0x2Au);
    v100 = v166;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v100, -1, -1);
    MEMORY[0x1DA6ED200](v88, -1, -1);
  }

  else
  {

    v180(v83, v15);
  }

  v101 = v176;
  v84(v176, v31, v15);
  swift_retain_n();

  v102 = sub_1D560C738();
  v103 = sub_1D56156E8();

  v104 = os_log_type_enabled(v102, v103);
  v167 = v15;
  if (v104)
  {
    v105 = v15;
    v106 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v189 = v172;
    *v106 = 136446978;
    v107 = sub_1D4E6835C(v178, a2, &v189);
    *(v106 + 4) = v107;
    *(v106 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v107);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v109 = v105;
    swift_getKeyPath();
    sub_1D560C8F8();

    v110 = v191;
    v111 = v191 >> 6;
    if (v111)
    {
      if (v111 == 1)
      {
        aBlock = 0;
        v183 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v110 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v112 = aBlock;
        v113 = v183;
      }

      else
      {

        v113 = 0xE600000000000000;
        v112 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v110)
      {
        v112 = 0x656C62616464612ELL;
      }

      else
      {
        v112 = 0xD000000000000028;
      }

      if (v110)
      {
        v113 = 0xED0000296C696E28;
      }

      else
      {
        v113 = 0x80000001D567FDB0;
      }
    }

    v115 = sub_1D4E6835C(v112, v113, &v189);

    *(v106 + 14) = v115;
    *(v106 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v116);
    v117 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v117);
    swift_getKeyPath();
    sub_1D560C8F8();

    v118 = MusicLibrary.DownloadStatus.description.getter();
    v120 = v119;

    v121 = sub_1D4E6835C(v118, v120, &v189);

    *(v106 + 24) = v121;
    *(v106 + 32) = 2082;
    v122 = v176;
    sub_1D556C8C0();
    v124 = v123;
    v126 = v125;
    v114 = v180;
    v180(v122, v109);
    v127 = sub_1D4E6835C(v124, v126, &v189);

    *(v106 + 34) = v127;
    _os_log_impl(&dword_1D4E3F000, v102, v103, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v106, 0x2Au);
    v128 = v172;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v128, -1, -1);
    MEMORY[0x1DA6ED200](v106, -1, -1);
  }

  else
  {

    v114 = v180;
    v180(v101, v15);
  }

  v129 = *(v4 + *(*v4 + 160));
  v130 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A9254;
  v187 = v130;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5570C18;
  v185 = &block_descriptor_324;
  v131 = _Block_copy(&aBlock);

  v132 = v129;

  [v132 setStatusBlock_];
  _Block_release(v131);

  v133 = *(v4 + *(*v4 + 168));
  v134 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A9294;
  v187 = v134;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5571B7C;
  v185 = &block_descriptor_328;
  v135 = _Block_copy(&aBlock);
  v136 = v133;

  [v136 setStatusBlock_];
  _Block_release(v135);

  sub_1D5611CC8();
  v137 = objc_opt_self();
  v138 = [v137 canShowCloudDownloadButtonsDidChangeNotificationName];
  v139 = [v137 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v140 = sub_1D5611CB8();

  v141 = *(*v4 + 208);
  v142 = *(v4 + v141);
  *(v4 + v141) = v140;

  v143 = [v173 didChangeNotificationName];
  v144 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v145 = v144;

  v146 = sub_1D5611CB8();

  v147 = *(*v4 + 216);
  v148 = *(v4 + v147);
  *(v4 + v147) = v146;

  v149 = *(*v4 + 192);
  v150 = *(v4 + v149);
  v151 = swift_allocObject();
  swift_weakInit();
  v152 = swift_allocObject();
  v153 = v178;
  v152[2] = v151;
  v152[3] = v153;
  v154 = v175;
  v152[4] = v175;

  sub_1D56129D8();

  v155 = *(v4 + *(*v4 + 200));
  v156 = *(v4 + v149);

  sub_1D56129B8();

  sub_1D560EFA8();
  v157 = sub_1D5615458();
  v158 = v174;
  __swift_storeEnumTagSinglePayload(v174, 1, 1, v157);
  v159 = swift_allocObject();
  swift_weakInit();

  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = 0;
  v160[4] = v159;
  v160[5] = v153;
  v160[6] = v154;
  sub_1D51EC8B4(0, 0, v158, &unk_1D5672980, v160);

  v114(v179, v167);
  return v4;
}

uint64_t sub_1D555C3C0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v179 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v174 = &v162 - v8;
  v9 = sub_1D56128E8();
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v170 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v162 - v13;
  v14 = sub_1D5613838();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v176 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v172 = (&v162 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v178 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v162 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v25 = *(*v2 + 176);
  *(v4 + v25) = [objc_opt_self() sharedContentTasteController];
  v26 = *(*v4 + 184);
  v173 = objc_opt_self();
  *(v4 + v26) = [v173 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v168 = v9;
  v38 = a2;
  v40 = v15 + 2;
  v39 = v15[2];
  v41 = v179;
  (v39)(v4 + *(*v4 + 136), v179, v14);
  v42 = *(*v4 + 144);
  (v39)(v4 + v42, v41, v14);
  *(v4 + *(*v4 + 232)) = v38;
  swift_beginAccess();
  v166 = v39;
  (v39)(v24, v4 + v42, v14);

  sub_1D556A5AC();
  v44 = v43;
  v45 = v15[1];
  v165 = v24;
  v180 = v45;
  v181 = v15 + 1;
  v45(v24, v14);
  v46 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v47 = *(*v4 + 160);
  *(v4 + v47) = v46;
  v48 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v169 = v44;
  v49 = [v48 initWithIdentifyingModelObject_];
  v50 = *(*v4 + 168);
  *(v4 + v50) = v49;
  v51 = v38;
  v52 = [*(v4 + v47) currentStatus];
  [*(v4 + v50) currentStatus];
  v53 = aBlock;
  v54 = v183;
  v3 = v184;
  v55 = sub_1D560F0C8();
  v31 = v41;
  v177 = v51;
  v164 = v53;
  v163 = v54;
  v162 = v52;
  if (v55)
  {
    swift_beginAccess();
    LOBYTE(v189) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    v189 = 0;
    v190 = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v166;
  }

  else
  {
    v185 = v14;
    v186 = MEMORY[0x1E6976BB0];
    v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v57 = v41;
    v58 = v166;
    (v166)(v56, v57, v14);

    sub_1D518AB68(v52, &aBlock, &v189);
    v59 = v189;
    swift_beginAccess();
    LOBYTE(v191) = v59;
    sub_1D560C8B8();
    swift_endAccess();
    v185 = v14;
    v186 = MEMORY[0x1E6976BB0];
    v60 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (v58)(v60, v31, v14);

    sub_1D50A911C(v53, v54, &aBlock, &v189, v3);
    v61 = v189;
    v62 = v190;
    swift_beginAccess();
    v191 = v61;
    v192 = v62;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v58;
  }

  v63 = v175;
  v36 = v40;
  v185 = v15;
  v186 = &protocol witness table for Song;
  v64 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v64, v31, v15);
  __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D5590088();
  v66 = v65;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v189 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  (v14)(v178, v31, v15);
  v67 = v171;
  sub_1D5613698();
  v68 = v170;
  v69 = v168;
  (*(v63 + 16))(v170, v67, v168);
  v70 = (*(v63 + 88))(v68, v69);
  if (v70 == *MEMORY[0x1E69765E8])
  {
    v71 = 0;
  }

  else if (v70 == *MEMORY[0x1E69765F8])
  {
    v71 = 1;
  }

  else
  {
    if (v70 != *MEMORY[0x1E69765F0])
    {
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v71 = 2;
  }

  (*(v63 + 8))(v67, v69);
  v180(v178, v15);
  swift_beginAccess();
  LOBYTE(v189) = v71;
  sub_1D560C8B8();
  swift_endAccess();
  v185 = v15;
  v186 = &protocol witness table for Song;
  v72 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v72, v31, v15);
  v73 = __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D55950B8(v73, MEMORY[0x1E6976BE8], &protocol witness table for Song, sub_1D55ACE98, v74, v75, v76, v77, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);

  v78 = v191;
  swift_beginAccess();
  v188 = v78;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v79;
  v178 = sub_1D4F636B4();
  a2 = v80;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v81 = sub_1D560C758();
  v82 = __swift_project_value_buffer(v81, qword_1EDD76AA8);
  v83 = v172;
  (v14)(v172, v31, v15);

  v171 = v82;
  v84 = v14;
  v85 = sub_1D560C738();
  LODWORD(v82) = sub_1D56156E8();

  LODWORD(v168) = v82;
  v86 = os_log_type_enabled(v85, v82);
  v175 = a2;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v170 = v36;
    v88 = v87;
    v166 = swift_slowAlloc();
    v189 = v166;
    *v88 = 136446978;
    *(v88 + 4) = sub_1D4E6835C(v178, a2, &v189);
    *(v88 + 12) = 2082;
    v84(v165, v83, v15);
    v89 = v15;
    v90 = sub_1D5614DB8();
    v92 = v91;
    v180(v83, v89);
    v93 = sub_1D4E6835C(v90, v92, &v189);

    *(v88 + 14) = v93;
    *(v88 + 22) = 2082;
    v94 = sub_1D4F5E0F8();
    v96 = sub_1D4E6835C(v94, v95, &v189);

    *(v88 + 24) = v96;
    *(v88 + 32) = 2082;
    v31 = v179;
    aBlock = v164;
    v183 = v163;
    v184 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v97 = sub_1D5614DB8();
    v99 = sub_1D4E6835C(v97, v98, &v189);
    a2 = v175;

    *(v88 + 34) = v99;
    v15 = v89;
    _os_log_impl(&dword_1D4E3F000, v85, v168, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v88, 0x2Au);
    v100 = v166;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v100, -1, -1);
    MEMORY[0x1DA6ED200](v88, -1, -1);
  }

  else
  {

    v180(v83, v15);
  }

  v101 = v176;
  v84(v176, v31, v15);
  swift_retain_n();

  v102 = sub_1D560C738();
  v103 = sub_1D56156E8();

  v104 = os_log_type_enabled(v102, v103);
  v167 = v15;
  if (v104)
  {
    v105 = v15;
    v106 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v189 = v172;
    *v106 = 136446978;
    v107 = sub_1D4E6835C(v178, a2, &v189);
    *(v106 + 4) = v107;
    *(v106 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v107);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v109 = v105;
    swift_getKeyPath();
    sub_1D560C8F8();

    v110 = v191;
    v111 = v191 >> 6;
    if (v111)
    {
      if (v111 == 1)
      {
        aBlock = 0;
        v183 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v110 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v112 = aBlock;
        v113 = v183;
      }

      else
      {

        v113 = 0xE600000000000000;
        v112 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v110)
      {
        v112 = 0x656C62616464612ELL;
      }

      else
      {
        v112 = 0xD000000000000028;
      }

      if (v110)
      {
        v113 = 0xED0000296C696E28;
      }

      else
      {
        v113 = 0x80000001D567FDB0;
      }
    }

    v115 = sub_1D4E6835C(v112, v113, &v189);

    *(v106 + 14) = v115;
    *(v106 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v116);
    v117 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v117);
    swift_getKeyPath();
    sub_1D560C8F8();

    v118 = MusicLibrary.DownloadStatus.description.getter();
    v120 = v119;

    v121 = sub_1D4E6835C(v118, v120, &v189);

    *(v106 + 24) = v121;
    *(v106 + 32) = 2082;
    v122 = v176;
    sub_1D556C8C0();
    v124 = v123;
    v126 = v125;
    v114 = v180;
    v180(v122, v109);
    v127 = sub_1D4E6835C(v124, v126, &v189);

    *(v106 + 34) = v127;
    _os_log_impl(&dword_1D4E3F000, v102, v103, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v106, 0x2Au);
    v128 = v172;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v128, -1, -1);
    MEMORY[0x1DA6ED200](v106, -1, -1);
  }

  else
  {

    v114 = v180;
    v180(v101, v15);
  }

  v129 = *(v4 + *(*v4 + 160));
  v130 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A9788;
  v187 = v130;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5570C18;
  v185 = &block_descriptor_435;
  v131 = _Block_copy(&aBlock);

  v132 = v129;

  [v132 setStatusBlock_];
  _Block_release(v131);

  v133 = *(v4 + *(*v4 + 168));
  v134 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A97C8;
  v187 = v134;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5571B7C;
  v185 = &block_descriptor_439;
  v135 = _Block_copy(&aBlock);
  v136 = v133;

  [v136 setStatusBlock_];
  _Block_release(v135);

  sub_1D5611CC8();
  v137 = objc_opt_self();
  v138 = [v137 canShowCloudDownloadButtonsDidChangeNotificationName];
  v139 = [v137 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v140 = sub_1D5611CB8();

  v141 = *(*v4 + 208);
  v142 = *(v4 + v141);
  *(v4 + v141) = v140;

  v143 = [v173 didChangeNotificationName];
  v144 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v145 = v144;

  v146 = sub_1D5611CB8();

  v147 = *(*v4 + 216);
  v148 = *(v4 + v147);
  *(v4 + v147) = v146;

  v149 = *(*v4 + 192);
  v150 = *(v4 + v149);
  v151 = swift_allocObject();
  swift_weakInit();
  v152 = swift_allocObject();
  v153 = v178;
  v152[2] = v151;
  v152[3] = v153;
  v154 = v175;
  v152[4] = v175;

  sub_1D56129D8();

  v155 = *(v4 + *(*v4 + 200));
  v156 = *(v4 + v149);

  sub_1D56129B8();

  sub_1D560EFA8();
  v157 = sub_1D5615458();
  v158 = v174;
  __swift_storeEnumTagSinglePayload(v174, 1, 1, v157);
  v159 = swift_allocObject();
  swift_weakInit();

  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = 0;
  v160[4] = v159;
  v160[5] = v153;
  v160[6] = v154;
  sub_1D51EC8B4(0, 0, v158, &unk_1D5672A70, v160);

  v114(v179, v167);
  return v4;
}

uint64_t sub_1D555DAC8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v179 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v174 = &v162 - v8;
  v9 = sub_1D56128E8();
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v170 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v162 - v13;
  v14 = sub_1D5613AF8();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v176 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v172 = (&v162 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v178 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v162 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v25 = *(*v2 + 176);
  *(v4 + v25) = [objc_opt_self() sharedContentTasteController];
  v26 = *(*v4 + 184);
  v173 = objc_opt_self();
  *(v4 + v26) = [v173 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v168 = v9;
  v38 = a2;
  v40 = v15 + 2;
  v39 = v15[2];
  v41 = v179;
  (v39)(v4 + *(*v4 + 136), v179, v14);
  v42 = *(*v4 + 144);
  (v39)(v4 + v42, v41, v14);
  *(v4 + *(*v4 + 232)) = v38;
  swift_beginAccess();
  v166 = v39;
  (v39)(v24, v4 + v42, v14);

  sub_1D556A5AC();
  v44 = v43;
  v45 = v15[1];
  v165 = v24;
  v180 = v45;
  v181 = v15 + 1;
  v45(v24, v14);
  v46 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v47 = *(*v4 + 160);
  *(v4 + v47) = v46;
  v48 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v169 = v44;
  v49 = [v48 initWithIdentifyingModelObject_];
  v50 = *(*v4 + 168);
  *(v4 + v50) = v49;
  v51 = v38;
  v52 = [*(v4 + v47) currentStatus];
  [*(v4 + v50) currentStatus];
  v53 = aBlock;
  v54 = v183;
  v3 = v184;
  v55 = sub_1D560F0C8();
  v31 = v41;
  v177 = v51;
  v164 = v53;
  v163 = v54;
  v162 = v52;
  if (v55)
  {
    swift_beginAccess();
    LOBYTE(v189) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    v189 = 0;
    v190 = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v166;
  }

  else
  {
    v185 = v14;
    v186 = MEMORY[0x1E6976CF0];
    v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v57 = v41;
    v58 = v166;
    (v166)(v56, v57, v14);

    sub_1D518AB68(v52, &aBlock, &v189);
    v59 = v189;
    swift_beginAccess();
    LOBYTE(v191) = v59;
    sub_1D560C8B8();
    swift_endAccess();
    v185 = v14;
    v186 = MEMORY[0x1E6976CF0];
    v60 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (v58)(v60, v31, v14);

    sub_1D50A911C(v53, v54, &aBlock, &v189, v3);
    v61 = v189;
    v62 = v190;
    swift_beginAccess();
    v191 = v61;
    v192 = v62;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v58;
  }

  v63 = v175;
  v36 = v40;
  v185 = v15;
  v186 = &protocol witness table for Album;
  v64 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v64, v31, v15);
  __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D5590088();
  v66 = v65;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v189 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  (v14)(v178, v31, v15);
  v67 = v171;
  sub_1D5613938();
  v68 = v170;
  v69 = v168;
  (*(v63 + 16))(v170, v67, v168);
  v70 = (*(v63 + 88))(v68, v69);
  if (v70 == *MEMORY[0x1E69765E8])
  {
    v71 = 0;
  }

  else if (v70 == *MEMORY[0x1E69765F8])
  {
    v71 = 1;
  }

  else
  {
    if (v70 != *MEMORY[0x1E69765F0])
    {
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v71 = 2;
  }

  (*(v63 + 8))(v67, v69);
  v180(v178, v15);
  swift_beginAccess();
  LOBYTE(v189) = v71;
  sub_1D560C8B8();
  swift_endAccess();
  v185 = v15;
  v186 = &protocol witness table for Album;
  v72 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v72, v31, v15);
  v73 = __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D55950B8(v73, MEMORY[0x1E6976D28], &protocol witness table for Album, sub_1D55ACE98, v74, v75, v76, v77, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);

  v78 = v191;
  swift_beginAccess();
  v188 = v78;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v79;
  v178 = sub_1D4F636B4();
  a2 = v80;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v81 = sub_1D560C758();
  v82 = __swift_project_value_buffer(v81, qword_1EDD76AA8);
  v83 = v172;
  (v14)(v172, v31, v15);

  v171 = v82;
  v84 = v14;
  v85 = sub_1D560C738();
  LODWORD(v82) = sub_1D56156E8();

  LODWORD(v168) = v82;
  v86 = os_log_type_enabled(v85, v82);
  v175 = a2;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v170 = v36;
    v88 = v87;
    v166 = swift_slowAlloc();
    v189 = v166;
    *v88 = 136446978;
    *(v88 + 4) = sub_1D4E6835C(v178, a2, &v189);
    *(v88 + 12) = 2082;
    v84(v165, v83, v15);
    v89 = v15;
    v90 = sub_1D5614DB8();
    v92 = v91;
    v180(v83, v89);
    v93 = sub_1D4E6835C(v90, v92, &v189);

    *(v88 + 14) = v93;
    *(v88 + 22) = 2082;
    v94 = sub_1D4F5E0F8();
    v96 = sub_1D4E6835C(v94, v95, &v189);

    *(v88 + 24) = v96;
    *(v88 + 32) = 2082;
    v31 = v179;
    aBlock = v164;
    v183 = v163;
    v184 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v97 = sub_1D5614DB8();
    v99 = sub_1D4E6835C(v97, v98, &v189);
    a2 = v175;

    *(v88 + 34) = v99;
    v15 = v89;
    _os_log_impl(&dword_1D4E3F000, v85, v168, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v88, 0x2Au);
    v100 = v166;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v100, -1, -1);
    MEMORY[0x1DA6ED200](v88, -1, -1);
  }

  else
  {

    v180(v83, v15);
  }

  v101 = v176;
  v84(v176, v31, v15);
  swift_retain_n();

  v102 = sub_1D560C738();
  v103 = sub_1D56156E8();

  v104 = os_log_type_enabled(v102, v103);
  v167 = v15;
  if (v104)
  {
    v105 = v15;
    v106 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v189 = v172;
    *v106 = 136446978;
    v107 = sub_1D4E6835C(v178, a2, &v189);
    *(v106 + 4) = v107;
    *(v106 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v107);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v109 = v105;
    swift_getKeyPath();
    sub_1D560C8F8();

    v110 = v191;
    v111 = v191 >> 6;
    if (v111)
    {
      if (v111 == 1)
      {
        aBlock = 0;
        v183 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v110 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v112 = aBlock;
        v113 = v183;
      }

      else
      {

        v113 = 0xE600000000000000;
        v112 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v110)
      {
        v112 = 0x656C62616464612ELL;
      }

      else
      {
        v112 = 0xD000000000000028;
      }

      if (v110)
      {
        v113 = 0xED0000296C696E28;
      }

      else
      {
        v113 = 0x80000001D567FDB0;
      }
    }

    v115 = sub_1D4E6835C(v112, v113, &v189);

    *(v106 + 14) = v115;
    *(v106 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v116);
    v117 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v117);
    swift_getKeyPath();
    sub_1D560C8F8();

    v118 = MusicLibrary.DownloadStatus.description.getter();
    v120 = v119;

    v121 = sub_1D4E6835C(v118, v120, &v189);

    *(v106 + 24) = v121;
    *(v106 + 32) = 2082;
    v122 = v176;
    sub_1D556C8C0();
    v124 = v123;
    v126 = v125;
    v114 = v180;
    v180(v122, v109);
    v127 = sub_1D4E6835C(v124, v126, &v189);

    *(v106 + 34) = v127;
    _os_log_impl(&dword_1D4E3F000, v102, v103, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v106, 0x2Au);
    v128 = v172;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v128, -1, -1);
    MEMORY[0x1DA6ED200](v106, -1, -1);
  }

  else
  {

    v114 = v180;
    v180(v101, v15);
  }

  v129 = *(v4 + *(*v4 + 160));
  v130 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A9CBC;
  v187 = v130;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5570C18;
  v185 = &block_descriptor_546;
  v131 = _Block_copy(&aBlock);

  v132 = v129;

  [v132 setStatusBlock_];
  _Block_release(v131);

  v133 = *(v4 + *(*v4 + 168));
  v134 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A9CFC;
  v187 = v134;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5571B7C;
  v185 = &block_descriptor_550;
  v135 = _Block_copy(&aBlock);
  v136 = v133;

  [v136 setStatusBlock_];
  _Block_release(v135);

  sub_1D5611CC8();
  v137 = objc_opt_self();
  v138 = [v137 canShowCloudDownloadButtonsDidChangeNotificationName];
  v139 = [v137 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v140 = sub_1D5611CB8();

  v141 = *(*v4 + 208);
  v142 = *(v4 + v141);
  *(v4 + v141) = v140;

  v143 = [v173 didChangeNotificationName];
  v144 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v145 = v144;

  v146 = sub_1D5611CB8();

  v147 = *(*v4 + 216);
  v148 = *(v4 + v147);
  *(v4 + v147) = v146;

  v149 = *(*v4 + 192);
  v150 = *(v4 + v149);
  v151 = swift_allocObject();
  swift_weakInit();
  v152 = swift_allocObject();
  v153 = v178;
  v152[2] = v151;
  v152[3] = v153;
  v154 = v175;
  v152[4] = v175;

  sub_1D56129D8();

  v155 = *(v4 + *(*v4 + 200));
  v156 = *(v4 + v149);

  sub_1D56129B8();

  sub_1D560EFA8();
  v157 = sub_1D5615458();
  v158 = v174;
  __swift_storeEnumTagSinglePayload(v174, 1, 1, v157);
  v159 = swift_allocObject();
  swift_weakInit();

  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = 0;
  v160[4] = v159;
  v160[5] = v153;
  v160[6] = v154;
  sub_1D51EC8B4(0, 0, v158, &unk_1D5672B60, v160);

  v114(v179, v167);
  return v4;
}

uint64_t sub_1D555F1D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v177 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v161 - v8;
  v170 = sub_1D56128E8();
  v176 = *(v170 - 8);
  v10 = *(v176 + 64);
  v11 = MEMORY[0x1EEE9AC00](v170);
  v168 = v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v175 = v161 - v13;
  v14 = sub_1D5613D28();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v173 = v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v171 = v161 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v169 = v161 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v172 = v161 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v24 = *(*v2 + 176);
  *(v4 + v24) = [objc_opt_self() sharedContentTasteController];
  v25 = *(*v4 + 184);
  v26 = objc_opt_self();
  *(v4 + v25) = [v26 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_31;
  }

  v167 = v9;
  v165 = v26;
  v39 = (v15 + 2);
  v38 = v15[2];
  v40 = a2;
  v41 = v177;
  (v38)(v4 + *(*v4 + 136), v177, v14);
  v42 = *(*v4 + 144);
  (v38)(v4 + v42, v41, v14);
  *(v4 + *(*v4 + 232)) = v40;
  swift_beginAccess();
  v43 = v4 + v42;
  v44 = v172;
  (v38)(v172, v43, v14);

  v45 = sub_1D556A980();
  v178 = v15[1];
  v179 = v15 + 1;
  v178(v44, v14);
  v46 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v47 = *(*v4 + 160);
  *(v4 + v47) = v46;
  v48 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v166 = v45;
  v49 = [v48 initWithIdentifyingModelObject_];
  v50 = *(*v4 + 168);
  *(v4 + v50) = v49;
  v51 = [*(v4 + v47) currentStatus];
  [*(v4 + v50) currentStatus];
  v53 = aBlock;
  v52 = v181;
  v3 = v182;
  v54 = sub_1D560F0C8();
  v174 = v40;
  v163 = v53;
  v162 = v52;
  v161[1] = v51;
  if (v54)
  {
    swift_beginAccess();
    LOBYTE(v187) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    v187 = 0;
    v188 = 2;
  }

  else
  {
    v183 = v14;
    v184 = MEMORY[0x1E6976E50];
    v55 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (v38)(v55, v41, v14);

    sub_1D518AB68(v51, &aBlock, &v187);
    v56 = v52;
    v57 = v187;
    swift_beginAccess();
    LOBYTE(v189) = v57;
    sub_1D560C8B8();
    swift_endAccess();
    v183 = v14;
    v184 = MEMORY[0x1E6976E50];
    v58 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (v38)(v58, v41, v14);

    sub_1D50A911C(v53, v56, &aBlock, &v187, v3);
    v59 = v187;
    v60 = v188;
    swift_beginAccess();
    v189 = v59;
    v190 = v60;
  }

  sub_1D560C8B8();
  swift_endAccess();
  v183 = v14;
  v184 = &protocol witness table for Track;
  v61 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v38)(v61, v41, v14);
  __swift_project_boxed_opaque_existential_1(&aBlock, v183);
  sub_1D5590088();
  v63 = v62;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v187 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  v64 = v169;
  v65 = v41;
  v66 = v41;
  v67 = v38;
  (v38)(v169, v66, v14);
  v68 = v175;
  sub_1D5613CA8();
  v69 = v176;
  v70 = v168;
  v71 = v170;
  (*(v176 + 16))(v168, v68, v170);
  v72 = (*(v69 + 88))(v70, v71);
  v15 = v14;
  if (v72 == *MEMORY[0x1E69765E8])
  {
    v73 = 0;
    v74 = v178;
    v14 = v67;
LABEL_9:
    v75 = v65;
    goto LABEL_12;
  }

  v74 = v178;
  v14 = v67;
  if (v72 == *MEMORY[0x1E69765F8])
  {
    v73 = 1;
    goto LABEL_9;
  }

  if (v72 != *MEMORY[0x1E69765F0])
  {
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v75 = v65;
  v73 = 2;
LABEL_12:
  (*(v176 + 8))(v175, v71);
  v74(v64, v15);
  swift_beginAccess();
  LOBYTE(v187) = v73;
  sub_1D560C8B8();
  swift_endAccess();
  v183 = v15;
  v184 = &protocol witness table for Track;
  v76 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v76, v75, v15);
  __swift_project_boxed_opaque_existential_1(&aBlock, v183);
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D5594FEC(&v189);

  v77 = v189;
  swift_beginAccess();
  v186 = v77;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v78 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v78;
  v176 = sub_1D4F636B4();
  v9 = v39;
  v36 = v75;
  v31 = v79;
  if (qword_1EDD54488 != -1)
  {
LABEL_31:
    swift_once();
  }

  v80 = sub_1D560C758();
  v81 = __swift_project_value_buffer(v80, qword_1EDD76AA8);
  v82 = v171;
  (v14)(v171, v36, v15);

  v175 = v81;
  v83 = sub_1D560C738();
  LODWORD(v81) = sub_1D56156E8();

  LODWORD(v168) = v81;
  if (os_log_type_enabled(v83, v81))
  {
    v84 = swift_slowAlloc();
    v169 = v9;
    v85 = v84;
    v161[0] = swift_slowAlloc();
    v187 = v161[0];
    *v85 = 136446978;
    *(v85 + 4) = sub_1D4E6835C(v176, v31, &v187);
    *(v85 + 12) = 2082;
    (v14)(v172, v82, v15);
    v86 = sub_1D5614DB8();
    v87 = v15;
    v89 = v88;
    v178(v82, v87);
    v90 = sub_1D4E6835C(v86, v89, &v187);

    *(v85 + 14) = v90;
    *(v85 + 22) = 2082;
    v91 = sub_1D4F5E0F8();
    v93 = sub_1D4E6835C(v91, v92, &v187);

    *(v85 + 24) = v93;
    *(v85 + 32) = 2082;
    aBlock = v163;
    v181 = v162;
    v182 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v94 = sub_1D5614DB8();
    v96 = sub_1D4E6835C(v94, v95, &v187);
    v15 = v87;

    *(v85 + 34) = v96;
    v36 = v177;
    _os_log_impl(&dword_1D4E3F000, v83, v168, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v85, 0x2Au);
    v97 = v161[0];
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v85, -1, -1);
  }

  else
  {

    v178(v82, v15);
  }

  v98 = v173;
  (v14)(v173, v36, v15);
  swift_retain_n();

  v99 = sub_1D560C738();
  v100 = sub_1D56156E8();

  v101 = os_log_type_enabled(v99, v100);
  v170 = v31;
  v164 = v15;
  if (v101)
  {
    v102 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v187 = v175;
    *v102 = 136446978;
    v103 = sub_1D4E6835C(v176, v31, &v187);
    *(v102 + 4) = v103;
    *(v102 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v103);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v105 = v15;
    swift_getKeyPath();
    sub_1D560C8F8();

    v106 = v189;
    v107 = v189 >> 6;
    if (v107)
    {
      if (v107 == 1)
      {
        aBlock = 0;
        v181 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v106 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v108 = aBlock;
        v109 = v181;
      }

      else
      {

        v109 = 0xE600000000000000;
        v108 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v106)
      {
        v108 = 0x656C62616464612ELL;
      }

      else
      {
        v108 = 0xD000000000000028;
      }

      if (v106)
      {
        v109 = 0xED0000296C696E28;
      }

      else
      {
        v109 = 0x80000001D567FDB0;
      }
    }

    v111 = sub_1D4E6835C(v108, v109, &v187);

    *(v102 + 14) = v111;
    *(v102 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v112);
    v113 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v113);
    swift_getKeyPath();
    sub_1D560C8F8();

    v114 = MusicLibrary.DownloadStatus.description.getter();
    v116 = v115;

    v117 = sub_1D4E6835C(v114, v116, &v187);

    *(v102 + 24) = v117;
    *(v102 + 32) = 2082;
    v118 = v173;
    sub_1D556C8C0();
    v120 = v119;
    v122 = v121;
    v123 = v118;
    v124 = v178;
    v178(v123, v105);
    v125 = sub_1D4E6835C(v120, v122, &v187);

    *(v102 + 34) = v125;
    v126 = v100;
    v110 = v124;
    _os_log_impl(&dword_1D4E3F000, v99, v126, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v102, 0x2Au);
    v127 = v175;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v127, -1, -1);
    MEMORY[0x1DA6ED200](v102, -1, -1);
  }

  else
  {

    v110 = v178;
    v178(v98, v15);
  }

  v128 = *(v4 + *(*v4 + 160));
  v129 = swift_allocObject();
  swift_weakInit();
  v184 = sub_1D55A7C30;
  v185 = v129;
  aBlock = MEMORY[0x1E69E9820];
  v181 = 1107296256;
  v182 = sub_1D5570C18;
  v183 = &block_descriptor_84;
  v130 = _Block_copy(&aBlock);

  v131 = v128;

  [v131 setStatusBlock_];
  _Block_release(v130);

  v132 = *(v4 + *(*v4 + 168));
  v133 = swift_allocObject();
  swift_weakInit();
  v184 = sub_1D55A7C70;
  v185 = v133;
  aBlock = MEMORY[0x1E69E9820];
  v181 = 1107296256;
  v182 = sub_1D5571B7C;
  v183 = &block_descriptor_88_0;
  v134 = _Block_copy(&aBlock);
  v135 = v132;

  [v135 setStatusBlock_];
  _Block_release(v134);

  sub_1D5611CC8();
  v136 = objc_opt_self();
  v137 = [v136 canShowCloudDownloadButtonsDidChangeNotificationName];
  v138 = [v136 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v139 = sub_1D5611CB8();

  v140 = *(*v4 + 208);
  v141 = *(v4 + v140);
  *(v4 + v140) = v139;

  v142 = [v165 didChangeNotificationName];
  v143 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v144 = v143;

  v145 = sub_1D5611CB8();

  v146 = *(*v4 + 216);
  v147 = *(v4 + v146);
  *(v4 + v146) = v145;

  v148 = *(*v4 + 192);
  v149 = *(v4 + v148);
  v150 = swift_allocObject();
  swift_weakInit();
  v151 = swift_allocObject();
  v152 = v176;
  v151[2] = v150;
  v151[3] = v152;
  v153 = v170;
  v151[4] = v170;

  sub_1D56129D8();

  v154 = *(v4 + *(*v4 + 200));
  v155 = *(v4 + v148);

  sub_1D56129B8();

  sub_1D560EFA8();
  v156 = sub_1D5615458();
  v157 = v167;
  __swift_storeEnumTagSinglePayload(v167, 1, 1, v156);
  v158 = swift_allocObject();
  swift_weakInit();

  v159 = swift_allocObject();
  v159[2] = 0;
  v159[3] = 0;
  v159[4] = v158;
  v159[5] = v152;
  v159[6] = v153;
  sub_1D51EC8B4(0, 0, v157, &unk_1D5672690, v159);

  v110(v177, v164);
  return v4;
}

uint64_t sub_1D556089C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v179 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v174 = &v162 - v8;
  v9 = sub_1D56128E8();
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v170 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v162 - v13;
  v14 = sub_1D5614898();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v176 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v172 = (&v162 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v178 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v162 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v25 = *(*v2 + 176);
  *(v4 + v25) = [objc_opt_self() sharedContentTasteController];
  v26 = *(*v4 + 184);
  v173 = objc_opt_self();
  *(v4 + v26) = [v173 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v168 = v9;
  v38 = a2;
  v40 = v15 + 2;
  v39 = v15[2];
  v41 = v179;
  (v39)(v4 + *(*v4 + 136), v179, v14);
  v42 = *(*v4 + 144);
  (v39)(v4 + v42, v41, v14);
  *(v4 + *(*v4 + 232)) = v38;
  swift_beginAccess();
  v166 = v39;
  (v39)(v24, v4 + v42, v14);

  sub_1D556A5AC();
  v44 = v43;
  v45 = v15[1];
  v165 = v24;
  v180 = v45;
  v181 = v15 + 1;
  v45(v24, v14);
  v46 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v47 = *(*v4 + 160);
  *(v4 + v47) = v46;
  v48 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v169 = v44;
  v49 = [v48 initWithIdentifyingModelObject_];
  v50 = *(*v4 + 168);
  *(v4 + v50) = v49;
  v51 = v38;
  v52 = [*(v4 + v47) currentStatus];
  [*(v4 + v50) currentStatus];
  v53 = aBlock;
  v54 = v183;
  v3 = v184;
  v55 = sub_1D560F0C8();
  v31 = v41;
  v177 = v51;
  v164 = v53;
  v163 = v54;
  v162 = v52;
  if (v55)
  {
    swift_beginAccess();
    LOBYTE(v189) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    v189 = 0;
    v190 = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v166;
  }

  else
  {
    v185 = v14;
    v186 = MEMORY[0x1E69773A0];
    v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v57 = v41;
    v58 = v166;
    (v166)(v56, v57, v14);

    sub_1D518AB68(v52, &aBlock, &v189);
    v59 = v189;
    swift_beginAccess();
    LOBYTE(v191) = v59;
    sub_1D560C8B8();
    swift_endAccess();
    v185 = v14;
    v186 = MEMORY[0x1E69773A0];
    v60 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (v58)(v60, v31, v14);

    sub_1D50A911C(v53, v54, &aBlock, &v189, v3);
    v61 = v189;
    v62 = v190;
    swift_beginAccess();
    v191 = v61;
    v192 = v62;
    sub_1D560C8B8();
    swift_endAccess();
    v15 = v14;
    v14 = v58;
  }

  v63 = v175;
  v36 = v40;
  v185 = v15;
  v186 = &protocol witness table for Playlist;
  v64 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v64, v31, v15);
  __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D5590088();
  v66 = v65;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v189 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  (v14)(v178, v31, v15);
  v67 = v171;
  sub_1D5614548();
  v68 = v170;
  v69 = v168;
  (*(v63 + 16))(v170, v67, v168);
  v70 = (*(v63 + 88))(v68, v69);
  if (v70 == *MEMORY[0x1E69765E8])
  {
    v71 = 0;
  }

  else if (v70 == *MEMORY[0x1E69765F8])
  {
    v71 = 1;
  }

  else
  {
    if (v70 != *MEMORY[0x1E69765F0])
    {
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v71 = 2;
  }

  (*(v63 + 8))(v67, v69);
  v180(v178, v15);
  swift_beginAccess();
  LOBYTE(v189) = v71;
  sub_1D560C8B8();
  swift_endAccess();
  v185 = v15;
  v186 = &protocol witness table for Playlist;
  v72 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v14)(v72, v31, v15);
  v73 = __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D55950B8(v73, MEMORY[0x1E69773E0], &protocol witness table for Playlist, sub_1D55ACE98, v74, v75, v76, v77, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);

  v78 = v191;
  swift_beginAccess();
  v188 = v78;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v79;
  v178 = sub_1D4F636B4();
  a2 = v80;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v81 = sub_1D560C758();
  v82 = __swift_project_value_buffer(v81, qword_1EDD76AA8);
  v83 = v172;
  (v14)(v172, v31, v15);

  v171 = v82;
  v84 = v14;
  v85 = sub_1D560C738();
  LODWORD(v82) = sub_1D56156E8();

  LODWORD(v168) = v82;
  v86 = os_log_type_enabled(v85, v82);
  v175 = a2;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v170 = v36;
    v88 = v87;
    v166 = swift_slowAlloc();
    v189 = v166;
    *v88 = 136446978;
    *(v88 + 4) = sub_1D4E6835C(v178, a2, &v189);
    *(v88 + 12) = 2082;
    v84(v165, v83, v15);
    v89 = v15;
    v90 = sub_1D5614DB8();
    v92 = v91;
    v180(v83, v89);
    v93 = sub_1D4E6835C(v90, v92, &v189);

    *(v88 + 14) = v93;
    *(v88 + 22) = 2082;
    v94 = sub_1D4F5E0F8();
    v96 = sub_1D4E6835C(v94, v95, &v189);

    *(v88 + 24) = v96;
    *(v88 + 32) = 2082;
    v31 = v179;
    aBlock = v164;
    v183 = v163;
    v184 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v97 = sub_1D5614DB8();
    v99 = sub_1D4E6835C(v97, v98, &v189);
    a2 = v175;

    *(v88 + 34) = v99;
    v15 = v89;
    _os_log_impl(&dword_1D4E3F000, v85, v168, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v88, 0x2Au);
    v100 = v166;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v100, -1, -1);
    MEMORY[0x1DA6ED200](v88, -1, -1);
  }

  else
  {

    v180(v83, v15);
  }

  v101 = v176;
  v84(v176, v31, v15);
  swift_retain_n();

  v102 = sub_1D560C738();
  v103 = sub_1D56156E8();

  v104 = os_log_type_enabled(v102, v103);
  v167 = v15;
  if (v104)
  {
    v105 = v15;
    v106 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v189 = v172;
    *v106 = 136446978;
    v107 = sub_1D4E6835C(v178, a2, &v189);
    *(v106 + 4) = v107;
    *(v106 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v107);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v109 = v105;
    swift_getKeyPath();
    sub_1D560C8F8();

    v110 = v191;
    v111 = v191 >> 6;
    if (v111)
    {
      if (v111 == 1)
      {
        aBlock = 0;
        v183 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v110 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v112 = aBlock;
        v113 = v183;
      }

      else
      {

        v113 = 0xE600000000000000;
        v112 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v110)
      {
        v112 = 0x656C62616464612ELL;
      }

      else
      {
        v112 = 0xD000000000000028;
      }

      if (v110)
      {
        v113 = 0xED0000296C696E28;
      }

      else
      {
        v113 = 0x80000001D567FDB0;
      }
    }

    v115 = sub_1D4E6835C(v112, v113, &v189);

    *(v106 + 14) = v115;
    *(v106 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v116);
    v117 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v117);
    swift_getKeyPath();
    sub_1D560C8F8();

    v118 = MusicLibrary.DownloadStatus.description.getter();
    v120 = v119;

    v121 = sub_1D4E6835C(v118, v120, &v189);

    *(v106 + 24) = v121;
    *(v106 + 32) = 2082;
    v122 = v176;
    sub_1D556C8C0();
    v124 = v123;
    v126 = v125;
    v114 = v180;
    v180(v122, v109);
    v127 = sub_1D4E6835C(v124, v126, &v189);

    *(v106 + 34) = v127;
    _os_log_impl(&dword_1D4E3F000, v102, v103, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v106, 0x2Au);
    v128 = v172;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v128, -1, -1);
    MEMORY[0x1DA6ED200](v106, -1, -1);
  }

  else
  {

    v114 = v180;
    v180(v101, v15);
  }

  v129 = *(v4 + *(*v4 + 160));
  v130 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A8D20;
  v187 = v130;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5570C18;
  v185 = &block_descriptor_212;
  v131 = _Block_copy(&aBlock);

  v132 = v129;

  [v132 setStatusBlock_];
  _Block_release(v131);

  v133 = *(v4 + *(*v4 + 168));
  v134 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1D55A8D60;
  v187 = v134;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1D5571B7C;
  v185 = &block_descriptor_216;
  v135 = _Block_copy(&aBlock);
  v136 = v133;

  [v136 setStatusBlock_];
  _Block_release(v135);

  sub_1D5611CC8();
  v137 = objc_opt_self();
  v138 = [v137 canShowCloudDownloadButtonsDidChangeNotificationName];
  v139 = [v137 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v140 = sub_1D5611CB8();

  v141 = *(*v4 + 208);
  v142 = *(v4 + v141);
  *(v4 + v141) = v140;

  v143 = [v173 didChangeNotificationName];
  v144 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v145 = v144;

  v146 = sub_1D5611CB8();

  v147 = *(*v4 + 216);
  v148 = *(v4 + v147);
  *(v4 + v147) = v146;

  v149 = *(*v4 + 192);
  v150 = *(v4 + v149);
  v151 = swift_allocObject();
  swift_weakInit();
  v152 = swift_allocObject();
  v153 = v178;
  v152[2] = v151;
  v152[3] = v153;
  v154 = v175;
  v152[4] = v175;

  sub_1D56129D8();

  v155 = *(v4 + *(*v4 + 200));
  v156 = *(v4 + v149);

  sub_1D56129B8();

  sub_1D560EFA8();
  v157 = sub_1D5615458();
  v158 = v174;
  __swift_storeEnumTagSinglePayload(v174, 1, 1, v157);
  v159 = swift_allocObject();
  swift_weakInit();

  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = 0;
  v160[4] = v159;
  v160[5] = v153;
  v160[6] = v154;
  sub_1D51EC8B4(0, 0, v158, &unk_1D5672890, v160);

  v114(v179, v167);
  return v4;
}

uint64_t sub_1D5561FA4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v147 = v139 - v9;
  v151 = type metadata accessor for UploadedVideo();
  v10 = *(*(v151 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v151);
  v145 = v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v144 = v139 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v150 = v139 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v139 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v139 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v139 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v25 = *(*v2 + 176);
  *(v4 + v25) = [objc_opt_self() sharedContentTasteController];
  v26 = *(*v4 + 184);
  v146 = objc_opt_self();
  *(v4 + v26) = [v146 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if ([objc_opt_self() isMainThread])
  {
    sub_1D55AC65C(a1, v4 + *(*v4 + 136));
    v38 = *(*v4 + 144);
    sub_1D55AC65C(a1, v4 + v38);
    *(v4 + *(*v4 + 232)) = a2;
    swift_beginAccess();
    sub_1D55AC65C(v4 + v38, v24);

    v39 = sub_1D556ACF0();
    sub_1D55AC6B4();
    v40 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
    v41 = *(*v4 + 160);
    *(v4 + v41) = v40;
    v42 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
    v143 = v39;
    v43 = [v42 initWithIdentifyingModelObject_];
    v44 = *(*v4 + 168);
    *(v4 + v44) = v43;
    v45 = [*(v4 + v41) currentStatus];
    [*(v4 + v44) currentStatus];
    v140 = *(&aBlock + 1);
    v141 = aBlock;
    v3 = v156;
    v46 = sub_1D560F0C8();
    v149 = a2;
    v139[1] = v45;
    if (v46)
    {
      swift_beginAccess();
      LOBYTE(v159[0]) = 71;
      sub_1D560C8B8();
      swift_endAccess();
      swift_beginAccess();
      *&v159[0] = 0;
      BYTE8(v159[0]) = 2;
      sub_1D560C8B8();
      swift_endAccess();
      v47 = v151;
    }

    else
    {
      sub_1D55AC65C(a1, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
      v47 = v151;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(&v156 + 1) = v47;
        v48 = sub_1D55ACD00(&qword_1EDD57488, type metadata accessor for UploadedVideo);
        v157 = v48;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        sub_1D55AC65C(a1, boxed_opaque_existential_0);

        sub_1D518AB68(v45, &aBlock, v159);
        v50 = v159[0];
        swift_beginAccess();
        LOBYTE(v152) = v50;
        sub_1D560C8B8();
        swift_endAccess();
        *(&v156 + 1) = v47;
        v157 = v48;
        v51 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        sub_1D55AC65C(a1, v51);

        sub_1D50A911C(v141, v140, &aBlock, v159, v3);
        v52 = *&v159[0];
        v53 = BYTE8(v159[0]);
        swift_beginAccess();
        v152 = v52;
        v153 = v53;
      }

      else
      {
        swift_beginAccess();
        LOBYTE(v159[0]) = 68;
        sub_1D560C8B8();
        swift_endAccess();
        swift_beginAccess();
        *&v159[0] = 0;
        BYTE8(v159[0]) = 2;
      }

      sub_1D560C8B8();
      swift_endAccess();
    }

    *(&v156 + 1) = v47;
    v157 = &protocol witness table for UploadedVideo;
    v54 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    sub_1D55AC65C(a1, v54);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v156 + 1));
    v55 = sub_1D5590918();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    swift_beginAccess();
    *&v159[0] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
    sub_1D560C8B8();
    swift_endAccess();
    sub_1D55AC65C(a1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
    if (swift_dynamicCast())
    {
      v56 = *(&v156 + 1);
      v57 = v157;
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v156 + 1));
      (v57[2])(v159, v56, v57);
      v58 = v159[0];
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v157 = 0;
      aBlock = 0u;
      v156 = 0u;
      sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
      v58 = 0;
    }

    swift_beginAccess();
    LOBYTE(v159[0]) = v58;
    sub_1D560C8B8();
    swift_endAccess();
    sub_1D55AC65C(a1, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(v159, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v156 + 1));
      sub_1D4F60168();
      v59 = v152;
      swift_beginAccess();
      v154 = v59;
      sub_1D560C8B8();
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v160 = 0;
      memset(v159, 0, sizeof(v159));
      sub_1D4E50004(v159, &qword_1EC7EC500, &unk_1D5621030);
      swift_beginAccess();
      LOBYTE(v159[0]) = 0;
      sub_1D560C8B8();
      swift_endAccess();
    }

    v60 = *(sub_1D4E5A1CC() + 40);

    *(v4 + *(*v4 + 200)) = v60;
    v150 = sub_1D4F636B4();
    v31 = v61;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_15:
  v62 = sub_1D560C758();
  v63 = __swift_project_value_buffer(v62, qword_1EDD76AA8);
  v64 = v144;
  sub_1D55AC65C(a1, v144);

  v142 = v63;
  v65 = sub_1D560C738();
  v66 = sub_1D56156E8();

  v67 = os_log_type_enabled(v65, v66);
  v148 = v31;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v159[0] = v69;
    *v68 = 136446978;
    *(v68 + 4) = sub_1D4E6835C(v150, v31, v159);
    *(v68 + 12) = 2082;
    sub_1D55AC65C(v64, v24);
    v70 = sub_1D5614DB8();
    v72 = v71;
    sub_1D55AC6B4();
    v73 = sub_1D4E6835C(v70, v72, v159);

    *(v68 + 14) = v73;
    *(v68 + 22) = 2082;
    v74 = sub_1D4F5E0F8();
    v76 = sub_1D4E6835C(v74, v75, v159);

    *(v68 + 24) = v76;
    *(v68 + 32) = 2082;
    *&aBlock = v141;
    *(&aBlock + 1) = v140;
    *&v156 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v77 = sub_1D5614DB8();
    v79 = sub_1D4E6835C(v77, v78, v159);
    v31 = v148;

    *(v68 + 34) = v79;
    _os_log_impl(&dword_1D4E3F000, v65, v66, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v68, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v69, -1, -1);
    MEMORY[0x1DA6ED200](v68, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(a1, v145);
  swift_retain_n();

  v80 = sub_1D560C738();
  v81 = sub_1D56156E8();

  if (os_log_type_enabled(v80, v81))
  {
    LODWORD(v144) = v81;
    v82 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v159[0] = v145;
    *v82 = 136446978;
    v83 = sub_1D4E6835C(v150, v31, v159);
    *(v82 + 4) = v83;
    *(v82 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v83);
    v84 = v151;
    v139[-2] = v151;
    v85 = sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo);
    v139[-1] = v85;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v139[-2] = v84;
    v139[-1] = v85;
    swift_getKeyPath();
    sub_1D560C8F8();

    v87 = v152;
    v88 = v152 >> 6;
    v139[0] = a1;
    if (v88)
    {
      if (v88 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v87 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v90 = *(&aBlock + 1);
        v89 = aBlock;
      }

      else
      {

        v90 = 0xE600000000000000;
        v89 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v87)
      {
        v89 = 0x656C62616464612ELL;
      }

      else
      {
        v89 = 0xD000000000000028;
      }

      if (v87)
      {
        v90 = 0xED0000296C696E28;
      }

      else
      {
        v90 = 0x80000001D567FDB0;
      }
    }

    v91 = v144;
    v92 = sub_1D4E6835C(v89, v90, v159);

    *(v82 + 14) = v92;
    *(v82 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v93);
    v94 = v151;
    v139[-2] = v151;
    v139[-1] = v85;
    v95 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v95);
    v139[-2] = v94;
    v139[-1] = v85;
    swift_getKeyPath();
    sub_1D560C8F8();

    v96 = MusicLibrary.DownloadStatus.description.getter();
    v98 = v97;

    v99 = sub_1D4E6835C(v96, v98, v159);

    *(v82 + 24) = v99;
    *(v82 + 32) = 2082;
    sub_1D556D06C();
    v101 = v100;
    v103 = v102;
    sub_1D55AC6B4();
    v104 = sub_1D4E6835C(v101, v103, v159);

    *(v82 + 34) = v104;
    _os_log_impl(&dword_1D4E3F000, v80, v91, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v82, 0x2Au);
    v105 = v145;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v105, -1, -1);
    MEMORY[0x1DA6ED200](v82, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v106 = *(v4 + *(*v4 + 160));
  v107 = swift_allocObject();
  swift_weakInit();
  v157 = sub_1D55AC708;
  v158 = v107;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v156 = sub_1D5570C18;
  *(&v156 + 1) = &block_descriptor_929;
  v108 = _Block_copy(&aBlock);

  v109 = v106;

  [v109 setStatusBlock_];
  _Block_release(v108);

  v110 = *(v4 + *(*v4 + 168));
  v111 = swift_allocObject();
  swift_weakInit();
  v157 = sub_1D55AC748;
  v158 = v111;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v156 = sub_1D5571B7C;
  *(&v156 + 1) = &block_descriptor_933;
  v112 = _Block_copy(&aBlock);
  v113 = v110;

  [v113 setStatusBlock_];
  _Block_release(v112);

  sub_1D5611CC8();
  v114 = objc_opt_self();
  v115 = [v114 canShowCloudDownloadButtonsDidChangeNotificationName];
  v116 = [v114 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v117 = sub_1D5611CB8();

  v118 = *(*v4 + 208);
  v119 = *(v4 + v118);
  *(v4 + v118) = v117;

  v120 = [v146 didChangeNotificationName];
  v121 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v122 = v121;

  v123 = sub_1D5611CB8();

  v124 = *(*v4 + 216);
  v125 = *(v4 + v124);
  *(v4 + v124) = v123;

  v126 = *(*v4 + 192);
  v127 = *(v4 + v126);
  v128 = swift_allocObject();
  swift_weakInit();
  v129 = swift_allocObject();
  v130 = v150;
  v129[2] = v128;
  v129[3] = v130;
  v131 = v148;
  v129[4] = v148;

  sub_1D56129D8();

  v132 = *(v4 + *(*v4 + 200));
  v133 = *(v4 + v126);

  sub_1D56129B8();

  sub_1D560EFA8();
  v134 = sub_1D5615458();
  v135 = v147;
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  v137[5] = v130;
  v137[6] = v131;
  sub_1D51EC8B4(0, 0, v135, &unk_1D5672FB8, v137);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D556368C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v147 = v139 - v9;
  v151 = type metadata accessor for UploadedAudio();
  v10 = *(*(v151 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v151);
  v145 = v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v144 = v139 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v150 = v139 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v139 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v139 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v139 - v23;
  *(v2 + *(*v2 + 152)) = 0;
  v25 = *(*v2 + 176);
  *(v4 + v25) = [objc_opt_self() sharedContentTasteController];
  v26 = *(*v4 + 184);
  v146 = objc_opt_self();
  *(v4 + v26) = [v146 sharedLibraryTransientStateController];
  v27 = *(*v4 + 192);
  v28 = sub_1D56129F8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v4 + v27) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v31 = *(*v4 + 224);
  v32 = type metadata accessor for MusicTaskCoalescer(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v37 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v35 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v37);
  *(v4 + v31) = v35;
  if ([objc_opt_self() isMainThread])
  {
    sub_1D55AC65C(a1, v4 + *(*v4 + 136));
    v38 = *(*v4 + 144);
    sub_1D55AC65C(a1, v4 + v38);
    *(v4 + *(*v4 + 232)) = a2;
    swift_beginAccess();
    sub_1D55AC65C(v4 + v38, v24);

    v39 = sub_1D556B120();
    sub_1D55AC6B4();
    v40 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
    v41 = *(*v4 + 160);
    *(v4 + v41) = v40;
    v42 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
    v143 = v39;
    v43 = [v42 initWithIdentifyingModelObject_];
    v44 = *(*v4 + 168);
    *(v4 + v44) = v43;
    v45 = [*(v4 + v41) currentStatus];
    [*(v4 + v44) currentStatus];
    v140 = *(&aBlock + 1);
    v141 = aBlock;
    v3 = v156;
    v46 = sub_1D560F0C8();
    v149 = a2;
    v139[1] = v45;
    if (v46)
    {
      swift_beginAccess();
      LOBYTE(v159[0]) = 71;
      sub_1D560C8B8();
      swift_endAccess();
      swift_beginAccess();
      *&v159[0] = 0;
      BYTE8(v159[0]) = 2;
      sub_1D560C8B8();
      swift_endAccess();
      v47 = v151;
    }

    else
    {
      sub_1D55AC65C(a1, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
      v47 = v151;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(&v156 + 1) = v47;
        v48 = sub_1D55ACD00(&qword_1EDD57500, type metadata accessor for UploadedAudio);
        v157 = v48;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        sub_1D55AC65C(a1, boxed_opaque_existential_0);

        sub_1D518AB68(v45, &aBlock, v159);
        v50 = v159[0];
        swift_beginAccess();
        LOBYTE(v152) = v50;
        sub_1D560C8B8();
        swift_endAccess();
        *(&v156 + 1) = v47;
        v157 = v48;
        v51 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        sub_1D55AC65C(a1, v51);

        sub_1D50A911C(v141, v140, &aBlock, v159, v3);
        v52 = *&v159[0];
        v53 = BYTE8(v159[0]);
        swift_beginAccess();
        v152 = v52;
        v153 = v53;
      }

      else
      {
        swift_beginAccess();
        LOBYTE(v159[0]) = 68;
        sub_1D560C8B8();
        swift_endAccess();
        swift_beginAccess();
        *&v159[0] = 0;
        BYTE8(v159[0]) = 2;
      }

      sub_1D560C8B8();
      swift_endAccess();
    }

    *(&v156 + 1) = v47;
    v157 = &protocol witness table for UploadedAudio;
    v54 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    sub_1D55AC65C(a1, v54);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v156 + 1));
    v55 = sub_1D5591510();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    swift_beginAccess();
    *&v159[0] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
    sub_1D560C8B8();
    swift_endAccess();
    sub_1D55AC65C(a1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
    if (swift_dynamicCast())
    {
      v56 = *(&v156 + 1);
      v57 = v157;
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v156 + 1));
      (v57[2])(v159, v56, v57);
      v58 = v159[0];
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v157 = 0;
      aBlock = 0u;
      v156 = 0u;
      sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
      v58 = 0;
    }

    swift_beginAccess();
    LOBYTE(v159[0]) = v58;
    sub_1D560C8B8();
    swift_endAccess();
    sub_1D55AC65C(a1, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(v159, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v156 + 1));
      sub_1D4F60168();
      v59 = v152;
      swift_beginAccess();
      v154 = v59;
      sub_1D560C8B8();
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v160 = 0;
      memset(v159, 0, sizeof(v159));
      sub_1D4E50004(v159, &qword_1EC7EC500, &unk_1D5621030);
      swift_beginAccess();
      LOBYTE(v159[0]) = 0;
      sub_1D560C8B8();
      swift_endAccess();
    }

    v60 = *(sub_1D4E5A1CC() + 40);

    *(v4 + *(*v4 + 200)) = v60;
    v150 = sub_1D4F636B4();
    v31 = v61;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_15:
  v62 = sub_1D560C758();
  v63 = __swift_project_value_buffer(v62, qword_1EDD76AA8);
  v64 = v144;
  sub_1D55AC65C(a1, v144);

  v142 = v63;
  v65 = sub_1D560C738();
  v66 = sub_1D56156E8();

  v67 = os_log_type_enabled(v65, v66);
  v148 = v31;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v159[0] = v69;
    *v68 = 136446978;
    *(v68 + 4) = sub_1D4E6835C(v150, v31, v159);
    *(v68 + 12) = 2082;
    sub_1D55AC65C(v64, v24);
    v70 = sub_1D5614DB8();
    v72 = v71;
    sub_1D55AC6B4();
    v73 = sub_1D4E6835C(v70, v72, v159);

    *(v68 + 14) = v73;
    *(v68 + 22) = 2082;
    v74 = sub_1D4F5E0F8();
    v76 = sub_1D4E6835C(v74, v75, v159);

    *(v68 + 24) = v76;
    *(v68 + 32) = 2082;
    *&aBlock = v141;
    *(&aBlock + 1) = v140;
    *&v156 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v77 = sub_1D5614DB8();
    v79 = sub_1D4E6835C(v77, v78, v159);
    v31 = v148;

    *(v68 + 34) = v79;
    _os_log_impl(&dword_1D4E3F000, v65, v66, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v68, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v69, -1, -1);
    MEMORY[0x1DA6ED200](v68, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(a1, v145);
  swift_retain_n();

  v80 = sub_1D560C738();
  v81 = sub_1D56156E8();

  if (os_log_type_enabled(v80, v81))
  {
    LODWORD(v144) = v81;
    v82 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v159[0] = v145;
    *v82 = 136446978;
    v83 = sub_1D4E6835C(v150, v31, v159);
    *(v82 + 4) = v83;
    *(v82 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v83);
    v84 = v151;
    v139[-2] = v151;
    v85 = sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio);
    v139[-1] = v85;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v139[-2] = v84;
    v139[-1] = v85;
    swift_getKeyPath();
    sub_1D560C8F8();

    v87 = v152;
    v88 = v152 >> 6;
    v139[0] = a1;
    if (v88)
    {
      if (v88 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v87 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v90 = *(&aBlock + 1);
        v89 = aBlock;
      }

      else
      {

        v90 = 0xE600000000000000;
        v89 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v87)
      {
        v89 = 0x656C62616464612ELL;
      }

      else
      {
        v89 = 0xD000000000000028;
      }

      if (v87)
      {
        v90 = 0xED0000296C696E28;
      }

      else
      {
        v90 = 0x80000001D567FDB0;
      }
    }

    v91 = v144;
    v92 = sub_1D4E6835C(v89, v90, v159);

    *(v82 + 14) = v92;
    *(v82 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v93);
    v94 = v151;
    v139[-2] = v151;
    v139[-1] = v85;
    v95 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v95);
    v139[-2] = v94;
    v139[-1] = v85;
    swift_getKeyPath();
    sub_1D560C8F8();

    v96 = MusicLibrary.DownloadStatus.description.getter();
    v98 = v97;

    v99 = sub_1D4E6835C(v96, v98, v159);

    *(v82 + 24) = v99;
    *(v82 + 32) = 2082;
    sub_1D556D06C();
    v101 = v100;
    v103 = v102;
    sub_1D55AC6B4();
    v104 = sub_1D4E6835C(v101, v103, v159);

    *(v82 + 34) = v104;
    _os_log_impl(&dword_1D4E3F000, v80, v91, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v82, 0x2Au);
    v105 = v145;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v105, -1, -1);
    MEMORY[0x1DA6ED200](v82, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v106 = *(v4 + *(*v4 + 160));
  v107 = swift_allocObject();
  swift_weakInit();
  v157 = sub_1D55AC1BC;
  v158 = v107;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v156 = sub_1D5570C18;
  *(&v156 + 1) = &block_descriptor_879;
  v108 = _Block_copy(&aBlock);

  v109 = v106;

  [v109 setStatusBlock_];
  _Block_release(v108);

  v110 = *(v4 + *(*v4 + 168));
  v111 = swift_allocObject();
  swift_weakInit();
  v157 = sub_1D55AC1FC;
  v158 = v111;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v156 = sub_1D5571B7C;
  *(&v156 + 1) = &block_descriptor_883;
  v112 = _Block_copy(&aBlock);
  v113 = v110;

  [v113 setStatusBlock_];
  _Block_release(v112);

  sub_1D5611CC8();
  v114 = objc_opt_self();
  v115 = [v114 canShowCloudDownloadButtonsDidChangeNotificationName];
  v116 = [v114 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v117 = sub_1D5611CB8();

  v118 = *(*v4 + 208);
  v119 = *(v4 + v118);
  *(v4 + v118) = v117;

  v120 = [v146 didChangeNotificationName];
  v121 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v122 = v121;

  v123 = sub_1D5611CB8();

  v124 = *(*v4 + 216);
  v125 = *(v4 + v124);
  *(v4 + v124) = v123;

  v126 = *(*v4 + 192);
  v127 = *(v4 + v126);
  v128 = swift_allocObject();
  swift_weakInit();
  v129 = swift_allocObject();
  v130 = v150;
  v129[2] = v128;
  v129[3] = v130;
  v131 = v148;
  v129[4] = v148;

  sub_1D56129D8();

  v132 = *(v4 + *(*v4 + 200));
  v133 = *(v4 + v126);

  sub_1D56129B8();

  sub_1D560EFA8();
  v134 = sub_1D5615458();
  v135 = v147;
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  v137[5] = v130;
  v137[6] = v131;
  sub_1D51EC8B4(0, 0, v135, &unk_1D5672F18, v137);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D5564D74(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v146 = v136 - v9;
  v149 = type metadata accessor for TVSeason();
  v10 = *(*(v149 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v149);
  v144 = v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v143 = v136 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v136 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v136 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v136 - v21;
  *(v2 + *(*v2 + 152)) = 0;
  v23 = *(*v2 + 176);
  *(v4 + v23) = [objc_opt_self() sharedContentTasteController];
  v24 = *(*v4 + 184);
  v145 = objc_opt_self();
  *(v4 + v24) = [v145 sharedLibraryTransientStateController];
  v25 = *(*v4 + 192);
  v26 = sub_1D56129F8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v4 + v25) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v29 = *(*v4 + 224);
  v30 = type metadata accessor for MusicTaskCoalescer(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  swift_defaultActor_initialize();
  v34 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v35 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
  __swift_storeEnumTagSinglePayload(v33 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v35);
  *(v4 + v29) = v33;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_15;
  }

  v147 = v20;
  v148 = v17;
  sub_1D55AC65C(a1, v4 + *(*v4 + 136));
  v36 = *(*v4 + 144);
  sub_1D55AC65C(a1, v4 + v36);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  sub_1D55AC65C(v4 + v36, v22);

  v37 = sub_1D556B550();
  v138 = v22;
  sub_1D55AC6B4();
  v38 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v39 = *(*v4 + 160);
  *(v4 + v39) = v38;
  v40 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v141 = v37;
  v41 = [v40 initWithIdentifyingModelObject_];
  v42 = *(*v4 + 168);
  *(v4 + v42) = v41;
  v43 = [*(v4 + v39) currentStatus];
  [*(v4 + v42) currentStatus];
  v44 = aBlock;
  v3 = v152;
  v45 = sub_1D560F0C8();
  v137 = *(&v44 + 1);
  v139 = v44;
  v136[1] = v43;
  if (v45)
  {
    swift_beginAccess();
    LOBYTE(v155[0]) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    *&v155[0] = 0;
    BYTE8(v155[0]) = 2;
  }

  else
  {
    v46 = v149;
    *(&v152 + 1) = v149;
    v47 = sub_1D55ACD00(&unk_1EDD546A0, type metadata accessor for TVSeason);
    v153 = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    sub_1D55AC65C(a1, boxed_opaque_existential_0);

    sub_1D518AB68(v43, &aBlock, v155);
    v49 = v155[0];
    swift_beginAccess();
    LOBYTE(v157) = v49;
    sub_1D560C8B8();
    swift_endAccess();
    *(&v152 + 1) = v46;
    v153 = v47;
    v50 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    sub_1D55AC65C(a1, v50);

    sub_1D50A911C(v44, *(&v44 + 1), &aBlock, v155, v3);
    v51 = *&v155[0];
    v52 = BYTE8(v155[0]);
    swift_beginAccess();
    v157 = v51;
    v158 = v52;
  }

  sub_1D560C8B8();
  swift_endAccess();
  v53 = sub_1D556C2F4();
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  *&v155[0] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(a1, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v55 = *(&v152 + 1);
    v56 = v153;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v152 + 1));
    (*(v56 + 16))(v155, v55, v56);
    v57 = v155[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v153 = 0;
    aBlock = 0u;
    v152 = 0u;
    sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v57 = 0;
  }

  swift_beginAccess();
  LOBYTE(v155[0]) = v57;
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(a1, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v155, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v152 + 1));
    sub_1D4F60168();
    v58 = v157;
    swift_beginAccess();
    v150 = v58;
    sub_1D560C8B8();
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v156 = 0;
    memset(v155, 0, sizeof(v155));
    sub_1D4E50004(v155, &qword_1EC7EC500, &unk_1D5621030);
    swift_beginAccess();
    LOBYTE(v155[0]) = 0;
    sub_1D560C8B8();
    swift_endAccess();
  }

  v142 = a2;
  v59 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v59;
  v148 = sub_1D4F636B4();
  v29 = v60;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_33;
  }

LABEL_15:
  v61 = sub_1D560C758();
  v62 = __swift_project_value_buffer(v61, qword_1EDD76AA8);
  v63 = v143;
  sub_1D55AC65C(a1, v143);

  v140 = v62;
  v64 = sub_1D560C738();
  v65 = sub_1D56156E8();

  v66 = os_log_type_enabled(v64, v65);
  v147 = v29;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v155[0] = v68;
    *v67 = 136446978;
    *(v67 + 4) = sub_1D4E6835C(v148, v29, v155);
    *(v67 + 12) = 2082;
    sub_1D55AC65C(v63, v138);
    v69 = sub_1D5614DB8();
    v71 = v70;
    sub_1D55AC6B4();
    v72 = sub_1D4E6835C(v69, v71, v155);

    *(v67 + 14) = v72;
    *(v67 + 22) = 2082;
    v73 = sub_1D4F5E0F8();
    v75 = sub_1D4E6835C(v73, v74, v155);

    *(v67 + 24) = v75;
    *(v67 + 32) = 2082;
    *&aBlock = v139;
    *(&aBlock + 1) = v137;
    *&v152 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v76 = sub_1D5614DB8();
    v78 = sub_1D4E6835C(v76, v77, v155);
    v29 = v147;

    *(v67 + 34) = v78;
    _os_log_impl(&dword_1D4E3F000, v64, v65, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v67, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v68, -1, -1);
    MEMORY[0x1DA6ED200](v67, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(a1, v144);
  swift_retain_n();

  v79 = sub_1D560C738();
  v80 = sub_1D56156E8();

  if (os_log_type_enabled(v79, v80))
  {
    v144 = a1;
    v81 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v155[0] = v143;
    *v81 = 136446978;
    v82 = sub_1D4E6835C(v148, v29, v155);
    *(v81 + 4) = v82;
    *(v81 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v82);
    v83 = v149;
    v136[-2] = v149;
    v84 = sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason);
    v136[-1] = v84;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v136[-2] = v83;
    v136[-1] = v84;
    swift_getKeyPath();
    sub_1D560C8F8();

    v86 = v157;
    v87 = v157 >> 6;
    if (v87)
    {
      if (v87 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v86 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v89 = *(&aBlock + 1);
        v88 = aBlock;
      }

      else
      {

        v89 = 0xE600000000000000;
        v88 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v86)
      {
        v88 = 0x656C62616464612ELL;
      }

      else
      {
        v88 = 0xD000000000000028;
      }

      if (v86)
      {
        v89 = 0xED0000296C696E28;
      }

      else
      {
        v89 = 0x80000001D567FDB0;
      }
    }

    v90 = sub_1D4E6835C(v88, v89, v155);

    *(v81 + 14) = v90;
    *(v81 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v91);
    v92 = v149;
    v136[-2] = v149;
    v136[-1] = v84;
    v93 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v93);
    v136[-2] = v92;
    v136[-1] = v84;
    swift_getKeyPath();
    sub_1D560C8F8();

    v94 = MusicLibrary.DownloadStatus.description.getter();
    v96 = v95;

    v97 = sub_1D4E6835C(v94, v96, v155);

    *(v81 + 24) = v97;
    *(v81 + 32) = 2082;
    v98 = sub_1D556D79C();
    v100 = v99;
    sub_1D55AC6B4();
    v101 = sub_1D4E6835C(v98, v100, v155);

    *(v81 + 34) = v101;
    _os_log_impl(&dword_1D4E3F000, v79, v80, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v81, 0x2Au);
    v102 = v143;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v102, -1, -1);
    MEMORY[0x1DA6ED200](v81, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v103 = *(v4 + *(*v4 + 160));
  v104 = swift_allocObject();
  swift_weakInit();
  v153 = sub_1D55ABD1C;
  v154 = v104;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v152 = sub_1D5570C18;
  *(&v152 + 1) = &block_descriptor_829;
  v105 = _Block_copy(&aBlock);

  v106 = v103;

  [v106 setStatusBlock_];
  _Block_release(v105);

  v107 = *(v4 + *(*v4 + 168));
  v108 = swift_allocObject();
  swift_weakInit();
  v153 = sub_1D55ABD5C;
  v154 = v108;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v152 = sub_1D5571B7C;
  *(&v152 + 1) = &block_descriptor_833;
  v109 = _Block_copy(&aBlock);
  v110 = v107;

  [v110 setStatusBlock_];
  _Block_release(v109);

  sub_1D5611CC8();
  v111 = objc_opt_self();
  v112 = [v111 canShowCloudDownloadButtonsDidChangeNotificationName];
  v113 = [v111 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v114 = sub_1D5611CB8();

  v115 = *(*v4 + 208);
  v116 = *(v4 + v115);
  *(v4 + v115) = v114;

  v117 = [v145 didChangeNotificationName];
  v118 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v119 = v118;

  v120 = sub_1D5611CB8();

  v121 = *(*v4 + 216);
  v122 = *(v4 + v121);
  *(v4 + v121) = v120;

  v123 = *(*v4 + 192);
  v124 = *(v4 + v123);
  v125 = swift_allocObject();
  swift_weakInit();
  v126 = swift_allocObject();
  v127 = v148;
  v126[2] = v125;
  v126[3] = v127;
  v128 = v147;
  v126[4] = v147;

  sub_1D56129D8();

  v129 = *(v4 + *(*v4 + 200));
  v130 = *(v4 + v123);

  sub_1D56129B8();

  sub_1D560EFA8();
  v131 = sub_1D5615458();
  v132 = v146;
  __swift_storeEnumTagSinglePayload(v146, 1, 1, v131);
  v133 = swift_allocObject();
  swift_weakInit();

  v134 = swift_allocObject();
  v134[2] = 0;
  v134[3] = 0;
  v134[4] = v133;
  v134[5] = v127;
  v134[6] = v128;
  sub_1D51EC8B4(0, 0, v132, &unk_1D5672E78, v134);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D55662E8(uint64_t a1, char *a2)
{
  v4 = v2;
  v152 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v147 = v139 - v8;
  v151 = type metadata accessor for TVEpisode();
  v9 = *(*(v151 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v151);
  v145 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v139 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v139 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v139 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v148 = v139 - v21;
  *(v2 + *(*v2 + 152)) = 0;
  v22 = *(*v2 + 176);
  *(v4 + v22) = [objc_opt_self() sharedContentTasteController];
  v23 = *(*v4 + 184);
  v146 = objc_opt_self();
  *(v4 + v23) = [v146 sharedLibraryTransientStateController];
  v24 = *(*v4 + 192);
  v25 = sub_1D56129F8();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v4 + v24) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v28 = *(*v4 + 224);
  v29 = type metadata accessor for MusicTaskCoalescer(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  v33 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v34 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v32 + v33, 1, 1, v34);
  __swift_storeEnumTagSinglePayload(v32 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v34);
  *(v4 + v28) = v32;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v150 = v20;
  v35 = v152;
  sub_1D55AC65C(v152, v4 + *(*v4 + 136));
  v36 = *(*v4 + 144);
  sub_1D55AC65C(v35, v4 + v36);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  sub_1D55AC65C(v4 + v36, v148);

  v37 = sub_1D556B980();
  sub_1D55AC6B4();
  v38 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v39 = *(*v4 + 160);
  *(v4 + v39) = v38;
  v40 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v143 = v37;
  v41 = [v40 initWithIdentifyingModelObject_];
  v42 = *(*v4 + 168);
  *(v4 + v42) = v41;
  v43 = [*(v4 + v39) currentStatus];
  [*(v4 + v42) currentStatus];
  v44 = aBlock;
  v3 = v155;
  v45 = sub_1D560F0C8();
  v140 = *(&v44 + 1);
  v141 = v44;
  v139[1] = v43;
  if (v45)
  {
    swift_beginAccess();
    LOBYTE(v158[0]) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    *&v158[0] = 0;
    BYTE8(v158[0]) = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v46 = v151;
  }

  else
  {
    v149 = v14;
    v47 = v151;
    *(&v155 + 1) = v151;
    v48 = sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode);
    v156 = v48;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v144 = v17;
    v50 = v152;
    sub_1D55AC65C(v152, boxed_opaque_existential_0);

    sub_1D518AB68(v43, &aBlock, v158);
    v51 = v158[0];
    swift_beginAccess();
    LOBYTE(v160) = v51;
    v46 = v47;
    v14 = v149;
    sub_1D560C8B8();
    swift_endAccess();
    *(&v155 + 1) = v46;
    v156 = v48;
    v52 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v53 = v50;
    v17 = v144;
    sub_1D55AC65C(v53, v52);

    sub_1D50A911C(v44, *(&v44 + 1), &aBlock, v158, v3);
    v54 = *&v158[0];
    v55 = BYTE8(v158[0]);
    swift_beginAccess();
    v160 = v54;
    v161 = v55;
    sub_1D560C8B8();
    swift_endAccess();
  }

  *(&v155 + 1) = v46;
  v156 = &protocol witness table for TVEpisode;
  v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v57 = v152;
  sub_1D55AC65C(v152, v56);
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
  v58 = sub_1D5592108();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  *&v158[0] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v57, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v59 = *(&v155 + 1);
    v60 = v156;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
    (v60[2])(v158, v59, v60);
    v61 = v158[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v156 = 0;
    aBlock = 0u;
    v155 = 0u;
    sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v61 = 0;
  }

  swift_beginAccess();
  LOBYTE(v158[0]) = v61;
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v152, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v158, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
    sub_1D4F60168();
    v62 = v160;
    swift_beginAccess();
    v153 = v62;
    sub_1D560C8B8();
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v159 = 0;
    memset(v158, 0, sizeof(v158));
    sub_1D4E50004(v158, &qword_1EC7EC500, &unk_1D5621030);
    swift_beginAccess();
    LOBYTE(v158[0]) = 0;
    sub_1D560C8B8();
    swift_endAccess();
  }

  v144 = a2;
  v63 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v63;
  v149 = sub_1D4F636B4();
  v28 = v64;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v65 = sub_1D560C758();
  v66 = __swift_project_value_buffer(v65, qword_1EDD76AA8);
  sub_1D55AC65C(v152, v14);

  v142 = v66;
  v67 = sub_1D560C738();
  v68 = sub_1D56156E8();

  v69 = os_log_type_enabled(v67, v68);
  v150 = v28;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v158[0] = v71;
    *v70 = 136446978;
    *(v70 + 4) = sub_1D4E6835C(v149, v150, v158);
    *(v70 + 12) = 2082;
    sub_1D55AC65C(v14, v148);
    v72 = sub_1D5614DB8();
    v74 = v73;
    sub_1D55AC6B4();
    v75 = sub_1D4E6835C(v72, v74, v158);

    *(v70 + 14) = v75;
    *(v70 + 22) = 2082;
    v76 = sub_1D4F5E0F8();
    v78 = sub_1D4E6835C(v76, v77, v158);

    *(v70 + 24) = v78;
    *(v70 + 32) = 2082;
    *&aBlock = v141;
    *(&aBlock + 1) = v140;
    *&v155 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v79 = sub_1D5614DB8();
    v81 = sub_1D4E6835C(v79, v80, v158);
    v28 = v150;

    *(v70 + 34) = v81;
    _os_log_impl(&dword_1D4E3F000, v67, v68, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v70, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v71, -1, -1);
    MEMORY[0x1DA6ED200](v70, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(v152, v145);
  swift_retain_n();

  v82 = sub_1D560C738();
  v83 = sub_1D56156E8();

  if (os_log_type_enabled(v82, v83))
  {
    LODWORD(v148) = v83;
    v84 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v158[0] = v145;
    *v84 = 136446978;
    v85 = sub_1D4E6835C(v149, v28, v158);
    *(v84 + 4) = v85;
    *(v84 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v85);
    v86 = v151;
    v139[-2] = v151;
    v87 = sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode);
    v139[-1] = v87;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v139[-2] = v86;
    v139[-1] = v87;
    swift_getKeyPath();
    sub_1D560C8F8();

    v89 = v160;
    v90 = v160 >> 6;
    if (v90)
    {
      if (v90 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v89 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v92 = *(&aBlock + 1);
        v91 = aBlock;
      }

      else
      {

        v92 = 0xE600000000000000;
        v91 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v89)
      {
        v91 = 0x656C62616464612ELL;
      }

      else
      {
        v91 = 0xD000000000000028;
      }

      if (v89)
      {
        v92 = 0xED0000296C696E28;
      }

      else
      {
        v92 = 0x80000001D567FDB0;
      }
    }

    v93 = sub_1D4E6835C(v91, v92, v158);

    *(v84 + 14) = v93;
    *(v84 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v94);
    v95 = v151;
    v139[-2] = v151;
    v139[-1] = v87;
    v96 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v96);
    v139[-2] = v95;
    v139[-1] = v87;
    swift_getKeyPath();
    sub_1D560C8F8();

    v97 = MusicLibrary.DownloadStatus.description.getter();
    v99 = v98;

    v100 = sub_1D4E6835C(v97, v99, v158);

    *(v84 + 24) = v100;
    *(v84 + 32) = 2082;
    v101 = sub_1D556E0B0();
    v103 = v102;
    sub_1D55AC6B4();
    v104 = sub_1D4E6835C(v101, v103, v158);

    *(v84 + 34) = v104;
    _os_log_impl(&dword_1D4E3F000, v82, v148, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v84, 0x2Au);
    v105 = v145;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v105, -1, -1);
    MEMORY[0x1DA6ED200](v84, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v106 = *(v4 + *(*v4 + 160));
  v107 = swift_allocObject();
  swift_weakInit();
  v156 = sub_1D55AB87C;
  v157 = v107;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v155 = sub_1D5570C18;
  *(&v155 + 1) = &block_descriptor_779;
  v108 = _Block_copy(&aBlock);

  v109 = v106;

  [v109 setStatusBlock_];
  _Block_release(v108);

  v110 = *(v4 + *(*v4 + 168));
  v111 = swift_allocObject();
  swift_weakInit();
  v156 = sub_1D55AB8BC;
  v157 = v111;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v155 = sub_1D5571B7C;
  *(&v155 + 1) = &block_descriptor_783;
  v112 = _Block_copy(&aBlock);
  v113 = v110;

  [v113 setStatusBlock_];
  _Block_release(v112);

  sub_1D5611CC8();
  v114 = objc_opt_self();
  v115 = [v114 canShowCloudDownloadButtonsDidChangeNotificationName];
  v116 = [v114 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v117 = sub_1D5611CB8();

  v118 = *(*v4 + 208);
  v119 = *(v4 + v118);
  *(v4 + v118) = v117;

  v120 = [v146 didChangeNotificationName];
  v121 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v122 = v121;

  v123 = sub_1D5611CB8();

  v124 = *(*v4 + 216);
  v125 = *(v4 + v124);
  *(v4 + v124) = v123;

  v126 = *(*v4 + 192);
  v127 = *(v4 + v126);
  v128 = swift_allocObject();
  swift_weakInit();
  v129 = swift_allocObject();
  v130 = v149;
  v129[2] = v128;
  v129[3] = v130;
  v131 = v150;
  v129[4] = v150;

  sub_1D56129D8();

  v132 = *(v4 + *(*v4 + 200));
  v133 = *(v4 + v126);

  sub_1D56129B8();

  sub_1D560EFA8();
  v134 = sub_1D5615458();
  v135 = v147;
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  v137[5] = v130;
  v137[6] = v131;
  sub_1D51EC8B4(0, 0, v135, &unk_1D5672DD8, v137);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D55678C4(uint64_t a1, char *a2)
{
  v4 = v2;
  v152 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v147 = v139 - v8;
  v151 = type metadata accessor for MusicMovie();
  v9 = *(*(v151 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v151);
  v145 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v139 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v139 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v139 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v148 = v139 - v21;
  *(v2 + *(*v2 + 152)) = 0;
  v22 = *(*v2 + 176);
  *(v4 + v22) = [objc_opt_self() sharedContentTasteController];
  v23 = *(*v4 + 184);
  v146 = objc_opt_self();
  *(v4 + v23) = [v146 sharedLibraryTransientStateController];
  v24 = *(*v4 + 192);
  v25 = sub_1D56129F8();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v4 + v24) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v28 = *(*v4 + 224);
  v29 = type metadata accessor for MusicTaskCoalescer(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  v33 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v34 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v32 + v33, 1, 1, v34);
  __swift_storeEnumTagSinglePayload(v32 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v34);
  *(v4 + v28) = v32;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v150 = v20;
  v35 = v152;
  sub_1D55AC65C(v152, v4 + *(*v4 + 136));
  v36 = *(*v4 + 144);
  sub_1D55AC65C(v35, v4 + v36);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  sub_1D55AC65C(v4 + v36, v148);

  v37 = sub_1D556BDB0();
  sub_1D55AC6B4();
  v38 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v39 = *(*v4 + 160);
  *(v4 + v39) = v38;
  v40 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v143 = v37;
  v41 = [v40 initWithIdentifyingModelObject_];
  v42 = *(*v4 + 168);
  *(v4 + v42) = v41;
  v43 = [*(v4 + v39) currentStatus];
  [*(v4 + v42) currentStatus];
  v44 = aBlock;
  v3 = v155;
  v45 = sub_1D560F0C8();
  v140 = *(&v44 + 1);
  v141 = v44;
  v139[1] = v43;
  if (v45)
  {
    swift_beginAccess();
    LOBYTE(v158[0]) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    *&v158[0] = 0;
    BYTE8(v158[0]) = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v46 = v151;
  }

  else
  {
    v149 = v14;
    v47 = v151;
    *(&v155 + 1) = v151;
    v48 = sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie);
    v156 = v48;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v144 = v17;
    v50 = v152;
    sub_1D55AC65C(v152, boxed_opaque_existential_0);

    sub_1D518AB68(v43, &aBlock, v158);
    v51 = v158[0];
    swift_beginAccess();
    LOBYTE(v160) = v51;
    v46 = v47;
    v14 = v149;
    sub_1D560C8B8();
    swift_endAccess();
    *(&v155 + 1) = v46;
    v156 = v48;
    v52 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v53 = v50;
    v17 = v144;
    sub_1D55AC65C(v53, v52);

    sub_1D50A911C(v44, *(&v44 + 1), &aBlock, v158, v3);
    v54 = *&v158[0];
    v55 = BYTE8(v158[0]);
    swift_beginAccess();
    v160 = v54;
    v161 = v55;
    sub_1D560C8B8();
    swift_endAccess();
  }

  *(&v155 + 1) = v46;
  v156 = &protocol witness table for MusicMovie;
  v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v57 = v152;
  sub_1D55AC65C(v152, v56);
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
  v58 = sub_1D5592D00();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  *&v158[0] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v57, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v59 = *(&v155 + 1);
    v60 = v156;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
    (v60[2])(v158, v59, v60);
    v61 = v158[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v156 = 0;
    aBlock = 0u;
    v155 = 0u;
    sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v61 = 0;
  }

  swift_beginAccess();
  LOBYTE(v158[0]) = v61;
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v152, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v158, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
    sub_1D4F60168();
    v62 = v160;
    swift_beginAccess();
    v153 = v62;
    sub_1D560C8B8();
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v159 = 0;
    memset(v158, 0, sizeof(v158));
    sub_1D4E50004(v158, &qword_1EC7EC500, &unk_1D5621030);
    swift_beginAccess();
    LOBYTE(v158[0]) = 0;
    sub_1D560C8B8();
    swift_endAccess();
  }

  v144 = a2;
  v63 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v63;
  v149 = sub_1D4F636B4();
  v28 = v64;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v65 = sub_1D560C758();
  v66 = __swift_project_value_buffer(v65, qword_1EDD76AA8);
  sub_1D55AC65C(v152, v14);

  v142 = v66;
  v67 = sub_1D560C738();
  v68 = sub_1D56156E8();

  v69 = os_log_type_enabled(v67, v68);
  v150 = v28;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v158[0] = v71;
    *v70 = 136446978;
    *(v70 + 4) = sub_1D4E6835C(v149, v150, v158);
    *(v70 + 12) = 2082;
    sub_1D55AC65C(v14, v148);
    v72 = sub_1D5614DB8();
    v74 = v73;
    sub_1D55AC6B4();
    v75 = sub_1D4E6835C(v72, v74, v158);

    *(v70 + 14) = v75;
    *(v70 + 22) = 2082;
    v76 = sub_1D4F5E0F8();
    v78 = sub_1D4E6835C(v76, v77, v158);

    *(v70 + 24) = v78;
    *(v70 + 32) = 2082;
    *&aBlock = v141;
    *(&aBlock + 1) = v140;
    *&v155 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v79 = sub_1D5614DB8();
    v81 = sub_1D4E6835C(v79, v80, v158);
    v28 = v150;

    *(v70 + 34) = v81;
    _os_log_impl(&dword_1D4E3F000, v67, v68, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v70, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v71, -1, -1);
    MEMORY[0x1DA6ED200](v70, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(v152, v145);
  swift_retain_n();

  v82 = sub_1D560C738();
  v83 = sub_1D56156E8();

  if (os_log_type_enabled(v82, v83))
  {
    LODWORD(v148) = v83;
    v84 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v158[0] = v145;
    *v84 = 136446978;
    v85 = sub_1D4E6835C(v149, v28, v158);
    *(v84 + 4) = v85;
    *(v84 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v85);
    v86 = v151;
    v139[-2] = v151;
    v87 = sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie);
    v139[-1] = v87;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v139[-2] = v86;
    v139[-1] = v87;
    swift_getKeyPath();
    sub_1D560C8F8();

    v89 = v160;
    v90 = v160 >> 6;
    if (v90)
    {
      if (v90 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v89 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v92 = *(&aBlock + 1);
        v91 = aBlock;
      }

      else
      {

        v92 = 0xE600000000000000;
        v91 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v89)
      {
        v91 = 0x656C62616464612ELL;
      }

      else
      {
        v91 = 0xD000000000000028;
      }

      if (v89)
      {
        v92 = 0xED0000296C696E28;
      }

      else
      {
        v92 = 0x80000001D567FDB0;
      }
    }

    v93 = sub_1D4E6835C(v91, v92, v158);

    *(v84 + 14) = v93;
    *(v84 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v94);
    v95 = v151;
    v139[-2] = v151;
    v139[-1] = v87;
    v96 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v96);
    v139[-2] = v95;
    v139[-1] = v87;
    swift_getKeyPath();
    sub_1D560C8F8();

    v97 = MusicLibrary.DownloadStatus.description.getter();
    v99 = v98;

    v100 = sub_1D4E6835C(v97, v99, v158);

    *(v84 + 24) = v100;
    *(v84 + 32) = 2082;
    v101 = sub_1D556EA88();
    v103 = v102;
    sub_1D55AC6B4();
    v104 = sub_1D4E6835C(v101, v103, v158);

    *(v84 + 34) = v104;
    _os_log_impl(&dword_1D4E3F000, v82, v148, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v84, 0x2Au);
    v105 = v145;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v105, -1, -1);
    MEMORY[0x1DA6ED200](v84, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v106 = *(v4 + *(*v4 + 160));
  v107 = swift_allocObject();
  swift_weakInit();
  v156 = sub_1D55AB3DC;
  v157 = v107;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v155 = sub_1D5570C18;
  *(&v155 + 1) = &block_descriptor_729;
  v108 = _Block_copy(&aBlock);

  v109 = v106;

  [v109 setStatusBlock_];
  _Block_release(v108);

  v110 = *(v4 + *(*v4 + 168));
  v111 = swift_allocObject();
  swift_weakInit();
  v156 = sub_1D55AB41C;
  v157 = v111;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v155 = sub_1D5571B7C;
  *(&v155 + 1) = &block_descriptor_733;
  v112 = _Block_copy(&aBlock);
  v113 = v110;

  [v113 setStatusBlock_];
  _Block_release(v112);

  sub_1D5611CC8();
  v114 = objc_opt_self();
  v115 = [v114 canShowCloudDownloadButtonsDidChangeNotificationName];
  v116 = [v114 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v117 = sub_1D5611CB8();

  v118 = *(*v4 + 208);
  v119 = *(v4 + v118);
  *(v4 + v118) = v117;

  v120 = [v146 didChangeNotificationName];
  v121 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v122 = v121;

  v123 = sub_1D5611CB8();

  v124 = *(*v4 + 216);
  v125 = *(v4 + v124);
  *(v4 + v124) = v123;

  v126 = *(*v4 + 192);
  v127 = *(v4 + v126);
  v128 = swift_allocObject();
  swift_weakInit();
  v129 = swift_allocObject();
  v130 = v149;
  v129[2] = v128;
  v129[3] = v130;
  v131 = v150;
  v129[4] = v150;

  sub_1D56129D8();

  v132 = *(v4 + *(*v4 + 200));
  v133 = *(v4 + v126);

  sub_1D56129B8();

  sub_1D560EFA8();
  v134 = sub_1D5615458();
  v135 = v147;
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  v137[5] = v130;
  v137[6] = v131;
  sub_1D51EC8B4(0, 0, v135, &unk_1D5672D38, v137);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D5568EA0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v177 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v172 = &v159 - v8;
  v9 = sub_1D56128E8();
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v168 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v174 = &v159 - v13;
  v14 = sub_1D5613EF8();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v173 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v170 = &v159 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v169 = &v159 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v162 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v159 - v25;
  *(v2 + *(*v2 + 152)) = 0;
  v27 = *(*v2 + 176);
  *(v4 + v27) = [objc_opt_self() sharedContentTasteController];
  v28 = *(*v4 + 184);
  v171 = objc_opt_self();
  *(v4 + v28) = [v171 sharedLibraryTransientStateController];
  v29 = *(*v4 + 192);
  v30 = sub_1D56129F8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v4 + v29) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v33 = *(*v4 + 224);
  v34 = type metadata accessor for MusicTaskCoalescer(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  v38 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v39 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v37 + v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v37 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v39);
  *&v33[v4] = v37;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_18;
  }

  v166 = v9;
  v40 = v15[2];
  v38 = v177;
  (v40)(v4 + *(*v4 + 136), v177, v14);
  v41 = *(*v4 + 144);
  (v40)(v4 + v41, v38, v14);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  v180 = (v15 + 2);
  (v40)(v26, v4 + v41, v14);

  sub_1D556A5AC();
  v43 = v42;
  v44 = v15[1];
  v161 = v26;
  v178 = v44;
  v179 = v15 + 1;
  v44(v26, v14);
  v45 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v46 = *(*v4 + 160);
  *(v4 + v46) = v45;
  v47 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v167 = v43;
  v48 = [v47 initWithIdentifyingModelObject_];
  v49 = *(*v4 + 168);
  *(v4 + v49) = v48;
  v50 = [*(v4 + v46) currentStatus];
  [*(v4 + v49) currentStatus];
  v164 = aBlock;
  v163 = v184;
  v3 = v185;
  v176 = a2;
  v51 = sub_1D560F0C8();
  v160 = v50;
  if (v51)
  {
    swift_beginAccess();
    v52 = 71;
  }

  else
  {
    (v40)(v162, v38, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v53 = MEMORY[0x1E6976EF8];
      v186 = v14;
      v187 = MEMORY[0x1E6976EF8];
      v54 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v40)(v54, v38, v14);
      v33 = v40;

      sub_1D518AB68(v50, &aBlock, &v190);
      v55 = v190;
      swift_beginAccess();
      LOBYTE(v181) = v55;
      sub_1D560C8B8();
      swift_endAccess();
      v186 = v14;
      v187 = v53;
      v56 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v40)(v56, v38, v14);

      sub_1D50A911C(v164, v163, &aBlock, &v190, v3);
      v57 = v190;
      v58 = v191;
      swift_beginAccess();
      v181 = v57;
      v182 = v58;
      sub_1D560C8B8();
      swift_endAccess();
      goto LABEL_8;
    }

    swift_beginAccess();
    v52 = 68;
  }

  LOBYTE(v190) = v52;
  sub_1D560C8B8();
  swift_endAccess();
  swift_beginAccess();
  v190 = 0;
  v191 = 2;
  sub_1D560C8B8();
  swift_endAccess();
  v33 = v40;
LABEL_8:
  v59 = v166;
  v60 = v174;
  v61 = v169;
  v62 = sub_1D556C428();
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v190 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  (v33)(v61, v38, v14);
  sub_1D5613DB8();
  v64 = v175;
  v65 = v168;
  (*(v175 + 16))(v168, v60, v59);
  v66 = (*(v64 + 88))(v65, v59);
  if (v66 == *MEMORY[0x1E69765E8])
  {
    v67 = 0;
  }

  else if (v66 == *MEMORY[0x1E69765F8])
  {
    v67 = 1;
  }

  else
  {
    if (v66 != *MEMORY[0x1E69765F0])
    {
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v67 = 2;
  }

  (*(v64 + 8))(v60, v59);
  v178(v61, v14);
  swift_beginAccess();
  LOBYTE(v190) = v67;
  sub_1D560C8B8();
  swift_endAccess();
  v186 = v14;
  v187 = &protocol witness table for Artist;
  v68 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v33)(v68, v38, v14);
  v69 = __swift_project_boxed_opaque_existential_1(&aBlock, v186);
  sub_1D4E5A1CC();
  v15 = v14;
  sub_1D5329168();

  sub_1D55950B8(v69, MEMORY[0x1E6976F28], &protocol witness table for Artist, sub_1D55ACE98, v70, v71, v72, v73, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);

  v74 = v181;
  swift_beginAccess();
  v189 = v74;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v75;
  v174 = sub_1D4F636B4();
  v9 = v76;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_36;
  }

LABEL_18:
  v77 = sub_1D560C758();
  v78 = __swift_project_value_buffer(v77, qword_1EDD76AA8);
  v79 = v170;
  (v33)(v170, v38, v15);

  v169 = v78;
  v80 = sub_1D560C738();
  LODWORD(v78) = sub_1D56156E8();

  LODWORD(v168) = v78;
  v81 = os_log_type_enabled(v80, v78);
  v82 = v15;
  v175 = v9;
  if (v81)
  {
    v83 = v15;
    v84 = v33;
    v85 = v79;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v190 = v87;
    *v86 = 136446978;
    *(v86 + 4) = sub_1D4E6835C(v174, v175, &v190);
    *(v86 + 12) = 2082;
    (v84)(v161, v85, v15);
    v88 = sub_1D5614DB8();
    v90 = v89;
    v91 = v85;
    v33 = v84;
    v178(v91, v83);
    v92 = sub_1D4E6835C(v88, v90, &v190);

    *(v86 + 14) = v92;
    *(v86 + 22) = 2082;
    v93 = sub_1D4F5E0F8();
    v95 = sub_1D4E6835C(v93, v94, &v190);

    *(v86 + 24) = v95;
    *(v86 + 32) = 2082;
    v38 = v177;
    aBlock = v164;
    v184 = v163;
    v185 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v96 = sub_1D5614DB8();
    v98 = sub_1D4E6835C(v96, v97, &v190);

    *(v86 + 34) = v98;
    _os_log_impl(&dword_1D4E3F000, v80, v168, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v86, 0x2Au);
    swift_arrayDestroy();
    v99 = v87;
    v9 = v175;
    MEMORY[0x1DA6ED200](v99, -1, -1);
    v82 = v83;
    MEMORY[0x1DA6ED200](v86, -1, -1);
  }

  else
  {

    v178(v79, v15);
  }

  v100 = v173;
  (v33)(v173, v38, v82);
  swift_retain_n();

  v101 = sub_1D560C738();
  v102 = sub_1D56156E8();

  v103 = os_log_type_enabled(v101, v102);
  v165 = v82;
  if (v103)
  {
    v104 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v190 = v180;
    *v104 = 136446978;
    v105 = sub_1D4E6835C(v174, v9, &v190);
    *(v104 + 4) = v105;
    *(v104 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v105);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v107 = v82;
    swift_getKeyPath();
    sub_1D560C8F8();

    v108 = v181;
    v109 = v181 >> 6;
    if (v109)
    {
      if (v109 == 1)
      {
        aBlock = 0;
        v184 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v108 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v110 = aBlock;
        v111 = v184;
      }

      else
      {

        v111 = 0xE600000000000000;
        v110 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v108)
      {
        v110 = 0x656C62616464612ELL;
      }

      else
      {
        v110 = 0xD000000000000028;
      }

      if (v108)
      {
        v111 = 0xED0000296C696E28;
      }

      else
      {
        v111 = 0x80000001D567FDB0;
      }
    }

    v113 = sub_1D4E6835C(v110, v111, &v190);

    *(v104 + 14) = v113;
    *(v104 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v114);
    v115 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v115);
    swift_getKeyPath();
    sub_1D560C8F8();

    v116 = MusicLibrary.DownloadStatus.description.getter();
    v118 = v117;

    v119 = sub_1D4E6835C(v116, v118, &v190);

    *(v104 + 24) = v119;
    *(v104 + 32) = 2082;
    v120 = v173;
    v121 = sub_1D556F460();
    v123 = v122;
    v112 = v178;
    v178(v120, v107);
    v124 = sub_1D4E6835C(v121, v123, &v190);

    *(v104 + 34) = v124;
    _os_log_impl(&dword_1D4E3F000, v101, v102, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v104, 0x2Au);
    v125 = v180;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v125, -1, -1);
    MEMORY[0x1DA6ED200](v104, -1, -1);
  }

  else
  {

    v112 = v178;
    v178(v100, v82);
  }

  v126 = *(v4 + *(*v4 + 160));
  v127 = swift_allocObject();
  swift_weakInit();
  v187 = sub_1D55AA15C;
  v188 = v127;
  aBlock = MEMORY[0x1E69E9820];
  v184 = 1107296256;
  v185 = sub_1D5570C18;
  v186 = &block_descriptor_678;
  v128 = _Block_copy(&aBlock);

  v129 = v126;

  [v129 setStatusBlock_];
  _Block_release(v128);

  v130 = *(v4 + *(*v4 + 168));
  v131 = swift_allocObject();
  swift_weakInit();
  v187 = sub_1D55AA19C;
  v188 = v131;
  aBlock = MEMORY[0x1E69E9820];
  v184 = 1107296256;
  v185 = sub_1D5571B7C;
  v186 = &block_descriptor_682;
  v132 = _Block_copy(&aBlock);
  v133 = v130;

  [v133 setStatusBlock_];
  _Block_release(v132);

  sub_1D5611CC8();
  v134 = objc_opt_self();
  v135 = [v134 canShowCloudDownloadButtonsDidChangeNotificationName];
  v136 = [v134 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v137 = sub_1D5611CB8();

  v138 = *(*v4 + 208);
  v139 = *(v4 + v138);
  *(v4 + v138) = v137;

  v140 = [v171 didChangeNotificationName];
  v141 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v142 = v141;

  v143 = sub_1D5611CB8();

  v144 = *(*v4 + 216);
  v145 = *(v4 + v144);
  *(v4 + v144) = v143;

  v146 = *(*v4 + 192);
  v147 = *(v4 + v146);
  v148 = swift_allocObject();
  swift_weakInit();
  v149 = swift_allocObject();
  v150 = v174;
  v149[2] = v148;
  v149[3] = v150;
  v151 = v175;
  v149[4] = v175;

  sub_1D56129D8();

  v152 = *(v4 + *(*v4 + 200));
  v153 = *(v4 + v146);

  sub_1D56129B8();

  sub_1D560EFA8();
  v154 = sub_1D5615458();
  v155 = v172;
  __swift_storeEnumTagSinglePayload(v172, 1, 1, v154);
  v156 = swift_allocObject();
  swift_weakInit();

  v157 = swift_allocObject();
  v157[2] = 0;
  v157[3] = 0;
  v157[4] = v156;
  v157[5] = v150;
  v157[6] = v151;
  sub_1D51EC8B4(0, 0, v155, &unk_1D5672CA0, v157);

  v112(v177, v165);
  return v4;
}

void sub_1D556A5AC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D56131C8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_8();
  v12 = v5(0);
  OUTLINED_FUNCTION_4(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v18 = *(v14 + 16);
  v18(&v26 - v19, v0, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    v27 = v3;
    sub_1D4E48324(&v30, &v33);
    __swift_project_boxed_opaque_existential_1(&v33, v34);
    OUTLINED_FUNCTION_333_0();
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v36, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v28, &v30);
      sub_1D4E48324(&v30, v36);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      goto LABEL_7;
    }

    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1D4E50004(v28, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v3 = v27;
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1D4E50004(&v30, &qword_1EC7EC520, &unk_1D5621050);
  }

  v34 = v12;
  v35 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  v18(boxed_opaque_existential_0, v0, v12);
  sub_1D4E50004(v36, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v33, v36);
LABEL_7:
  sub_1D4E69970(v36, &v30, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v31 + 1))
  {
    sub_1D4E48324(&v30, &v33);
    v21 = v34;
    v22 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, v34);
    (*(v9 + 104))(v1, *MEMORY[0x1E6976988], v6);
    sub_1D5159364(v1, v21, v22);
    v23 = *(v9 + 8);
    v24 = OUTLINED_FUNCTION_98();
    v25(v24);
    sub_1D4E50004(v36, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v33);
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D4E50004(&v30, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_53_9();
    v26 = 467;
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D556A980()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v6 = sub_1D5613D28();
  v19 = v6;
  v20 = MEMORY[0x1E6976E20];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  v8 = *(*(v6 - 8) + 16);
  v8(boxed_opaque_existential_0, v0, v6);
  __swift_project_boxed_opaque_existential_1(&v18, v19);
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E50004(v21, &unk_1EC7ED400, &qword_1D5620CF0);
    sub_1D4E48324(v14, &v16);
    sub_1D4E48324(&v16, v21);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D4E50004(v14, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v19 = v6;
    v20 = MEMORY[0x1E6976E58];
    v9 = __swift_allocate_boxed_opaque_existential_0(&v18);
    v8(v9, v0, v6);
    sub_1D4E50004(v21, &unk_1EC7ED400, &qword_1D5620CF0);
    sub_1D4E48324(&v18, v21);
  }

  sub_1D4E69970(v21, &v16, &unk_1EC7ED400, &qword_1D5620CF0);
  if (v17)
  {
    sub_1D4E48324(&v16, &v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    (*(v2 + 104))(v5, *MEMORY[0x1E6976988], v1);
    v12 = sub_1D5159364(v5, v10, v11);
    (*(v2 + 8))(v5, v1);
    sub_1D4E50004(v21, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    return v12;
  }

  else
  {
    sub_1D4E50004(&v16, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556ACF0()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UploadedVideo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1D55AC65C(v0, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v16, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v14, &v16);
      sub_1D4E48324(&v16, v22);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D4E50004(v14, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D4E50004(&v16, &qword_1EC7EC520, &unk_1D5621050);
  }

  v20 = v6;
  v21 = sub_1D55ACD00(&qword_1EC7EA590, type metadata accessor for UploadedVideo);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v19, v22);
LABEL_7:
  sub_1D4E69970(v22, &v16, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v17 + 1))
  {
    sub_1D4E48324(&v16, &v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v2 + 104))(v5, *MEMORY[0x1E6976988], v1);
    v12 = sub_1D5159364(v5, v10, v11);
    (*(v2 + 8))(v5, v1);
    sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return v12;
  }

  else
  {
    sub_1D4E50004(&v16, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556B120()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UploadedAudio();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1D55AC65C(v0, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v16, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v14, &v16);
      sub_1D4E48324(&v16, v22);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D4E50004(v14, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D4E50004(&v16, &qword_1EC7EC520, &unk_1D5621050);
  }

  v20 = v6;
  v21 = sub_1D55ACD00(&qword_1EC7EA588, type metadata accessor for UploadedAudio);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v19, v22);
LABEL_7:
  sub_1D4E69970(v22, &v16, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v17 + 1))
  {
    sub_1D4E48324(&v16, &v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v2 + 104))(v5, *MEMORY[0x1E6976988], v1);
    v12 = sub_1D5159364(v5, v10, v11);
    (*(v2 + 8))(v5, v1);
    sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return v12;
  }

  else
  {
    sub_1D4E50004(&v16, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556B550()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVSeason();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1D55AC65C(v0, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v16, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v14, &v16);
      sub_1D4E48324(&v16, v22);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D4E50004(v14, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D4E50004(&v16, &qword_1EC7EC520, &unk_1D5621050);
  }

  v20 = v6;
  v21 = sub_1D55ACD00(&qword_1EC7EA480, type metadata accessor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v19, v22);
LABEL_7:
  sub_1D4E69970(v22, &v16, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v17 + 1))
  {
    sub_1D4E48324(&v16, &v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v2 + 104))(v5, *MEMORY[0x1E6976988], v1);
    v12 = sub_1D5159364(v5, v10, v11);
    (*(v2 + 8))(v5, v1);
    sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return v12;
  }

  else
  {
    sub_1D4E50004(&v16, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556B980()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVEpisode();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1D55AC65C(v0, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v16, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v14, &v16);
      sub_1D4E48324(&v16, v22);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D4E50004(v14, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D4E50004(&v16, &qword_1EC7EC520, &unk_1D5621050);
  }

  v20 = v6;
  v21 = sub_1D55ACD00(&qword_1EC7EA578, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v19, v22);
LABEL_7:
  sub_1D4E69970(v22, &v16, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v17 + 1))
  {
    sub_1D4E48324(&v16, &v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v2 + 104))(v5, *MEMORY[0x1E6976988], v1);
    v12 = sub_1D5159364(v5, v10, v11);
    (*(v2 + 8))(v5, v1);
    sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return v12;
  }

  else
  {
    sub_1D4E50004(&v16, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556BDB0()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicMovie();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1D55AC65C(v0, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v16, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v14, &v16);
      sub_1D4E48324(&v16, v22);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D4E50004(v14, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D4E50004(&v16, &qword_1EC7EC520, &unk_1D5621050);
  }

  v20 = v6;
  v21 = sub_1D55ACD00(&qword_1EC7EA580, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v19, v22);
LABEL_7:
  sub_1D4E69970(v22, &v16, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v17 + 1))
  {
    sub_1D4E48324(&v16, &v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v2 + 104))(v5, *MEMORY[0x1E6976988], v1);
    v12 = sub_1D5159364(v5, v10, v11);
    (*(v2 + 8))(v5, v1);
    sub_1D4E50004(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return v12;
  }

  else
  {
    sub_1D4E50004(&v16, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556C258()
{
  OUTLINED_FUNCTION_269_2();
  v0(0);
  OUTLINED_FUNCTION_178_7();
  OUTLINED_FUNCTION_331_2();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_64_5();
  return sub_1D560C908();
}

uint64_t sub_1D556C2F4()
{
  v1 = type metadata accessor for TVSeason();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D55AC65C(v0, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC560, &qword_1D56210A8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = sub_1D5370A10(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D4E50004(v8, qword_1EC7EC568, &unk_1D56210B0);
    return 0;
  }

  return v6;
}

uint64_t sub_1D556C428()
{
  v1 = sub_1D5613EF8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC560, &qword_1D56210A8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = sub_1D5370A10(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1D4E50004(v9, qword_1EC7EC568, &unk_1D56210B0);
    return 0;
  }

  return v7;
}

void sub_1D556C584()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_272_3();
  v0 = OUTLINED_FUNCTION_116_9();
  v1(v0);
  OUTLINED_FUNCTION_178_7();
  OUTLINED_FUNCTION_331_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_440();
  swift_getKeyPath();

  OUTLINED_FUNCTION_64_5();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D556C614()
{
  OUTLINED_FUNCTION_64_4();
  v0(0);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_366_0();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}