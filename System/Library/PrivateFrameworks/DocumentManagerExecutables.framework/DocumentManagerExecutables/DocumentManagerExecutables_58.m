id DOCItemCollectionCellContent.tableTitle.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v7 = MEMORY[0x28223BE20](v4, v5);
  v9 = v103 - v8;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle;
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  if (!result)
  {
    v111 = v6;
    v12 = MEMORY[0x277D85000];
    v113 = (*((*MEMORY[0x277D85000] & *v0) + 0x640))(v7);
    v14 = v13;
    v15 = *((*v12 & *v0) + 0x2F0);
    v15(v120);
    v125 = v120[4];
    v126 = v120[5];
    v127 = v120[6];
    v128 = v120[7];
    v121 = v120[0];
    v122 = v120[1];
    v123 = v120[2];
    v124 = v120[3];
    result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v121);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = outlined destroy of CharacterSet?(v120, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      if ((v122 & 4) != 0)
      {
        *&v114 = (*((*v12 & *v0) + 0x7C0))(v16);
        v115 = v17;
      }

      else
      {
        *&v114 = 0;
        v115 = 0xE000000000000000;
      }

      (v15)(v118, v16);
      v119[4] = v118[4];
      v119[5] = v118[5];
      v119[6] = v118[6];
      v119[7] = v118[7];
      v119[0] = v118[0];
      v119[1] = v118[1];
      v119[2] = v118[2];
      v119[3] = v118[3];
      result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v119);
      if (result != 1)
      {
        v18 = *&v119[0];
        outlined destroy of CharacterSet?(v118, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        v19 = v115;

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v114 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          v110 = v18;
          result = _DocumentManagerBundle();
          if (!result)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v21 = result;
          v131._object = 0x8000000249BF3970;
          v22._countAndFlagsBits = 0x25209380E2204025;
          v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v23.value._object = 0xEB00000000656C62;
          v22._object = 0xA900000000000040;
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          v131._countAndFlagsBits = 0x1000000000000053;
          v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v131);

          v26 = (*((*v12 & *v1) + 0x368))();
          if (v26 && (v27 = v26, v28 = v14, v29 = [v26 layoutDirection], v27, v30 = v29 == 1, v14 = v28, v30))
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          v103[0] = v9;
          v108 = String.wrappedInDirectionalIsolation(_:)(v31, v25._countAndFlagsBits, v25._object);
          v112 = v32;
          if (one-time initialization token for bidiIsolateBeginFSI != -1)
          {
            swift_once();
          }

          v103[1] = v25._object;
          v104 = v10;
          v33 = *((*v12 & *static DOCUnicode.bidiIsolateBeginFSI) + 0x58);
          v106 = (*v12 & *static DOCUnicode.bidiIsolateBeginFSI) + 88;
          v107 = v33;
          v116 = (v33)();
          v117 = v34;

          v109 = v14;
          MEMORY[0x24C1FAEA0](v113, v14);

          v35 = v116;
          v36 = v117;
          if (one-time initialization token for bidiIsolateEnd != -1)
          {
            swift_once();
          }

          v105 = *((*v12 & *static DOCUnicode.bidiIsolateEnd) + 0x58);
          v37 = v105();
          v39 = v38;
          v116 = v35;
          v117 = v36;

          MEMORY[0x24C1FAEA0](v37, v39);

          v41 = v117;
          v113 = v116;
          v116 = v107(v40);
          v117 = v42;

          MEMORY[0x24C1FAEA0](v114, v115);

          v45 = v116;
          v44 = v117;
          v46 = (v105)(v43);
          v48 = v47;
          v116 = v45;
          v117 = v44;

          MEMORY[0x24C1FAEA0](v46, v48);

          v49 = v116;
          v50 = v117;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v51 = swift_allocObject();
          v114 = xmmword_249B9FA70;
          *(v51 + 16) = xmmword_249B9FA70;
          v52 = MEMORY[0x277D837D0];
          *(v51 + 56) = MEMORY[0x277D837D0];
          v53 = lazy protocol witness table accessor for type String and conformance String();
          *(v51 + 32) = v113;
          *(v51 + 40) = v41;
          *(v51 + 96) = v52;
          *(v51 + 104) = v53;
          *(v51 + 64) = v53;
          *(v51 + 72) = v49;
          *(v51 + 80) = v50;
          v107 = v41;

          v54 = String.init(format:_:)();
          v56 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
          inited = swift_initStackObject();
          v58 = MEMORY[0x277D740C0];
          *(inited + 16) = v114;
          v59 = *v58;
          *(inited + 32) = v59;
          v60 = (*((*MEMORY[0x277D85000] & *v1) + 0x6B8))(v59);
          v61 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
          *(inited + 40) = v60;
          v62 = *MEMORY[0x277D740A8];
          *(inited + 64) = v61;
          *(inited + 72) = v62;
          *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
          v63 = v110;
          *(inited + 80) = v110;
          *&v114 = v63;
          v64 = v62;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
          swift_arrayDestroy();
          v65 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v66 = MEMORY[0x24C1FAD20](v54, v56);
          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v68 = [v65 initWithString:v66 attributes:isa];

          v69 = MEMORY[0x277D85000];
          v70 = *((*MEMORY[0x277D85000] & *v1) + 0x4A8);
          v71 = v111;
          v70();
          v72 = type metadata accessor for IndexSet();
          if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
          {
            v73 = v113;
            outlined destroy of CharacterSet?(v71, &_s10Foundation8IndexSetVSgMd);
            v74 = v68;
            result = [v74 string];
            if (!result)
            {
LABEL_34:
              __break(1u);
              return result;
            }

            v68 = result;

            v75 = MEMORY[0x24C1FAD20](v73, v107);

            v76 = [v68 rangeOfString_];
            v78 = v77;

            v79 = (*((*MEMORY[0x277D85000] & *v1) + 0x670))();
            v130.value.location = v76;
            v130.value.length = v78;
            v130.is_nil = 0;
            v80 = applyHighlightingRange(to:range:color:)(v74, v130, v79).super.isa;

            v81 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
          }

          else
          {

            v94 = outlined destroy of CharacterSet?(v71, &_s10Foundation8IndexSetVSgMd);
            v95 = v103[0];
            (v70)(v94);
            v96 = [v68 string];
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v100 = (*((*v69 & *v1) + 0x670))();
            v101 = applyHighlightingSubtitle(to:indexSet:fullString:fileName:color:)(v68, v95, v97, v99, v113, v107, v100);

            outlined destroy of CharacterSet?(v95, &_s10Foundation8IndexSetVSgMd);
            v81 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
          }

          v10 = v104;
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
          v82 = swift_initStackObject();
          *(v82 + 16) = xmmword_249B9A480;
          v83 = *MEMORY[0x277D740A8];
          v84 = v9;
          *(v82 + 32) = *MEMORY[0x277D740A8];
          *(v82 + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
          *(v82 + 40) = v18;
          v85 = v18;
          v86 = v83;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v82);
          swift_setDeallocating();
          outlined destroy of CharacterSet?(v82 + 32, &_sSo21NSAttributedStringKeya_yptMd);
          v87 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v88 = MEMORY[0x24C1FAD20](v113, v14);

          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
          v89 = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v87 initWithString:v88 attributes:v89];

          v91 = (*((*v12 & *v1) + 0x4A8))();
          v92 = (*((*v12 & *v1) + 0x670))(v91);
          v93 = applyHighlighting(to:indexSet:color:)(v90, v84, v92).super.isa;

          outlined destroy of CharacterSet?(v84, &_s10Foundation8IndexSetVSgMd);
          v81 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
        }

        v102 = *(v1 + v10);
        *(v1 + v10) = v81;

        result = *(v1 + v10);
        if (result)
        {
          goto LABEL_27;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_27:

  return result;
}

Swift::String __swiftcall DOCItemCollectionCellContent.subtitle(for:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v167 = 0uLL;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v165 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x3D0);
  if (v9())
  {
    ObjectType = swift_getObjectType();
    DOCNode.debugUIScenario.getter(ObjectType, v168);
    swift_unknownObjectRelease();
    if (v168[0] != 1)
    {
      v170 = v169;
      outlined init with copy of DOCGridLayout.Spec?(&v170, &v166, &_sSSSgMd);
      outlined destroy of CharacterSet?(v168, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
      v11 = *(&v170 + 1);
      if (*(&v170 + 1))
      {
        v12 = v170;
LABEL_109:

        goto LABEL_110;
      }
    }
  }

  v13 = v9();
  if (!v13)
  {
LABEL_9:
    v166 = xmmword_249BA5030;
    MEMORY[0x28223BE20](v13, v14);
    v151 = &v166;
    v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v150, a1._rawValue);
    if (v16 & 1) != 0 || (v166 = xmmword_249BB74E0, MEMORY[0x28223BE20](v16, v17), v151 = &v166, v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v150, a1._rawValue), (v16) || (v166 = xmmword_249BAA660, MEMORY[0x28223BE20](v16, v17), v151 = &v166, v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v150, a1._rawValue), (v16))
    {
      v166 = xmmword_249BB7500;
      MEMORY[0x28223BE20](v16, v17);
      v151 = &v166;
      if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v150, a1._rawValue))
      {
        v18 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v165, v1);
        v20 = v19;
        v21 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v4, v2);
        v23 = v22;
        v164 = v7;
        v24 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v7, v2);
        v26 = v25;
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = v20 == 0xE000000000000000;
        }

        v28 = v27;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!v21 && v23 == 0xE000000000000000)
          {

LABEL_44:

            v12 = *(v164 + 16);
            v11 = *(v164 + 24);

            goto LABEL_110;
          }

          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v43)
          {

            goto LABEL_44;
          }

          if (v28)
          {
            goto LABEL_73;
          }
        }

        else
        {
        }

        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          goto LABEL_77;
        }

LABEL_73:
        if (!v24 && v26 == 0xE000000000000000)
        {

LABEL_108:
          v12 = *(v4 + 16);
          v11 = *(v4 + 24);

          goto LABEL_109;
        }

        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v73)
        {

          goto LABEL_108;
        }

        if (v28)
        {

LABEL_121:
          v78 = *(v4 + 24);
          *&v166 = *(v4 + 16);
          *(&v166 + 1) = v78;

          MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
          v79 = *(v164 + 16);
          v80 = *(v164 + 24);

          MEMORY[0x24C1FAEA0](v79, v80);

          goto LABEL_105;
        }

LABEL_77:
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v65 & 1) == 0)
        {
          v12 = *(v165 + 16);
          v11 = *(v165 + 24);

          goto LABEL_109;
        }

        goto LABEL_121;
      }

      v163 = v5;
      v29 = getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v1);
      v31 = v30;
      v32 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v4, v1);
      v34 = v33;
      v35 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v165, v2);
      v37 = v36;
      v160 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v7, v2);
      v39 = v38;
      if (v29)
      {
        v40 = 0;
      }

      else
      {
        v40 = v31 == 0xE000000000000000;
      }

      v41 = v40;
      LODWORD(v161) = v41;
      if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v32 && v34 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v35 && v37 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        goto LABEL_80;
      }

      v164 = v35;
      v162 = v37;
      if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v8) == v29 && v42 == v31)
      {
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
LABEL_84:
          v66 = v164;
          if ((v161 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v32 && v34 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) || ((v159 = v39, *(v8 + 16) == v29) ? (v67 = *(v8 + 24) == v31) : (v67 = 0), !v67 ? (v68 = 0) : (v68 = 1), ((LODWORD(v158) = v68, v67) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v32 && v34 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
          {

            v70 = *(v7 + 16);
            v69 = *(v7 + 24);
LABEL_102:
            *&v166 = v70;
            *(&v166 + 1) = v69;

            MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
            v71 = *(v165 + 16);
            v72 = *(v165 + 24);

            MEMORY[0x24C1FAEA0](v71, v72);
LABEL_103:

LABEL_104:

            goto LABEL_105;
          }

          if ((v161 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v66 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v160 && v159 == 0xE000000000000000 || (v81 = _stringCompareWithSmolCheck(_:_:expecting:)(), v66 = v164, (v81)) || ((v158 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v66 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v160 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v12 = *(v4 + 16);
            v11 = *(v4 + 24);
            goto LABEL_82;
          }

          if ((v161 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v164 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) || ((v158 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v164 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v95 = *(v4 + 24);
            *&v166 = *(v4 + 16);
            *(&v166 + 1) = v95;

            MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
            v96 = *(v7 + 16);
            v97 = *(v7 + 24);

            MEMORY[0x24C1FAEA0](v96, v97);
            goto LABEL_103;
          }

          if ((v161 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v160 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) || ((v158 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v160 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v70 = *(v4 + 16);
            v69 = *(v4 + 24);
            goto LABEL_102;
          }

          if (v161 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v158)
          {

LABEL_257:

            v115 = *(v4 + 24);
            *&v166 = *(v4 + 16);
            *(&v166 + 1) = v115;

            MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
            v116 = *(v7 + 16);
            v117 = *(v7 + 24);

            MEMORY[0x24C1FAEA0](v116, v117);

LABEL_258:
            MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
            v118 = *(v165 + 16);
            v119 = *(v165 + 24);

            MEMORY[0x24C1FAEA0](v118, v119);
LABEL_297:

            goto LABEL_105;
          }

          v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v134)
          {

            goto LABEL_257;
          }

          if (v32)
          {
            v137 = 0;
          }

          else
          {
            v137 = v34 == 0xE000000000000000;
          }

          v138 = v137;
          if (!v137 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_332;
          }

          if (!v164 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v160 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v12 = *(v163 + 16);
            v11 = *(v163 + 24);
            goto LABEL_272;
          }

          if (v138)
          {
          }

          else
          {
LABEL_332:
            v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v139 & 1) == 0)
            {
              goto LABEL_337;
            }
          }

          if (!v164 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v125 = *(v163 + 16);
            v124 = *(v163 + 24);
            goto LABEL_294;
          }

LABEL_337:
          if (v164)
          {
            v140 = 0;
          }

          else
          {
            v140 = v162 == 0xE000000000000000;
          }

          v141 = v140;
          if (v140 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if (!v160 && v159 == 0xE000000000000000)
            {

LABEL_349:

              v143 = *(v163 + 24);
              *&v166 = *(v163 + 16);
              *(&v166 + 1) = v143;

              MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
              v126 = *(v4 + 16);
              v127 = *(v4 + 24);
              goto LABEL_296;
            }

            v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v142)
            {
              goto LABEL_349;
            }

            if (v141)
            {

LABEL_354:
              v145 = *(v163 + 24);
              *&v166 = *(v163 + 16);
              *(&v166 + 1) = v145;

              MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
              v146 = *(v4 + 16);
              v147 = *(v4 + 24);

              MEMORY[0x24C1FAEA0](v146, v147);

              goto LABEL_295;
            }
          }

          else
          {
          }

          v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v144 & 1) == 0)
          {
            v148 = *(v163 + 24);
            *&v166 = *(v163 + 16);
            *(&v166 + 1) = v148;

            goto LABEL_258;
          }

          goto LABEL_354;
        }
      }

      if (!v32 && v34 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v164 && v162 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
LABEL_80:

        goto LABEL_81;
      }

      goto LABEL_84;
    }

    v45 = specialized getter of date #1 in DOCItemCollectionCellContent.subtitle(for:)(&v167, v1);
    v47 = v46;
    v161 = v4;
    v48 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v4, v2);
    v160 = v8;
    v49 = v48;
    v51 = v50;
    v163 = v5;
    v52 = getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v2);
    v54 = v53;
    v55 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v165, v2);
    v57 = v56;
    v164 = v7;
    v158 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v7, v2);
    v59 = v58;
    v162 = v47;
    if (v45)
    {
      v60 = 0;
    }

    else
    {
      v60 = v47 == 0xE000000000000000;
    }

    v61 = v54;
    v62 = v49;
    v63 = v160;
    v64 = v60;
    if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_112;
    }

    if (!v62 && v51 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v52 && v61 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v55 && v57 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {

      v7 = v164;
LABEL_81:

      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
LABEL_82:

LABEL_83:

      goto LABEL_110;
    }

    if ((v64 & 1) == 0)
    {
LABEL_112:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_144;
      }
    }

    v155 = v64;
    v157 = v45;
    v76 = v52;
    v159 = v57;
    v156 = v62;
    v7 = v164;
    if (!v62 && v51 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v63) == v52 && v77 == v61)
      {
      }

      else
      {
        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v82 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (!v55 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_81;
      }
    }

LABEL_143:
    v57 = v159;
    v62 = v156;
    v52 = v76;
    v45 = v157;
    v64 = v155;
    if (v155)
    {
LABEL_145:
      if (!v62 && v51 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v52 && v61 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

LABEL_163:

        v86 = *(v164 + 24);
        *&v166 = *(v164 + 16);
        *(&v166 + 1) = v86;

        MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
        v87 = *(v165 + 16);
        v88 = *(v165 + 24);

        MEMORY[0x24C1FAEA0](v87, v88);

        goto LABEL_105;
      }

      if (v64)
      {
LABEL_154:
        v157 = v45;
        v159 = v57;
        v154 = v55;
        v83 = v52;
        if (!v62 && v51 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v63) == v52 && v84 == v61)
          {

LABEL_162:

            goto LABEL_163;
          }

          v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v85)
          {

            goto LABEL_162;
          }
        }

        v57 = v159;
        v55 = v154;
        v52 = v83;
        if (v64)
        {
LABEL_166:
          if (!v62 && v51 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v55 && v57 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v12 = *(v163 + 16);
            v11 = *(v163 + 24);

            goto LABEL_110;
          }

          if (v64)
          {
LABEL_175:
            if (!v62 && v51 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v89 = *(v163 + 24);
              *&v166 = *(v163 + 16);
              *(&v166 + 1) = v89;

              MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
              v90 = *(v165 + 16);
              v91 = *(v165 + 24);

              MEMORY[0x24C1FAEA0](v90, v91);

              goto LABEL_105;
            }

            if (v64)
            {
LABEL_193:
              if (!v55 && v57 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v158 && v59 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
              {

                v12 = *(v161 + 16);
                v11 = *(v161 + 24);

                goto LABEL_83;
              }

              if (v64)
              {
LABEL_202:
                if (!v55 && v57 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v92 = *(v161 + 24);
                  *&v166 = *(v161 + 16);
                  *(&v166 + 1) = v92;

                  MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                  v93 = *(v164 + 16);
                  v94 = *(v164 + 24);

                  MEMORY[0x24C1FAEA0](v93, v94);
                  goto LABEL_103;
                }

                if (v64)
                {
LABEL_220:
                  if (!v158 && v59 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    v98 = *(v161 + 24);
                    *&v166 = *(v161 + 16);
                    *(&v166 + 1) = v98;

                    MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                    v99 = *(v165 + 16);
                    v100 = *(v165 + 24);

                    MEMORY[0x24C1FAEA0](v99, v100);

                    goto LABEL_104;
                  }

                  if (v64)
                  {

                    v101 = v161;
LABEL_228:
                    v103 = v164;

                    v104 = *(v101 + 24);
                    *&v166 = *(v101 + 16);
                    *(&v166 + 1) = v104;

                    MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                    v105 = *(v103 + 16);
                    v106 = *(v103 + 24);

                    MEMORY[0x24C1FAEA0](v105, v106);

                    MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                    v107 = *(v165 + 16);
                    v108 = *(v165 + 24);

                    MEMORY[0x24C1FAEA0](v107, v108);
                    goto LABEL_103;
                  }

LABEL_226:
                  v159 = v57;
                  v152 = v61;
                  v153 = v59;
                  v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v102)
                  {

                    v101 = v161;
                    goto LABEL_228;
                  }

                  if (v62)
                  {
                    v109 = 0;
                  }

                  else
                  {
                    v109 = v51 == 0xE000000000000000;
                  }

                  v110 = v109;
                  v111 = v153;
                  v112 = v152;
                  v7 = v164;
                  if (!v109 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_248;
                  }

                  if (!v52 && v112 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v55 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v158 && v111 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                  {

LABEL_271:

                    v11 = *(&v167 + 1);
                    v12 = v167;
LABEL_272:

                    goto LABEL_109;
                  }

                  if ((v110 & 1) == 0)
                  {
LABEL_248:
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      v114 = v52;

LABEL_274:
                      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
LABEL_283:
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {

                          goto LABEL_302;
                        }

LABEL_284:
                        if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v63) == v114 && v122 == v112)
                        {
                        }

                        else
                        {
                          v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v123 & 1) == 0)
                          {
                            goto LABEL_300;
                          }
                        }

                        if (!v55 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          goto LABEL_293;
                        }

LABEL_300:
                        if (v110)
                        {

                          goto LABEL_303;
                        }

LABEL_302:
                        v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if ((v128 & 1) == 0)
                        {
LABEL_307:
                          if (v55 || v159 != 0xE000000000000000)
                          {
                            v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if ((v131 & 1) == 0)
                            {
                              v166 = v167;

                              MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                              v135 = *(v165 + 16);
                              v136 = *(v165 + 24);

                              MEMORY[0x24C1FAEA0](v135, v136);

                              goto LABEL_105;
                            }
                          }

                          else
                          {
                          }

                          v166 = v167;

                          MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                          v132 = *(v161 + 16);
                          v133 = *(v161 + 24);

                          MEMORY[0x24C1FAEA0](v132, v133);

LABEL_105:

                          v11 = *(&v166 + 1);
                          v12 = v166;
                          goto LABEL_110;
                        }

LABEL_303:
                        if (!v55 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          v166 = v167;

                          MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                          v129 = *(v163 + 16);
                          v130 = *(v163 + 24);

                          MEMORY[0x24C1FAEA0](v129, v130);

                          goto LABEL_105;
                        }

                        goto LABEL_307;
                      }

LABEL_275:
                      if (!v114 && v112 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v55 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                      {

LABEL_293:
                        v124 = *(&v167 + 1);
                        v125 = v167;
LABEL_294:
                        *&v166 = v125;
                        *(&v166 + 1) = v124;

LABEL_295:
                        MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                        v126 = *(v7 + 16);
                        v127 = *(v7 + 24);
LABEL_296:

                        MEMORY[0x24C1FAEA0](v126, v127);
                        goto LABEL_297;
                      }

                      if (v110)
                      {
                        goto LABEL_284;
                      }

                      goto LABEL_283;
                    }
                  }

                  LODWORD(v162) = v110;
                  v114 = v52;
                  if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v63) == v52 && v113 == v112)
                  {
                  }

                  else
                  {
                    v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v120 & 1) == 0)
                    {
                      goto LABEL_267;
                    }
                  }

                  if (!v55 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if (!v158 && v153 == 0xE000000000000000)
                    {

LABEL_270:

                      goto LABEL_271;
                    }

                    v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v121)
                    {

                      goto LABEL_270;
                    }

