void AssetExportSession.init(avAsset:presetName:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11CloudAssets18AssetExportSession_delegate] = a4;
  swift_unknownObjectRetain();
  v6 = sub_2437ABA8C();
  v8.receiver = v4;
  v8.super_class = type metadata accessor for AssetExportSession();
  v7 = objc_msgSendSuper2(&v8, sel_initWithAsset_presetName_, a1, v6);

  if (v7)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id AssetExportSession.__allocating_init(asset:presetName:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2437ABA8C();

  v5 = [v3 initWithAsset:a1 presetName:v4];

  return v5;
}

id AssetExportSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetExportSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24378A8D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_47() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
    if (v6 || (OUTLINED_FUNCTION_47() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
      if (v7 || (OUTLINED_FUNCTION_47() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == OUTLINED_FUNCTION_58() && a2 == v8)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_47();

        if (v10)
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

uint64_t sub_24378AA30(unsigned __int8 a1)
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](a1);
  return sub_2437ABECC();
}

uint64_t sub_24378AA78(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      result = 0x69746E6564657263;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = OUTLINED_FUNCTION_58();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24378AB2C()
{
  v1 = *v0;
  sub_2437ABEAC();
  MEMORY[0x245D3F230](v1);
  return sub_2437ABECC();
}

uint64_t sub_24378AB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24378A8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24378ABB0()
{
  sub_2437929F8();
  v0 = OUTLINED_FUNCTION_55();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24378ABE8()
{
  sub_2437929F8();
  v0 = OUTLINED_FUNCTION_55();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_24378AC20()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85EE8);
  v1 = OUTLINED_FUNCTION_42();
  __swift_project_value_buffer(v1, v2);
  sub_2437AB73C();
  type metadata accessor for AssetStreamHandle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85570, &qword_2437ACC90);
  sub_2437ABABC();
  OUTLINED_FUNCTION_33();
  return sub_2437AB9CC();
}

uint64_t sub_24378ACC0()
{
  result = sub_24378ACE0();
  qword_27ED85EA8 = result;
  return result;
}

uint64_t sub_24378ACE0()
{
  v0 = sub_2437AB76C();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  static TestConfigurations.testConfigurations()(&v19);
  v18 = 0;
  if (static TestConfigurations.== infix(_:_:)(&v19, &v18))
  {
    sub_2437AB6FC();
  }

  else if (static TestConfigurations.isSystemInstalledBinary()())
  {
    sub_2437AB6EC();
  }

  else
  {
    sub_2437AB70C();
  }

  type metadata accessor for AssetManager();
  v10 = *(v3 + 16);
  v11 = OUTLINED_FUNCTION_33();
  v12(v11);
  v13 = AssetManager.__allocating_init(serviceIdentifier:)(v8);
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_25();
  v16(v15);
  return v13;
}

void AssetStreamHandle.init(from:)()
{
  OUTLINED_FUNCTION_52();
  v45 = v2;
  v46 = v1;
  v4 = v3;
  v5 = sub_2437AB5CC();
  v6 = OUTLINED_FUNCTION_17(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13();
  v9 = sub_2437AB67C();
  v10 = OUTLINED_FUNCTION_17(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13();
  v13 = sub_2437AB91C();
  v14 = OUTLINED_FUNCTION_1(v13);
  v42 = v15;
  v43 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v44 = v18;
  OUTLINED_FUNCTION_13();
  v19 = sub_2437AB94C();
  v20 = OUTLINED_FUNCTION_17(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  v23 = sub_2437AB66C();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v27 = type metadata accessor for AssetStreamHandle(0);
  v28 = v27[8];
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  OUTLINED_FUNCTION_66();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  sub_243792644();
  *(v29 + 112) = sub_2437ABA4C();
  *(v45 + v28) = v29;
  sub_243792760(v4, v46);
  sub_2437AB93C();
  OUTLINED_FUNCTION_22();
  sub_243794674(v30, v31);
  sub_2437AB96C();
  if (v0)
  {
    sub_2437927B8(v4, v46);
  }

  else
  {
    sub_2437AB63C();
    sub_2437AB87C();
    (*(v42 + 32))(v45, v44, v43);
    sub_2437AB5DC();
    v32 = v45 + v27[5];
    sub_2437AB69C();
    v33 = sub_2437AB61C();
    v34 = (v45 + v27[6]);
    *v34 = v33;
    v34[1] = v35;
    v36 = sub_2437AB5FC();
    v38 = v37;
    sub_2437927B8(v4, v46);
    v39 = OUTLINED_FUNCTION_72();
    v40(v39);
    v41 = (v45 + v27[7]);
    *v41 = v36;
    v41[1] = v38;
  }

  OUTLINED_FUNCTION_56();
}

{
  OUTLINED_FUNCTION_52();
  v65 = v0;
  v2 = v1;
  v56 = v3;
  v60 = sub_2437AB6DC();
  v4 = OUTLINED_FUNCTION_1(v60);
  v57 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v59 = v8;
  OUTLINED_FUNCTION_13();
  v9 = sub_2437AB91C();
  v10 = OUTLINED_FUNCTION_1(v9);
  v58 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v61 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854F0, &qword_2437AC810);
  v16 = OUTLINED_FUNCTION_1(v15);
  v62 = v17;
  v63 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v54 - v20;
  v22 = type metadata accessor for AssetStreamHandle(0);
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v30 = *(v29 + 32);
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  OUTLINED_FUNCTION_66();
  v31 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);
  v32 = OUTLINED_FUNCTION_37();
  type metadata accessor for AssetStreamHandle.RangeReader(v32);
  sub_243792644();
  *(v31 + 112) = sub_2437ABA4C();
  *(v28 + v30) = v31;
  v33 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2437929F8();
  v64 = v21;
  v34 = v65;
  sub_2437ABEDC();
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v55 = v22;
    v65 = v28;
    v35 = v2;
    v37 = v59;
    v36 = v60;
    OUTLINED_FUNCTION_20();
    sub_243794674(v38, v39);
    v40 = v61;
    sub_2437ABDEC();
    v41 = *(v58 + 32);
    v61 = v9;
    v41(v65, v40, v9);
    OUTLINED_FUNCTION_19();
    sub_243794674(v42, v43);
    v44 = v37;
    sub_2437ABDEC();
    v45 = v55;
    v46 = v65;
    (*(v57 + 32))(v65 + *(v55 + 20), v44, v36);
    v47 = sub_2437ABDDC();
    v48 = (v46 + *(v45 + 24));
    *v48 = v47;
    v48[1] = v49;
    v50 = sub_2437ABDDC();
    v52 = v51;
    (*(v62 + 8))(v64, v63);
    v53 = (v46 + *(v45 + 28));
    *v53 = v50;
    v53[1] = v52;
    sub_2437928EC(v46, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_243792A4C(v46);
  }

  OUTLINED_FUNCTION_56();
}

uint64_t AssetStreamHandle.serializedData()()
{
  v1 = v0;
  v2 = sub_2437AB5CC();
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49();
  v6 = sub_2437AB67C();
  v7 = OUTLINED_FUNCTION_17(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = sub_2437AB66C();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  sub_2437AB65C();
  sub_2437AB86C();
  sub_2437AB64C();
  v19 = type metadata accessor for AssetStreamHandle(0);
  v20 = v0 + v19[5];
  sub_2437AB68C();
  sub_2437AB5EC();
  v21 = (v1 + v19[6]);
  v23 = *v21;
  v22 = v21[1];

  sub_2437AB62C();
  v24 = (v1 + v19[7]);
  v26 = *v24;
  v25 = v24[1];

  sub_2437AB60C();
  OUTLINED_FUNCTION_22();
  sub_243794674(v27, v28);
  sub_2437AB95C();
  (*(v13 + 8))(v18, v10);
  return OUTLINED_FUNCTION_42();
}

void static AssetStreamHandle.makeAssetStreamHandle(partition:owner:accessToken:requestorID:signature:referenceSignature:size:assetKey:filenameExtension:applicationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_52();
  v124 = v30;
  v125 = v32;
  v112 = v33;
  v113 = v34;
  v118 = v36;
  v119 = v35;
  v116 = v38;
  v117 = v37;
  v110 = v39;
  v111 = v40;
  v41 = sub_2437AB6DC();
  v42 = OUTLINED_FUNCTION_1(v41);
  v123 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v121 = v46;
  OUTLINED_FUNCTION_13();
  v122 = sub_2437AB91C();
  v47 = OUTLINED_FUNCTION_1(v122);
  v120 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  v130 = v51;
  OUTLINED_FUNCTION_13();
  v131 = sub_2437AB90C();
  v52 = OUTLINED_FUNCTION_1(v131);
  v129 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  v128 = v103 - v60;
  OUTLINED_FUNCTION_13();
  v61 = sub_2437AB52C();
  v62 = OUTLINED_FUNCTION_1(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49();
  v67 = sub_2437AB8BC();
  v68 = OUTLINED_FUNCTION_1(v67);
  v126 = v69;
  v127 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v72);
  v74 = v103 - v73;
  v114 = a25;
  v115 = a26;
  if (sub_24378B980(a25, a26))
  {
    sub_243792810();
    OUTLINED_FUNCTION_69();
    swift_allocError();
    *v75 = xmmword_2437AC7D0;
    *(v75 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v109 = a30;
    v108 = a29;
    v107 = a28;
    v106 = a27;
    v103[1] = a24;
    v104 = v41;
    (*(v64 + 16))(v31, v110, v61);

    v76 = OUTLINED_FUNCTION_42();
    sub_243792760(v76, v77);
    sub_243792760(a22, a23);
    v105 = v74;
    sub_2437AB88C();
    v78 = OUTLINED_FUNCTION_28();
    sub_243792760(v78, v79);
    v80 = v128;
    OUTLINED_FUNCTION_28();
    sub_2437AB8FC();
    v81 = *(v126 + 16);
    v82 = OUTLINED_FUNCTION_64();
    v83(v82);
    (*(v129 + 16))(v58, v80, v131);
    sub_2437AB8CC();
    v84 = sub_2437AB6CC();
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    swift_allocObject();

    sub_2437AB6AC();
    v87 = v121;
    sub_2437AB6BC();

    v88 = v120;
    v89 = *(v120 + 16);
    v90 = v125;
    v91 = OUTLINED_FUNCTION_40();
    v92 = v122;
    v93(v91);
    v94 = type metadata accessor for AssetStreamHandle(0);
    v95 = v123;
    v96 = v104;
    (*(v123 + 16))(v90 + v94[5], v87, v104);
    v119 = v94[8];
    type metadata accessor for AssetStreamHandle.RangeReadersCache();
    OUTLINED_FUNCTION_66();
    v97 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);
    type metadata accessor for AssetStreamHandle.RangeReader(0);
    sub_243792644();
    *(v97 + 112) = sub_2437ABA4C();
    (*(v95 + 8))(v87, v96);
    (*(v88 + 8))(v130, v92);
    (*(v129 + 8))(v128, v131);
    (*(v126 + 8))(v105, v127);
    v98 = v125;
    *(v125 + v119) = v97;
    v99 = (v98 + v94[6]);
    v100 = v107;
    *v99 = v106;
    v99[1] = v100;
    v101 = (v98 + v94[7]);
    v102 = v109;
    *v101 = v108;
    v101[1] = v102;
  }

  OUTLINED_FUNCTION_56();
}

BOOL sub_24378B980(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id AssetStreamHandle.makeAVPlayerItem(with:options:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  OUTLINED_FUNCTION_37();
  v2 = sub_2437ABCCC();
  v3 = OUTLINED_FUNCTION_1(v2);
  v74 = v4;
  v75 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v73 = v7;
  OUTLINED_FUNCTION_13();
  v71 = sub_2437ABCBC();
  v8 = OUTLINED_FUNCTION_7(v71);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v72 = v11;
  OUTLINED_FUNCTION_13();
  v12 = sub_2437AB9FC();
  v13 = OUTLINED_FUNCTION_17(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v70 = v16;
  OUTLINED_FUNCTION_13();
  v17 = sub_2437AB5BC();
  v18 = OUTLINED_FUNCTION_1(v17);
  v67 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  v25 = OUTLINED_FUNCTION_64();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  v28 = OUTLINED_FUNCTION_17(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  v37 = sub_2437AB52C();
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v45 = v44 - v43;
  v46 = OUTLINED_FUNCTION_32();
  sub_2437945D8(v46, v47, &unk_27ED85650, &qword_2437ACD80);
  OUTLINED_FUNCTION_84(v36);
  if (!v48)
  {
    (*(v40 + 32))(v45, v36, v37);
LABEL_6:
    v53 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v54 = v68;

    v55 = sub_2437924DC(v45, v54);
    type metadata accessor for LoadingRequestHandler();
    v56 = OUTLINED_FUNCTION_37();
    v76[3] = type metadata accessor for AssetStreamHandle(v56);
    v76[4] = &protocol witness table for AssetStreamHandle;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
    sub_2437928EC(v69, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_81();
    v58 = sub_243794F7C(v76);
    v59 = [v55 resourceLoader];
    sub_243794634(0, &qword_27ED854B0, 0x277D85C78);
    v60 = v58;
    sub_2437AB9EC();
    v76[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    sub_243794674(v61, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854C0, &qword_2437AC800);
    sub_243792950();
    sub_2437ABD3C();
    (*(v74 + 104))(v73, *MEMORY[0x277D85260], v75);
    OUTLINED_FUNCTION_41();
    v63 = sub_2437ABCDC();
    OUTLINED_FUNCTION_68();
    [v64 v65];

    type metadata accessor for PlayerItem();
    v66 = OUTLINED_FUNCTION_57();
    return PlayerItem.__allocating_init(avAsset:delegate:)(v66, v60);
  }

  OUTLINED_FUNCTION_36();
  sub_2437AB5AC();
  OUTLINED_FUNCTION_0();
  sub_243794674(v49, v50);
  v51 = sub_2437ABE1C();
  MEMORY[0x245D3EE60](v51);

  (*(v67 + 8))(v24, v17);
  sub_2437AB50C();

  result = OUTLINED_FUNCTION_84(v33);
  if (!v48)
  {
    (*(v40 + 32))(v45, v33, v37);
    OUTLINED_FUNCTION_84(v36);
    if (!v48)
    {
      sub_243794788(v36, &unk_27ED85650, &qword_2437ACD80);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void AssetStreamHandle.makeAVAssetExportSession(with:options:presetName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72[1] = a2;
  v78 = a3;
  v79 = a4;
  OUTLINED_FUNCTION_37();
  v4 = sub_2437ABCCC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v76 = v6;
  v77 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v75 = v9;
  OUTLINED_FUNCTION_13();
  v73 = sub_2437ABCBC();
  v10 = OUTLINED_FUNCTION_7(v73);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v74 = v13;
  OUTLINED_FUNCTION_13();
  v14 = sub_2437AB9FC();
  v15 = OUTLINED_FUNCTION_17(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v72[3] = v18;
  OUTLINED_FUNCTION_13();
  v19 = sub_2437AB5BC();
  v20 = OUTLINED_FUNCTION_1(v19);
  v72[0] = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  v27 = OUTLINED_FUNCTION_54();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  v30 = OUTLINED_FUNCTION_17(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v72 - v37;
  v39 = sub_2437AB52C();
  v40 = OUTLINED_FUNCTION_1(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  v47 = v46 - v45;
  v48 = OUTLINED_FUNCTION_28();
  sub_2437945D8(v48, v49, &unk_27ED85650, &qword_2437ACD80);
  OUTLINED_FUNCTION_83(v38);
  if (!v50)
  {
    v54 = *(v42 + 32);
    v55 = OUTLINED_FUNCTION_25();
    v56(v55);
LABEL_6:
    v57 = objc_allocWithZone(MEMORY[0x277CE6650]);

    v58 = OUTLINED_FUNCTION_25();
    v60 = sub_2437924DC(v58, v59);
    type metadata accessor for LoadingRequestHandler();
    v61 = OUTLINED_FUNCTION_37();
    v80[3] = type metadata accessor for AssetStreamHandle(v61);
    v80[4] = &protocol witness table for AssetStreamHandle;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
    sub_2437928EC(v72[2], boxed_opaque_existential_1);
    OUTLINED_FUNCTION_81();
    v63 = sub_243794F7C(v80);
    v64 = [v60 resourceLoader];
    sub_243794634(0, &qword_27ED854B0, 0x277D85C78);
    v65 = v63;
    sub_2437AB9EC();
    v80[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    sub_243794674(v66, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854C0, &qword_2437AC800);
    sub_243792950();
    sub_2437ABD3C();
    (*(v76 + 104))(v75, *MEMORY[0x277D85260], v77);
    OUTLINED_FUNCTION_41();
    v68 = sub_2437ABCDC();
    OUTLINED_FUNCTION_68();
    [v69 v70];

    type metadata accessor for AssetExportSession();
    v71 = v79;

    AssetExportSession.__allocating_init(avAsset:presetName:delegate:)(v60, v78, v71, v65);
    return;
  }

  OUTLINED_FUNCTION_36();
  sub_2437AB5AC();
  OUTLINED_FUNCTION_0();
  sub_243794674(v51, v52);
  v53 = sub_2437ABE1C();
  MEMORY[0x245D3EE60](v53);

  (*(v72[0] + 8))(v26, v19);
  sub_2437AB50C();

  OUTLINED_FUNCTION_83(v35);
  if (!v50)
  {
    (*(v42 + 32))(v47, v35, v39);
    OUTLINED_FUNCTION_83(v38);
    if (!v50)
    {
      sub_243794788(v38, &unk_27ED85650, &qword_2437ACD80);
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t AssetStreamHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854D0, &qword_2437AC808);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437929F8();
  sub_2437ABEEC();
  v27[15] = 0;
  sub_2437AB91C();
  OUTLINED_FUNCTION_20();
  sub_243794674(v14, v15);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_67();
  sub_2437ABE0C();
  if (!v2)
  {
    v16 = type metadata accessor for AssetStreamHandle(0);
    v17 = v16[5];
    v27[14] = 1;
    sub_2437AB6DC();
    OUTLINED_FUNCTION_19();
    sub_243794674(v18, v19);
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_67();
    sub_2437ABE0C();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v27[13] = 2;
    OUTLINED_FUNCTION_67();
    sub_2437ABDFC();
    v23 = (v3 + v16[7]);
    v24 = *v23;
    v25 = v23[1];
    v27[12] = 3;
    OUTLINED_FUNCTION_67();
    sub_2437ABDFC();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_24378CB68()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85F00);
  v1 = OUTLINED_FUNCTION_42();
  __swift_project_value_buffer(v1, v2);
  sub_2437AB73C();
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85540, &qword_2437ACC48);
  sub_2437ABABC();
  OUTLINED_FUNCTION_33();
  return sub_2437AB9CC();
}

void sub_24378CC08()
{
  OUTLINED_FUNCTION_52();
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2437AB52C();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  v23[0] = 0;
  v9 = [v8 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v23];

  v10 = v23[0];
  if (v9)
  {
    sub_2437AB4EC();
    v11 = v10;

    v12 = [v7 defaultManager];
    v13 = sub_2437AB4DC();
    v23[0] = 0;
    v14 = [v12 URLForDirectory:99 inDomain:1 appropriateForURL:v13 create:1 error:v23];

    v15 = v23[0];
    if (v14)
    {
      sub_2437AB4EC();
      v16 = v15;
    }

    else
    {
      v18 = v23[0];
      sub_2437AB4BC();

      swift_willThrow();
    }

    v19 = *(v4 + 8);
    v20 = OUTLINED_FUNCTION_34();
    v21(v20);
  }

  else
  {
    v17 = v23[0];
    OUTLINED_FUNCTION_57();
    sub_2437AB4BC();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56();
}

void sub_24378CE18()
{
  OUTLINED_FUNCTION_52();
  v99 = v1;
  v3 = v0;
  v94 = v4;
  v95 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_2437AB4CC();
  v15 = OUTLINED_FUNCTION_1(v14);
  v92 = v16;
  v93 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v91 = v19;
  OUTLINED_FUNCTION_13();
  v20 = sub_2437AB8BC();
  v21 = OUTLINED_FUNCTION_1(v20);
  v84 = v22;
  v85 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49();
  v25 = sub_2437AB52C();
  v26 = OUTLINED_FUNCTION_1(v25);
  v89 = v27;
  v90 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v32 = (v30 - v31);
  MEMORY[0x28223BE20](v33);
  v88 = &v83 - v34;
  swift_defaultActor_initialize();
  v35 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  v36 = sub_2437AB91C();
  OUTLINED_FUNCTION_44(v36);
  v96 = v37;
  v38 = *(v37 + 16);
  v101 = v13;
  v98 = v39;
  v38(v0 + v35, v13);
  v40 = (v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
  v86 = v11;
  v87 = v9;
  *v40 = v11;
  v40[1] = v9;
  v41 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_credential;
  v42 = sub_2437AB6DC();
  OUTLINED_FUNCTION_44(v42);
  v44 = v43;
  v45 = *(v43 + 16);
  v100 = v7;
  v97 = v46;
  v45(v0 + v41, v7);
  v47 = (v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_applicationID);
  v48 = v95;
  *v47 = v94;
  v47[1] = v48;
  v95 = v32;
  v49 = v99;
  sub_24378CC08();
  v99 = v49;
  if (v49)
  {
    v50 = *(v96 + 8);
    v51 = v98;
    v50(v3 + v35, v98);
    v52 = *(v44 + 8);
    v53 = v97;
    v52(v3 + v41, v97);
    v54 = v47[1];

    type metadata accessor for AssetStreamHandle.RangeReader(0);
    swift_defaultActor_destroy();
    v52(v100, v53);
    v50(v101, v51);
    v55 = *(*v3 + 48);
    v56 = *(*v3 + 52);
    OUTLINED_FUNCTION_42();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2437AB8DC();
    sub_2437AB8AC();
    v57 = v85;
    v94 = *(v84 + 8);
    v94(v2, v85);
    v58 = OUTLINED_FUNCTION_34();
    v60 = sub_2437AA35C(v58, v59);
    v62 = v61;
    v63 = OUTLINED_FUNCTION_34();
    sub_2437927B8(v63, v64);
    v102 = v60;
    v103 = v62;
    MEMORY[0x245D3EE60](95, 0xE100000000000000);
    sub_2437AB8DC();
    sub_2437AB89C();
    v94(v2, v57);
    v65 = OUTLINED_FUNCTION_34();
    v67 = sub_2437AA35C(v65, v66);
    v69 = v68;
    v70 = OUTLINED_FUNCTION_34();
    sub_2437927B8(v70, v71);
    MEMORY[0x245D3EE60](v67, v69);

    MEMORY[0x245D3EE60](95, 0xE100000000000000);
    OUTLINED_FUNCTION_64();
    v72 = sub_2437ABE1C();
    MEMORY[0x245D3EE60](v72);

    MEMORY[0x245D3EE60](95, 0xE100000000000000);
    OUTLINED_FUNCTION_64();
    v73 = sub_2437ABE1C();
    MEMORY[0x245D3EE60](v73);

    v75 = v91;
    v74 = v92;
    v76 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x277CC91D8], v93);
    sub_2437947E0();
    v77 = v88;
    sub_2437AB51C();
    (*(v44 + 8))(v100, v97);
    (*(v96 + 8))(v101, v98);
    (*(v74 + 8))(v75, v76);

    v79 = v89;
    v78 = v90;
    v80 = *(v89 + 8);
    v81 = OUTLINED_FUNCTION_34();
    v82(v81);
    (*(v79 + 32))(v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL, v77, v78);
    *(v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState) = 0;
  }

  OUTLINED_FUNCTION_56();
}

void sub_24378D39C()
{
  OUTLINED_FUNCTION_52();
  v2 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2437AB91C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v41 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_2437AB52C();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  sub_243794634(0, &qword_27ED85548, 0x277CCA9F8);
  (*(v14 + 16))(v0, v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL, v11);
  v17 = sub_24378D810(v0);
  if (!v1)
  {
    v40 = v3;
    v18 = v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range;
    v19 = *(v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v17;
      v42[0] = 0;
      if (![v17 seekToOffset:v19 error:v42])
      {
        v37 = v42[0];
        sub_2437AB4BC();

LABEL_10:
        swift_willThrow();
LABEL_11:

        goto LABEL_12;
      }

      if (!__OFSUB__(*(v18 + 8), v19))
      {
        v20 = v42[0];
        sub_2437ABC7C();
        if (v21 >> 60 != 15)
        {
          goto LABEL_11;
        }

        if (qword_27ED85EB0 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_2();
    swift_once();
LABEL_7:
    v22 = sub_2437AB9DC();
    __swift_project_value_buffer(v22, qword_27ED85F00);
    v23 = v0;

    v24 = sub_2437AB9BC();
    v25 = sub_2437ABC9C();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_18();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_31();
      v42[0] = swift_slowAlloc();
      *v26 = 136315650;
      sub_243794674(&qword_27ED85550, MEMORY[0x277CC9260]);
      v27 = sub_2437ABE1C();
      v29 = sub_243793C54(v27, v28, v42);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = sub_243794304();
      v32 = sub_243793C54(v30, v31, v42);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      (*(v41 + 16))(v10, v23 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset, v40);
      v33 = sub_2437ABABC();
      v35 = sub_243793C54(v33, v34, v42);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_243789000, v24, v25, "read from %s for range %s of asset %s failed", v26, 0x20u);
      OUTLINED_FUNCTION_35();
      swift_arrayDestroy();
      v36 = OUTLINED_FUNCTION_6();
      MEMORY[0x245D3F7D0](v36);
      OUTLINED_FUNCTION_9();
      MEMORY[0x245D3F7D0]();
    }

    sub_243792810();
    OUTLINED_FUNCTION_69();
    swift_allocError();
    *v39 = 0xD000000000000027;
    *(v39 + 8) = 0x80000002437AD700;
    *(v39 + 16) = 2;
    goto LABEL_10;
  }

LABEL_12:
  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_56();
}

id sub_24378D810(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2437AB4DC();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_2437AB52C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_2437AB4BC();

    swift_willThrow();
    v9 = sub_2437AB52C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_24378D968()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = sub_2437ABBAC();
  OUTLINED_FUNCTION_78(v8);
  v9 = sub_2437944AC();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v9;
  v10[4] = v0;
  v10[5] = v1;
  swift_retain_n();
  return sub_24378EC54(0, 0, v7, &unk_2437ACC58, v10);
}

uint64_t sub_24378DA70()
{
  OUTLINED_FUNCTION_30();
  v2 = v1;
  v30 = *MEMORY[0x277D85DE8];
  v0[3] = v3;
  v0[4] = v1;
  v4 = sub_2437AB81C();
  v0[5] = v4;
  OUTLINED_FUNCTION_5(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_43();
  v8 = sub_2437AB5BC();
  v0[8] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[9] = v9;
  v11 = *(v10 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v12 = sub_2437AB6DC();
  v0[15] = v12;
  OUTLINED_FUNCTION_5(v12);
  v0[16] = v13;
  v15 = *(v14 + 64);
  v0[17] = OUTLINED_FUNCTION_43();
  v16 = sub_2437AB52C();
  v0[18] = v16;
  OUTLINED_FUNCTION_5(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_43();
  v20 = sub_2437AB91C();
  v0[21] = v20;
  OUTLINED_FUNCTION_5(v20);
  v0[22] = v21;
  v23 = *(v22 + 64);
  v0[23] = OUTLINED_FUNCTION_43();
  v24 = sub_2437AB7BC();
  v0[24] = v24;
  OUTLINED_FUNCTION_5(v24);
  v0[25] = v25;
  v27 = *(v26 + 64);
  v0[26] = OUTLINED_FUNCTION_43();
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24378DD08, v2, 0);
}

uint64_t sub_24378DD08()
{
  v61 = v0;
  v60[1] = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v57 = v0[26];
  v58 = v0[14];
  v10 = v0[4];
  v11 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  v0[27] = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  v12 = *(v1 + 16);
  v0[28] = v12;
  v0[29] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56 = v12;
  (v12)(v2, v10 + v11, v3);
  v13 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL;
  v0[30] = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL;
  (*(v6 + 16))(v4, v10 + v13, v5);
  (*(v8 + 16))(v7, v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_credential, v9);
  v14 = v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range;
  v15 = *(v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
  v0[31] = v15;
  v0[32] = *(v14 + 8);
  v16 = *(v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_applicationID);
  v17 = *(v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_applicationID + 8);

  OUTLINED_FUNCTION_54();
  sub_2437AB79C();
  sub_2437AB78C();
  if (qword_27ED85EB0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[4];
  v23 = sub_2437AB9DC();
  v0[33] = __swift_project_value_buffer(v23, qword_27ED85F00);
  v0[34] = *(v21 + 16);
  v0[35] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24 = OUTLINED_FUNCTION_42();
  v25(v24);

  v26 = sub_2437AB9BC();
  v27 = sub_2437ABC8C();

  if (os_log_type_enabled(v26, v27))
  {
    v54 = v0[21];
    v55 = v0[23];
    v59 = v27;
    v28 = v0[13];
    v30 = v0[8];
    v29 = v0[9];
    OUTLINED_FUNCTION_18();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_31();
    v60[0] = swift_slowAlloc();
    *v31 = 136315650;
    OUTLINED_FUNCTION_0();
    sub_243794674(v32, v33);
    v34 = sub_2437ABE1C();
    v36 = v35;
    log = v26;
    v37 = *(v29 + 8);
    v37(v28, v30);
    sub_243793C54(v34, v36, v60);
    OUTLINED_FUNCTION_57();

    *(v31 + 4) = v28;
    *(v31 + 12) = 2080;
    v38 = sub_243794304();
    sub_243793C54(v38, v39, v60);
    OUTLINED_FUNCTION_65();

    *(v31 + 14) = v15;
    *(v31 + 22) = 2080;
    v40 = OUTLINED_FUNCTION_53();
    v56(v40);
    OUTLINED_FUNCTION_28();
    v41 = sub_2437ABABC();
    sub_243793C54(v41, v42, v60);
    OUTLINED_FUNCTION_65();

    *(v31 + 24) = v15;
    _os_log_impl(&dword_243789000, log, v59, "[requestID = %s] start downloading range %s of asset %s", v31, 0x20u);
    OUTLINED_FUNCTION_35();
    swift_arrayDestroy();
    v43 = OUTLINED_FUNCTION_6();
    MEMORY[0x245D3F7D0](v43);
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
  }

  else
  {
    v44 = v0[13];
    v46 = v0[8];
    v45 = v0[9];

    v37 = *(v45 + 8);
    v47 = OUTLINED_FUNCTION_33();
    (v37)(v47);
  }

  v0[36] = v37;
  if (qword_27ED85EA0 != -1)
  {
    swift_once();
  }

  v48 = swift_task_alloc();
  v0[37] = v48;
  *v48 = v0;
  v48[1] = sub_24378E170;
  v49 = v0[26];
  v50 = v0[7];
  v51 = *MEMORY[0x277D85DE8];

  return AssetManager.process(request:)();
}

uint64_t sub_24378E170()
{
  OUTLINED_FUNCTION_30();
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 296);
  *v4 = *v1;
  *(v3 + 304) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_24378EB14;
  }

  else
  {
    v7 = sub_24378E2BC;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_24378E2BC()
{
  v173[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 304);
  v4 = *(v1 + 32) + *(v1 + 240);
  sub_2437AA6F4();
  if (v3)
  {
    (*(*(v1 + 48) + 8))(*(v1 + 56), *(v1 + 40));
  }

  else
  {
    v5 = *(v1 + 56);
    v6 = sub_2437AB7FC();
    if (v8)
    {
      v9 = *(v1 + 280);
      v10 = *(v1 + 264);
      (*(v1 + 272))(*(v1 + 96), *(v1 + 112), *(v1 + 64));
      v11 = sub_2437AB9BC();
      v12 = sub_2437ABC9C();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v1 + 288);
      v15 = *(v1 + 96);
      v16 = *(v1 + 64);
      v17 = *(v1 + 72);
      if (v13)
      {
        v169 = *(v1 + 288);
        v18 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v19 = swift_slowAlloc();
        v173[0] = v19;
        *v18 = 136315138;
        OUTLINED_FUNCTION_0();
        sub_243794674(v20, v21);
        sub_2437ABE1C();
        OUTLINED_FUNCTION_51();
        v22 = OUTLINED_FUNCTION_24();
        v23 = v169(v22);
        OUTLINED_FUNCTION_38(v23, v24, v25, v26, v27, v28, v29, v30, v142, v144, log);
        OUTLINED_FUNCTION_62();
        *(v18 + 4) = v15;
        OUTLINED_FUNCTION_77(&dword_243789000, v31, v32, "[requestID = %s] missing range information in download response");
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {

        v62 = OUTLINED_FUNCTION_24();
        v14(v62);
      }

      v63 = *(v1 + 240);
      v64 = *(v1 + 32);
      v65 = objc_opt_self();
      v66 = [v65 defaultManager];
      sub_2437AB4FC();
      v67 = sub_2437ABA8C();

      LODWORD(v63) = [v66 fileExistsAtPath_];

      if (v63)
      {
        v68 = *(v1 + 240);
        v69 = *(v1 + 32);
        v70 = [v65 defaultManager];
        v71 = sub_2437AB4DC();
        *(v1 + 16) = 0;
        LODWORD(v69) = [v70 removeItemAtURL:v71 error:v1 + 16];

        v72 = *(v1 + 16);
        if (v69)
        {
          v73 = v72;
        }

        else
        {
          v114 = v72;
          v115 = sub_2437AB4BC();

          swift_willThrow();
        }
      }

      v108 = *(v1 + 48);
      v0 = *(v1 + 56);
      v109 = *(v1 + 40);
      v110 = 0x80000002437AD6A0;
      sub_243792810();
      OUTLINED_FUNCTION_69();
      v111 = swift_allocError();
      v113 = 0xD00000000000002ELL;
    }

    else
    {
      v33 = v7;
      v35 = *(v1 + 272);
      v34 = *(v1 + 280);
      v36 = *(v1 + 264);
      v37 = *(v1 + 112);
      v38 = *(v1 + 64);
      if (*(v1 + 248) >= v6 && v33 >= *(v1 + 256))
      {
        v74 = *(v1 + 32);
        v35(*(v1 + 88), v37, v38);

        v75 = sub_2437AB9BC();
        v76 = sub_2437ABCAC();

        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v1 + 288);
        if (v77)
        {
          v163 = *(v1 + 224);
          v166 = *(v1 + 232);
          v159 = *(v1 + 184);
          v161 = *(v1 + 216);
          v79 = *(v1 + 88);
          v80 = *(v1 + 64);
          v145 = *(v1 + 72);
          v153 = *(v1 + 32);
          v156 = *(v1 + 168);
          OUTLINED_FUNCTION_18();
          v81 = swift_slowAlloc();
          OUTLINED_FUNCTION_31();
          v173[0] = swift_slowAlloc();
          *v81 = 136315650;
          OUTLINED_FUNCTION_0();
          sub_243794674(v82, v83);
          v84 = sub_2437ABE1C();
          loga = v75;
          v86 = v85;
          v78(v79, v80);
          sub_243793C54(v84, v86, v173);
          OUTLINED_FUNCTION_57();

          *(v81 + 4) = v79;
          *(v81 + 12) = 2080;
          OUTLINED_FUNCTION_54();
          v87 = sub_243794304();
          v95 = OUTLINED_FUNCTION_48(v87, v88, v89, v90, v91, v92, v93, v94, v142, v145, loga, v153, v156);

          *(v81 + 14) = v95;
          *(v81 + 22) = 2080;
          v96 = OUTLINED_FUNCTION_53();
          v163(v96);
          OUTLINED_FUNCTION_28();
          v97 = sub_2437ABABC();
          v105 = OUTLINED_FUNCTION_48(v97, v98, v99, v100, v101, v102, v103, v104, v143, v146, logb, v154, v157);

          *(v81 + 24) = v105;
          _os_log_impl(&dword_243789000, logc, v76, "[requestID = %s] downloaded range %s of asset %s", v81, 0x20u);
          OUTLINED_FUNCTION_35();
          swift_arrayDestroy();
          v106 = OUTLINED_FUNCTION_6();
          MEMORY[0x245D3F7D0](v106);
          OUTLINED_FUNCTION_9();
          MEMORY[0x245D3F7D0]();
        }

        else
        {
          v123 = *(v1 + 88);
          v124 = *(v1 + 64);
          v125 = *(v1 + 72);

          v126 = OUTLINED_FUNCTION_33();
          (v78)(v126);
        }

        v127 = *(v1 + 32);
        sub_24378D39C();
        v129 = v128;
        v131 = v130;
        v132 = *(v1 + 288);
        v134 = *(v1 + 200);
        v133 = *(v1 + 208);
        v147 = *(v1 + 192);
        logd = *(v1 + 184);
        v155 = *(v1 + 160);
        v158 = *(v1 + 136);
        v135 = *(v1 + 112);
        v165 = *(v1 + 96);
        v168 = *(v1 + 88);
        v136 = *(v1 + 72);
        v172 = *(v1 + 80);
        v137 = *(v1 + 64);
        v160 = *(v1 + 104);
        v162 = *(v1 + 56);
        v138 = *(v1 + 40);
        v139 = *(v1 + 24);
        (*(*(v1 + 48) + 8))();
        v140 = OUTLINED_FUNCTION_25();
        v132(v140);
        (*(v134 + 8))(v133, v147);
        *v139 = v129;
        v139[1] = v131;

        OUTLINED_FUNCTION_14();
        v141 = *MEMORY[0x277D85DE8];
        goto LABEL_25;
      }

      v35(*(v1 + 80), v37, v38);
      v40 = sub_2437AB9BC();
      v41 = sub_2437ABC9C();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v1 + 288);
      v45 = *(v1 + 72);
      v44 = *(v1 + 80);
      v46 = *(v1 + 64);
      if (v42)
      {
        v170 = *(v1 + 288);
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v48 = swift_slowAlloc();
        v173[0] = v48;
        *v47 = 136315138;
        OUTLINED_FUNCTION_0();
        sub_243794674(v49, v50);
        sub_2437ABE1C();
        OUTLINED_FUNCTION_51();
        v51 = OUTLINED_FUNCTION_24();
        v52 = v170(v51);
        OUTLINED_FUNCTION_38(v52, v53, v54, v55, v56, v57, v58, v59, v142, v144, log);
        OUTLINED_FUNCTION_62();
        *(v47 + 4) = v44;
        OUTLINED_FUNCTION_77(&dword_243789000, v60, v61, "[requestID = %s] downloaded range is smaller than needed range");
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {

        v107 = OUTLINED_FUNCTION_24();
        v43(v107);
      }

      v108 = *(v1 + 48);
      v0 = *(v1 + 56);
      v109 = *(v1 + 40);
      v110 = 0x80000002437AD6D0;
      sub_243792810();
      OUTLINED_FUNCTION_69();
      v111 = swift_allocError();
      v113 = 0xD00000000000002DLL;
    }

    *v112 = v113;
    *(v112 + 8) = v110;
    *(v112 + 16) = 2;
    v3 = v111;
    swift_willThrow();
    v116 = *(v108 + 8);
    v4 = v108 + 8;
    v116(v0, v109);
  }

  OUTLINED_FUNCTION_46();
  v117 = *(v1 + 96);
  v171 = *(v1 + 80);
  v164 = *(v1 + 88);
  v167 = *(v1 + 56);
  v118 = (*(v1 + 72) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v119(v2, *(v1 + 64));
  (*(v4 + 8))(v0, v3);

  OUTLINED_FUNCTION_14();
  v120 = *MEMORY[0x277D85DE8];
LABEL_25:
  OUTLINED_FUNCTION_75();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24378EB14()
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = v3[38];
  OUTLINED_FUNCTION_46();
  v6 = v3[12];
  v12 = v3[11];
  v13 = v3[10];
  v14 = v3[7];
  v7 = (v3[9] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v3[8]);
  (*(v1 + 8))(v0, v2);

  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_24378EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2437945D8(a3, v23 - v10, &qword_27ED85508, &qword_2437AC820);
  v12 = sub_2437ABBAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_243794788(v11, &qword_27ED85508, &qword_2437AC820);
  }

  else
  {
    sub_2437ABB9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2437ABB3C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2437ABACC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24378EEDC()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_2437AB91C();
  v1[8] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_43();
  v7 = sub_2437AB5BC();
  v1[11] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[12] = v8;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24378F00C, v0, 0);
}

uint64_t sub_24378F00C()
{
  v239 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState;
  v3 = *(v1 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState);
  v0[18] = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_27ED85EB0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
        v185 = v0[7];
      }

      v4 = v0[14];
      v5 = v0[11];
      v6 = v0[12];
      v7 = v0[6];
      v8 = sub_2437AB9DC();
      __swift_project_value_buffer(v8, qword_27ED85F00);
      v9 = *(v6 + 16);
      v10 = OUTLINED_FUNCTION_70();
      v9(v10);

      v11 = sub_2437AB9BC();
      v12 = sub_2437ABCAC();

      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[14];
      v16 = v0[11];
      v15 = v0[12];
      if (v13)
      {
        v216 = v0[9];
        v223 = v0[8];
        v229 = v0[10];
        v198 = v0[7];
        OUTLINED_FUNCTION_18();
        v17 = swift_slowAlloc();
        OUTLINED_FUNCTION_31();
        v238 = swift_slowAlloc();
        *v17 = 136315650;
        OUTLINED_FUNCTION_0();
        sub_243794674(v18, v19);
        v20 = sub_2437ABE1C();
        HIDWORD(v206) = v12;
        v22 = v21;
        v23 = *(v15 + 8);
        v24 = OUTLINED_FUNCTION_40();
        v25(v24);
        v26 = sub_243793C54(v20, v22, &v238);

        *(v17 + 4) = v26;
        *(v17 + 12) = 2080;
        v27 = *(v198 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
        v28 = *(v198 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range + 8);
        v29 = sub_243794304();
        v37 = OUTLINED_FUNCTION_48(v29, v30, v31, v32, v33, v34, v35, v36, v189, v198, v206, v216, v223);

        *(v17 + 14) = v37;
        *(v17 + 22) = 2080;
        v38 = *(v217 + 16);
        v39 = OUTLINED_FUNCTION_53();
        v40(v39);
        OUTLINED_FUNCTION_28();
        v41 = sub_2437ABABC();
        v49 = OUTLINED_FUNCTION_48(v41, v42, v43, v44, v45, v46, v47, v48, v190, v199, v207, v217, v224);

        *(v17 + 24) = v49;
        _os_log_impl(&dword_243789000, v11, v214, "[requestID = %s] range %s of asset %s available in cache", v17, 0x20u);
        OUTLINED_FUNCTION_35();
        swift_arrayDestroy();
        v50 = OUTLINED_FUNCTION_6();
        MEMORY[0x245D3F7D0](v50);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {

        v161 = *(v15 + 8);
        v162 = OUTLINED_FUNCTION_40();
        v163(v162);
      }

      v164 = v0[7];
      sub_24378D39C();
      v172 = v0[16];
      v171 = v0[17];
      v174 = v0[14];
      v173 = v0[15];
      v175 = v0[13];
      v176 = v0[10];

      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_75();

      __asm { BRAA            X3, X16 }
    }

    v109 = qword_27ED85EB0;

    if (v109 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
      v187 = v0[7];
    }

    v110 = v0[16];
    v112 = v0[11];
    v111 = v0[12];
    v113 = v0[6];
    v114 = sub_2437AB9DC();
    v0[19] = __swift_project_value_buffer(v114, qword_27ED85F00);
    v0[20] = *(v111 + 16);
    v0[21] = (v111 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v115 = OUTLINED_FUNCTION_70();
    v116(v115);

    v117 = sub_2437AB9BC();
    v118 = sub_2437ABCAC();

    v119 = os_log_type_enabled(v117, v118);
    v120 = v0[16];
    v122 = v0[11];
    v121 = v0[12];
    if (v119)
    {
      v235 = v0[8];
      v236 = v0[10];
      v231 = v0[7];
      v233 = v0[9];
      OUTLINED_FUNCTION_18();
      v237 = v118;
      v123 = swift_slowAlloc();
      OUTLINED_FUNCTION_31();
      v238 = swift_slowAlloc();
      *v123 = 136315650;
      OUTLINED_FUNCTION_0();
      sub_243794674(v124, v125);
      sub_2437ABE1C();
      OUTLINED_FUNCTION_51();
      v126 = *(v121 + 8);
      v127 = OUTLINED_FUNCTION_32();
      v128 = v126(v127);
      OUTLINED_FUNCTION_38(v128, v129, v130, v131, v132, v133, v134, v135, v189, v197, v206);
      v136 = OUTLINED_FUNCTION_62();
      *(v123 + 4) = v120;
      *(v123 + 12) = 2080;
      v144 = OUTLINED_FUNCTION_80(v136, v137, v138, v139, v140, v141, v142, v143, v194, v203, v211, v215, v222, v231);
      OUTLINED_FUNCTION_48(v144, v145, v146, v147, v148, v149, v150, v151, v195, v204, v212, v220, v227);
      OUTLINED_FUNCTION_59();
      *(v123 + 14) = v2;
      *(v123 + 22) = 2080;
      (*(v233 + 16))(v236, v122 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset, v235);
      OUTLINED_FUNCTION_70();
      v152 = sub_2437ABABC();
      OUTLINED_FUNCTION_48(v152, v153, v154, v155, v156, v157, v158, v159, v196, v205, v213, v221, v228);
      OUTLINED_FUNCTION_59();
      *(v123 + 24) = v2;
      _os_log_impl(&dword_243789000, v117, v237, "[requestID = %s] downloading range %s of asset %s", v123, 0x20u);
      OUTLINED_FUNCTION_35();
      swift_arrayDestroy();
      v160 = OUTLINED_FUNCTION_6();
      MEMORY[0x245D3F7D0](v160);
      OUTLINED_FUNCTION_9();
      MEMORY[0x245D3F7D0]();
    }

    else
    {

      v126 = *(v121 + 8);
      v168 = OUTLINED_FUNCTION_32();
      v126(v168);
    }

    v0[22] = v126;
    v169 = *(MEMORY[0x277D857C8] + 4);
    v170 = swift_task_alloc();
    v0[23] = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    *v170 = v0;
    v170[1] = sub_24378FA70;
  }

  else
  {
    if (qword_27ED85EB0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
      v186 = v0[7];
    }

    v51 = v0[17];
    v53 = v0[11];
    v52 = v0[12];
    v54 = v0[6];
    v55 = sub_2437AB9DC();
    __swift_project_value_buffer(v55, qword_27ED85F00);
    v56 = *(v52 + 16);
    v57 = OUTLINED_FUNCTION_40();
    v58(v57);

    v59 = sub_2437AB9BC();
    LOBYTE(v54) = sub_2437ABCAC();

    v60 = os_log_type_enabled(v59, v54);
    v61 = v0[17];
    v63 = v0[11];
    v62 = v0[12];
    if (v60)
    {
      v64 = v0[9];
      v232 = v0[8];
      v234 = v0[10];
      v230 = v0[7];
      OUTLINED_FUNCTION_18();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_31();
      v238 = swift_slowAlloc();
      *v65 = 136315650;
      OUTLINED_FUNCTION_0();
      sub_243794674(v66, v67);
      sub_2437ABE1C();
      OUTLINED_FUNCTION_51();
      v68 = *(v62 + 8);
      v69 = OUTLINED_FUNCTION_32();
      v71 = v70(v69);
      OUTLINED_FUNCTION_38(v71, v72, v73, v74, v75, v76, v77, v78, v189, v197, v206);
      v79 = OUTLINED_FUNCTION_62();
      *(v65 + 4) = v61;
      *(v65 + 12) = 2080;
      v87 = OUTLINED_FUNCTION_80(v79, v80, v81, v82, v83, v84, v85, v86, v191, v200, v208, v215, v222, v230);
      OUTLINED_FUNCTION_48(v87, v88, v89, v90, v91, v92, v93, v94, v192, v201, v209, v218, v225);
      OUTLINED_FUNCTION_59();
      *(v65 + 14) = v2;
      *(v65 + 22) = 2080;
      v95 = *(v64 + 16);
      v96 = OUTLINED_FUNCTION_53();
      v97(v96);
      OUTLINED_FUNCTION_28();
      v98 = sub_2437ABABC();
      OUTLINED_FUNCTION_48(v98, v99, v100, v101, v102, v103, v104, v105, v193, v202, v210, v219, v226);
      OUTLINED_FUNCTION_59();
      *(v65 + 24) = v2;
      OUTLINED_FUNCTION_79(&dword_243789000, v106, v107, "[requestID = %s] ready to download range %s of asset (%s");
      OUTLINED_FUNCTION_35();
      swift_arrayDestroy();
      v108 = OUTLINED_FUNCTION_6();
      MEMORY[0x245D3F7D0](v108);
      OUTLINED_FUNCTION_9();
      MEMORY[0x245D3F7D0]();
    }

    else
    {

      v165 = *(v62 + 8);
      v166 = OUTLINED_FUNCTION_32();
      v167(v166);
    }

    v179 = v0[7];
    v180 = sub_24378D968();
    v0[25] = v180;
    v181 = *(v1 + v2);
    *(v1 + v2) = v180;

    sub_2437942F4(v181);
    v182 = *(MEMORY[0x277D857C8] + 4);
    v183 = swift_task_alloc();
    v0[26] = v183;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    *v183 = v0;
    v183[1] = sub_24378FE78;
  }

  OUTLINED_FUNCTION_75();

  return MEMORY[0x282200430]();
}

uint64_t sub_24378FA70()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 184);
  *v4 = *v1;
  *(v3 + 192) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_24379004C;
  }

  else
  {
    v7 = sub_24378FB90;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24378FB90()
{
  v50 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  (*(v0 + 160))(*(v0 + 120), *(v0 + 48), *(v0 + 88));

  v6 = sub_2437AB9BC();
  v7 = sub_2437ABCAC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 176);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  if (v8)
  {
    v14 = *(v0 + 72);
    v45 = *(v0 + 64);
    v46 = *(v0 + 80);
    v42 = *(v0 + 56);
    OUTLINED_FUNCTION_18();
    v47 = v15;
    v48 = v4;
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_31();
    v49 = swift_slowAlloc();
    *v16 = 136315650;
    OUTLINED_FUNCTION_0();
    sub_243794674(v17, v18);
    v43 = v7;
    v19 = sub_2437ABE1C();
    log = v6;
    v20 = v5;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_33();
    v9(v23);
    v24 = sub_243793C54(v19, v22, &v49);
    v5 = v20;

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = *(v42 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
    v26 = *(v42 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range + 8);
    v27 = sub_243794304();
    sub_243793C54(v27, v28, &v49);
    OUTLINED_FUNCTION_65();

    *(v16 + 14) = v12;
    *(v16 + 22) = 2080;
    (*(v14 + 16))(v46, v42 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset, v45);
    OUTLINED_FUNCTION_33();
    v29 = sub_2437ABABC();
    v31 = sub_243793C54(v29, v30, &v49);

    *(v16 + 24) = v31;
    _os_log_impl(&dword_243789000, log, v43, "[requestID = %s] downloaded range %s of asset %s", v16, 0x20u);
    OUTLINED_FUNCTION_35();
    swift_arrayDestroy();
    v32 = OUTLINED_FUNCTION_6();
    MEMORY[0x245D3F7D0](v32);
    v4 = v48;
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
    sub_2437942F4(v47);
  }

  else
  {
    sub_2437942F4(*(v0 + 144));

    v33 = OUTLINED_FUNCTION_33();
    v9(v33);
  }

  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v37 = *(v0 + 112);
  v36 = *(v0 + 120);
  v38 = *(v0 + 104);
  v39 = *(v0 + 80);

  OUTLINED_FUNCTION_73();

  return v40(v4, v5);
}

uint64_t sub_24378FE78()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 208);
  *v4 = *v1;
  *(v3 + 216) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_2437900E4;
  }

  else
  {
    v7 = sub_24378FF98;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_24378FF98()
{
  v1 = v0[25];

  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v9 = v0[10];

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_61();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_24379004C()
{
  OUTLINED_FUNCTION_71();
  sub_2437942F4(*(v0 + 144));
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_76();

  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2437900E4()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 200);

  v2 = *(v0 + 216);
  OUTLINED_FUNCTION_76();

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_24379017C()
{
  v1 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2437AB52C();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  v31 = objc_opt_self();
  v8 = [v31 defaultManager];
  v9 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL;
  v30 = *(v5 + 16);
  v30(v0, v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL, v2);
  sub_2437AB4FC();
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_34();
  v10(v11);
  OUTLINED_FUNCTION_54();
  v12 = sub_2437ABA8C();

  v13 = [v8 fileExistsAtPath_];

  if (v13)
  {
    v14 = [v31 defaultManager];
    v15 = v9;
    v30(v0, v0 + v9, v2);
    v16 = sub_2437AB4DC();
    v17 = OUTLINED_FUNCTION_34();
    v10(v17);
    v32[0] = 0;
    v18 = [v14 removeItemAtURL:v16 error:v32];

    v19 = v32[0];
    if (!v18)
    {
      OUTLINED_FUNCTION_65();
      v20 = sub_2437AB4BC();

      swift_willThrow();
    }

    v9 = v15;
  }

  v21 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  v22 = sub_2437AB91C();
  OUTLINED_FUNCTION_7(v22);
  (*(v23 + 8))(v1 + v21);
  v24 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_credential;
  v25 = sub_2437AB6DC();
  OUTLINED_FUNCTION_7(v25);
  (*(v26 + 8))(v1 + v24);
  v27 = *(v1 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_applicationID + 8);

  (v10)(v1 + v9, v2);
  sub_2437942F4(*(v1 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState));
  swift_defaultActor_destroy();
  v28 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_243790468()
{
  sub_24379017C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2437904B8()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_25();
  v4 = sub_2437941C4(v2, v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v4);
}

uint64_t sub_24379052C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AssetStreamHandle.range.getter()
{
  result = _s11CloudAssets17AssetStreamHandleV4sizeSivg_0();
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t AssetStreamHandle.inputStream(for:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2437AB6DC();
  v1[6] = v5;
  OUTLINED_FUNCTION_5(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v8 = sub_2437AB91C();
  v1[10] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[11] = v9;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v11 = type metadata accessor for AssetStreamHandle(0);
  v1[14] = v11;
  OUTLINED_FUNCTION_5(v11);
  v1[15] = v12;
  v1[16] = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v14);
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v17 = sub_2437AB5BC();
  v1[19] = v17;
  OUTLINED_FUNCTION_5(v17);
  v1[20] = v18;
  v1[21] = *(v19 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85510, &qword_2437AC828);
  v1[24] = v20;
  OUTLINED_FUNCTION_5(v20);
  v1[25] = v21;
  v23 = *(v22 + 64);
  v1[26] = OUTLINED_FUNCTION_43();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  v1[27] = v24;
  OUTLINED_FUNCTION_5(v24);
  v1[28] = v25;
  v1[29] = *(v26 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_243790848()
{
  v40 = v0[31];
  v43 = v0[30];
  v33 = v0[29];
  v36 = v0[28];
  v1 = v0[26];
  v42 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v37 = v0[23];
  v47 = v0[22];
  v30 = v0[21];
  v35 = v0[20];
  v41 = v0[19];
  v29 = v0[18];
  v46 = v0[17];
  v4 = v0[14];
  v23 = v0[15];
  v24 = v0[16];
  v45 = v0[13];
  v26 = v0[12];
  v5 = v0[11];
  v38 = v0[10];
  v44 = v0[9];
  v25 = v0[8];
  v34 = v0[7];
  v39 = v0[6];
  v6 = v0[5];
  v32 = v0[4];
  v7 = v0[2];
  v31 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x277D858A0], v3);
  sub_2437ABBFC();
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 20);
  v9 = (v6 + *(v4 + 28));
  v27 = v9[1];
  v28 = *v9;

  sub_2437AB5AC();
  v10 = sub_2437ABBAC();
  OUTLINED_FUNCTION_78(v10);
  sub_2437928EC(v6, v46);
  (*(v5 + 16))(v45, v6, v38);
  (*(v34 + 16))(v44, v6 + v8, v39);
  (*(v35 + 16))(v47, v37, v41);
  (*(v36 + 16))(v43, v40, v42);
  v11 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v12 = (v24 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v5 + 80) + v12 + 16) & ~*(v5 + 80);
  v14 = (v26 + *(v34 + 80) + v13) & ~*(v34 + 80);
  v15 = (v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v35 + 80) + v15 + 16) & ~*(v35 + 80);
  v17 = (v30 + *(v36 + 80) + v16) & ~*(v36 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_243792E2C(v46, v18 + v11);
  v19 = (v18 + v12);
  *v19 = v31;
  v19[1] = v32;
  (*(v5 + 32))(v18 + v13, v45, v38);
  (*(v34 + 32))(v18 + v14, v44, v39);
  v20 = (v18 + v15);
  *v20 = v28;
  v20[1] = v27;
  (*(v35 + 32))(v18 + v16, v47, v41);
  (*(v36 + 32))(v18 + v17, v43, v42);
  sub_243791EA0(0, 0, v29, &unk_2437AC840, v18);
  sub_2437ABC0C();
  (*(v35 + 8))(v37, v41);
  (*(v36 + 8))(v40, v42);

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t sub_243790CA0()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 152) = v24;
  *(v0 + 160) = v25;
  *(v0 + 136) = v23;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  *(v0 + 104) = v3;
  *(v0 + 112) = v4;
  *(v0 + 96) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85558, &qword_2437ACC78);
  *(v0 + 168) = v6;
  OUTLINED_FUNCTION_5(v6);
  *(v0 + 176) = v7;
  v9 = *(v8 + 64);
  *(v0 + 184) = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB6DC();
  *(v0 + 192) = v10;
  OUTLINED_FUNCTION_5(v10);
  *(v0 + 200) = v11;
  v13 = *(v12 + 64);
  *(v0 + 208) = OUTLINED_FUNCTION_43();
  v14 = sub_2437AB91C();
  *(v0 + 216) = v14;
  OUTLINED_FUNCTION_5(v14);
  *(v0 + 224) = v15;
  v17 = *(v16 + 64) + 15;
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_243790E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[13];
  v5 = v4 - v4 % 5242880;
  if (__OFSUB__(v4, v4 % 5242880))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = v3[14];
  v7 = v6 % 5242880;
  if (v6 % 5242880)
  {
    v8 = v6 + 5242880;
    if (__OFADD__(v6, 5242880))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = v8 - v7;
    if (__OFSUB__(v8, v7))
    {
LABEL_34:
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v10 = v3[12];
    a1 = _s11CloudAssets17AssetStreamHandleV4sizeSivg_0();
    if (a1 >= v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = a1;
    }
  }

  if (v6 < v5)
  {
    goto LABEL_31;
  }

  if (v5 < v6)
  {
    a1 = sub_243793B54(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = a1;
    while (1)
    {
      v12 = v5 + 5242880;
      if (__OFADD__(v5, 5242880))
      {
        break;
      }

      if (v12 >= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v5 + 5242880;
      }

      if (v13 < v5)
      {
        goto LABEL_29;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        a1 = sub_243793B54((v14 > 1), v15 + 1, 1, v11);
        v11 = a1;
      }

      *(v11 + 16) = v16;
      v17 = v11 + 16 * v15;
      *(v17 + 32) = v5;
      *(v17 + 40) = v13;
      v5 += 5242880;
      if (v12 >= v6)
      {
        v21 = v11 + 16;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90] + 16;
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (!v16)
  {

    v18 = v3[20];
    v3[11] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
    OUTLINED_FUNCTION_55();
    sub_2437ABC2C();
    OUTLINED_FUNCTION_23();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_61();

    __asm { BRAA            X1, X16 }
  }

LABEL_24:
  v3[33] = v11;
  v3[34] = v16;
  v3[32] = v21;
  v22 = v3[12];
  a1 = type metadata accessor for AssetStreamHandle(0);
  a2 = *(v22 + *(a1 + 32));
  v3[36] = 0;
  v3[37] = 0;
  v3[35] = a2;
  if (!*(v11 + 16))
  {
    goto LABEL_32;
  }

  v3[38] = *(v11 + 32);
  OUTLINED_FUNCTION_16(*(v11 + 40));
  OUTLINED_FUNCTION_61();

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_243791050()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];
  v0[40] = sub_2437904B8();
  v4 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2437910B4()
{
  v52 = v0;
  v1 = v0[40];
  if (!v1)
  {
    v8 = v0[38];
    v7 = v0[39];
    v50 = v0[36];
    v9 = v0[25];
    v10 = v0[26];
    v1 = v0[24];
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[16];
    (*(v0[28] + 16))(v0[31], v0[15], v0[27]);
    (*(v9 + 16))(v10, v13, v1);
    v14 = type metadata accessor for AssetStreamHandle.RangeReader(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_57();

    sub_24378CE18();
    if (v50)
    {
      v17 = v0[33];

      if (_MergedGlobals != -1)
      {
        OUTLINED_FUNCTION_26();
      }

      v18 = v0[30];
      v19 = v0[27];
      v20 = v0[28];
      v21 = v0[15];
      v22 = sub_2437AB9DC();
      __swift_project_value_buffer(v22, qword_27ED85EE8);
      v23 = *(v20 + 16);
      v24 = OUTLINED_FUNCTION_40();
      v23(v24);
      v25 = v50;
      v26 = sub_2437AB9BC();
      v27 = sub_2437ABC9C();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[30];
      if (v28)
      {
        v30 = v0[28];
        v31 = v0[29];
        v32 = v0[27];
        v46 = v0[13];
        v47 = v0[14];
        OUTLINED_FUNCTION_18();
        v49 = v27;
        v33 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v51[0] = swift_slowAlloc();
        *v33 = 136315650;
        (v23)(v31, v29, v32);
        sub_2437ABABC();
        v34 = OUTLINED_FUNCTION_50();
        v35(v34);
        sub_243793C54(v23, v31, v51);
        OUTLINED_FUNCTION_82();
        *(v33 + 4) = v23;
        *(v33 + 12) = 2080;
        v36 = sub_243794304();
        sub_243793C54(v36, v37, v51);
        OUTLINED_FUNCTION_82();
        *(v33 + 14) = v23;
        *(v33 + 22) = 2112;
        v38 = v50;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 24) = v39;
        *v48 = v39;
        _os_log_impl(&dword_243789000, v26, v49, "failed to stream data for %s in range %s due to error %@", v33, 0x20u);
        sub_243794788(v48, &qword_27ED85560, &qword_2437ACC80);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {
        v40 = v0[27];
        v41 = v0[28];

        (*(v41 + 8))(v29, v40);
      }

      v42 = v0[20];
      v0[9] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
      OUTLINED_FUNCTION_55();
      sub_2437ABC2C();
      OUTLINED_FUNCTION_23();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_74();

      __asm { BRAA            X1, X16 }
    }
  }

  v0[41] = v1;
  v2 = v0[35];
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_243791468()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];
  v0[42] = sub_2437904B8();
  v4 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2437914CC()
{
  OUTLINED_FUNCTION_15();
  if (!v0[42])
  {
    v2 = v0[35];
    v1 = sub_2437915C8;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v4 = v0[38];
  v5 = v0[13];
  if (v4 > v5)
  {
    v5 = v0[38];
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  v0[43] = v7;
  if (v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v0[39];
  if (v8 >= v0[14])
  {
    v8 = v0[14];
  }

  v6 = __OFSUB__(v8, v4);
  v9 = v8 - v4;
  v0[44] = v9;
  if (v6)
  {
    goto LABEL_16;
  }

  if (v9 < v7)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_10(v10);

  return sub_24378EEDC();
}

uint64_t sub_2437915C8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[35];
  swift_beginAccess();

  v5 = *(v4 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 112);
  v0[10] = v6;
  *(v4 + 112) = 0x8000000000000000;
  v7 = OUTLINED_FUNCTION_25();
  v9 = sub_2437941C4(v7, v8);
  if (__OFADD__(*(v6 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85568, &qword_2437ACC88);
  v9 = sub_2437ABD8C();
  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = v0[10];
    v17 = v0[41];
    if (v13)
    {
      v18 = v16[7];
      v19 = *(v18 + 8 * v12);
      *(v18 + 8 * v12) = v17;

      goto LABEL_12;
    }

    v20 = v16[6];
    v21 = *(v0 + 19);
    v16[(v12 >> 6) + 8] |= 1 << v12;
    *(v20 + 16 * v12) = v21;
    *(v16[7] + 8 * v12) = v17;
    v22 = v16[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      v16[2] = v24;
LABEL_12:
      *(v0[35] + 112) = v16;
      swift_endAccess();
      v9 = OUTLINED_FUNCTION_11();

      return MEMORY[0x2822009F8](v9, v10, v11);
    }

LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v14 = v0[10];
  v9 = sub_2437941C4(v0[38], v0[39]);
  if ((v13 & 1) == (v10 & 1))
  {
    v12 = v9;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);

  return sub_2437ABE5C();
}

void sub_243791798()
{
  v2 = v0[38];
  v3 = v0[13];
  if (v2 > v3)
  {
    v3 = v0[38];
  }

  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  v0[43] = v5;
  if (v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v0[39];
  if (v6 >= v0[14])
  {
    v6 = v0[14];
  }

  v4 = __OFSUB__(v6, v2);
  v7 = v6 - v2;
  v0[44] = v7;
  if (v4)
  {
    goto LABEL_12;
  }

  if (v7 < v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_15();
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_10(v8);

  sub_24378EEDC();
}

uint64_t sub_243791850()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v6 = *(v5 + 360);
  *v4 = *v1;
  v3[46] = v7;
  v3[47] = v8;
  v3[48] = v0;

  if (v0)
  {
    v9 = v3[33];

    v10 = sub_243791BB4;
  }

  else
  {
    v10 = sub_243791960;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_243791960()
{
  v1 = *(v0 + 376);
  switch(v1 >> 62)
  {
    case 1uLL:
      v13 = *(v0 + 368);
      v14 = *(v0 + 372);
      v5 = __OFSUB__(v14, v13);
      LODWORD(v2) = v14 - v13;
      if (v5)
      {
        goto LABEL_21;
      }

      v2 = v2;
LABEL_10:
      if (v2 >= *(v0 + 352))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 2uLL:
      v3 = *(*(v0 + 368) + 16);
      v4 = *(*(v0 + 368) + 24);
      v5 = __OFSUB__(v4, v3);
      v2 = v4 - v3;
      if (!v5)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (*(v0 + 352) <= 0)
      {
LABEL_11:
        v15 = *(v0 + 368);
        v16 = *(v0 + 344);
        v17 = *(v0 + 328);
        v8 = *(v0 + 176);
        v18 = *(v0 + 184);
        v19 = *(v0 + 160);
        v20 = *(v0 + 168);
        *(v0 + 40) = sub_2437AB59C();
        *(v0 + 48) = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
      }

      else
      {
LABEL_7:
        v6 = *(v0 + 328);
        v8 = *(v0 + 176);
        v7 = *(v0 + 184);
        v9 = *(v0 + 160);
        v10 = *(v0 + 168);
        *(v0 + 56) = *(v0 + 368);
        *(v0 + 64) = v1;
        v11 = OUTLINED_FUNCTION_25();
        sub_243792760(v11, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
      }

      sub_2437ABC1C();

      v22 = OUTLINED_FUNCTION_25();
      sub_2437927B8(v22, v23);
      v24 = *(v8 + 8);
      v25 = OUTLINED_FUNCTION_54();
      v27 = v26(v25);
      v28 = *(v0 + 296) + 1;
      if (v28 == *(v0 + 272))
      {
        v29 = *(v0 + 264);

        v30 = *(v0 + 160);
        *(v0 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
        OUTLINED_FUNCTION_55();
        sub_2437ABC2C();
        OUTLINED_FUNCTION_23();

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_61();

        __asm { BRAA            X1, X16 }
      }

      *(v0 + 288) = *(v0 + 384);
      *(v0 + 296) = v28;
      if (v28 >= **(v0 + 256))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        JUMPOUT(0x243791BA4);
      }

      v33 = *(v0 + 280);
      v34 = *(v0 + 264) + 16 * v28;
      *(v0 + 304) = *(v34 + 32);
      v35 = *(v34 + 40);
      OUTLINED_FUNCTION_16(v27, v33);
      OUTLINED_FUNCTION_61();

      return MEMORY[0x2822009F8](v36, v37, v38);
    case 3uLL:
      goto LABEL_6;
    default:
      v2 = BYTE6(v1);
      goto LABEL_10;
  }
}

void sub_243791BB4()
{
  v1 = v0[41];

  v2 = v0[48];
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_26();
  }

  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[15];
  v7 = sub_2437AB9DC();
  v8 = __swift_project_value_buffer(v7, qword_27ED85EE8);
  v9 = *(v5 + 16);
  v10 = OUTLINED_FUNCTION_40();
  v9(v10);
  v11 = v2;
  v12 = sub_2437AB9BC();
  v13 = sub_2437ABC9C();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[30];
  if (v14)
  {
    v35 = v2;
    v16 = v0[28];
    v17 = v0[29];
    v18 = v0[27];
    v31 = v0[13];
    v32 = v0[14];
    OUTLINED_FUNCTION_18();
    v34 = v13;
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v19 = 136315650;
    (v9)(v17, v15, v18);
    sub_2437ABABC();
    v20 = OUTLINED_FUNCTION_50();
    v21(v20);
    sub_243793C54(v17, v8, &v36);
    OUTLINED_FUNCTION_82();
    *(v19 + 4) = v17;
    *(v19 + 12) = 2080;
    v22 = sub_243794304();
    sub_243793C54(v22, v23, &v36);
    OUTLINED_FUNCTION_82();
    *(v19 + 14) = v17;
    v2 = v35;
    *(v19 + 22) = 2112;
    v24 = v35;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v25;
    *v33 = v25;
    _os_log_impl(&dword_243789000, v12, v34, "failed to stream data for %s in range %s due to error %@", v19, 0x20u);
    sub_243794788(v33, &qword_27ED85560, &qword_2437ACC80);
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
  }

  else
  {
    v27 = v0[27];
    v26 = v0[28];

    (*(v26 + 8))(v15, v27);
  }

  v28 = v0[20];
  v0[9] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  sub_2437ABC2C();
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_243791EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2437945D8(a3, v26 - v11, &qword_27ED85508, &qword_2437AC820);
  v13 = sub_2437ABBAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_243794788(v12, &qword_27ED85508, &qword_2437AC820);
  }

  else
  {
    sub_2437ABB9C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2437ABB3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2437ABACC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2437921A4()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v1[1] = sub_243792248;

  return AssetStreamHandle.inputStream(for:)();
}

uint64_t sub_243792248()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_243792328()
{
  OUTLINED_FUNCTION_71();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2437923E4;

  return StreamHandle.readAll(in:)();
}

uint64_t sub_2437923E4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;

  OUTLINED_FUNCTION_73();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_25();
  }

  return v7(v6);
}

id sub_2437924DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2437AB4DC();
  if (a2)
  {
    v7 = sub_2437ABA2C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 initWithURL:v6 options:v7];

  v9 = sub_2437AB52C();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
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

unint64_t sub_243792644()
{
  result = qword_27ED85498;
  if (!qword_27ED85498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85490, &unk_2437AC7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85498);
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

uint64_t sub_243792728(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243792760(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2437927B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_243792810()
{
  result = qword_27ED854A8;
  if (!qword_27ED854A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED854A8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2437928EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetStreamHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243792950()
{
  result = qword_27ED854C8;
  if (!qword_27ED854C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED854C0, &qword_2437AC800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED854C8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2437929F8()
{
  result = qword_27ED854D8;
  if (!qword_27ED854D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED854D8);
  }

  return result;
}

uint64_t sub_243792A4C(uint64_t a1)
{
  v2 = type metadata accessor for AssetStreamHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243792AD0()
{
  v1 = (type metadata accessor for AssetStreamHandle(0) - 8);
  v39 = *(*v1 + 80);
  v41 = (v39 + 32) & ~v39;
  v2 = (*(*v1 + 64) + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = sub_2437AB91C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v2 + v7 + 16) & ~v7;
  v43 = v4;
  v44 = v8;
  v10 = *(v9 + 64);
  v36 = sub_2437AB6DC();
  OUTLINED_FUNCTION_1(v36);
  v12 = v11;
  v13 = *(v11 + 80);
  v45 = (v8 + v10 + v13) & ~v13;
  v15 = (*(v14 + 64) + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v15;
  v46 = sub_2437AB5BC();
  OUTLINED_FUNCTION_1(v46);
  v42 = v16;
  v17 = *(v16 + 80);
  v18 = (v15 + v17 + 16) & ~v17;
  v20 = *(v19 + 64);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  OUTLINED_FUNCTION_1(v38);
  v22 = v21;
  v24 = v23;
  v25 = *(v22 + 80);
  v34 = (v18 + v20 + v25) & ~v25;
  v35 = *(v24 + 64);
  v40 = v39 | v7 | v13 | v17 | v25;
  v26 = *(v0 + 16);
  swift_unknownObjectRelease();
  v27 = *(v6 + 8);
  v27(v0 + v41, v43);
  v28 = *(v12 + 8);
  v28(v0 + v41 + v1[7], v36);
  v29 = *(v0 + v41 + v1[8] + 8);

  v30 = *(v0 + v41 + v1[9] + 8);

  v31 = *(v0 + v41 + v1[10]);

  v27(v0 + v44, v43);
  v28(v0 + v45, v36);
  v32 = *(v0 + v37 + 8);

  (*(v42 + 8))(v0 + v18, v46);
  (*(v22 + 8))(v0 + v34, v38);

  return MEMORY[0x2821FE8E8](v0, v34 + v35, v40 | 7);
}

uint64_t sub_243792E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetStreamHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243792E90()
{
  v2 = type metadata accessor for AssetStreamHandle(0);
  OUTLINED_FUNCTION_5(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2437AB91C();
  OUTLINED_FUNCTION_5(v6);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_2437AB6DC();
  OUTLINED_FUNCTION_5(v11);
  v14 = (*(v13 + 64) + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = sub_2437AB5BC();
  OUTLINED_FUNCTION_5(v15);
  v17 = (v14 + *(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = *(v18 + 64);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  OUTLINED_FUNCTION_17(v20);
  v22 = (v17 + v19 + *(v21 + 80)) & ~*(v21 + 80);
  v23 = v0 + v5;
  v24 = *(v0 + v5);
  v25 = *(v23 + 8);
  v26 = v0 + v14;
  v27 = *(v0 + v14);
  v28 = *(v26 + 8);
  v29 = swift_task_alloc();
  *(v1 + 16) = v29;
  *v29 = v1;
  v29[1] = sub_243792248;

  return sub_243790CA0();
}

unint64_t sub_243793140()
{
  result = qword_27ED85520;
  if (!qword_27ED85520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85520);
  }

  return result;
}

unint64_t sub_243793198()
{
  result = qword_27ED85528;
  if (!qword_27ED85528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85528);
  }

  return result;
}

unint64_t sub_2437931F0()
{
  result = qword_27ED85530;
  if (!qword_27ED85530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85530);
  }

  return result;
}

uint64_t sub_243793258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37();
  v6 = sub_2437AB91C();
  v7 = OUTLINED_FUNCTION_44(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_2437AB6DC();
  v12 = OUTLINED_FUNCTION_44(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_243793358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37();
  v8 = sub_2437AB91C();
  v9 = OUTLINED_FUNCTION_44(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_2437AB6DC();
    result = OUTLINED_FUNCTION_44(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_243793440()
{
  result = sub_2437AB91C();
  if (v1 <= 0x3F)
  {
    result = sub_2437AB6DC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AssetStreamHandle.RangeReadersCache();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2437934F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243793538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetStreamHandle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437936FCLL);
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

uint64_t sub_24379374C()
{
  result = sub_2437AB91C();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_2437AB6DC();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_2437AB52C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11CloudAssets17AssetStreamHandleV11RangeReader33_8A8CF1A1AB92A9609CD6E8B040939DD6LLC10CacheStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_243793898(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437938EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_243793948(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_243793978(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243793A70;

  return v7(a1);
}

uint64_t sub_243793A70()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

char *sub_243793B54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85580, &qword_2437ACC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_243793C54(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243793D18(v11, 0, 0, 1, a1, a2);
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
    sub_2437943E8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_243793D18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243793E18(a5, a6);
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
    result = sub_2437ABD6C();
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

uint64_t sub_243793E18(uint64_t a1, unint64_t a2)
{
  v4 = sub_243793E64(a1, a2);
  sub_243793F7C(&unk_28568A4A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243793E64(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2437ABAFC())
  {
    result = sub_243794060(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2437ABD4C();
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
          result = sub_2437ABD6C();
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

uint64_t sub_243793F7C(uint64_t result)
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

    result = sub_2437940D0(result, v8, 1, v3);
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

void *sub_243794060(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856A0, &qword_2437ACC40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2437940D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856A0, &qword_2437ACC40);
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

unint64_t sub_2437941C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2437ABEAC();
  MEMORY[0x245D3F230](a1);
  MEMORY[0x245D3F230](a2);
  v6 = sub_2437ABECC();

  return sub_243794244(a1, a2, v6);
}

unint64_t sub_243794244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
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

unint64_t sub_2437942F4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_243794304()
{
  sub_2437ABD7C();
  MEMORY[0x245D3EE60](3943982, 0xE300000000000000);
  sub_2437ABD7C();
  return 0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2437943E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_2437944AC()
{
  result = qword_27ED85E90;
  if (!qword_27ED85E90)
  {
    type metadata accessor for AssetStreamHandle.RangeReader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85E90);
  }

  return result;
}

uint64_t sub_243794504()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243794544()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29(v2);
  *v3 = v4;
  v3[1] = sub_243792248;

  return sub_24378DA70();
}

uint64_t sub_2437945D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_42();
  v9(v8);
  return a2;
}

uint64_t sub_243794634(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_243794674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437946BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2437946F4()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_39(v4);

  return v7(v6);
}

uint64_t sub_243794788(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_2437947E0()
{
  result = qword_27ED85578;
  if (!qword_27ED85578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{
  *(a1 + 8) = sub_243791850;
  v2 = *(v1 + 328);
  return *(v1 + 152);
}

uint64_t OUTLINED_FUNCTION_14()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_23()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[23];
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_243793C54(v11, v12, va);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_46()
{
  v1 = v0[36];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];
}

uint64_t OUTLINED_FUNCTION_47()
{

  return sub_2437ABE3C();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_243793C54(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_59()
{
}

uint64_t OUTLINED_FUNCTION_62()
{
}

uint64_t OUTLINED_FUNCTION_76()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
}

void OUTLINED_FUNCTION_77(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_79(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = (a14 + *(v14 + 8));
  v17 = *v16;
  v18 = v16[1];

  return sub_243794304();
}

uint64_t OUTLINED_FUNCTION_81()
{
  v3 = (v1 + *(v0 + 24));
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_82()
{
}

uint64_t sub_243794ED4()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85F48);
  __swift_project_value_buffer(v0, qword_27ED85F48);
  sub_2437AB73C();
  type metadata accessor for LoadingRequestHandler();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85640, &qword_2437ACD60);
  sub_2437ABABC();
  return sub_2437AB9CC();
}

id sub_243794FC8(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2437AB9AC();
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85590, &qword_2437ACCB0);
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  sub_243795204(a1, &v1[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle]);
  sub_2437AB99C();
  sub_2437AB98C();
  sub_243795268(v13, &v1[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_type]);
  sub_2437952D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED855A8, &qword_2437ACCB8);
  sub_243797E08(&qword_27ED855B0, sub_2437952D8);
  v14 = sub_2437ABA4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED855B8, &unk_2437ACCC0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  *&v1[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedTaskMapping] = v15;
  v16 = sub_2437AAC18("asset-streaming/loading-request-handler", 39, 2, &dword_243789000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85620, &unk_2437ACCD0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  *&v1[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedActivity] = v17;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t sub_243795204(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243795268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85590, &qword_2437ACCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2437952D8()
{
  result = qword_27ED855A0;
  if (!qword_27ED855A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED855A0);
  }

  return result;
}

id sub_24379531C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85590, &qword_2437ACCB0);
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_243797EB0(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_type, &v16 - v8, &qword_27ED85590, &qword_2437ACCB0);
  v10 = sub_2437AB9AC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_243797E50(v9, &qword_27ED85590, &qword_2437ACCB0);
    v11 = 0;
  }

  else
  {
    sub_2437AB97C();
    (*(*(v10 - 8) + 8))(v9, v10);
    v11 = sub_2437ABA8C();
  }

  [a1 setContentType_];

  v12 = (v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle);
  v13 = *(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle + 24);
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  [a1 setContentLength_];
  return [a1 setByteRangeAccessSupported_];
}

uint64_t sub_2437954D0()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85678, &qword_2437ACDA0);
  v1[7] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85680, &unk_2437ACDA8);
  v1[10] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[11] = v8;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

char *sub_2437955EC()
{
  v32 = v0;
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[5];
  v2 = sub_2437AB9DC();
  __swift_project_value_buffer(v2, qword_27ED85F48);
  v3 = v1;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABCAC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_13_0();
    v9 = OUTLINED_FUNCTION_13_0();
    v31 = v9;
    *v8 = 136315650;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_2437ABA9C();
    v14 = v13;

    v15 = sub_243793C54(v12, v14, &v31);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2048;
    v16 = [v10 requestedOffset];

    *(v8 + 14) = v16;
    *(v8 + 22) = 2048;
    v17 = [v10 requestedLength];

    *(v8 + 24) = v17;
    _os_log_impl(&dword_243789000, v4, v5, "LoadingRequestHandler.handleDataRequest:%s offset:%lld length:%ld", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }

  v18 = v0[5];
  v19 = [v18 requestedOffset];
  result = [v18 requestedLength];
  if (__OFADD__(v19, result))
  {
    __break(1u);
  }

  else if (&result[v19] >= v19)
  {
    v21 = (v0[6] + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle);
    v22 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v23 = *(v22 + 24);
    v30 = v23 + *v23;
    v24 = v23[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[13] = v25;
    *v25 = v26;
    v25[1] = sub_2437958F4;
    v27 = v0[12];
    OUTLINED_FUNCTION_19_0();

    __asm { BRAA            X5, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_2437958F4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2437959F4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  sub_2437ABC3C();
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[15] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_3_0(v5);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_243795A80()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_243795B7C()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v4 + 8))(v3, v5);

    OUTLINED_FUNCTION_14();

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_2437AB57C();
    [v8 respondWithData_];

    sub_243797F7C(v1, v2);
    v12 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[15] = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_5_0();

    return MEMORY[0x2822005A8]();
  }
}

uint64_t sub_243795CDC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_243795D44()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[4];
  v5 = v0[12];
  v6 = v0[9];

  OUTLINED_FUNCTION_14();

  return v7();
}

uint64_t sub_243795DE8()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85650, &qword_2437ACD80);
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_2437AB43C();
  v1[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[10] = v7;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v10 = sub_2437AB52C();
  v1[13] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[14] = v11;
  v13 = *(v12 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_243795F38()
{
  v89 = v0;
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 48);
  v2 = sub_2437AB9DC();
  *(v0 + 136) = __swift_project_value_buffer(v2, qword_27ED85F48);
  v3 = v1;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABCAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = OUTLINED_FUNCTION_14_0();
    v88 = OUTLINED_FUNCTION_13_0();
    *v7 = 136315138;
    *(v0 + 40) = v6;
    v8 = sub_2437ABEFC();
    v10 = sub_243793C54(v8, v9, &v88);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_243789000, v4, v5, "LoadingRequestHandler.handle, entering - loadingRequest:%s", v7, 0xCu);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_8_0();
  }

  v11 = [*(v0 + 48) contentInformationRequest];
  if (v11)
  {
    v12 = v11;
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    sub_24379531C(v11);
    v20 = [v19 request];
    sub_2437AB41C();

    sub_2437AB42C();
    (*(v16 + 8))(v14, v15);
    if (__swift_getEnumTagSinglePayload(v18, 1, v13) == 1)
    {
      v21 = *(v0 + 64);

      sub_243797E50(v21, &unk_27ED85650, &qword_2437ACD80);
    }

    else
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = *(v0 + 104);
      v25 = *(v0 + 112);
      v26 = *(v0 + 48);
      (*(v25 + 32))(v22, *(v0 + 64), v24);
      (*(v25 + 16))(v23, v22, v24);
      v27 = sub_2437ABA4C();
      v28 = objc_allocWithZone(MEMORY[0x277CCAA40]);
      v29 = sub_243797808(v23, 206, 0, 0, v27);
      [v26 setResponse_];

      v30 = v26;
      v31 = sub_2437AB9BC();
      v32 = sub_2437ABC8C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 48);
        v34 = OUTLINED_FUNCTION_14_0();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = [v33 response];
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&dword_243789000, v31, v32, "Returning Response w/ ETag for AVAssetCache %@", v34, 0xCu);
        sub_243797E50(v35, &qword_27ED85560, &qword_2437ACC80);
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_10_0();
      }

      v37 = *(v0 + 128);
      v38 = *(v0 + 104);
      v39 = *(v0 + 112);

      (*(v39 + 8))(v37, v38);
    }
  }

  v40 = [*(v0 + 48) dataRequest];
  *(v0 + 144) = v40;
  if (!v40)
  {
    v72 = *(v0 + 136);
    v73 = *(v0 + 48);
    [v73 finishLoading];
    v74 = v73;
    v61 = sub_2437AB9BC();
    v75 = sub_2437ABCAC();

    if (os_log_type_enabled(v61, v75))
    {
      v76 = *(v0 + 48);
      v77 = OUTLINED_FUNCTION_14_0();
      v78 = OUTLINED_FUNCTION_13_0();
      v88 = v78;
      *v77 = 136315138;
      *(v0 + 16) = v76;
      v79 = sub_2437ABEFC();
      v81 = sub_243793C54(v79, v80, &v88);

      *(v77 + 4) = v81;
      OUTLINED_FUNCTION_77(&dword_243789000, v82, v83, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_9_0();
    }

LABEL_24:

    OUTLINED_FUNCTION_17_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_19_0();

    __asm { BRAA            X1, X16 }
  }

  v41 = v40;
  if (![v40 requestedOffset] && objc_msgSend(v41, sel_requestedLength) == 2)
  {
    v42 = *(v0 + 48);
    v43 = sub_2437AB9BC();
    v44 = sub_2437ABC8C();

    if (os_log_type_enabled(v43, v44))
    {
      v86 = v44;
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 72);
      v48 = *(v0 + 48);
      v49 = OUTLINED_FUNCTION_14_0();
      v87 = OUTLINED_FUNCTION_13_0();
      v88 = v87;
      *v49 = 136315138;
      v50 = [v48 request];
      sub_2437AB41C();

      sub_243797E08(&qword_27ED85660, MEMORY[0x277CC8678]);
      v51 = sub_2437ABE1C();
      v53 = v52;
      (*(v46 + 8))(v45, v47);
      v54 = sub_243793C54(v51, v53, &v88);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_243789000, v43, v86, "Returning zero-filled bytes for the first two bytes of a video request %s. These two-bytes are always requested even when the payload can be served from cache.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10_0();
    }

    v55 = *(v0 + 48);
    v56 = sub_243796B78(&unk_28568A780);
    v58 = v57;
    v59 = sub_2437AB57C();
    sub_2437927B8(v56, v58);
    [v41 respondWithData_];

    [v55 finishLoading];
    v60 = v55;
    v61 = sub_2437AB9BC();
    v62 = sub_2437ABCAC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 48);
      v64 = OUTLINED_FUNCTION_14_0();
      v88 = OUTLINED_FUNCTION_13_0();
      *v64 = 136315138;
      *(v0 + 32) = v63;
      v65 = sub_2437ABEFC();
      v67 = sub_243793C54(v65, v66, &v88);

      *(v64 + 4) = v67;
      _os_log_impl(&dword_243789000, v61, v62, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with synthetic response", v64, 0xCu);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_8_0();
    }

    goto LABEL_24;
  }

  v68 = swift_task_alloc();
  *(v0 + 152) = v68;
  *v68 = v0;
  v68[1] = sub_243796700;
  v69 = *(v0 + 56);
  OUTLINED_FUNCTION_19_0();

  return sub_2437954D0();
}

uint64_t sub_243796700()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_243796800()
{
  v17 = v0;

  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  [v2 finishLoading];
  v3 = v2;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABCAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = OUTLINED_FUNCTION_14_0();
    v8 = OUTLINED_FUNCTION_13_0();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = sub_2437ABEFC();
    v11 = sub_243793C54(v9, v10, &v16);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_77(&dword_243789000, v12, v13, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_17_0();

  OUTLINED_FUNCTION_14();

  return v14();
}

uint64_t sub_243796960()
{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = sub_2437AB4AC();
  [v3 finishLoadingWithError_];

  v5 = v3;
  v6 = v1;
  v7 = sub_2437AB9BC();
  v8 = sub_2437ABCAC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_13_0();
    *v12 = 136315394;
    *(v0 + 24) = v11;
    v14 = sub_2437ABEFC();
    v16 = sub_243793C54(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&dword_243789000, v7, v8, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with error %@", v12, 0x16u);
    sub_243797E50(v13, &qword_27ED85560, &qword_2437ACC80);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v19 = *(v0 + 160);
  }

  OUTLINED_FUNCTION_17_0();

  OUTLINED_FUNCTION_14();

  return v20();
}

uint64_t sub_243796B78(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85668, &qword_2437ACD98);
  v8 = sub_243797F18();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_243797C20(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

uint64_t sub_243796C1C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = sub_2437ABBAC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a2;
  v12 = v2;
  v13 = a2;
  v14 = sub_243791EA0(0, 0, v9, &unk_2437ACCE8, v11);
  v15 = *&v12[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedTaskMapping];
  v18 = v13;
  v19 = v14;
  os_unfair_lock_lock((v15 + 24));
  sub_243797158((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));

  return 1;
}

uint64_t sub_243796D50()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_243796DD8()
{
  OUTLINED_FUNCTION_30();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0[3].opaque[0] + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedActivity);
  os_unfair_lock_lock((v1 + 24));
  v0[2].opaque[1] = 0;
  v0[2].opaque[0] = 0;
  os_activity_scope_enter(*(v1 + 16), v0 + 2);
  v2 = v0[2].opaque[0];
  v3 = v0[2].opaque[1];
  os_unfair_lock_unlock((v1 + 24));
  v0[1].opaque[0] = v2;
  v0[1].opaque[1] = v3;
  v4 = swift_task_alloc();
  v0[4].opaque[0] = v4;
  *v4 = v0;
  v4[1] = sub_243796EE0;
  v6 = v0[3].opaque[0];
  v5 = v0[3].opaque[1];
  v7 = *MEMORY[0x277D85DE8];

  return sub_243795DE8();
}

uint64_t sub_243796EE0()
{
  OUTLINED_FUNCTION_15();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 64);
  v2 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_243796FF8()
{
  OUTLINED_FUNCTION_15();
  v4 = *MEMORY[0x277D85DE8];
  os_activity_scope_leave(v0 + 1);
  OUTLINED_FUNCTION_14();
  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

uint64_t sub_24379707C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2437970C4()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243792248;

  return sub_243796D50();
}

id sub_243797158(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_243797C98(v4, v3);
  *a1 = v7;
  return result;
}

void sub_24379721C(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedTaskMapping);
  os_unfair_lock_lock((v4 + 24));
  sub_243797518((v4 + 16), &state);
  os_unfair_lock_unlock((v4 + 24));
  if (state.opaque[0])
  {
    v5 = *(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedActivity);
    os_unfair_lock_lock((v5 + 24));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(v5 + 16), &state);
    v6 = state.opaque[0];
    v7 = state.opaque[1];
    os_unfair_lock_unlock((v5 + 24));
    state.opaque[0] = v6;
    state.opaque[1] = v7;
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_2437AB9DC();
    __swift_project_value_buffer(v8, qword_27ED85F48);
    v9 = a2;
    v10 = sub_2437AB9BC();
    v11 = sub_2437ABCAC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_14_0();
      v27[0] = OUTLINED_FUNCTION_13_0();
      *v12 = 136315138;
      v13 = sub_2437ABEFC();
      v15 = sub_243793C54(v13, v14, v27);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_243789000, v10, v11, "LoadingRequestHandler.didCancel - loadingRequest:%s", v12, 0xCu);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9_0();
    }

    sub_2437ABBCC();
    os_activity_scope_leave(&state);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_2437AB9DC();
    __swift_project_value_buffer(v16, qword_27ED85F48);
    v17 = a2;
    v18 = sub_2437AB9BC();
    v19 = sub_2437ABC9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_14_0();
      v21 = OUTLINED_FUNCTION_13_0();
      state.opaque[0] = v21;
      *v20 = 136315138;
      v27[0] = v17;
      v22 = sub_2437ABEFC();
      v24 = sub_243793C54(v22, v23, &state);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_243789000, v18, v19, "LoadingRequestHandler.didCancel - loadingRequest:%s - missing task!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_10_0();
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_243797518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_243797B1C(*(v3 + 16)), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_243797664(int a1, id a2)
{
  v3 = [a2 sender];
  if (v3)
  {
    [v3 continueWithoutCredentialForAuthenticationChallenge_];
    swift_unknownObjectRelease();
  }

  return 1;
}

id sub_243797758()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243797808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_2437AB4DC();
  if (!a4)
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_2437ABA8C();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2437ABA2C();

LABEL_6:
  v14 = [v6 initWithURL:v11 statusCode:a2 HTTPVersion:v12 headerFields:v13];

  v15 = sub_2437AB52C();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

uint64_t type metadata accessor for LoadingRequestHandler()
{
  result = qword_27ED85F18;
  if (!qword_27ED85F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243797974()
{
  sub_243797A20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_243797A20()
{
  if (!qword_27ED85628)
  {
    sub_2437AB9AC();
    v0 = sub_2437ABD2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED85628);
    }
  }
}

uint64_t sub_243797A84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243797AA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27ED85630)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ED85630);
    }
  }
}

unint64_t sub_243797B1C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2437ABD0C();

  return sub_243797B60(a1, v5);
}

unint64_t sub_243797B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2437952D8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2437ABD1C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_243797C20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_2437AB53C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x245D3E8C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x245D3E8D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_243797C98(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_243797B1C(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85648, &unk_2437ACD68);
  if ((sub_2437ABD8C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_243797B1C(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_2437952D8();
    result = sub_2437ABE5C();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v8);
    *(v14 + 8 * v8) = a1;
  }

  else
  {
    sub_243797DC4(v8, a2, a1, v13);

    return a2;
  }
}

unint64_t sub_243797DC4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_243797E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243797E50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243797EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_243797F18()
{
  result = qword_27ED85670;
  if (!qword_27ED85670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85668, &qword_2437ACD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85670);
  }

  return result;
}

uint64_t sub_243797F7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2437927B8(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result)
{
  *(result + 8) = sub_243795A80;
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  return result;
}

void OUTLINED_FUNCTION_7_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_9_0()
{

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x245D3F7D0);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return MEMORY[0x2821F9888]();
}

uint64_t sub_2437980F4()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85F88);
  __swift_project_value_buffer(v0, qword_27ED85F88);
  sub_2437AB73C();
  type metadata accessor for PlayerItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856A8, &qword_2437ACE40);
  sub_2437ABABC();
  return sub_2437AB9CC();
}

id PlayerItem.init(avAsset:delegate:)(void *a1, uint64_t a2)
{
  v5 = sub_2437AB5BC();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_2437AB5AC();
  (*(v8 + 32))(&v2[OBJC_IVAR____TtC11CloudAssets10PlayerItem_id], v13, v5);
  *&v2[OBJC_IVAR____TtC11CloudAssets10PlayerItem_resourceLoaderDelegate] = a2;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for PlayerItem();
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v29, sel_initWithAsset_automaticallyLoadedAssetKeys_, a1, 0);
  v15 = _MergedGlobals_1;
  v16 = v14;
  if (v15 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v17 = sub_2437AB9DC();
  __swift_project_value_buffer(v17, qword_27ED85F88);
  v18 = sub_2437AB9BC();
  v19 = sub_2437ABCAC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = a1;
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    (*(v8 + 16))(v13, v16 + OBJC_IVAR____TtC11CloudAssets10PlayerItem_id, v5);
    sub_243798F04();
    v22 = sub_2437ABE1C();
    v24 = v23;
    (*(v8 + 8))(v13, v5);
    v25 = sub_243793C54(v22, v24, &v28);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_243789000, v18, v19, "initialize PlayerItem with id %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return v16;
}

uint64_t type metadata accessor for PlayerItem()
{
  result = qword_27ED85F60;
  if (!qword_27ED85F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437984C0(void *a1, uint64_t a2)
{
  v4 = sub_2437ABA1C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = dispatch_semaphore_create(0);
  type metadata accessor for PlayerItem.UnsafeSendablePlayerItemBox();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = sub_2437ABBAC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v19);
  sub_2437ABB8C();
  v20 = v17;

  v21 = a1;
  swift_unknownObjectRetain();
  v22 = sub_2437ABB7C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v20;
  v23[5] = v18;
  v23[6] = v21;
  v23[7] = a2;
  sub_243791EA0(0, 0, v16, &unk_2437ACDC8, v23);

  sub_2437ABA0C();
  sub_2437ABCEC();
  result = (*(v7 + 8))(v12, v4);
  v26 = *(v18 + 16);
  if (v26)
  {
    v27 = v26;

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2437986D4()
{
  OUTLINED_FUNCTION_15();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_2437ABB8C();
  v0[6] = sub_2437ABB7C();
  v6 = sub_2437ABB3C();

  return MEMORY[0x2822009F8](sub_24379876C, v6, v5);
}

uint64_t sub_24379876C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = objc_allocWithZone(type metadata accessor for PlayerItem());
  v7 = v3;
  swift_unknownObjectRetain();
  v8 = PlayerItem.init(avAsset:delegate:)(v7, v2);
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  sub_2437ABCFC();
  OUTLINED_FUNCTION_14();

  return v10();
}

id PlayerItem.__deallocating_deinit()
{
  v1 = sub_2437AB5BC();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v10 = sub_2437AB9DC();
  __swift_project_value_buffer(v10, qword_27ED85F88);
  v11 = v0;
  v12 = sub_2437AB9BC();
  v13 = sub_2437ABCAC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    (*(v4 + 16))(v9, v11 + OBJC_IVAR____TtC11CloudAssets10PlayerItem_id, v1);
    sub_243798F04();
    v16 = sub_2437ABE1C();
    v18 = v17;
    (*(v4 + 8))(v9, v1);
    v19 = sub_243793C54(v16, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_243789000, v12, v13, "deinit PlayerItem with id %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v20 = type metadata accessor for PlayerItem();
  v23.receiver = v11;
  v23.super_class = v20;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

id sub_243798AE8@<X0>(void *a1@<X8>)
{
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v3 = sub_2437AB9DC();
  __swift_project_value_buffer(v3, qword_27ED85F88);
  v4 = v1;
  v5 = sub_2437AB9BC();
  v6 = sub_2437ABCAC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_2437AB5BC();
    sub_243798F04();
    v9 = sub_2437ABE1C();
    v11 = sub_243793C54(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_243789000, v5, v6, "copy PlayerItem with id %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v12 = [v4 asset];
  v13 = *&v4[OBJC_IVAR____TtC11CloudAssets10PlayerItem_resourceLoaderDelegate];
  v14 = type metadata accessor for PlayerItem();
  objc_allocWithZone(v14);
  swift_unknownObjectRetain();
  result = PlayerItem.init(avAsset:delegate:)(v12, v13);
  a1[3] = v14;
  *a1 = result;
  return result;
}

id PlayerItem.__allocating_init(asset:automaticallyLoadedAssetKeys:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = sub_2437ABB0C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v3) initWithAsset:a1 automaticallyLoadedAssetKeys:v5];

  return v6;
}

uint64_t sub_243798DE4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_243798E1C()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  OUTLINED_FUNCTION_14();

  return v4();
}

unint64_t sub_243798F04()
{
  result = qword_27ED85690;
  if (!qword_27ED85690)
  {
    sub_2437AB5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85690);
  }

  return result;
}

uint64_t sub_243798F80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243798FD8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243799084;

  return sub_2437986D4();
}

uint64_t sub_243799084()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_243799170()
{
  result = sub_2437AB5BC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t sub_243799268()
{
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_1(v1);

  return StreamHandle.readAll(in:)();
}

uint64_t sub_243799304()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_25();
  }

  return v7(v6);
}

uint64_t StreamHandle.readAll(in:)()
{
  OUTLINED_FUNCTION_3_1();
  v2[7] = v3;
  v2[8] = v1;
  v2[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85678, &qword_2437ACDA0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v2[10] = v7;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85680, &unk_2437ACDA8);
  v2[12] = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_6_0();
  v2[13] = v12;
  v14 = *(v13 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v15 = *(v0 + 24);
  OUTLINED_FUNCTION_6_0();
  v24 = v16 + *v16;
  v18 = *(v17 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v2[16] = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_4_0(v19);

  return v22(v21);
}

uint64_t sub_2437995F0()
{
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_243799B54;
  }

  else
  {
    v7 = sub_2437996F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2437996F8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  (*(v0[7] + 8))(v0[6]);
  v0[2] = sub_2437AB56C();
  v0[3] = v7;
  v8 = *(v4 + 16);
  v9 = OUTLINED_FUNCTION_25();
  v10(v9);
  sub_243799BD0(&qword_27ED856B0, &unk_27ED85680, &unk_2437ACDA8);
  sub_2437ABBEC();
  OUTLINED_FUNCTION_2_0(&qword_27ED856B8, &qword_27ED85678, &qword_2437ACDA0);
  v11 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[18] = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_0_2(v12);

  return MEMORY[0x282200308](v14);
}

uint64_t sub_243799828()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = v2[18];
  v5 = *v1;
  OUTLINED_FUNCTION_12();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    sub_2437927B8(v3[2], v3[3]);
    v7 = sub_243799AC0;
  }

  else
  {
    v7 = sub_243799950;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_243799950()
{
  if (v0[5] >> 60 == 15)
  {
    v1 = v0[14];
    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v4 + 8))(v2, v3);
    sub_243797F7C(v0[4], v0[5]);
    v5 = v0[2];
    v6 = v0[3];

    v7 = v0[1];

    return v7(v5, v6);
  }

  else
  {
    v9 = v0[4];
    OUTLINED_FUNCTION_25();
    sub_2437AB58C();
    v10 = OUTLINED_FUNCTION_25();
    sub_243797F7C(v10, v11);
    OUTLINED_FUNCTION_2_0(&qword_27ED856B8, &qword_27ED85678, &qword_2437ACDA0);
    v12 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[18] = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_0_2();

    return MEMORY[0x282200308](v15);
  }
}

uint64_t sub_243799AC0()
{
  OUTLINED_FUNCTION_30();
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_243799B54()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_243799BD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of StreamHandle.inputStream(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 24);
  OUTLINED_FUNCTION_6_0();
  v15 = v7 + *v7;
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v5 + 16) = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_4_0(v10);

  return v13(v12);
}

uint64_t sub_243799D60()
{
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t dispatch thunk of StreamHandle.readAll(in:)()
{
  OUTLINED_FUNCTION_3_1();
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_6_0();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_5_1(v6);

  return v9(v7);
}

uint64_t sub_243799F54()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_25();

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{
  *(a1 + 8) = sub_243799828;
  v2 = *(v1 + 88);
  v3 = *(v1 + 72);
  return v1 + 32;
}

uint64_t OUTLINED_FUNCTION_2_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_243799BD0(a1, a2, a3);
}

uint64_t sub_24379A104(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_24379A144()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[6] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[7] = OUTLINED_FUNCTION_43();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90) - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_24379A2C8, v0, 0);
}

uint64_t sub_24379A2C8()
{
  v1 = *(v0[5] + 112);
  v0[15] = v1;
  v2 = (*v1 + 112) & 0xFFFFFFFFFFFFLL | 0x42F2000000000000;
  v0[16] = *(*v1 + 112);
  v0[17] = v2;
  return OUTLINED_FUNCTION_0_3(sub_24379A304, v1);
}

uint64_t sub_24379A304()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 40);
  (*(v0 + 128))();

  return MEMORY[0x2822009F8](sub_24379A374, v4, 0);
}

uint64_t sub_24379A374()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  sub_2437ABC3C();
  (*(v3 + 8))(v2, v4);
  v6 = sub_24379A7FC();
  v7 = *(MEMORY[0x277D858B8] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_24379A45C;
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[8];

  return MEMORY[0x2822005A8](v11, v5, v6, v10, v0 + 2);
}

uint64_t sub_24379A45C()
{
  OUTLINED_FUNCTION_15();
  v3 = *(*v1 + 144);
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v2;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24379A760;
  }

  else
  {
    v6 = sub_24379A564;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24379A564()
{
  v1 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[6]) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_24379A874();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v6 = v0[14];
    v7 = v0[11];
    v9 = v0[7];
    v8 = v0[8];

    OUTLINED_FUNCTION_14();
    goto LABEL_7;
  }

  sub_24379A8C8(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    swift_willThrowTypedImpl();
    (*(v4 + 8))(v3, v5);
    goto LABEL_5;
  }

  v11 = v0[11];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[4];
  (*(v4 + 8))(v0[14], v0[12]);
  v15 = sub_2437AB91C();
  (*(*(v15 - 8) + 32))(v14, v13, v15);

  OUTLINED_FUNCTION_14();
LABEL_7:

  return v10();
}

uint64_t sub_24379A760()
{
  OUTLINED_FUNCTION_30();
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[2];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  OUTLINED_FUNCTION_14();

  return v6();
}

unint64_t sub_24379A7FC()
{
  result = qword_27ED856E0;
  if (!qword_27ED856E0)
  {
    type metadata accessor for AssetDownloadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED856E0);
  }

  return result;
}

unint64_t sub_24379A874()
{
  result = qword_27ED856E8;
  if (!qword_27ED856E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED856E8);
  }

  return result;
}

uint64_t sub_24379A8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24379A938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_24379A954, v1);
}

uint64_t sub_24379A954()
{
  OUTLINED_FUNCTION_30();
  v1 = *(**(v0[3] + 112) + 128);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_24379AA70;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_24379AA70()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t AssetDownloadCoordinator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetDownloadCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.result()()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v4 = *(*v0 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243799084;

  return v8(v3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.receive(signal:)()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v4 = *(*v0 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24379AE30;

  return v8(v3);
}

uint64_t sub_24379AE64()
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](0);
  return sub_2437ABECC();
}

uint64_t sub_24379AEB8()
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](0);
  return sub_2437ABECC();
}

uint64_t sub_24379AEF8()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED861C8);
  v1 = OUTLINED_FUNCTION_42();
  __swift_project_value_buffer(v1, v2);
  sub_2437AB73C();
  type metadata accessor for AssetManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85878, &qword_2437AD228);
  sub_2437ABABC();
  return sub_2437AB9CC();
}

uint64_t AssetManager.__allocating_init(serviceIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AssetManager.init(serviceIdentifier:)(a1);
  return v2;
}

uint64_t sub_24379B030(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v5 = sub_2437AB76C();
  v6 = OUTLINED_FUNCTION_17(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  type metadata accessor for AssetManager();
  v12 = swift_allocObject();
  result = AssetManager.init(serviceIdentifier:)(v11);
  *a3 = v12;
  return result;
}

uint64_t sub_24379B0E4(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t AssetManager.init(serviceIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2437AB76C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2437AB75C();
  (*(v7 + 16))(v11, a1, v4);
  v13 = sub_2437AB74C();
  v17 = v12;
  v18 = MEMORY[0x277CFA810];
  *&v16 = v13;
  (*(v7 + 8))(a1, v4);
  sub_24379B248(&v16, v2 + 16);
  return v2;
}

uint64_t sub_24379B248(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24379B260()
{
  OUTLINED_FUNCTION_15();
  v0[5] = v1;
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v0[7] = v3;
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D0, &qword_2437AD158);
  v0[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB91C();
  v0[12] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[13] = v11;
  v13 = *(v12 + 64);
  v0[14] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  v0[15] = v14;
  OUTLINED_FUNCTION_5(v14);
  v0[16] = v15;
  v17 = *(v16 + 64);
  v0[17] = OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D8, &qword_2437AD160);
  OUTLINED_FUNCTION_17(v18);
  v20 = *(v19 + 64);
  v0[18] = OUTLINED_FUNCTION_43();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E0, &qword_2437AD168);
  v0[19] = v21;
  OUTLINED_FUNCTION_5(v21);
  v0[20] = v22;
  v24 = *(v23 + 64);
  v0[21] = OUTLINED_FUNCTION_43();
  v25 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24379B468()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85780, &qword_2437AD000);
  sub_2437ABC3C();
  v3 = *MEMORY[0x277CFA968];
  *(v0 + 184) = *MEMORY[0x277CFA970];
  *(v0 + 188) = v3;
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 176) = v5;
  *v5 = v6;
  v5[1] = sub_24379B53C;
  v7 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_24379B53C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_24379B638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = *(v14 + 144);
  v16 = *(v14 + 120);
  OUTLINED_FUNCTION_10_1();
  if (v17)
  {
    (*(*(v14 + 160) + 8))(*(v14 + 168), *(v14 + 152));
    v18 = *(v14 + 168);
    v20 = *(v14 + 136);
    v19 = *(v14 + 144);
    v21 = *(v14 + 112);
    v22 = *(v14 + 88);
    v23 = *(v14 + 64);
    v24 = *(v14 + 48);
    *(v14 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
    sub_2437ABC2C();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_19_0();

    v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v33 = *(v14 + 184);
    v34 = *(v14 + 128);
    v35 = OUTLINED_FUNCTION_47_0(v34);
    v36(v35);
    v37 = *(v34 + 88);
    v38 = OUTLINED_FUNCTION_58_0();
    v40 = v39(v38);
    if (v40 == v33)
    {
      v41 = *(v14 + 136);
      v42 = *(v14 + 112);
      v43 = *(v14 + 96);
      v44 = *(v14 + 104);
      v46 = *(v14 + 80);
      v45 = *(v14 + 88);
      v47 = *(v14 + 64);
      v78 = *(v14 + 72);
      v48 = *(v14 + 48);
      v49 = *(v14 + 56);
      (*(*(v14 + 128) + 96))(v41, *(v14 + 120));
      v50 = OUTLINED_FUNCTION_79_0();
      v51(v50, v41, v43);
      v52 = *(v44 + 16);
      OUTLINED_FUNCTION_103();
      v53();
      OUTLINED_FUNCTION_104();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
      sub_2437ABC1C();
      (*(v46 + 8))(v45, v78);
      v54 = *(v44 + 8);
      v55 = OUTLINED_FUNCTION_26_0();
      v56(v55);
    }

    else
    {
      if (v40 != *(v14 + 188))
      {
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_19_0();
        return;
      }

      v58 = *(v14 + 80);
      v57 = *(v14 + 88);
      v60 = *(v14 + 64);
      v59 = *(v14 + 72);
      v61 = *(v14 + 48);
      v62 = *(v14 + 56);
      sub_24379A874();
      *v60 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_105();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
      OUTLINED_FUNCTION_113();
      sub_2437ABC1C();
      v63 = *(v58 + 8);
      v64 = OUTLINED_FUNCTION_26_0();
      v65(v64);
    }

    v66 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    *(v14 + 176) = v67;
    *v67 = v68;
    v67[1] = sub_24379B53C;
    v69 = *(v14 + 168);
    v70 = *(v14 + 144);
    v71 = *(v14 + 152);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_19_0();

    MEMORY[0x2822005A8](v72, v73, v74, v75, v76);
  }
}

uint64_t sub_24379B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[6];
  (*(v12[20] + 8))(v12[21], v12[19]);
  v12[3] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  sub_2437ABC2C();
  v14 = v12[21];
  v16 = v12[17];
  v15 = v12[18];
  v17 = v12[14];
  v18 = v12[11];
  v19 = v12[8];
  v20 = v12[6];
  v12[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_112();
  sub_2437ABC2C();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t AssetManager.process(request:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[6] = v4;
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[9] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[12] = v14;
  OUTLINED_FUNCTION_5(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_43();
  v18 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[6] = v4;
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[9] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[12] = v14;
  OUTLINED_FUNCTION_5(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_43();
  v18 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  v1[7] = v4;
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85738, &qword_2437ACFB8);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85740, &qword_2437ACFC0);
  v1[10] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  v1[13] = v14;
  OUTLINED_FUNCTION_5(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v18 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_24379BBB4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F0, &qword_2437ACF60);
  OUTLINED_FUNCTION_97();
  v2 = sub_2437AB77C();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_13_1();
  v0[15] = v5;
  v6 = OUTLINED_FUNCTION_8_1(v5, xmmword_2437ACF30);
  v7(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[16] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_92(v8);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_24379BCC0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24379BDC4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  sub_2437ABC3C();
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[18] = v5;
  *v5 = v6;
  v5[1] = sub_24379BE64;
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_24379BE64()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24379BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[8];
  v14 = v12[6];
  OUTLINED_FUNCTION_10_1();
  if (v34)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v15 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v15, qword_27ED861C8);
    v16 = sub_2437AB9BC();
    v17 = sub_2437ABC9C();
    if (OUTLINED_FUNCTION_51_0(v17))
    {
      *OUTLINED_FUNCTION_122() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    v24 = v12[13];
    v23 = v12[14];
    v25 = v12[12];

    sub_24379A874();
    OUTLINED_FUNCTION_65_0();
    swift_willThrow();
    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_64_0();
    v28(v27);
  }

  else
  {
    v29 = v12[7];
    v30 = OUTLINED_FUNCTION_26_0();
    sub_2437A65EC(v30, v31, v32, v33);
    OUTLINED_FUNCTION_58_0();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_110();
    if (!v34)
    {
      v41 = v12[7];
      v40 = v12[8];
      v42 = v12[3];
      v43 = OUTLINED_FUNCTION_55_0();
      v44(v43);
      v45 = OUTLINED_FUNCTION_50_0();
      v46(v45);
      v47 = sub_2437AB91C();
      OUTLINED_FUNCTION_16_1(v47);
      v49 = *(v48 + 32);
      v50 = OUTLINED_FUNCTION_88();
      v51(v50);

      OUTLINED_FUNCTION_11_0();
      goto LABEL_12;
    }

    v35 = *v12[7];
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_55_0();
    v37(v36);
    v38 = OUTLINED_FUNCTION_50_0();
    v39(v38);
  }

  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();
LABEL_12:
  OUTLINED_FUNCTION_33_0();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
}

uint64_t sub_24379C18C()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_24379C20C()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_28();
  v6(v5);
  v7 = v0[2];
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t AssetManager.process(requests:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F8, &qword_2437ACF70);
  v1[6] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v8 = sub_2437AB7CC();
  v1[9] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v1[12] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_43();
  v16 = sub_2437ABBAC();
  v1[15] = v16;
  OUTLINED_FUNCTION_5(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v20 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  OUTLINED_FUNCTION_30();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F8, &qword_2437ACF70);
  v0[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  v0[6] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_43();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[9] = v10;
  *v10 = v11;
  v10[1] = sub_24379D25C;

  return AssetManager.process(requests:)();
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8);
  v1[6] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85750, &qword_2437ACFD0);
  v1[9] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  v1[12] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_43();
  v16 = sub_2437AB83C();
  v1[15] = v16;
  OUTLINED_FUNCTION_5(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v20 = sub_2437ABBAC();
  v1[18] = v20;
  OUTLINED_FUNCTION_5(v20);
  v1[19] = v21;
  v23 = *(v22 + 64);
  v1[20] = OUTLINED_FUNCTION_43();
  v24 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F8, &qword_2437ACF70);
  v1[6] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85770, &qword_2437ACFF0);
  v1[10] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  v1[13] = v14;
  OUTLINED_FUNCTION_5(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85780, &qword_2437AD000);
  v1[16] = v18;
  OUTLINED_FUNCTION_5(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85788, &qword_2437AD008);
  v1[19] = v22;
  OUTLINED_FUNCTION_5(v22);
  v1[20] = v23;
  v25 = *(v24 + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  v1[22] = v26;
  OUTLINED_FUNCTION_5(v26);
  v1[23] = v27;
  v29 = *(v28 + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  v1[25] = v30;
  OUTLINED_FUNCTION_5(v30);
  v1[26] = v31;
  v33 = *(v32 + 64);
  v1[27] = OUTLINED_FUNCTION_78_0();
  v1[28] = swift_task_alloc();
  v34 = sub_2437AB7CC();
  v1[29] = v34;
  OUTLINED_FUNCTION_5(v34);
  v1[30] = v35;
  v37 = *(v36 + 64);
  v1[31] = OUTLINED_FUNCTION_43();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v1[32] = v38;
  OUTLINED_FUNCTION_5(v38);
  v1[33] = v39;
  v41 = *(v40 + 64);
  v1[34] = OUTLINED_FUNCTION_43();
  v42 = sub_2437ABBAC();
  v1[35] = v42;
  OUTLINED_FUNCTION_5(v42);
  v1[36] = v43;
  v45 = *(v44 + 64);
  v1[37] = OUTLINED_FUNCTION_43();
  v46 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v46, v47, v48);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[6] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v1[9] = swift_task_alloc();
  v10 = sub_2437ABBAC();
  v1[10] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_43();
  v14 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_24379C6BC()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;
  *(v3 + 152) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24379C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = v14[13];
  v16 = v14[14];
  v17 = v14[12];
  v36 = v14[17];
  v37 = v14[11];
  v19 = v14[7];
  v18 = v14[8];
  v21 = v14[5];
  v20 = v14[6];
  v22 = v14[2];
  v23 = swift_task_alloc();
  *(v23 + 16) = v16;
  *(v23 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(v19 + 104))(v18, *MEMORY[0x277D858A0], v20);
  sub_2437ABC6C();

  v24 = *(v15 + 8);
  v25 = OUTLINED_FUNCTION_93();
  v26(v25);

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_19_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_24379C940()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  OUTLINED_FUNCTION_14();
  v6 = v0[19];

  return v5();
}

uint64_t sub_24379CB30()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85720, &qword_2437ACF88);
  OUTLINED_FUNCTION_97();
  v2 = sub_2437AB7BC();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_13_1();
  v0[15] = v5;
  v6 = OUTLINED_FUNCTION_8_1(v5, xmmword_2437ACF30);
  v7(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[16] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_92(v8);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_24379CC3C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24379CD40()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  sub_2437ABC3C();
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[18] = v5;
  *v5 = v6;
  v5[1] = sub_24379CDE0;
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_24379CDE0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24379CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[8];
  v14 = v12[6];
  OUTLINED_FUNCTION_10_1();
  if (v34)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v15 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v15, qword_27ED861C8);
    v16 = sub_2437AB9BC();
    v17 = sub_2437ABC9C();
    if (OUTLINED_FUNCTION_51_0(v17))
    {
      *OUTLINED_FUNCTION_122() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    v24 = v12[13];
    v23 = v12[14];
    v25 = v12[12];

    sub_24379A874();
    OUTLINED_FUNCTION_65_0();
    swift_willThrow();
    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_64_0();
    v28(v27);
  }

  else
  {
    v29 = v12[7];
    v30 = OUTLINED_FUNCTION_26_0();
    sub_2437A65EC(v30, v31, v32, v33);
    OUTLINED_FUNCTION_58_0();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_110();
    if (!v34)
    {
      v41 = v12[7];
      v40 = v12[8];
      v42 = v12[3];
      v43 = OUTLINED_FUNCTION_55_0();
      v44(v43);
      v45 = OUTLINED_FUNCTION_50_0();
      v46(v45);
      v47 = sub_2437AB91C();
      OUTLINED_FUNCTION_16_1(v47);
      v49 = *(v48 + 32);
      v50 = OUTLINED_FUNCTION_88();
      v51(v50);

      OUTLINED_FUNCTION_11_0();
      goto LABEL_12;
    }

    v35 = *v12[7];
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_55_0();
    v37(v36);
    v38 = OUTLINED_FUNCTION_50_0();
    v39(v38);
  }

  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();
LABEL_12:
  OUTLINED_FUNCTION_33_0();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
}

uint64_t sub_24379D25C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_12();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24379D358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v14 = v12[7];
  v13 = v12[8];
  v16 = v12[5];
  v15 = v12[6];
  v17 = v12[3];
  v18 = v12[4];
  v19 = v12[2];
  *(swift_task_alloc() + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(v18 + 104))(v16, *MEMORY[0x277D858A0], v17);
  OUTLINED_FUNCTION_88();
  sub_2437ABC6C();

  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_28();
  v22(v21);

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_33_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_24379D460()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  v2 = v0[5];

  OUTLINED_FUNCTION_14();
  v4 = v0[10];

  return v3();
}

uint64_t sub_24379D630()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85720, &qword_2437ACF88);
  OUTLINED_FUNCTION_97();
  v2 = sub_2437AB7BC();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_13_1();
  v0[16] = v5;
  v6 = OUTLINED_FUNCTION_8_1(v5, xmmword_2437ACF30);
  v7(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[17] = v8;
  *v8 = v9;
  v8[1] = sub_24379D74C;
  v10 = v0[15];
  v11 = v0[6];
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_24379D74C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24379D850()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  sub_2437ABC3C();
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_24379D8F0;
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_24379D8F0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24379D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[9];
  v14 = v12[7];
  OUTLINED_FUNCTION_10_1();
  if (v15)
  {
    (*(v12[11] + 8))(v12[12], v12[10]);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v16 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v16, qword_27ED861C8);
    v17 = sub_2437AB9BC();
    v18 = sub_2437ABC9C();
    if (OUTLINED_FUNCTION_51_0(v18))
    {
      *OUTLINED_FUNCTION_122() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    v25 = v12[14];
    v24 = v12[15];
    v26 = v12[13];

    sub_24379A874();
    OUTLINED_FUNCTION_65_0();
    swift_willThrow();
    v27 = *(v25 + 8);
    v28 = OUTLINED_FUNCTION_64_0();
    v29(v28);
    goto LABEL_10;
  }

  v30 = v12[8];
  v31 = OUTLINED_FUNCTION_26_0();
  sub_2437A65EC(v31, v32, v33, v34);
  OUTLINED_FUNCTION_58_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v12[14];
  v36 = v12[15];
  v38 = v12[12];
  v39 = v12[13];
  v40 = v12[10];
  v41 = v12[11];
  if (EnumCaseMultiPayload == 1)
  {
    v12[3] = *v12[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    swift_willThrowTypedImpl();
    v42 = *(v41 + 8);
    v43 = OUTLINED_FUNCTION_93();
    v44(v43);
    v45 = *(v37 + 8);
    v46 = OUTLINED_FUNCTION_64_0();
    v47(v46);
LABEL_10:
    OUTLINED_FUNCTION_99();

    OUTLINED_FUNCTION_14();
    goto LABEL_12;
  }

  v49 = v12[8];
  v48 = v12[9];
  v50 = v12[4];
  v51 = *(v41 + 8);
  v52 = OUTLINED_FUNCTION_93();
  v53(v52);
  v54 = *(v37 + 8);
  v55 = OUTLINED_FUNCTION_64_0();
  v56(v55);
  v57 = sub_2437AB81C();
  OUTLINED_FUNCTION_16_1(v57);
  v59 = *(v58 + 32);
  v60 = OUTLINED_FUNCTION_87();
  v61(v60);

  OUTLINED_FUNCTION_11_0();
LABEL_12:
  OUTLINED_FUNCTION_33_0();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12);
}

uint64_t sub_24379DC58()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_99();

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_24379DCD8()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_28();
  v6(v5);
  v7 = v0[2];
  OUTLINED_FUNCTION_99();

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t sub_24379E20C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_12();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24379E308()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[7];
    v29 = v0[6];
    v31 = MEMORY[0x277D84F90];
    sub_2437A65CC(0, v2, 0);
    v3 = v31;
    v27 = sub_2437AB7BC();
    v5 = *(v27 - 8);
    v25 = *(v5 + 16);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v25(v0[8] + *(v29 + 48), v6, v27);
      sub_2437AB78C();
      v9 = *(v31 + 16);
      v8 = *(v31 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2437A65CC(v8 > 1, v9 + 1, 1);
      }

      v10 = v0[8];
      *(v31 + 16) = v9 + 1;
      sub_2437A65EC(v10, v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, &qword_27ED85748, &qword_2437ACFC8);
      v6 += v7;
      --v2;
    }

    while (v2);
    v1 = v0[3];
  }

  v11 = v0[16];
  v12 = v0[14];
  v23 = v0[15];
  v24 = v0[17];
  v13 = v0[13];
  v26 = v0[12];
  v28 = v0[20];
  v15 = v0[10];
  v14 = v0[11];
  v30 = v0[8];
  v16 = v0[5];
  v21 = v0[9];
  v22 = v0[2];
  v17 = sub_24379F598(v3);
  v18 = swift_task_alloc();
  v18[2] = v12;
  v18[3] = v17;
  v18[4] = v1;
  v18[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  (*(v15 + 104))(v14, *MEMORY[0x277D858A0], v21);
  OUTLINED_FUNCTION_88();
  sub_2437ABC6C();

  (*(v11 + 8))(v24, v23);

  (*(v13 + 8))(v12, v26);

  OUTLINED_FUNCTION_11_0();

  return v19();
}

uint64_t sub_24379E5B8()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_14();
  v5 = v0[22];
  OUTLINED_FUNCTION_111();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void sub_24379E664()
{
  OUTLINED_FUNCTION_90();
  v39 = v1;
  v40 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_82_0();
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  (*(v15 + 16))(v19, v4, v12);
  v28 = OUTLINED_FUNCTION_70_0(v8);
  v29(v28, v39, v5);
  v30 = (v17 + *(v8 + 80) + ((*(v15 + 80) + 32) & ~*(v15 + 80))) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v32 = *(v15 + 32);
  OUTLINED_FUNCTION_114();
  v33();
  (*(v8 + 32))(v31 + v30, v38, v5);
  *(v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v34 = OUTLINED_FUNCTION_46_0();
  sub_24379F308(v34, v35, v0, v36, v31);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_24379E8D0()
{
  OUTLINED_FUNCTION_15();
  v0[3] = v1;
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v0[5] = v3;
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D0, &qword_2437AD158);
  v0[7] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB91C();
  v0[10] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = OUTLINED_FUNCTION_78_0();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  v0[15] = v14;
  OUTLINED_FUNCTION_5(v14);
  v0[16] = v15;
  v17 = *(v16 + 64);
  v0[17] = OUTLINED_FUNCTION_78_0();
  v0[18] = swift_task_alloc();
  v18 = sub_2437AB82C();
  v0[19] = v18;
  OUTLINED_FUNCTION_5(v18);
  v0[20] = v19;
  v21 = *(v20 + 64);
  v0[21] = OUTLINED_FUNCTION_43();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85800, &qword_2437AD198);
  OUTLINED_FUNCTION_17(v22);
  v24 = *(v23 + 64);
  v0[22] = OUTLINED_FUNCTION_43();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85808, &qword_2437AD1A0);
  v0[23] = v25;
  OUTLINED_FUNCTION_5(v25);
  v0[24] = v26;
  v28 = *(v27 + 64);
  v0[25] = OUTLINED_FUNCTION_43();
  v29 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_24379EB48()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 200);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  sub_2437ABC3C();
  v3 = *MEMORY[0x277CFA970];
  v4 = MEMORY[0x277CFA968];
  *(v0 + 216) = *MEMORY[0x277CFA868];
  *(v0 + 220) = v3;
  *(v0 + 224) = *v4;
  v5 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 208) = v6;
  *v6 = v7;
  v6[1] = sub_24379EC2C;
  v8 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v11, v12, v13, v14, v15);
}

