void sub_18BAF6EA0(uint64_t a1)
{
  v2 = v1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v76);
  v5 = &v64 - v4;
  v6 = _s4ItemVMa_2();
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4PageVMa_0();
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v64 - v11;
  v12 = sub_18BA23330();
  v13 = v12;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v12 + 56);
  v18 = (v15 + 63) >> 6;
  v82 = "quickTabSwitcherItem";
  sub_18BC1E3F8();
  v19 = 0;
  v78 = v18;
  v79 = v14;
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_9:
  while (1)
  {
    v21 = v80;
    sub_18B7DF638(*(v13 + 48) + *(v81 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v80, _s4PageVMa_0);
    v22 = sub_18B82FE24(v21, v83, _s4PageVMa_0);
    v23 = sub_18B7C5C10(v22);
    sub_18B7C9974();
    v25 = v24;

    v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x98);
    swift_beginAccess();
    v27 = *(v25 + v26);
    if (!*(v27 + 16))
    {
      break;
    }

    sub_18BC1E3F8();
    v28 = sub_18B7C4104(0xD000000000000017, v82 | 0x8000000000000000);
    if ((v29 & 1) == 0)
    {
      goto LABEL_48;
    }

    v17 &= v17 - 1;
    v30 = *(*(v27 + 56) + 8 * v28);
    sub_18BC1E1A8();

    swift_beginAccess();
    v31 = *(v30 + 32);
    if (*(v31 + 16))
    {
      sub_18BC1E3F8();
      v32 = sub_18B8629FC(v83);
      if (v33)
      {
        v34 = *(*(v31 + 56) + 16 * v32);

        v25 = v34;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v35 = v34 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          v68 = v13;
          v69 = a1;
          v36 = sub_18BA236B4(v83);
          v67 = v25;
          v37 = sub_18B82FEA0();
          v38 = v37;
          v39 = v36 + 56;
          v40 = 1 << *(v36 + 32);
          if (v40 < 64)
          {
            v41 = ~(-1 << v40);
          }

          else
          {
            v41 = -1;
          }

          v42 = v41 & *(v36 + 56);
          v43 = *((*MEMORY[0x1E69E7D40] & *v37) + 0x150);
          sub_18BC1E3F8();
          v77 = v38;
          v73 = v43;
          swift_beginAccess();
          v44 = 0;
          v45 = (v40 + 63) >> 6;
          v70 = v45;
          v72 = v5;
          v71 = v36 + 56;
          while (v42)
          {
LABEL_27:
            v47 = v74;
            sub_18B7DF638(*(v36 + 48) + *(v75 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v74, _s4ItemVMa_2);
            sub_18B82FE24(v47, v5, _s4ItemVMa_2);
            swift_storeEnumTagMultiPayload();
            v48 = *&v77[v73];
            if (!*(v48 + 16))
            {
              goto LABEL_42;
            }

            sub_18BC1E3F8();
            v49 = sub_18B83B1C8(v5);
            if ((v50 & 1) == 0)
            {

LABEL_42:

              sub_18B988BAC(v5, &unk_1EA9D92F0);
LABEL_43:
              sub_18B7DFF64(v83, _s4PageVMa_0);

              a1 = v69;
              v13 = v68;
              goto LABEL_38;
            }

            v51 = *(*(v48 + 56) + 8 * v49);
            sub_18BC1E1A8();
            sub_18B988BAC(v5, &unk_1EA9D92F0);

            v52 = *(v51 + *(*v51 + 224));
            v53 = *(v52 + 24);
            v54 = __OFSUB__(v53, 1);
            v55 = v53 - 1;
            if (v54)
            {
              goto LABEL_47;
            }

            *(v52 + 24) = v55;
            if (!v55)
            {
              swift_beginAccess();
              v56 = *(*(v52 + 16) + 16);
              if (v56)
              {
                v65 = v36;
                v66 = v2;
                v64 = sub_18BC1E3F8();
                v57 = v64 + 40;
                do
                {
                  v58 = *(v57 - 8);
                  v84 = *(v52 + 24) > 0;
                  sub_18BC1E1A8();
                  v58(&v84);

                  v57 += 16;
                  --v56;
                }

                while (v56);

                v2 = v66;
                v36 = v65;
              }
            }

            v42 &= v42 - 1;

            v5 = v72;
            v39 = v71;
            v45 = v70;
          }

          while (1)
          {
            v46 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v46 >= v45)
            {

              v59 = v77;
              sub_18BB092E0();

              goto LABEL_43;
            }

            v42 = *(v39 + 8 * v46);
            ++v44;
            if (v42)
            {
              v44 = v46;
              goto LABEL_27;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:

          break;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    sub_18B7DFF64(v83, _s4PageVMa_0);
LABEL_38:
    v18 = v78;
    v14 = v79;
    if (!v17)
    {
LABEL_5:
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          v61 = sub_18B7C5C10(v60);
          sub_18B7C9974();
          v63 = v62;

          sub_18BBE9FEC(v13, 0xD000000000000017, v82 | 0x8000000000000000);

          return;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

void *sub_18BAF7698(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v122 = a5;
  v121 = a4;
  v126 = a3;
  v132 = a2;
  v129 = a1;
  v118 = sub_18BC208F8();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v115 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_18BC20928();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v113 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v130);
  v119 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v133 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MoveItemsIntentVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v131 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v127 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = v107 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v107 - v20;
  v22 = _s4PageVMa();
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v120 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v134 = v107 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v135 = v107 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v124 = v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v107 - v32;
  v34 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  v123 = v34;
  sub_18B7CA054(&v5[v34], v33, &qword_1EA9D5348);
  v125 = v13;
  LODWORD(v13) = (*(v13 + 48))(v33, 1, v12);
  result = sub_18B988BAC(v33, &qword_1EA9D5348);
  if (v13 == 1)
  {
    sub_18BB068E4(v21);
    v38 = *(v23 + 48);
    v37 = v23 + 48;
    v36 = v38;
    if ((v38)(v21, 1, v22) == 1)
    {
      return sub_18B988BAC(v21, &qword_1EA9D52E0);
    }

    v112 = v12;
    sub_18B82FE24(v21, v135, _s4PageVMa);
    v39 = v132;
    v111 = v37;
    v110 = v36;
    v40 = (v36)(v132, 1, v22);
    v41 = v133;
    v42 = v134;
    if (v40 != 1)
    {
LABEL_13:
      v52 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      v109 = v6;
      sub_18B7DF638(&v6[v52], v41, _s7ContentVMa);
      v53 = v128;
      sub_18B7CA054(v39, v128, &qword_1EA9D52E0);
      sub_18B7DF638(v135, v42, _s4PageVMa);
      v54 = v112;
      v55 = v131;
      v56 = &v131[v112[7]];
      *v56 = 0;
      *(v56 + 1) = 0;
      v108 = v54[8];
      v57 = MEMORY[0x1E69E7CC0];
      v107[1] = sub_18BA6560C(MEMORY[0x1E69E7CC0]);
      v58 = v54[10];
      sub_18BA651DC(v57);
      sub_18B7DF638(v42, v55 + v54[5], _s4PageVMa);
      v59 = sub_18BA23FDC(v129, v41, v53);
      v61 = v60;
      v63 = v62;
      sub_18BC1E3F8();

      *(v55 + v54[6]) = v59;
      *(v55 + v58) = v61;
      v64 = sub_18BA24914(v59, v63);

      *(v55 + v54[9]) = v64;
      v132 = v64;
      sub_18BC1E3F8();
      v65 = sub_18BA25154(v59, v41);

      *(v55 + v108) = v65;
      v66 = v127;
      sub_18B7CA054(v53, v127, &qword_1EA9D52E0);
      if ((v110)(v66, 1, v22) == 1)
      {
        sub_18B988BAC(v66, &qword_1EA9D52E0);
        v68 = v41[2];
        v67 = v41[3];
        v69 = v41[5];
        v129 = v41[4];
        v127 = v69;
        sub_18B82B844(v68, v67, v129, v69);
        sub_18BC1DE28();
        sub_18B7DFF64(v134, _s4PageVMa);
        sub_18B988BAC(v53, &qword_1EA9D52E0);
        sub_18B7DFF64(v41, _s7ContentVMa);
        *v55 = 257;
        *(v55 + v22[9]) = 0;
        *(v55 + v22[10]) = 0;
        *(v55 + v22[11]) = 0;
        *(v55 + v22[12]) = 1;
        *(v55 + v22[13]) = 1;
        *(v55 + v22[14]) = xmmword_18BC42B60;
        *(v55 + v22[15]) = 3;
        v70 = (v55 + v22[16]);
        *v70 = v68;
        v70[1] = v67;
        v71 = v127;
        v70[2] = v129;
        v70[3] = v71;
        *(v55 + v22[17]) = v132;
        v72 = v55 + v22[18];
        *v72 = 0u;
        *(v72 + 1) = 0u;
        *(v72 + 4) = CGRectMake;
        *(v72 + 5) = 0;
        v73 = (v55 + v22[19]);
        v74 = v122;
        *v73 = v121;
        v73[1] = v74;
        swift_storeEnumTagMultiPayload();
        sub_18BC1E3F8();
      }

      else
      {
        sub_18B7DFF64(v134, _s4PageVMa);
        sub_18B988BAC(v53, &qword_1EA9D52E0);
        sub_18B7DFF64(v41, _s7ContentVMa);
        v75 = v120;
        sub_18B82FE24(v66, v120, _s4PageVMa);
        v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338) + 48);
        sub_18B82FE24(v75, v55, _s4PageVMa);
        *(v55 + v76) = v132;
        swift_storeEnumTagMultiPayload();
      }

      v77 = v59[2];
      v78 = v109;
      v79 = v112;
      if (!v77)
      {
        goto LABEL_27;
      }

      v80 = v124;
      sub_18B7DF638(v55, v124, _s15MoveItemsIntentVMa);
      (*(v125 + 56))(v80, 0, 1, v79);
      v81 = v123;
      swift_beginAccess();
      sub_18B7FD070(v80, &v78[v81], &qword_1EA9D5348);
      swift_endAccess();
      v82 = sub_18B833A74();
      v83 = sub_18B7C5C10(v82);
      sub_18B7C9974();
      v85 = v84;

      [v85 layoutIfNeeded];
      v86 = *&v78[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem];
      sub_18B7C9974();
      v88 = v87;

      v89 = sub_18B7CEA3C();
      if (v89)
      {
        result = sub_18B82FEA0();
        v90 = MEMORY[0x1E69E7D40];
        v91 = *(result + *((*MEMORY[0x1E69E7D40] & *result) + 0xF0));
        if (!v91)
        {
          __break(1u);
          return result;
        }

        v92 = result;
        v93 = v91;
        v94 = [v93 menuAppearance];

        if (v94)
        {
          *(v92 + *((*v90 & *v92) + 0x140)) = 1;
        }
      }

      if (v126)
      {
        v95 = v119;
        sub_18B7DF638(v55, v119, _s15MoveItemsIntentV11DestinationOMa);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);

          sub_18B7DFF64(v95, _s4PageVMa);
          v98 = swift_allocObject();
          *(v98 + 16) = 0;
          *(v98 + 24) = v78;
          v99 = v78;
          sub_18BAF8EB0(0, 0, sub_18BB10EC8, v98);

          sub_18B7B0AC0(0, &unk_1EA9D3A90);
          v100 = sub_18BC21348();
          v101 = swift_allocObject();
          *(v101 + 16) = v99;
          aBlock[4] = sub_18BB10ED4;
          aBlock[5] = v101;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_18B7B0DB0;
          aBlock[3] = &block_descriptor_471_0;
          v102 = _Block_copy(aBlock);
          v103 = v99;

          v104 = v113;
          sub_18BC20908();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_18B82AD34(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
          sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
          v105 = v115;
          v106 = v118;
          sub_18BC21908();
          MEMORY[0x18CFFC850](0, v104, v105, v102);
          _Block_release(v102);

          (*(v117 + 8))(v105, v106);
          (*(v114 + 8))(v104, v116);
          goto LABEL_27;
        }

        sub_18B7DFF64(v95, _s15MoveItemsIntentV11DestinationOMa);
      }

      v96 = swift_allocObject();
      *(v96 + 16) = 1;
      *(v96 + 24) = v78;
      v97 = v78;
      sub_18BAF8EB0(0, 1, sub_18BB10EC8, v96);

LABEL_27:
      sub_18B7DFF64(v135, _s4PageVMa);
      return sub_18B7DFF64(v55, _s15MoveItemsIntentVMa);
    }

    v43 = *&v6[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivePageInsertionIsDisabledAssertion];
    v44 = *(v43 + 24);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      *(v43 + 24) = v46;
      if (v46 == 1)
      {
        swift_beginAccess();
        v47 = *(v43 + 16);
        v48 = *(v47 + 16);
        if (v48)
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          v49 = v47 + 40;
          do
          {
            v50 = *(v49 - 8);
            LOBYTE(aBlock[0]) = *(v43 + 24) > 0;
            sub_18BC1E1A8();
            v50(aBlock);

            v49 += 16;
            --v48;
          }

          while (v48);

          v42 = v134;
        }
      }

      v51 = qword_1EA9D2200;
      v36 = v6;
      if (v51 == -1)
      {
        goto LABEL_12;
      }
    }

    swift_once();
LABEL_12:
    sub_18BB0DCB4(qword_1EA9F7A90, v36, v36, sub_18B9EB460, sub_18B9EB538);

    goto LABEL_13;
  }

  return result;
}

void sub_18BAF866C(char a1, void *a2)
{
  v4 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &aBlock[-1] - v8;
  v10 = _s15MoveItemsIntentVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &aBlock[-1] - v15;
  if (a1)
  {
    v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
    swift_beginAccess();
    sub_18B7CA054(a2 + v17, v9, &qword_1EA9D5348);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_18B988BAC(v9, &qword_1EA9D5348);
      return;
    }

    sub_18B82FE24(v9, v16, _s15MoveItemsIntentVMa);
    sub_18B7DF638(v16, v6, _s15MoveItemsIntentV11DestinationOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_18B7DFF64(v16, _s15MoveItemsIntentVMa);
      v18 = _s15MoveItemsIntentV11DestinationOMa;
      v19 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);

      sub_18B7DFF64(v6, _s4PageVMa);
      sub_18B7DF638(v16, v13, _s15MoveItemsIntentVMa);
      v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = a2;
      sub_18B82FE24(v13, v21 + v20, _s15MoveItemsIntentVMa);
      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_18BB116CC;
      *(v23 + 24) = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_18B9D53AC;
      *(v24 + 24) = v23;
      aBlock[4] = sub_18B9D53B0;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B7E3BF4;
      aBlock[3] = &block_descriptor_489;
      v25 = _Block_copy(aBlock);
      v26 = a2;
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v22 performWithoutAnimation_];
      _Block_release(v25);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return;
      }

      v18 = _s15MoveItemsIntentVMa;
      v19 = v16;
    }

    sub_18B7DFF64(v19, v18);
  }
}

uint64_t sub_18BAF8B00(void *a1)
{
  v2 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = _s15MoveItemsIntentVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v21 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  sub_18B7CA054(a1 + v14, v7, &qword_1EA9D5348);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_18B988BAC(v7, &qword_1EA9D5348);
  }

  sub_18B82FE24(v7, v13, _s15MoveItemsIntentVMa);
  sub_18B7DF638(v13, v4, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18B7DFF64(v13, _s15MoveItemsIntentVMa);
    return sub_18B7DFF64(v4, _s15MoveItemsIntentV11DestinationOMa);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);

    sub_18B7DFF64(v4, _s4PageVMa);
    v16 = v21;
    sub_18B7DF638(v13, v21, _s15MoveItemsIntentVMa);
    v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    sub_18B82FE24(v16, v18 + v17, _s15MoveItemsIntentVMa);
    v19 = qword_1EA9D2200;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    sub_18BAF421C(qword_1EA9F7A90, sub_18BB10EDC, v18);
    sub_18B7DFF64(v13, _s15MoveItemsIntentVMa);
  }
}