LABEL_273:
                    v110 = v162;
                    if (v162)
                    {
                      goto LABEL_275;
                    }

                    goto LABEL_274;
                  }

LABEL_267:

                  goto LABEL_273;
                }

LABEL_219:
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_226;
                }

                goto LABEL_220;
              }

LABEL_201:
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_219;
              }

              goto LABEL_202;
            }

LABEL_192:
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_201;
            }

            goto LABEL_193;
          }

LABEL_174:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_192;
          }

          goto LABEL_175;
        }

LABEL_165:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_174;
        }

        goto LABEL_166;
      }

LABEL_153:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_154;
    }

LABEL_144:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_145;
  }

  if (![v13 isExternalDownloadPlaceholder])
  {
    v13 = swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v12 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v165, v1);
  v11 = v15;

  swift_unknownObjectRelease();
LABEL_110:

  v74 = v12;
  v75 = v11;
  result._object = v75;
  result._countAndFlagsBits = v74;
  return result;
}

uint64_t DOCItemCollectionCellContent.tableSubtitle.getter()
{
  v4 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle + 8);
  if (!v5)
  {
    v6 = v0;
    v7 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))(&v123);
    v131[4] = v127;
    v131[5] = v128;
    v131[6] = v129;
    v131[7] = v130;
    v131[0] = v123;
    v131[1] = v124;
    v131[2] = v125;
    v131[3] = v126;
    v132 = v123;
    v133 = v124;
    v134 = v125;
    v135 = v126;
    v136 = v127;
    v137 = v128;
    v138 = v129;
    v139 = v130;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v132) == 1)
    {
      __break(1u);
      goto LABEL_348;
    }

    outlined destroy of CharacterSet?(v131, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v8 = v133;
    v121 = 0;
    v122 = 0;
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v118 = v9;
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v117 = v10;
    v1 = *((*v7 & *v0) + 0x3D0);
    if ((v1)())
    {
      ObjectType = swift_getObjectType();
      DOCNode.debugUIScenario.getter(ObjectType, &v123);
      swift_unknownObjectRelease();
      if (v123 != 1)
      {
        v140 = v125;
        outlined init with copy of DOCGridLayout.Spec?(&v140, &v119, &_sSSSgMd);
        outlined destroy of CharacterSet?(&v123, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
        v12 = *(&v140 + 1);
        if (*(&v140 + 1))
        {
          v13 = v140;
          goto LABEL_90;
        }
      }
    }

    v14 = (v1)();
    if (v14)
    {
      if ([v14 isExternalDownloadPlaceholder])
      {
        v13 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v2, v0);
        v12 = v15;
        swift_unknownObjectRelease();
        goto LABEL_90;
      }

      swift_unknownObjectRelease();
    }

    if ((v8 & 8) != 0)
    {
      v32 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v0);
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {
        v13 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v2, v6);
        v12 = v45;
        goto LABEL_90;
      }

      goto LABEL_41;
    }

    if ((v8 & 2) == 0)
    {
      v16 = specialized getter of date #1 in DOCItemCollectionCellContent.subtitle(for:)(&v121, v0);
      v18 = v17;
      v19 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v6);
      v21 = v20;
      v112 = getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(v118, v6);
      v114 = v22;
      v110 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v2, v6);
      v24 = v23;
      v25 = v6;
      v26 = v21;
      v27 = v19;
      v106 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v3, v25);
      v29 = v28;
      LODWORD(v116) = v18;
      if (v16)
      {
        v30 = 0;
      }

      else
      {
        v30 = v18 == 0xE000000000000000;
      }

      LODWORD(v1) = v30;
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (!v27 && v26 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v112 && v114 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v110 && v24 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
LABEL_74:

        goto LABEL_88;
      }

      if ((v1 & 1) == 0)
      {
LABEL_31:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      v107 = v24;
      if ((v27 || v26 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_98;
      }

      if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v117) == v112 && v31 == v114)
      {
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v57 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      if ((v110 || v107 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_98:
        v24 = v107;
        if (v1)
        {
LABEL_100:
          if (!v27 && v26 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v112 && v114 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_125;
          }

          if (v1)
          {
LABEL_109:
            v109 = v24;
            if (!v27 && v26 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v117) == v112 && v63 == v114)
              {

LABEL_161:

                v70 = *(v3 + 16);
                v69 = *(v3 + 24);
                goto LABEL_162;
              }

              v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v65)
              {
LABEL_125:

                goto LABEL_161;
              }
            }

            v24 = v109;
            if (v1)
            {
LABEL_128:
              if (!v27 && v26 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v110 && v24 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
              {

LABEL_135:

                v13 = *(v118 + 16);
                v12 = *(v118 + 24);
                goto LABEL_89;
              }

              if (v1)
              {
LABEL_152:
                if (!v27 && v26 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  goto LABEL_156;
                }

                if (v1)
                {
LABEL_184:
                  if (!v110 && v24 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v106 && v29 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                  {

                    goto LABEL_41;
                  }

                  if (v1)
                  {
LABEL_193:
                    if (!v110 && v24 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

LABEL_239:

LABEL_240:
                      v83 = *(v5 + 16);
                      v82 = *(v5 + 24);
LABEL_241:
                      v119 = v83;
                      v120 = v82;

                      goto LABEL_242;
                    }

                    if (v1)
                    {
LABEL_204:
                      if (!v106 && v29 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

LABEL_208:

                        v70 = *(v5 + 16);
                        v69 = *(v5 + 24);
                        goto LABEL_162;
                      }

                      if (v1)
                      {

LABEL_213:

                        v77 = *(v5 + 24);
                        v119 = *(v5 + 16);
                        v120 = v77;

                        MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                        v78 = *(v3 + 16);
                        v79 = *(v3 + 24);

                        MEMORY[0x24C1FAEA0](v78, v79);

                        goto LABEL_163;
                      }

LABEL_211:
                      v104 = v27;
                      v74 = v26;
                      v75 = v24;
                      LODWORD(v1) = 0;
                      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v76)
                      {
LABEL_212:

                        goto LABEL_213;
                      }

                      if (v104)
                      {
                        v80 = 0;
                      }

                      else
                      {
                        v80 = v74 == 0xE000000000000000;
                      }

                      LODWORD(v1) = v80;
                      v81 = v75;
                      if (!v80 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        goto LABEL_244;
                      }

                      if (!v112 && v114 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v110 && v75 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v106 && v29 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                      {
                        goto LABEL_261;
                      }

                      if ((v1 & 1) == 0)
                      {
LABEL_244:
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {

LABEL_267:
                          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                          {
LABEL_276:
                            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                            {

                              goto LABEL_295;
                            }

LABEL_277:
                            if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v117) == v112 && v88 == v114)
                            {
                            }

                            else
                            {
                              v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if ((v89 & 1) == 0)
                              {
                                goto LABEL_293;
                              }
                            }

                            if (!v110 && v75 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              goto LABEL_292;
                            }

LABEL_293:
                            if (v1)
                            {

LABEL_296:
                              if (!v110 && v75 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                v119 = v121;
                                v120 = v122;

                                MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
                                v71 = *(v118 + 16);
                                v72 = *(v118 + 24);
                                goto LABEL_164;
                              }

LABEL_300:
                              if (v110 || v75 != 0xE000000000000000)
                              {
                                v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v91 & 1) == 0)
                                {
                                  v70 = v121;
                                  v69 = v122;
                                  goto LABEL_162;
                                }
                              }

                              else
                              {
                              }

                              v93 = v121;
                              v92 = v122;
                              goto LABEL_305;
                            }

LABEL_295:
                            v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if ((v90 & 1) == 0)
                            {
                              goto LABEL_300;
                            }

                            goto LABEL_296;
                          }

LABEL_268:
                          if (!v112 && v114 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v110 && v81 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                          {

LABEL_292:

                            v83 = v121;
                            v82 = v122;
                            goto LABEL_241;
                          }

                          if (v1)
                          {
                            goto LABEL_277;
                          }

                          goto LABEL_276;
                        }
                      }

                      if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v117) == v112 && v84 == v114)
                      {

                        v85 = v110;
                      }

                      else
                      {
                        v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        v85 = v110;
                        if ((v86 & 1) == 0)
                        {
                          goto LABEL_262;
                        }
                      }

                      if (!v85 && v75 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        if (!v106 && v29 == 0xE000000000000000)
                        {
LABEL_261:

LABEL_265:

                          v13 = v121;
                          v12 = v122;
                          goto LABEL_89;
                        }

                        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v87)
                        {

                          goto LABEL_265;
                        }

LABEL_266:
                        v81 = v75;
                        if (v1)
                        {
                          goto LABEL_268;
                        }

                        goto LABEL_267;
                      }

LABEL_262:

                      goto LABEL_266;
                    }

LABEL_203:
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_204;
                  }

LABEL_192:
                  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_193;
                }

LABEL_183:
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_192;
                }

                goto LABEL_184;
              }

LABEL_151:
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }

LABEL_127:
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_151;
            }

            goto LABEL_128;
          }

LABEL_108:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_109;
        }

LABEL_99:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_100;
      }

      goto LABEL_74;
    }

    if ((v8 & 1) == 0)
    {
      v36 = getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(v118, v0);
      v38 = v37;
      v39 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v0);
      v41 = v40;
      v115 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v2, v6);
      v116 = v42;
      v108 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v3, v6);
      v113 = v43;
      if (v36)
      {
        v44 = 0;
      }

      else
      {
        v44 = v38 == 0xE000000000000000;
      }

      LODWORD(v1) = v44;
      if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v39 && v41 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v115 && v116 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        goto LABEL_86;
      }

      v111 = v41;
      if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v117) == v36 && v58 == v38)
      {

        v59 = v116;
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v59 = v116;
        if ((v60 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      if (!v39 && v111 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v115 && v59 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
LABEL_86:

        goto LABEL_87;
      }

LABEL_92:
      if ((v1 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v39 && v111 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) || (*(v117 + 16) == v36 ? (v67 = *(v117 + 24) == v38) : (v67 = 0), !v67 ? (v68 = 0) : (v68 = 1), ((v105 = v68, v67) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v39 && v111 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
      {

        goto LABEL_161;
      }

      v73 = v113;
      if ((v1 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v115 && v116 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v108 && v113 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) || ((v105 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v115 && v116 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v108 && v113 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        goto LABEL_41;
      }

      if ((v1 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v115 && v116 == 0xE000000000000000 || (v73 = v113, (_stringCompareWithSmolCheck(_:_:expecting:)())) || ((v105 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v115 && v116 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        goto LABEL_239;
      }

      if ((v1 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v108 && v73 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) || ((v105 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v108 && v113 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        goto LABEL_208;
      }

      if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_212;
      }

      if (v105)
      {

        LODWORD(v116) = v38;
        goto LABEL_213;
      }

      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v94)
      {

        LODWORD(v116) = v113;
        goto LABEL_213;
      }

      if (v39)
      {
        v95 = 0;
      }

      else
      {
        v95 = v111 == 0xE000000000000000;
      }

      v96 = v95;
      if (!v95 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_331;
      }

      if (!v115 && v116 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v108 && v113 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        goto LABEL_135;
      }

      if (v96)
      {
      }

      else
      {
LABEL_331:
        LODWORD(v1) = v111;
        v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v97 & 1) == 0)
        {
          goto LABEL_336;
        }
      }

      if (!v115 && v116 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v83 = *(v118 + 16);
        v82 = *(v118 + 24);
        goto LABEL_241;
      }

LABEL_336:
      if (v115)
      {
        v98 = 0;
      }

      else
      {
        v98 = v116 == 0xE000000000000000;
      }

      LODWORD(v1) = v98;
      if (!v98 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_354;
      }

      if (!v108 && v113 == 0xE000000000000000)
      {

        goto LABEL_350;
      }

      goto LABEL_349;
    }

    v46 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v2, v0);
    v48 = v47;
    v49 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v6);
    v51 = v50;
    v1 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v3, v6);
    v53 = v52;
    if (v46)
    {
      v54 = 0;
    }

    else
    {
      v54 = v48 == 0xE000000000000000;
    }

    v55 = v54;
    LODWORD(v116) = v55;
    if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!v49 && v51 == 0xE000000000000000)
      {

LABEL_88:

        v13 = *(v3 + 16);
        v12 = *(v3 + 24);
        goto LABEL_89;
      }

      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v56)
      {
LABEL_87:

        goto LABEL_88;
      }

      if (v116)
      {
        goto LABEL_118;
      }
    }

    else
    {
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      goto LABEL_122;
    }

LABEL_118:
    if (!v1 && v53 == 0xE000000000000000)
    {

LABEL_41:
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
LABEL_89:

      while (1)
      {
LABEL_90:
        *v4 = v13;
        v4[1] = v12;

        v5 = v4[1];
        if (v5)
        {
          goto LABEL_91;
        }

LABEL_348:
        __break(1u);
LABEL_349:
        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v99)
        {
LABEL_350:

          v93 = *(v118 + 16);
          v92 = *(v118 + 24);
LABEL_305:
          v119 = v93;
          v120 = v92;

          MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
          v71 = *(v5 + 16);
          v72 = *(v5 + 24);
          goto LABEL_164;
        }

        if (v1)
        {
          break;
        }

LABEL_354:
        LODWORD(v1) = v116;
        v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v100)
        {
          goto LABEL_355;
        }

LABEL_156:
        v70 = *(v118 + 16);
        v69 = *(v118 + 24);
LABEL_162:
        v119 = v70;
        v120 = v69;

LABEL_163:
        MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
        v71 = *(v2 + 16);
        v72 = *(v2 + 24);
LABEL_164:

        MEMORY[0x24C1FAEA0](v71, v72);

        v13 = v119;
        v12 = v120;
      }

LABEL_355:
      v101 = *(v118 + 24);
      v119 = *(v118 + 16);
      v120 = v101;

      MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
      v102 = *(v5 + 16);
      v103 = *(v5 + 24);

      MEMORY[0x24C1FAEA0](v102, v103);

LABEL_242:
      MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
      v71 = *(v3 + 16);
      v72 = *(v3 + 24);
      goto LABEL_164;
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v66)
    {

      goto LABEL_41;
    }

    if (v116)
    {
      goto LABEL_239;
    }

LABEL_122:
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v64 & 1) == 0)
    {
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      goto LABEL_89;
    }

    goto LABEL_240;
  }

LABEL_91:
  v61 = *v4;

  return v61;
}

uint64_t specialized getter of date #1 in DOCItemCollectionCellContent.subtitle(for:)(uint64_t *a1, void *a2)
{
  if (a1[1])
  {
    v3 = *a1;
  }

  else
  {
    v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x738))();
    v5 = v4;
    swift_beginAccess();
    *a1 = v3;
    a1[1] = v5;
  }

  return v3;
}

uint64_t DOCItemCollectionCellContent.largeCompactWidthTextTableSubtitle.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *a1);
  if (v4[1] || (*v4 = DOCItemCollectionCellContent.largeWidthTextTableSubtitle(suffixJoiner:)(a2, a3), v4[1] = v5, result = , v4[1]))
  {
    v7 = *v4;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.largeWidthTextTableSubtitle(suffixJoiner:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x2F0))(v34);
  v39 = v34[4];
  v40 = v34[5];
  v41 = v34[6];
  v42 = v34[7];
  v35 = v34[0];
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v6 = v36;
    v7 = (*((*v3 & *v2) + 0x7C0))(v5);
    v9 = v8;
    v10 = (*((*v3 & *v2) + 0x758))();
    v12 = v11;
    v13 = (*((*v3 & *v2) + 0x780))();
    v15 = v14;
    v16 = (*((*v3 & *v2) + 0x3D0))();
    if (v16 && (v17 = [v16 isExternalDownloadPlaceholder], v3 = MEMORY[0x277D85000], swift_unknownObjectRelease(), v17))
    {

      return v13;
    }

    else if ((v6 & 8) != 0)
    {

      v26 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v26 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v27 = v7;
      }

      else
      {
        v27 = v13;
      }

      return v27;
    }

    else
    {
      v18 = (*((*v3 & *v2) + 0x738))();
      v32 = v18;
      v33 = v19;
      v20 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v20 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v21 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          MEMORY[0x24C1FAEA0](0x209380E220, 0xA500000000000000);
        }

        MEMORY[0x24C1FAEA0](v10, v12);
      }

      v22 = v15 & 0x2000000000000000;
      v23 = HIBYTE(v15) & 0xF;
      v24 = v13 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v25 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
      }

      else
      {

        v22 = v9 & 0x2000000000000000;
        v23 = HIBYTE(v9) & 0xF;
        v24 = v7 & 0xFFFFFFFFFFFFLL;
        v15 = v9;
        v13 = v7;
      }

      if (v22)
      {
        v28 = v23;
      }

      else
      {
        v28 = v24;
      }

      if (v28)
      {
        v29 = v32 & 0xFFFFFFFFFFFFLL;
        if ((v33 & 0x2000000000000000) != 0)
        {
          v29 = HIBYTE(v33) & 0xF;
        }

        if (v29)
        {
          MEMORY[0x24C1FAEA0](a1, a2);
        }

        MEMORY[0x24C1FAEA0](v13, v15);
      }
    }

    return v32;
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.listAccessory.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory);
  if (v2 == 2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
    if (v4)
    {
      if ([v4 isActionable] && ((v5 = (*((*v3 & *v0) + 0x538))()) == 0 || (v6 = v5, v7 = objc_msgSend(v5, sel_isFinished), v6, v7)))
      {
        v8 = (*((*v3 & *v0) + 0x800))();
        swift_unknownObjectRelease();
        if (v8)
        {
          LOBYTE(v2) = 0;
LABEL_10:
          *(v0 + v1) = v2;
          return v2 & 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    LOBYTE(v2) = 1;
    goto LABEL_10;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent.isSelectable.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x508))();
  if (result == 2)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  result = (*((*v1 & *v0) + 0x490))();
  if (result == 2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  result = (*((*v1 & *v0) + 0x4F0))();
  if (result == 2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  result = (*((*v1 & *v0) + 0x460))();
  if (result != 2)
  {
    v3 = result ^ 1;
    return v3 & 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionCellContent.missingProperties.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x4D8))() == 2;
  v3 = (*((*v1 & *v0) + 0x320))();
  if (v3)
  {
  }

  else
  {
    v2 |= 2uLL;
  }

  if (!*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection))
  {
    v2 |= 4uLL;
  }

  (*((*v1 & *v0) + 0x2F0))(v16);
  v17[4] = v16[4];
  v17[5] = v16[5];
  v17[6] = v16[6];
  v17[7] = v16[7];
  v17[0] = v16[0];
  v17[1] = v16[1];
  v17[2] = v16[2];
  v17[3] = v16[3];
  v4 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v17);
  if (v4 == 1)
  {
    v2 |= 8uLL;
  }

  else
  {
    v4 = outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  }

  (*((*v1 & *v0) + 0x2D8))(v12, v4);
  v14[8] = v12[8];
  v14[9] = v12[9];
  v15[0] = v13[0];
  *(v15 + 9) = *(v13 + 9);
  v14[4] = v12[4];
  v14[5] = v12[5];
  v14[6] = v12[6];
  v14[7] = v12[7];
  v14[0] = v12[0];
  v14[1] = v12[1];
  v14[2] = v12[2];
  v14[3] = v12[3];
  v5 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v14);
  if (v5 == 1)
  {
    v2 |= 0x10uLL;
  }

  else
  {
    v5 = outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  }

  if ((*((*v1 & *v0) + 0x490))(v5) == 2)
  {
    v2 |= 0x20uLL;
  }

  if ((*((*v1 & *v0) + 0x4F0))() == 2)
  {
    v2 |= 0x40uLL;
  }

  v6 = (*((*v1 & *v0) + 0x520))(v10);
  if (v11)
  {
    v2 |= 0x80uLL;
  }

  if ((*((*v1 & *v0) + 0x380))(v6) == 2)
  {
    v2 |= 0x100uLL;
  }

  if ((*((*v1 & *v0) + 0x3D0))())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = (*((*v1 & *v0) + 0x460))();
    v8 = v2 | 0x200;
    if (v7)
    {
      v8 = v2;
    }

    if (v7 != 2)
    {
      return v8;
    }
  }

  return v2;
}