uint64_t sub_24379EC2C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_24379ED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_116();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 176);
  v30 = *(v26 + 152);
  OUTLINED_FUNCTION_95();
  if (!v31)
  {
    v45 = *(v26 + 216);
    v47 = *(v26 + 160);
    v46 = *(v26 + 168);
    OUTLINED_FUNCTION_71_0();
    v48 = OUTLINED_FUNCTION_58_0();
    v49(v48);
    v50 = *(v47 + 88);
    v51 = OUTLINED_FUNCTION_25();
    if (v52(v51) == v45)
    {
      v53 = *(v26 + 220);
      v54 = *(v26 + 168);
      v56 = *(v26 + 144);
      v55 = *(v26 + 152);
      v58 = *(v26 + 128);
      v57 = *(v26 + 136);
      v59 = *(v26 + 120);
      v60 = OUTLINED_FUNCTION_85(*(v26 + 160));
      v61(v60);
      v62 = v58[4];
      v63 = OUTLINED_FUNCTION_42();
      v64(v63);
      v65 = v58[2];
      v66 = OUTLINED_FUNCTION_25();
      v67(v66);
      v68 = v58[11];
      v69 = OUTLINED_FUNCTION_94();
      v71 = v70(v69);
      if (v71 == v53)
      {
        v72 = *(v26 + 136);
        v74 = *(v26 + 112);
        v73 = *(v26 + 120);
        v75 = *(v26 + 80);
        v76 = *(v26 + 88);
        v77 = OUTLINED_FUNCTION_85(*(v26 + 128));
        v78(v77);
        v79 = *(v76 + 32);
        v80 = OUTLINED_FUNCTION_12_0();
        v81(v80);
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v82 = *(v26 + 104);
        v83 = *(v26 + 112);
        v84 = *(v26 + 80);
        v85 = *(v26 + 88);
        v86 = sub_2437AB9DC();
        __swift_project_value_buffer(v86, qword_27ED861C8);
        v87 = *(v85 + 16);
        v88 = OUTLINED_FUNCTION_12_0();
        v87(v88);
        v89 = sub_2437AB9BC();
        v90 = sub_2437ABCAC();
        v91 = OUTLINED_FUNCTION_51_0(v90);
        v92 = *(v26 + 104);
        if (v91)
        {
          v93 = *(v26 + 88);
          v94 = *(v26 + 96);
          v95 = *(v26 + 80);
          OUTLINED_FUNCTION_14_0();
          v142 = OUTLINED_FUNCTION_73_0();
          a15 = v142;
          *v84 = 136315138;
          (v87)(v94, v92, v95);
          OUTLINED_FUNCTION_104();
          v96 = sub_2437ABABC();
          v98 = v97;
          v144 = *(v93 + 8);
          v144(v92, v95);
          v99 = sub_243793C54(v96, v98, &a15);

          *(v84 + 4) = v99;
          OUTLINED_FUNCTION_15_0();
          _os_log_impl(v100, v101, v102, v103, v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v142);
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_29_0();
        }

        else
        {
          v114 = *(v26 + 80);
          v115 = *(v26 + 88);

          v144 = *(v115 + 8);
          v144(v92, v114);
        }

        v116 = *(v26 + 112);
        v117 = *(v26 + 80);
        v119 = *(v26 + 64);
        v118 = *(v26 + 72);
        v121 = *(v26 + 48);
        v120 = *(v26 + 56);
        v122 = *(v26 + 32);
        v123 = *(v26 + 40);
        v124 = *(v26 + 88) + 8;
        OUTLINED_FUNCTION_103();
        v125();
        OUTLINED_FUNCTION_87();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
        sub_2437ABC1C();
        v126 = *(v119 + 8);
        v127 = OUTLINED_FUNCTION_36_0();
        v128(v127);
        v129 = OUTLINED_FUNCTION_26_0();
        (v144)(v129);
        goto LABEL_17;
      }

      if (v71 == *(v26 + 224))
      {
        v106 = *(v26 + 64);
        v105 = *(v26 + 72);
        v108 = *(v26 + 48);
        v107 = *(v26 + 56);
        v109 = *(v26 + 32);
        v110 = *(v26 + 40);
        sub_24379A874();
        *v108 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_105();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
        OUTLINED_FUNCTION_113();
        sub_2437ABC1C();
        v111 = *(v106 + 8);
        v112 = OUTLINED_FUNCTION_26_0();
        v113(v112);
LABEL_17:
        (*(*(v26 + 128) + 8))(*(v26 + 144), *(v26 + 120));
        v130 = *(MEMORY[0x277D858B8] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_16_0();
        *(v26 + 208) = v131;
        *v131 = v132;
        v131[1] = sub_24379EC2C;
        v133 = *(v26 + 200);
        v134 = *(v26 + 176);
        v135 = *(v26 + 184);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_74();

        MEMORY[0x2822005A8](v136, v137, v138, v139, v140);
        return;
      }

      OUTLINED_FUNCTION_7_1();
    }

    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_74();
    return;
  }

  v32 = *(v26 + 192);
  v33 = *(v26 + 200);
  v34 = *(v26 + 184);
  OUTLINED_FUNCTION_76_0();
  v143 = v35;
  (*(v36 + 8))(v33);

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_74();

  v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, v143, a15, a16, a17, a18);
}