id sub_18BAF8EB0(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v244 = a3;
  v245 = a4;
  v258 = a2;
  v266 = a1;
  v5 = sub_18BC208F8();
  v253 = *(v5 - 8);
  v254 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v251 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_18BC20928();
  v250 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v249 = &v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_18BC20948();
  v248 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v247 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v257 = &v234 - v10;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9320);
  MEMORY[0x1EEE9AC00](v281);
  v288 = &v234 - v11;
  v12 = _s4ItemVMa();
  v274 = *(v12 - 8);
  v275 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v284 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v264 = &v234 - v15;
  v272 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v272);
  v285 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v271 = &v234 - v18;
  v19 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v270 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v262 = &v234 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v286 = &v234 - v24;
  v263 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v263);
  v243 = &v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v255 = &v234 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v234 - v29;
  v31 = _s4PageVMa();
  v269 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v287 = &v234 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v260 = &v234 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v234 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v234 - v39;
  v41 = _s15MoveItemsIntentVMa(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v240 = &v234 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v241 = v46;
  v242 = &v234 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v234 - v48;
  v50 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  sub_18B7CA054(&v50[v4], v40, &qword_1EA9D5348);
  v246 = v42;
  v51 = *(v42 + 48);
  v289 = v41;
  if (v51(v40, 1, v41) == 1)
  {
    return sub_18B988BAC(v40, &qword_1EA9D5348);
  }

  sub_18B82FE24(v40, v49, _s15MoveItemsIntentVMa);
  v53 = sub_18BAF5BA8(v49);
  v267 = v4;
  v54 = sub_18B7C5C10(v53);
  sub_18B7C9974();
  v56 = v55;

  v290 = v49;
  sub_18B7DF638(v49, v30, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
  }

  sub_18B82FE24(v30, v37, _s4PageVMa);
  v57 = v286;
  sub_18B827328(v286);
  sub_18B7DFF64(v37, _s4PageVMa);
  v280 = "quickTabSwitcherItem";
  v58 = sub_18B862854(v57, 0xD000000000000017, 0x800000018BC60750);

  sub_18B7DFF64(v57, _s4PageVMa_0);
  v59 = v290;
  v60 = v275;
  if (!v58)
  {
LABEL_44:
    v170 = v59;
    return sub_18B7DFF64(v170, _s15MoveItemsIntentVMa);
  }

  swift_getObjectType();
  v273 = &protocol descriptor for TabOverviewSwitcherPageViewProtocol;
  v61 = swift_conformsToProtocol2();
  if (v61)
  {
    v62 = v58;
  }

  else
  {
    v62 = 0;
  }

  v261 = v62;
  if (!v61)
  {

    goto LABEL_44;
  }

  v235 = v58;
  v63 = *(v59 + *(v289 + 24));
  if (!*(v63 + 16))
  {
    goto LABEL_87;
  }

  v277 = v63 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
  v64 = v264;
  sub_18B7DF638(v277, v264, _s4ItemVMa);
  LODWORD(v286) = *v64;
  v65 = *(v60 + 7);
  v66 = v272;
  v67 = *(v272 + 20);
  v68 = sub_18BC1EC08();
  v69 = *(v68 - 8);
  v70 = v271;
  v282 = *(v69 + 16);
  v283 = v68;
  v268 = v69 + 16;
  v282(&v271[v67], &v64[v65]);
  v71 = v64[*(v60 + 9)];
  LODWORD(v265) = v64[*(v60 + 10)];
  v72 = *(v60 + 12);
  LODWORD(v276) = v64[*(v60 + 11)];
  v73 = *&v64[v72];
  v278 = v63;
  v279 = v73;
  v74 = &v64[*(v60 + 13)];
  v76 = *v74;
  v75 = *(v74 + 1);
  v77 = *&v64[*(v60 + 14)];
  v78 = *(v60 + 15);
  v79 = v66;
  v80 = &v64[v78];
  v82 = *v80;
  v81 = *(v80 + 1);
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18B7DFF64(v64, _s4ItemVMa);
  *v70 = v286;
  v70[v79[6]] = v71;
  v70[v79[7]] = v265;
  v70[v79[8]] = 0;
  v70[v79[9]] = v276;
  *&v70[v79[10]] = v279;
  v83 = &v70[v79[11]];
  *v83 = v76;
  v83[1] = v75;
  v84 = v278;
  *&v70[v79[12]] = v77;
  v85 = &v70[v79[13]];
  *v85 = v82;
  v85[1] = v81;
  sub_18B7DF638(v70, v285, _s4ItemVMa_2);
  sub_18B82AD34(&qword_1EA9D9230, _s4ItemVMa_2);
  sub_18BC21A68();
  sub_18B7DFF64(v70, _s4ItemVMa_2);
  sub_18B7F44EC(&v299, &v308 + 8);
  *&v311 = 0x767265764F626174;
  *(&v311 + 1) = 0xEF6D657449776569;
  v86 = MEMORY[0x1E69E7CC0];
  *&v308 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
  v293 = &_s18ItemScrollPositionON;
  *&v291 = 256;
  BYTE8(v291) = 0;
  sub_18B7B1AD4(&v291, &v296);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v317 = v308;
  sub_18BAA7848(&v296, 0xD000000000000012, 0x800000018BC62780, isUniquelyReferenced_nonNull_native);
  sub_18B831014(&v299);
  *&v308 = v317;
  *&v301 = 0;
  v299 = 0u;
  v300 = 0u;
  v88 = v235;
  sub_18B861588(&v308, &v299);
  sub_18B988BAC(&v299, &unk_1EA9D5060);
  sub_18B8303BC(&v308);
  [v88 layoutIfNeeded];
  v89 = *(v84 + 16);
  v239 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem;
  v276 = v89;
  if (!v89)
  {
    v285 = v86;
LABEL_46:
    if (v266)
    {
      v171 = v290;
      v172 = v260;
      sub_18B7DF638(&v290[*(v289 + 20)], v260, _s4PageVMa);
      v173 = v262;
      v174 = v235;
    }

    else
    {
      v171 = v290;
      v175 = v255;
      sub_18B7DF638(v290, v255, _s15MoveItemsIntentV11DestinationOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v173 = v262;
      v174 = v235;
      v172 = v260;
      if (EnumCaseMultiPayload != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
      }

      sub_18B82FE24(v175, v172, _s4PageVMa);
    }

    sub_18B827328(v173);
    sub_18B7DFF64(v172, _s4PageVMa);
    v177 = *&v267[v239];
    sub_18B7C9974();
    v179 = v178;

    v180 = sub_18B862854(v173, 0xD000000000000017, v280 | 0x8000000000000000);
    if (v180)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        result = [v267 view];
        if (result)
        {
          v181 = result;
          v182 = v180;
          v183 = v285;
          sub_18BC1E3F8();
          sub_18BB0DE94(v181, v182, v183, &v299);

          v184 = swift_allocObject();
          v185 = v300;
          v184[1] = v299;
          v184[2] = v185;
          v184[3] = v301;
          type metadata accessor for MatchMoveTransition();
          swift_allocObject();
          sub_18BB10D40(&v299, &v308);
          v50 = sub_18BA003CC(v183, sub_18BB10D18, v184);

          v288 = v182;
          v289 = v50;
          if (v258)
          {
            v186 = *&v267[v239];
            sub_18B7C9974();
            v188 = v187;

            v189 = sub_18BA53320(v173);
            v191 = v190;

            if (v189)
            {
              v192 = *(&v300 + 1);
              v193 = *(&v301 + 1);
              if (qword_1EA9D24A0 != -1)
              {
                swift_once();
              }

              v194 = qword_1EA9F8388;
              v195 = *&dword_1EA9F8390;
              sub_18BB10D9C(&v299);
              type metadata accessor for AnimationSettings();
              v196 = swift_allocObject();
              *(v196 + 16) = v194;
              *(v196 + 24) = v195;
              *(v196 + 32) = 0;
              *(v196 + 40) = v192;
              *(v196 + 48) = v193;
              *(v196 + 56) = 0u;
              *(v196 + 72) = 0u;
              *(v196 + 88) = 1;
              *(v196 + 104) = 0;
              *(v196 + 112) = 0;
              *(v196 + 96) = 0;
              if (qword_1EA9D24E0 != -1)
              {
                swift_once();
              }

              v197 = qword_1EA9F83F8;
              swift_beginAccess();
              v198 = *(v50 + 5);
              swift_unknownObjectRetain();
              sub_18BC1E1A8();
              sub_18BC1E1A8();
              v199 = swift_isUniquelyReferenced_nonNull_native();
              *(v50 + 5) = v198;
              if ((v199 & 1) == 0)
              {
                v198 = sub_18B9B5B34(0, *(v198 + 2) + 1, 1, v198);
                *(v50 + 5) = v198;
              }

              v201 = *(v198 + 2);
              v200 = *(v198 + 3);
              if (v201 >= v200 >> 1)
              {
                v198 = sub_18B9B5B34((v200 > 1), v201 + 1, 1, v198);
              }

              *(v198 + 2) = v201 + 1;
              v202 = &v198[32 * v201];
              *(v202 + 4) = v189;
              *(v202 + 5) = v191;
              *(v202 + 6) = v197;
              *(v202 + 7) = v196;
              v50 = v289;
              *(v289 + 40) = v198;
              swift_endAccess();
              swift_unknownObjectRelease();
            }

            else
            {
              sub_18BB10D9C(&v299);
            }

            v171 = v290;
          }

          else
          {
            sub_18BB10D9C(&v299);
          }

          v203 = v246;
          v204 = v242;
          sub_18B7DF638(v171, v242, _s15MoveItemsIntentVMa);
          v49 = ((*(v203 + 80) + 24) & ~*(v203 + 80));
          v287 = &v49[v241];
          v205 = &v49[v241 + 7] & 0xFFFFFFFFFFFFFFF8;
          v206 = swift_allocObject();
          v207 = v267;
          *(v206 + 16) = v267;
          sub_18B82FE24(v204, &v49[v206], _s15MoveItemsIntentVMa);
          v208 = (v206 + v205);
          v210 = v244;
          v209 = v245;
          *v208 = v244;
          v208[1] = v209;
          v37 = swift_allocObject();
          *(v37 + 2) = sub_18BB10DF0;
          *(v37 + 3) = v206;
          swift_beginAccess();
          v60 = *(v50 + 6);
          v56 = v207;
          sub_18B824D48(v210);
          sub_18BC1E1A8();
          v211 = swift_isUniquelyReferenced_nonNull_native();
          *(v50 + 6) = v60;
          if ((v211 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_72;
        }

        __break(1u);
        return result;
      }

      sub_18B7DFF64(v173, _s4PageVMa_0);
    }

    else
    {
      sub_18B7DFF64(v173, _s4PageVMa_0);
    }

    v170 = v171;
    return sub_18B7DFF64(v170, _s15MoveItemsIntentVMa);
  }

  v90 = 0;
  v49 = &v299;
  v285 = MEMORY[0x1E69E7CC0];
  v237 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabIconPool;
  v238 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabSnapshotPool;
  v236 = xmmword_18BC3E3E0;
  v60 = v274;
  v37 = v284;
  v50 = v269;
  v56 = v270;
  while (v90 < *(v84 + 16))
  {
    v91 = v60[9];
    v92 = v277 + v91 * v90;
    v93 = *(v281 + 48);
    v94 = v288;
    v95 = &v288[v93];
    v286 = v90;
    *v288 = v90;
    sub_18B7DF638(v92, &v94[v93], _s4ItemVMa);
    v96 = *&v290[*(v289 + 32)];
    if (!*(v96 + 16))
    {
      goto LABEL_83;
    }

    v97 = sub_18BB8B29C(v95);
    if ((v98 & 1) == 0)
    {
      goto LABEL_84;
    }

    sub_18B7DF638(*(v96 + 56) + v97 * v91, v37, _s4ItemVMa);
    v99 = *&v290[*(v289 + 40)];
    if (!*(v99 + 16))
    {
      goto LABEL_85;
    }

    v100 = sub_18BB8B29C(v95);
    if ((v101 & 1) == 0)
    {
      goto LABEL_86;
    }

    v102 = sub_18B7DF638(*(v99 + 56) + *(v50 + 9) * v100, v287, _s4PageVMa);
    v103 = sub_18B7C5C10(v102);
    sub_18B7C9974();
    v105 = v104;

    sub_18B827328(v56);
    v106 = sub_18B862854(v56, 0xD000000000000017, v280 | 0x8000000000000000);

    sub_18B7DFF64(v56, _s4PageVMa_0);
    v108 = v282;
    v107 = v283;
    if (v106)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v279 = v106;
        v37 = v284;
        v109 = *v284;
        v110 = v275;
        v112 = v271;
        v111 = v272;
        v108(&v271[*(v272 + 20)], &v284[*(v275 + 28)], v107);
        v113 = v37[v110[9]];
        v114 = v37[v110[10]];
        v115 = v37[v110[11]];
        v116 = *&v37[v110[12]];
        v117 = &v37[v110[13]];
        v118 = *v117;
        v119 = *(v117 + 1);
        v120 = *&v37[v110[14]];
        v121 = &v37[v110[15]];
        *v112 = v109;
        v112[v111[6]] = v113;
        v112[v111[7]] = v114;
        v112[v111[8]] = 0;
        v112[v111[9]] = v115;
        *&v112[v111[10]] = v116;
        v123 = *v121;
        v122 = *(v121 + 1);
        v124 = &v112[v111[11]];
        *v124 = v118;
        *(v124 + 1) = v119;
        *&v112[v111[12]] = v120;
        v125 = &v112[v111[13]];
        *v125 = v123;
        *(v125 + 1) = v122;
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        v126 = v279;
        sub_18BC1E3F8();
        v127 = sub_18B9C3DA0(v112);
        sub_18B7DFF64(v112, _s4ItemVMa_2);
        if (v127)
        {
          v265 = v127;
          v128 = *v95;
          v129 = &v95[v110[7]];
          (v282)(&v112[v111[5]], v129, v283);
          v130 = v95[v110[9]];
          v131 = v95[v110[10]];
          v132 = v95[v110[11]];
          v133 = *&v95[v110[12]];
          v134 = &v95[v110[13]];
          v135 = *v134;
          v136 = *(v134 + 1);
          v137 = *&v95[v110[14]];
          v138 = &v95[v110[15]];
          *v112 = v128;
          v112[v111[6]] = v130;
          v112[v111[7]] = v131;
          v112[v111[8]] = 0;
          v112[v111[9]] = v132;
          *&v112[v111[10]] = v133;
          v140 = *v138;
          v139 = *(v138 + 1);
          v141 = &v112[v111[11]];
          *v141 = v135;
          *(v141 + 1) = v136;
          *&v112[v111[12]] = v137;
          v142 = &v112[v111[13]];
          *v142 = v140;
          *(v142 + 1) = v139;
          sub_18BC1E3F8();
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          v143 = sub_18B9C3DA0(v112);
          sub_18B7DFF64(v112, _s4ItemVMa_2);
          if (v143)
          {
            [v279 layoutIfNeeded];
            v144 = v267;
            v256 = v143;
            v145 = sub_18B856BBC(v129);
            type metadata accessor for TabOverviewItemView();
            v146 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v147 = [v146 layer];
            [v147 setZPosition_];

            sub_18BB9F21C(v129, *&v144[v237]);
            v148 = *&v146[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
            v149 = sub_18BC1E1A8();
            sub_18BA1A450(v149);

            [*(*&v144[v239] + OBJC_IVAR___SFTabOverviewDisplayItem_transitionContainerView) addSubview_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
            v150 = swift_allocObject();
            *(v150 + 16) = v236;
            *(v150 + 32) = v146;
            type metadata accessor for TabOverviewItemViewMatchMoveViewRegistration();
            v151 = swift_allocObject();
            swift_weakInit();
            *(v151 + 48) = 1;
            *(v151 + 24) = v150;
            v152 = swift_allocObject();
            v152[2] = v146;
            v152[3] = v144;
            v152[4] = v145;
            *(v151 + 32) = sub_18BB10D0C;
            *(v151 + 40) = v152;
            v153 = v146;
            sub_18BC1E1A8();
            v154 = v153;
            v155 = v144;
            sub_18B7DF638(v95, v264, _s4ItemVMa);
            sub_18B82AD34(&unk_1EA9D9270, _s4ItemVMa);
            sub_18BC21A68();
            v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5050);
            v293 = v156;
            v157 = sub_18B7B0B08(&unk_1EA9D9340, &unk_1EA9D5050);
            if (v266)
            {
              v158 = v256;
            }

            else
            {
              v158 = v265;
            }

            v294 = v157;
            *&v291 = v158;
            if (v266)
            {
              v159 = v265;
            }

            else
            {
              v159 = v256;
            }

            v297 = v156;
            v298 = v157;
            sub_18BC1E1A8();
            sub_18BC1E1A8();

            *&v296 = v159;
            sub_18B7DFF64(v287, _s4PageVMa);
            v37 = v284;
            sub_18B7DFF64(v284, _s4ItemVMa);
            v308 = 0u;
            v309 = 0u;
            *&v310 = 0;
            BYTE8(v310) = 1;
            sub_18B7FD070(&v296, &v308, &qword_1EA9D57F0);
            BYTE8(v310) = 0;
            v311 = v299;
            v312 = v300;
            *&v313 = v301;
            *(&v313 + 1) = v151;
            *&v314 = &off_1EE461CF8;
            sub_18B7C3FA4(&v291, &v314 + 8);
            goto LABEL_36;
          }

          sub_18B7DFF64(v287, _s4PageVMa);
          v37 = v284;
        }

        else
        {

          sub_18B7DFF64(v287, _s4PageVMa);
        }

        sub_18B7DFF64(v37, _s4ItemVMa);
        v308 = 0u;
        v309 = 0u;
        v310 = 0u;
        v311 = 0u;
        v312 = 0u;
        v313 = 0u;
        v314 = 0u;
        v315 = 0u;
        v316 = 0u;
LABEL_36:
        v60 = v274;
        v50 = v269;
        v56 = v270;
        goto LABEL_37;
      }
    }

    sub_18B7DFF64(v287, _s4PageVMa);
    v37 = v284;
    sub_18B7DFF64(v284, _s4ItemVMa);
    v308 = 0u;
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v312 = 0u;
    v313 = 0u;
    v314 = 0u;
    v315 = 0u;
    v316 = 0u;
LABEL_37:
    sub_18B988BAC(v288, &unk_1EA9D9320);
    v84 = v278;
    if (*(&v312 + 1))
    {
      v304 = v313;
      v305 = v314;
      v306 = v315;
      v307 = v316;
      v302 = v311;
      v303 = v312;
      v300 = v309;
      v301 = v310;
      v299 = v308;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v285 = sub_18B9B5A0C(0, *(v285 + 2) + 1, 1, v285);
      }

      v161 = *(v285 + 2);
      v160 = *(v285 + 3);
      if (v161 >= v160 >> 1)
      {
        v285 = sub_18B9B5A0C((v160 > 1), v161 + 1, 1, v285);
      }

      v162 = v285;
      *(v285 + 2) = v161 + 1;
      v163 = &v162[144 * v161];
      *(v163 + 2) = v299;
      v164 = v300;
      v165 = v301;
      v166 = v303;
      *(v163 + 5) = v302;
      *(v163 + 6) = v166;
      *(v163 + 3) = v164;
      *(v163 + 4) = v165;
      v167 = v304;
      v168 = v305;
      v169 = v307;
      *(v163 + 9) = v306;
      *(v163 + 10) = v169;
      *(v163 + 7) = v167;
      *(v163 + 8) = v168;
    }

    else
    {
      sub_18B988BAC(&v308, &unk_1EA9D9330);
    }

    v90 = (v286 + 1);
    if (v276 == v286 + 1)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  v60 = sub_18B7C358C(0, v60[2] + 1, 1, v60);
  *(v50 + 6) = v60;
LABEL_72:
  v213 = v60[2];
  v212 = v60[3];
  if (v213 >= v212 >> 1)
  {
    v60 = sub_18B7C358C((v212 > 1), v213 + 1, 1, v60);
  }

  v60[2] = v213 + 1;
  v214 = &v60[2 * v213];
  v214[4] = sub_18BB116C4;
  v214[5] = v37;
  v215 = v289;
  *(v289 + 48) = v60;
  swift_endAccess();

  sub_18B9FE734();
  if (v258)
  {
    sub_18BAF5FAC();
  }

  UIAnimationDragCoefficient();
  v216 = v243;
  sub_18B7DF638(v290, v243, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18B7DFF64(v216, _s15MoveItemsIntentV11DestinationOMa);
    if ((v266 & 1) == 0)
    {
      sub_18B7C9B24(&v308);
      sub_18B7DFD58(&v308);
      sub_18B7B0AC0(0, &unk_1EA9D3A90);
      v285 = sub_18BC21348();
      v217 = v247;
      sub_18BC20938();
      sub_18BC20958();
      v286 = *(v248 + 8);
      (v286)(v217, v259);
      v218 = v240;
      sub_18B7DF638(v290, v240, _s15MoveItemsIntentVMa);
      v219 = swift_allocObject();
      *(v219 + 16) = v56;
      sub_18B82FE24(v218, &v49[v219], _s15MoveItemsIntentVMa);
      v294 = sub_18BB10E9C;
      v295 = v219;
      *&v291 = MEMORY[0x1E69E9820];
      *(&v291 + 1) = 1107296256;
      v292 = sub_18B7B0DB0;
      v293 = &block_descriptor_459;
      v220 = _Block_copy(&v291);
      v221 = v56;

      v222 = v249;
      sub_18BC20908();
      *&v291 = MEMORY[0x1E69E7CC0];
      sub_18B82AD34(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
      sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
      v223 = v251;
      v215 = v289;
      v224 = v254;
      sub_18BC21908();
      v225 = v257;
      v226 = v285;
      MEMORY[0x18CFFC820](v257, v222, v223, v220);
      _Block_release(v220);

      (*(v253 + 8))(v223, v224);
      (*(v250 + 8))(v222, v252);
      (v286)(v225, v259);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);

    sub_18B7DFF64(v216, _s4PageVMa);
  }

  sub_18B7B0AC0(0, &unk_1EA9D3A90);
  v287 = sub_18BC21348();
  v227 = v247;
  sub_18BC20938();
  v228 = v257;
  sub_18BC20958();
  v289 = *(v248 + 8);
  (v289)(v227, v259);
  v294 = sub_18BB116C8;
  v295 = v215;
  *&v291 = MEMORY[0x1E69E9820];
  *(&v291 + 1) = 1107296256;
  v292 = sub_18B7B0DB0;
  v293 = &block_descriptor_462;
  v229 = _Block_copy(&v291);
  sub_18BC1E1A8();

  v230 = v249;
  sub_18BC20908();
  *&v291 = MEMORY[0x1E69E7CC0];
  sub_18B82AD34(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  v231 = v251;
  v232 = v254;
  sub_18BC21908();
  v233 = v287;
  MEMORY[0x18CFFC820](v228, v230, v231, v229);
  _Block_release(v229);

  (*(v253 + 8))(v231, v232);
  (*(v250 + 8))(v230, v252);
  (v289)(v228, v259);
  sub_18B7DFF64(v262, _s4PageVMa_0);
  v170 = v290;
  return sub_18B7DFF64(v170, _s15MoveItemsIntentVMa);
}

uint64_t sub_18BAFAF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18BB39264(0);
  sub_18BA14034(0);
  return sub_18BA7832C(a3);
}

uint64_t sub_18BAFAFB4(uint64_t a1, uint64_t a2)
{
  v3 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18B7C5C10(v9);
  sub_18B7DF638(a2, v5, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
  }

  sub_18B82FE24(v5, v8, _s4PageVMa);
  sub_18B9E750C();

  return sub_18B7DFF64(v8, _s4PageVMa);
}

uint64_t sub_18BAFB120(char *a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18B7C5C10();
  sub_18B7C9974();
  v9 = v8;

  v10 = sub_18B7CEA3C();
  if (v10 && (v11 = *a1, v12 = _s4ItemVMa(), v13 = v12[7], v14 = v4[5], v15 = sub_18BC1EC08(), (*(*(v15 - 8) + 16))(&v6[v14], &a1[v13], v15), v16 = a1[v12[9]], v17 = a1[v12[10]], v18 = a1[v12[11]], v19 = *&a1[v12[12]], v20 = &a1[v12[13]], v21 = *v20, v22 = v20[1], v23 = *&a1[v12[14]], v24 = &a1[v12[15]], *v6 = v11, v6[v4[6]] = v16, v6[v4[7]] = v17, v6[v4[8]] = 0, v6[v4[9]] = v18, *&v6[v4[10]] = v19, v26 = *v24, v25 = v24[1], v27 = &v6[v4[11]], *v27 = v21, v27[1] = v22, *&v6[v4[12]] = v23, v28 = &v6[v4[13]], *v28 = v26, v28[1] = v25, sub_18BC1E3F8(), sub_18BC1E1A8(), sub_18BC1E3F8(), v29 = sub_18B82FEA0(), v30 = sub_18B9CAE54(v6), v10, v29, sub_18B7DFF64(v6, _s4ItemVMa_2), v30))
  {
    type metadata accessor for TabOverview.ItemView();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);

      v30 = *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem);
      sub_18B9E71F4(v33);
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_18BAFB3B4(char *a1)
{
  v2 = v1;
  v4 = _s4ItemVMa();
  v72 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - v7;
  v9 = _s4ItemVMa_4();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18B7C07CC();
  v14 = *&v13[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v15 = *a1;
  v16 = v4[7];
  v17 = v10[7];
  v18 = sub_18BC1EC08();
  v19 = &a1[v16];
  v20 = a1;
  (*(*(v18 - 8) + 16))(&v12[v17], v19, v18);
  v21 = a1[v4[8]];
  v22 = a1[v4[11]];
  v23 = *&a1[v4[12]];
  v24 = *&a1[v4[14]];
  v25 = &a1[v4[15]];
  v27 = *v25;
  v26 = v25[1];
  *v12 = v15;
  v12[v10[8]] = v21;
  v12[v10[9]] = v22;
  *&v12[v10[10]] = v23;
  *&v12[v10[11]] = v24;
  v28 = &v12[v10[12]];
  *v28 = v27;
  v28[1] = v26;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v29 = sub_18BC0015C(v12);

  result = sub_18B7DFF64(v12, _s4ItemVMa_4);
  v75 = v29;
  if (v29)
  {
    v31 = sub_18BB007E0(a1, 0, 0);
    if (!v31)
    {
    }

    v32 = v31;
    v71 = v2;
    sub_18B7DF638(a1, v8, _s4ItemVMa);
    sub_18B82AD34(&unk_1EA9D9270, _s4ItemVMa);
    sub_18BC21A68();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE30);
    v86 = sub_18B7B0B08(&unk_1EA9D9280, &qword_1EA9DBE30);
    v78 = 0;
    memset(v77, 0, sizeof(v77));
    memset(v79, 0, sizeof(v79));
    v84 = v75;
    v80 = 0;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18B7FD070(v77, v79, &qword_1EA9D57F0);
    v81 = 1;
    v82 = v32;
    v83 = &off_1EE463558;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9290);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18BC3E410;
    sub_18B99B8C0(v79, v33 + 32);
    type metadata accessor for MatchMoveTransition();
    swift_allocObject();
    v69 = sub_18BA003CC(v33, sub_18BAFBBAC, 0);

    v34 = *(v32 + 32);
    if (v34 >> 62)
    {
      result = sub_18BC219A8();
      v35 = result;
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v32;
    if (v35)
    {
      v68 = v20;
      if (v35 < 1)
      {
        __break(1u);
        return result;
      }

      sub_18BC1E3F8();
      for (i = 0; i != v35; ++i)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x18CFFD010](i, v34);
        }

        else
        {
          v37 = *(v34 + 8 * i + 32);
        }

        v38 = v37;
        v39 = *(v75 + 16);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v41 = *(Strong + OBJC_IVAR___SFTabThumbnailView_matchMovedViews);
          v42 = Strong;
          v43 = v39;
          v44 = v41;

          [v44 removeObject_];
        }

        else
        {
          v45 = v39;
        }

        swift_unknownObjectWeakAssign();
        v46 = swift_unknownObjectWeakLoadStrong();
        if (v46)
        {
          v47 = v46;
          v48 = *(v46 + OBJC_IVAR___SFTabThumbnailView_matchMovedViews);

          [v48 addObject_];
        }

        v49 = swift_unknownObjectWeakLoadStrong();
        if (v49)
        {
          v50 = v49;
          sub_18BA17E30();
        }
      }

      v20 = v68;
    }

    else
    {
    }

    v51 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
    v52 = v71;
    swift_beginAccess();
    v53 = v69;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *&v52[v51];
    *&v52[v51] = 0x8000000000000000;
    sub_18BAA81B8(v53, v20, isUniquelyReferenced_nonNull_native);
    *&v52[v51] = v76;
    swift_endAccess();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = v74;
    sub_18B7DF638(v20, v74, _s4ItemVMa);
    v57 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v58 = (v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v52;
    sub_18B82FE24(v56, v59 + v57, _s4ItemVMa);
    *(v59 + v58) = v55;
    *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_18BB10C60;
    *(v60 + 24) = v59;
    swift_beginAccess();
    v61 = *(v53 + 48);
    v62 = v52;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 48) = v61;
    if ((v63 & 1) == 0)
    {
      v61 = sub_18B7C358C(0, v61[2] + 1, 1, v61);
      *(v53 + 48) = v61;
    }

    v65 = v61[2];
    v64 = v61[3];
    if (v65 >= v64 >> 1)
    {
      v61 = sub_18B7C358C((v64 > 1), v65 + 1, 1, v61);
    }

    v61[2] = v65 + 1;
    v66 = &v61[2 * v65];
    v66[4] = sub_18BB116C4;
    v66[5] = v60;
    *(v53 + 48) = v61;
    swift_endAccess();

    sub_18B9FE734();

    return sub_18B99B91C(v79);
  }

  return result;
}

uint64_t sub_18BAFBBAC()
{
  type metadata accessor for AnimationSettings();

  return swift_initStaticObject();
}

uint64_t sub_18BAFBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (*(v12 + 16))
  {
    sub_18BC1E3F8();
    v13 = sub_18BB8B29C(a3);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      sub_18BC1E1A8();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!v15)
  {
    if (Strong)
    {

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (Strong)
  {
    v17 = Strong;

    result = swift_unknownObjectRelease();
    if (v17 != v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    sub_18B7DF638(a3, v10, _s4ItemVMa);
    swift_beginAccess();
    sub_18BAD2FF0(0, v10);
    result = swift_endAccess();
    goto LABEL_15;
  }

  result = swift_unknownObjectRelease();
LABEL_15:
  v19 = *(a5 + 32);
  if (v19 >> 62)
  {
    result = sub_18BC219A8();
    v20 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      return result;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_18BC1E3F8();
    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x18CFFD010](i, v19);
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = *(v24 + OBJC_IVAR___SFTabThumbnailView_matchMovedViews);

        [v26 removeObject_];
      }

      swift_unknownObjectWeakAssign();
      v27 = swift_unknownObjectWeakLoadStrong();
      if (v27)
      {
        v28 = v27;
        v29 = *(v27 + OBJC_IVAR___SFTabThumbnailView_matchMovedViews);

        [v29 addObject_];
      }

      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        sub_18BA17E30();
      }
    }
  }

  return result;
}