uint64_t DOCItemCollectionCellContent.shouldShowFileExtension(forNode:)(void *a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x320))(v6);
  if (v9 && (v10 = v9, v11 = [v9 shouldShowFileExtensions], v10, (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v13 = static DOCFileExtensionManager.shared;
    v14 = [a1 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = (*(*v13 + 216))(v8);
    (*(v4 + 8))(v8, v3);
  }

  return v12 & 1;
}

id DOCItemCollectionCellContent.title(forNode:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xB90))();
  v5 = (*((*v3 & *v1) + 0x5F8))();
  if (v6)
  {
    v7 = v5;
    result = [a1 filename];
    if (result)
    {
      v9 = result;
      v10 = [result pathExtension];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (v4)
      {
        MEMORY[0x24C1FAEA0](v11, v13);

        MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
      }

      return v7;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_getObjectType();
    return DOCNode.displayName(withHiddenPathExtension:)((v4 & 1) == 0)._countAndFlagsBits;
  }

  return result;
}

id DOCItemCollectionCellContent.canDisplayExtension.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (result)
  {
    result = [result filename];
    if (result)
    {
      v2 = result;
      v3 = [result pathExtension];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String.count.getter();

      swift_unknownObjectRelease();
      return (v4 > 0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.isDisplayingExtension.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  (*((*v1 & *v0) + 0x5F8))();
  if (v4)
  {

    result = [v3 filename];
    if (result)
    {
      v6 = result;
      v7 = [result pathExtension];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if ((*((*v1 & *v0) + 0xB78))(v3))
      {
        v8 = String.count.getter();
        swift_unknownObjectRelease();

        return v8 > 0;
      }

      else
      {
        swift_unknownObjectRelease();

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = (*((*v1 & *v0) + 0xB78))(v3);
    swift_unknownObjectRelease();
    return v9 & 1;
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_delegate;
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x2C8))(16303);
  (*((*v5 & *v2) + 0xBB0))(v6);
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionCellContent.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCItemCollectionCellContent.delegate.modify;
}

void DOCItemCollectionCellContent.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x2C8))(16303);
    (*((*v5 & *v4) + 0xBB0))(v6);
  }

  free(v3);
}

Swift::Void __swiftcall DOCItemCollectionCellContent.notifyDelegateIfNeeded()()
{
  if (!*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount))
  {
    v1 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v0) + 0xB70))())
    {
      v2 = (*((*v1 & *v0) + 0x2C0))();
      v3 = (*((*v1 & *v0) + 0x2C8))(0);
      v4 = MEMORY[0x24C1FDA70](v3);
      closure #1 in DOCItemCollectionCellContent.notifyDelegateIfNeeded()(v2, v0);

      objc_autoreleasePoolPop(v4);
    }
  }
}

uint64_t closure #1 in DOCItemCollectionCellContent.notifyDelegateIfNeeded()(uint64_t result, void *a2)
{
  v3 = result;
  v4 = MEMORY[0x277D85000];
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *a2) + 0xB98))();
    if (result)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 2) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v9 = v8;
      v10 = swift_getObjectType();
      (*(v9 + 16))(v10, v9);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 4) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v12 = v11;
      v13 = swift_getObjectType();
      (*(v12 + 24))(v13, v12);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 8) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))(v16, v15);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x10) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v18 = v17;
      v19 = swift_getObjectType();
      (*(v18 + 40))(v19, v18);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x20) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v21 = v20;
      v22 = swift_getObjectType();
      (*(v21 + 48))(v22, v21);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x80) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v24 = v23;
      v25 = swift_getObjectType();
      (*(v24 + 56))(v25, v24);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x100) != 0)
  {
    if ((*((*v4 & *a2) + 0xB98))(result))
    {
      v27 = v26;
      v28 = swift_getObjectType();
      (*(v27 + 64))(v28, v27);
      swift_unknownObjectRelease();
    }

    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock;
    [*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock) lock];
    v30 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock);
    v31 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock);
    if (v31)
    {

      v31(v32);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v31);
      v33 = *v30;
      *v30 = 0;
      v30[1] = 0;
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v33);
    }

    result = [*(a2 + v29) unlock];
  }

  if ((v3 & 0x200) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v35 = v34;
      v36 = swift_getObjectType();
      (*(v35 + 72))(v36, v35);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x400) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v38 = v37;
      v39 = swift_getObjectType();
      (*(v38 + 80))(v39, v38);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x800) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v41 = v40;
      v42 = swift_getObjectType();
      (*(v41 + 88))(v42, v41);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x1000) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v44 = v43;
      v45 = swift_getObjectType();
      (*(v44 + 96))(v45, v44);
      result = swift_unknownObjectRelease();
    }
  }

  if ((v3 & 0x2000) != 0)
  {
    result = (*((*v4 & *a2) + 0xB98))(result);
    if (result)
    {
      v47 = v46;
      v48 = swift_getObjectType();
      (*(v47 + 104))(v48, v47);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.accessibilityItem()()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (result)
  {
    swift_getObjectType();
    v2 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

id DOCItemCollectionCellContent.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_pendingNotifications] = 0;
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits];
  _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgWOi0_(v47);
  v2 = v47[9];
  v1[8] = v47[8];
  v1[9] = v2;
  v1[10] = v48[0];
  *(v1 + 169) = *(v48 + 9);
  v3 = v47[5];
  v1[4] = v47[4];
  v1[5] = v3;
  v4 = v47[7];
  v1[6] = v47[6];
  v1[7] = v4;
  v5 = v47[1];
  *v1 = v47[0];
  v1[1] = v5;
  v6 = v47[3];
  v1[2] = v47[2];
  v1[3] = v6;
  v7 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits];
  _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(v49);
  v8 = v49[5];
  v7[4] = v49[4];
  v7[5] = v8;
  v9 = v49[7];
  v7[6] = v49[6];
  v7[7] = v9;
  v10 = v49[1];
  *v7 = v49[0];
  v7[1] = v10;
  v11 = v49[3];
  v7[2] = v49[2];
  v7[3] = v11;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection] = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_folderTintComponents;
  v13 = type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents();
  (*(*(v13 - 8) + 56))(&v0[v12], 1, 1, v13);
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_useSystemHighlightStyle] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_roundedCorners] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_node] = 0;
  v14 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_sortingDescriptor];
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 0;
  v14[24] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInSearchMode] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_grouping] = 10;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isParentItemShared] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_shouldPreserveSpaceForDisclosureButton] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode] = 2;
  v15 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin];
  *v15 = 0;
  v15[8] = 1;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting] = 2;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  v17 = type metadata accessor for IndexSet();
  (*(*(v17 - 8) + 56))(&v0[v16], 1, 1, v17);
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable] = 2;
  v18 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v18[40] = 1;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress] = 0;
  v19 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock;
  *&v0[v20] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v21 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameTitle];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameOldTitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleColor;
  v25 = objc_opt_self();
  *&v0[v24] = [v25 labelColor];
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  *&v0[v26] = [v25 secondaryLabelColor];
  v27 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__suffixColor;
  *&v0[v27] = [v25 labelColor];
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  v29 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v29 - 8) + 56))(&v0[v28], 1, 1, v29);
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags] = 0;
  v30 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock;
  *&v0[v31] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v32 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress];
  *v34 = 0;
  v34[8] = 1;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumProgressFractionForStatusTextUpdate] = 0x3FA999999999999ALL;
  v35 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString];
  *v35 = 0;
  v35[1] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isFolder] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isExcludedFromSync] = 2;
  v36 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName];
  *v36 = 0;
  v36[1] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disableProgressViews] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDimThumbnail] = 2;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_imageCache] = 0;
  v37 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType];
  *v37 = 0;
  v37[8] = 1;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_creationDate;
  v39 = type metadata accessor for Date();
  v40 = *(*(v39 - 8) + 56);
  v40(&v0[v38], 1, 1, v39);
  v40(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_lastUsedDate], 1, 1, v39);
  v40(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__modificationDate], 1, 1, v39);
  v40(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__dateAdded], 1, 1, v39);
  v41 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle];
  *v41 = 0;
  v41[1] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance] = 10;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle] = 0;
  v42 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle];
  *v44 = 0;
  v44[1] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory] = 2;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v46.receiver = v0;
  v46.super_class = type metadata accessor for DOCItemCollectionCellContent(0);
  return objc_msgSendSuper2(&v46, sel_init);
}

uint64_t outlined assign with copy of IndexSet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of DOCFastLabel.AttachmentRenderer?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

BOOL specialized static DOCItemCollectionCellContent.DecorationImageObserver.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && (*(a1 + 24) == *(a2 + 24) ? (v2 = *(a1 + 32) == *(a2 + 32)) : (v2 = 0), v2))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t outlined consume of DOCFastLabel.AttachmentRenderer?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

double _sSo7DOCNode_p_So17UITraitCollectionC26DocumentManagerExecutables07DOCItemC12LayoutTraitsC08GridItemI0VtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t partial apply for closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type DOCListAccessoryType and conformance DOCListAccessoryType()
{
  result = lazy protocol witness table cache variable for type DOCListAccessoryType and conformance DOCListAccessoryType;
  if (!lazy protocol witness table cache variable for type DOCListAccessoryType and conformance DOCListAccessoryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCListAccessoryType and conformance DOCListAccessoryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.CellContentProperties and conformance DOCItemCollectionCellContent.CellContentProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionCellContent.PendingNotifications and conformance DOCItemCollectionCellContent.PendingNotifications);
  }

  return result;
}

void type metadata completion function for DOCItemCollectionCellContent()
{
  type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents?(319, &lazy cache variable for type metadata for ImageOptions.ImageOptionsFolderColorComponents?, MEMORY[0x277D06318]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents?(319, &lazy cache variable for type metadata for IndexSet?, MEMORY[0x277CC9A28]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents?(319, &lazy cache variable for type metadata for DOCFastLabel.LabelInformation?, type metadata accessor for DOCFastLabel.LabelInformation);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for DOCItemCollectionCellContent.DecorationImageObserver()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DOCItemCollectionCellContent.DecorationImageObserver.getImage()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v4();
}

uint64_t objectdestroy_16Tm_0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

Swift::Void __swiftcall DOCConfiguration.updateStateAndSceneIdentifiers(with:)(UIWindow_optional *with)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!with)
  {
    return;
  }

  v10 = v7;
  v11 = with;
  v12 = [v2 sceneIdentifier];
  if (v12)
  {
    v34 = v12;

    v13 = v34;

    return;
  }

  v14 = [(UIWindow_optional *)v11 windowScene];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 session];

    v17 = [v16 persistentIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [v2 hostIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      if (v20)
      {
        v28 = v20;
      }

      else
      {
        v18 = 0xD000000000000022;
        v28 = 0x8000000249BF4250;
      }

      UUID.init()();
      v29 = UUID.uuidString.getter();
      v20 = v30;
      (*(v5 + 8))(v9, v10);
      goto LABEL_21;
    }
  }

  if (!v20)
  {
    v31 = 0;
    goto LABEL_23;
  }

  v28 = v20;
  v29 = v18;
LABEL_21:
  v31 = MEMORY[0x24C1FAD20](v18, v28);

  v18 = v29;
LABEL_23:
  [v2 setStateIdentifier_];

  if (v20)
  {
    v32 = MEMORY[0x24C1FAD20](v18, v20);
  }

  else
  {
    v32 = 0;
  }

  [v2 setSceneIdentifier_];
}

void @objc DOCConfiguration.updateStateAndSceneIdentifiers(with:)(void *a1, uint64_t a2, UIWindow_optional *a3)
{
  v5 = a3;
  v6 = a1;
  DOCConfiguration.updateStateAndSceneIdentifiers(with:)(a3);
}

id DOCUSBStorageKitManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static DOCUSBStorageKitManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DOCUSBStorageKitManager.shared;

  return v1;
}

Swift::Void __swiftcall DOCUSBStorageKitManager.prewarmStorageKitManagerIfNeeded()()
{
  v1 = v0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x80))())
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.Rename);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25 = v5;
      *v4 = 136315394;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BF4280, &v25);
      *(v4 + 12) = 2080;
      [objc_opt_self() sharedManager];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SKManagerCSgMd);
      v6 = String.init<A>(describing:)();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v25);

      *(v4 + 14) = v8;
      v9 = "%s: SKManager already warmed, skipping prewarm. %s";
LABEL_11:
      _os_log_impl(&dword_2493AC000, oslog, v3, v9, v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v5, -1, -1);
      MEMORY[0x24C1FE850](v4, -1, -1);

      return;
    }

LABEL_12:

    return;
  }

  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmStarted) == 1)
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Rename);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25 = v5;
      *v4 = 136315394;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BF4280, &v25);
      *(v4 + 12) = 2080;
      [objc_opt_self() sharedManager];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SKManagerCSgMd);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v25);

      *(v4 + 14) = v13;
      v9 = "%s: Prewarming started but hasn't completed, skipping prewarm initialization. %s";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmStarted) = 1;
  v14 = objc_opt_self();
  v15 = [v14 sharedManager];
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.Rename);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BF4280, &v25);
    *(v19 + 12) = 2080;
    [v14 sharedManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SKManagerCSgMd);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_2493AC000, v17, v18, "%s: Starting to pre-warm SKManager %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  if (v15)
  {
    [v15 addListener_];
  }
}

uint64_t DOCUSBStorageKitManager.prewarmComplete.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmComplete;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCUSBStorageKitManager.prewarmComplete.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmComplete;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCUSBStorageKitManager.init()()
{
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmStarted] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmComplete] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUSBStorageKitManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCUSBStorageKitManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUSBStorageKitManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCUSBStorageKitManager.initialPopulateComplete()()
{
  v1 = v0;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Rename);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BF42B0, &v12);
    *(v5 + 12) = 2080;
    [objc_opt_self() sharedManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SKManagerCSgMd);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s: SKManager %s allDisks is fully populated.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v10 = [objc_opt_self() sharedManager];
  if (v10)
  {
    v11 = v10;
    [v10 removeListener_];

    (*((*MEMORY[0x277D85000] & *v1) + 0x88))(1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCItemFileTypeGroupCategory.groupIdentifier.getter(uint64_t a1, uint64_t a2)
{
  if (a2 > 4)
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        return 0x6873646165727053;
      }

      if (a2 == 6)
      {
        return 0x61746E6573657250;
      }

      return 0x65706F6C65766544;
    }

    switch(a2)
    {
      case 8:
        return 0x7365766968637241;
      case 9:
        return 0x737265646C6F46;
      case 10:
        return 0x726568744FLL;
    }

LABEL_24:
    strcpy(v3, "Custom group ");
    MEMORY[0x24C1FAEA0]();
    return v3[0];
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0x75636F4420464450;
    }

    if (a2 == 1)
    {
      return 0x736567616D49;
    }

    goto LABEL_24;
  }

  if (a2 == 2)
  {
    return 0x636973754DLL;
  }

  if (a2 == 3)
  {
    return 0x736569766F4DLL;
  }

  return 0x746E656D75636F44;
}

objc_class *DOCItemFileTypeGroupCategory.localizedTitle.getter(uint64_t a1, int64_t a2)
{
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_39;
        }

        result = _DocumentManagerBundle();
        if (result)
        {
          v5 = result;
          v9 = 0xD00000000000002CLL;
          v15 = 0x8000000249BF4530;
          v6 = 0x736567616D49;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v10 = 0xE600000000000000;
          goto LABEL_36;
        }
      }

      else
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v5 = result;
          v15 = 0x8000000249BF4560;
          v6 = 0x75636F4420464450;
          v10 = 0xED000073746E656DLL;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v9 = 0xD000000000000034;
          goto LABEL_36;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (a2 == 2)
      {
        result = _DocumentManagerBundle();
        if (!result)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v5 = result;
        v15 = 0x8000000249BF44F0;
        v6 = 0x636973754DLL;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v10 = 0xE500000000000000;
LABEL_31:
        v11.super.isa = v5;
        v12 = 0;
        v13 = 0xE000000000000000;
        v9 = 0xD000000000000031;
LABEL_37:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v7, v11, *&v12, *&v9)._countAndFlagsBits;

LABEL_38:
        outlined copy of DOCItemFileTypeGroupCategory(a1, a2);
        return countAndFlagsBits;
      }

      if (a2 != 3)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v5 = result;
          v15 = 0x8000000249BF4460;
          v6 = 0x746E656D75636F44;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v10 = 0xE900000000000073;
          v9 = 0xD000000000000045;
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v5 = result;
        v15 = 0x8000000249BF44B0;
        v6 = 0x736569766F4DLL;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v10 = 0xE600000000000000;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a2 <= 7)
  {
    if (a2 == 5)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v5 = result;
        v15 = 0x8000000249BF4420;
        v6 = 0x6873646165727053;
        v10 = 0xEC00000073746565;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v9 = 0xD000000000000032;
        goto LABEL_36;
      }

      goto LABEL_49;
    }

    if (a2 != 6)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v5 = result;
        v15 = 0x8000000249BF43A0;
        v6 = 0x65706F6C65766544;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v9 = 0xD000000000000037;
        v10 = 0xE900000000000072;
LABEL_36:
        v11.super.isa = v5;
        v12 = 0;
        v13 = 0xE000000000000000;
        goto LABEL_37;
      }

      goto LABEL_46;
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v5 = result;
      v15 = 0x8000000249BF43E0;
      v6 = 0x61746E6573657250;
      v10 = 0xED0000736E6F6974;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v9 = 0xD00000000000003CLL;
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  if (a2 != 8)
  {
    if (a2 == 9)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v5 = result;
        v9 = 0xD00000000000002DLL;
        v15 = 0x8000000249BF4330;
        v6 = 0x737265646C6F46;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v10 = 0xE700000000000000;
        goto LABEL_36;
      }

      goto LABEL_45;
    }

    if (a2 == 10)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v5 = result;
        v15 = 0x8000000249BF0340;
        v6 = 0x726568744FLL;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v9 = 0xD00000000000004FLL;
        v10 = 0xE500000000000000;
        goto LABEL_36;
      }

      goto LABEL_47;
    }

LABEL_39:
    countAndFlagsBits = a1;
    goto LABEL_38;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v5 = result;
    v15 = 0x8000000249BF4360;
    v6 = 0x7365766968637241;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v9 = 0xD000000000000034;
    v10 = 0xE800000000000000;
    goto LABEL_36;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t DOCItemFileTypeGroupCategory.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 2;
      }

      else if (a3 == 3)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }

      return MEMORY[0x24C1FCBD0](v3);
    }

    if (!a3)
    {
      v3 = 0;
      return MEMORY[0x24C1FCBD0](v3);
    }

    if (a3 == 1)
    {
      v3 = 1;
      return MEMORY[0x24C1FCBD0](v3);
    }
  }

  else
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v3 = 5;
      }

      else if (a3 == 6)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }

      return MEMORY[0x24C1FCBD0](v3);
    }

    switch(a3)
    {
      case 8:
        v3 = 8;
        return MEMORY[0x24C1FCBD0](v3);
      case 9:
        v3 = 9;
        return MEMORY[0x24C1FCBD0](v3);
      case 10:
        v3 = 11;
        return MEMORY[0x24C1FCBD0](v3);
    }
  }

  MEMORY[0x24C1FCBD0](10);

  return String.hash(into:)();
}

Swift::Int DOCItemFileTypeGroupCategory.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemFileTypeGroupCategory()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemFileTypeGroupCategory()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

void *one-time initialization function for typeIdentifierToCategoryCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DOCFileTypeGrouping.typeIdentifierToCategoryCache = result;
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        if (a4 == 5)
        {
          return 1;
        }
      }

      else if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a4 == 7)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 8:
        return a4 == 8;
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
    }
  }

  if (a4 < 0xB)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ObjectType = swift_getObjectType();
  if (((*(v4 + 104))(v5, v6, ObjectType, v4) & 1) == 0)
  {
    v26 = 0;
    return v26 & 1;
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = *(a2 + 56);
  if (v11 == 255)
  {
    if (v17 == 255)
    {
      v26 = 1;
      return v26 & 1;
    }

    goto LABEL_9;
  }

  if (v17 == 255)
  {
LABEL_9:
    v37 = a2[2];
    v39 = a2[3];
    v27 = *(a1 + 24);
    v28 = *(a1 + 32);
    v29 = v16;
    v40 = v16;
    v30 = v17;
    outlined copy of DOCSidebarItem?(v12, v13, v14, v15, v29, v17);
    outlined copy of DOCSidebarItem?(v8, v27, v28, v9, v10, v11);
    outlined consume of DOCSidebarItem?(v8, v27, v28, v9, v10, v11);
    outlined consume of DOCSidebarItem?(v37, v39, v14, v15, v40, v30);
    v26 = 0;
    return v26 & 1;
  }

  v36 = a2[2];
  v38 = a2[3];
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v32 = v15;
  v20 = v15;
  v21 = v17;
  outlined copy of DOCSidebarItem?(v12, v13, v14, v20, v16, v17);
  v33 = v18;
  v34 = v9;
  v35 = v10;
  outlined copy of DOCSidebarItem?(v8, v18, v19, v9, v10, v11);
  v22 = DOCSidebarItem.hashComparableValue.getter();
  v24 = v23;
  if (v22 == DOCSidebarItem.hashComparableValue.getter() && v24 == v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of DOCSidebarItem?(v36, v38, v14, v32, v16, v21);
  outlined consume of DOCSidebarItem?(v8, v33, v19, v34, v35, v11);
  return v26 & 1;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 16 * a2);
    v9 = v8[1];
    *result = *v8;
    result[1] = v9;
    outlined copy of DOCItemFileTypeGroupCategory(v6, v7);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;
    v7 = v5;
    v8 = v6;
    return v7;
  }