uint64_t sub_24379F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = v14[24];
  v16 = v14[25];
  v18 = v14[22];
  v17 = v14[23];
  OUTLINED_FUNCTION_76_0();
  v31 = v19;
  (*(v20 + 8))(v16);
  v30 = v14[2];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_24379F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2437A724C(a3, v23 - v10, &qword_27ED85508, &qword_2437AC820);
  v12 = sub_2437ABBAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_243797E50(v11, &qword_27ED85508, &qword_2437AC820);
  }

  else
  {
    sub_2437ABB9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2437ABB3C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2437ABACC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_243797E50(a3, &qword_27ED85508, &qword_2437AC820);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243797E50(a3, &qword_27ED85508, &qword_2437AC820);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24379F598(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85860, &qword_2437AD1F0);
    v1 = sub_2437ABDCC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2437A5938(v2, 1, &v4);

  return v4;
}

void sub_24379F64C()
{
  OUTLINED_FUNCTION_90();
  v48 = v1;
  v49 = v2;
  v46 = v3;
  v47 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  v44 = v7;
  OUTLINED_FUNCTION_5_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v45 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  v43 = v15;
  OUTLINED_FUNCTION_5_2();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_82_0();
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_70_0(v17);
  v32(v31, v6, v15);
  (*(v9 + 16))(v14, v46, v7);
  v33 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v34 = (v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v9 + 80) + v34 + 8) & ~*(v9 + 80);
  v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  (*(v17 + 32))(v37 + v33, v22, v43);
  *(v37 + v34) = v47;
  (*(v9 + 32))(v37 + v35, v45, v44);
  v38 = v49;
  *(v37 + v36) = v48;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

  v39 = OUTLINED_FUNCTION_46_0();
  sub_243791EA0(v39, v40, v0, v41, v37);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_24379F8F8()
{
  OUTLINED_FUNCTION_15();
  v55 = *MEMORY[0x277D85DE8];
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v5 = sub_2437AB85C();
  v0[9] = v5;
  OUTLINED_FUNCTION_5(v5);
  v0[10] = v6;
  v8 = *(v7 + 64);
  v0[11] = OUTLINED_FUNCTION_78_0();
  v0[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  v0[13] = v9;
  OUTLINED_FUNCTION_17(v9);
  v11 = *(v10 + 64);
  v0[14] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85820, &qword_2437AD1C0);
  v0[15] = v12;
  OUTLINED_FUNCTION_5(v12);
  v0[16] = v13;
  v15 = *(v14 + 64);
  v0[17] = OUTLINED_FUNCTION_43();
  v16 = sub_2437AB5BC();
  v0[18] = v16;
  OUTLINED_FUNCTION_5(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_43();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85828, &qword_2437AD1C8);
  OUTLINED_FUNCTION_17(v20);
  v22 = *(v21 + 64);
  v0[21] = OUTLINED_FUNCTION_43();
  v23 = sub_2437ABBAC();
  v0[22] = v23;
  OUTLINED_FUNCTION_5(v23);
  v0[23] = v24;
  v26 = *(v25 + 64);
  v0[24] = OUTLINED_FUNCTION_43();
  v27 = sub_2437AB52C();
  v0[25] = v27;
  OUTLINED_FUNCTION_5(v27);
  v0[26] = v28;
  v30 = *(v29 + 64);
  v0[27] = OUTLINED_FUNCTION_78_0();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v31 = sub_2437AB81C();
  v0[31] = v31;
  OUTLINED_FUNCTION_5(v31);
  v0[32] = v32;
  v34 = *(v33 + 64);
  v0[33] = OUTLINED_FUNCTION_78_0();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85830, &qword_2437AD1D0);
  v0[36] = v35;
  OUTLINED_FUNCTION_5(v35);
  v0[37] = v36;
  v38 = *(v37 + 64);
  v0[38] = OUTLINED_FUNCTION_78_0();
  v0[39] = swift_task_alloc();
  v39 = sub_2437AB84C();
  v0[40] = v39;
  OUTLINED_FUNCTION_5(v39);
  v0[41] = v40;
  v42 = *(v41 + 64);
  v0[42] = OUTLINED_FUNCTION_43();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85838, &qword_2437AD1D8);
  OUTLINED_FUNCTION_17(v43);
  v45 = *(v44 + 64);
  v0[43] = OUTLINED_FUNCTION_43();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85840, &qword_2437AD1E0);
  v0[44] = v46;
  OUTLINED_FUNCTION_5(v46);
  v0[45] = v47;
  v49 = *(v48 + 64);
  v0[46] = OUTLINED_FUNCTION_43();
  v50 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v51, v52, v53);
}