void sub_18BAFBEC4(char a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37[-v6 - 8];
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1.0;
    v11 = 1;
    v12 = 0.0;
    v13 = 1.0;
  }

  else if (a2 >= 1.0)
  {
    v18 = v2;
    v19 = sub_18B7C07CC();
    v20 = *&v19[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v21 = sub_18B7C37F4();
    v22 = [v21 state];

    v23 = *(*(v18 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem) + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
    v24 = sub_18B7EBEFC();

    v25 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
    swift_beginAccess();
    sub_18B7CA054(v24 + v25, v7, &qword_1EA9D4520);

    v26 = _s17PinchGestureStateVMa(0);
    v9 = 1;
    LODWORD(v24) = (*(*(v26 - 8) + 48))(v7, 1, v26);
    sub_18B988BAC(v7, &qword_1EA9D4520);
    v12 = 18.0;
    v13 = 0.9;
    v10 = 0.011;
    if (v24 == 1)
    {
      v8 = 0;
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v8 = (v22 - 1) < 2;
    }
  }

  else
  {
    sub_18B7C9B24(v37);
    sub_18B7DFD58(v37);
    v14 = v38;
    v15 = *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 40);
    v16 = *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 48);
    v17 = _SFUninterpolate(a2, 1.0, v38);
    v12 = _SFInterpolate(v16, v15, v17);
    v10 = _SFInterpolate(0.4, 0.7, v17);
    v9 = v14 < a2;
    v13 = _SFInterpolate(0.9, 0.97, v17);
    v8 = 1;
    v11 = 1;
  }

  v27 = sub_18B7C5C10();
  v28 = &v27[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v29 = *&v27[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v30 = v27[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
  v31 = v27[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
  v32 = *&v27[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
  v33 = v27[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
  v34 = *&v27[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
  *v28 = v12;
  *(v28 + 8) = v8;
  *(v28 + 9) = v11;
  v28[2] = v10;
  *(v28 + 24) = v9;
  v28[4] = v13;
  v35 = 256;
  if (!v31)
  {
    v35 = 0;
  }

  v39[0] = v29;
  v39[1] = v35 | v30;
  v39[2] = v32;
  v39[3] = v33;
  v39[4] = v34;
  sub_18B9E2784(v39);
}

void sub_18BAFC1FC(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v222 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v213 = &v196[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v196[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v211 = &v196[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v210 = &v196[-v15];
  v16 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v16);
  v212 = &v196[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v214 = &v196[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v215 = &v196[-v21];
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92E0);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v196[-v22];
  v208 = _s4PageVMa();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v196[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v196[-v25];
  *&v221 = _s4ItemVMa_2();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  *&v218 = &v196[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  *&v217 = &v196[-v29];
  v30 = _s4ItemVMa();
  v31 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v196[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  *&v216 = &v196[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v219 = &v196[-v37];
  v38 = sub_18B7C5C10();
  v39 = *&v38[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v40 = v38[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
  v41 = v38[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
  v42 = *&v38[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
  v43 = v38[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
  v44 = *&v38[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];

  v45 = (v39 != 0.0) | v40 | v41 ^ 1 | (v42 != 1.0) | v43 | (v44 != 1.0);
  if ((v45 & 1) == 0)
  {
    v204 = v31;
    v47 = *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem];
    sub_18B7C9974();
    v49 = v48;

    v50 = sub_18B7CEA3C();
    v52 = v51;

    v53 = 0uLL;
    if (!v50)
    {
      v138 = 0;
LABEL_44:
      v153 = 2;
      goto LABEL_45;
    }

    v54 = [v4 view];
    if (!v54)
    {
      __break(1u);
      goto LABEL_53;
    }

    v55 = v54;
    [v54 convertPoint:v50 toCoordinateSpace:{a2, a3}];
    v57 = v56;
    v59 = v58;

    if (*&v50[OBJC_IVAR___SFTabOverview_content + 32])
    {

      (*(v220 + 7))(v26, 1, 1, v221);
    }

    else
    {
      v146 = sub_18B82FEA0();
      [v50 convertPoint:*&v50[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView] toCoordinateSpace:{v57, v59}];
      v148 = v147;
      v150 = v149;
      v151 = v220;
      v152 = v221;
      (*(v220 + 7))(v26, 1, 1, v221);
      *&v223[0] = 0x10000000000000;
      sub_18BB4F250(v146, v26, v223, v148, v150);

      if ((*(v151 + 6))(v26, 1, v152) != 1)
      {
        v162 = v26;
        v163 = v217;
        sub_18B82FE24(v162, v217, _s4ItemVMa_2);
        v164 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
        swift_beginAccess();
        v165 = v214;
        v166 = sub_18B7DF638(&v4[v164], v214, _s7ContentVMa);
        MEMORY[0x1EEE9AC00](v166);
        *&v196[-16] = v167;
        v168 = v215;
        sub_18BAD2074(sub_18BB116D0, &v196[-32], v215);
        sub_18B7DFF64(v165, _s7ContentVMa);
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
        if ((*(*(v169 - 8) + 48))(v168, 1, v169) != 1)
        {
          v197 = v45;
          v198 = v4;
          v170 = v168;
          v171 = *(v169 + 48);
          v214 = *(v169 + 64);
          v172 = v205;
          v173 = *(v205 + 48);
          v174 = *(v205 + 64);
          v175 = v168;
          v176 = v206;
          sub_18B82FE24(v175, v206, _s4PageVMa);
          sub_18B82FE24(&v170[v171], &v176[v173], _s7SectionVMa_0);
          sub_18B82FE24(&v170[v214], &v176[v174], _s4ItemVMa);
          v177 = *(v172 + 48);
          v178 = *(v172 + 64);
          v179 = v209;
          sub_18B82FE24(v176, v209, _s4PageVMa);
          sub_18B82FE24(&v176[v178], v216, _s4ItemVMa);
          sub_18B7DFF64(&v176[v177], _s7SectionVMa_0);
          if (qword_1EA9D22A0 != -1)
          {
            swift_once();
          }

          v215 = v52;
          v180 = sub_18BC1F2C8();
          __swift_project_value_buffer(v180, qword_1EA9F7E98);
          v181 = sub_18BC1F2A8();
          v182 = sub_18BC21258();
          v183 = os_log_type_enabled(v181, v182);
          v184 = v198;
          if (v183)
          {
            v185 = swift_slowAlloc();
            *v185 = 0;
            _os_log_impl(&dword_18B7AC000, v181, v182, "Beginning pinch at target", v185, 2u);
            MEMORY[0x18CFFEEE0](v185, -1, -1);
          }

          v186 = sub_18B7C07CC();
          v187 = v210;
          sub_18B7DF638(v179, v210, _s4PageVMa);
          (*(v207 + 56))(v187, 0, 1, v208);
          v188 = v216;
          v189 = v211;
          sub_18B7DF638(v216, v211, _s4ItemVMa);
          (*(v204 + 56))(v189, 0, 1, v30);
          v224 = 0;
          memset(v223, 0, sizeof(v223));
          sub_18B999AB0(v187, v189, v223);

          sub_18B988BAC(v223, &unk_1EA9D5060);
          sub_18B988BAC(v189, &qword_1EA9D7CD0);
          sub_18B988BAC(v187, &qword_1EA9D52E0);
          [*(*&v184[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) layoutIfNeeded];
          sub_18B7DFF64(v179, _s4PageVMa);
          sub_18B7DFF64(v217, _s4ItemVMa_2);
          v70 = v188;
          goto LABEL_17;
        }

        sub_18B988BAC(v168, &qword_1EA9D53C0);
        sub_18B7DFF64(v163, _s4ItemVMa_2);
LABEL_26:
        v138 = 0;
        v153 = 2;
        v154 = 0uLL;
        v53 = 0uLL;
LABEL_46:
        v192 = v222;
        *v222 = v53;
        v192[1] = v154;
        *(v192 + 4) = v138;
        *(v192 + 20) = v153;
        return;
      }
    }

    sub_18B988BAC(v26, &unk_1EA9D4F30);
    goto LABEL_26;
  }

  v46 = &v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent];
  swift_beginAccess();
  sub_18B7CA054(&v46[*(v16 + 40)], v11, &qword_1EA9D7CD0);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    sub_18B988BAC(v11, &qword_1EA9D7CD0);
LABEL_43:
    v138 = 0;
    v53 = 0uLL;
    goto LABEL_44;
  }

  sub_18B82FE24(v11, v33, _s4ItemVMa);
  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v60 = sub_18BC1F2C8();
  __swift_project_value_buffer(v60, qword_1EA9F7E98);
  v61 = sub_18BC1F2A8();
  v62 = sub_18BC21258();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_18B7AC000, v61, v62, "Beginning pinch from QuickTabSwitcher", v63, 2u);
    MEMORY[0x18CFFEEE0](v63, -1, -1);
  }

  if (v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow] != 1)
  {
    goto LABEL_15;
  }

  v64 = [v4 view];
  if (v64)
  {
    v65 = v64;
    [v64 layoutIfNeeded];

LABEL_15:
    v66 = *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem];
    sub_18B7C9974();
    v68 = v67;

    v50 = sub_18B7CEA3C();
    v215 = v69;

    if (!v50)
    {
      v155 = v33;
LABEL_42:
      sub_18B7DFF64(v155, _s4ItemVMa);
      goto LABEL_43;
    }

    v197 = v45;
    v198 = v4;
    v70 = v33;
LABEL_17:
    v71 = v219;
    sub_18B82FE24(v70, v219, _s4ItemVMa);
    v72 = v50;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0);
    v74 = (v220[80] + 32) & ~v220[80];
    v200 = *(v220 + 9);
    v202 = v73;
    v75 = swift_allocObject();
    v199 = xmmword_18BC3E410;
    *(v75 + 16) = xmmword_18BC3E410;
    v201 = v74;
    v76 = v75 + v74;
    v77 = *v71;
    v78 = v30[7];
    v79 = v221;
    v80 = *(v221 + 20);
    v81 = sub_18BC1EC08();
    v82 = *(v81 - 1);
    v83 = *(v82 + 16);
    *&v216 = v78;
    v210 = v81;
    v214 = v83;
    v211 = (v82 + 16);
    v83(v76 + v80, &v71[v78]);
    v84 = v71[v30[9]];
    v85 = v71[v30[10]];
    v86 = v71[v30[11]];
    v87 = *&v71[v30[12]];
    v88 = &v71[v30[13]];
    v89 = *v88;
    v90 = v88[1];
    v91 = *&v71[v30[14]];
    v92 = v30[15];
    v93 = v79;
    v94 = &v71[v92];
    LODWORD(v217) = v77;
    *v76 = v77;
    v95 = v79[6];
    LODWORD(v207) = v84;
    *(v76 + v95) = v84;
    v96 = v79[7];
    LODWORD(v209) = v85;
    *(v76 + v96) = v85;
    *(v76 + v79[8]) = 0;
    v97 = v79[9];
    LODWORD(v208) = v86;
    *(v76 + v97) = v86;
    v98 = v79[10];
    v206 = v87;
    *(v76 + v98) = v87;
    v99 = *v94;
    v100 = *(v94 + 1);
    v101 = (v76 + v93[11]);
    v205 = v89;
    *v101 = v89;
    v101[1] = v90;
    *(v76 + v93[12]) = v91;
    v102 = (v76 + v93[13]);
    v204 = v99;
    *v102 = v99;
    v102[1] = v100;
    sub_18BC1E3F8();
    v203 = v90;
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v103 = sub_18BA29804(v75);
    swift_setDeallocating();
    sub_18B7DFF64(v76, _s4ItemVMa_2);
    swift_deallocClassInstance();
    v104 = sub_18B82FEA0();
    LOBYTE(v76) = sub_18BB0757C(v103);

    v220 = v72;

    if (v76)
    {
      v105 = v201;
      v106 = swift_allocObject();
      *(v106 + 16) = v199;
      v107 = (v106 + v105);
      (v214)(v106 + v105 + v93[5], &v71[v216], v210);
      *v107 = v217;
      v107[v93[6]] = v207;
      v107[v93[7]] = v209;
      v107[v93[8]] = 0;
      v107[v93[9]] = v208;
      *&v107[v93[10]] = v206;
      v108 = (v106 + v105 + v93[11]);
      v109 = v203;
      *v108 = v205;
      v108[1] = v109;
      *&v107[v93[12]] = v91;
      v110 = (v106 + v105 + v93[13]);
      *v110 = v204;
      v110[1] = v100;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_18BC1E3F8();
      v111 = sub_18BA29804(v106);
      swift_setDeallocating();
      sub_18B7DFF64(v106 + v105, _s4ItemVMa_2);
      swift_deallocClassInstance();
      v112 = sub_18B82FEA0();
      sub_18BB07B3C(v111);

      v113 = v218;
      (v214)(v218 + v93[5], &v71[v216], v210);
      *v113 = v217;
      v113[v93[6]] = v207;
      v113[v93[7]] = v209;
      v113[v93[8]] = 0;
      v113[v93[9]] = v208;
      *&v113[v93[10]] = v206;
      v114 = &v113[v93[11]];
      *v114 = v205;
      v114[1] = v109;
      *&v113[v93[12]] = v91;
      v115 = &v113[v93[13]];
      *v115 = v204;
      v115[1] = v100;
      sub_18BC1E3F8();
      v116 = sub_18B82FEA0();
      v117 = sub_18B9CAE54(v113);

      sub_18B7DFF64(v113, _s4ItemVMa_2);
      v118 = v215;
      if (v117)
      {
        type metadata accessor for TabOverview.ItemView();
        v119 = swift_dynamicCastClass();
        if (v119)
        {
          v120 = *(v119 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

          type metadata accessor for TabOverviewItemView();
          v121 = swift_dynamicCastClassUnconditional();
          [v121 layoutIfNeeded];
          v122 = *&v121[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
          [v122 bounds];
          v124 = v123;
          v126 = v125;
          v128 = v127;
          v130 = v129;
          v131 = v198;
          v132 = sub_18B7C07CC();
          v133 = *&v132[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

          [v122 convertRect:v133 toCoordinateSpace:{v124, v126, v128, v130}];
          v221 = v134;
          v216 = v135;
          v218 = v136;
          v217 = v137;

          v138 = *&v122[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
          v139 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
          swift_beginAccess();
          v140 = &v131[v139];
          v141 = v212;
          sub_18B7DF638(v140, v212, _s7ContentVMa);
          v142 = v213;
          v143 = v219;
          sub_18BB176FC(v213);

          sub_18B7DFF64(v141, _s7ContentVMa);
          v144 = _s7SectionVMa_0();
          if ((*(*(v144 - 8) + 48))(v142, 1, v144) == 1)
          {
            sub_18B988BAC(v142, &unk_1EA9D9250);
            v145 = 0;
          }

          else
          {
            v145 = v142[*(v144 + 24)];
            sub_18B7DFF64(v142, _s7SectionVMa_0);
          }

          *&v193 = v221;
          *(&v193 + 1) = v216;
          v221 = v193;
          *&v193 = v218;
          *(&v193 + 1) = v217;
          v218 = v193;
          if (v197)
          {
            v194 = 0;
          }

          else
          {
            v194 = 256;
          }

          v153 = v194 | v145;
          v195 = v220;
          sub_18BAFD928(v220, v118, v143);

          sub_18B7DFF64(v143, _s4ItemVMa);
          v154 = v218;
          v53 = v221;
          goto LABEL_46;
        }
      }

      v190 = v220;
      v191 = v219;
      sub_18BAFD928(v220, v118, v219);

      v155 = v191;
    }

    else
    {
      if (qword_1EA9D22A0 != -1)
      {
        swift_once();
      }

      v156 = sub_18BC1F2C8();
      __swift_project_value_buffer(v156, qword_1EA9F7E98);
      v157 = sub_18BC1F2A8();
      v158 = sub_18BC21238();
      v159 = os_log_type_enabled(v157, v158);
      v160 = v219;
      if (v159)
      {
        v153 = 2;
        v161 = swift_slowAlloc();
        *v161 = 0;
        _os_log_impl(&dword_18B7AC000, v157, v158, "Unable to load view for pinch target item", v161, 2u);
        MEMORY[0x18CFFEEE0](v161, -1, -1);

        sub_18B7DFF64(v160, _s4ItemVMa);
        v138 = 0;
        v53 = 0uLL;
LABEL_45:
        v154 = 0uLL;
        goto LABEL_46;
      }

      v155 = v160;
    }

    goto LABEL_42;
  }

LABEL_53:
  __break(1u);
}

void sub_18BAFD928(uint64_t a1, uint64_t a2, char *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0);
  v4 = (_s4ItemVMa_2() - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC3E410;
  v7 = (v6 + v5);
  v8 = *a3;
  v9 = _s4ItemVMa();
  v10 = v9[7];
  v11 = v4[7];
  v12 = sub_18BC1EC08();
  (*(*(v12 - 8) + 16))(&v7[v11], &a3[v10], v12);
  v13 = a3[v9[9]];
  v14 = a3[v9[10]];
  v15 = a3[v9[11]];
  v16 = *&a3[v9[12]];
  v17 = &a3[v9[13]];
  v18 = *v17;
  v19 = v17[1];
  v20 = *&a3[v9[14]];
  v21 = &a3[v9[15]];
  *v7 = v8;
  v7[v4[8]] = v13;
  v7[v4[9]] = v14;
  v7[v4[10]] = 0;
  v7[v4[11]] = v15;
  *&v7[v4[12]] = v16;
  v23 = *v21;
  v22 = v21[1];
  v24 = &v7[v4[13]];
  *v24 = v18;
  v24[1] = v19;
  *&v7[v4[14]] = v20;
  v25 = &v7[v4[15]];
  *v25 = v23;
  v25[1] = v22;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v26 = sub_18BA29804(v6);
  swift_setDeallocating();
  sub_18B7DFF64(v7, _s4ItemVMa_2);
  swift_deallocClassInstance();
  v27 = sub_18B82FEA0();
  sub_18BB08BC4(v26);
}

uint64_t sub_18BAFDB64(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92E0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34[-v13];
  v15 = _s4ItemVMa();
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v37 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34[-v18];
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF638(&v3[v20], v8, _s7ContentVMa);
  v39 = a1 + *(_s4ItemVMa_4() + 20);
  sub_18BAD2074(sub_18BB10BD0, v38, v11);
  sub_18B7DFF64(v8, _s7ContentVMa);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
  if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D53C0);
  }

  v23 = *(v21 + 48);
  v24 = *(v21 + 64);
  v25 = *(v12 + 48);
  v35 = a2;
  v26 = *(v12 + 64);
  sub_18B82FE24(v11, v14, _s4PageVMa);
  sub_18B82FE24(&v11[v23], &v14[v25], _s7SectionVMa_0);
  sub_18B82FE24(&v11[v24], &v14[v26], _s4ItemVMa);
  v27 = *(v12 + 48);
  v28 = *(v12 + 64);
  sub_18B7DFF64(v14, _s4PageVMa);
  sub_18B82FE24(&v14[v28], v19, _s4ItemVMa);
  sub_18B7DFF64(&v14[v27], _s7SectionVMa_0);
  if (v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible])
  {
    v29 = 0x8000000000000008;
  }

  else
  {
    v29 = 0x8000000000000010;
  }

  v30 = v37;
  sub_18B7DF638(v19, v37, _s4ItemVMa);
  v31 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v35 & 1;
  *(v32 + 24) = v3;
  sub_18B82FE24(v30, v32 + v31, _s4ItemVMa);
  v33 = v3;
  sub_18B80ECB4(sub_18BB10BF0, v32, v29);

  sub_18B7EBAE8(v29);
  return sub_18B7DFF64(v19, _s4ItemVMa);
}

uint64_t sub_18BAFDFD0(char a1, uint64_t a2, char *a3)
{
  v5 = _s4ItemVMa_2();
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18B7C5C10();
  sub_18B7C9974();
  v11 = v10;

  v12 = *a3;
  v13 = _s4ItemVMa();
  v14 = v13[7];
  v15 = v6[7];
  v16 = sub_18BC1EC08();
  (*(*(v16 - 8) + 16))(&v8[v15], &a3[v14], v16);
  v17 = a3[v13[9]];
  v18 = a3[v13[10]];
  v19 = a3[v13[11]];
  v20 = *&a3[v13[12]];
  v21 = &a3[v13[13]];
  v22 = *v21;
  v23 = v21[1];
  v24 = *&a3[v13[14]];
  v25 = &a3[v13[15]];
  *v8 = v12;
  v8[v6[8]] = v17;
  v8[v6[9]] = v18;
  v8[v6[10]] = 0;
  v8[v6[11]] = v19;
  *&v8[v6[12]] = v20;
  v26 = *v25;
  v27 = v25[1];
  v28 = &v8[v6[13]];
  *v28 = v22;
  v28[1] = v23;
  *&v8[v6[14]] = v24;
  v29 = &v8[v6[15]];
  *v29 = v26;
  v29[1] = v27;
  if (a1)
  {
    swift_beginAccess();
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BBE8574(v8);
    swift_endAccess();
  }

  else
  {
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BA4FA00(v8);
  }

  return sub_18B7DFF64(v8, _s4ItemVMa_2);
}

uint64_t sub_18BAFE1E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48[-v10];
  v12 = _s4ItemVMa();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48[-v17];
  v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF638(v3 + v19, v8, _s7ContentVMa);
  v49 = a1 + *(_s4ItemVMa_4() + 20);
  sub_18BB17290(sub_18B9EB468, v48, v11);
  sub_18B7DFF64(v8, _s7ContentVMa);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D7CD0);
  }

  sub_18B82FE24(v11, v18, _s4ItemVMa);
  v21 = sub_18B7C5C10();
  sub_18B7C9974();
  v23 = v22;

  v25 = sub_18B7C2E68(v24);
  v26 = [v25 panGestureRecognizer];

  if ([v26 isEnabled])
  {
    [v26 setEnabled_];
    [v26 setEnabled_];
  }

  v27 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem;
  v28 = *(v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem);
  sub_18B7C9974();
  v30 = v29;

  v31 = sub_18B7CEA3C();
  if (v31)
  {
    v32 = sub_18B82FEA0();

    v33 = [v32 panGestureRecognizer];
    if ([v33 isEnabled])
    {
      [v33 setEnabled_];
      [v33 setEnabled_];
    }
  }

  v34 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  swift_beginAccess();
  v35 = *(v3 + v34);
  if (*(v35 + 16))
  {
    sub_18BC1E3F8();
    v36 = sub_18BB8B29C(v18);
    if (v37)
    {
      v38 = *(*(v35 + 56) + 8 * v36);
      sub_18BC1E1A8();

      sub_18B7DF638(v18, v15, _s4ItemVMa);
      swift_beginAccess();
      sub_18BAD2FF0(0, v15);
      result = swift_endAccess();
      v39 = *MEMORY[0x1E69DDA98];
      if (!*MEMORY[0x1E69DDA98])
      {
        __break(1u);
        return result;
      }

      aBlock[4] = sub_18BB10BCC;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B7B0DB0;
      aBlock[3] = &block_descriptor_418;
      v40 = _Block_copy(aBlock);
      sub_18BC1E1A8();
      v41 = v39;

      [v41 _performBlockAfterCATransactionCommits_];
      _Block_release(v40);
    }

    else
    {
    }
  }

  v42 = *(v3 + v27);
  v43 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled;
  v42[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 0;
  v44 = v42;
  sub_18B7C9974();
  v46 = v45;
  [v45 setUserInteractionEnabled_];

  [*&v44[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] setUserInteractionEnabled_];
  v47 = sub_18B7C07CC();
  v47[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 1;
  [*&v47[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher] setUserInteractionEnabled_];

  if (a2)
  {
    if (sub_18BAFB120(v18))
    {
      sub_18BAFB3B4(v18);
    }
  }

  else
  {
    sub_18BAF228C(v18);
  }

  return sub_18B7DFF64(v18, _s4ItemVMa);
}

unint64_t sub_18BAFE7A0(uint64_t a1)
{
  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1F2C8();
  __swift_project_value_buffer(v3, qword_1EA9F7E98);
  v4 = v1;
  v5 = sub_18BC1F2A8();
  v6 = sub_18BC21258();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136446466;
    sub_18BB10B78();
    v9 = sub_18BC21F48();
    v11 = sub_18B7EA850(v9, v10, &v30);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v29 = *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState];
    v12 = sub_18BC21F48();
    v14 = sub_18B7EA850(v12, v13, &v30);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_18B7AC000, v5, v6, "TabSwitcher presentation state changed from %{public}s to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v8, -1, -1);
    MEMORY[0x18CFFEEE0](v7, -1, -1);
  }

  result = sub_18B7D6E1C();
  v16 = result;
  if (result >> 62)
  {
    result = sub_18BC219A8();
    v17 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  if (v17 < 1)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x18CFFD010](v18, v16);
    }

    else
    {
      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v20;
    ++v18;
    (*((*v19 & *v20) + 0x120))(a1);
  }

  while (v17 != v18);
LABEL_14:

  v22 = *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewManager];
  v23 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState;
  v24 = *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] != 0;
  v25 = *(v22 + 16);
  *(v22 + 16) = v24;
  if (v24 != v25)
  {
    sub_18BC1E1A8();
    sub_18BB0B1B0();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = *&v4[v23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D92C8);
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          goto LABEL_52;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            [v26 didCancelDismissal];
            goto LABEL_43;
          }

          if (v27 == 3)
          {
            return swift_unknownObjectRelease();
          }

          goto LABEL_52;
        }

        if (v27)
        {
          if (v27 == 1)
          {
            v28 = &selRef_didCancelDismissal;
            goto LABEL_48;
          }

          goto LABEL_52;
        }

LABEL_34:
        v28 = &selRef_didDismiss;
        goto LABEL_48;
      }

      if ((v27 - 1) < 2)
      {
        return swift_unknownObjectRelease();
      }

      if (!v27)
      {
LABEL_30:
        [v26 willDismiss];
        goto LABEL_34;
      }
    }

    else
    {
      if (!a1)
      {
        if (v27 <= 1)
        {
          if (v27)
          {
            if (v27 == 1)
            {
              v28 = &selRef_willPresent;
LABEL_48:
              [v26 *v28];
              return swift_unknownObjectRelease();
            }

            goto LABEL_52;
          }

          return swift_unknownObjectRelease();
        }

        if (v27 == 3)
        {
          return swift_unknownObjectRelease();
        }

        if (v27 == 2)
        {
          [v26 willPresent];
LABEL_43:
          v28 = &selRef_didPresent;
          goto LABEL_48;
        }

LABEL_52:
        result = sub_18BC21FC8();
        __break(1u);
        goto LABEL_53;
      }

      if (a1 != 1)
      {
        goto LABEL_52;
      }

      if (v27 <= 1)
      {
        if (v27)
        {
          if (v27 == 1)
          {
            return swift_unknownObjectRelease();
          }

          goto LABEL_52;
        }

        goto LABEL_30;
      }

      if (v27 == 2)
      {
        goto LABEL_43;
      }
    }

    if (v27 == 3)
    {
      v28 = &selRef_willDismiss;
      goto LABEL_48;
    }

    goto LABEL_52;
  }

  return result;
}

uint64_t sub_18BAFEC50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v7 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = _s4PageVMa();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF638(v2 + v20, v9, _s7ContentVMa);
  sub_18BB15074(a1, v15);
  sub_18B7DFF64(v9, _s7ContentVMa);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_18B988BAC(v15, &qword_1EA9D52E0);
  }

  sub_18B82FE24(v15, v19, _s4PageVMa);
  if (!*(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState))
  {
    *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = 2;
    sub_18BAFE7A0(0);
  }

  if (qword_1EA9D21D8 != -1)
  {
    swift_once();
  }

  v22 = qword_1EA9F7A68;
  v23 = type metadata accessor for RetargetableTransitionCoordinator();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E7CC0];
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  *(v24 + 32) = v25;
  *(v24 + 40) = 1;
  *(v24 + 16) = v22;
  sub_18BC1E1A8();
  v26 = sub_18B7C07CC();
  sub_18B7DF638(v19, v12, _s4PageVMa);
  (*(v17 + 56))(v12, 0, 1, v16);
  sub_18B7DF638(a1, v6, _s4ItemVMa);
  v27 = _s4ItemVMa();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  v29[3] = v23;
  v29[4] = &off_1EFF27FD8;
  v29[0] = v24;
  sub_18BC1E1A8();
  sub_18B999AB0(v12, v6, v29);

  sub_18B988BAC(v6, &qword_1EA9D7CD0);
  sub_18B988BAC(v12, &qword_1EA9D52E0);
  sub_18B988BAC(v29, &unk_1EA9D5060);
  v28 = *(v24 + 16);
  swift_retain_n();
  sub_18B7D8090(v28);
  sub_18B7EAA64(sub_18B9D4FF4, v24, sub_18B9D4FFC, v24, v28);

  sub_18B7EBAE8(v28);
  sub_18B7DFF64(v19, _s4PageVMa);
  *(v24 + 40) = 0;
}

void *sub_18BAFF120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s4ItemVMa();
  v7 = sub_18B856BBC(a1 + *(v6 + 28));
  swift_beginAccess();
  v8 = *(v7 + 32);
  v47 = *(v7 + 16);
  v48 = v8;
  v9 = *(v7 + 64);
  v49 = *(v7 + 48);
  v50 = v9;
  v10 = v48;
  *(v46 + 15) = v9;
  v11 = *(v7 + 49);
  v45 = *(v7 + 33);
  v46[0] = v11;
  if (*(&v47 + 1))
  {
    v41 = v47;
    v42 = v48;
    v43 = v45;
    *v44 = v46[0];
    *&v44[15] = *(v46 + 15);
    sub_18B7CA054(&v47, v40, &qword_1EA9D92C0);
    sub_18B988BAC(&v41, &qword_1EA9D92C0);
    if (v10)
    {
      goto LABEL_6;
    }

    v12 = *(v7 + 16);
    v13 = *(v7 + 32);
    v14 = *(v7 + 64);
    v38[2] = *(v7 + 48);
    v38[3] = v14;
    v38[0] = v12;
    v38[1] = v13;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    sub_18B988BAC(v38, &qword_1EA9D92C0);
    swift_beginAccess();
    v15 = *(v7 + 80);
    v16 = *(v7 + 16);
    v17 = *(v7 + 32);
    v18 = *(v7 + 64);
    v39[2] = *(v7 + 48);
    v39[3] = v18;
    v39[0] = v16;
    v39[1] = v17;
    v19 = *(v7 + 32);
    v34 = *(v7 + 16);
    v35 = v19;
    v20 = *(v7 + 64);
    v36 = *(v7 + 48);
    v37 = v20;
    sub_18BC1E1A8();
    sub_18B7CA054(v39, v40, &qword_1EA9D92C0);
    v15(&v34);

    v40[0] = v34;
    v40[1] = v35;
    v40[2] = v36;
    v40[3] = v37;
    v21 = v40;
  }

  else
  {
    v41 = v47;
    v42 = v48;
    v43 = v45;
    *v44 = v46[0];
    *&v44[15] = *(v46 + 15);
    sub_18B7CA054(&v47, v40, &qword_1EA9D92C0);
    v21 = &v41;
  }

  sub_18B988BAC(v21, &qword_1EA9D92C0);