LABEL_8:
  __break(1u);
  return result;
}

id specialized Dictionary.subscript.getter(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  outlined init with copy of AnyHashable(*(a5 + 48) + 40 * a2, result);
  v7 = *(*(a5 + 56) + 8 * a2);

  return v7;
}

uint64_t specialized static DOCItemFileTypeGroupCategory.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        if (a4 == 5)
        {
          return 1;
        }
      }

      else if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a4 == 7)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 8:
        return a4 == 8;
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
    }
  }

  if (a4 < 0xB)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized DOCFileTypeGrouping.init(with:)(uint64_t a1)
{
  v313[1] = a1;
  v338 = type metadata accessor for UTType();
  v1 = *(v338 - 8);
  MEMORY[0x28223BE20](v338, v2);
  v322 = v313 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v330 = v313 - v6;
  MEMORY[0x28223BE20](v7, v8);
  v329 = v313 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v328 = v313 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v327 = v313 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v326 = v313 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v325 = v313 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v332 = v313 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v335 = v313 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v334 = v313 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v339 = (v313 - v33);
  MEMORY[0x28223BE20](v34, v35);
  v37 = v313 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOSSGGMd);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249BB28A0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStGMd);
  inited = swift_initStackObject();
  v340 = xmmword_249B9A480;
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  static UTType.pdf.getter();
  v41 = UTType.identifier.getter();
  v43 = v42;
  v44 = *(v1 + 8);
  v44(v37, v338);
  v324 = v1 + 8;
  *(inited + 48) = v41;
  *(inited + 56) = v43;
  v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  *(v38 + 32) = v45;
  v46 = swift_initStackObject();
  *(v46 + 16) = v340;
  v314 = xmmword_249BA5030;
  *(v46 + 32) = xmmword_249BA5030;
  static UTType.image.getter();
  v47 = UTType.identifier.getter();
  v49 = v48;
  v44(v37, v338);
  *(v46 + 48) = v47;
  *(v46 + 56) = v49;
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v46);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v46 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  *(v38 + 40) = v50;
  v51 = v38;
  v336 = v38;
  v52 = v39;
  v53 = swift_initStackObject();
  *(v53 + 16) = v340;
  v315 = xmmword_249BAA660;
  *(v53 + 32) = xmmword_249BAA660;
  static UTType.audio.getter();
  v54 = UTType.identifier.getter();
  v56 = v55;
  v57 = v338;
  v44(v37, v338);
  *(v53 + 48) = v54;
  *(v53 + 56) = v56;
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v53);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v53 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  *(v51 + 48) = v58;
  *&v337 = v52;
  v59 = swift_initStackObject();
  *(v59 + 16) = v340;
  v316 = xmmword_249BB74E0;
  *(v59 + 32) = xmmword_249BB74E0;
  static UTType.video.getter();
  v60 = UTType.identifier.getter();
  v62 = v61;
  v44(v37, v57);
  *(v59 + 48) = v60;
  *(v59 + 56) = v62;
  v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v59);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v59 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  v336[7] = v63;
  v64 = swift_initStackObject();
  *(v64 + 16) = v340;
  v317 = xmmword_249BAFCB0;
  *(v64 + 32) = xmmword_249BAFCB0;
  static UTType.sourceCode.getter();
  v65 = UTType.identifier.getter();
  v67 = v66;
  v44(v37, v57);
  *(v64 + 48) = v65;
  *(v64 + 56) = v67;
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v64);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v64 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  v69 = v336;
  v336[8] = v68;
  v70 = swift_initStackObject();
  *(v70 + 16) = v340;
  v318 = xmmword_249BB74F0;
  *(v70 + 32) = xmmword_249BB74F0;
  static UTType.plainText.getter();
  v71 = UTType.identifier.getter();
  v73 = v72;
  v44(v37, v338);
  *(v70 + 48) = v71;
  *(v70 + 56) = v73;
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v70);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v70 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  v69[9] = v74;
  v75 = swift_initStackObject();
  *(v75 + 16) = v340;
  v321 = xmmword_249BB7D30;
  *(v75 + 32) = xmmword_249BB7D30;
  static UTType.spreadsheet.getter();
  v76 = UTType.identifier.getter();
  v78 = v77;
  v79 = v338;
  v44(v37, v338);
  *(v75 + 48) = v76;
  *(v75 + 56) = v78;
  v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v75);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v75 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  v336[10] = v80;
  v81 = swift_initStackObject();
  *(v81 + 16) = v340;
  v320 = xmmword_249BB7500;
  *(v81 + 32) = xmmword_249BB7500;
  static UTType.presentation.getter();
  v82 = UTType.identifier.getter();
  v84 = v83;
  v85 = v79;
  v44(v37, v79);
  *(v81 + 48) = v82;
  *(v81 + 56) = v84;
  v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v81);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v81 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  v87 = v336;
  v336[11] = v86;
  v88 = swift_initStackObject();
  *(v88 + 16) = v340;
  v319 = xmmword_249BB7D40;
  *(v88 + 32) = xmmword_249BB7D40;
  static UTType.folder.getter();
  v89 = UTType.identifier.getter();
  v91 = v90;
  v44(v37, v85);
  *(v88 + 48) = v89;
  *(v88 + 56) = v91;
  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(v88);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v88 + 32, &_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SStMd);
  v87[12] = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SaySSGtGMd);
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_249BA22F0;
  *(v93 + 32) = 0;
  v323 = v93 + 32;
  *(v93 + 40) = 0;
  v94 = v93;
  *&v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v95 = swift_allocObject();
  *(v95 + 16) = v340;
  static UTType.pdf.getter();
  v96 = UTType.identifier.getter();
  v98 = v97;
  v99 = v338;
  v44(v37, v338);
  *(v95 + 32) = v96;
  *(v95 + 40) = v98;
  v333 = v94;
  *(v94 + 48) = v95;
  *(v94 + 56) = v314;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_249BB7D50;
  v331 = v37;
  static UTType.image.getter();
  v101 = UTType.identifier.getter();
  v103 = v102;
  v104 = v37;
  v105 = v99;
  v44(v104, v99);
  *(v100 + 32) = v101;
  *(v100 + 40) = v103;
  v106 = v339;
  static UTType.heic.getter();
  v107 = UTType.identifier.getter();
  v109 = v108;
  v44(v106, v99);
  *(v100 + 48) = v107;
  *(v100 + 56) = v109;
  v110 = v334;
  static UTType.jpeg.getter();
  v111 = UTType.identifier.getter();
  v113 = v112;
  v44(v110, v99);
  *(v100 + 64) = v111;
  *(v100 + 72) = v113;
  v114 = v335;
  static UTType.tiff.getter();
  v115 = UTType.identifier.getter();
  v117 = v116;
  v44(v114, v99);
  *(v100 + 80) = v115;
  *(v100 + 88) = v117;
  v118 = v332;
  static UTType.gif.getter();
  v119 = UTType.identifier.getter();
  v121 = v120;
  v44(v118, v99);
  *(v100 + 96) = v119;
  *(v100 + 104) = v121;
  v122 = v325;
  static UTType.png.getter();
  v123 = UTType.identifier.getter();
  v125 = v124;
  v44(v122, v99);
  *(v100 + 112) = v123;
  *(v100 + 120) = v125;
  v126 = v326;
  static UTType.icns.getter();
  v127 = UTType.identifier.getter();
  v129 = v128;
  v44(v126, v105);
  *(v100 + 128) = v127;
  *(v100 + 136) = v129;
  v130 = v327;
  static UTType.bmp.getter();
  v131 = UTType.identifier.getter();
  v133 = v132;
  v44(v130, v105);
  *(v100 + 144) = v131;
  *(v100 + 152) = v133;
  v134 = v328;
  static UTType.ico.getter();
  v135 = UTType.identifier.getter();
  v137 = v136;
  v44(v134, v105);
  *(v100 + 160) = v135;
  *(v100 + 168) = v137;
  v138 = v329;
  static UTType.rawImage.getter();
  v139 = UTType.identifier.getter();
  v141 = v140;
  v44(v138, v105);
  *(v100 + 176) = v139;
  *(v100 + 184) = v141;
  v142 = v330;
  static UTType.svg.getter();
  v143 = UTType.identifier.getter();
  v145 = v144;
  v44(v142, v105);
  *(v100 + 192) = v143;
  *(v100 + 200) = v145;
  v146 = v333;
  v333[9] = v100;
  *(v146 + 5) = v315;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_249BA54A0;
  v148 = v331;
  static UTType.audio.getter();
  v149 = UTType.identifier.getter();
  v151 = v150;
  v44(v148, v105);
  *(v147 + 32) = v149;
  *(v147 + 40) = v151;
  v152 = v339;
  static UTType.mp3.getter();
  v153 = UTType.identifier.getter();
  v155 = v154;
  v156 = v44;
  v157 = v105;
  v44(v152, v105);
  *(v147 + 48) = v153;
  *(v147 + 56) = v155;
  v158 = v334;
  static UTType.mpeg4Audio.getter();
  v159 = UTType.identifier.getter();
  v161 = v160;
  v44(v158, v157);
  *(v147 + 64) = v159;
  *(v147 + 72) = v161;
  v162 = v335;
  static UTType.wav.getter();
  v163 = UTType.identifier.getter();
  v165 = v164;
  v44(v162, v157);
  *(v147 + 80) = v163;
  *(v147 + 88) = v165;
  v166 = v332;
  static UTType.midi.getter();
  v167 = UTType.identifier.getter();
  v169 = v168;
  v44(v166, v157);
  *(v147 + 96) = v167;
  *(v147 + 104) = v169;
  v170 = v333;
  v333[12] = v147;
  *(v170 + 13) = v316;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_249BA2880;
  static UTType.video.getter();
  v172 = UTType.identifier.getter();
  v174 = v173;
  v44(v148, v157);
  *(v171 + 32) = v172;
  *(v171 + 40) = v174;
  v175 = v339;
  static UTType.mpeg2Video.getter();
  v176 = UTType.identifier.getter();
  v178 = v177;
  v44(v175, v157);
  *(v171 + 48) = v176;
  *(v171 + 56) = v178;
  v179 = v334;
  static UTType.movie.getter();
  v180 = UTType.identifier.getter();
  v182 = v181;
  v44(v179, v157);
  *(v171 + 64) = v180;
  *(v171 + 72) = v182;
  v183 = v335;
  static UTType.quickTimeMovie.getter();
  v184 = UTType.identifier.getter();
  v186 = v185;
  v44(v183, v157);
  *(v171 + 80) = v184;
  *(v171 + 88) = v186;
  static UTType.mpeg.getter();
  v187 = UTType.identifier.getter();
  v189 = v188;
  v44(v166, v157);
  *(v171 + 96) = v187;
  *(v171 + 104) = v189;
  v190 = v325;
  static UTType.mpeg4Movie.getter();
  v191 = UTType.identifier.getter();
  v193 = v192;
  v44(v190, v157);
  *(v171 + 112) = v191;
  *(v171 + 120) = v193;
  v194 = v326;
  static UTType.avi.getter();
  v195 = UTType.identifier.getter();
  v197 = v196;
  v44(v194, v157);
  *(v171 + 128) = v195;
  *(v171 + 136) = v197;
  v198 = v333;
  v333[15] = v171;
  *(v198 + 8) = v317;
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_249BB7D60;
  v200 = v331;
  static UTType.sourceCode.getter();
  v201 = UTType.identifier.getter();
  v203 = v202;
  v44(v200, v157);
  *(v199 + 32) = v201;
  *(v199 + 40) = v203;
  v204 = v339;
  static UTType.json.getter();
  v205 = UTType.identifier.getter();
  v207 = v206;
  v44(v204, v157);
  *(v199 + 48) = v205;
  *(v199 + 56) = v207;
  v208 = v334;
  static UTType.swiftSource.getter();
  v209 = UTType.identifier.getter();
  v211 = v210;
  v44(v208, v157);
  *(v199 + 64) = v209;
  *(v199 + 72) = v211;
  v212 = v335;
  static UTType.objectiveCSource.getter();
  v213 = UTType.identifier.getter();
  v215 = v214;
  v44(v212, v157);
  *(v199 + 80) = v213;
  *(v199 + 88) = v215;
  v216 = v332;
  static UTType.objectiveCPlusPlusSource.getter();
  v217 = UTType.identifier.getter();
  v219 = v218;
  v44(v216, v157);
  *(v199 + 96) = v217;
  *(v199 + 104) = v219;
  static UTType.cSource.getter();
  v220 = UTType.identifier.getter();
  v222 = v221;
  v44(v190, v157);
  *(v199 + 112) = v220;
  *(v199 + 120) = v222;
  static UTType.cHeader.getter();
  v223 = UTType.identifier.getter();
  v225 = v224;
  v226 = v194;
  v227 = v333;
  v44(v226, v157);
  *(v199 + 128) = v223;
  *(v199 + 136) = v225;
  v228 = v327;
  static UTType.cPlusPlusSource.getter();
  v229 = UTType.identifier.getter();
  v231 = v230;
  v44(v228, v157);
  *(v199 + 144) = v229;
  *(v199 + 152) = v231;
  v232 = v328;
  static UTType.cPlusPlusHeader.getter();
  v233 = UTType.identifier.getter();
  v235 = v234;
  v44(v232, v157);
  *(v199 + 160) = v233;
  *(v199 + 168) = v235;
  v236 = v329;
  static UTType.propertyList.getter();
  v237 = UTType.identifier.getter();
  v239 = v238;
  v44(v236, v157);
  *(v199 + 176) = v237;
  *(v199 + 184) = v239;
  v240 = v330;
  static UTType.xmlPropertyList.getter();
  v241 = UTType.identifier.getter();
  v243 = v242;
  v44(v240, v157);
  *(v199 + 192) = v241;
  *(v199 + 200) = v243;
  v244 = v322;
  static UTType.binaryPropertyList.getter();
  v245 = UTType.identifier.getter();
  v247 = v246;
  v44(v244, v157);
  *(v199 + 208) = v245;
  *(v199 + 216) = v247;
  *(v199 + 224) = 0xD000000000000022;
  *(v199 + 232) = 0x8000000249BF45A0;
  *(v199 + 240) = 0xD000000000000015;
  *(v199 + 248) = 0x8000000249BF45D0;
  *(v199 + 256) = 0xD000000000000017;
  *(v199 + 264) = 0x8000000249BF45F0;
  v335 = 0xD000000000000016;
  *(v199 + 272) = 0xD000000000000016;
  *(v199 + 280) = 0x8000000249BF4610;
  *(v199 + 288) = 0xD00000000000001CLL;
  *(v199 + 296) = 0x8000000249BF4630;
  *(v199 + 304) = 0xD000000000000017;
  *(v199 + 312) = 0x8000000249BF4650;
  *(v227 + 144) = v199;
  *(v227 + 152) = v318;
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  *(isUniquelyReferenced_nonNull_native + 16) = xmmword_249BB7D70;
  v249 = v331;
  static UTType.plainText.getter();
  v250 = UTType.identifier.getter();
  v252 = v251;
  v253 = v249;
  v44(v249, v157);
  *(isUniquelyReferenced_nonNull_native + 32) = v250;
  *(isUniquelyReferenced_nonNull_native + 40) = v252;
  v254 = v339;
  static UTType.rtf.getter();
  v255 = UTType.identifier.getter();
  v257 = v256;
  v44(v254, v157);
  *(isUniquelyReferenced_nonNull_native + 48) = v255;
  *(isUniquelyReferenced_nonNull_native + 56) = v257;
  if (one-time initialization token for docMSOfficeWordProcessing != -1)
  {
    goto LABEL_47;
  }