uint64_t sub_24379FD30()
{
  OUTLINED_FUNCTION_30();
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 368);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  sub_2437ABC3C();
  *(v0 + 384) = *MEMORY[0x277CFA8C8];
  *(v0 + 388) = *MEMORY[0x277CFA8C0];
  v3 = MEMORY[0x277CFA968];
  *(v0 + 392) = *MEMORY[0x277CFA970];
  *(v0 + 396) = *v3;
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 376) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_34_0(v5);
  v7 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v11, v12, v13, v14, v15);
}

uint64_t sub_24379FE44()
{
  OUTLINED_FUNCTION_15();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 376);
  v2 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_24379FF70()
{
  v374 = v0;
  v1 = v0;
  v373[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  OUTLINED_FUNCTION_10_1();
  if (v4)
  {
    v5 = (*(v0 + 360) + 8);
    v6 = (v0 + 368);
    v7 = (v0 + 352);
    goto LABEL_4;
  }

  v22 = *(v0 + 384);
  v23 = v1[41];
  v24 = OUTLINED_FUNCTION_47_0(v23);
  v25(v24);
  v26 = *(v23 + 88);
  v27 = OUTLINED_FUNCTION_58_0();
  v29 = v28(v27);
  if (v29 != v22)
  {
    if (v29 == *(v1 + 97))
    {
      v94 = v1[42];
      v95 = v1[40];
      v96 = v1[12];
      v97 = v1[9];
      v98 = v1[10];
      v99 = OUTLINED_FUNCTION_85(v1[41]);
      v100(v99);
      v101 = *(v98 + 32);
      v102 = OUTLINED_FUNCTION_12_0();
      v103(v102);
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v104 = v1[11];
      v105 = v1[12];
      v106 = v1[9];
      v107 = v1[10];
      v108 = sub_2437AB9DC();
      __swift_project_value_buffer(v108, qword_27ED861C8);
      v109 = *(v107 + 16);
      v110 = OUTLINED_FUNCTION_12_0();
      v109(v110);
      v111 = sub_2437AB9BC();
      v112 = sub_2437ABC9C();
      v113 = OUTLINED_FUNCTION_51_0(v112);
      v115 = v1[10];
      v114 = v1[11];
      v116 = v1[9];
      if (v113)
      {
        v117 = OUTLINED_FUNCTION_14_0();
        v368 = OUTLINED_FUNCTION_123();
        *v117 = 138412290;
        OUTLINED_FUNCTION_9_1();
        sub_2437A7208(v118, v119);
        OUTLINED_FUNCTION_65_0();
        v371 = v1;
        (v109)(v120, v114, v116);
        v121 = _swift_stdlib_bridgeErrorToNSError();
        v122 = *(v115 + 8);
        v123 = OUTLINED_FUNCTION_36_0();
        v122(v123);
        *(v117 + 4) = v121;
        *v368 = v121;
        v1 = v371;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
        sub_243797E50(v368, &qword_27ED85560, &qword_2437ACC80);
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_29_0();
      }

      else
      {

        v122 = *(v115 + 8);
        v177 = OUTLINED_FUNCTION_36_0();
        v122(v177);
      }

      v178 = v1[12];
      v179 = v1[9];
      v180 = v1[7];
      v181 = v1[10] + 8;
      OUTLINED_FUNCTION_9_1();
      sub_2437A7208(v182, v183);
      OUTLINED_FUNCTION_112();
      v184 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103();
      (v109)();
      v1[3] = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
      sub_2437ABC2C();
      v185 = OUTLINED_FUNCTION_26_0();
      v122(v185);
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v30 = *(v1 + 98);
  v31 = v1[42];
  v33 = v1[39];
  v32 = v1[40];
  v35 = v1[37];
  v34 = v1[38];
  v36 = v1[36];
  v37 = OUTLINED_FUNCTION_85(v1[41]);
  v38(v37);
  v39 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85848, &qword_2437AD1E8) + 48));
  v41 = *v39;
  v40 = v39[1];
  OUTLINED_FUNCTION_71_0();
  v42 = OUTLINED_FUNCTION_42();
  v43(v42);
  v44 = *(v35 + 16);
  v45 = OUTLINED_FUNCTION_25();
  v46(v45);
  v47 = *(v35 + 88);
  v48 = OUTLINED_FUNCTION_94();
  v50 = v49(v48);
  if (v50 != v30)
  {
    if (v50 == *(v1 + 99))
    {

      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v129 = v1[8];
      v130 = sub_2437AB9DC();
      OUTLINED_FUNCTION_75_0(v130, qword_27ED861C8);

      v131 = sub_2437AB9BC();
      v132 = sub_2437ABC9C();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = v1[8];
        OUTLINED_FUNCTION_14_0();
        v134 = OUTLINED_FUNCTION_73_0();
        v373[0] = v134;
        *v129 = 136315138;
        v135 = sub_2437AB7BC();
        v136 = MEMORY[0x245D3EEA0](v133, v135);
        v138 = sub_243793C54(v136, v137, v373);

        *(v129 + 4) = v138;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v139, v140, v141, v142, v143, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v134);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_29_0();
      }

      v144 = v1[39];
      v145 = v1[36];
      v146 = v1[37];
      v148 = v1[16];
      v147 = v1[17];
      v149 = v1;
      v152 = v1 + 14;
      v151 = v1[14];
      v150 = v152[1];
      v153 = v149[13];
      v154 = v149[7];
      sub_24379A874();
      *v151 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_87();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
      v1 = v149;
      sub_2437ABC1C();
      v155 = *(v148 + 8);
      v156 = OUTLINED_FUNCTION_36_0();
      v157(v156);
      v158 = *(v146 + 8);
      v159 = OUTLINED_FUNCTION_26_0();
      goto LABEL_45;
    }