LABEL_6:
  type metadata accessor for AnimationPredicate();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  v22[3] = v7;
  v22[4] = v23;
  v22[2] = sub_18BB10B38;
  v24 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  *(v7 + 80) = sub_18BB10B40;
  *(v7 + 88) = v24;
  sub_18BC1E1A8();

  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v7;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_18BB10B48;
  *(v26 + 24) = v25;
  swift_beginAccess();
  v27 = *(a2 + 56);
  sub_18BC1E1A8();
  v28 = v3;
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 56) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_18B9B5C40(0, v27[2] + 1, 1, v27);
    *(a2 + 56) = v27;
  }

  v31 = v27[2];
  v30 = v27[3];
  if (v31 >= v30 >> 1)
  {
    v27 = sub_18B9B5C40((v30 > 1), v31 + 1, 1, v27);
  }

  v27[2] = v31 + 1;
  v32 = &v27[2 * v31];
  v32[4] = sub_18BB1174C;
  v32[5] = v26;
  *(a2 + 56) = v27;
  swift_endAccess();

  return v22;
}

uint64_t sub_18BAFF4EC(_OWORD *a1)
{
  swift_beginAccess();
  v2 = a1[2];
  v12 = a1[1];
  v13 = v2;
  v3 = a1[4];
  v14 = a1[3];
  v15 = v3;
  v4 = v13;
  v10 = *(a1 + 33);
  *v11 = *(a1 + 49);
  *&v11[15] = a1[4];
  v5 = *(&v12 + 1) != 0;
  v8 = v12;
  v9 = v13;
  sub_18B7CA054(&v12, v7, &qword_1EA9D92C0);
  sub_18B988BAC(&v8, &qword_1EA9D92C0);
  return v5 & v4;
}

uint64_t sub_18BAFF5B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 16))())
    {
      sub_18BB9A3CC();
    }
  }

  return result;
}

void sub_18BAFF620(void *a1)
{
  if (UIAccessibilityIsReduceMotionEnabled() && [a1 state] == 3 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v4 = Strong;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    aBlock[4] = sub_18BB10B28;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = &block_descriptor_394_0;
    v7 = _Block_copy(aBlock);
    v8 = v1;
    v9 = a1;

    [v5 transitionWithView:v4 duration:5242880 options:v7 animations:0 completion:0.25];
    _Block_release(v7);
  }

  else
  {
    v10 = sub_18B7C07CC();
    v11 = *&v10[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    sub_18BBF8190(a1);
  }
}

uint64_t sub_18BAFF7BC(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_18BB10B30;
  *(v6 + 24) = v5;
  v11[4] = sub_18B9D53B0;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18B7E3BF4;
  v11[3] = &block_descriptor_404_1;
  v7 = _Block_copy(v11);
  v8 = a1;
  v9 = a2;
  sub_18BC1E1A8();

  [v4 safari:v7 performWithoutRetargetingAnimations:?];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_18BAFF930(uint64_t a1, void *a2)
{
  v3 = sub_18B7C07CC();
  v4 = *&v3[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  sub_18BBF8190(a2);
}

void sub_18BAFF9A0(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v3 = _s4ItemVMa();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v66 - v9;
  v11 = _s4PageVMa();
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v66 - v19;
  v21 = sub_18B7C5C10(v18);
  v22 = v21[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];

  if (v22 == 1)
  {
    v23 = sub_18B7C07CC();
    v24 = *&v23[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v25 = sub_18B7EBEFC();
    v26 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
    swift_beginAccess();
    sub_18B7CA054(v25 + v26, v20, &qword_1EA9D9260);
    v27 = _s15PanGestureStateVMa(0);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) != 1)
    {

      v34 = &qword_1EA9D9260;
      v35 = v20;
      goto LABEL_7;
    }

    sub_18B988BAC(v20, &qword_1EA9D9260);
    v66 = v2;
    v28 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
    swift_beginAccess();
    v29 = v25 + v28;
    v30 = v66;
    sub_18B7CA054(v29, v16, &qword_1EA9D4520);

    v31 = _s17PinchGestureStateVMa(0);
    v32 = (*(*(v31 - 8) + 48))(v16, 1, v31);
    sub_18B988BAC(v16, &qword_1EA9D4520);
    if (v32 != 1)
    {
      return;
    }

    v33 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF638(&v30[v33], v7, _s7ContentVMa);
    sub_18BB15074(v70, v10);
    sub_18B7DFF64(v7, _s7ContentVMa);
    if ((*(v69 + 48))(v10, 1, v11) == 1)
    {
      v34 = &qword_1EA9D52E0;
      v35 = v10;
LABEL_7:
      sub_18B988BAC(v35, v34);
      return;
    }

    sub_18B82FE24(v10, v13, _s4PageVMa);
    v36 = *&v30[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_validateDismissal];
    sub_18BC1E1A8();
    LOBYTE(v36) = v36(v13);

    sub_18B7DFF64(v13, _s4PageVMa);
    if (v36)
    {
      if (sub_18BAF0728())
      {
        v37 = v68;
        sub_18B7DF638(v70, v68, _s4ItemVMa);
        v38 = (*(v67 + 80) + 24) & ~*(v67 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v30;
        sub_18B82FE24(v37, v39 + v38, _s4ItemVMa);
        v40 = v30;
        sub_18BB02A30(0, sub_18BB10AC4, v39);

        return;
      }

      v41 = sub_18B7D6E1C();
      v42 = v41;
      if (v41 >> 62)
      {
        v43 = sub_18BC219A8();
        if (v43)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
LABEL_14:
          if (v43 < 1)
          {
            __break(1u);
            return;
          }

          v44 = 0;
          v45 = MEMORY[0x1E69E7D40];
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v46 = MEMORY[0x18CFFD010](v44, v42);
            }

            else
            {
              v46 = *(v42 + 8 * v44 + 32);
            }

            v47 = v46;
            ++v44;
            (*((*v45 & *v46) + 0x138))();
          }

          while (v43 != v44);
        }
      }

      v48 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem;
      v49 = v66;
      v50 = *&v66[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem];
      v51 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled;
      v50[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 0;
      v52 = v50;
      sub_18B7C9974();
      v54 = v53;
      [v53 setUserInteractionEnabled_];

      [*&v52[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] setUserInteractionEnabled_];
      v55 = *&v49[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem];
      *(v55 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled) = 1;
      [*(v55 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) setUserInteractionEnabled_];
      if ([objc_opt_self() areAnimationsEnabled])
      {
        sub_18BB030DC(v70, 0);
      }

      v56 = *&v49[v48];
      v57 = &v56[OBJC_IVAR___SFTabOverviewDisplayItem_state];
      v58 = *&v56[OBJC_IVAR___SFTabOverviewDisplayItem_state];
      v59 = v56[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
      v60 = v56[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
      v61 = *&v56[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
      v62 = v56[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
      v63 = *&v56[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
      *v57 = 0x4032000000000000;
      *(v57 + 4) = 0;
      *(v57 + 2) = 0x3F86872B020C49BALL;
      v57[24] = 1;
      *(v57 + 4) = 0x3FECCCCCCCCCCCCDLL;
      v64 = 256;
      if (!v60)
      {
        v64 = 0;
      }

      v71[0] = v58;
      v71[1] = v64 | v59;
      v71[2] = v61;
      v71[3] = v62;
      v71[4] = v63;
      v65 = v56;
      sub_18B9E2784(v71);
    }
  }
}

uint64_t sub_18BB001AC(uint64_t a1)
{
  v2 = v1;
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-v8];
  v10 = _s4ItemVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF638(v2 + v14, v6, _s7ContentVMa);
  v25 = a1 + *(_s4ItemVMa_4() + 20);
  sub_18BB17290(sub_18B9EB468, v24, v9);
  sub_18B7DFF64(v6, _s7ContentVMa);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &qword_1EA9D7CD0);
    return 0;
  }

  sub_18B82FE24(v9, v13, _s4ItemVMa);
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewRegistrationsByItem;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (!*(v17 + 16))
  {
    goto LABEL_13;
  }

  sub_18BC1E3F8();
  v18 = sub_18BB8B29C(v13);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  sub_18BC1E1A8();

  v21 = *(v20 + 32);
  sub_18BC1E3F8();

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = sub_18BC219A8();
  if (!result)
  {
LABEL_12:

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x18CFFD010](0, v21);
    goto LABEL_10;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v21 + 32);
LABEL_10:
    v15 = v23;

LABEL_14:
    sub_18B7DFF64(v13, _s4ItemVMa);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BB004E4(uint64_t a1)
{
  v2 = v1;
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = _s4ItemVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF638(v2 + v14, v6, _s7ContentVMa);
  v19 = a1 + *(_s4ItemVMa_2() + 20);
  sub_18BB17290(sub_18B99B24C, v18, v9);
  sub_18B7DFF64(v6, _s7ContentVMa);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_18B988BAC(v9, &qword_1EA9D7CD0);
  }

  sub_18B82FE24(v9, v13, _s4ItemVMa);
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewRegistrationsByItem;
  swift_beginAccess();
  if (*(*(v2 + v16) + 16))
  {
    sub_18BC1E3F8();
    sub_18BB8B29C(v13);
    if (v17)
    {
      sub_18BC1E1A8();

      if (qword_1EA9D2200 != -1)
      {
        swift_once();
      }

      sub_18BA4A080(qword_1EA9F7A90);
    }

    else
    {
    }
  }

  return sub_18B7DFF64(v13, _s4ItemVMa);
}

uint64_t sub_18BB007E0(void *a1, int a2, int a3)
{
  v4 = v3;
  v209 = a3;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9268);
  MEMORY[0x1EEE9AC00](v202);
  v203 = v194 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v201 = v194 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v199 = v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v206 = v194 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v207 = v194 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9250);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v194 - v17;
  v19 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v211 = v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = _s4ItemVMa();
  v21 = *(v212 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v212);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v195 = v194 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v196 = v194 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v194 - v29;
  v31 = sub_18B7C5C10(v28);
  sub_18B7C9974();
  v33 = v32;

  v34 = sub_18B7CEA3C();
  if (v34)
  {
    v204 = v21;
    v194[1] = v22;
    v194[0] = v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = *&v34[OBJC_IVAR___SFTabOverview_transitionContainerView];

    v36 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewRegistrationsByItem;
    swift_beginAccess();
    v198 = v36;
    inited = v4;
    v37 = *(v4 + v36);
    v38 = *(v37 + 16);
    v200 = a2;
    v205 = a1;
    v210 = v35;
    if (v38)
    {
      sub_18BC1E3F8();
      v39 = sub_18BB8B29C(a1);
      if (v40)
      {
        v41 = *(*(v37 + 56) + 8 * v39);
        sub_18BC1E1A8();

        v42 = *(v41 + 48);
        v208 = v41;
        if (v42)
        {
          *(v41 + 104) = 1;
          sub_18BC1E1A8();
          sub_18BAEF984();
          swift_beginAccess();
          *(v41 + 40) = MEMORY[0x1E69E7CC0];

          v43 = *(v41 + 16);
          if (v43)
          {
            v44 = v35;
LABEL_9:
            v208 = v41;
            v35 = v44;
LABEL_19:
            v58 = v43;
            [v35 addSubview_];
            v59 = sub_18B7C07CC();
            v60 = *&v59[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_transitionContainerView];

            v61 = *(v41 + 24);
            sub_18BC1E1A8();
            [v60 addSubview_];

            goto LABEL_24;
          }

          v44 = v35;
          if (!v209)
          {
            type metadata accessor for TabThumbnailView();
            v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            [v44 addSubview_];
            sub_18BA49B40(v45);

            v43 = *(v41 + 16);
          }

          if (v43)
          {
            goto LABEL_9;
          }

          v208 = v41;
          v35 = v44;
          if ((a2 & 1) == 0)
          {
LABEL_23:
            v63 = sub_18B7C07CC();
            v64 = *&v63[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_transitionContainerView];

            v65 = *(v41 + 24);
            sub_18BC1E1A8();
            [v64 addSubview_];

            goto LABEL_24;
          }

          goto LABEL_15;
        }

LABEL_13:
        v46 = sub_18BB0C37C(a1, a2 & 1, v209);
        v41 = v46;
        if ((a2 & 1) == 0)
        {
          v49 = *(inited + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem);
          v50 = sub_18B7DE654();
          [v50 presentationValue];
          v52 = v51;

          v53 = swift_allocObject();
          *(v53 + 16) = v41;
          *(v53 + 24) = v52;
          a1 = objc_opt_self();
          v54 = swift_allocObject();
          *(v54 + 16) = sub_18BB106FC;
          *(v54 + 24) = v53;
          v55 = swift_allocObject();
          *(v55 + 16) = sub_18B7D1EC4;
          *(v55 + 24) = v54;
          v219 = sub_18B9D53B0;
          v220 = v55;
          aBlock = MEMORY[0x1E69E9820];
          v216 = 1107296256;
          v217 = sub_18B7E3BF4;
          v218 = &block_descriptor_329;
          v56 = _Block_copy(&aBlock);
          v57 = v220;
          sub_18BC1E1A8();
          sub_18BC1E1A8();
          sub_18BC1E1A8();

          [a1 performWithoutAnimation_];
          _Block_release(v56);
          LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

          if (v56)
          {
            __break(1u);
            goto LABEL_107;
          }

          v43 = *(v41 + 16);
          a1 = v205;
          v35 = v210;
          if (v43)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

        v43 = *(v46 + 16);
        if (v43)
        {
          goto LABEL_19;
        }

LABEL_15:
        if (v209 == 1)
        {
          v47 = *(*(inited + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem) + OBJC_IVAR___SFTabOverviewDisplayItem_transitionContainerView);
          v48 = *(v41 + 24);
          sub_18BC1E1A8();
          [v47 addSubview_];
        }

        else
        {
          v62 = *(v41 + 24);
          sub_18BC1E1A8();
          [v35 addSubview_];
        }

LABEL_24:
        v57 = v207;
        v197 = *(v41 + 104);
        if (v197)
        {
          goto LABEL_31;
        }

        v66 = *(v212 + 28);
        sub_18BC1E1A8();
        sub_18BB0A8E4(a1 + v66, "beginning presentation transition", 33, 2);

        if (!v208)
        {
          goto LABEL_31;
        }

        v67 = qword_1EA9D22A0;
        sub_18BC1E1A8();
        if (v67 == -1)
        {
LABEL_27:
          v68 = sub_18BC1F2C8();
          __swift_project_value_buffer(v68, qword_1EA9F7E98);
          sub_18B7DF638(a1, v30, _s4ItemVMa);
          v69 = sub_18BC1F2A8();
          v70 = sub_18BC21258();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            aBlock = v72;
            *v71 = 136446210;
            v73 = sub_18BC1EBA8();
            v75 = v74;
            sub_18B7DFF64(v30, _s4ItemVMa);
            v76 = sub_18B7EA850(v73, v75, &aBlock);
            v57 = v207;

            *(v71 + 4) = v76;
            _os_log_impl(&dword_18B7AC000, v69, v70, "Invalidating existing non-retargetable registration for %{public}s.", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v72);
            MEMORY[0x18CFFEEE0](v72, -1, -1);
            MEMORY[0x18CFFEEE0](v71, -1, -1);
          }

          else
          {

            sub_18B7DFF64(v30, _s4ItemVMa);
          }

          sub_18BA4A758();

          a1 = v205;
LABEL_31:
          v77 = *(v212 + 28);
          v78 = inited;
          sub_18BA4C310(a1 + v77);

          v79 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
          swift_beginAccess();
          v80 = v78 + v79;
          v81 = v211;
          sub_18B7DF638(v80, v211, _s7ContentVMa);
          sub_18BB176FC(v18);
          sub_18B7DFF64(v81, _s7ContentVMa);
          v82 = _s7SectionVMa_0();
          if ((*(*(v82 - 8) + 48))(v18, 1, v82) == 1)
          {
            sub_18B988BAC(v18, &unk_1EA9D9250);
          }

          else
          {
            v83 = v18[*(v82 + 24)];
            sub_18B7DFF64(v18, _s7SectionVMa_0);
            if (v83)
            {
              sub_18BA4B814(a1 + v77, *(inited + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabIconPool));
            }
          }

          v84 = *(v41 + 24);
          sub_18B7DF638(a1, v57, _s4ItemVMa);
          v85 = v204;
          v86 = *(v204 + 56);
          v87 = 1;
          v88 = v212;
          v86(v57, 0, 1, v212);
          v89 = v57;
          v90 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
          v91 = inited;
          swift_beginAccess();
          v92 = v91 + v90;
          v93 = v201;
          sub_18B7CA054(v92, v201, &qword_1EA9D9298);
          v94 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
          v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
          v96 = v206;
          if (!v95)
          {
            sub_18B7DF638(v93, v206, _s4ItemVMa);
            v87 = 0;
          }

          v211 = v84;
          sub_18B988BAC(v93, &qword_1EA9D9298);
          v86(v96, v87, 1, v88);
          v97 = *(v202 + 48);
          v98 = v203;
          sub_18B7CA054(v89, v203, &qword_1EA9D7CD0);
          sub_18B7CA054(v96, v98 + v97, &qword_1EA9D7CD0);
          v99 = v96;
          v100 = *(v85 + 48);
          if (v100(v98, 1, v88) == 1)
          {
            sub_18B988BAC(v99, &qword_1EA9D7CD0);
            sub_18B988BAC(v89, &qword_1EA9D7CD0);
            v101 = v100(v98 + v97, 1, v88);
            v102 = v98;
            v103 = v200;
            v104 = v210;
            v105 = v205;
            if (v101 == 1)
            {
              sub_18B988BAC(v102, &qword_1EA9D7CD0);
              v106 = inited;
              goto LABEL_44;
            }
          }

          else
          {
            v107 = v199;
            sub_18B7CA054(v98, v199, &qword_1EA9D7CD0);
            v108 = v100(v98 + v97, 1, v88);
            v102 = v98;
            v103 = v200;
            if (v108 != 1)
            {
              v109 = v102 + v97;
              v110 = v196;
              sub_18B82FE24(v109, v196, _s4ItemVMa);
              v111 = v107;
              updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
              sub_18B7DFF64(v110, _s4ItemVMa);
              sub_18B988BAC(v206, &qword_1EA9D7CD0);
              sub_18B988BAC(v207, &qword_1EA9D7CD0);
              sub_18B7DFF64(v111, _s4ItemVMa);
              sub_18B988BAC(v102, &qword_1EA9D7CD0);
              v104 = v210;
              v105 = v205;
              v106 = inited;
              if ((updated & 1) == 0)
              {
                goto LABEL_67;
              }

LABEL_44:
              v114 = *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics + 32);
              v113 = *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics + 40);
              v115 = &v211[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
              v117 = *&v211[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 32];
              v116 = *&v211[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 40];
              v119 = *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics);
              v118 = *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics + 16);
              v120 = *&v211[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
              v121 = *&v211[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 16];
              *v115 = v119;
              v115[1] = v118;
              v115[2].f64[0] = v114;
              v115[2].f64[1] = v113;
              if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v119, v120), vceqq_f64(v118, v121)))) & 1) == 0 || v114 != v117 || v113 != v116)
              {
                [v211 setNeedsLayout];
              }

              v122 = v211;
              v123 = v211;
              sub_18BB0C608();
              v124 = *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent);
              *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent) = v122;
              v125 = v123;

              sub_18BAF309C();
              if (v103)
              {
                type metadata accessor for AnimationSettings();
                inited = swift_initStaticObject();
                if (*(v41 + 104))
                {
                  LOBYTE(v126) = 1;
                  v127 = 0.0;
                  goto LABEL_56;
                }
              }

              else
              {
                if (v209 != 1)
                {
                  LOBYTE(v126) = *(v41 + 104);
                  type metadata accessor for AnimationSettings();
                  inited = swift_initStaticObject();
                  v127 = 1.0;
LABEL_56:
                  if (qword_1EA9D24E0 != -1)
                  {
                    goto LABEL_111;
                  }

                  while (1)
                  {
                    v132 = qword_1EA9F83F8;
                    sub_18BC1E1A8();
LABEL_58:
                    v133 = *(v41 + 24);
                    type metadata accessor for ThumbnailBorrowedContentOpacityAnimator();
                    v134 = swift_allocObject();
                    v135 = v134;
                    *(v134 + 48) = 0;
                    *(v134 + 16) = 0;
                    *(v134 + 24) = v126;
                    *(v134 + 32) = v127;
                    *(v134 + 40) = v133;
                    v136 = *(v41 + 112);
                    if (v136)
                    {
                      MEMORY[0x1EEE9AC00](v134);
                      v194[-2] = v136;
                      v194[-1] = v137;
                      swift_beginAccess();
                      v138 = v133;
                      sub_18BC1E1A8();
                      result = sub_18BB0B63C(sub_18BB108E8, &v194[-4]);
                      v140 = *(*(v41 + 40) + 16);
                      if (v140 < result)
                      {
                        __break(1u);
                        return result;
                      }

                      sub_18BB7A6A0(result, v140);
                      swift_endAccess();
                      *(v136 + 49) = 1;

                      *(v135 + 48) = 1;
                    }

                    else
                    {
                      v141 = v133;
                    }

                    v142 = v210;
                    v103 = v200;
                    *(v41 + 112) = v135;
                    sub_18BC1E1A8();

                    swift_beginAccess();
                    v143 = *(v41 + 40);
                    sub_18BC1E1A8();
                    sub_18BC1E1A8();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v41 + 40) = v143;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v143 = sub_18B9B5B34(0, *(v143 + 2) + 1, 1, v143);
                      *(v41 + 40) = v143;
                    }

                    v146 = *(v143 + 2);
                    v145 = *(v143 + 3);
                    if (v146 >= v145 >> 1)
                    {
                      v143 = sub_18B9B5B34((v145 > 1), v146 + 1, 1, v143);
                    }

                    *(v143 + 2) = v146 + 1;
                    v147 = &v143[32 * v146];
                    *(v147 + 4) = v135;
                    *(v147 + 5) = &off_1EFF26678;
                    *(v147 + 6) = v132;
                    *(v147 + 7) = inited;
                    *(v41 + 40) = v143;
                    swift_endAccess();

                    v104 = v142;
LABEL_67:
                    v148 = *&v211[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
                    if (sub_18BAF1D28(v105, v211))
                    {
                      break;
                    }

LABEL_79:
                    type metadata accessor for AnimationSettings();
                    v161 = 1.0;
                    if (v103)
                    {
                      v162 = 1.0;
                    }

                    else
                    {
                      v162 = 0.0;
                    }

                    swift_initStaticObject();
                    v163 = sub_18BC1E1A8();
                    sub_18BA4BE70(v163, v162);

                    v164 = swift_initStaticObject();
                    if ((v103 & 1) != 0 && (v161 = 0.0, (*(v41 + 104) & 1) == 0))
                    {
                      v165 = sub_18BAFF120(v105, v41);
                    }

                    else
                    {
                      if (qword_1EA9D24E0 != -1)
                      {
                        swift_once();
                      }

                      v165 = qword_1EA9F83F8;
                      sub_18BC1E1A8();
                    }

                    sub_18BA4C0C4(v164, v165, v161);

                    v166 = *(v106 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem);
                    v127 = sub_18B9D59B8();

                    if (v103)
                    {
                      v167 = swift_allocObject();
                      *(v167 + 16) = v41;
                      *(v167 + 24) = 1.0 / v127;
                      v168 = objc_opt_self();
                      v169 = swift_allocObject();
                      *(v169 + 16) = sub_18BB116EC;
                      *(v169 + 24) = v167;
                      v170 = swift_allocObject();
                      *(v170 + 16) = sub_18B9D53AC;
                      *(v170 + 24) = v169;
                      v219 = sub_18B9D53B0;
                      v220 = v170;
                      aBlock = MEMORY[0x1E69E9820];
                      v216 = 1107296256;
                      v217 = sub_18B7E3BF4;
                      v218 = &block_descriptor_365;
                      v171 = _Block_copy(&aBlock);
                      sub_18BC1E1A8();
                      sub_18BC1E1A8();
                      sub_18BC1E1A8();

                      [v168 performWithoutAnimation_];
                      _Block_release(v171);
                      LOBYTE(v168) = swift_isEscapingClosureAtFileLocation();

                      if (v168)
                      {
                        __break(1u);
                      }

                      else
                      {
                        v172 = swift_initStaticObject();
                        v173 = *(v41 + 32);
                        type metadata accessor for ThumbnailContentScaleAnimator();
                        v174 = swift_allocObject();
                        *(v174 + 16) = 0x3FF0000000000000;
                        *(v174 + 24) = v173;
                        v175 = qword_1EA9D24E0;
                        sub_18BC1E3F8();
                        v104 = v210;
                        if (v175 != -1)
                        {
                          swift_once();
                        }

                        v176 = qword_1EA9F83F8;
                        v177 = sub_18BC1E1A8();
                        sub_18BB0C1F4(v177, v172, v176, v41, &off_1EFF245B8);

                        if (v209 == 1)
                        {
                          *(v41 + 48) = 0;
                        }

LABEL_96:
                        v184 = v198;
                        swift_beginAccess();
                        swift_retain_n();
                        v185 = swift_isUniquelyReferenced_nonNull_native();
                        v214 = *(v106 + v184);
                        *(v106 + v184) = 0x8000000000000000;
                        sub_18BAA8178(v41, v105, v185);
                        *(v106 + v184) = v214;
                        swift_endAccess();
                        if (v197)
                        {

LABEL_102:

                          return v41;
                        }

                        v186 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v187 = v194[0];
                        sub_18B7DF638(v105, v194[0], _s4ItemVMa);
                        v188 = (*(v204 + 80) + 24) & ~*(v204 + 80);
                        v189 = swift_allocObject();
                        *(v189 + 16) = v186;
                        sub_18B82FE24(v187, v189 + v188, _s4ItemVMa);
                        v169 = swift_allocObject();
                        *(v169 + 16) = sub_18BB10708;
                        *(v169 + 24) = v189;
                        swift_beginAccess();
                        v106 = *(v41 + 56);
                        sub_18BC1E1A8();
                        sub_18BC1E1A8();
                        v190 = swift_isUniquelyReferenced_nonNull_native();
                        *(v41 + 56) = v106;
                        v171 = v104;
                        if (v190)
                        {
LABEL_99:
                          v192 = v106[2];
                          v191 = v106[3];
                          if (v192 >= v191 >> 1)
                          {
                            v106 = sub_18B9B5C40((v191 > 1), v192 + 1, 1, v106);
                          }

                          v106[2] = v192 + 1;
                          v193 = &v106[2 * v192];
                          v193[4] = sub_18B9B8844;
                          v193[5] = v169;
                          *(v41 + 56) = v106;
                          swift_endAccess();

                          goto LABEL_102;
                        }
                      }

                      v106 = sub_18B9B5C40(0, v106[2] + 1, 1, v106);
                      *(v41 + 56) = v106;
                      goto LABEL_99;
                    }

                    if (*(v41 + 104) != 1)
                    {
                      goto LABEL_96;
                    }

                    v178 = swift_allocObject();
                    *(v178 + 16) = v41;
                    *(v178 + 24) = 0x3FF0000000000000;
                    v179 = objc_opt_self();
                    v126 = swift_allocObject();
                    *(v126 + 16) = sub_18BB10720;
                    *(v126 + 24) = v178;
                    v180 = swift_allocObject();
                    *(v180 + 16) = sub_18B9D53AC;
                    *(v180 + 24) = v126;
                    v219 = sub_18B9D53B0;
                    v220 = v180;
                    aBlock = MEMORY[0x1E69E9820];
                    v216 = 1107296256;
                    v217 = sub_18B7E3BF4;
                    v218 = &block_descriptor_350;
                    v181 = v104;
                    v182 = _Block_copy(&aBlock);
                    sub_18BC1E1A8();
                    sub_18BC1E1A8();
                    sub_18BC1E1A8();

                    [v179 performWithoutAnimation_];
                    v183 = v182;
                    v104 = v181;
                    _Block_release(v183);
                    LOBYTE(v179) = swift_isEscapingClosureAtFileLocation();

                    if ((v179 & 1) == 0)
                    {
                      goto LABEL_96;
                    }

                    __break(1u);
LABEL_111:
                    swift_once();
                  }

                  if (v148)
                  {
                    if (v103)
                    {
                      goto LABEL_70;
                    }
                  }

                  else
                  {
                    v150 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v151 = v195;
                    sub_18B7DF638(v105, v195, _s4ItemVMa);
                    v152 = (*(v204 + 80) + 24) & ~*(v204 + 80);
                    v153 = swift_allocObject();
                    *(v153 + 16) = v150;
                    sub_18B82FE24(v151, v153 + v152, _s4ItemVMa);
                    v154 = swift_allocObject();
                    *(v154 + 16) = sub_18BB10848;
                    *(v154 + 24) = v153;
                    swift_beginAccess();
                    v155 = *(v41 + 56);
                    sub_18BC1E1A8();
                    sub_18BC1E1A8();
                    v156 = swift_isUniquelyReferenced_nonNull_native();
                    *(v41 + 56) = v155;
                    if ((v156 & 1) == 0)
                    {
                      v155 = sub_18B9B5C40(0, v155[2] + 1, 1, v155);
                      *(v41 + 56) = v155;
                    }

                    v158 = v155[2];
                    v157 = v155[3];
                    if (v158 >= v157 >> 1)
                    {
                      v155 = sub_18B9B5C40((v157 > 1), v158 + 1, 1, v155);
                    }

                    v155[2] = v158 + 1;
                    v159 = &v155[2 * v158];
                    v159[4] = sub_18BB1174C;
                    v159[5] = v154;
                    *(v41 + 56) = v155;
                    swift_endAccess();

                    v104 = v210;
                    if (v103)
                    {
LABEL_70:
                      v149 = 0.0;
                      if (qword_1EA9D2210 == -1)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_108;
                    }
                  }

                  v149 = 1.0;
                  if (qword_1EA9D2220 == -1)
                  {
LABEL_78:
                    v160 = sub_18BC1E1A8();
                    sub_18BA4BC20(v160, v149);

                    goto LABEL_79;
                  }

LABEL_108:
                  swift_once();
                  goto LABEL_78;
                }

                v128 = objc_opt_self();
                v129 = swift_allocObject();
                *(v129 + 16) = sub_18BB10908;
                *(v129 + 24) = v41;
                v130 = swift_allocObject();
                *(v130 + 16) = sub_18B9D53AC;
                *(v130 + 24) = v129;
                v219 = sub_18B9D53B0;
                v220 = v130;
                aBlock = MEMORY[0x1E69E9820];
                v216 = 1107296256;
                v217 = sub_18B7E3BF4;
                v218 = &block_descriptor_384_0;
                v131 = _Block_copy(&aBlock);
                swift_retain_n();
                sub_18BC1E1A8();
                v104 = v210;

                [v128 performWithoutAnimation_];
                _Block_release(v131);
                LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

                if ((v128 & 1) == 0)
                {
                  goto LABEL_67;
                }

                __break(1u);
              }

              v132 = sub_18BAFF120(v105, v41);
              LOBYTE(v126) = 1;
              v127 = 0.0;
              goto LABEL_58;
            }

            sub_18B988BAC(v206, &qword_1EA9D7CD0);
            sub_18B988BAC(v207, &qword_1EA9D7CD0);
            sub_18B7DFF64(v107, _s4ItemVMa);
            v104 = v210;
            v105 = v205;
          }

          sub_18B988BAC(v102, &qword_1EA9D9268);
          v106 = inited;
          goto LABEL_67;
        }