LABEL_2:
  __swift_project_value_buffer(v157, static UTType.docMSOfficeWordProcessing);
  *(isUniquelyReferenced_nonNull_native + 64) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 72) = v258;
  if (one-time initialization token for docMSOfficeWordProcessingTemplate != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v157, static UTType.docMSOfficeWordProcessingTemplate);
  *(isUniquelyReferenced_nonNull_native + 80) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 88) = v259;
  if (one-time initialization token for docMSOfficeXMLWordProcessing != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v157, static UTType.docMSOfficeXMLWordProcessing);
  *(isUniquelyReferenced_nonNull_native + 96) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 104) = v260;
  if (one-time initialization token for docOfficeOpenXMLWordProcessing != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v157, static UTType.docOfficeOpenXMLWordProcessing);
  *(isUniquelyReferenced_nonNull_native + 112) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 120) = v261;
  if (one-time initialization token for docOfficeOpenXMLMacroEnabledWordProcessing != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v157, static UTType.docOfficeOpenXMLMacroEnabledWordProcessing);
  *(isUniquelyReferenced_nonNull_native + 128) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 136) = v262;
  if (one-time initialization token for docOfficeOpenXMLWordProcessingTemplate != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v157, static UTType.docOfficeOpenXMLWordProcessingTemplate);
  *(isUniquelyReferenced_nonNull_native + 144) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 152) = v263;
  if (one-time initialization token for docOfficeOpenXMLMacroEnabledWordProcessingTemplate != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v157, static UTType.docOfficeOpenXMLMacroEnabledWordProcessingTemplate);
  *(isUniquelyReferenced_nonNull_native + 160) = UTType.identifier.getter();
  *(isUniquelyReferenced_nonNull_native + 168) = v264;
  *(isUniquelyReferenced_nonNull_native + 176) = 0xD00000000000001FLL;
  *(isUniquelyReferenced_nonNull_native + 184) = 0x8000000249BF4670;
  v334 = 0xD00000000000001BLL;
  *(isUniquelyReferenced_nonNull_native + 192) = 0xD00000000000001BLL;
  *(isUniquelyReferenced_nonNull_native + 200) = 0x8000000249BF4690;
  *(isUniquelyReferenced_nonNull_native + 208) = 0xD00000000000001ELL;
  *(isUniquelyReferenced_nonNull_native + 216) = 0x8000000249BF46B0;
  *(isUniquelyReferenced_nonNull_native + 224) = 0xD000000000000020;
  *(isUniquelyReferenced_nonNull_native + 232) = 0x8000000249BF46D0;
  *(v227 + 168) = isUniquelyReferenced_nonNull_native;
  *(v227 + 176) = v321;
  v265 = swift_allocObject();
  *(v265 + 16) = v340;
  static UTType.spreadsheet.getter();
  v266 = UTType.identifier.getter();
  v268 = v267;
  v156(v253, v157);
  *(v265 + 32) = v266;
  *(v265 + 40) = v268;
  *(v227 + 192) = v265;
  *(v227 + 200) = v320;
  v269 = swift_allocObject();
  *(v269 + 16) = v340;
  static UTType.presentation.getter();
  v270 = UTType.identifier.getter();
  v272 = v271;
  v156(v253, v157);
  *(v269 + 32) = v270;
  *(v269 + 40) = v272;
  *(v227 + 216) = v269;
  *(v227 + 224) = v319;
  v273 = swift_allocObject();
  *(v273 + 16) = v340;
  static UTType.folder.getter();
  v274 = UTType.identifier.getter();
  v276 = v275;
  v156(v253, v157);
  *(v273 + 32) = v274;
  *(v273 + 40) = v276;
  *(v227 + 240) = v273;
  *(v227 + 248) = xmmword_249BAFCA0;
  v277 = swift_allocObject();
  *(v277 + 16) = xmmword_249BB28B0;
  static UTType.zip.getter();
  v278 = UTType.identifier.getter();
  v280 = v279;
  v156(v253, v157);
  *(v277 + 32) = v278;
  *(v277 + 40) = v280;
  v253 = v339;
  static UTType.gzip.getter();
  v281 = UTType.identifier.getter();
  v283 = v282;
  v156(v253, v157);
  *(v277 + 48) = v281;
  *(v277 + 56) = v283;
  *(v277 + 64) = 0xD000000000000012;
  *(v277 + 72) = 0x8000000249BF4700;
  *(v277 + 80) = 0xD000000000000017;
  *(v277 + 88) = 0x8000000249BF4720;
  *(v277 + 96) = 0xD000000000000012;
  *(v277 + 104) = 0x8000000249BF4740;
  *(v277 + 112) = 0xD000000000000017;
  *(v277 + 120) = 0x8000000249BF4760;
  *(v277 + 128) = v334;
  *(v277 + 136) = 0x8000000249BF4780;
  *(v277 + 144) = v335;
  *(v277 + 152) = 0x8000000249BF47A0;
  *(v227 + 264) = v277;
  v284 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SaySSGTt0g5Tf4g_n(v227);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SaySSGtMd);
  swift_arrayDestroy();
  if (one-time initialization token for typeIdentifierToCategoryCache != -1)
  {
    swift_once();
  }

  v156 = &static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
  swift_beginAccess();
  if (!*(static DOCFileTypeGrouping.typeIdentifierToCategoryCache + 2))
  {
    v285 = *(v284 + 64);
    v331 = (v284 + 64);
    v286 = 1 << *(v284 + 32);
    v287 = -1;
    if (v286 < 64)
    {
      v287 = ~(-1 << v286);
    }

    v288 = v287 & v285;
    isUniquelyReferenced_nonNull_native = (v286 + 63) >> 6;

    v289 = 0;
    v332 = v284;
    v333 = isUniquelyReferenced_nonNull_native;
    do
    {
LABEL_21:
      if (!v288)
      {
        while (1)
        {
          v290 = v289 + 1;
          if (__OFADD__(v289, 1))
          {
            goto LABEL_46;
          }

          if (v290 >= isUniquelyReferenced_nonNull_native)
          {
            break;
          }

          v288 = v331[v290];
          ++v289;
          if (v288)
          {
            v289 = v290;
            goto LABEL_26;
          }
        }

        return v336;
      }

LABEL_26:
      v291 = __clz(__rbit64(v288));
      v288 &= v288 - 1;
      v292 = v291 | (v289 << 6);
      v157 = *(*(v284 + 56) + 8 * v292);
      v338 = *(v157 + 16);
    }

    while (!v338);
    v334 = v289;
    v335 = v288;
    v337 = *(*(v284 + 48) + 16 * v292);
    v339 = *(&v337 + 1);
    *&v340 = v337;
    outlined copy of DOCItemFileTypeGroupCategory(v337, *(&v337 + 1));

    v293 = 0;
    v253 = (v157 + 40);
    while (1)
    {
      if (v293 >= *(v157 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        swift_once();
        goto LABEL_2;
      }

      v299 = *(v253 - 1);
      v227 = *v253;
      swift_beginAccess();
      outlined copy of DOCItemFileTypeGroupCategory(v340, v339);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v341 = *v156;
      v300 = v341;
      v301 = v156;
      *v156 = 0x8000000000000000;
      v302 = specialized __RawDictionaryStorage.find<A>(_:)(v299, v227);
      v304 = *(v300 + 16);
      v305 = (v303 & 1) == 0;
      v306 = __OFADD__(v304, v305);
      v307 = v304 + v305;
      if (v306)
      {
        goto LABEL_44;
      }

      v156 = v303;
      if (*(v300 + 24) < v307)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = v302;
      specialized _NativeDictionary.copy()();
      v302 = isUniquelyReferenced_nonNull_native;
      if (v156)
      {
LABEL_28:
        isUniquelyReferenced_nonNull_native = v302;

        v294 = v341;
        v295 = (*(v341 + 56) + 16 * isUniquelyReferenced_nonNull_native);
        v296 = *v295;
        v297 = v295[1];
        v298 = v339;
        *v295 = v340;
        v295[1] = v298;
        outlined consume of DOCItemFileTypeGroupCategory(v296, v297);
        goto LABEL_29;
      }

LABEL_37:
      v294 = v341;
      *(v341 + 8 * (v302 >> 6) + 64) |= 1 << v302;
      v309 = (*(v294 + 48) + 16 * v302);
      *v309 = v299;
      v309[1] = v227;
      *(*(v294 + 56) + 16 * v302) = v337;
      v310 = *(v294 + 16);
      v306 = __OFADD__(v310, 1);
      v311 = v310 + 1;
      if (v306)
      {
        goto LABEL_45;
      }

      *(v294 + 16) = v311;
LABEL_29:
      ++v293;
      static DOCFileTypeGrouping.typeIdentifierToCategoryCache = v294;
      swift_endAccess();
      v253 += 2;
      v156 = v301;
      if (v338 == v293)
      {

        outlined consume of DOCItemFileTypeGroupCategory(v340, v339);
        v284 = v332;
        isUniquelyReferenced_nonNull_native = v333;
        v289 = v334;
        v288 = v335;
        goto LABEL_21;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v307, isUniquelyReferenced_nonNull_native);
    v302 = specialized __RawDictionaryStorage.find<A>(_:)(v299, v227);
    if ((v156 & 1) != (v308 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_36:
    if (v156)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

  return v336;
}

uint64_t specialized lookUpCategory #1 (for:) in DOCFileTypeGrouping.category(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v91 = &v81 - v7;
  v8 = type metadata accessor for UTType();
  v86 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v83 = &v81 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = (a2 + 32);
    v89 = &v81 - v16;
    v90 = (v86 + 48);
    v87 = (v86 + 32);
    v88 = (v86 + 8);
    while (1)
    {
      v19 = *v18;

      v20 = _HashTable.startBucket.getter();
      if (v20 == 1 << *(v19 + 32))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v21 = v8;
      v22 = specialized Dictionary.subscript.getter(v93, v20, *(v19 + 36), 0, v19);
      outlined consume of DOCItemFileTypeGroupCategory(v22, v23);
      v8 = *(&v93[0] + 1);
      v24 = _HashTable.startBucket.getter();
      if (v24 == 1 << *(v19 + 32))
      {
        goto LABEL_30;
      }

      v25 = specialized Dictionary.subscript.getter(v93, v24, *(v19 + 36), 0, v19);
      v27 = v26;

      v28 = v91;
      UTType.init(_:)();
      v8 = v21;
      if ((*v90)(v28, 1, v21) == 1)
      {
        outlined consume of DOCItemFileTypeGroupCategory(v25, v27);
        outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
        return 0;
      }

      v29 = v89;
      (*v87)(v89, v28, v21);
      if (UTType.conforms(to:)())
      {
        break;
      }

      (*v88)(v29, v21);
      outlined consume of DOCItemFileTypeGroupCategory(v25, v27);
      ++v18;
      if (!--v17)
      {
        goto LABEL_8;
      }
    }

    v32 = v25;
    if (one-time initialization token for typeIdentifierToCategoryCache != -1)
    {
      swift_once();
    }

    v56 = a1;
    v57 = UTType.identifier.getter();
    v59 = v58;
    swift_beginAccess();
    v60 = v25;
    v61 = v27;
    outlined copy of DOCItemFileTypeGroupCategory(v60, v27);
    outlined copy of DOCItemFileTypeGroupCategory(v32, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
    static DOCFileTypeGrouping.typeIdentifierToCategoryCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v27, v57, v59, isUniquelyReferenced_nonNull_native);

    static DOCFileTypeGrouping.typeIdentifierToCategoryCache = v92;
    swift_endAccess();
    v63 = v86;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.UI);
    v65 = v83;
    (*(v63 + 16))(v83, v56, v21);
    outlined copy of DOCItemFileTypeGroupCategory(v32, v27);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    outlined consume of DOCItemFileTypeGroupCategory(v32, v61);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v92 = v69;
      *v68 = 136315394;
      v70 = UTType.identifier.getter();
      v82 = v21;
      v71 = v65;
      v73 = v72;
      v74 = *v88;
      (*v88)(v71, v21);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, &v92);

      *(v68 + 4) = v75;
      *(v68 + 12) = 2080;
      *&v93[0] = v32;
      *(&v93[0] + 1) = v61;
      v76 = String.init<A>(describing:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v92);

      *(v68 + 14) = v78;
      _os_log_impl(&dword_2493AC000, v66, v67, "Dynamically mapped %s to DOCItemFileTypeGroupCategory %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v69, -1, -1);
      MEMORY[0x24C1FE850](v68, -1, -1);

      v74(v89, v82);
    }

    else
    {
      outlined consume of DOCItemFileTypeGroupCategory(v32, v61);

      v80 = *v88;
      (*v88)(v65, v21);
      v80(v89, v21);
    }
  }

  else
  {
LABEL_8:
    if (specialized Sequence<>.contains(_:)(a1, v85) && (v30 = UTType.localizedDescription.getter(), v31))
    {
      v32 = v30;
      v33 = v31;
      if (one-time initialization token for typeIdentifierToCategoryCache != -1)
      {
        swift_once();
      }

      v34 = UTType.identifier.getter();
      v36 = v35;
      swift_beginAccess();

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v92 = static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
      static DOCFileTypeGrouping.typeIdentifierToCategoryCache = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v33, v34, v36, v37);

      static DOCFileTypeGrouping.typeIdentifierToCategoryCache = v92;
      swift_endAccess();
    }

    else
    {
      if (one-time initialization token for typeIdentifierToCategoryCache != -1)
      {
LABEL_31:
        swift_once();
      }

      v38 = UTType.identifier.getter();
      v40 = v39;
      swift_beginAccess();
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v92 = static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
      static DOCFileTypeGrouping.typeIdentifierToCategoryCache = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 10, v38, v40, v41);

      static DOCFileTypeGrouping.typeIdentifierToCategoryCache = v92;
      swift_endAccess();
      v42 = v86;
      v43 = v84;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.UI);
      (*(v42 + 16))(v43, a1, v8);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v92 = v48;
        *v47 = 136315394;
        v49 = UTType.identifier.getter();
        v51 = v50;
        (*(v42 + 8))(v43, v8);
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v92);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2080;
        v93[0] = xmmword_249BAA8C0;
        v53 = String.init<A>(describing:)();
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v92);

        *(v47 + 14) = v55;
        _os_log_impl(&dword_2493AC000, v45, v46, "Could not map %s to a DOCItemFileTypeGroupCategory. Caching result category: %s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v48, -1, -1);
        MEMORY[0x24C1FE850](v47, -1, -1);
      }

      else
      {

        (*(v42 + 8))(v43, v8);
      }

      return 0;
    }
  }

  return v32;
}

uint64_t specialized DOCFileTypeGrouping.category(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for UTType();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for typeIdentifierToCategoryCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
  if (*(static DOCFileTypeGrouping.typeIdentifierToCategoryCache + 2))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v19)
    {
      v20 = (v17[7] + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      swift_endAccess();
      outlined copy of DOCItemFileTypeGroupCategory(v21, v22);
      return v21;
    }
  }

  swift_endAccess();
  v24._countAndFlagsBits = 778991972;
  v24._object = 0xE400000000000000;
  if (String.hasPrefix(_:)(v24))
  {
    return 0;
  }

  UTType.init(_:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v11, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    return 0;
  }

  (*(v13 + 32))(v16, v11, v12);
  v25 = specialized lookUpCategory #1 (for:) in DOCFileTypeGrouping.category(for:)(v16, a3, a4);
  v27 = v26;
  (*(v13 + 8))(v16, v12);
  if (v27 == 11)
  {
    return 0;
  }

  else
  {
    return v25;
  }
}

char *specialized DOCFileTypeGrouping.preferredCategoryGroupingOrder()(uint64_t a1, char *a2, uint64_t a3)
{
  v99 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v103 = &v95 - v7;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v98 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v95 - v14;
  v16 = *(a3 + 16);
  if (!v16)
  {

    return a2;
  }

  v101 = 0;
  v109 = MEMORY[0x277D84F90];
  v100 = a2;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v17 = v109;
  v19 = *(v9 + 16);
  v18 = v9 + 16;
  v106 = v19;
  v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
  v97 = a3;
  v21 = a3 + v20;
  v105 = (v18 - 8);
  v102 = (v18 + 32);
  v96 = (v18 + 16);
  v104 = *(v18 + 56);
  *&v107 = v18;
  do
  {
    (v106)(v15, v21, v8);
    v22 = UTType.identifier.getter();
    v24 = v23;
    if (one-time initialization token for typeIdentifierToCategoryCache != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25 = static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
    if (*(static DOCFileTypeGrouping.typeIdentifierToCategoryCache + 2))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
      if (v27)
      {
        v28 = (v25[7] + 16 * v26);
        v30 = *v28;
        v29 = v28[1];
        swift_endAccess();
        outlined copy of DOCItemFileTypeGroupCategory(v30, v29);

        (*v105)(v15, v8);
        goto LABEL_19;
      }
    }

    swift_endAccess();
    v31._countAndFlagsBits = 778991972;
    v31._object = 0xE400000000000000;
    if (String.hasPrefix(_:)(v31))
    {

      (*v105)(v15, v8);
LABEL_12:
      v30 = 0;
      v29 = 10;
      goto LABEL_19;
    }

    v32 = v103;
    UTType.init(_:)();
    if ((*v102)(v32, 1, v8) == 1)
    {
      (*v105)(v15, v8);
      outlined destroy of CharacterSet?(v32, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
      goto LABEL_12;
    }

    v33 = v98;
    (*v96)(v98, v32, v8);
    v34 = specialized lookUpCategory #1 (for:) in DOCFileTypeGrouping.category(for:)(v33, v99, v97);
    v36 = v35;
    v37 = *v105;
    (*v105)(v33, v8);
    v37(v15, v8);
    if (v36 == 11)
    {
      v30 = 0;
    }

    else
    {
      v30 = v34;
    }

    if (v36 == 11)
    {
      v29 = 10;
    }

    else
    {
      v29 = v36;
    }

LABEL_19:
    v109 = v17;
    v39 = *(v17 + 16);
    v38 = *(v17 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v17 = v109;
    }

    *(v17 + 16) = v39 + 1;
    v40 = v17 + 16 * v39;
    *(v40 + 32) = v30;
    *(v40 + 40) = v29;
    v21 += v104;
    --v16;
  }

  while (v16);
  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SayAFGTt0g5Tf4g_n(v17);

  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](11);
  v42 = Hasher._finalize()();
  v43 = *(v41 + 32);
  v44 = v43 & 0x3F;
  v45 = -1;
  v46 = -1 << v43;
  v47 = v42 & ~v46;
  if ((*(v41 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
  {
    v48 = ~v46;
    while (*(*(v41 + 48) + 16 * v47 + 8) != 10)
    {
      v47 = (v47 + 1) & v48;
      if (((*(v41 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v108 = v41;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_134:
      specialized _NativeSet.copy()();
      v41 = v108;
    }

    v50 = (*(v41 + 48) + 16 * v47);
    v51 = *v50;
    v52 = v50[1];
    specialized _NativeSet._delete(at:)(v47);
    outlined consume of DOCItemFileTypeGroupCategory(v51, v52);
    v41 = v108;
    v44 = *(v108 + 32) & 0x3F;
  }

LABEL_30:
  v53 = v41 + 56;
  v54 = 1 << v44;
  if (v54 < 64)
  {
    v55 = ~(v45 << v54);
  }

  else
  {
    v55 = v45;
  }

  v56 = v55 & *(v41 + 56);
  v45 = (v54 + 63) >> 6;

  v59 = 0;
  while (v56)
  {
    v60 = v59;
LABEL_39:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v108 = *(*(v41 + 48) + ((v60 << 10) | (16 * v61)));
    *&v62 = MEMORY[0x28223BE20](v57, v58);
    *(&v95 - 2) = &v108;
    v63 = v62;
    v47 = v64;
    outlined copy of DOCItemFileTypeGroupCategory(v62, v64);
    v65 = v101;
    v66 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v95 - 4), v100);
    v101 = v65;
    if (v66)
    {
      v57 = outlined consume of DOCItemFileTypeGroupCategory(v63, v47);
      v59 = v60;
    }

    else
    {
      v57 = swift_isUniquelyReferenced_nonNull_native();
      if ((v57 & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
        v100 = v57;
      }

      v68 = *(v100 + 2);
      v67 = *(v100 + 3);
      if (v68 >= v67 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v100);
        v100 = v57;
      }

      v69 = v100;
      *(v100 + 2) = v68 + 1;
      v70 = &v69[16 * v68];
      *(v70 + 4) = v63;
      *(v70 + 5) = v47;
      v59 = v60;
    }
  }

  while (1)
  {
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v60 >= v45)
    {
      break;
    }

    v56 = *(v53 + 8 * v60);
    ++v59;
    if (v56)
    {
      goto LABEL_39;
    }
  }

  v71 = *(v100 + 2);
  if (v71)
  {
    v72 = 0;
    v106 = v100 + 32;
    v73 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    while (1)
    {
      v75 = *&v106[16 * v72];
      v76 = *(v41 + 16);
      v77 = *&v106[16 * v72 + 8];
      v107 = v75;
      if (!v76)
      {
        outlined copy of DOCItemFileTypeGroupCategory(v75, v77);
        goto LABEL_123;
      }

      Hasher.init(_seed:)();
      if (v77 <= 4)
      {
        if (v77 > 1)
        {
          if (v77 == 2)
          {
            v78 = 2;
          }

          else if (v77 == 3)
          {
            v78 = 3;
          }

          else
          {
            v78 = 4;
          }

          goto LABEL_75;
        }

        if (!v77)
        {
          v78 = 0;
          goto LABEL_75;
        }

        if (v77 == 1)
        {
          v78 = 1;
          goto LABEL_75;
        }
      }

      else
      {
        if (v77 <= 7)
        {
          if (v77 == 5)
          {
            v78 = 5;
          }

          else if (v77 == 6)
          {
            v78 = 6;
          }

          else
          {
            v78 = 7;
          }

          goto LABEL_75;
        }

        switch(v77)
        {
          case 8:
            v78 = 8;
            goto LABEL_75;
          case 9:
            v78 = 9;
            goto LABEL_75;
          case 10:
            v78 = 11;
LABEL_75:
            MEMORY[0x24C1FCBD0](v78);
            goto LABEL_76;
        }
      }

      MEMORY[0x24C1FCBD0](10);

      String.hash(into:)();
LABEL_76:
      v79 = Hasher._finalize()();
      v80 = -1 << *(v41 + 32);
      v81 = v79 & ~v80;
      if ((*(v53 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
      {
        v82 = ~v80;
        v83 = *(v41 + 48);
        v84 = v107;
        do
        {
          v85 = (v83 + 16 * v81);
          v86 = v85[1];
          if (v86 <= 4)
          {
            if (v86 > 1)
            {
              if (v86 == 2)
              {
                if (v77 == 2)
                {
                  goto LABEL_118;
                }
              }

              else if (v86 == 3)
              {
                if (v77 == 3)
                {
                  goto LABEL_118;
                }
              }

              else if (v77 == 4)
              {
                goto LABEL_118;
              }

              goto LABEL_79;
            }

            if (!v86)
            {
              if (!v77)
              {
                goto LABEL_118;
              }

              goto LABEL_79;
            }

            if (v86 == 1)
            {
              if (v77 == 1)
              {
                goto LABEL_118;
              }

              goto LABEL_79;
            }
          }

          else
          {
            if (v86 <= 7)
            {
              if (v86 == 5)
              {
                if (v77 == 5)
                {
                  goto LABEL_118;
                }
              }

              else if (v86 == 6)
              {
                if (v77 == 6)
                {
                  goto LABEL_118;
                }
              }

              else if (v77 == 7)
              {
                goto LABEL_118;
              }

              goto LABEL_79;
            }

            switch(v86)
            {
              case 8:
                if (v77 == 8)
                {
                  goto LABEL_118;
                }

                goto LABEL_79;
              case 9:
                if (v77 == 9)
                {
                  goto LABEL_118;
                }

                goto LABEL_79;
              case 10:
                if (v77 == 10)
                {
                  goto LABEL_118;
                }

                goto LABEL_79;
            }
          }

          if (v77 >= 0xB)
          {
            v87 = *v85 == v84 && v86 == v77;
            if (v87 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
LABEL_118:
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v74 = v105;
              }

              else
              {
                v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 2) + 1, 1, v105);
              }

              v89 = *(v74 + 2);
              v88 = *(v74 + 3);
              v90 = v89 + 1;
              v91 = v107;
              if (v89 >= v88 >> 1)
              {
                v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v74);
                v91 = v107;
              }

              v105 = v74;
              goto LABEL_49;
            }
          }

LABEL_79:
          v81 = (v81 + 1) & v82;
        }

        while (((*(v53 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) != 0);
      }

LABEL_123:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
      }

      v89 = *(v73 + 2);
      v92 = *(v73 + 3);
      v90 = v89 + 1;
      v91 = v107;
      if (v89 < v92 >> 1)
      {
        v74 = v73;
      }

      else
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v89 + 1, 1, v73);
        v91 = v107;
        v73 = v74;
      }

LABEL_49:
      ++v72;
      *(v74 + 2) = v90;
      *&v74[16 * v89 + 32] = v91;
      if (v72 == v71)
      {

        v93 = v105;
        goto LABEL_131;
      }
    }
  }

  v73 = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
LABEL_131:
  *&v108 = v93;
  specialized Array.append<A>(contentsOf:)(v73);
  return v108;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DOCItemFileTypeGroupCategory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 16))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCItemFileTypeGroupCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCFileTypeGrouping(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DOCFileTypeGrouping(uint64_t result, int a2, int a3)
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

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, a1[1], **(v1 + 16), *(*(v1 + 16) + 8)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

id key path getter for DOCDragMonitor.isItemCollectionDragActive : DOCDragMonitor@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isItemCollectionDragActive];
  *a2 = result;
  return result;
}