LABEL_31:
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_44_0();
    v186 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_115();
    return;
  }

  v51 = v1[38];
  v53 = v1[35];
  v52 = v1[36];
  v54 = v1[31];
  v55 = v1[32];
  v56 = OUTLINED_FUNCTION_85(v1[37]);
  v57(v56);
  v58 = *(v55 + 32);
  v59 = OUTLINED_FUNCTION_12_0();
  v60(v59);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v61 = v1[34];
  v62 = v1[35];
  v63 = v1[31];
  v64 = v1[32];
  v346 = sub_2437AB9DC();
  __swift_project_value_buffer(v346, qword_27ED861C8);
  v65 = *(v64 + 16);
  v66 = OUTLINED_FUNCTION_12_0();
  v353 = v67;
  (v67)(v66);
  v68 = sub_2437AB9BC();
  v69 = sub_2437ABCAC();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v1[34];
  v73 = v1[31];
  v72 = v1[32];
  v360 = v40;
  v349 = v41;
  if (v70)
  {
    v343 = v69;
    v74 = v1[30];
    v370 = v68;
    v76 = v1[25];
    v75 = v1[26];
    v336 = v1[23];
    v333 = v1[24];
    log = v1[22];
    v77 = OUTLINED_FUNCTION_98();
    v373[0] = swift_slowAlloc();
    *v77 = 136315394;
    sub_2437AB80C();
    OUTLINED_FUNCTION_38_0();
    sub_2437A7208(v78, v79);
    v80 = sub_2437ABE1C();
    v81 = v1;
    v83 = v82;
    (*(v75 + 8))(v74, v76);
    v84 = *(v72 + 8);
    v85 = OUTLINED_FUNCTION_93();
    v367 = v86;
    v86(v85);
    v87 = sub_243793C54(v80, v83, v373);
    v1 = v81;

    *(v77 + 4) = v87;
    *(v77 + 12) = 2080;
    sub_2437ABBDC();
    OUTLINED_FUNCTION_2_1();
    sub_2437A7208(v88, v89);
    v90 = sub_2437ABE1C();
    v92 = v91;
    (*(v336 + 8))(v333, log);
    v93 = sub_243793C54(v90, v92, v373);

    *(v77 + 14) = v93;
    _os_log_impl(&dword_243789000, v370, v343, "successfully downloaded asset at %s with priority %s", v77, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {

    v162 = *(v72 + 8);
    v163 = OUTLINED_FUNCTION_93();
    v367 = v164;
    v164(v163);
  }

  v165 = v1[35];
  v166 = v1[20];
  v167 = v1[6];
  sub_2437AB7DC();
  if (*(v167 + 16))
  {
    v168 = v1[6];
    v169 = sub_2437A5E74(v1[20]);
    v170 = v1[21];
    if (v171)
    {
      v172 = v169;
      v173 = *(v1[6] + 56);
      v174 = sub_2437AB7BC();
      (*(*(v174 - 8) + 16))(v170, v173 + *(*(v174 - 8) + 72) * v172, v174);
      v175 = v170;
      v176 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v170 = v1[21];
  }

  v174 = sub_2437AB7BC();
  v175 = v170;
  v176 = 1;
LABEL_34:
  __swift_storeEnumTagSinglePayload(v175, v176, 1, v174);
  v187 = v1[21];
  (*(v1[19] + 8))(v1[20], v1[18]);
  sub_2437AB7BC();
  OUTLINED_FUNCTION_95();
  if (v4)
  {
    v188 = v1[21];
    v190 = v1[16];
    v189 = v1[17];
    v192 = v1[14];
    v191 = v1[15];
    v193 = v1[13];
    v194 = v1[7];

    sub_243797E50(v188, &qword_27ED85828, &qword_2437AD1C8);
    sub_24379A874();
    *v192 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36_0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
    OUTLINED_FUNCTION_113();
    sub_2437ABC1C();
    v195 = *(v190 + 8);
    v196 = OUTLINED_FUNCTION_26_0();
    v197(v196);
    v198 = sub_2437AB9BC();
    v199 = sub_2437ABC9C();
    v200 = os_log_type_enabled(v198, v199);
    v201 = v1[45];
    v202 = v1[39];
    v203 = v1[36];
    v204 = v1[37];
    v205 = v1[35];
    v206 = v1;
    v207 = v1[32];
    v208 = v206[31];
    if (v200)
    {
      v209 = OUTLINED_FUNCTION_122();
      *v209 = 0;
      _os_log_impl(&dword_243789000, v198, v199, "invalid request id", v209, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v210 = OUTLINED_FUNCTION_36_0();
    v367(v210);
    v250 = *(v204 + 8);
    v251 = OUTLINED_FUNCTION_28();
    v252(v251);
    v5 = (v201 + 8);
    v6 = v206 + 46;
    v7 = v206 + 44;
    v1 = v206;
LABEL_4:
    v8 = *v6;
    v9 = v1[46];
    v10 = v1[42];
    v11 = v1[43];
    v13 = v1[38];
    v12 = v1[39];
    v15 = v1[34];
    v14 = v1[35];
    v16 = v1;
    v17 = v1[33];
    v18 = v16[30];
    v339 = v16[29];
    v342 = v16[28];
    v345 = v16[27];
    v348 = v16[24];
    v352 = v16[21];
    v356 = v16[20];
    v359 = v16[17];
    v364 = v16[14];
    v366 = v16[12];
    v369 = v16[11];
    (*v5)(v8, *v7);

    OUTLINED_FUNCTION_14();
    v19 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  v211 = v1[35];
  v212 = v1[33];
  v213 = v1[31];
  v214 = v1[29];
  v372 = v1;
  v215 = v1[28];
  v216 = v372[27];
  v217 = v372[26];
  v218 = v372[25];
  v219 = v372[21];
  sub_2437AB7AC();
  v220 = *(*(v174 - 8) + 8);
  v221 = OUTLINED_FUNCTION_28();
  v222(v221);
  v223 = *(v217 + 32);
  v224 = OUTLINED_FUNCTION_104();
  v225 = v372;
  v226(v224);
  v353(v212, v211, v213);
  (*(v217 + 16))(v216, v214, v218);
  v227 = sub_2437AB9BC();
  v228 = sub_2437ABCAC();
  v229 = os_log_type_enabled(v227, v228);
  v230 = v372[32];
  v231 = v372[33];
  v232 = v372[31];
  if (v229)
  {
    v233 = v372[30];
    v337 = v372[27];
    v234 = v372[25];
    v235 = v372[26];
    v236 = OUTLINED_FUNCTION_98();
    v373[0] = swift_slowAlloc();
    *v236 = 136315394;
    v340 = v228;
    sub_2437AB80C();
    OUTLINED_FUNCTION_38_0();
    sub_2437A7208(v237, v238);
    v239 = sub_2437ABE1C();
    v241 = v240;
    v242 = *(v235 + 8);
    v243 = OUTLINED_FUNCTION_26_0();
    v242(v243);
    v244 = OUTLINED_FUNCTION_36_0();
    v367(v244);
    v245 = sub_243793C54(v239, v241, v373);
    v225 = v372;

    *(v236 + 4) = v245;
    *(v236 + 12) = 2080;
    sub_2437ABE1C();
    (v242)(v337, v234);
    v246 = OUTLINED_FUNCTION_28();
    v249 = sub_243793C54(v246, v247, v248);

    *(v236 + 14) = v249;
    _os_log_impl(&dword_243789000, v227, v340, "moving file from %s to %s", v236, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
    v254 = v372[26];
    v253 = v372[27];
    v255 = v372[25];

    v256 = *(v254 + 8);
    v234 = v254 + 8;
    v242 = v256;
    v257 = OUTLINED_FUNCTION_28();
    v256(v257);
    v258 = OUTLINED_FUNCTION_36_0();
    v367(v258);
  }

  sub_2437ABACC();
  v259 = sandbox_extension_consume();

  v344 = v242;
  if (v259 < 0)
  {

    v293 = sub_2437AB9BC();
    v294 = sub_2437ABC9C();

    if (os_log_type_enabled(v293, v294))
    {
      OUTLINED_FUNCTION_14_0();
      v295 = OUTLINED_FUNCTION_73_0();
      v373[0] = v295;
      *v234 = 136315138;
      v296 = sub_243793C54(v349, v360, v373);

      *(v234 + 4) = v296;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v297, v298, v299, v300, v301, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v295);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_29_0();
    }

    else
    {
    }

    v312 = v225[45];
    v363 = v225[44];
    v365 = v225[46];
    v313 = v225[37];
    v355 = v225[36];
    v358 = v225[39];
    v314 = v225;
    v315 = v225[35];
    v316 = v314[31];
    v317 = v314[25];
    v318 = v314[26] + 8;
    v319 = v314[32] + 8;
    v320 = v314[29];
    sub_24379A874();
    v310 = OUTLINED_FUNCTION_65_0();
    swift_willThrow();
    v344(v320, v317);
    v321 = OUTLINED_FUNCTION_62_0();
    v367(v321);
    (*(v313 + 8))(v358, v355);
    (*(v312 + 8))(v365, v363);
    goto LABEL_54;
  }

  v260 = v225[35];
  v262 = v225[29];
  v261 = v225[30];
  v264 = v225[25];
  v263 = v225[26];

  v265 = [objc_opt_self() defaultManager];
  sub_2437AB80C();
  v266 = sub_2437AB4DC();
  v267 = OUTLINED_FUNCTION_64_0();
  v242(v267);
  v268 = sub_2437AB4DC();
  v372[4] = 0;
  LODWORD(v261) = [v265 moveItemAtURL:v266 toURL:v268 error:v372 + 4];

  v269 = v372[4];
  if (!v261)
  {
    v302 = v372[45];
    v357 = v372[44];
    v362 = v372[46];
    v303 = v372[37];
    v351 = v372[36];
    v354 = v372[39];
    v304 = v372[35];
    v305 = v372[31];
    v306 = v372[29];
    v307 = v372[32] + 8;
    v308 = v372[25];
    v309 = v269;
    v310 = sub_2437AB4BC();

    swift_willThrow();
    v344(v306, v308);
    v311 = OUTLINED_FUNCTION_62_0();
    v367(v311);
    (*(v303 + 8))(v354, v351);
    (*(v302 + 8))(v362, v357);
LABEL_54:
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    OUTLINED_FUNCTION_75_0(v346, qword_27ED861C8);
    v322 = v310;
    v323 = sub_2437AB9BC();
    v324 = sub_2437ABC9C();

    v1 = v372;
    if (os_log_type_enabled(v323, v324))
    {
      v325 = OUTLINED_FUNCTION_14_0();
      v326 = OUTLINED_FUNCTION_123();
      *v325 = 138412290;
      v327 = v310;
      v328 = _swift_stdlib_bridgeErrorToNSError();
      *(v325 + 4) = v328;
      *v326 = v328;
      _os_log_impl(&dword_243789000, v323, v324, "failed to process requests due to error %@", v325, 0xCu);
      sub_243797E50(v326, &qword_27ED85560, &qword_2437ACC80);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_10_0();
    }

    v6 = v372 + 17;
    v329 = v372[17];
    v331 = v372[13];
    v330 = v372[14];
    v332 = v372[7];

    sub_24379A874();
    *v330 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_26_0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
    sub_2437ABC1C();

    v7 = v372 + 15;
    v5 = (v372[16] + 8);
    goto LABEL_4;
  }

  v361 = v372[39];
  v270 = v372[37];
  v271 = v372[35];
  v272 = v372[31];
  v347 = v372[29];
  v350 = v372[36];
  v341 = v372[25];
  v273 = v372[16];
  v274 = v372[17];
  v275 = v372[14];
  loga = v372[15];
  v276 = v372[13];
  v338 = v372[32] + 8;
  v277 = v372[7];
  v278 = OUTLINED_FUNCTION_94();
  (v353)(v278);
  v1 = v372;
  swift_storeEnumTagMultiPayload();
  v279 = v269;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  sub_2437ABC1C();
  (*(v273 + 8))(v274, loga);
  sandbox_extension_release();
  v344(v347, v341);
  v280 = OUTLINED_FUNCTION_36_0();
  v367(v280);
  v161 = *(v270 + 8);
  v159 = v361;
  v160 = v350;
LABEL_45:
  v161(v159, v160);
LABEL_46:
  v281 = *(MEMORY[0x277D858B8] + 4);
  v282 = swift_task_alloc();
  v1[47] = v282;
  *v282 = v1;
  OUTLINED_FUNCTION_34_0();
  v283 = v1[46];
  v284 = v1[43];
  v285 = v1[44];
  v286 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115();

  MEMORY[0x2822005A8](v287, v288, v289, v290, v291);
}