LABEL_107:
        swift_once();
        goto LABEL_27;
      }
    }

    v208 = 0;
    goto LABEL_13;
  }

  return 0;
}

void sub_18BB025DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18B7DF638(a3, v6, _s4ItemVMa);
    v9 = &v8[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations];
    swift_beginAccess();
    sub_18BB59EEC(v6, v11);
    v12[0] = v11[0];
    v12[1] = v11[1];
    v12[2] = v11[2];
    v13[0] = v11[3];
    *(v13 + 9) = *(&v11[3] + 9);
    if (*&v11[0])
    {
      v14 = *&v12[0];
      v16 = *(&v11[1] + 8);
      v17 = *(&v11[2] + 8);
      v18 = *(&v11[3] + 8);
      v19 = BYTE8(v11[4]);
      v15 = *(v11 + 8);
      (*v9)(v6, &v14);
      sub_18B988BAC(v12, &unk_1EA9D92A0);
    }

    sub_18B7DFF64(v6, _s4ItemVMa);
    swift_endAccess();
  }
}

void sub_18BB02784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = v7;
    v9 = Strong;
    sub_18BC1E1A8();
    sub_18BB0AD54("ending presentation transition", 30, 2);

    sub_18BA4ADD0();
    sub_18BA4B568();
    v29 = v9;
    v10 = *(a1 + 32);
    v26 = a1;
    v27 = a3;
    if (v10 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18BC219A8())
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      if (!i)
      {
        break;
      }

      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x18CFFD010](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = *&v13[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
        sub_18BC1E1A8();

        if (v16)
        {
          sub_18BA7832C(v16);
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_14:

    v17 = v28;
    sub_18B7DF638(v27, v28, _s4ItemVMa);
    v18 = v29;
    swift_beginAccess();
    sub_18BAD2FB0(0, v17);
    swift_endAccess();
    v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent;
    v20 = *&v18[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent];
    if (v20)
    {
      v21 = *(v26 + 24);
      type metadata accessor for TabThumbnailView();
      v22 = v21;
      v23 = v20;
      v24 = sub_18BC215C8();

      if (v24)
      {
        sub_18BB0C608();
        v25 = *&v18[v19];
        *&v18[v19] = 0;

        sub_18BAF309C();
      }
    }
  }
}

void sub_18BB02A30(char a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_18B7D1E9C;
    *(v27 + 24) = v26;
    v34 = sub_18B7D1E94;
    v35 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_18B7E3BF4;
    v33 = &block_descriptor_294_0;
    v28 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v25 safari:v28 performWithoutRetargetingAnimations:?];
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v8 = *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionAssertion];
  v9 = *(v8 + 24);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = Strong;
  *(v8 + 24) = v11;
  if (v11 == 1)
  {
    swift_beginAccess();
    v13 = *(v8 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_18BC1E3F8();
      v15 = v13 + 40;
      do
      {
        v16 = *(v15 - 8);
        LOBYTE(aBlock) = *(v8 + 24) > 0;
        sub_18BC1E1A8();
        v16(&aBlock);

        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = a1 & 1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = v12;
  v34 = sub_18BB10660;
  v35 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_18B7B0DB0;
  v33 = &block_descriptor_300_0;
  v19 = _Block_copy(&aBlock);
  v20 = v3;
  sub_18BC1E1A8();
  v21 = v12;

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v34 = sub_18BB10678;
  v35 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_18BA89100;
  v33 = &block_descriptor_306_0;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  [v17 transitionWithView:v21 duration:5242880 options:v19 animations:v23 completion:0.25];
  _Block_release(v23);
  _Block_release(v19);
}

uint64_t sub_18BB02DE8(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_18BB106C8;
  *(v12 + 24) = v11;
  v17[4] = sub_18B9D53B0;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_18B7E3BF4;
  v17[3] = &block_descriptor_316;
  v13 = _Block_copy(v17);
  v14 = a1;
  sub_18BC1E1A8();
  v15 = a5;
  sub_18BC1E1A8();

  [v10 safari:v13 performWithoutRetargetingAnimations:?];
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

id sub_18BB02F7C(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v8 = 3;
  if (a2)
  {
    v8 = 1;
  }

  v9 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
  *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = v8;
  if (v8 != v9)
  {
    sub_18BAFE7A0(v9);
  }

  *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition) = 0;

  a3(v10);

  return [a5 layoutIfNeeded];
}

uint64_t sub_18BB03014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionAssertion);
  v3 = *(v2 + 24);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v5;
    if (!v5)
    {
      result = swift_beginAccess();
      v7 = *(v2 + 16);
      v8 = *(v7 + 16);
      if (v8)
      {
        sub_18BC1E3F8();
        v9 = v7 + 40;
        do
        {
          v10 = *(v9 - 8);
          v11 = *(v2 + 24) > 0;
          sub_18BC1E1A8();
          v10(&v11);

          v9 += 16;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t sub_18BB030DC(uint64_t a1, int a2)
{
  v202 = a2;
  v201 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9250);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v182 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v186 = &v176 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v183 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v176 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v185 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v176 - v14;
  v16 = _s4ItemVMa();
  v199 = *(v16 - 8);
  v200 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v192 = v18;
  v193 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v176 - v19;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9268);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v176 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v189 = &v176 - v22;
  v198 = _s4ItemVMa_4();
  MEMORY[0x1EEE9AC00](v198);
  v24 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v187 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v194 = &v176 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v195 = &v176 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v176 - v32;
  v34 = _s7ContentVMa(0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v181 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v184 = &v176 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v176 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v176 - v45;
  v47 = _s4PageVMa();
  v48 = *(v47 - 8);
  result = MEMORY[0x1EEE9AC00](v47);
  if ((v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isSettingUpTransition] & 1) == 0)
  {
    v179 = v15;
    v180 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isSettingUpTransition;
    v197 = &v176 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isSettingUpTransition] = 1;
    v51 = 3;
    if (v202)
    {
      v51 = 1;
    }

    v52 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState];
    *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = v51;
    v203 = v2;
    if (v51 != v52)
    {
      sub_18BAFE7A0(v52);
      v2 = v203;
    }

    v53 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    v178 = v53;
    sub_18B7DF638(&v2[v53], v40, _s7ContentVMa);
    sub_18BB15074(v201, v46);
    sub_18B7DFF64(v40, _s7ContentVMa);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      result = sub_18B988BAC(v46, &qword_1EA9D52E0);
LABEL_93:
      v203[v180] = 0;
      return result;
    }

    sub_18B82FE24(v46, v197, _s4PageVMa);
    v54 = v202;
    v55 = v201;
    if ((v202 & 1) == 0)
    {
      v56 = sub_18B7C07CC();
      sub_18B7DF638(v197, v44, _s4PageVMa);
      (*(v48 + 56))(v44, 0, 1, v47);
      sub_18B7DF638(v55, v33, _s4ItemVMa);
      (*(v199 + 56))(v33, 0, 1, v200);
      v213 = 0;
      v211 = 0u;
      v212 = 0u;
      sub_18B999AB0(v44, v33, &v211);

      v57 = v203;
      sub_18B988BAC(&v211, &unk_1EA9D5060);
      sub_18B988BAC(v33, &qword_1EA9D7CD0);
      sub_18B988BAC(v44, &qword_1EA9D52E0);
      [*(*&v57[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) layoutIfNeeded];
    }

    v58 = sub_18BB056C8(v55, v54 & 1);
    v177 = v59;
    v60 = sub_18B7C07CC();
    v61 = *&v60[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v62 = *v55;
    v63 = v200;
    v64 = v200[7];
    v65 = v198;
    v66 = *(v198 + 20);
    v67 = sub_18BC1EC08();
    (*(*(v67 - 8) + 16))(&v24[v66], &v55[v64], v67);
    v68 = v55[v63[8]];
    v69 = v55[v63[11]];
    v70 = *&v55[v63[12]];
    v71 = *&v55[v63[14]];
    v72 = &v55[v63[15]];
    v74 = *v72;
    v73 = *(v72 + 1);
    *v24 = v62;
    v24[v65[6]] = v68;
    v24[v65[7]] = v69;
    *&v24[v65[8]] = v70;
    *&v24[v65[9]] = v71;
    v75 = &v24[v65[10]];
    *v75 = v74;
    *(v75 + 1) = v73;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    v76 = sub_18BC0015C(v24);

    sub_18B7DFF64(v24, _s4ItemVMa_4);
    if (!v76)
    {
      sub_18B7DFF64(v197, _s4PageVMa);

      goto LABEL_93;
    }

    v176 = v58;
    v198 = v76;
    if (v177)
    {
      v77 = 1;
      v78 = v203;
      v79 = v176;
      v80 = v202;
      goto LABEL_31;
    }

    v81 = v195;
    sub_18B7DF638(v55, v195, _s4ItemVMa);
    v82 = v200;
    v83 = *(v199 + 56);
    v83(v81, 0, 1, v200);
    v84 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
    v85 = v203;
    swift_beginAccess();
    v86 = v189;
    sub_18B7CA054(&v85[v84], v189, &unk_1EA9D5350);
    v87 = _s11TransactionVMa();
    if ((*(*(v87 - 8) + 48))(v86, 1, v87))
    {
      sub_18B988BAC(v86, &unk_1EA9D5350);
      v88 = v194;
      v83(v194, 1, 1, v82);
    }

    else
    {
      v88 = v194;
      sub_18B7CA054(v86 + *(v87 + 20), v194, &qword_1EA9D7CD0);
      sub_18B988BAC(v86, &unk_1EA9D5350);
    }

    v89 = v191;
    v90 = *(v190 + 48);
    sub_18B7CA054(v81, v191, &qword_1EA9D7CD0);
    sub_18B7CA054(v88, v89 + v90, &qword_1EA9D7CD0);
    v91 = v81;
    v92 = *(v199 + 48);
    if (v92(v89, 1, v82) == 1)
    {
      sub_18B988BAC(v88, &qword_1EA9D7CD0);
      sub_18B988BAC(v91, &qword_1EA9D7CD0);
      v93 = v92(v89 + v90, 1, v82);
      v80 = v202;
      v76 = v198;
      if (v93 == 1)
      {
        sub_18B988BAC(v89, &qword_1EA9D7CD0);
        v77 = 2;
        v78 = v203;
        v79 = v176;
        goto LABEL_31;
      }
    }

    else
    {
      v94 = v187;
      sub_18B7CA054(v89, v187, &qword_1EA9D7CD0);
      if (v92(v89 + v90, 1, v82) != 1)
      {
        v105 = v89 + v90;
        v106 = v196;
        sub_18B82FE24(v105, v196, _s4ItemVMa);
        LODWORD(v191) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7DFF64(v106, _s4ItemVMa);
        sub_18B988BAC(v194, &qword_1EA9D7CD0);
        sub_18B988BAC(v195, &qword_1EA9D7CD0);
        sub_18B7DFF64(v94, _s4ItemVMa);
        v95 = sub_18B988BAC(v89, &qword_1EA9D7CD0);
        v80 = v202;
        v76 = v198;
        v79 = v176;
        if (v191)
        {
          v77 = 2;
LABEL_30:
          v78 = v203;
LABEL_31:
          v107 = sub_18BB007E0(v55, v80 & 1, v77);
          if (!v107)
          {
            sub_18B7DFF64(v197, _s4PageVMa);

            goto LABEL_93;
          }

          v108 = v107;
          v109 = v80 & 1;
          if (v80)
          {
            v110 = v76;
          }

          else
          {
            v110 = v79;
          }

          if (v109)
          {
            v111 = v79;
          }

          else
          {
            v111 = v76;
          }

          sub_18BB059C0(v55, v107, v109);
          v112 = *(v79 + 16) + OBJC_IVAR___SFTabThumbnailView_restingSize;
          v113 = *(v112 + 16);
          *(v108 + 72) = *v112;
          *(v108 + 88) = v113;
          sub_18B7DF638(v55, v196, _s4ItemVMa);
          sub_18B82AD34(&unk_1EA9D9270, _s4ItemVMa);
          sub_18BC21A68();
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE30);
          v207 = v114;
          v208 = sub_18B7B0B08(&unk_1EA9D9280, &qword_1EA9DBE30);
          v205[4] = v208;
          *&v206 = v110;
          v205[3] = v114;
          v205[0] = v111;
          v115 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem;
          v116 = *(*&v78[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
          sub_18BC1E1A8();
          sub_18BC1E1A8();
          v117 = v116;
          v118 = sub_18B7EBEFC();

          v119 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
          swift_beginAccess();
          v120 = v179;
          sub_18B7CA054(v118 + v119, v179, &qword_1EA9D9260);
          v121 = _s15PanGestureStateVMa(0);
          v122 = *(*(v121 - 8) + 48);
          if (v122(v120, 1, v121) == 1)
          {
            sub_18B988BAC(v120, &qword_1EA9D9260);
            v123 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
            swift_beginAccess();
            v124 = v118 + v123;
            v125 = v188;
            sub_18B7CA054(v124, v188, &qword_1EA9D4520);

            v126 = _s17PinchGestureStateVMa(0);
            v127 = (*(*(v126 - 8) + 48))(v125, 1, v126);
            sub_18B988BAC(v125, &qword_1EA9D4520);
            if (v127 == 1)
            {
              goto LABEL_44;
            }
          }

          else
          {

            sub_18B988BAC(v120, &qword_1EA9D9260);
          }

          if (*(*(*(v115 + v203) + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) + qword_1EA9F8530) != 1)
          {
            v128 = 2;
LABEL_46:
            v129 = v202;
            v213 = 0;
            v211 = 0u;
            v212 = 0u;
            sub_18B7FD070(v205, &v211, &qword_1EA9D57F0);
            v214 = v128;
            v215 = v209[0];
            v216 = v209[1];
            v217 = v210;
            v218 = v108;
            v219 = &off_1EE463558;
            sub_18B7C3FA4(&v206, &v220);
            if (v177)
            {
              if (v129)
              {
                v130 = v201;
                if (qword_1EA9D21B0 != -1)
                {
                  swift_once();
                }

                v131 = &qword_1EA9F7A40;
              }

              else
              {
                v130 = v201;
                if (qword_1EA9D2220 != -1)
                {
                  swift_once();
                }

                v131 = &qword_1EA9F7AB0;
              }

              goto LABEL_79;
            }

            if (v129)
            {
              v132 = *(*(v115 + v203) + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
              v133 = sub_18B7EBEFC();

              v134 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
              swift_beginAccess();
              v135 = v133 + v134;
              v136 = v185;
              sub_18B7CA054(v135, v185, &qword_1EA9D9260);
              if (v122(v136, 1, v121) == 1)
              {
                sub_18B988BAC(v136, &qword_1EA9D9260);
                v137 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
                swift_beginAccess();
                v138 = v133 + v137;
                v139 = v183;
                sub_18B7CA054(v138, v183, &qword_1EA9D4520);

                v140 = _s17PinchGestureStateVMa(0);
                v141 = (*(*(v140 - 8) + 48))(v139, 1, v140);
                sub_18B988BAC(v139, &qword_1EA9D4520);
                v130 = v201;
                v142 = v186;
                if (v141 == 1)
                {
                  v143 = v181;
                  sub_18B7DF638(&v203[v178], v181, _s7ContentVMa);
                  v144 = v182;
                  sub_18BB176FC(v182);
                  sub_18B7DFF64(v143, _s7ContentVMa);
                  v145 = _s7SectionVMa_0();
                  if ((*(*(v145 - 8) + 48))(v144, 1, v145) == 1)
                  {
                    sub_18B988BAC(v144, &unk_1EA9D9250);
LABEL_76:
                    if (qword_1EA9D2210 != -1)
                    {
                      swift_once();
                    }

                    v131 = &qword_1EA9F7AA0;
                    goto LABEL_79;
                  }

                  v149 = *(v144 + *(v145 + 24));
                  sub_18B7DFF64(v144, _s7SectionVMa_0);
                  if ((v149 & 1) == 0)
                  {
                    goto LABEL_76;
                  }

                  if (qword_1EA9D21B8 != -1)
                  {
                    swift_once();
                  }

                  v131 = &qword_1EA9F7A48;
LABEL_79:
                  v150 = *v131;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9290);
                  v151 = swift_allocObject();
                  *(v151 + 16) = xmmword_18BC3E410;
                  sub_18B99B8C0(&v211, v151 + 32);
                  type metadata accessor for MatchMoveTransition();
                  swift_allocObject();
                  swift_retain_n();
                  v152 = sub_18BA003CC(v151, sub_18BB105E0, v150);

                  v153 = v203;
                  v154 = *&v203[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion];
                  v155 = *(v154 + 24);
                  v156 = __OFADD__(v155, 1);
                  v157 = v155 + 1;
                  if (v156)
                  {
                    __break(1u);
                  }

                  else
                  {
                    *(v154 + 24) = v157;
                    if (v157 == 1)
                    {
                      swift_beginAccess();
                      v158 = *(v154 + 16);
                      v159 = *(v158 + 16);
                      if (v159)
                      {
                        sub_18BC1E3F8();
                        v160 = v158 + 40;
                        do
                        {
                          v161 = *(v160 - 8);
                          LOBYTE(v209[0]) = *(v154 + 24) > 0;
                          sub_18BC1E1A8();
                          v161(v209);

                          v160 += 16;
                          --v159;
                        }

                        while (v159);

                        v153 = v203;
                        v130 = v201;
                      }
                    }

                    *&v153[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition] = v152;
                    swift_retain_n();

                    v162 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
                    swift_beginAccess();
                    if (*(*&v153[v162] + 16))
                    {
                      sub_18BC1E3F8();
                      sub_18BB8B29C(v130);
                      if (v163)
                      {
                        sub_18BC1E1A8();

                        sub_18B9FFFFC();
                      }

                      else
                      {
                      }
                    }

                    v164 = v130;
                    v165 = v203;
                    swift_beginAccess();
                    sub_18BC1E1A8();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v204 = *&v165[v162];
                    *&v165[v162] = 0x8000000000000000;
                    sub_18BAA81B8(v152, v164, isUniquelyReferenced_nonNull_native);
                    *&v165[v162] = v204;
                    swift_endAccess();
                    v167 = swift_allocObject();
                    swift_weakInit();

                    v168 = v193;
                    sub_18B7DF638(v164, v193, _s4ItemVMa);
                    v169 = (*(v199 + 80) + 33) & ~*(v199 + 80);
                    v170 = swift_allocObject();
                    *(v170 + 16) = v165;
                    *(v170 + 24) = v167;
                    *(v170 + 32) = v202 & 1;
                    sub_18B82FE24(v168, v170 + v169, _s4ItemVMa);
                    v154 = swift_allocObject();
                    *(v154 + 16) = sub_18BB105E8;
                    *(v154 + 24) = v170;
                    swift_beginAccess();
                    v115 = *(v152 + 6);
                    v171 = v165;
                    sub_18BC1E1A8();
                    sub_18BC1E1A8();
                    v172 = swift_isUniquelyReferenced_nonNull_native();
                    *(v152 + 6) = v115;
                    if (v172)
                    {
                      goto LABEL_90;
                    }
                  }

                  v115 = sub_18B7C358C(0, v115[2] + 1, 1, v115);
                  *(v152 + 6) = v115;
LABEL_90:
                  v174 = v115[2];
                  v173 = v115[3];
                  if (v174 >= v173 >> 1)
                  {
                    v115 = sub_18B7C358C((v173 > 1), v174 + 1, 1, v115);
                  }

                  v115[2] = v174 + 1;
                  v175 = &v115[2 * v174];
                  v175[4] = sub_18BB116C4;
                  v175[5] = v154;
                  *(v152 + 6) = v115;
                  swift_endAccess();

                  sub_18B9FE734();

                  sub_18B7DFF64(v197, _s4PageVMa);
                  result = sub_18B99B91C(&v211);
                  goto LABEL_93;
                }
              }

              else
              {

                sub_18B988BAC(v136, &qword_1EA9D9260);
                v130 = v201;
                v142 = v186;
              }

              v146 = v184;
              sub_18B7DF638(&v203[v178], v184, _s7ContentVMa);
              sub_18BB176FC(v142);
              sub_18B7DFF64(v146, _s7ContentVMa);
              v147 = _s7SectionVMa_0();
              if ((*(*(v147 - 8) + 48))(v142, 1, v147) == 1)
              {
                sub_18B988BAC(v142, &unk_1EA9D9250);
              }

              else
              {
                v148 = *(v142 + *(v147 + 24));
                sub_18B7DFF64(v142, _s7SectionVMa_0);
                if (v148)
                {
                  if (qword_1EA9D21C0 != -1)
                  {
                    swift_once();
                  }

                  v131 = &qword_1EA9F7A50;
                  goto LABEL_79;
                }
              }

              if (qword_1EA9D2218 != -1)
              {
                swift_once();
              }

              v131 = &qword_1EA9F7AA8;
              goto LABEL_79;
            }

            if (qword_1EA9D2220 != -1)
            {
              swift_once();
            }

            v131 = &qword_1EA9F7AB0;
            v130 = v201;
            goto LABEL_79;
          }

LABEL_44:
          v128 = 1;
          goto LABEL_46;
        }

LABEL_23:
        v96 = sub_18B7C5C10(v95);
        v97 = *(v79 + 16);
        sub_18B9E71F4(v97);
        v99 = v98;

        if (v99 & 1) != 0 || (v80 & 1) != 0 && (v100 = *(v76 + 16), v101 = *&v203[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem], v102 = v100, sub_18B9E71F4(v102), v104 = v103, v101, v102, (v104))
        {
          v77 = 0;
        }

        else
        {
          v77 = 3;
        }

        goto LABEL_30;
      }

      sub_18B988BAC(v194, &qword_1EA9D7CD0);
      sub_18B988BAC(v195, &qword_1EA9D7CD0);
      sub_18B7DFF64(v94, _s4ItemVMa);
      v80 = v202;
      v76 = v198;
    }

    v95 = sub_18B988BAC(v89, &qword_1EA9D9268);
    v79 = v176;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_18BB04AD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = _s4ItemVMa();
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 88);
  v12 = *(a2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion);
  v13 = *(v12 + 24);
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    return result;
  }

  *(v12 + 24) = v15;
  if (!v15)
  {
    swift_beginAccess();
    v16 = *(v12 + 16);
    v17 = *(v16 + 16);
    if (v17)
    {
      v33 = a5;
      sub_18BC1E3F8();
      v18 = v16 + 40;
      do
      {
        v19 = *(v18 - 8);
        v34[0] = *(v12 + 24) > 0;
        sub_18BC1E1A8();
        v19(v34);

        v18 += 16;
        --v17;
      }

      while (v17);

      a5 = v33;
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v21 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition;
  v22 = *(a2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition);
  if (Strong)
  {
    if (!v22)
    {
      sub_18BC1E1A8();
LABEL_19:

      goto LABEL_20;
    }

    v23 = Strong;

    if (v23 == v22)
    {
LABEL_13:
      v24 = 2;
      if ((a4 & 1) == 0)
      {
        v24 = 0;
      }

      v25 = *(a2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
      *(a2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = v24;
      if (v24 != v25)
      {
        sub_18BAFE7A0(v25);
      }

      *(a2 + v21) = 0;
      goto LABEL_19;
    }
  }

  else if (!v22)
  {
    sub_18BC1E1A8();
    goto LABEL_13;
  }

LABEL_20:
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  swift_beginAccess();
  v27 = *(a2 + v26);
  if (*(v27 + 16))
  {
    sub_18BC1E3F8();
    v28 = sub_18BB8B29C(a5);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);
      sub_18BC1E1A8();
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (!v30)
  {
    if (v31)
    {
    }

    goto LABEL_32;
  }

  if (!v31)
  {
    return swift_unknownObjectRelease();
  }

  v32 = v31;

  result = swift_unknownObjectRelease();
  if (v32 == v30)
  {
LABEL_32:
    sub_18B7DF638(a5, v11, _s4ItemVMa);
    swift_beginAccess();
    sub_18BAD2FF0(0, v11);
    return swift_endAccess();
  }

  return result;
}

void sub_18BB04DB4(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    sub_18BB030DC(a1, 1);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition) = 0;

    v5 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
    swift_beginAccess();
    if (*(*(v3 + v5) + 16))
    {
      sub_18BC1E3F8();
      sub_18BB8B29C(a1);
      if (v6)
      {
        sub_18BC1E1A8();

        sub_18B9FFFFC();
      }

      else
      {
      }
    }

    v7 = *(v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *(v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = 2;
    if (v7 != 2)
    {
      sub_18BAFE7A0(v7);
    }
  }

  v8 = sub_18B7C5C10();
  v9 = &v8[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v10 = *&v8[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v11 = v8[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
  v12 = v8[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
  v13 = *&v8[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
  v14 = v8[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
  v15 = *&v8[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
  *v9 = 0;
  v9[8] = 0;
  v9[9] = 1;
  *(v9 + 2) = 0x3FF0000000000000;
  v9[24] = 0;
  *(v9 + 4) = 0x3FF0000000000000;
  v16 = 256;
  if (!v12)
  {
    v16 = 0;
  }

  v17[0] = v10;
  v17[1] = v16 | v11;
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  sub_18B9E2784(v17);
}

void sub_18BB04F20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = _s4ItemVMa();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  v10 = _s7ContentVMa(0);
  sub_18B7CA054(v9 + *(v10 + 40), v4, &qword_1EA9D7CD0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_18B988BAC(v4, &qword_1EA9D7CD0);
  }

  else
  {
    sub_18B82FE24(v4, v8, _s4ItemVMa);
    sub_18BB05234(v8);
    sub_18B7DFF64(v8, _s4ItemVMa);
  }

  v11 = *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canShowTips);
  v12 = sub_18BC1E1A8();
  LOBYTE(v11) = v11(v12);

  if (v11)
  {
    if (qword_1EA9D2470 != -1)
    {
      swift_once();
    }

    v13 = qword_1EA9DA228;
    v14 = sub_18BB7D980();
    v15 = sub_18BB7DAEC(v14);

    *(v13 + OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher) = v15;

    if (v15 >> 62)
    {
      if (!sub_18BC219A8())
      {
        return;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_18BC1E3F8();
      v16 = MEMORY[0x18CFFD010](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v16 = *(v15 + 32);
    }

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    sub_18B9AD550();
  }
}

void sub_18BB05234(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (sub_18BAF0728())
  {
    v7 = sub_18B7C5C10();
    v8 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled;
    v7[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 1;
    sub_18B7C9974();
    v10 = v9;
    [v9 setUserInteractionEnabled_];

    [*&v7[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] setUserInteractionEnabled_];
    v11 = sub_18B7C07CC();
    v11[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 0;
    [*&v11[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher] setUserInteractionEnabled_];

    sub_18B7DF638(a1, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s4ItemVMa);
    v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    sub_18B82FE24(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, _s4ItemVMa);
    v14 = v2;
    sub_18BB02A30(1, sub_18BB10578, v13);

    return;
  }

  v15 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState];
  *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = 1;
  if (v15 != 1)
  {
    sub_18BAFE7A0(v15);
  }

  v16 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion];
  v17 = *(v16 + 24);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v16 + 24) = v19;
  if (v19 == 1)
  {
    swift_beginAccess();
    v20 = *(v16 + 16);
    v21 = *(v20 + 16);
    if (v21)
    {
      sub_18BC1E3F8();
      v22 = v20 + 40;
      do
      {
        v23 = *(v22 - 8);
        v44[0] = *(v16 + 24) > 0;
        sub_18BC1E1A8();
        v23(v44);

        v22 += 16;
        --v21;
      }

      while (v21);
    }
  }

  v24 = sub_18B7C5C10();
  v25 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled;
  v24[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 1;
  sub_18B7C9974();
  v27 = v26;
  [v26 setUserInteractionEnabled_];

  [*&v24[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] setUserInteractionEnabled_];
  v28 = sub_18B7C07CC();
  v28[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 0;
  [*&v28[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher] setUserInteractionEnabled_];

  v29 = [objc_opt_self() areAnimationsEnabled];
  if (*(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow) == 1 && (v29 & 1) != 0)
  {
    sub_18BAF4400(a1);
    v30 = *(v16 + 24);
    v18 = __OFSUB__(v30, 1);
    v31 = v30 - 1;
    if (!v18)
    {
      *(v16 + 24) = v31;
      if (!v31)
      {
        swift_beginAccess();
        v32 = *(v16 + 16);
        v33 = *(v32 + 16);
        if (v33)
        {
          sub_18BC1E3F8();
          v34 = v32 + 40;
          do
          {
            v35 = *(v34 - 8);
            v43 = *(v16 + 24) > 0;
            sub_18BC1E1A8();
            v35(&v43);

            v34 += 16;
            --v33;
          }

          while (v33);
LABEL_24:

          return;
        }
      }

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  sub_18BB04DB4(a1, v29);
  v36 = *(v16 + 24);
  v18 = __OFSUB__(v36, 1);
  v37 = v36 - 1;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v16 + 24) = v37;
  if (!v37)
  {
    swift_beginAccess();
    v38 = *(v16 + 16);
    v39 = *(v38 + 16);
    if (v39)
    {
      sub_18BC1E3F8();
      v40 = v38 + 40;
      do
      {
        v41 = *(v40 - 8);
        v43 = *(v16 + 24) > 0;
        sub_18BC1E1A8();
        v41(&v43);

        v40 += 16;
        --v39;
      }

      while (v39);
      goto LABEL_24;
    }
  }
}

uint64_t sub_18BB056C8(char *a1, char a2)
{
  v3 = v2;
  v6 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(v3 + v12, v11, &unk_1EA9D5350);
  v13 = _s11TransactionVMa();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13))
  {
    v14 = sub_18B988BAC(v11, &unk_1EA9D5350);
  }

  else
  {
    v15 = v11[*(v13 + 24)];
    v14 = sub_18B988BAC(v11, &unk_1EA9D5350);
    if (v15)
    {
      return sub_18BAF4A00(v14, a2 & 1);
    }
  }

  v16 = sub_18B7C5C10(v14);
  sub_18B7C9974();
  v18 = v17;

  v19 = *a1;
  v20 = _s4ItemVMa();
  v21 = v20[7];
  v22 = v6[5];
  v23 = sub_18BC1EC08();
  (*(*(v23 - 8) + 16))(&v8[v22], &a1[v21], v23);
  v24 = a1[v20[9]];
  v25 = a1[v20[10]];
  v26 = a1[v20[11]];
  v27 = *&a1[v20[12]];
  v28 = &a1[v20[13]];
  v29 = *v28;
  v30 = v28[1];
  v31 = *&a1[v20[14]];
  v32 = &a1[v20[15]];
  *v8 = v19;
  v8[v6[6]] = v24;
  v8[v6[7]] = v25;
  v8[v6[8]] = 0;
  v8[v6[9]] = v26;
  *&v8[v6[10]] = v27;
  v34 = *v32;
  v33 = v32[1];
  v35 = &v8[v6[11]];
  *v35 = v29;
  v35[1] = v30;
  *&v8[v6[12]] = v31;
  v36 = &v8[v6[13]];
  *v36 = v34;
  v36[1] = v33;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v37 = sub_18BA578AC(v8, 1);

  v14 = sub_18B7DFF64(v8, _s4ItemVMa_2);
  if (v37)
  {
    return v37;
  }

  return sub_18BAF4A00(v14, a2 & 1);
}

uint64_t sub_18BB059C0(uint64_t a1, uint64_t a2, int a3)
{
  v48 = a3;
  v5 = _s4ItemVMa();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9238);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v45 - v14;
  v45[1] = type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  sub_18BA4AAF8(inited, 0.0);
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewRegistrationsByItem;
  swift_beginAccess();
  v17 = *(v3 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v45[2] = &v59;
  v51 = v17;
  result = sub_18BC1E3F8();
  v24 = 0;
  v55 = v15;
  v56 = v13;
  v53 = v5;
  v54 = a1;
  v47 = v8;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_13:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v28 | (v25 << 6);
      v30 = v51;
      v31 = v49;
      sub_18B7DF638(*(v51 + 48) + *(v50 + 72) * v29, v49, _s4ItemVMa);
      v32 = *(*(v30 + 56) + 8 * v29);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9240);
      v34 = *(v33 + 48);
      v35 = v31;
      v13 = v56;
      sub_18B82FE24(v35, v56, _s4ItemVMa);
      *&v13[v34] = v32;
      (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
      sub_18BC1E1A8();
      v15 = v55;
LABEL_14:
      sub_18B7CF39C(v13, v15, &qword_1EA9D9238);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9240);
      if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
      {
      }

      v37 = *&v15[*(v36 + 48)];
      sub_18B82FE24(v15, v8, _s4ItemVMa);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        sub_18B7DFF64(v8, _s4ItemVMa);
      }

      else
      {
        v38 = 0.0;
        v39 = inited;
        if ((v48 & 1) == 0)
        {
          v39 = swift_initStaticObject();
          v38 = 18.0;
        }

        v40 = swift_allocObject();
        *(v40 + 16) = v37;
        *(v40 + 24) = v38;
        v52 = objc_opt_self();
        v41 = swift_allocObject();
        v41[2] = v39;
        v41[3] = sub_18BA4C89C;
        v41[4] = v40;
        v61 = sub_18B7D80AC;
        v62 = v41;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = sub_18B7B0DB0;
        v60 = &block_descriptor_45;
        v42 = _Block_copy(&aBlock);
        swift_retain_n();
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        v61 = CGRectMake;
        v62 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = sub_18B8043A0;
        v60 = &block_descriptor_272;
        v43 = _Block_copy(&aBlock);

        [v52 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v43);
        _Block_release(v42);

        v8 = v47;
        result = sub_18B7DFF64(v47, _s4ItemVMa);
        v15 = v55;
        v13 = v56;
      }

      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v22 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v22;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9240);
        (*(*(v44 - 8) + 56))(v13, 1, 1, v44);
        v21 = 0;
        v24 = v27;
        goto LABEL_14;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_18BB0601C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityObserver);
  v3 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible;
  v4 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible);
  sub_18BC1E1A8();
  v2(v4);

  if (*(v0 + v3) == 1)
  {

    return sub_18BB06154();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 0;
    v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
    swift_beginAccess();
    *(v1 + v6) = MEMORY[0x1E69E7CD0];

    sub_18B833A74();
    v7 = sub_18B7C5C10();
    sub_18B7C9974();
    v9 = v8;

    v10 = sub_18B7CEA3C();
    if (v10)
    {
      sub_18B86FFDC(0);
    }

    result = *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = 0;
    if (result)
    {
      return sub_18BAFE7A0(result);
    }
  }

  return result;
}

uint64_t sub_18BB06154()
{
  v1 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = _s4ItemVMa();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  v14 = _s7ContentVMa(0);
  sub_18B7CA054(v13 + *(v14 + 40), v8, &qword_1EA9D7CD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_18B988BAC(v8, &qword_1EA9D7CD0);
  }

  sub_18B82FE24(v8, v12, _s4ItemVMa);
  v16 = sub_18B7C5C10();
  sub_18B7C9974();
  v18 = v17;

  v19 = *v12;
  v20 = v9[7];
  v21 = v1[5];
  v22 = sub_18BC1EC08();
  (*(*(v22 - 8) + 16))(&v5[v21], &v12[v20], v22);
  v23 = v12[v9[9]];
  v24 = v12[v9[10]];
  v25 = v12[v9[11]];
  v26 = *&v12[v9[12]];
  v27 = &v12[v9[13]];
  v28 = *v27;
  v29 = v27[1];
  v30 = *&v12[v9[14]];
  v31 = &v12[v9[15]];
  *v5 = v19;
  v5[v1[6]] = v23;
  v5[v1[7]] = v24;
  v5[v1[8]] = 0;
  v5[v1[9]] = v25;
  *&v5[v1[10]] = v26;
  v32 = *v31;
  v33 = v31[1];
  v34 = &v5[v1[11]];
  *v34 = v28;
  v34[1] = v29;
  *&v5[v1[12]] = v30;
  v35 = &v5[v1[13]];
  *v35 = v32;
  v35[1] = v33;
  sub_18B7DF638(v5, v38, _s4ItemVMa_2);
  sub_18B82AD34(&qword_1EA9D9230, _s4ItemVMa_2);
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC21A68();
  sub_18B7DFF64(v5, _s4ItemVMa_2);
  sub_18B7F44EC(v43, v45);
  v45[5] = 0x767265764F626174;
  v45[6] = 0xEF6D657449776569;
  v44 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
  v42 = &_s18ItemScrollPositionON;
  *&v41 = 256;
  BYTE8(v41) = 0;
  sub_18B7B1AD4(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v44;
  sub_18BAA7848(v40, 0xD000000000000012, 0x800000018BC62780, isUniquelyReferenced_nonNull_native);
  sub_18B831014(v43);
  v44 = v39;
  sub_18BA56804(&v44);

  sub_18B7DFF64(v12, _s4ItemVMa);
  return sub_18B8303BC(&v44);
}

void sub_18BB065E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_18B7EDAC4();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_19:
      v5 = sub_18BC219A8();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    do
    {
      v7 = v6;
      if (v5 == v6)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18CFFD010](v6, v3);
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        v8 = sub_18BC1E1A8();
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      v9 = *(v8 + 24);

      v6 = v7 + 1;
    }

    while (v9 < 1);
    v10 = v5 != v7;

    v11 = v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible];
    v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible] = v10;
    if (v10 != v11)
    {
      sub_18BB0601C();
    }
  }
}

void sub_18BB06714()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC41E60;
    v3 = sub_18B7C07CC();
    v4 = *&v3[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v5 = *&v4[qword_1EA9F8558];
    sub_18BC1E1A8();

    *(inited + 32) = v5;
    *(inited + 40) = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion];
    sub_18BC1E1A8();
    if ((inited & 0xC000000000000001) == 0)
    {
      v6 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        if (*(v5 + 24) > 0)
        {
LABEL_5:
          v7 = 0;
          goto LABEL_9;
        }

        if (v6 != 1)
        {
          v8 = sub_18BC1E1A8();
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    v12 = *(MEMORY[0x18CFFD010](0, inited) + 24);

    if (v12 > 0)
    {
      goto LABEL_5;
    }

    v8 = MEMORY[0x18CFFD010](1, inited);
LABEL_8:
    v9 = *(v8 + 24);

    v7 = v9 < 1;
LABEL_9:
    swift_setDeallocating();
    swift_arrayDestroy();
    v10 = v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isInSteadyState];
    v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isInSteadyState] = v7;
    if (v7 == v10)
    {
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_steadyStateObserver];
      sub_18BC1E1A8();
      v11(v7);
    }
  }
}