id UIViewController.dimmingOverlayHostView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void UIViewController.dimmingOverlayStateDidChange(_:state:)(void *a1)
{
  v2 = [objc_opt_self() _dimmingViewColor];
  [a1 setBackgroundColor_];
}

void *DOCContentDimmingOverlay.dropInteraction.getter()
{
  v1 = OBJC_IVAR___DOCContentDimmingOverlay_dropInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCContentDimmingOverlay.dropInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_dropInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCContentDimmingOverlay.dragMonitorKVO.getter()
{
  v1 = OBJC_IVAR___DOCContentDimmingOverlay_dragMonitorKVO;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCContentDimmingOverlay.dragMonitorKVO.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_dragMonitorKVO;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCContentDimmingOverlay.autohideWhenPossibleDropTarget.getter()
{
  v1 = OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCContentDimmingOverlay.autohideWhenPossibleDropTarget.setter(char a1)
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v4);
  return (*((*v5 & *v1) + 0x118))(v6);
}

uint64_t (*DOCContentDimmingOverlay.autohideWhenPossibleDropTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCContentDimmingOverlay.autohideWhenPossibleDropTarget.modify;
}

uint64_t DOCContentDimmingOverlay.autohideWhenPossibleDropTarget.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v5) + 0x110))(result);
    return (*((*v6 & *v5) + 0x118))(v7);
  }

  return result;
}

uint64_t DOCContentDimmingOverlay.active.getter()
{
  v1 = OBJC_IVAR___DOCContentDimmingOverlay_active;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCContentDimmingOverlay.active.setter(char a1)
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_active;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x277D85000] & *v1) + 0x118))(v4);
}

uint64_t (*DOCContentDimmingOverlay.active.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCContentDimmingOverlay.active.modify;
}

uint64_t DOCContentDimmingOverlay.active.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x118))(result);
  }

  return result;
}

uint64_t DOCContentDimmingOverlay.dimmable.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCContentDimmingOverlay.dimmable.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCContentDimmingOverlay_dimmable;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

id DOCContentDimmingOverlay.__allocating_init(forCovering:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DOCContentDimmingOverlay_dropInteraction] = 0;
  *&v3[OBJC_IVAR___DOCContentDimmingOverlay_dragMonitorKVO] = 0;
  v3[OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget] = 0;
  v3[OBJC_IVAR___DOCContentDimmingOverlay_active] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___DOCContentDimmingOverlay_state] = 0;
  v3[OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide] = 0;
  v4 = [a1 dimmable];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = [v4 dimmingOverlayHostView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.receiver = v3;
  v17.super_class = v1;
  v16.receiver = objc_msgSendSuper2(&v17, sel_initWithFrame_, v7, v9, v11, v13);
  v16.super_class = v1;
  v14 = v16.receiver;
  objc_msgSendSuper2(&v16, sel_setHidden_, 1);
  [v14 setAutoresizingMask_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v14;
}

id DOCContentDimmingOverlay.init(forCovering:)(void *a1)
{
  v1 = specialized DOCContentDimmingOverlay.init(forCovering:)(a1);
  swift_unknownObjectRelease();
  return v1;
}

id DOCContentDimmingOverlay.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

unint64_t DOCContentDimmingOverlay.DOCDimmingState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCContentDimmingOverlay.DOCDimmingState@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Void __swiftcall DOCContentDimmingOverlay.updateDropInteraction()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  v4 = *((*v2 & *v0) + 0x88);
  v5 = v4();
  if (v5)
  {

    if (v3)
    {
      return;
    }

    goto LABEL_8;
  }

  if ((v3 & 1) == 0)
  {
LABEL_8:
    v12 = v4();
    if (v12)
    {
      v15 = v12;
      (*((*v2 & *v0) + 0x90))(0);
      v13 = (*((*v2 & *v0) + 0xA0))([v0 removeInteraction_]);
      if (v13)
      {
        v14 = v13;
        dispatch thunk of NSKeyValueObservation.invalidate()();
      }

      (*((*v2 & *v1) + 0xA8))(0);
    }

    return;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D754A0]) initWithDelegate_];
  v7 = *((*v2 & *v1) + 0x90);
  v8 = v6;
  v7(v6);
  [v1 addInteraction_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static DOCDragMonitor.shared;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v9;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  (*((*v2 & *v1) + 0xA8))(v11);
}

void closure #1 in DOCContentDimmingOverlay.updateDropInteraction()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x118))();
  }
}

Swift::Void __swiftcall DOCContentDimmingOverlay.updateState()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xD0))())
  {
    if (*(v0 + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide))
    {
      goto LABEL_6;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ([static DOCDragMonitor.shared isItemCollectionDragActive])
    {
LABEL_6:
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    (*((*v1 & *v0) + 0x128))(v2);
  }

  else
  {
    v3 = *((*v1 & *v0) + 0x128);

    v3(0);
  }
}

uint64_t DOCContentDimmingOverlay.state.didset(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_state;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if ((a1 == 1) == (v5 != 1))
  {
    v28.receiver = v1;
    v28.super_class = type metadata accessor for DOCContentDimmingOverlay();
    v6 = objc_msgSendSuper2(&v28, sel_isHidden);
    if (v5 != 1 || v6 == 0)
    {
      v11 = 0;
    }

    else
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v10 = swift_allocObject();
      v11 = partial apply for closure #1 in DOCContentDimmingOverlay.state.didset;
      *(v10 + 16) = partial apply for closure #1 in DOCContentDimmingOverlay.state.didset;
      *(v10 + 24) = v9;
      v26 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v27 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed () -> ();
      v25 = &block_descriptor_40_3;
      v12 = _Block_copy(&aBlock);
      v13 = v1;

      [v8 performWithoutAnimation_];
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }
    }

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v26 = partial apply for closure #2 in DOCContentDimmingOverlay.state.didset;
    v27 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v25 = &block_descriptor_129;
    v17 = _Block_copy(&aBlock);
    v18 = v1;

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v5 != 1;
    v26 = partial apply for closure #3 in DOCContentDimmingOverlay.state.didset;
    v27 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v25 = &block_descriptor_31_2;
    v20 = _Block_copy(&aBlock);
    v21 = v18;

    [v15 animateWithDuration:v17 animations:v20 completion:0.15];
    _Block_release(v20);
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
  }

  return result;
}

void *closure #2 in DOCContentDimmingOverlay.state.didset(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x120);
  v4 = v3();
  v5 = 0.0;
  if (v4 == 1)
  {
    v5 = 1.0;
  }

  result = (*((*v2 & *a1) + 0xE8))([a1 setAlpha_]);
  if (result)
  {
    [result dimmingOverlayStateDidChange:a1 state:v3()];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCContentDimmingOverlay.state.getter()
{
  v1 = OBJC_IVAR___DOCContentDimmingOverlay_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCContentDimmingOverlay.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return DOCContentDimmingOverlay.state.didset(v4);
}

void (*DOCContentDimmingOverlay.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCContentDimmingOverlay_state;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCContentDimmingOverlay.state.modify;
}

void DOCContentDimmingOverlay.state.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  DOCContentDimmingOverlay.state.didset(v5);

  free(v1);
}

uint64_t DOCContentDimmingOverlay.dropInteraction(_:sessionDidEnter:)(int a1, id a2)
{
  v3 = [a2 localDragSession];
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  *(v2 + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide) = v3 != 0;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x118);

  return v4();
}

id DOCContentDimmingOverlay.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCContentDimmingOverlay.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCContentDimmingOverlay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized DOCContentDimmingOverlay.init(forCovering:)(void *a1)
{
  *&v1[OBJC_IVAR___DOCContentDimmingOverlay_dropInteraction] = 0;
  *&v1[OBJC_IVAR___DOCContentDimmingOverlay_dragMonitorKVO] = 0;
  v1[OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget] = 0;
  v1[OBJC_IVAR___DOCContentDimmingOverlay_active] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___DOCContentDimmingOverlay_state] = 0;
  v1[OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide] = 0;
  v3 = [a1 dimmable];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = [v3 dimmingOverlayHostView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = type metadata accessor for DOCContentDimmingOverlay();
  v17.receiver = v1;
  v17.super_class = v13;
  v16.receiver = objc_msgSendSuper2(&v17, sel_initWithFrame_, v6, v8, v10, v12);
  v16.super_class = v13;
  v14 = v16.receiver;
  objc_msgSendSuper2(&v16, sel_setHidden_, 1);
  [v14 setAutoresizingMask_];
  swift_unknownObjectRelease();

  return v14;
}

void specialized DOCContentDimmingOverlay.init(coder:)()
{
  *(v0 + OBJC_IVAR___DOCContentDimmingOverlay_dropInteraction) = 0;
  *(v0 + OBJC_IVAR___DOCContentDimmingOverlay_dragMonitorKVO) = 0;
  *(v0 + OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget) = 0;
  *(v0 + OBJC_IVAR___DOCContentDimmingOverlay_active) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCContentDimmingOverlay_state) = 0;
  *(v0 + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type DOCContentDimmingOverlay.DOCDimmingState and conformance DOCContentDimmingOverlay.DOCDimmingState()
{
  result = lazy protocol witness table cache variable for type DOCContentDimmingOverlay.DOCDimmingState and conformance DOCContentDimmingOverlay.DOCDimmingState;
  if (!lazy protocol witness table cache variable for type DOCContentDimmingOverlay.DOCDimmingState and conformance DOCContentDimmingOverlay.DOCDimmingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCContentDimmingOverlay.DOCDimmingState and conformance DOCContentDimmingOverlay.DOCDimmingState);
  }

  return result;
}

id partial apply for closure #3 in DOCContentDimmingOverlay.state.didset(id result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    v3.receiver = *(v1 + 16);
    v3.super_class = type metadata accessor for DOCContentDimmingOverlay();
    return objc_msgSendSuper2(&v3, sel_setHidden_, v2);
  }

  return result;
}

id partial apply for closure #1 in DOCContentDimmingOverlay.state.didset()
{
  v1 = *(v0 + 16);
  [v1 setAlpha_];
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCContentDimmingOverlay();
  return objc_msgSendSuper2(&v3, sel_setHidden_, 0);
}

uint64_t *DOCFileOperationCollectionSource.allFileOperationsProgressSource.unsafeMutableAddressor()
{
  if (one-time initialization token for allFileOperationsProgressSource != -1)
  {
    swift_once();
  }

  return &static DOCFileOperationCollectionSource.allFileOperationsProgressSource;
}

char *UIViewController.progressButtonItemForOverlay.getter()
{
  v1 = v0;
  result = [v0 viewIfLoaded];
  if (result)
  {
    v3 = result;
    v4 = [result window];

    if (v4)
    {
      v5 = [v1 traitCollection];
      v6 = [v5 horizontalSizeClass];

      v7 = [v1 presentingViewController];
      if (v7 && (v8 = v7, v9 = [v7 presentedViewController], v8, v9))
      {
        specialized static DOCSharedOverlayContent.sharedOverlayContent(attachedTo:viewControllerForPresentationFallback:)(v9);
        v10 = DOCSharedOverlayContent.progressButtonItem(for:)(v6);

        v4 = v9;
      }

      else
      {
        v11 = [v4 rootViewController];
        specialized static DOCSharedOverlayContent.sharedOverlayContent(attachedTo:viewControllerForPresentationFallback:)(v4);

        v10 = DOCSharedOverlayContent.progressButtonItem(for:)(v6);
      }

      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *DOCSharedOverlayContent.progressButtonItem(for:)(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = *(v1 + 32);
    swift_beginAccess();
    v3 = *(v2 + 24);
    if (!v3)
    {
      v4 = *(v1 + 16);
      v5 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0));

      v6 = specialized DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(65537, v4, v5);
      Strong = swift_unknownObjectWeakLoadStrong();
      (*((*MEMORY[0x277D85000] & *v6) + 0xA8))(Strong);
      *(v2 + 24) = v6;
      type metadata accessor for DOCBarButtonItemGroup();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_249BA0290;
      *(v8 + 32) = v6;
      v9 = v6;
      v10 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v11 = *(v2 + 16);
      *(v2 + 16) = v10;
LABEL_7:

      v3 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *(v1 + 32);
    swift_beginAccess();
    v3 = *(v12 + 40);
    if (!v3)
    {
      v13 = *(v1 + 16);
      v14 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0));

      v15 = specialized DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(65537, v13, v14);
      v16 = swift_unknownObjectWeakLoadStrong();
      (*((*MEMORY[0x277D85000] & *v15) + 0xA8))(v16);
      *(v12 + 40) = v15;
      type metadata accessor for DOCBarButtonItemGroup();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_249BA0290;
      *(v17 + 32) = v15;
      v9 = v15;
      v18 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v11 = *(v12 + 32);
      *(v12 + 32) = v18;
      goto LABEL_7;
    }
  }

  v9 = v3;
LABEL_8:
  swift_endAccess();
  v19 = v3;

  return v9;
}

double DOCSharedOverlayContent.BBIStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void DOCSharedOverlayContent.BBIStorage.__ivar_destroyer()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
}

uint64_t DOCSharedOverlayContent.BBIStorage.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[4];
  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for doc_sharedOverlayContentKey()
{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0, v1);
  result = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo11UIResponderC_Tt1g5(0xD000000000000018, 0x8000000249BF4B50, &v3);
  static DOCSharedOverlayContent.doc_sharedOverlayContentKey = v3;
  return result;
}

uint64_t DOCSharedOverlayContent.__deallocating_deinit()
{

  MEMORY[0x24C1FE970](v0 + 24);

  return swift_deallocClassInstance();
}

void one-time initialization function for allFileOperationsProgressSource()
{
  v0 = [objc_allocWithZone(type metadata accessor for DOCDSFileServiceConnection()) init];
  v1 = objc_allocWithZone(type metadata accessor for DOCFileOperationsManager());
  v2 = v0;
  v3 = specialized DOCFileOperationsManager.init(serviceImpl:)(v2, v1, type metadata accessor for DOCDSFileServiceConnection, &protocol witness table for DOCDSFileServiceConnection);

  type metadata accessor for DOCFileOperationCollectionSource();
  swift_allocObject();
  v4 = DOCFileOperationCollectionSource.init(manager:filteringPredicate:)(v3, protocol witness for static AppIntent.openAppWhenRun.getter in conformance NavigateHistoryIntent, 0);

  static DOCFileOperationCollectionSource.allFileOperationsProgressSource = v4;
}

uint64_t static DOCFileOperationCollectionSource.allFileOperationsProgressSource.getter()
{
  if (one-time initialization token for allFileOperationsProgressSource != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DOCFileOperationCollectionSource.allFileOperationsProgressSource.setter(uint64_t a1)
{
  if (one-time initialization token for allFileOperationsProgressSource != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileOperationCollectionSource.allFileOperationsProgressSource = a1;
}

uint64_t (*static DOCFileOperationCollectionSource.allFileOperationsProgressSource.modify())()
{
  if (one-time initialization token for allFileOperationsProgressSource != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id specialized DOCFileOperationsManager.init(serviceImpl:)(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v16[3] = a3(0);
  v16[4] = a4;
  v16[0] = a1;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_trackedItemsByID;
  v8 = MEMORY[0x277D84F90];
  *&a2[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables24DOCFileOperationProgressCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCWeakArrayCyAA017DOCFileOperationsB8Observer_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *&a2[v9] = v10;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProviderObservance;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_needsUpdate] = 1;
  a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_hasUpdateInProgress] = 0;
  outlined init with copy of DOCSidebarItemIconProvider(v16, &a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_impl]);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProvider] = static DOCSharedTestableProgressOperationProvider.shared;
  v15.receiver = a2;
  v15.super_class = type metadata accessor for DOCFileOperationsManager();

  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

char *specialized DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(int a1, uint64_t a2, _BYTE *a3)
{
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource] = 0;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView;
  type metadata accessor for DOCProgressCollectionIndicatorButtonItem.ProgressItemContainerView();
  *&a3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_inFlightVisibilityChange;
  v8 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource];
  *v9 = a2;
  v9[1] = &protocol witness table for DOCFilterableOperationProgressCollectionSource<A>;
  v10 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration];
  LOBYTE(v7) = a1 & 1;
  *v10 = a1 & 1;
  v10[1] = BYTE1(a1) & 1;
  v10[2] = BYTE2(a1) & 1;
  v11 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorView());

  v12 = specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(v7, a2, v11, 0.3);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView] = v12;
  if (_UISolariumEnabled())
  {
    v14 = *&a3[v13];
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 labelColor];
    (*((*MEMORY[0x277D85000] & *v16) + 0x120))(v17);
  }

  v42.receiver = a3;
  v42.super_class = type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
  v18 = objc_msgSendSuper2(&v42, sel_init);
  result = _DocumentManagerBundle();
  if (result)
  {
    v20 = result;
    swift__string._object = 0x8000000249BEF280;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._countAndFlagsBits = 0x73736572676F7250;
    v23._object = 0x8000000249BEF260;
    swift__string._countAndFlagsBits = 0xD000000000000040;
    v23._countAndFlagsBits = 0xD00000000000001CLL;
    v22._object = 0xE800000000000000;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v21, v20, v22, swift__string);

    v25 = MEMORY[0x24C1FAD20](v24._countAndFlagsBits, v24._object);

    [v18 setTitle_];

    type metadata accessor for UIMenu();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_249BA0290;
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_130;
    v29 = _Block_copy(aBlock);
    v30 = v18;

    v31 = [v27 elementWithUncachedProvider_];
    _Block_release(v29);
    *(preferredElementSize + 32) = v31;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v43.value.super.isa = 0;
    v43.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, v32, 0, v43, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v40);
    v35 = v34;
    [v30 setMenuRepresentation_];

    v36 = *&v30[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource + 8];
    ObjectType = swift_getObjectType();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v39 = *(v36 + 16);

    v39(v30, partial apply for closure #2 in DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:), v38, ObjectType, v36);
    swift_unknownObjectRelease();

    DOCProgressCollectionIndicatorButtonItem.setup()();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized static DOCSharedOverlayContent.sharedOverlayContent(attachedTo:viewControllerForPresentationFallback:)(id object)
{
  if (one-time initialization token for doc_sharedOverlayContentKey != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(object, static DOCSharedOverlayContent.doc_sharedOverlayContentKey))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    type metadata accessor for DOCSharedOverlayContent();
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    outlined destroy of Any?(v9);
  }

  type metadata accessor for DOCSharedOverlayContent();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSharedOverlayContent.BBIStorage();
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v2[4] = v3;
  if (one-time initialization token for allFileOperationsProgressSource != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2[2] = static DOCFileOperationCollectionSource.allFileOperationsProgressSource;
  swift_unknownObjectWeakAssign();
  v4 = static DOCSharedOverlayContent.doc_sharedOverlayContentKey;

  objc_setAssociatedObject(object, v4, v2, 0x301);
  return v2;
}

unint64_t type metadata accessor for UIMenu()
{
  result = lazy cache variable for type metadata for UIMenu;
  if (!lazy cache variable for type metadata for UIMenu)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIMenu);
  }

  return result;
}

void static DOCSizeGrouping.categorize(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && a1 >= 100)
  {
    v2 = log10(a1);
    v3 = __exp10(floor(v2));
    if (v3 == INFINITY)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        v4 = 10 * v3;
        if ((v3 * 10) >> 64 != v4 >> 63 || v4 >= v3)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

id DOCItemSizeGroupCategory.localizedTitle.getter(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v7 = v6;
  if (!a3)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v25 = result;
      v41._object = 0x8000000249BF4B70;
      v26._countAndFlagsBits = 0x4025207265646E55;
      v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v27.value._object = 0xEB00000000656C62;
      v41._countAndFlagsBits = 0xD00000000000003FLL;
      v26._object = 0xE800000000000000;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_249B9A480;
      v30 = [v7 stringFromByteCount_];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      v34 = static String.localizedStringWithFormat(_:_:)();

      return v34;
    }

    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v8 = [v6 stringFromByteCount_];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v7 stringFromByteCount_];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    result = _DocumentManagerBundle();
    if (result)
    {
      v17 = result;
      v40._object = 0x8000000249BF4BB0;
      v18._countAndFlagsBits = 0x204025206D6F7246;
      v18._object = 0xED00004025206F74;
      v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v19.value._object = 0xEB00000000656C62;
      v40._countAndFlagsBits = 0xD00000000000004DLL;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_249B9FA70;
      v22 = MEMORY[0x277D837D0];
      *(v21 + 56) = MEMORY[0x277D837D0];
      v23 = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v9;
      *(v21 + 40) = v11;
      *(v21 + 96) = v22;
      *(v21 + 104) = v23;
      *(v21 + 64) = v23;
      *(v21 + 72) = v13;
      *(v21 + 80) = v15;
      v24 = static String.localizedStringWithFormat(_:_:)();

      return v24;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v35 = result;
    v42._object = 0x8000000249BF0390;
    v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v36.value._object = 0xEB00000000656C62;
    v37._countAndFlagsBits = 2960685;
    v37._object = 0xE300000000000000;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD000000000000033;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v36, v35, v38, v42)._countAndFlagsBits;

    return countAndFlagsBits;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t DOCItemSizeGroupCategory.groupIdentifier.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v6 = 0x207265646E55;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 0x206D6F7246;
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v3);

    MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