uint64_t sub_18BB068E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = _s4PageVMa_0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18B7C5C10(v12);
  sub_18B7C9974();
  v17 = v16;

  v18 = sub_18B7CC308();
  v19 = sub_18B7C2E68(v18);
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v35.origin.x = v21;
  v35.origin.y = v23;
  v35.size.width = v25;
  v35.size.height = v27;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v21;
  v36.origin.y = v23;
  v36.size.width = v25;
  v36.size.height = v27;
  MidY = CGRectGetMidY(v36);
  sub_18B7CECB4(v9, MidX, MidY);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9DBE90);
    v30 = _s4PageVMa();
    return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
  }

  else
  {
    sub_18B82FE24(v9, v14, _s4PageVMa_0);
    v32 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    v33 = sub_18B7DF638(v2 + v32, v6, _s7ContentVMa);
    MEMORY[0x1EEE9AC00](v33);
    *(&v34 - 2) = v14;
    sub_18B835D80(sub_18B835E88, *(v6 + 1), a1);
    sub_18B7DFF64(v6, _s7ContentVMa);
    return sub_18B7DFF64(v14, _s4PageVMa_0);
  }
}

void sub_18BB07294(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TabSwitcherView();
  objc_msgSendSuper2(&v18, sel_willMoveToWindow_, a1);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [v1 bounds];
    v8 = (v1[OBJC_IVAR____TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView_lastLayoutBounds + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *&v1[OBJC_IVAR____TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView_lastLayoutBounds]);
    Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow] = 1;
    v9 = [Strong view];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    [v9 setNeedsLayout];

    if (v8)
    {

      return;
    }

    v11 = sub_18B7D6E1C();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_18BC219A8();
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_10:
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = MEMORY[0x1E69E7D40];
          do
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x18CFFD010](v14, v12);
            }

            else
            {
              v16 = *(v12 + 8 * v14 + 32);
            }

            v17 = v16;
            ++v14;
            (*((*v15 & *v16) + 0x140))();
          }

          while (v13 != v14);
          goto LABEL_17;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }
    }

LABEL_17:
  }
}

id sub_18BB07518(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BB0757C(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v37 - v8;
  v9 = _s4ItemVMa_2();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 56);
  v39 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0));
  v46 = a1;
  sub_18BC1E3F8();
  v41 = v16;
  swift_beginAccess();
  v17 = 0;
  v18 = (v13 + 63) >> 6;
  v40 = v18;
  v42 = v11;
  do
  {
    if (!v15)
    {
      while (1)
      {
        v22 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v22 >= v18)
        {
          v35 = 1;
          goto LABEL_17;
        }

        v15 = *(v39 + 8 * v22);
        ++v17;
        if (v15)
        {
          v17 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_20:
      result = sub_18BC21CF8();
      __break(1u);
      return result;
    }

LABEL_11:
    sub_18B7DF638(*(v46 + 48) + *(v43 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v11, _s4ItemVMa_2);
    v23 = *v41;
    sub_18B7DF638(v11, v6, _s4ItemVMa_2);
    swift_storeEnumTagMultiPayload();
    v24 = v6;
    v25 = v6;
    v26 = v44;
    sub_18B7CA054(v25, v44, &unk_1EA9D92F0);
    if (swift_getEnumCaseMultiPayload() - 1 >= 2)
    {
      goto LABEL_20;
    }

    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B988BAC(v26, &unk_1EA9D92F0);
    v27 = v47;
    if (*(v23 + 16))
    {
      v6 = v24;
      v28 = sub_18B83B1C8(v24);
      if (v29)
      {
        v30 = *(v23 + 56);
        v37 = v28;
        v38 = v30;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
        v32 = *(v31 - 8);
        sub_18B7CA054(v38 + *(v32 + 72) * v37, v47, &unk_1EA9D4F40);
        v33 = v31;
        v27 = v47;
        (*(v32 + 56))(v47, 0, 1, v33);
        v6 = v24;
      }

      else
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
        (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
      }
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
      (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
      v6 = v24;
    }

    v15 &= v15 - 1;

    sub_18B988BAC(v6, &unk_1EA9D92F0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
    v21 = (*(*(v20 - 8) + 48))(v27, 1, v20);
    sub_18B988BAC(v27, &unk_1EA9D9300);
    v11 = v42;
    sub_18B7DFF64(v42, _s4ItemVMa_2);
    v18 = v40;
  }

  while (v21 != 1);
  v35 = 0;
LABEL_17:

  return v35;
}

uint64_t sub_18BB07B3C(uint64_t a1)
{
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v136 = *(v122 - 8);
  v3 = MEMORY[0x1EEE9AC00](v122);
  v121 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v143 = &v120 - v5;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v6 = MEMORY[0x1EEE9AC00](v140);
  v123 = (&v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v137 = &v120 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v132 = (&v120 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v144 = &v120 - v12;
  v13 = _s4ItemVMa_2();
  v135 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v130 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v120 - v18;
  v19 = *(a1 + 56);
  v139 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v145 = v20;
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x150);
  v24 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0));
  v25 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v26 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v28 = *MEMORY[0x1E69E7D40] & *v1;
  v128 = *(v28 + 0x100);
  v29 = v1 + *(v28 + 136);
  v138 = a1;
  v30 = v17;
  sub_18BC1E3F8();
  v141 = v23;
  swift_beginAccess();
  v131 = v24;
  swift_beginAccess();
  v129 = v25;
  swift_beginAccess();
  v126 = v26;
  swift_beginAccess();
  v125 = v27;
  swift_beginAccess();
  v124 = v29;
  swift_beginAccess();
  v31 = 0;
  v32 = (v145 + 63) >> 6;
  v120 = (v136 + 56);
  v146 = v1;
  v133 = v32;
  v142 = v30;
  v33 = v139;
  if (v22)
  {
    while (1)
    {
LABEL_9:
      v35 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v36 = v134;
      sub_18B7DF638(*(v138 + 48) + *(v135 + 72) * (v35 | (v31 << 6)), v134, _s4ItemVMa_2);
      sub_18B82FE24(v36, v30, _s4ItemVMa_2);
      v37 = v30;
      v38 = v144;
      sub_18B7DF638(v37, v144, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v39 = *(v146 + v141);
      if (!*(v39 + 16))
      {
        goto LABEL_20;
      }

      sub_18BC1E3F8();
      v40 = sub_18B83B1C8(v38);
      if ((v41 & 1) == 0)
      {
        break;
      }

      v42 = *(*(v39 + 56) + 8 * v40);
      sub_18BC1E1A8();

      if (*(v42 + 3))
      {
        v43 = *&v42[*(*v42 + 224)];
        v44 = *(v43 + 24);
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_61;
        }

        *(v43 + 24) = v46;
        if (v46 == 1)
        {
          swift_beginAccess();
          v47 = *(v43 + 16);
          v48 = *(v47 + 16);
          if (v48)
          {
            sub_18BC1E3F8();
            v49 = v47 + 40;
            do
            {
              v50 = *(v49 - 8);
              LOBYTE(v149[0]) = *(v43 + 24) > 0;
              sub_18BC1E1A8();
              v50(v149);

              v49 += 16;
              --v48;
            }

            while (v48);
          }
        }

        sub_18B988BAC(v144, &unk_1EA9D92F0);
        v30 = v142;
        sub_18B7DFF64(v142, _s4ItemVMa_2);

        goto LABEL_52;
      }

LABEL_21:
      v51 = v132;
      v52 = v131[1];
      v149[0] = *v131;
      v149[1] = v52;
      v150[0] = v131[2];
      *(v150 + 9) = *(v131 + 41);
      sub_18B7CA054(v38, v132, &unk_1EA9D92F0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v145 = v42;
      if (EnumCaseMultiPayload == 2)
      {
        v54 = *v51;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
        v127 = v54;
        v56 = swift_projectBox();
        v57 = *(v55 + 48);
        sub_18B833990(v56, v148);
        v58 = v137;
        sub_18B7CA054(v56 + v57, v137, &unk_1EA9D92F0);
        v59 = *&v149[0];
        v60 = swift_allocBox();
        v62 = v61;
        v63 = *(v55 + 48);
        sub_18B833990(v148, v61);
        sub_18B7CA054(v58, v62 + v63, &unk_1EA9D92F0);
        v64 = v123;
        *v123 = v60;
        swift_storeEnumTagMultiPayload();
        if (!*(v59 + 16))
        {
          goto LABEL_57;
        }

        sub_18B7CA054(v149, v147, &unk_1EA9D50C0);
        v65 = sub_18B83B1C8(v64);
        if ((v66 & 1) == 0)
        {
          goto LABEL_60;
        }

        sub_18B7CA054(*(v59 + 56) + *(v136 + 72) * v65, v143, &unk_1EA9D4F40);
        sub_18B988BAC(v64, &unk_1EA9D92F0);
        sub_18B988BAC(v149, &unk_1EA9D50C0);
        sub_18B988BAC(v137, &unk_1EA9D92F0);
        sub_18B833D9C(v148);

        v67 = v145;
        if (!v145)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v70 = v137;
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_62;
        }

        v71 = v130;
        sub_18B82FE24(v51, v130, _s4ItemVMa_2);
        v72 = *&v149[0];
        sub_18B7DF638(v71, v70, _s4ItemVMa_2);
        swift_storeEnumTagMultiPayload();
        if (!*(v72 + 16))
        {
          goto LABEL_58;
        }

        sub_18B7CA054(v149, v147, &unk_1EA9D50C0);
        v73 = sub_18B83B1C8(v70);
        if ((v74 & 1) == 0)
        {
          goto LABEL_59;
        }

        sub_18B7CA054(*(v72 + 56) + *(v136 + 72) * v73, v143, &unk_1EA9D4F40);
        sub_18B988BAC(v149, &unk_1EA9D50C0);
        sub_18B988BAC(v70, &unk_1EA9D92F0);
        sub_18B7DFF64(v130, _s4ItemVMa_2);
        v67 = v145;
        if (!v145)
        {
LABEL_30:
          v75 = v121;
          sub_18B7CA054(v143, v121, &unk_1EA9D4F40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
          v68 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v68 + 3) = 0;
          v76 = *(*v68 + 160);
          updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
          (*(*(updated - 8) + 56))(&v68[v76], 1, 1, updated);
          v78 = *v120;
          v79 = v122;
          (*v120)(&v68[*(*v68 + 168)], 1, 1, v122);
          v78(&v68[*(*v68 + 176)], 1, 1, v79);
          *&v68[*(*v68 + 192)] = 0;
          v68[*(*v68 + 200)] = 0;
          *&v68[*(*v68 + 208)] = 0;
          *&v68[*(*v68 + 216)] = 0;
          v80 = *(*v68 + 224);
          type metadata accessor for Assertion();
          v81 = swift_allocObject();
          *(v81 + 16) = MEMORY[0x1E69E7CC0];
          *(v81 + 24) = 0;
          *&v68[v80] = v81;
          swift_unknownObjectWeakAssign();
          sub_18B7CA054(v75, &v68[*(*v68 + 184)], &unk_1EA9D4F40);
          v69 = v143;
          sub_18B7CF39C(v75, &v68[*(*v68 + 152)], &unk_1EA9D4F40);
          v67 = 0;
          goto LABEL_31;
        }
      }

      v68 = v67;
      v69 = v143;
LABEL_31:
      v82 = *(*v68 + 184);
      swift_beginAccess();
      sub_18BC1E1A8();
      sub_18B7EC8D0(v69, &v68[v82], &unk_1EA9D4F40);
      swift_endAccess();
      v83 = *&v68[*(*v68 + 224)];
      v84 = *(v83 + 24);
      v45 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v45)
      {
        goto LABEL_56;
      }

      v145 = v67;
      *(v83 + 24) = v85;
      if (v85 == 1)
      {
        swift_beginAccess();
        v86 = *(v83 + 16);
        v87 = *(v86 + 16);
        if (v87)
        {
          sub_18BC1E3F8();
          v88 = v86 + 40;
          do
          {
            v89 = *(v88 - 8);
            v147[0] = *(v83 + 24) > 0;
            sub_18BC1E1A8();
            v89(v147);

            v88 += 16;
            --v87;
          }

          while (v87);
        }
      }

      v90 = *v129;
      if (*v129)
      {
        sub_18BC1E1A8();
        v91 = v146;
        v92 = v142;
        v93 = v90(v146, v142);
        sub_18B7B171C(v90);
        v94 = *v126;
        if (*v126)
        {
          sub_18BC1E1A8();
          v94(v92, v93);
          sub_18B7B171C(v94);
        }

        v95 = *(v91 + v125);
        sub_18BC1E3F8();
        v96 = sub_18B9BA1CC(v92, v95);

        v97 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v93) + 0xB0))(v96 & 1);
        (*((*v97 & *v93) + 0xC8))(0);
        v98 = v124;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v99 = *(v98 + 1);
          ObjectType = swift_getObjectType();
          v127 = *(v99 + 120);
          v101 = v93;
          swift_unknownObjectRetain();
          v127(v146, v101, v142, ObjectType, v99);

          swift_unknownObjectRelease_n();
        }

        v102 = v93;
        v103 = [v102 layer];
        [v103 clearHasBeenCommitted];

        (*((*MEMORY[0x1E69E7D40] & *v102) + 0xE8))();
      }

      else
      {
        v93 = 0;
      }

      v104 = *(v68 + 3);
      *(v68 + 3) = v93;
      v105 = v93;

      v106 = *(v68 + 3);
      if (v106)
      {
        v107 = v106;
        [v107 safari:v68 setTabEntityProviderWithInfoProvider:?];
      }

      sub_18BAEFA70();
      v108 = sub_18BB08F38(v144);
      if (v93)
      {
        v109 = v105;
        v110 = [v109 superview];
        if (!v110 || (v111 = v110, sub_18B7B0AC0(0, &qword_1EA9D46F0), v112 = v108, v113 = sub_18BC215C8(), v111, v112, (v113 & 1) == 0))
        {
          [v108 addSubview_];
        }
      }

      v114 = v141;
      v115 = v108;
      v116 = v146;
      swift_beginAccess();
      sub_18BC1E1A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148[0] = *(v116 + v114);
      *(v116 + v114) = 0x8000000000000000;
      v118 = v144;
      sub_18BAA7FE0(v68, v144, isUniquelyReferenced_nonNull_native);
      *(v116 + v114) = v148[0];
      swift_endAccess();
      swift_beginAccess();
      sub_18BC1E1A8();
      sub_18BB5E9EC(v148, v68);
      swift_endAccess();

      v30 = v142;

      sub_18B988BAC(v143, &unk_1EA9D4F40);
      sub_18B988BAC(v118, &unk_1EA9D92F0);
      sub_18B7DFF64(v30, _s4ItemVMa_2);