LABEL_5:
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v4);

    return v6;
  }

  return 0x6E776F6E6B6E55;
}

BOOL static DOCItemSizeGroupCategory.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !(a5 | a4);
  }

  if (a6 != 1)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t DOCItemSizeGroupCategory.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x24C1FCBD0](0);
    v6 = a2;
    return MEMORY[0x24C1FCC00](v6);
  }

  if (a4 == 1)
  {
    MEMORY[0x24C1FCBD0](1);
    MEMORY[0x24C1FCC00](a2);
    v6 = a3;
    return MEMORY[0x24C1FCC00](v6);
  }

  return MEMORY[0x24C1FCBD0](2);
}

Swift::Int DOCItemSizeGroupCategory.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x24C1FCBD0](1);
      MEMORY[0x24C1FCC00](a1);
      MEMORY[0x24C1FCC00](a2);
    }

    else
    {
      MEMORY[0x24C1FCBD0](2);
    }
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    MEMORY[0x24C1FCC00](a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemSizeGroupCategory()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x24C1FCBD0](1);
      MEMORY[0x24C1FCC00](v1);
      MEMORY[0x24C1FCC00](v2);
    }

    else
    {
      MEMORY[0x24C1FCBD0](2);
    }
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    MEMORY[0x24C1FCC00](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCItemSizeGroupCategory()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x24C1FCBD0](0);
    v3 = v1;
    return MEMORY[0x24C1FCC00](v3);
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x24C1FCBD0](1);
    MEMORY[0x24C1FCC00](v1);
    v3 = v2;
    return MEMORY[0x24C1FCC00](v3);
  }

  return MEMORY[0x24C1FCBD0](2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemSizeGroupCategory()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x24C1FCBD0](1);
      MEMORY[0x24C1FCC00](v1);
      MEMORY[0x24C1FCC00](v2);
    }

    else
    {
      MEMORY[0x24C1FCBD0](2);
    }
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    MEMORY[0x24C1FCC00](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemSizeGroupCategory(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = v2 == v3;
  }

  v7 = v6;
  v9 = v2 == v3 && a1[1] == v4;
  if (v5 != 1)
  {
    v9 = 0;
  }

  v11 = v5 == 2 && (v4 | v3) == 0;
  if (*(a1 + 16) != 1)
  {
    v9 = v11;
  }

  if (*(a1 + 16))
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

unint64_t lazy protocol witness table accessor for type DOCItemSizeGroupCategory and conformance DOCItemSizeGroupCategory()
{
  result = lazy protocol witness table cache variable for type DOCItemSizeGroupCategory and conformance DOCItemSizeGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemSizeGroupCategory and conformance DOCItemSizeGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemSizeGroupCategory and conformance DOCItemSizeGroupCategory);
  }

  return result;
}

uint64_t getEnumTag for DOCItemSizeGroupCategory(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

double UIContentConfiguration.asVibrancyCapableConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t *Column.allCases.unsafeMutableAddressor()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  return &static Column.allCases;
}

Swift::String __swiftcall Column.localizedString()()
{
  v1 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Column(v0, v4, type metadata accessor for Column);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = 0xE600000000000000;
      v7 = 0x726564616568;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = 0xE400000000000000;
      v7 = 1936154996;
    }

    else
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = 0xEA00000000007765;
      v7 = 0x6956737574617473;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = 0xE600000000000000;
      v7 = 0x676E69727473;
    }

    else
    {

      outlined consume of LeadingBadge?(*(v4 + 1), *(v4 + 2), *(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6));
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
      v11 = v10[16];

      _s26DocumentManagerExecutables6ColumnOWOhTm_0(&v4[v11], type metadata accessor for LeadingTitle);
      v6 = 0xEB00000000776569;
      v7 = 0x56676E696461656CLL;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

    outlined consume of ColumnType(*&v4[*(v8 + 64)], *&v4[*(v8 + 64) + 8]);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v4, v9);
    v6 = 0xE400000000000000;
    v7 = 1702125924;
  }

  result._object = v6;
  result._countAndFlagsBits = v7;
  return result;
}

id Column.view()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Column(v2, v7, type metadata accessor for Column);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v7, type metadata accessor for Column);
      v9 = &_s26DocumentManagerExecutables16OutlineContainerCyAA6HeaderVGMd;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v7, type metadata accessor for Column);
      v9 = &_s26DocumentManagerExecutables16OutlineContainerCyAA7TagViewVGMd;
    }

    else
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v7, type metadata accessor for Column);
      v9 = &_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMd;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

      outlined consume of ColumnType(*&v7[*(v10 + 64)], *&v7[*(v10 + 64) + 8]);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA8DateViewVGMd);
      v12 = [objc_allocWithZone(v11) init];
      a1[3] = v11;
      a1[4] = &protocol witness table for OutlineContainer<A>;
      *a1 = v12;
      v13 = type metadata accessor for Date();
      return (*(*(v13 - 8) + 8))(v7, v13);
    }

    if (EnumCaseMultiPayload != 1)
    {

      outlined consume of LeadingBadge?(*(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), *(v7 + 5), *(v7 + 6));
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
      v16 = v15[16];

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA11LeadingViewVGMd);
      v18 = [objc_allocWithZone(v17) init];
      a1[3] = v17;
      a1[4] = &protocol witness table for OutlineContainer<A>;
      *a1 = v18;
      return _s26DocumentManagerExecutables6ColumnOWOhTm_0(&v7[v16], type metadata accessor for LeadingTitle);
    }

    _s26DocumentManagerExecutables6ColumnOWOhTm_0(v7, type metadata accessor for Column);
    v9 = &_s26DocumentManagerExecutables16OutlineContainerCyAA0D10ColumnViewVGMd;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  result = [objc_allocWithZone(v19) init];
  a1[3] = v19;
  a1[4] = &protocol witness table for OutlineContainer<A>;
  *a1 = result;
  return result;
}

Swift::Int SortDirection.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t LeadingTitle.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Column(v2, v16, type metadata accessor for LeadingTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v12, v16, v4);
    (*(v5 + 16))(v8, v12, v4);
    v17 = Text.init(_:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    result = (*(v5 + 8))(v12, v4);
  }

  else
  {
    v25 = v16[1];
    v29[0] = *v16;
    v29[1] = v25;
    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v17 = result;
    v19 = v26;
    v21 = v27;
    v23 = v28;
  }

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t one-time initialization function for allCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables6ColumnOGMd);
  v0 = *(type metadata accessor for Column(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BB2890;
  v4 = v3 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
  v6 = (v4 + v5[16]);
  v7 = v5[20];
  v8 = v5[24];
  v9 = v5[28];
  v10 = v5[32];
  v11 = v5[36];
  v21 = v5[40];
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 1;
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  type metadata accessor for LeadingTitle(0);
  swift_storeEnumTagMultiPayload();
  *(v4 + v7) = xmmword_249BA62B0;
  *(v4 + v8) = 0;
  *(v4 + v9) = 0;
  *(v4 + v10) = 0;
  type metadata accessor for OutlineExpansionState(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 20) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  ObservationRegistrar.init()();
  *(v4 + v11) = v12;
  type metadata accessor for OutlineProgressState(0);
  *(swift_allocObject() + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  type metadata accessor for OutlineProgressStateReference();
  v13 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  *(v4 + v21) = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v4 + v1);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v15 = v4 + 2 * v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  Date.init()();
  *(v15 + v17) = xmmword_249BA62B0;
  *(v15 + v18) = xmmword_249BA5030;
  swift_storeEnumTagMultiPayload();
  v19 = v4 + 3 * v1;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 15) = 0;
  swift_storeEnumTagMultiPayload();
  *(v4 + 4 * v1) = 0;
  swift_storeEnumTagMultiPayload();
  *(v4 + 5 * v1) = 0;
  result = swift_storeEnumTagMultiPayload();
  static Column.allCases = v3;
  return result;
}

uint64_t _s26DocumentManagerExecutables6ColumnOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Column.allCases.getter()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Column.allCases.setter(uint64_t a1)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Column.allCases = a1;
}

uint64_t (*static Column.allCases.modify())()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static Column.allCases : Column.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static Column.allCases;
}

uint64_t key path setter for static Column.allCases : Column.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for allCases;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Column.allCases = v1;
}

uint64_t Column.swiftuiViewType()()
{
  v1 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Column(v0, v4, type metadata accessor for Column);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = type metadata accessor for Header(0);
      v7 = type metadata accessor for Header;
      lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type Header and conformance Header, type metadata accessor for Header);
      v8 = &lazy protocol witness table cache variable for type Header and conformance Header;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = type metadata accessor for TagView(0);
      v7 = type metadata accessor for TagView;
      lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type TagView and conformance TagView, type metadata accessor for TagView);
      v8 = &lazy protocol witness table cache variable for type TagView and conformance TagView;
    }

    else
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = type metadata accessor for StatusView(0);
      v7 = type metadata accessor for StatusView;
      lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type StatusView and conformance StatusView, type metadata accessor for StatusView);
      v8 = &lazy protocol witness table cache variable for type StatusView and conformance StatusView;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v4, type metadata accessor for Column);
      v6 = type metadata accessor for OutlineColumnView(0);
      v7 = type metadata accessor for OutlineColumnView;
      lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type OutlineColumnView and conformance OutlineColumnView, type metadata accessor for OutlineColumnView);
      v8 = &lazy protocol witness table cache variable for type OutlineColumnView and conformance OutlineColumnView;
LABEL_12:
      lazy protocol witness table accessor for type StatusView and conformance StatusView(v8, v7);
      return v6;
    }

    outlined consume of LeadingBadge?(*(v4 + 1), *(v4 + 2), *(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
    v12 = v11[16];

    v6 = type metadata accessor for LeadingView(0);
    lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type LeadingView and conformance LeadingView, type metadata accessor for LeadingView);
    lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type LeadingView and conformance LeadingView, type metadata accessor for LeadingView);
    _s26DocumentManagerExecutables6ColumnOWOhTm_0(&v4[v12], type metadata accessor for LeadingTitle);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

    outlined consume of ColumnType(*&v4[*(v9 + 64)], *&v4[*(v9 + 64) + 8]);
    v6 = type metadata accessor for DateView(0);
    lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type DateView and conformance DateView, type metadata accessor for DateView);
    lazy protocol witness table accessor for type StatusView and conformance StatusView(&lazy protocol witness table cache variable for type DateView and conformance DateView, type metadata accessor for DateView);
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

  return v6;
}

id OutlineContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OutlineHostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized OutlineHostingView.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + class metadata base offset for OutlineHostingView) - 8) + 8))(a1);
  return v3;
}

id OutlineHostingView.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = specialized OutlineHostingView.init(rootView:)(a1, a2);
  (*(*(*(v4 + class metadata base offset for OutlineHostingView) - 8) + 8))(a1);
  return v5;
}

Swift::Void __swiftcall OutlineHostingView.invalidateIntrinsicContentSize()()
{
  v1 = MEMORY[0x277D85000];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OutlineHostingView();
  objc_msgSendSuper2(&v6, sel_invalidateIntrinsicContentSize);
  [*(v0 + *((*v1 & *v0) + class metadata base offset for OutlineHostingView + 24)) invalidateCache];
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for DOCItemCollectionCell();
    while (1)
    {
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        break;
      }

      v5 = [v3 superview];

      v3 = v5;
      if (!v5)
      {
        return;
      }
    }

    [v4 invalidateIntrinsicContentSize];
  }
}

void @objc OutlineHostingView.invalidateIntrinsicContentSize()(void *a1)
{
  v1 = a1;
  OutlineHostingView.invalidateIntrinsicContentSize()();
}

id OutlineHostingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id @objc OutlineHostingView.parentFocusEnvironment.getter(void *a1)
{
  v1 = a1;
  v3 = OutlineHostingView.parentFocusEnvironment.getter(v1, v2);

  return v3;
}

id OutlineHostingView.parentFocusEnvironment.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = *(v4 + class metadata base offset for OutlineHostingView);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v12 - v7;
  dispatch thunk of _UIHostingView.rootView.getter();
  v9 = (*(*(v4 + class metadata base offset for OutlineHostingView + 8) + 32))(v5, *(v4 + class metadata base offset for OutlineHostingView + 8));
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for OutlineHostingView();
  v12.receiver = v3;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_parentFocusEnvironment);
}

id OutlineHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutlineHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OutlineContainer.init()()
{
  *&v0[direct field offset for OutlineContainer.hostingView] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutlineContainer();
  return objc_msgSendSuper2(&v2, sel_init);
}

double OutlineContainer.effectiveFirstBaselineOffsetFromContentTop()(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  [v3 *a1];
  v5 = v4;

  return v5;
}

Swift::Void __swiftcall OutlineContainer.invalidateIntrinsicContentSize()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
  if (v2)
  {
    v3 = *v1 & *v2;
    v4 = v2;
    v5 = *(v2 + *(v3 + class metadata base offset for OutlineHostingView + 24));

    [v5 invalidateCache];
  }
}

void *OutlineContainer.hostingView.getter()
{
  v1 = direct field offset for OutlineContainer.hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void OutlineContainer.hostingView.setter(uint64_t a1)
{
  v3 = direct field offset for OutlineContainer.hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void OutlineContainer.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[direct field offset for OutlineContainer.hostingView] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void __swiftcall OutlineContainer.view()(UIView *__return_ptr retstr)
{
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0x90))())
  {
    __break(1u);
  }
}

uint64_t OutlineContainer.update(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *v1;
  v6 = *MEMORY[0x277D85000];
  v31[1] = *MEMORY[0x277D85000] & v5;
  v7 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v6 & v5) + 0x50);
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v31 - v18;
  v32 = a1;
  outlined init with copy of Column(a1, v10, type metadata accessor for Column);
  v20 = *((v6 & v5) + 0x58);
  v21 = (*(v20 + 16))(v10, v11, v20);
  v22 = *((*v4 & *v2) + 0x90);
  v23 = v22(v21);
  if (v23)
  {
  }

  else
  {
    type metadata accessor for OutlineHostingView();
    v25 = specialized OutlineHostingView.__allocating_init(rootView:)(v19);
    v24 = (*((*v4 & *v2) + 0x98))(v25);
  }

  result = v22(v24);
  if (result)
  {
    v27 = result;
    dispatch thunk of _UIHostingView.rootView.getter();

    (*(v20 + 24))(v11, v20);
    v28 = *(v33 + 8);
    v28(v15, v11);
    LOBYTE(v27) = specialized static Column.== infix(_:_:)(v10, v32);
    v29 = _s26DocumentManagerExecutables6ColumnOWOhTm_0(v10, type metadata accessor for Column);
    if (v27)
    {
      return (v28)(v19, v11);
    }

    result = v22(v29);
    if (result)
    {
      v30 = result;
      (*(v33 + 16))(v15, v19, v11);
      dispatch thunk of _UIHostingView.rootView.setter();

      (*((*MEMORY[0x277D85000] & *v2) + 0x88))();
      return (v28)(v19, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGSize __swiftcall OutlineContainer.idealSize(for:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0.0;
  v22 = 0.0;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v6 = v5();
  if (!v6)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = *(v6 + *((*v4 & *v6) + class metadata base offset for OutlineHostingView + 24));

  LODWORD(v7) = [v8 getSize:&v21 forTargetSize:1 isSizeDependentOnPerpendicularAxis:{width, height}];
  if (!v7)
  {
    v11 = v5();
    if (v11)
    {
      v14 = v11;
      [v11 _layoutSizeThatFits_fixedAxes_];
      v9 = v15;
      v10 = v16;

      v17 = v5();
      if (v17)
      {
        v18 = v17;
        v19 = *(v17 + *((*v4 & *v17) + class metadata base offset for OutlineHostingView + 24));

        [v19 insertSize:v9 forTargetSize:{v10, width, height}];
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  v9 = v21;
  v10 = v22;
LABEL_7:
  v12 = v9;
  v13 = v10;
LABEL_11:
  result.height = v13;
  result.width = v12;
  return result;
}

CGSize __swiftcall OutlineContainer.intrinsicContentSize()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = type metadata accessor for LeadingView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v9 = *(v1 + 144);
  v10 = v9(v8);
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  dispatch thunk of _UIHostingView.rootView.getter();

  if (swift_dynamicCast())
  {
    v14 = _s26DocumentManagerExecutables6ColumnOWOhTm_0(v5, type metadata accessor for LeadingView);
    v15 = (v9)(v14);
    if (!v15)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v16 = v15;
    [v15 setFrame_];

    v17 = (v9)();
    if (!v17)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v18 = v17;
    [v17 invalidateIntrinsicContentSize];

    v19 = (v9)();
    if (!v19)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v20 = v19;
    [v19 setNeedsLayout];

    v21 = (v9)();
    if (!v21)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v22 = v21;
    [v21 layoutIfNeeded];
  }

  v23 = (v9)();
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  [v23 intrinsicContentSize];
  v26 = v25;
  v28 = v27;

  v11 = v26;
  v12 = v28;
LABEL_16:
  result.height = v12;
  result.width = v11;
  return result;
}

id @objc OutlineContainer.description.getter(void *a1)
{
  v1 = a1;
  v3 = OutlineContainer.description.getter(v1, v2);
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

uint64_t OutlineContainer.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85000] & *v2;
  v4 = *(v3 + 0x50);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = v14 - v7;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  result = (*(v3 + 144))(v6);
  if (result)
  {
    v10 = result;
    dispatch thunk of _UIHostingView.rootView.getter();

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    MEMORY[0x24C1FAEA0](v11, v13);

    return v14[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id OutlineContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutlineContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static LeadingTitle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for AttributedString();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v30 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12LeadingTitleO_ACtMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v30 - v18;
  v21 = (&v30 + *(v20 + 56) - v18);
  outlined init with copy of Column(a1, &v30 - v18, type metadata accessor for LeadingTitle);
  outlined init with copy of Column(a2, v21, type metadata accessor for LeadingTitle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of Column(v19, v15, type metadata accessor for LeadingTitle);
    v26 = *v15;
    v25 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v26 == *v21 && v25 == v21[1])
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          _s26DocumentManagerExecutables6ColumnOWOhTm_0(v19, type metadata accessor for LeadingTitle);
          goto LABEL_8;
        }
      }

      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v19, type metadata accessor for LeadingTitle);
      v23 = 1;
      return v23 & 1;
    }

LABEL_7:
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables12LeadingTitleO_ACtMd);
LABEL_8:
    v23 = 0;
    return v23 & 1;
  }

  outlined init with copy of Column(v19, v11, type metadata accessor for LeadingTitle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v11, v31);
    goto LABEL_7;
  }

  v22 = v31;
  (*(v4 + 32))(v7, v21, v31);
  v23 = static AttributedString.== infix(_:_:)();
  v24 = *(v4 + 8);
  v24(v7, v22);
  v24(v11, v22);
  _s26DocumentManagerExecutables6ColumnOWOhTm_0(v19, type metadata accessor for LeadingTitle);
  return v23 & 1;
}