LABEL_52:
      v32 = v133;
      v33 = v139;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    v42 = 0;
    goto LABEL_21;
  }

LABEL_5:
  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
    }

    v22 = *(v33 + 8 * v34);
    ++v31;
    if (v22)
    {
      v31 = v34;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

void sub_18BB08BC4(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v28 - v4;
  v6 = _s4ItemVMa_2();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);
  sub_18BC1E3F8();
  v33 = v12;
  swift_beginAccess();
  v13 = 0;
  v14 = (v9 + 63) >> 6;
  v32 = v5;
  while (v11)
  {
LABEL_10:
    v16 = v34;
    sub_18B7DF638(*(a1 + 48) + *(v35 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v34, _s4ItemVMa_2);
    sub_18B82FE24(v16, v5, _s4ItemVMa_2);
    swift_storeEnumTagMultiPayload();
    v17 = *(v2 + v33);
    if (!*(v17 + 16))
    {
      goto LABEL_20;
    }

    sub_18BC1E3F8();
    v18 = sub_18B83B1C8(v5);
    if ((v19 & 1) == 0)
    {

LABEL_20:

      sub_18B988BAC(v5, &unk_1EA9D92F0);
      return;
    }

    v20 = *(*(v17 + 56) + 8 * v18);
    sub_18BC1E1A8();
    sub_18B988BAC(v5, &unk_1EA9D92F0);

    v21 = *(v20 + *(*v20 + 224));
    v22 = *(v21 + 24);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v23)
    {
      goto LABEL_23;
    }

    *(v21 + 24) = v24;
    if (!v24)
    {
      swift_beginAccess();
      v25 = *(*(v21 + 16) + 16);
      if (v25)
      {
        v30 = v2;
        v31 = a1;
        v29 = sub_18BC1E3F8();
        v26 = v29 + 40;
        do
        {
          v27 = *(v26 - 8);
          v37 = *(v21 + 24) > 0;
          sub_18BC1E1A8();
          v27(&v37);

          v26 += 16;
          --v25;
        }

        while (v25);

        v2 = v30;
        a1 = v31;
      }
    }

    v11 &= v11 - 1;

    v5 = v32;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      sub_18BB092E0();
      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

char *sub_18BB08F38(uint64_t a1)
{
  v2 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  sub_18B7CA054(a1, &v24 - v9, &unk_1EA9D92F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
    v17 = swift_projectBox();
    v18 = *(v16 + 48);
    sub_18B833990(v17, v26);
    sub_18B7CA054(v17 + v18, v8, &unk_1EA9D92F0);
    v19 = &v25[*((*MEMORY[0x1E69E7D40] & *v25) + 0x88)];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 1);
      ObjectType = swift_getObjectType();
      v15 = (*(v20 + 160))(v25, v26, v8, ObjectType, v20);
      swift_unknownObjectRelease();
      sub_18B988BAC(v8, &unk_1EA9D92F0);
      sub_18B833D9C(v26);
    }

    else
    {
      sub_18B988BAC(v8, &unk_1EA9D92F0);
      sub_18B833D9C(v26);
      v15 = v25;
    }

    return v15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_18B82FE24(v10, v4, _s4ItemVMa_2);
    v12 = &v25[*((*MEMORY[0x1E69E7D40] & *v25) + 0x88)];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      v14 = swift_getObjectType();
      v15 = (*(v13 + 152))(v25, v4, v14, v13);
      swift_unknownObjectRelease();
      sub_18B7DFF64(v4, _s4ItemVMa_2);
      return v15;
    }

    sub_18B7DFF64(v4, _s4ItemVMa_2);
  }

  else
  {
    sub_18B988BAC(v10, &unk_1EA9D92F0);
  }

  v22 = v25;

  return v22;
}