uint64_t lazy protocol witness table accessor for type StatusView and conformance StatusView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static Column.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v190 = a1;
  v191 = a2;
  v2 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v186 = &v159[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v188 = &v159[-v7];
  v189 = type metadata accessor for Date();
  v187 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v8);
  v185 = &v159[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v159[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v159[-v16];
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v159[-v20];
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v159[-v24];
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v159[-v28];
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v159[-v32];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables6ColumnO_ACtMd);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v159[-v36];
  v39 = &v159[*(v38 + 56) - v36];
  outlined init with copy of Column(v190, &v159[-v36], type metadata accessor for Column);
  outlined init with copy of Column(v191, v39, type metadata accessor for Column);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of Column(v37, v29, type metadata accessor for Column);
        v42 = *v29;
        v41 = v29[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (v42 == *v39 && v41 == *(v39 + 1))
          {
          }

          else
          {
            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v44 & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

LABEL_40:
        outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables6ColumnO_ACtMd);
LABEL_103:
        v66 = 0;
        return v66 & 1;
      }

      v184 = v37;
      outlined init with copy of Column(v37, v25, type metadata accessor for Column);
      v67 = *(v25 + 1);
      v179 = *v25;
      v185 = v67;
      v68 = *(v25 + 3);
      v183 = *(v25 + 2);
      v187 = v68;
      v69 = *(v25 + 4);
      v189 = *(v25 + 5);
      v190 = *(v25 + 6);
      v191 = v69;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
      v178 = v70[16];
      v177 = v70[20];
      v71 = *&v25[v177 + 8];
      v169 = *&v25[v177];
      v180 = v71;
      v72 = v70[24];
      v170 = *&v25[v72];
      v73 = v70[28];
      v182 = *&v25[v73];
      v74 = v70[32];
      v181 = *&v25[v74];
      v75 = v70[36];
      v76 = *&v25[v75];
      v77 = v70[40];
      v78 = *&v25[v77];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v168 = v76;
        v166 = v78;
        v79 = *v39;
        v172 = *(v39 + 1);
        v80 = *(v39 + 3);
        v173 = *(v39 + 2);
        v174 = v80;
        v81 = *(v39 + 5);
        v175 = *(v39 + 4);
        v176 = v81;
        v171 = *(v39 + 6);
        v82 = *&v39[v177 + 8];
        v164 = *&v39[v177];
        v165 = v82;
        v83 = *&v39[v72];
        v84 = *&v39[v73];
        v85 = *&v39[v74];
        v167 = *&v39[v75];
        v177 = *&v39[v77];
        v86 = v178;
        outlined init with take of LeadingTitle(v178 + v25, v188);
        v87 = v86 + v39;
        v88 = v186;
        outlined init with take of LeadingTitle(v87, v186);
        v89 = v179;
        if (v179)
        {
          v90 = v184;
          v91 = v187;
          if (!v79)
          {
            v118 = v179;
            outlined consume of LeadingBadge?(v185, v183, v91, v191, v189, v190);
            outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

            goto LABEL_62;
          }

          v92 = v79;
          v163 = v83;
          v178 = v85;
          v93 = v84;
          type metadata accessor for DOCImageViewContainerView();
          v94 = v89;
          v95 = v79;
          v96 = static NSObject.== infix(_:_:)();

          if ((v96 & 1) == 0)
          {
            outlined consume of LeadingBadge?(v185, v183, v91, v191, v189, v190);
            outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

LABEL_57:
            v90 = v184;
            v88 = v186;
LABEL_62:
            _s26DocumentManagerExecutables6ColumnOWOhTm_0(v88, type metadata accessor for LeadingTitle);
            _s26DocumentManagerExecutables6ColumnOWOhTm_0(v188, type metadata accessor for LeadingTitle);
            v110 = v90;
            goto LABEL_102;
          }
        }

        else
        {
          v163 = v83;
          v178 = v85;
          v93 = v84;
          v92 = v79;
          v91 = v187;
          if (v79)
          {
            outlined consume of LeadingBadge?(v185, v183, v187, v191, v189, v190);
            outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

            goto LABEL_57;
          }
        }

        v112 = v189;
        v111 = v190;
        if (v190 == 1)
        {
          v113 = v171;
          v114 = v191;
          if (v171 == 1)
          {
            v162 = v93;
            v115 = v185;
            v116 = v183;
            outlined copy of LeadingBadge?(v185, v183, v91, v191, v189, 1);
            outlined copy of LeadingBadge?(v172, v173, v174, v175, v176, 1);
            outlined consume of LeadingBadge?(v115, v116, v91, v114, v112, 1);
            v117 = v186;
            goto LABEL_72;
          }

          v119 = v185;
          v117 = v186;
          v120 = v183;
        }

        else
        {
          v119 = v185;
          v120 = v183;
          v198 = v185;
          v199 = v183;
          v114 = v191;
          v200 = v91;
          v201 = v191;
          v202 = v189;
          v203 = v190;
          v113 = v171;
          if (v171 != 1)
          {
            v162 = v93;
            v122 = v172;
            v123 = v89;
            v124 = v173;
            v192 = v172;
            v193 = v173;
            v161 = v92;
            v125 = v174;
            v126 = v175;
            v194 = v174;
            v195 = v175;
            v127 = v176;
            v196 = v176 & 1;
            v197 = v171;
            v160 = specialized static LeadingBadge.== infix(_:_:)(&v198, &v192);
            outlined copy of LeadingBadge?(v119, v120, v187, v191, v189, v190);
            v128 = v122;
            v129 = v124;
            v89 = v123;
            v91 = v187;
            v130 = v125;
            v92 = v161;
            v131 = v126;
            v112 = v189;
            v132 = v127;
            v111 = v190;
            v114 = v191;
            outlined copy of LeadingBadge?(v128, v129, v130, v131, v132, v113);
            outlined copy of LeadingBadge?(v119, v120, v91, v114, v112, v111);

            outlined consume of LeadingBadge?(v119, v120, v91, v114, v112, v111);
            v117 = v186;
            if (v160)
            {
LABEL_72:
              v133 = v188;
              v134 = specialized static LeadingTitle.== infix(_:_:)(v188, v117);
              v135 = v166;
              if ((v134 & 1) == 0)
              {

                outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);
                outlined consume of LeadingBadge?(v185, v183, v91, v114, v112, v111);

                _s26DocumentManagerExecutables6ColumnOWOhTm_0(v117, type metadata accessor for LeadingTitle);
                v137 = v133;
LABEL_100:
                _s26DocumentManagerExecutables6ColumnOWOhTm_0(v137, type metadata accessor for LeadingTitle);
                goto LABEL_101;
              }

              if (v180)
              {
                if (v165)
                {
                  if (v169 == v164 && v180 == v165)
                  {

                    goto LABEL_90;
                  }

                  v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v138)
                  {
                    goto LABEL_90;
                  }

                  outlined consume of LeadingBadge?(v185, v183, v91, v191, v112, v111);
                  outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);
                }

                else
                {

                  outlined consume of LeadingBadge?(v185, v183, v91, v114, v112, v111);
                  outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);
                  swift_bridgeObjectRelease_n();
                }

                goto LABEL_98;
              }

              if (v165)
              {
                outlined consume of LeadingBadge?(v185, v183, v91, v191, v112, v111);
                outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

                goto LABEL_98;
              }

LABEL_90:
              if (v170 == v163)
              {
                v139 = v135;
                if (v182)
                {
                  v140 = v162;
                  if (!v162)
                  {
                    v156 = v182;
                    outlined consume of LeadingBadge?(v185, v183, v91, v191, v112, v111);
                    outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

                    v145 = v181;
                    v146 = v178;
                    v149 = v188;
                    goto LABEL_113;
                  }

                  type metadata accessor for DOCItemStatusView();
                  v141 = v182;
                  v142 = v140;
                  v143 = v140;
                  v144 = static NSObject.== infix(_:_:)();

                  if ((v144 & 1) == 0)
                  {
                    outlined consume of LeadingBadge?(v185, v183, v91, v191, v112, v190);
                    outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

                    v145 = v181;
                    v146 = v178;
LABEL_107:
                    v149 = v188;
                    v117 = v186;
LABEL_113:

                    _s26DocumentManagerExecutables6ColumnOWOhTm_0(v117, type metadata accessor for LeadingTitle);
                    v137 = v149;
                    goto LABEL_100;
                  }
                }

                else
                {
                  v142 = v162;
                  if (v162)
                  {
                    outlined consume of LeadingBadge?(v185, v183, v91, v191, v112, v190);
                    outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

                    v146 = v181;
                    v145 = v92;
                    v92 = v89;
                    v89 = v142;
                    goto LABEL_107;
                  }
                }

                v150 = v181;
                if (v181)
                {
                  v151 = v178;
                  v152 = v185;
                  if (!v178)
                  {
                    v158 = v181;
                    outlined consume of LeadingBadge?(v152, v183, v91, v191, v189, v190);
                    outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

                    goto LABEL_119;
                  }

                  type metadata accessor for DOCChainedTagsView();
                  v153 = v150;
                  v154 = v151;
                  v155 = static NSObject.== infix(_:_:)();

                  if ((v155 & 1) == 0)
                  {
                    outlined consume of LeadingBadge?(v152, v183, v91, v191, v189, v190);
                    outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

LABEL_119:

                    goto LABEL_120;
                  }
                }

                else
                {
                  v151 = v178;
                  v152 = v185;
                  if (v178)
                  {
                    outlined consume of LeadingBadge?(v185, v183, v91, v191, v189, v190);
                    outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

                    v142 = v182;
                    v182 = v92;
                    v92 = v89;
                    v89 = v151;
LABEL_120:

LABEL_122:
                    v147 = v186;
                    goto LABEL_99;
                  }
                }

                v157 = v142;
                if ((specialized static OutlineExpansionState.== infix(_:_:)(v168, v167) & 1) == 0)
                {

                  outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);
                  outlined consume of LeadingBadge?(v152, v183, v187, v191, v189, v190);

                  goto LABEL_122;
                }

                v66 = specialized static OutlineProgressStateReference.== infix(_:_:)(v139, v177);

                outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);
                outlined consume of LeadingBadge?(v152, v183, v187, v191, v189, v190);

                _s26DocumentManagerExecutables6ColumnOWOhTm_0(v186, type metadata accessor for LeadingTitle);
                _s26DocumentManagerExecutables6ColumnOWOhTm_0(v188, type metadata accessor for LeadingTitle);
LABEL_80:
                _s26DocumentManagerExecutables6ColumnOWOhTm_0(v184, type metadata accessor for Column);
                return v66 & 1;
              }

              outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);
              outlined consume of LeadingBadge?(v185, v183, v91, v191, v112, v111);

LABEL_98:
              v147 = v117;
LABEL_99:
              _s26DocumentManagerExecutables6ColumnOWOhTm_0(v147, type metadata accessor for LeadingTitle);
              v137 = v188;
              goto LABEL_100;
            }

            outlined consume of LeadingBadge?(v185, v120, v91, v114, v112, v111);
            outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v171);

LABEL_70:
            v121 = v184;
            _s26DocumentManagerExecutables6ColumnOWOhTm_0(v117, type metadata accessor for LeadingTitle);
            _s26DocumentManagerExecutables6ColumnOWOhTm_0(v188, type metadata accessor for LeadingTitle);
            v110 = v121;
            goto LABEL_102;
          }

          outlined copy of LeadingBadge?(v185, v183, v91, v191, v189, v190);

          v117 = v186;
        }

        outlined consume of LeadingBadge?(v119, v120, v91, v114, v112, v111);
        outlined consume of LeadingBadge?(v172, v173, v174, v175, v176, v113);
        goto LABEL_70;
      }

      outlined consume of LeadingBadge?(v185, v183, v187, v191, v189, v190);

      _s26DocumentManagerExecutables6ColumnOWOhTm_0(v178 + v25, type metadata accessor for LeadingTitle);
LABEL_39:
      v37 = v184;
      goto LABEL_40;
    }

    v184 = v37;
    outlined init with copy of Column(v37, v33, type metadata accessor for Column);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
    v48 = *(v47 + 48);
    v49 = *&v33[v48];
    v50 = *&v33[v48 + 8];
    v51 = *(v47 + 64);
    v53 = *&v33[v51];
    v52 = *&v33[v51 + 8];
    if (swift_getEnumCaseMultiPayload())
    {
      outlined consume of ColumnType(v53, v52);

      (*(v187 + 8))(v33, v189);
      goto LABEL_39;
    }

    v99 = *&v39[v48 + 8];
    v188 = *&v39[v48];
    v100 = *&v39[v51 + 8];
    v190 = *&v39[v51];
    v191 = v100;
    v101 = v187;
    v102 = v185;
    v103 = v189;
    (*(v187 + 32))(v185, v39, v189);
    v104 = static Date.== infix(_:_:)();
    v105 = v33;
    v106 = *(v101 + 8);
    v106(v105, v103);
    if ((v104 & 1) == 0)
    {
      v106(v102, v189);
      outlined consume of ColumnType(v53, v52);

      outlined consume of ColumnType(v190, v191);
LABEL_101:
      v110 = v184;
      goto LABEL_102;
    }

    v107 = v99;
    v109 = v190;
    v108 = v191;
    if (v50)
    {
      if (v107)
      {
        if (v49 == v188 && v50 == v107)
        {

LABEL_79:
          v198 = v53;
          v199 = v52;
          v192 = v109;
          v193 = v108;
          v66 = specialized static ColumnType.== infix(_:_:)(&v198, &v192);
          v106(v102, v189);
          outlined consume of ColumnType(v109, v108);
          outlined consume of ColumnType(v53, v52);
          goto LABEL_80;
        }

        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v136)
        {
          goto LABEL_79;
        }

        outlined consume of ColumnType(v109, v108);
        outlined consume of ColumnType(v53, v52);
      }

      else
      {

        outlined consume of ColumnType(v109, v108);
        outlined consume of ColumnType(v53, v52);
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      if (!v107)
      {
        goto LABEL_79;
      }

      outlined consume of ColumnType(v190, v191);
      outlined consume of ColumnType(v53, v52);
    }

    v54 = v184;
    v106(v102, v189);
LABEL_85:
    v110 = v54;
    goto LABEL_102;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      outlined init with copy of Column(v37, v17, type metadata accessor for Column);
      v45 = *v17;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v46 = *v39;
        if (v45)
        {
          if (v46)
          {
            type metadata accessor for DOCChainedTagsView();
            goto LABEL_33;
          }

LABEL_51:
          v46 = v45;
          goto LABEL_52;
        }

        goto LABEL_47;
      }
    }

    else
    {
      outlined init with copy of Column(v37, v13, type metadata accessor for Column);
      v45 = *v13;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v46 = *v39;
        if (v45)
        {
          if (v46)
          {
            type metadata accessor for DOCItemStatusView();
LABEL_33:
            v97 = v45;
            v98 = static NSObject.== infix(_:_:)();

            if ((v98 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_50;
          }

          goto LABEL_51;
        }

LABEL_47:
        if (!v46)
        {
LABEL_50:
          _s26DocumentManagerExecutables6ColumnOWOhTm_0(v37, type metadata accessor for Column);
          v66 = 1;
          return v66 & 1;
        }

LABEL_52:

LABEL_53:
        v110 = v37;
LABEL_102:
        _s26DocumentManagerExecutables6ColumnOWOhTm_0(v110, type metadata accessor for Column);
        goto LABEL_103;
      }
    }

    goto LABEL_40;
  }

  v54 = v37;
  outlined init with copy of Column(v37, v21, type metadata accessor for Column);
  v56 = *v21;
  v55 = *(v21 + 1);
  v57 = v21[16];
  v58 = v21[17];
  v59 = v21[18];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined consume of ColumnType(v56, v55);
    v37 = v54;
    goto LABEL_40;
  }

  LODWORD(v190) = v59;
  v60 = *v39;
  v61 = *(v39 + 1);
  v62 = v39[16];
  LODWORD(v191) = v39[17];
  v63 = v39[18];
  v198 = v56;
  v199 = v55;
  v192 = v60;
  v193 = v61;
  v64 = specialized static ColumnType.== infix(_:_:)(&v198, &v192);
  outlined consume of ColumnType(v60, v61);
  outlined consume of ColumnType(v56, v55);
  if ((v64 & 1) == 0 || v57 != v62 || v58 != v191)
  {
    goto LABEL_85;
  }

  v65 = v190 ^ v63;
  _s26DocumentManagerExecutables6ColumnOWOhTm_0(v54, type metadata accessor for Column);
  v66 = v65 ^ 1;
  return v66 & 1;
}

id specialized OutlineHostingView.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for OutlineHostingView);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v11 - v7;
  result = [objc_allocWithZone(MEMORY[0x277CEC650]) initForAsynchronousAccess_];
  if (result)
  {
    *(v2 + *((*v4 & *v2) + class metadata base offset for OutlineHostingView + 24)) = result;
    (*(v6 + 16))(v8, a1, v5);
    v10 = _UIHostingView.init(rootView:)();
    dispatch thunk of _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.setter();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized OutlineHostingView.init(coder:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEC650]) initForAsynchronousAccess_];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for OutlineHostingView + 24)) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized OutlineContainer.init(coder:)()
{
  *(v0 + direct field offset for OutlineContainer.hostingView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type SortDirection and conformance SortDirection()
{
  result = lazy protocol witness table cache variable for type SortDirection and conformance SortDirection;
  if (!lazy protocol witness table cache variable for type SortDirection and conformance SortDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortDirection and conformance SortDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Column] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Column] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Column] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables6ColumnOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Column] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for LeadingTitle()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Column()
{
  type metadata accessor for (Date, String?, ColumnType)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (DOCImageViewContainerView?, LeadingBadge?, LeadingTitle, String?, Int, DOCItemStatusView?, DOCChainedTagsView?, OutlineExpansionState, OutlineProgressStateReference)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (ColumnType, SortDirection, Bool, Bool)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DOCChainedTagsView?(319, &lazy cache variable for type metadata for DOCChainedTagsView?, type metadata accessor for DOCChainedTagsView);
        if (v3 <= 0x3F)
        {
          type metadata accessor for DOCChainedTagsView?(319, &lazy cache variable for type metadata for DOCItemStatusView?, type metadata accessor for DOCItemStatusView);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (Date, String?, ColumnType)()
{
  if (!lazy cache variable for type metadata for (Date, String?, ColumnType))
  {
    type metadata accessor for Date();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Date, String?, ColumnType));
    }
  }
}

void type metadata accessor for (DOCImageViewContainerView?, LeadingBadge?, LeadingTitle, String?, Int, DOCItemStatusView?, DOCChainedTagsView?, OutlineExpansionState, OutlineProgressStateReference)()
{
  if (!lazy cache variable for type metadata for (DOCImageViewContainerView?, LeadingBadge?, LeadingTitle, String?, Int, DOCItemStatusView?, DOCChainedTagsView?, OutlineExpansionState, OutlineProgressStateReference))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s26DocumentManagerExecutables12LeadingBadgeVSgMd);
    type metadata accessor for LeadingTitle(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s26DocumentManagerExecutables17DOCItemStatusViewCSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo18DOCChainedTagsViewCSgMd);
    type metadata accessor for OutlineExpansionState(255);
    type metadata accessor for OutlineProgressStateReference();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (DOCImageViewContainerView?, LeadingBadge?, LeadingTitle, String?, Int, DOCItemStatusView?, DOCChainedTagsView?, OutlineExpansionState, OutlineProgressStateReference));
    }
  }
}

void type metadata accessor for (ColumnType, SortDirection, Bool, Bool)()
{
  if (!lazy cache variable for type metadata for (ColumnType, SortDirection, Bool, Bool))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (ColumnType, SortDirection, Bool, Bool));
    }
  }
}

unint64_t type metadata accessor for DOCChainedTagsView()
{
  result = lazy cache variable for type metadata for DOCChainedTagsView;
  if (!lazy cache variable for type metadata for DOCChainedTagsView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCChainedTagsView);
  }

  return result;
}

void type metadata accessor for DOCChainedTagsView?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with take of LeadingTitle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeadingTitle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of LeadingBadge?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.browserConfiguration : EnvironmentValues@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t DateView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload())
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
    v13 = &v7[*(v12 + 48)];
    v14 = *v13;
    v15 = *(v13 + 1);
    outlined consume of ColumnType(*&v7[*(v12 + 64)], *&v7[*(v12 + 64) + 8]);
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v7, v16);
    if (v15)
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v15)
    {
      v11 = v15;
    }
  }

  v17 = (a2 + *(v8 + 20));
  *v17 = v10;
  v17[1] = v11;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

double static LeadingView.disclosureButtonLeadingSpace(isCompactSizeClass:)(char a1)
{
  result = 10.0;
  if (a1)
  {
    return 16.0;
  }

  return result;
}

uint64_t OutlineExpansionState.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t OutlineProgressState.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  return v0;
}

uint64_t default argument 1 of DragIndicator.init(indexAfter:dragObject:colorScheme:)()
{
  type metadata accessor for Dragging(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t default argument 2 of DragIndicator.init(indexAfter:dragObject:colorScheme:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DragIndicator.init(indexAfter:dragObject:colorScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for DragIndicator(0);
  return outlined init with take of (key: URL, value: FPItem)(a3, a4 + *(v6 + 24), &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
}

uint64_t *OutlineConstants.headerColumnDividerSize.unsafeMutableAddressor()
{
  if (one-time initialization token for headerColumnDividerSize != -1)
  {
    swift_once();
  }

  return &static OutlineConstants.headerColumnDividerSize;
}

uint64_t OutlineProgressStateReference.__allocating_init(progressState:)()
{
  v0 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

__n128 LeadingBadge.init(traits:image:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

double static LeadingView.imageBounds(isCompact:isAX:)(char a1, char a2)
{
  if (a1)
  {
    v2 = 36.0;
  }

  else
  {
    v2 = 48.0;
  }

  if (a2)
  {
    v3 = [objc_opt_self() defaultMetrics];
    [v3 scaledValueForValue_];
    v2 = v4;
  }

  return v2;
}

double static LeadingView.leadingIndentationSpacing(indentationLevel:isCompact:isAX:)(unint64_t a1, char a2, char a3)
{
  if (a2)
  {
    v4 = 36.0;
  }

  else
  {
    v4 = 48.0;
  }

  if (a3)
  {
    v5 = [objc_opt_self() defaultMetrics];
    [v5 scaledValueForValue_];
    v4 = v6;
  }

  return vcvtd_n_f64_s64(a1, 1uLL) * v4;
}

id static OutlineFontModifier.fontForRename(isCompact:)(char a1)
{
  v2 = objc_opt_self();
  v3 = MEMORY[0x277D76918];
  if (a1)
  {
    v3 = MEMORY[0x277D769D0];
  }

  v4 = [v2 preferredFontForTextStyle_];

  return v4;
}

__n128 LeadingBadge.traits.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double static OutlineConstants.headerColumnDividerSize.getter()
{
  if (one-time initialization token for headerColumnDividerSize != -1)
  {
    swift_once();
  }

  return *&static OutlineConstants.headerColumnDividerSize;
}

uint64_t key path getter for OutlineExpansionState.isExpanded : OutlineExpansionState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineExpansionState.isExpanded.getter()
{
  swift_getKeyPath();
  (*(*v0 + 400))();

  swift_beginAccess();
  return v0[16];
}

uint64_t OutlineExpansionState.isExpanded.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 408))(v6);
  }

  return result;
}