void sub_18BB092E0()
{
  v1 = v0;
  v2 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v82 = *(v90 - 8);
  v4 = MEMORY[0x1EEE9AC00](v90);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v91 = &v77 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v97 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v77 - v10;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x150);
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = (v13 + 64);
  v15 = 1 << *(v13 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v18 = *v1;
  v19 = *v11;
  v84 = *((*v11 & *v1) + 0x160);
  v86 = *((v19 & v18) + 0x190);
  v88 = *((v19 & v18) + 0x100);
  v20 = v1 + *((v19 & v18) + 0x88);
  sub_18BC1E3F8();
  v80 = v20;
  swift_beginAccess();
  v21 = 0;
  v22 = v15 + 63;
  v23 = v13;
  v24 = v22 >> 6;
  v85 = v101;
  *&v25 = 136446210;
  v83 = v25;
  while (v17)
  {
LABEL_10:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v28 = *(*(v23 + 56) + ((v21 << 9) | (8 * v27)));
    v29 = *v28;
    if (!*(v28 + *(*v28 + 216)) && *(*(v28 + *(v29 + 224)) + 24) <= 0)
    {
      v81 = v23;
      v30 = *(v29 + 184);
      swift_beginAccess();
      sub_18B7CA054(v28 + v30, v98, &unk_1EA9D92F0);
      v31 = *(*v28 + 200);
      v32 = *(v28 + v31) == 1;
      v92 = v1;
      v93 = v12;
      v79 = v31;
      if (v32 || (v33 = *(v1 + v84), !*(v33 + 16)))
      {
        sub_18BC1E1A8();
      }

      else
      {
        v78 = v14;
        sub_18BC22158();
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        sub_18B83ADFC(aBlock);
        v34 = sub_18BC221A8();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v96 = (v33 + 56);
        if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v94 = ~v35;
          ObjectType = *(v82 + 72);
          while (1)
          {
            v37 = v97;
            sub_18B7CA054(*(v33 + 48) + ObjectType * v36, v97, &unk_1EA9D92F0);
            v38 = sub_18B8598D4(v37, v98);
            sub_18B988BAC(v37, &unk_1EA9D92F0);
            if (v38)
            {
              break;
            }

            v36 = (v36 + 1) & v94;
            if (((*&v96[(v36 >> 3) & 0xFFFFFFFFFFFFFF8] >> v36) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v76 = v98;
          v1 = v92;
          v12 = v93;
          v23 = v81;
          v14 = v78;
          goto LABEL_49;
        }

LABEL_20:

        v1 = v92;
        v14 = v78;
      }

      if (qword_1EA9D2280 != -1)
      {
        swift_once();
      }

      v39 = sub_18BC1F2C8();
      __swift_project_value_buffer(v39, qword_1EA9F7E38);
      v40 = v91;
      sub_18B7CA054(v98, v91, &unk_1EA9D92F0);
      v41 = sub_18BC1F2A8();
      LODWORD(v96) = sub_18BC21228();
      if (os_log_type_enabled(v41, v96))
      {
        v42 = swift_slowAlloc();
        v78 = v42;
        ObjectType = swift_slowAlloc();
        aBlock[0] = ObjectType;
        *v42 = v83;
        v94 = v41;
        v43 = v97;
        sub_18B7CA054(v40, v97, &unk_1EA9D92F0);
        sub_18B988BAC(v40, &unk_1EA9D92F0);
        v44 = sub_18BB434DC();
        v46 = v45;
        sub_18B988BAC(v43, &unk_1EA9D92F0);
        v47 = sub_18B7EA850(v44, v46, aBlock);
        v1 = v92;

        v48 = v78;
        *(v78 + 1) = v47;
        v49 = v94;
        v50 = v48;
        _os_log_impl(&dword_18B7AC000, v94, v96, "Removing info for %{public}s", v48, 0xCu);
        v51 = ObjectType;
        __swift_destroy_boxed_opaque_existential_1Tm(ObjectType);
        MEMORY[0x18CFFEEE0](v51, -1, -1);
        MEMORY[0x18CFFEEE0](v50, -1, -1);
      }

      else
      {
        sub_18B988BAC(v40, &unk_1EA9D92F0);
      }

      v96 = v28[3];
      if (v96)
      {
        v52 = *(v1 + v86);
        if (!v52)
        {
          goto LABEL_53;
        }

        ObjectType = objc_opt_self();
        v53 = swift_allocObject();
        v54 = v96;
        *(v53 + 16) = v96;
        *(v53 + 24) = v52;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_18BB10C58;
        *(v55 + 24) = v53;
        v101[2] = sub_18B9D53B0;
        v102 = v55;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v101[0] = sub_18B7E3BF4;
        v101[1] = &block_descriptor_432_1;
        v56 = _Block_copy(aBlock);
        v94 = v102;
        v57 = v54;
        swift_retain_n();
        v58 = v57;
        sub_18BC1E1A8();

        [ObjectType performWithoutAnimation_];

        _Block_release(v56);
        LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

        if (v56)
        {
          goto LABEL_52;
        }

        v59 = v28[3];
        v28[3] = 0;

        v60 = v28[3];
        if (v60)
        {
          v61 = v60;
          [v61 safari:v28 setTabEntityProviderWithInfoProvider:?];
        }

        v1 = v92;
      }

      if (*(v28 + v79) == 1)
      {
        swift_beginAccess();
        v62 = sub_18B83B1C8(v98);
        if (v63)
        {
          ObjectType = v62;
          v64 = v93;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v1 + v64);
          v99 = v66;
          *(v1 + v64) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18BB2B0C8();
            v66 = v99;
          }

          v67 = ObjectType;
          sub_18B988BAC(*(v66 + 48) + *(v82 + 72) * ObjectType, &unk_1EA9D92F0);

          sub_18BB5C6F4(v67, v66);
          *(v1 + v93) = v66;
        }

        swift_endAccess();
      }

      swift_beginAccess();
      sub_18B9CE50C(v28);
      swift_endAccess();

      v68 = v98;
      v69 = v89;
      sub_18B7CA054(v98, v89, &unk_1EA9D92F0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_18B988BAC(v68, &unk_1EA9D92F0);

        v76 = v69;
LABEL_45:
        v12 = v93;
        v23 = v81;
        goto LABEL_49;
      }

      v70 = v69;
      v71 = v87;
      sub_18B82FE24(v70, v87, _s4ItemVMa_2);
      if (!v96)
      {

        sub_18B7DFF64(v71, _s4ItemVMa_2);
        v76 = v98;
        goto LABEL_45;
      }

      v72 = v80;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v73 = *(v72 + 1);
        ObjectType = swift_getObjectType();
        v94 = *(v73 + 128);
        v74 = v96;
        swift_unknownObjectRetain();
        v75 = v87;
        (v94)(v92, v74, v87, ObjectType, v73);

        v1 = v92;
        swift_unknownObjectRelease_n();
      }

      else
      {

        v75 = v87;
      }

      v23 = v81;
      sub_18B7DFF64(v75, _s4ItemVMa_2);
      v76 = v98;
      v12 = v93;
LABEL_49:
      sub_18B988BAC(v76, &unk_1EA9D92F0);
    }
  }

  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      return;
    }

    v17 = *&v14[2 * v26];
    ++v21;
    if (v17)
    {
      v21 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_18BB09F58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18BB09FC4(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v3 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v58[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v58[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v58[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v58[-v14];
  v15 = sub_18BC1EC08();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v58[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v58[-v27];
  v29 = *(*v1 + 160);
  swift_beginAccess();
  v30 = *(v26 + 56);
  sub_18B7CA054(v2 + v29, v28, &unk_1EA9D3AE0);
  sub_18B7CA054(v71, &v28[v30], &unk_1EA9D3AE0);
  v71 = v16;
  v31 = *(v16 + 48);
  if (v31(v28, 1, v15) == 1)
  {
    if (v31(&v28[v30], 1, v15) == 1)
    {
      v32 = &unk_1EA9D3AE0;
      return sub_18B988BAC(v28, v32);
    }
  }

  else
  {
    sub_18B7CA054(v28, v24, &unk_1EA9D3AE0);
    if (v31(&v28[v30], 1, v15) != 1)
    {
      v46 = v62;
      (*(v71 + 32))(v62, &v28[v30], v15);
      sub_18B82AD34(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v59 = sub_18BC20AE8();
      v47 = *(v71 + 8);
      v47(v46, v15);
      v47(v24, v15);
      result = sub_18B988BAC(v28, &unk_1EA9D3AE0);
      if (v59)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v71 + 8))(v24, v15);
  }

  sub_18B988BAC(v28, &unk_1EA9D92B0);
LABEL_7:
  v33 = v68;
  sub_18B7CA054(v2 + v29, v68, &unk_1EA9D3AE0);
  if (v31(v33, 1, v15) == 1)
  {
    sub_18B988BAC(v33, &unk_1EA9D3AE0);
    v34 = *(*v2 + 152);
    swift_beginAccess();
    v28 = v63;
    sub_18B7CA054(v2 + v34, v63, &qword_1EA9D9298);
    v36 = v69;
    v35 = v70;
    if ((*(v69 + 48))(v28, 1, v70) == 1)
    {
      v32 = &qword_1EA9D9298;
      return sub_18B988BAC(v28, v32);
    }

    v48 = v61;
    sub_18B82FE24(v28, v61, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
    v49 = v67;
    (*(v36 + 56))(v67, 1, 1, v35);
    swift_beginAccess();
    sub_18B7EC8D0(v49, v2 + v34, &qword_1EA9D9298);
    swift_endAccess();
    v50 = v2[3];
    v51 = v2 + v34;
    v52 = v60;
    sub_18B7CA054(v51, v60, &qword_1EA9D9298);
    sub_18BC1E1A8();
    v50(v52);

    sub_18B988BAC(v52, &qword_1EA9D9298);
    sub_18B988BAC(v49, &qword_1EA9D9298);
    v53 = v2[7];
    sub_18BC1E1A8();
    v53(v48);

    return sub_18B7DFF64(v48, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
  }

  else
  {
    v38 = v65;
    (*(v71 + 32))(v65, v33, v15);
    v39 = v2[5];
    sub_18BC1E1A8();
    v40 = v64;
    v39(v38);

    v41 = v69;
    v42 = v70;
    v43 = *(v69 + 48);
    if (v43(v40, 1, v70) == 1)
    {
      v44 = *(*v2 + 152);
      swift_beginAccess();
      v45 = v66;
      sub_18B7CA054(v2 + v44, v66, &qword_1EA9D9298);
      if (v43(v40, 1, v42) != 1)
      {
        sub_18B988BAC(v40, &qword_1EA9D9298);
      }
    }

    else
    {
      v45 = v66;
      sub_18B82FE24(v40, v66, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
      (*(v41 + 56))(v45, 0, 1, v42);
    }

    v54 = *(*v2 + 152);
    swift_beginAccess();
    sub_18B7EC8D0(v45, v2 + v54, &qword_1EA9D9298);
    swift_endAccess();
    v55 = v2[3];
    v56 = v2 + v54;
    v57 = v67;
    sub_18B7CA054(v56, v67, &qword_1EA9D9298);
    sub_18BC1E1A8();
    v55(v57);

    sub_18B988BAC(v57, &qword_1EA9D9298);
    sub_18B988BAC(v45, &qword_1EA9D9298);
    return (*(v71 + 8))(v38, v15);
  }
}

void sub_18BB0A8E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_18BC1EC08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v5[9];
  v18 = *(v17 + 24);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v49 = a2;
  v50 = a3;
  v51 = a4;
  *(v17 + 24) = v20;
  v52 = a1;
  if (v20 == 1)
  {
    swift_beginAccess();
    v21 = *(v17 + 16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v48 = v13;
      v23 = v12;
      sub_18BC1E3F8();
      v24 = v21 + 40;
      do
      {
        v25 = *(v24 - 8);
        LOBYTE(v53[0]) = *(v17 + 24) > 0;
        sub_18BC1E1A8();
        v25(v53);

        v24 += 16;
        --v22;
      }

      while (v22);

      v12 = v23;
      a1 = v52;
      v13 = v48;
    }
  }

  if (qword_1EA9D22A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = sub_18BC1F2C8();
  __swift_project_value_buffer(v26, qword_1EA9F7E98);
  v27 = *(v14 + 16);
  v27(v16, a1, v13);
  swift_retain_n();
  v28 = v13;
  v29 = sub_18BC1F2A8();
  v30 = sub_18BC21258();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46 = v27;
    v32 = v31;
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v32 = 136446722;
    v48 = v14;
    v33 = v28;
    v34 = sub_18BC1EBA8();
    v47 = v12;
    v36 = v35;
    (*(v48 + 8))(v16, v33);
    v37 = sub_18B7EA850(v34, v36, v53);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2082;
    v38 = sub_18BC21AF8();
    v40 = sub_18B7EA850(v38, v39, v53);

    *(v32 + 14) = v40;
    v12 = v47;
    *(v32 + 22) = 2048;
    v41 = *(v17 + 24);

    *(v32 + 24) = v41;

    _os_log_impl(&dword_18B7AC000, v29, v30, "Begin borrowing content for %{public}s due to %{public}s, assertion count is now %ld", v32, 0x20u);
    v42 = v45;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v42, -1, -1);
    v43 = v32;
    v27 = v46;
    MEMORY[0x18CFFEEE0](v43, -1, -1);

    v28 = v33;
    v14 = v48;
  }

  else
  {

    (*(v14 + 8))(v16, v28);
  }

  v27(v12, v52, v28);
  (*(v14 + 56))(v12, 0, 1, v28);
  v44 = *(*v5 + 168);
  swift_beginAccess();
  sub_18B7FD070(v12, v5 + v44, &unk_1EA9D3AE0);
  swift_endAccess();
  sub_18BB0B1B0();
}

void sub_18BB0AD54(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_18BC1EC08();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = v4[9];
  v15 = *(v14 + 24);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v44 = a1;
  v45 = a2;
  *(v14 + 24) = v17;
  if (!v17)
  {
    swift_beginAccess();
    v18 = *(v14 + 16);
    v19 = *(v18 + 16);
    if (v19)
    {
      v43 = a3;
      sub_18BC1E3F8();
      v20 = v18 + 40;
      do
      {
        v21 = *(v20 - 8);
        v47[0] = *(v14 + 24) > 0;
        sub_18BC1E1A8();
        v21(v47);

        v20 += 16;
        --v19;
      }

      while (v19);

      a3 = v43;
    }
  }

  if (qword_1EA9D22A0 != -1)
  {
    goto LABEL_18;
  }

LABEL_8:
  v22 = sub_18BC1F2C8();
  __swift_project_value_buffer(v22, qword_1EA9F7E98);
  swift_retain_n();
  v23 = sub_18BC1F2A8();
  v24 = sub_18BC21258();
  if (os_log_type_enabled(v23, v24))
  {
    v43 = a3;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136446722;
    v27 = *(*v4 + 160);
    swift_beginAccess();
    sub_18B7CA054(v4 + v27, v13, &unk_1EA9D3AE0);
    v28 = v46;
    if ((*(v46 + 48))(v13, 1, v8))
    {
      sub_18B988BAC(v13, &unk_1EA9D3AE0);
      v29 = 0xE500000000000000;
      v30 = 0x3E6C696E3CLL;
    }

    else
    {
      (*(v28 + 16))(v10, v13, v8);
      sub_18B988BAC(v13, &unk_1EA9D3AE0);
      v42 = v26;
      v31 = v8;
      v32 = v10;
      v33 = v28;
      v34 = sub_18BC1EBA8();
      v29 = v35;
      v36 = v31;
      v26 = v42;
      (*(v33 + 8))(v32, v36);
      v30 = v34;
    }

    v37 = sub_18B7EA850(v30, v29, &v48);

    *(v25 + 4) = v37;
    *(v25 + 12) = 2082;
    v38 = sub_18BC21AF8();
    v40 = sub_18B7EA850(v38, v39, &v48);

    *(v25 + 14) = v40;
    *(v25 + 22) = 2048;
    v41 = *(v14 + 24);

    *(v25 + 24) = v41;

    _os_log_impl(&dword_18B7AC000, v23, v24, "End borrowing content for %{public}s due to %{public}s, assertion count is now %ld", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v26, -1, -1);
    MEMORY[0x18CFFEEE0](v25, -1, -1);
  }

  else
  {
  }

  if (*(v14 + 24) <= 0)
  {
    sub_18BB0B1B0();
  }
}

void sub_18BB0B1B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  if (*(v0 + 16) == 1 && *(*(v0 + 72) + 24) >= 1)
  {
    v7 = *(*v0 + 168);
    swift_beginAccess();
    sub_18B7CA054(v0 + v7, v6, &unk_1EA9D3AE0);
  }

  else
  {
    v8 = sub_18BC1EC08();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  v9 = *(*v0 + 160);
  swift_beginAccess();
  sub_18B7CA054(v0 + v9, v4, &unk_1EA9D3AE0);
  swift_beginAccess();
  sub_18B7EC8D0(v6, v0 + v9, &unk_1EA9D3AE0);
  swift_endAccess();
  sub_18BB09FC4(v4);
  sub_18B988BAC(v4, &unk_1EA9D3AE0);
  sub_18B988BAC(v6, &unk_1EA9D3AE0);
  if (*(*(v0 + 72) + 24) >= 1 && (*(v0 + 16) & 1) == 0)
  {
    if (qword_1EA9D22A0 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1F2C8();
    __swift_project_value_buffer(v10, qword_1EA9F7E98);
    v11 = sub_18BC1F2A8();
    v12 = sub_18BC21248();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18B7AC000, v11, v12, "BorrowedContentManager's assertion is unexpectedly taken when borrowing is disabled.", v13, 2u);
      MEMORY[0x18CFFEEE0](v13, -1, -1);
    }
  }
}

uint64_t sub_18BB0B470(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = a2;
  v7 = *v2;
  result = sub_18BBC2BC0(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return *(v7 + 16);
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = (v7 + 16);
    v11 = *(v7 + 16);
    if (v10 == v11)
    {
      return v4;
    }

    v19 = a1;
    v13 = 144 * result + 176;
    while (v10 < v11)
    {
      sub_18B99B8C0(v7 + v13, v18);
      v14 = v5;
      v15 = v19(v18);
      result = sub_18B99B91C(v18);
      if (v15)
      {
        v5 = v14;
      }

      else
      {
        if (v10 == v4)
        {
          v5 = v14;
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v16 = *v12;
          if (v4 >= v16)
          {
            goto LABEL_24;
          }

          result = sub_18B99B8C0(v7 + 32 + 144 * v4, v18);
          if (v10 >= v16)
          {
            goto LABEL_25;
          }

          sub_18B99B8C0(v7 + v13, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_18BAE37D8(v7);
          }

          v5 = v14;
          result = sub_18BB1094C(v17, v7 + 144 * v4 + 32);
          if (v10 >= *(v7 + 16))
          {
            goto LABEL_26;
          }

          result = sub_18BB1094C(v18, v7 + v13);
          *v2 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = (v7 + 16);
      v11 = *(v7 + 16);
      v13 += 144;
      if (v10 == v11)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BB0B63C(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  result = sub_18BBC2C44(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    v25 = v2;
    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return result;
      }

      v11 = 32 * result;
      v28 = v4;
      while (v8 < v9)
      {
        v34 = result;
        v29 = v5;
        v30 = v11;
        v13 = v5 + v11;
        v14 = *(v13 + 80);
        v15 = *(v13 + 88);
        v31 = *(v13 + 64);
        v32 = v14;
        v33 = v15;
        swift_unknownObjectRetain();
        sub_18BC1E1A8();
        sub_18BC1E1A8();
        v16 = v4(&v31);

        swift_unknownObjectRelease();
        if (v16)
        {
          result = v34;
          v4 = v28;
          v5 = v29;
          v12 = v30;
        }

        else
        {
          result = v34;
          v12 = v30;
          if (v8 == v34)
          {
            v5 = v29;
          }

          else
          {
            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }

            if (v34 >= *v10)
            {
              goto LABEL_24;
            }

            if (v8 >= *v10)
            {
              goto LABEL_25;
            }

            v17 = v34;
            v18 = v29 + 32 + 32 * v34;
            v19 = *(v18 + 24);
            v26 = *v18;
            v27 = *(v13 + 64);
            v20 = *(v13 + 80);
            v21 = *(v13 + 88);
            v5 = v29;
            v22 = *(v18 + 16);
            swift_unknownObjectRetain();
            sub_18BC1E1A8();
            sub_18BC1E1A8();
            swift_unknownObjectRetain();
            sub_18BC1E1A8();
            sub_18BC1E1A8();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_18BAE37EC(v29);
            }

            v23 = v5 + 32 * v17;
            *(v23 + 32) = v27;
            *(v23 + 48) = v20;
            *(v23 + 56) = v21;

            result = swift_unknownObjectRelease();
            if (v8 >= *(v5 + 16))
            {
              goto LABEL_26;
            }

            v12 = v30;
            v24 = v5 + v30;
            *(v24 + 64) = v26;
            *(v24 + 80) = v22;
            *(v24 + 88) = v19;

            swift_unknownObjectRelease();
            *v25 = v5;
            result = v34;
          }

          ++result;
          v4 = v28;
        }

        ++v8;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 = v12 + 32;
        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_18BB0B8C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_18BB0BB1C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_18BB0B958(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  sub_18BC1E1A8();
  isStackAllocationSafe = sub_18BC1E1A8();
  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_18BB0BB1C((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_18BC1E1A8();
    v9 = sub_18BB0B8C8(v11, v6, a2, a1);

    MEMORY[0x18CFFEEE0](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_18BB0BB1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v62 = a1;
  v70 = _s4ItemVMa();
  v65 = *(v70 - 8);
  v6 = MEMORY[0x1EEE9AC00](v70);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v57 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v57 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v61 = &v57 - v15;
  v16 = *(a3 + 16);
  v17 = *(a4 + 16);
  v68 = a4;
  v69 = a3;
  if (v17 >= v16)
  {
LABEL_22:
    v38 = 0;
    v39 = *(a3 + 56);
    v61 = a3 + 56;
    v40 = 1 << *(a3 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & v39;
    v43 = (v40 + 63) >> 6;
    v44 = a4 + 56;
    v63 = v43;
    v64 = 0;
    while (v42)
    {
      v45 = __clz(__rbit64(v42));
      v67 = (v42 - 1) & v42;
LABEL_34:
      v48 = v45 | (v38 << 6);
      v49 = *(a3 + 48);
      v50 = *(v65 + 72);
      v66 = v48;
      sub_18B7DF638(v49 + v50 * v48, v8, _s4ItemVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82AD34(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
      sub_18BC20A78();
      v51 = sub_18BC221A8();
      v52 = v68;
      v53 = -1 << *(v68 + 32);
      v54 = v51 & ~v53;
      if ((*(v44 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        v55 = ~v53;
        while (1)
        {
          sub_18B7DF638(*(v52 + 48) + v54 * v50, v11, _s4ItemVMa);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7DFF64(v11, _s4ItemVMa);
          if (updated)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          v52 = v68;
          if (((*(v44 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        result = sub_18B7DFF64(v8, _s4ItemVMa);
        *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
        v43 = v63;
        v37 = __OFADD__(v64++, 1);
        a3 = v69;
        v42 = v67;
        if (v37)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:
        result = sub_18B7DFF64(v8, _s4ItemVMa);
        a3 = v69;
        v43 = v63;
        v42 = v67;
      }
    }

    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v38 >= v43)
      {
        goto LABEL_42;
      }

      v47 = *(v61 + 8 * v38);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v67 = (v47 - 1) & v47;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v64 = 0;
  v18 = 0;
  v19 = *(a4 + 56);
  v58 = a4 + 56;
  v20 = 1 << *(a4 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v66 = a3 + 56;
  v60 = v23;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v63 = (v22 - 1) & v22;
LABEL_14:
    v27 = *(v65 + 72);
    v28 = *(a4 + 48) + v27 * (v24 | (v18 << 6));
    v29 = v61;
    sub_18B7DF638(v28, v61, _s4ItemVMa);
    sub_18B82FE24(v29, v67, _s4ItemVMa);
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B82AD34(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
    sub_18BC20A78();
    v30 = sub_18BC221A8();
    v31 = -1 << *(a3 + 32);
    v32 = v30 & ~v31;
    v8 = v32 >> 6;
    v33 = 1 << v32;
    if (((1 << v32) & *(v66 + 8 * (v32 >> 6))) != 0)
    {
      sub_18B7DF638(*(v69 + 48) + v32 * v27, v11, _s4ItemVMa);
      v34 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7DFF64(v11, _s4ItemVMa);
      if ((v34 & 1) == 0)
      {
        v35 = ~v31;
        do
        {
          v32 = (v32 + 1) & v35;
          v8 = v32 >> 6;
          v33 = 1 << v32;
          if (((1 << v32) & *(v66 + 8 * (v32 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          sub_18B7DF638(*(v69 + 48) + v32 * v27, v11, _s4ItemVMa);
          v36 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B7DFF64(v11, _s4ItemVMa);
        }

        while ((v36 & 1) == 0);
      }

      result = sub_18B7DFF64(v67, _s4ItemVMa);
      v22 = v63;
      v62[v8] |= v33;
      v37 = __OFADD__(v64++, 1);
      a4 = v68;
      a3 = v69;
      v23 = v60;
      if (v37)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:
      result = sub_18B7DFF64(v67, _s4ItemVMa);
      a4 = v68;
      a3 = v69;
      v23 = v60;
      v22 = v63;
    }
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
LABEL_42:
      sub_18BC1E1A8();
      return sub_18BC08A80(v62, v59, v64, a3);
    }

    v26 = *(v58 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v63 = (v26 - 1) & v26;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_18BB0C1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 40);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 40) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_18B9B5B34(0, *(v10 + 2) + 1, 1, v10);
    *(a4 + 40) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_18B9B5B34((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a5;
  *(v14 + 6) = a3;
  *(v14 + 7) = a2;
  *(a4 + 40) = v10;
  return swift_endAccess();
}

uint64_t sub_18BB0C37C(uint64_t a1, char a2, unsigned __int8 a3)
{
  v5 = a3;
  type metadata accessor for TabThumbnailView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = v7;
  if (!v5)
  {
    v18 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    type metadata accessor for ThumbnailMatchMoveViewRegistration();
    swift_allocObject();
    return sub_18BA49A80(v8, v18);
  }

  v9 = [*&v7[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] layer];
  [v9 setShouldRasterize_];

  type metadata accessor for ThumbnailMatchMoveViewRegistration();
  swift_allocObject();
  v10 = v8;
  v11 = sub_18BA499D4(v10);
  if (v5 == 1)
  {
    type metadata accessor for DetachedThumbnailVisibilityAnimator();
    v12 = swift_allocObject();
    *(v12 + 16) = a2 & 1;
    *(v12 + 24) = v10;
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v14 = qword_1EA9D24E0;
    v15 = v10;
    sub_18BC1E1A8();
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_1EA9F83F8;
    v17 = sub_18BC1E1A8();
    sub_18BB0C1F4(v17, inited, v16, v11, &off_1EFF29D20);
  }

  else
  {
    if (a3 != 2)
    {

      return v11;
    }

    type metadata accessor for InsertedThumbnailVisibilityAnimator();
    *(swift_allocObject() + 16) = v10;
    type metadata accessor for AnimationSettings();
    v20 = swift_initStaticObject();
    v21 = qword_1EA9D24E0;
    v15 = v10;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1EA9F83F8;
    v23 = sub_18BC1E1A8();
    sub_18BB0C1F4(v23, v20, v22, v11, &off_1EFF29770);
  }

  return v11;
}

void sub_18BB0C608()
{
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent);
  if (v1)
  {
    v3 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentView];
    *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = 0;
    v2 = v1;
    sub_18BA14FAC(v3);
  }
}

uint64_t sub_18BB0C68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v30 = _s4ItemVMa();
  v9 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v20, v19, &unk_1EA9D5350);
  v21 = a1;
  sub_18B7DF638(a1, v16, _s11TransactionVMa);
  v22 = _s11TransactionVMa();
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  swift_beginAccess();
  sub_18B7FD070(v16, a2 + v20, &unk_1EA9D5350);
  swift_endAccess();
  v23 = *(v28 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageInsertionHandler);
  sub_18B7DF638(v29, v13, _s4PageVMa);
  sub_18BC1E1A8();
  v23(v13);

  sub_18B7DFF64(v13, _s4PageVMa);
  sub_18B7CA054(v21 + *(v22 + 20), v8, &qword_1EA9D7CD0);
  if ((*(v9 + 48))(v8, 1, v30) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0);
  }

  else
  {
    v24 = v8;
    v25 = v27;
    sub_18B82FE24(v24, v27, _s4ItemVMa);
    sub_18BAFF9A0(v25);
    sub_18B7DFF64(v25, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v19, a2 + v20, &unk_1EA9D5350);
  return swift_endAccess();
}

uint64_t sub_18BB0CA78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _s11TransactionVMa();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RetargetableTransitionCoordinator();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = v14;
  *(v13 + 40) = 1;
  *(v13 + 16) = a1;
  v11[3] = v12;
  v11[4] = &off_1EFF27FD8;
  *v11 = v13;
  v15 = *(v9 + 28);
  v16 = _s4ItemVMa();
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 32)) = 0;
  v17 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0C68C(v11, a2, v17, a4);

  v18 = *(v13 + 16);
  swift_retain_n();
  sub_18B7D8090(v18);
  sub_18B7EAA64(sub_18B9EB460, v13, sub_18B9EB538, v13, v18);

  sub_18B7EBAE8(v18);
  sub_18B7DFF64(v11, _s11TransactionVMa);
  *(v13 + 40) = 0;
}

uint64_t sub_18BB0CC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v26 = _s4ItemVMa();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v17, v16, &unk_1EA9D5350);
  v18 = a1;
  sub_18B7DF638(a1, v13, _s11TransactionVMa);
  v19 = _s11TransactionVMa();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  swift_beginAccess();
  sub_18B7FD070(v13, a2 + v17, &unk_1EA9D5350);
  swift_endAccess();
  *(a3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 0;
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
  swift_beginAccess();
  *(a3 + v20) = MEMORY[0x1E69E7CD0];

  sub_18B833A74();
  sub_18B7CA054(v18 + *(v19 + 20), v8, &qword_1EA9D7CD0);
  if ((*(v9 + 48))(v8, 1, v26) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0);
  }

  else
  {
    v21 = v8;
    v22 = v25;
    sub_18B82FE24(v21, v25, _s4ItemVMa);
    sub_18BAFF9A0(v22);
    sub_18B7DFF64(v22, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v16, a2 + v17, &unk_1EA9D5350);
  return swift_endAccess();
}

uint64_t sub_18BB0CFF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s11TransactionVMa();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RetargetableTransitionCoordinator();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = MEMORY[0x1E69E7CC0];
  *(v11 + 32) = v12;
  *(v11 + 40) = 1;
  *(v11 + 16) = a1;
  v9[3] = v10;
  v9[4] = &off_1EFF27FD8;
  *v9 = v11;
  v13 = *(v7 + 28);
  v14 = _s4ItemVMa();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v7 + 32)) = 0;
  v15 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0CC70(v9, a2, v15);

  v16 = *(v11 + 16);
  swift_retain_n();
  sub_18B7D8090(v16);
  sub_18B7EAA64(sub_18B9EB460, v11, sub_18B9EB538, v11, v16);

  sub_18B7EBAE8(v16);
  sub_18B7DFF64(v9, _s11TransactionVMa);
  *(v11 + 40) = 0;
}

uint64_t sub_18BB0D1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v26 = _s4ItemVMa();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v18, v17, &unk_1EA9D5350);
  v19 = a1;
  sub_18B7DF638(a1, v15, _s11TransactionVMa);
  v20 = _s11TransactionVMa();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  swift_beginAccess();
  sub_18B7FD070(v15, a2 + v18, &unk_1EA9D5350);
  swift_endAccess();
  *(a3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 1;
  v21 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
  swift_beginAccess();
  *(a3 + v21) = v27;
  sub_18BC1E3F8();

  sub_18B833A74();
  sub_18B7CA054(v19 + *(v20 + 20), v9, &qword_1EA9D7CD0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_18B988BAC(v9, &qword_1EA9D7CD0);
  }

  else
  {
    v22 = v9;
    v23 = v25;
    sub_18B82FE24(v22, v25, _s4ItemVMa);
    sub_18BAFF9A0(v23);
    sub_18B7DFF64(v23, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v17, a2 + v18, &unk_1EA9D5350);
  return swift_endAccess();
}

uint64_t sub_18BB0D56C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _s11TransactionVMa();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RetargetableTransitionCoordinator();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = v14;
  *(v13 + 40) = 1;
  *(v13 + 16) = a1;
  v11[3] = v12;
  v11[4] = &off_1EFF27FD8;
  *v11 = v13;
  v15 = *(v9 + 28);
  v16 = _s4ItemVMa();
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 32)) = 0;
  v17 = a3;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0D1E0(v11, a2, v17, a4);

  v18 = *(v13 + 16);
  swift_retain_n();
  sub_18B7D8090(v18);
  sub_18B7EAA64(sub_18B9EB460, v13, sub_18B9EB538, v13, v18);

  sub_18B7EBAE8(v18);
  sub_18B7DFF64(v11, _s11TransactionVMa);
  *(v13 + 40) = 0;
}

uint64_t sub_18BB0D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v23 = _s4ItemVMa();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v18, v17, &unk_1EA9D5350);
  v19 = a1;
  sub_18B7DF638(a1, v15, _s11TransactionVMa);
  v20 = _s11TransactionVMa();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  swift_beginAccess();
  sub_18B7FD070(v15, a2 + v18, &unk_1EA9D5350);
  swift_endAccess();
  sub_18BAF4DAC(v24, v25);
  sub_18B7CA054(v19 + *(v20 + 20), v8, &qword_1EA9D7CD0);
  if ((*(v9 + 48))(v8, 1, v23) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0);
  }

  else
  {
    sub_18B82FE24(v8, v11, _s4ItemVMa);
    sub_18BAFF9A0(v11);
    sub_18B7DFF64(v11, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v17, a2 + v18, &unk_1EA9D5350);
  return swift_endAccess();
}

uint64_t sub_18BB0DAB0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = _s11TransactionVMa();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RetargetableTransitionCoordinator();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = v14;
  *(v13 + 40) = 1;
  *(v13 + 16) = a1;
  v11[3] = v12;
  v11[4] = &off_1EFF27FD8;
  *v11 = v13;
  v15 = *(v9 + 28);
  v16 = _s4ItemVMa();
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 32)) = 0;
  v17 = a3;
  v18 = a4;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0D774(v11, a2, v17, v18);

  v19 = *(v13 + 16);
  swift_retain_n();
  sub_18B7D8090(v19);
  sub_18B7EAA64(sub_18B9EB460, v13, sub_18B9EB538, v13, v19);

  sub_18B7EBAE8(v19);
  sub_18B7DFF64(v11, _s11TransactionVMa);
  *(v13 + 40) = 0;
}

uint64_t sub_18BB0DCB4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t (*a5)())
{
  v10 = _s11TransactionVMa();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for RetargetableTransitionCoordinator();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = MEMORY[0x1E69E7CC0];
  *(v15 + 32) = v16;
  *(v15 + 40) = 1;
  *(v15 + 16) = a1;
  v13[3] = v14;
  v13[4] = &off_1EFF27FD8;
  *v13 = v15;
  v17 = *(v11 + 28);
  v18 = _s4ItemVMa();
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v11 + 32)) = 0;
  v19 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB101A8(v13, a2, v19);

  v20 = *(v15 + 16);
  swift_retain_n();
  sub_18B7D8090(v20);
  sub_18B7EAA64(a4, v15, a5, v15, v20);

  sub_18B7EBAE8(v20);
  sub_18B7DFF64(v13, _s11TransactionVMa);
  *(v15 + 40) = 0;
}

id sub_18BB0DE94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_18BA650B4(MEMORY[0x1E69E7CC0]);
  v8 = *(a3 + 16);
  [a2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  result = [a2 convertPoint:a1 toCoordinateSpace:{MidX, CGRectGetMinY(v59)}];
  v50 = v16;
  v48 = v8;
  if (v8)
  {
    v17 = v15;
    v18 = a3 + 32;
    v19 = 0.0;
    v20 = 1.79769313e308;
    while (1)
    {
      sub_18B99B8C0(v18, v53);
      v21 = v56;
      v22 = v57;
      __swift_project_boxed_opaque_existential_1Tm(v55, v56);
      v23 = (*(v22 + 16))(v21, v22);
      [v23 bounds];
      v24 = v60.origin.x;
      v25 = v60.origin.y;
      v26 = v60.size.width;
      v27 = v60.size.height;
      v28 = CGRectGetMidX(v60);
      v61.origin.x = v24;
      v61.origin.y = v25;
      v61.size.width = v26;
      v61.size.height = v27;
      [v23 convertPoint:a1 toCoordinateSpace:{v28, CGRectGetMidY(v61)}];
      v30 = v29;
      v32 = v31;
      sub_18B7F44EC(&v54, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v7;
      v34 = sub_18B85DC48(v52);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        break;
      }

      v40 = v35;
      if (*(v7 + 24) >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v34;
          sub_18BB2AD94();
          v34 = v46;
        }
      }

      else
      {
        sub_18BB2F2E0(v39, isUniquelyReferenced_nonNull_native);
        v34 = sub_18B85DC48(v52);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_24;
        }
      }

      v42 = sqrt((v30 - v50) * (v30 - v50) + (v32 - v17) * (v32 - v17));
      v7 = v51;
      if (v40)
      {
        *(v51[7] + 8 * v34) = v42;

        sub_18B831014(v52);
      }

      else
      {
        v51[(v34 >> 6) + 8] |= 1 << v34;
        v43 = v34;
        sub_18B7F44EC(v52, v51[6] + 40 * v34);
        *(v51[7] + 8 * v43) = v42;

        sub_18B831014(v52);
        v44 = v51[2];
        v38 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v38)
        {
          goto LABEL_23;
        }

        v51[2] = v45;
      }

      if (v42 < v20)
      {
        v20 = v42;
      }

      if (v19 <= v42)
      {
        v19 = v42;
      }

      result = sub_18B99B91C(v53);
      v18 += 144;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_18BC22078();
    __break(1u);
  }

  else
  {
    v19 = 0.0;
    v20 = 1.79769313e308;
LABEL_19:
    v47 = v48;
    if (v48 > 20.0)
    {
      v47 = 20.0;
    }

    *a4 = v7;
    *(a4 + 8) = v20;
    *(a4 + 16) = v19;
    *(a4 + 24) = 0x3FEB851EB851EB85;
    *(a4 + 32) = v47 * 0.005 + 0.8;
    *(a4 + 40) = 0x3FE999999999999ALL;
  }

  return result;
}

uint64_t sub_18BB0E200(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v45 = a3;
  v46 = a5;
  v49 = a4;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v39 - v7;
  v8 = _s4ItemVMa();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = _s11TransactionVMa();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v42 = *(v17 + 20);
  v24 = v9;
  v25 = v41;
  (*(v24 + 56))(v20 + v42, 1, 1, v8);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v48 = v16;
  sub_18B7CA054(v25 + v26, v16, &unk_1EA9D5350);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v27 = v45;
  sub_18B9EADD8(v49, v50);
  v28 = v46;
  v29 = v27;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7FD070(v13, v25 + v26, &unk_1EA9D5350);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v31 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler];
  sub_18BC1E1A8();

  v32 = sub_18BC1E3F8();
  v33 = sub_18BBA3838(v32);
  v34 = v47;

  v31(v33, v28);

  sub_18B7CA054(v20 + v42, v34, &qword_1EA9D7CD0);
  if ((*(v44 + 48))(v34, 1, v43) == 1)
  {
    sub_18B988BAC(v34, &qword_1EA9D7CD0);
  }

  else
  {
    v35 = v34;
    v36 = v40;
    sub_18B82FE24(v35, v40, _s4ItemVMa);
    sub_18BAFF9A0(v36);
    sub_18B7DFF64(v36, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v48, v25 + v26, &unk_1EA9D5350);
  swift_endAccess();

  sub_18B9EAE34(v49);
  v37 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v37);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v37);

  sub_18B7EBAE8(v37);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;
}

uint64_t sub_18BB0E790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v43 = a3;
  v44 = a5;
  v47 = a4;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v38 - v7;
  v8 = _s4ItemVMa();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = _s11TransactionVMa();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v39 = *(v17 + 20);
  v24 = v9;
  v25 = v40;
  (*(v24 + 56))(v20 + v39, 1, 1, v8);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v46 = v16;
  sub_18B7CA054(v25 + v26, v16, &unk_1EA9D5350);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v27 = v43;
  v28 = v47;
  sub_18BC1E3F8();
  v29 = v44;
  v30 = v27;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7FD070(v13, v25 + v26, &unk_1EA9D5350);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v32 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler];
  sub_18BC1E1A8();

  v32(v28, v29);
  v33 = v45;

  sub_18B7CA054(v20 + v39, v33, &qword_1EA9D7CD0);
  if ((*(v42 + 48))(v33, 1, v41) == 1)
  {
    sub_18B988BAC(v33, &qword_1EA9D7CD0);
  }

  else
  {
    v34 = v33;
    v35 = v38;
    sub_18B82FE24(v34, v38, _s4ItemVMa);
    sub_18BAFF9A0(v35);
    sub_18B7DFF64(v35, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v46, v25 + v26, &unk_1EA9D5350);
  swift_endAccess();

  v36 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v36);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v36);

  sub_18B7EBAE8(v36);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;
}

uint64_t sub_18BB0ECF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v43 = a5;
  v45 = a4;
  v41 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v35 - v7;
  v8 = _s4ItemVMa();
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = _s11TransactionVMa();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v37 = *(v17 + 20);
  v24 = v9;
  v25 = v38;
  (*(v24 + 56))(v20 + v37, 1, 1, v8);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v44 = v16;
  sub_18B7CA054(v25 + v26, v16, &unk_1EA9D5350);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v27 = v41;
  v28 = v45;
  sub_18B9EADD8(v45, v46);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7FD070(v13, v25 + v26, &unk_1EA9D5350);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v30 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemPinHandler];
  sub_18BC1E1A8();

  v30(*(v28 + 8), v43);
  v31 = v42;

  sub_18B7CA054(v20 + v37, v31, &qword_1EA9D7CD0);
  if ((*(v40 + 48))(v31, 1, v39) == 1)
  {
    sub_18B988BAC(v31, &qword_1EA9D7CD0);
  }

  else
  {
    v32 = v36;
    sub_18B82FE24(v31, v36, _s4ItemVMa);
    sub_18BAFF9A0(v32);
    sub_18B7DFF64(v32, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v44, v25 + v26, &unk_1EA9D5350);
  swift_endAccess();
  sub_18B9EAE34(v45);

  v33 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v33);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v33);

  sub_18B7EBAE8(v33);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;
}