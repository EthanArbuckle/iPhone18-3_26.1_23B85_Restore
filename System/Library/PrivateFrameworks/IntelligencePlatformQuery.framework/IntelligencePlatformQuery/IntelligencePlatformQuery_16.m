unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v3 = *(a2 + 16);
    }

    v4 = *(type metadata accessor for PgQuery_ScanToken(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FromClause.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x73616D65686373;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromClause.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002553B6940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FromClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v12[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [Schema] and conformance <A> [A], &_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR, lazy protocol witness table accessor for type Schema and conformance Schema);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[6] = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResultColumn.alias.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ResultColumn.documentation.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

__n128 ResultColumn.init(expression:alias:documentation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v6;
  v7 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 96) = a2;
  *(a6 + 104) = a3;
  *(a6 + 112) = a4;
  *(a6 + 120) = a5;
  return result;
}

unint64_t ResultColumn.init(node:schemas:tokenInformation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v201 = a3;
  v200 = a2;
  v192 = a4;
  v194 = type metadata accessor for CharacterSet();
  v183 = *(v194 - 8);
  v5 = *(v183 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v188 = *(ScanToken - 8);
  v8 = *(v188 + 8);
  v9 = MEMORY[0x28223BE20](ScanToken - 8);
  v187 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v186 = &v181 - v11;
  v184 = type metadata accessor for SQLTokenInformation(0);
  v12 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v189 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v191 = &v181 - v16;
  Node = type metadata accessor for PgQuery_Node(0);
  v190 = *(Node - 8);
  v18 = *(v190 + 64);
  v19 = MEMORY[0x28223BE20](Node);
  v21 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v195 = (&v181 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v185 = &v181 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v32 = &v181 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v181 - v35;
  ResTarget = type metadata accessor for PgQuery_ResTarget(0);
  v38 = *(*(ResTarget - 8) + 64);
  MEMORY[0x28223BE20](ResTarget);
  v197 = &v181 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = Node;
  v40 = *(Node + 20);
  v199 = a1;
  outlined init with copy of PgQuery_Alias?(*(a1 + v40) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v36, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v41 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v41 - 8) + 48))(v36, 1, v41) == 1)
  {

    outlined destroy of URL?(v36, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_18:
    v204._countAndFlagsBits = 0;
    v204._object = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v204._countAndFlagsBits = 0xD000000000000022;
    v204._object = 0x80000002553B6BF0;
    v66 = v199;
    outlined init with copy of PgQuery_ScanResult(v199, v21, type metadata accessor for PgQuery_Node);
    v67 = String.init<A>(describing:)();
    MEMORY[0x259C32B90](v67);

    countAndFlagsBits = v204._countAndFlagsBits;
    object = v204._object;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v70 = countAndFlagsBits;
    *(v70 + 8) = object;
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v66, type metadata accessor for PgQuery_Node);
    v71 = type metadata accessor for SQLTokenInformation;
    v72 = &v217;
    return outlined destroy of PgQuery_ParseResult(*(v72 - 32), v71);
  }

  if (swift_getEnumCaseMultiPayload() != 175)
  {

    outlined destroy of PgQuery_ParseResult(v36, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_18;
  }

  v42 = v36;
  v43 = v197;
  ParseResult = outlined init with take of PgQuery_ParseResult(v42, v197, type metadata accessor for PgQuery_ResTarget);
  v45 = *(v43 + *(ResTarget + 20));
  v46 = *(v45 + 24);
  v47 = *(v45 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v46 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v46) & 0xF;
  }

  v182 = *(v43 + *(ResTarget + 20));
  if (!v47)
  {
    v185 = 0;
    v73 = v192;
    *(v192 + 96) = 0;
    *(v73 + 104) = 0;
    v30 = v196;
    v56 = v201;
    goto LABEL_21;
  }

  v48 = *(v201 + 8);
  MEMORY[0x28223BE20](ParseResult);
  v179 = v43;
  result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ResultColumn.init(node:schemas:tokenInformation:), (&v181 - 4), v48);
  if (v50)
  {
LABEL_93:
    __break(1u);
    return result;
  }

  v196 = result;
  v204._countAndFlagsBits = specialized Collection.dropFirst(_:)(result, v48);
  v204._object = v51;
  v205 = v52;
  v206 = v53;
  v207 = v52;
  v208 = 0;
  v54 = v48;

  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()(v30);
    outlined init with take of (PgQuery_RawStmt, String)(v30, v32, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
    if ((*(*(v55 - 8) + 48))(v32, 1, v55) == 1)
    {

      swift_unknownObjectRelease();
      v82 = *(v182 + 16);
      v81 = *(v182 + 24);
      goto LABEL_29;
    }

    v56 = *v32;
    v57 = *(v55 + 48);
    v58 = *&v32[v57];
    outlined destroy of PgQuery_ParseResult(&v32[v57], type metadata accessor for PgQuery_ScanToken);
    SQLTokenInformation.tokenName(location:)(v58);
    if (v59)
    {

      swift_unknownObjectRelease();
      goto LABEL_31;
    }

    v60 = String.lowercased()();
    v61 = v60._countAndFlagsBits;

    v62 = String.lowercased()();
    v63 = v62._object;
    if (v60._countAndFlagsBits == v62._countAndFlagsBits && v60._object == v62._object)
    {
      break;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  v85 = v196 + v56;
  if (__OFADD__(v196, v56))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v86 = __OFADD__(v85, 1);
  v87 = v85 + 1;
  v56 = v201;
  if (v86)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
    v74 = v198;
LABEL_23:
    *(v61 + v56) = static PgQuery_Node._StorageClass.defaultInstance;
    v75 = (v63)(v54, 1, v74);

    v56 = v32;
    v76 = v189;
    if (v75 != 1)
    {
      outlined destroy of URL?(v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    goto LABEL_26;
  }

  if (v87 >= *(v54 + 16))
  {

    v93 = *(v182 + 16);
    v92 = *(v182 + 24);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v94 = v93;
    *(v94 + 8) = v92;
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    *(v94 + 32) = 8;
    swift_willThrow();

LABEL_41:
    swift_unknownObjectRelease();
    outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
    v84 = v56;
    goto LABEL_42;
  }

  if ((v87 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  SQLTokenInformation.tokenName(location:)(*(v54 + ((v188[80] + 32) & ~v188[80]) + *(v188 + 9) * v87));
  if (v88)
  {

    goto LABEL_41;
  }

  v196 = 0;
  swift_unknownObjectRelease();
  v204 = String.lowercased()();
  v117 = v182;
  v118 = *(v182 + 16);
  v119 = *(v182 + 24);
  v203[0] = String.lowercased()();
  v120 = type metadata accessor for Locale();
  v121 = v185;
  (*(*(v120 - 8) + 56))(v185, 1, 1, v120);
  v179 = lazy protocol witness table accessor for type String and conformance String();
  v180 = v179;
  StringProtocol.range<A>(of:options:range:locale:)();
  v123 = v122;
  outlined destroy of URL?(v121, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  if (v123)
  {

    v82 = *(v117 + 16);
    v81 = *(v117 + 24);
LABEL_29:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v83 = v82;
    *(v83 + 8) = v81;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 32) = 8;
    swift_willThrow();

LABEL_31:
    outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
    v84 = v201;
LABEL_42:
    outlined destroy of PgQuery_ParseResult(v84, type metadata accessor for SQLTokenInformation);
    goto LABEL_43;
  }

  v124 = String.subscript.getter();
  v126 = v125;
  v128 = v127;
  v130 = v129;

  v131 = MEMORY[0x259C32B00](v124, v126, v128, v130);
  v133 = v132;

  v134 = v192;
  *(v192 + 96) = v131;
  *(v134 + 104) = v133;
  v185 = v133;
  v30 = v196;
  v56 = v201;
  v45 = v117;
LABEL_21:
  v54 = v191;
  outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v191, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v63 = *(v190 + 48);
  v74 = v198;
  if ((v63)(v54, 1, v198) == 1)
  {
    v32 = v56;
    v61 = v195;
    UnknownStorage.init()();
    v56 = *(v74 + 20);
    if (one-time initialization token for defaultInstance == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

  outlined init with take of PgQuery_ParseResult(v54, v195, type metadata accessor for PgQuery_Node);
  v76 = v189;
LABEL_26:
  outlined init with copy of PgQuery_ScanResult(v56, v76, type metadata accessor for SQLTokenInformation);
  v77 = v200;

  v79 = specialized ColumnResolver.init(schemas:)(v78);
  v61 = v30;
  if (!v30)
  {
    v89 = v79;
    v90 = v80;

    v91 = v195;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v195, v77, v89, v90, v76, &v203[0]._countAndFlagsBits);
    v196 = 0;

    outlined init with copy of VirtualTable.Module(v203, v202);
    outlined init with copy of VirtualTable.Module(v202, &v204);
    v95 = v206;
    v96 = v207;
    __swift_project_boxed_opaque_existential_0(&v204, v206);
    v208 = (*(v96 + 8))(v95, v96);
    v209 = v97;
    v98 = v206;
    v99 = v207;
    __swift_project_boxed_opaque_existential_0(&v204, v206);
    (*(v99 + 16))(&v215, v98, v99);
    v210 = v215;
    v100 = v206;
    v101 = v207;
    __swift_project_boxed_opaque_existential_0(&v204, v206);
    v211 = (*(v101 + 24))(v100, v101);
    v102 = v206;
    v103 = v207;
    __swift_project_boxed_opaque_existential_0(&v204, v206);
    v212 = (*(v103 + 32))(v102, v103);
    v104 = v206;
    v105 = v207;
    __swift_project_boxed_opaque_existential_0(&v204, v206);
    v106 = (*(v105 + 40))(v104, v105);
    v108 = v107;
    __swift_destroy_boxed_opaque_existential_0(v202);
    __swift_destroy_boxed_opaque_existential_0(&v203[0]._countAndFlagsBits);
    outlined destroy of PgQuery_ParseResult(v76, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v91, type metadata accessor for PgQuery_Node);
    v213 = v106;
    v214 = v108;
    outlined init with copy of SQLExpression(&v204, v192);
    v109 = *(v56 + 8);
    v32 = v188;
    v30 = v186;
    v110 = v187;
    v200 = *(v109 + 16);
    if (v200)
    {
      v63 = 0;
      v111 = *(v182 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      while (1)
      {
        if (v63 >= *(v109 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        v112 = v109;
        v54 = v109 + ((v32[80] + 32) & ~v32[80]);
        v61 = *(v32 + 9);
        outlined init with copy of PgQuery_ScanResult(v54 + v61 * v63, v30, type metadata accessor for PgQuery_ScanToken);
        v113 = *v30;
        result = outlined destroy of PgQuery_ParseResult(v30, type metadata accessor for PgQuery_ScanToken);
        if (v113 == v111)
        {
          break;
        }

        ++v63;
        v56 = v201;
        v109 = v112;
        if (v200 == v63)
        {
          goto LABEL_49;
        }
      }

      v189 = v54;
      v56 = v201;
      if (*(v112 + 16) < v63)
      {
        goto LABEL_92;
      }

      v182 = v112;

      v135 = MEMORY[0x277D84F90];
      v136 = v189;
      if (v63)
      {
        v137 = (v63 - 1);
        v195 = (v183 + 8);
        v138 = v63;
        v186 = (v63 - 1);
        while (v137 < v63)
        {
          outlined init with copy of PgQuery_ScanResult(&v136[--v138 * v61], v110, type metadata accessor for PgQuery_ScanToken);
          if (*(v110 + 16) == 1)
          {
            v140 = *(v110 + 1);
            if (v140 - 39 >= 0x152 && v140 - 378 >= 0x74)
            {
              if (v140 > 0x26)
              {
                goto LABEL_81;
              }

              if (((1 << v140) & 0x1FFFFFFFBFLL) == 0)
              {
                if (((1 << v140) & 0x6000000000) == 0)
                {
                  goto LABEL_81;
                }

                v188 = v135;
                PgQuery_Token.rawValue.getter(v140, 1);
                v141 = (v56 + *(v184 + 20));
                v143 = *v141;
                v142 = v141[1];
                v144 = *v110;
                v145 = String.index(_:offsetBy:)();
                v146 = v110[1];
                result = String.index(_:offsetBy:)();
                if (result >> 14 < v145 >> 14)
                {
                  goto LABEL_90;
                }

                v147 = String.subscript.getter();
                v148 = MEMORY[0x259C32B00](v147);
                v150 = v149;

                v203[0]._countAndFlagsBits = v148;
                v203[0]._object = v150;
                v151 = v193;
                static CharacterSet.whitespaces.getter();
                v191 = lazy protocol witness table accessor for type String and conformance String();
                v152 = StringProtocol.trimmingCharacters(in:)();
                v154 = v153;
                v190 = *v195;
                (v190)(v151, v194);

                v203[0]._countAndFlagsBits = 10;
                v203[0]._object = 0xE100000000000000;
                MEMORY[0x28223BE20](v155);
                v179 = v203;
                v156 = v196;
                v157 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v181 - 4), v152, v154);
                v196 = v156;
                v158 = *(v157 + 16);
                if (v158)
                {
                  v215 = MEMORY[0x277D84F90];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v158, 0);
                  v159 = v215;
                  v185 = v157;
                  v160 = (v157 + 56);
                  do
                  {
                    v200 = v158;
                    v162 = *(v160 - 3);
                    v161 = *(v160 - 2);
                    v163 = v159;
                    v164 = *(v160 - 1);
                    v165 = *v160;

                    v203[0]._countAndFlagsBits = MEMORY[0x259C32B00](v162, v161, v164, v165);
                    v203[0]._object = v166;
                    v167 = v193;
                    static CharacterSet.whitespaces.getter();
                    v159 = v163;
                    v168 = StringProtocol.trimmingCharacters(in:)();
                    v198 = v169;

                    (v190)(v167, v194);

                    v215 = v159;
                    v171 = *(v159 + 16);
                    v170 = *(v159 + 24);
                    if (v171 >= v170 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v170 > 1, v171 + 1, 1);
                      v159 = v215;
                    }

                    *(v159 + 16) = v171 + 1;
                    v172 = v159 + 16 * v171;
                    v173 = v198;
                    *(v172 + 32) = v168;
                    *(v172 + 40) = v173;
                    v160 += 4;
                    v158 = v200 - 1;
                  }

                  while (v200 != 1);

                  v110 = v187;
                }

                else
                {

                  v159 = MEMORY[0x277D84F90];
                }

                v174 = v159;
                v175 = *(v159 + 16);
                v135 = v188;
                v176 = *(v188 + 2);
                if (__OFADD__(v176, v175))
                {
                  goto LABEL_91;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v202[0] = v135;
                if (!isUniquelyReferenced_nonNull_native || v176 + v175 > *(v135 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v135 = v139;
                  v202[0] = v139;
                }

                v56 = v201;
                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, v175, v174);

                v136 = v189;
                v137 = v186;
              }
            }
          }

          outlined destroy of PgQuery_ParseResult(v110, type metadata accessor for PgQuery_ScanToken);
          if (!v138)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_81:
        outlined destroy of PgQuery_ParseResult(v110, type metadata accessor for PgQuery_ScanToken);
      }

LABEL_82:

      if (*(v135 + 16))
      {
        v203[0]._countAndFlagsBits = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v114 = BidirectionalCollection<>.joined(separator:)();
        v115 = v178;

        outlined destroy of SQLExpression(&v204);
        goto LABEL_51;
      }

      outlined destroy of SQLExpression(&v204);
    }

    else
    {
LABEL_49:
      outlined destroy of SQLExpression(&v204);
    }

    v114 = 0;
    v115 = 0;
LABEL_51:
    outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_ParseResult(v56, type metadata accessor for SQLTokenInformation);
    v116 = v192;
    *(v192 + 112) = v114;
    *(v116 + 120) = v115;
LABEL_43:
    v71 = type metadata accessor for PgQuery_ResTarget;
    v72 = &v216;
    return outlined destroy of PgQuery_ParseResult(*(v72 - 32), v71);
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v76, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v195, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v56, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_ResTarget);
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = (&v16 - v7);
  v9 = v1[4];
  v10 = v1[3] >> 1;
  if (v9 == v10)
  {
    v11 = *(v6 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10 || v9 < v1[2])
    {
      __break(1u);
    }

    else
    {
      v17 = v6;
      v13 = v1[1] + *(*(type metadata accessor for PgQuery_ScanToken(0) - 8) + 72) * v9;
      v1[4] = v9 + 1;
      v14 = *(v3 + 48);
      v15 = v1[5];
      *v8 = v15;
      result = outlined init with copy of PgQuery_ScanResult(v13, v8 + v14, type metadata accessor for PgQuery_ScanToken);
      if (!__OFADD__(v15, 1))
      {
        v1[5] = v15 + 1;
        outlined init with take of (PgQuery_RawStmt, String)(v8, a1, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResultColumn.CodingKeys()
{
  v1 = 0x7361696C61;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75636F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572707865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResultColumn.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResultColumn.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResultColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResultColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultColumn.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser12ResultColumnV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser12ResultColumnV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[15] = 0;
  lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[12];
  v12 = v3[13];
  v16[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = v3[14];
  v15 = v3[15];
  v16[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v398 = a2;
  v323 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v324 = &v311 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v329 = &v311 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v332 = *(Node - 8);
  v9 = v332[8];
  v10 = MEMORY[0x28223BE20](Node);
  v326 = &v311 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  i = &v311 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v325 = &v311 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v311 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v311 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v311 - v23;
  v25 = type metadata accessor for PlanResources(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v311 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1;
  v30 = *(a1 + *(type metadata accessor for PgQuery_SelectStmt(0) + 20));
  v31 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  outlined init with copy of PgQuery_ScanResult(v398, v28, type metadata accessor for PlanResources);

  v33 = v333;
  v34 = FromClause.init(fromClauseNodes:resources:)(v32, v28, &v374);
  if (v33)
  {
    outlined destroy of PgQuery_ParseResult(v29, type metadata accessor for PgQuery_SelectStmt);
    return outlined destroy of PgQuery_ParseResult(v398, type metadata accessor for PlanResources);
  }

  v321 = v29;
  v331._countAndFlagsBits = v24;
  v317 = v22;
  v318 = v19;
  v316 = v25;
  v382[4] = v378;
  v382[5] = v379;
  v383 = v380;
  v382[0] = v374;
  v382[1] = v375;
  v382[3] = v377;
  v382[2] = v376;
  v36 = v374;
  v37 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  MEMORY[0x28223BE20](v34);
  v38 = v398;
  *(&v311 - 2) = v36;
  *(&v311 - 1) = v38;

  NodeVG_AF12ResultColumnVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF12ResultColumnVsAE_pTg5(partial apply for closure #1 in SelectCore.init(select:resources:), (&v311 - 4), v37);
  v320 = 0;
  isUniquelyReferenced_nonNull_native = NodeVG_AF12ResultColumnVsAE_pTg5;
  v314 = v36;
  v315 = v30;
  v327 = 0;

  v397 = isUniquelyReferenced_nonNull_native;
  v41 = *(isUniquelyReferenced_nonNull_native + 16);
  v322 = isUniquelyReferenced_nonNull_native;
  if (v41)
  {
    v333 = (isUniquelyReferenced_nonNull_native + 32);

    v42 = 0;
    v43 = MEMORY[0x277D84F98];
    v44 = MEMORY[0x277D84F98];
    countAndFlagsBits = v331._countAndFlagsBits;
    v319 = v41;
    while (1)
    {
      if (v42 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
        goto LABEL_138;
      }

      outlined init with copy of ResultColumn(&v333[16 * v42], &v374);
      v46 = v381;
      if (v381)
      {
        if (!*(v378 + 16))
        {
          break;
        }
      }

      v37 = v43;
LABEL_6:
      ++v42;
      outlined destroy of ResultColumn(&v374);
      v43 = v37;
      if (v42 == v41)
      {

        goto LABEL_40;
      }
    }

    v41 = v380;
    LODWORD(v331._object) = BYTE8(v377);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v358 = v43;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v46);
    v49 = *(v43 + 16);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      __break(1u);
      goto LABEL_266;
    }

    countAndFlagsBits = v47;
    if (*(v43 + 24) >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v43;
        if (v47)
        {
LABEL_14:

          *(*(v37 + 56) + v48) = v331._object;
LABEL_19:
          v44 = v37;
          isUniquelyReferenced_nonNull_native = v322;
          countAndFlagsBits = v331._countAndFlagsBits;
          v41 = v319;
          goto LABEL_6;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
        v58 = static _DictionaryStorage.copy(original:)();
        v37 = v58;
        if (*(v43 + 16))
        {
          v59 = (v58 + 64);
          v60 = (v43 + 64);
          v61 = ((1 << *(v37 + 32)) + 63) >> 6;
          v312 = v43 + 64;
          if (v37 != v43 || v59 >= &v60[8 * v61])
          {
            memmove(v59, v60, 8 * v61);
          }

          v62 = 0;
          *(v37 + 16) = *(v43 + 16);
          v63 = 1 << *(v43 + 32);
          if (v63 < 64)
          {
            v64 = ~(-1 << v63);
          }

          else
          {
            v64 = -1;
          }

          v65 = v64 & *(v43 + 64);
          isUniquelyReferenced_nonNull_native = (v63 + 63) >> 6;
          if (v65)
          {
            do
            {
              v66 = __clz(__rbit64(v65));
              *&v313 = (v65 - 1) & v65;
LABEL_34:
              v69 = v66 | (v62 << 6);
              v70 = (*(v43 + 48) + 16 * v69);
              v72 = *v70;
              v71 = v70[1];
              LOBYTE(v70) = *(*(v43 + 56) + v69);
              v73 = (*(v37 + 48) + 16 * v69);
              *v73 = v72;
              v73[1] = v71;
              *(*(v37 + 56) + v69) = v70;

              v65 = v313;
            }

            while (v313);
          }

          v67 = v62;
          while (1)
          {
            v62 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_326;
            }

            if (v62 >= isUniquelyReferenced_nonNull_native)
            {
              break;
            }

            v68 = *(v312 + 8 * v62);
            ++v67;
            if (v68)
            {
              v66 = __clz(__rbit64(v68));
              *&v313 = (v68 - 1) & v68;
              goto LABEL_34;
            }
          }
        }

        if (countAndFlagsBits)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, isUniquelyReferenced_nonNull_native);
      v37 = v358;
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v46);
      if ((countAndFlagsBits & 1) != (v53 & 1))
      {
        goto LABEL_335;
      }

      v48 = v52;
      if (countAndFlagsBits)
      {
        goto LABEL_14;
      }
    }

    *(v37 + 8 * (v48 >> 6) + 64) |= 1 << v48;
    v54 = (*(v37 + 48) + 16 * v48);
    *v54 = v41;
    v54[1] = v46;
    *(*(v37 + 56) + v48) = v331._object;
    v55 = *(v37 + 16);
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      __break(1u);
LABEL_281:
      *&v374 = v46;
      goto LABEL_284;
    }

    *(v37 + 16) = v57;
    goto LABEL_19;
  }

  v44 = MEMORY[0x277D84F98];
  countAndFlagsBits = v331._countAndFlagsBits;
LABEL_40:
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v74 = swift_allocObject();
  v313 = xmmword_2552FE080;
  *(v74 + 16) = xmmword_2552FE080;
  strcpy((v74 + 32), "select_alias");
  *(v74 + 45) = 0;
  *(v74 + 46) = -5120;
  *(v74 + 48) = v44;
  *&v374 = v314;

  specialized Array.append<A>(contentsOf:)(v74);
  v333 = v374;
  v75 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v41 = v315;
  outlined init with copy of PgQuery_Alias?(v315 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, countAndFlagsBits, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = (v332 + 6);
  v76 = v332[6];
  v43 = Node;
  v77 = v76(countAndFlagsBits, 1, Node);
  outlined destroy of URL?(countAndFlagsBits, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v332 = v37;
  v331._countAndFlagsBits = v76;
  if (v77 == 1)
  {
    v389 = 0u;
    v388 = 0u;
    v387 = 0u;
    v386 = 0u;
    v385 = 0u;
    v384 = 0u;
    v48 = v327;
    v43 = v398;
    countAndFlagsBits = v322;
    isUniquelyReferenced_nonNull_native = v333;
  }

  else
  {
    v82 = v317;
    outlined init with copy of PgQuery_Alias?(v41 + v75, v317, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v83 = v76(v82, 1, v43);
    v41 = v327;
    isUniquelyReferenced_nonNull_native = v316;
    if (v83 == 1)
    {
      countAndFlagsBits = i;
      UnknownStorage.init()();
      v42 = *(v43 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        goto LABEL_321;
      }

      goto LABEL_48;
    }

    countAndFlagsBits = i;
    outlined init with take of PgQuery_ParseResult(v82, i, type metadata accessor for PgQuery_Node);
    v43 = v398;
    v37 = v329;
LABEL_51:
    outlined init with copy of PgQuery_ScanResult(v43 + *(isUniquelyReferenced_nonNull_native + 20), v37, type metadata accessor for SQLTokenInformation);
    isUniquelyReferenced_nonNull_native = v333;

    v87 = specialized ColumnResolver.init(schemas:)(v86);
    if (v41)
    {
      v327 = v41;
      swift_bridgeObjectRelease_n();
      outlined destroy of PgQuery_ParseResult(v37, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_ParseResult(countAndFlagsBits, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_ParseResult(v321, type metadata accessor for PgQuery_SelectStmt);
      v92 = 0;
      v93 = 0;
      v94 = 0;
      goto LABEL_65;
    }

    v90 = v87;
    v91 = v88;
    v48 = 0;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(countAndFlagsBits, isUniquelyReferenced_nonNull_native, v90, v91, v37, &v358);

    outlined init with copy of VirtualTable.Module(&v358, v371);
    SQLExpression.init(rootNode:)(v371, &v374);
    __swift_destroy_boxed_opaque_existential_0(&v358);
    outlined destroy of PgQuery_ParseResult(v37, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(countAndFlagsBits, type metadata accessor for PgQuery_Node);
    v386 = v376;
    v387 = v377;
    v388 = v378;
    v389 = v379;
    v384 = v374;
    v385 = v375;
    countAndFlagsBits = v322;
  }

  outlined init with copy of PgQuery_Alias?(&v384, &v374, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  v42 = v321;
  if (*(&v375 + 1))
  {
    v360 = v376;
    v361 = v377;
    v362 = v378;
    v363 = v379;
    v358 = v374;
    v359 = v375;
    v78 = v378;
    if (*(v378 + 16))
    {

      if (*(v78 + 16))
      {
        outlined init with copy of AggregationFunction(v78 + 32, &v374);
        v79 = AggregationFunction.name()();
        outlined destroy of AggregationFunction(&v374);
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        v80 = swift_allocError();
        *v81 = v79;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 32) = 5;
        v327 = v80;
        swift_willThrow();
        outlined destroy of PgQuery_ParseResult(v42, type metadata accessor for PgQuery_SelectStmt);
        outlined destroy of SQLExpression(&v358);
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_323;
    }

    v89 = outlined destroy of SQLExpression(&v358);
  }

  else
  {
    v89 = outlined destroy of URL?(&v374, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  v95 = *(v315 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  MEMORY[0x28223BE20](v89);
  *(&v311 - 2) = isUniquelyReferenced_nonNull_native;
  *(&v311 - 1) = v43;

  NodeVG_AF13SQLExpressionVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF13SQLExpressionVsAE_pTg5(partial apply for closure #3 in SelectCore.init(select:resources:), (&v311 - 4), v95);
  v327 = v48;
  if (v48)
  {

    v97 = v321;
    goto LABEL_63;
  }

  v48 = NodeVG_AF13SQLExpressionVsAE_pTg5;

  v98 = v48;
  v99 = *(v48 + 16);
  v100 = v99 + 1;
  v101 = 96;
  v42 = v321;
  while (--v100)
  {
    v37 = *(v48 + v101);
    v101 += 96;
    if (*(v37 + 16))
    {

      if (*(v37 + 16))
      {
        outlined init with copy of AggregationFunction(v37 + 32, &v374);
        v102 = AggregationFunction.name()();
        outlined destroy of AggregationFunction(&v374);
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        v103 = swift_allocError();
        *v104 = v102;
        *(v104 + 16) = 0;
        *(v104 + 24) = 0;
        *(v104 + 32) = 6;
        v327 = v103;
        swift_willThrow();
        v97 = v42;
LABEL_63:
        outlined destroy of PgQuery_ParseResult(v97, type metadata accessor for PgQuery_SelectStmt);
LABEL_64:
        v93 = 0;
        v94 = 0;
        v92 = 1;
        goto LABEL_65;
      }

LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
      goto LABEL_325;
    }
  }

  if (v99)
  {
    LODWORD(v329) = 0;
    goto LABEL_82;
  }

  v106 = countAndFlagsBits + 32;
  v107 = -*(countAndFlagsBits + 16);
  v108 = -1;
  while (v107 + v108 != -1)
  {
    if (++v108 >= *(countAndFlagsBits + 16))
    {
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      swift_once();
LABEL_48:
      *(countAndFlagsBits + v42) = static PgQuery_Node._StorageClass.defaultInstance;
      v84 = v317;
      v85 = (v331._countAndFlagsBits)(v317, 1, v43);

      v43 = v398;
      v37 = v329;
      if (v85 != 1)
      {
        outlined destroy of URL?(v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      goto LABEL_51;
    }

    v109 = v106 + 128;
    outlined init with copy of ResultColumn(v106, &v374);
    v110 = *(v378 + 16);
    outlined destroy of ResultColumn(&v374);
    v106 = v109;
    v42 = v321;
    if (v110)
    {
      LODWORD(v329) = 0;
      v98 = MEMORY[0x277D84F90];
      goto LABEL_82;
    }
  }

  v98 = 0;
  LODWORD(v329) = 1;
LABEL_82:
  v390 = v98;
  v37 = v318;
  v333 = *(countAndFlagsBits + 16);
  if (v333)
  {
    v111 = 0;
    v331._object = (countAndFlagsBits + 32);
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
    while (1)
    {
      if (v111 >= *(countAndFlagsBits + 16))
      {
        __break(1u);
LABEL_283:
        v48 = MEMORY[0x277D84F90];
        v43 = *(MEMORY[0x277D84F90] + 16);
        *&v374 = MEMORY[0x277D84F90];
        if (v43)
        {
LABEL_284:
          v275 = 0;
          while (v275 < *(v48 + 16))
          {
            v276 = v275 + 1;
            v277 = *(v48 + 8 * v275 + 32);

            v37 = &v374;
            specialized Array.append<A>(contentsOf:)(v278);
            v275 = v276;
            if (v43 == v276)
            {
              goto LABEL_287;
            }
          }

          goto LABEL_324;
        }

LABEL_287:

        v279 = v374;
        outlined init with copy of PgQuery_Alias?(&v391, &v374, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v375 + 1))
        {
          v280 = v378;

          outlined destroy of SQLExpression(&v374);
        }

        else
        {
          outlined destroy of URL?(&v374, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          v280 = MEMORY[0x277D84F90];
        }

        *&v374 = v279;
        specialized Array.append<A>(contentsOf:)(v280);
        v281 = v374;
        v329 = *(v374 + 16);
        if (!v329)
        {
LABEL_313:

          outlined destroy of PgQuery_ParseResult(v321, type metadata accessor for PgQuery_SelectStmt);
          outlined init with copy of SelectCore(v382, v323);
          outlined destroy of PgQuery_ParseResult(v398, type metadata accessor for PlanResources);
          return outlined destroy of SelectCore(v382);
        }

        v282 = 0;
        Node = v374 + 32;
        v283 = v333 + 7;
        v284 = v332 + 7;
        while (v282 < *(v281 + 16))
        {
          v285 = v281;
          outlined init with copy of AggregationFunction(Node + 200 * v282, &v374);
          v331 = AggregationFunction.name()();
          v286 = String.lowercased()();
          v287 = v333;
          if (v333[2])
          {
            v288 = v333[5];
            Hasher.init(_seed:)();
            String.hash(into:)();
            v289 = Hasher._finalize()();
            v290 = -1 << *(v287 + 32);
            v291 = v289 & ~v290;
            if ((*(v283 + ((v291 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v291))
            {
              v292 = ~v290;
              while (1)
              {
                v293 = v333[6] + 16 * v291;
                v294 = *v293 == v286._countAndFlagsBits && *(v293 + 8) == v286._object;
                if (v294 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v291 = (v291 + 1) & v292;
                if (((*(v283 + ((v291 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v291) & 1) == 0)
                {
                  goto LABEL_303;
                }
              }

              v304 = "e as any select column's name";
              v305 = 0xD000000000000051;
              goto LABEL_317;
            }
          }

LABEL_303:

          v295 = String.lowercased()();
          if (v332[2])
          {
            v296 = v332;
            v297 = v332[5];
            Hasher.init(_seed:)();
            String.hash(into:)();
            v298 = Hasher._finalize()();
            v299 = -1 << *(v296 + 32);
            v300 = v298 & ~v299;
            if ((*(v284 + ((v300 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v300))
            {
              v301 = ~v299;
              do
              {
                v302 = v332[6] + 16 * v300;
                v303 = *v302 == v295._countAndFlagsBits && *(v302 + 8) == v295._object;
                if (v303 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_316;
                }

                v300 = (v300 + 1) & v301;
              }

              while (((*(v284 + ((v300 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v300) & 1) != 0);
            }
          }

          ++v282;

          outlined destroy of AggregationFunction(&v374);
          v281 = v285;
          if (v282 == v329)
          {
            goto LABEL_313;
          }
        }

LABEL_334:
        __break(1u);
LABEL_335:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      outlined init with copy of ResultColumn(v331._object + 128 * v111, &v374);
      v112 = v381;
      if (v381)
      {
        break;
      }

      outlined destroy of ResultColumn(&v374);
LABEL_85:
      if (++v111 == v333)
      {
        goto LABEL_117;
      }
    }

    v41 = v380;
    v42 = BYTE8(v377);

    v113 = swift_isUniquelyReferenced_nonNull_native();
    *&v358 = isUniquelyReferenced_nonNull_native;
    v114 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v112);
    v116 = *(isUniquelyReferenced_nonNull_native + 16);
    v117 = (v115 & 1) == 0;
    v56 = __OFADD__(v116, v117);
    v118 = v116 + v117;
    if (v56)
    {
      __break(1u);
LABEL_316:

      v304 = "hema column names";
      v305 = 0xD000000000000050;
LABEL_317:
      v306 = v321;
      v307 = v304 | 0x8000000000000000;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      v308 = swift_allocError();
      object = v331._object;
      *v310 = v331._countAndFlagsBits;
      *(v310 + 8) = object;
      *(v310 + 16) = v305;
      *(v310 + 24) = v307;
      *(v310 + 32) = 7;
      v327 = v308;
      swift_willThrow();
      outlined destroy of AggregationFunction(&v374);
      v270 = v306;
      goto LABEL_270;
    }

    v43 = v115;
    if (*(isUniquelyReferenced_nonNull_native + 24) < v118)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v118, v113);
      v119 = v358;
      v114 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v112);
      if ((v43 & 1) != (v120 & 1))
      {
        goto LABEL_335;
      }

      countAndFlagsBits = v322;
      if (v43)
      {
        goto LABEL_92;
      }

LABEL_95:
      *(v119 + 8 * (v114 >> 6) + 64) |= 1 << v114;
      v122 = (*(v119 + 48) + 16 * v114);
      *v122 = v41;
      v122[1] = v112;
      *(*(v119 + 56) + v114) = v42;
      outlined destroy of ResultColumn(&v374);
      v123 = *(v119 + 16);
      v56 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v56)
      {
        __break(1u);
        goto LABEL_319;
      }

      *(v119 + 16) = v124;
      goto LABEL_97;
    }

    if (v113)
    {
      v119 = isUniquelyReferenced_nonNull_native;
      countAndFlagsBits = v322;
      if ((v115 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v312 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v125 = static _DictionaryStorage.copy(original:)();
      v119 = v125;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v126 = (v125 + 64);
        v127 = 1 << *(v119 + 32);
        v317 = (isUniquelyReferenced_nonNull_native + 64);
        v128 = (v127 + 63) >> 6;
        if (v119 != isUniquelyReferenced_nonNull_native || v126 >= &v317[8 * v128])
        {
          memmove(v126, v317, 8 * v128);
        }

        v129 = 0;
        *(v119 + 16) = *(isUniquelyReferenced_nonNull_native + 16);
        v130 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
        if (v130 < 64)
        {
          v131 = ~(-1 << v130);
        }

        else
        {
          v131 = -1;
        }

        i = (v131 & *(isUniquelyReferenced_nonNull_native + 64));
        v132 = (v130 + 63) >> 6;
        v133 = i;
        if (!i)
        {
          goto LABEL_107;
        }

        while (1)
        {
          v134 = __clz(__rbit64(v133));
          for (i = ((v133 - 1) & v133); ; i = ((v136 - 1) & v136))
          {
            v137 = v134 | (v129 << 6);
            v138 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v137);
            v140 = *v138;
            v139 = v138[1];
            LOBYTE(v138) = *(*(isUniquelyReferenced_nonNull_native + 56) + v137);
            v141 = (*(v119 + 48) + 16 * v137);
            *v141 = v140;
            v141[1] = v139;
            *(*(v119 + 56) + v137) = v138;

            v133 = i;
            if (i)
            {
              break;
            }

LABEL_107:
            v135 = v129;
            do
            {
              v129 = v135 + 1;
              if (__OFADD__(v135, 1))
              {
                goto LABEL_333;
              }

              if (v129 >= v132)
              {
                goto LABEL_114;
              }

              v136 = *&v317[8 * v129];
              ++v135;
            }

            while (!v136);
            v134 = __clz(__rbit64(v136));
          }
        }
      }

LABEL_114:

      v114 = v312;
      countAndFlagsBits = v322;
      if ((v43 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

LABEL_92:
    v121 = v114;

    *(*(v119 + 56) + v121) = v42;
    outlined destroy of ResultColumn(&v374);
LABEL_97:
    v43 = v398;
    v42 = v321;
    isUniquelyReferenced_nonNull_native = v119;
    v37 = v318;
    goto LABEL_85;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_117:
  v142 = v315;
  v333 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  outlined init with copy of PgQuery_Alias?(v315 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v331._countAndFlagsBits;
  if ((v331._countAndFlagsBits)(v37, 1, Node) == 1)
  {

    outlined destroy of URL?(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v391 = 0u;
    v392 = 0u;
    v393 = 0u;
    v394 = 0u;
    v395 = 0u;
    v396 = 0u;
    v48 = v327;
  }

  else
  {
    outlined destroy of URL?(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v145 = swift_allocObject();
    *(v145 + 16) = v313;
    strcpy((v145 + 32), "select_alias");
    *(v145 + 45) = 0;
    *(v145 + 46) = -5120;
    *(v145 + 48) = isUniquelyReferenced_nonNull_native;
    *&v374 = v314;

    specialized Array.append<A>(contentsOf:)(v145);
    v37 = v374;
    v146 = v333 + v142;
    v147 = v325;
    outlined init with copy of PgQuery_Alias?(v146, v325, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v148 = Node;
    if ((v41)(v147, 1, Node) == 1)
    {
      isUniquelyReferenced_nonNull_native = v326;
      UnknownStorage.init()();
      v42 = *(v148 + 20);
      v48 = v327;
      if (one-time initialization token for defaultInstance != -1)
      {
        goto LABEL_328;
      }

      goto LABEL_124;
    }

    outlined init with take of PgQuery_ParseResult(v147, v326, type metadata accessor for PgQuery_Node);
    v48 = v327;
LABEL_127:
    isUniquelyReferenced_nonNull_native = v324;
    outlined init with copy of PgQuery_ScanResult(v43 + *(v316 + 20), v324, type metadata accessor for SQLTokenInformation);

    v152 = specialized ColumnResolver.init(schemas:)(v151);
    if (v48)
    {
      v327 = v48;
      swift_bridgeObjectRelease_n();
      outlined destroy of PgQuery_ParseResult(isUniquelyReferenced_nonNull_native, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_ParseResult(v326, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_ParseResult(v321, type metadata accessor for PgQuery_SelectStmt);
      v94 = 0;
      v92 = 1;
      v93 = 1;
      goto LABEL_65;
    }

    v154 = v152;
    v155 = v153;
    v48 = 0;

    v41 = v326;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v326, v37, v154, v155, isUniquelyReferenced_nonNull_native, &v358);

    outlined init with copy of VirtualTable.Module(&v358, v371);
    SQLExpression.init(rootNode:)(v371, &v374);
    __swift_destroy_boxed_opaque_existential_0(&v358);
    outlined destroy of PgQuery_ParseResult(isUniquelyReferenced_nonNull_native, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v41, type metadata accessor for PgQuery_Node);
    v393 = v376;
    v394 = v377;
    v395 = v378;
    v396 = v379;
    v391 = v374;
    v392 = v375;
    v42 = v321;
  }

  outlined init with copy of PgQuery_Alias?(&v391, &v374, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  if (*(&v375 + 1))
  {
    v371[2] = v376;
    v371[3] = v377;
    v372 = v378;
    v373 = v379;
    v371[0] = v374;
    v371[1] = v375;
    if (v329)
    {
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      v143 = swift_allocError();
      *v144 = 0u;
      *(v144 + 16) = 0u;
      *(v144 + 32) = 9;
      v327 = v143;
      swift_willThrow();
      outlined destroy of SQLExpression(v371);
      outlined destroy of PgQuery_ParseResult(v42, type metadata accessor for PgQuery_SelectStmt);
      v92 = 1;
      v93 = 1;
      v94 = 1;
      goto LABEL_65;
    }

    isUniquelyReferenced_nonNull_native = v48;
    v156 = MEMORY[0x277D84FA0];
    *&v352 = MEMORY[0x277D84FA0];
    v157 = *(countAndFlagsBits + 16);
    if (v157)
    {
      v158 = countAndFlagsBits + 32;
      do
      {
        outlined init with copy of ResultColumn(v158, &v374);
        v159 = v381;
        if (v381 && *(v378 + 16))
        {
          v160 = v380;

          v37 = &v352;
          specialized Set._Variant.insert(_:)(&v358, v160, v159);
        }

        outlined destroy of ResultColumn(&v374);
        v158 += 128;
        --v157;
      }

      while (v157);
LABEL_138:
      v156 = v352;
    }

    v42 = v372;
    v48 = isUniquelyReferenced_nonNull_native;
    i = *(v372 + 16);
    if (i)
    {
      v161 = 0;
      v162 = v372 + 32;
      v332 = v156 + 7;
      v41 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = 96;
      v333 = v156;
      v324 = v372;
      v325 = v372 + 32;
      while (1)
      {
        if (v161 >= *(v42 + 16))
        {
          goto LABEL_332;
        }

        v329 = v161;
        outlined init with copy of AggregationFunction(v162 + 200 * v161, &v374);
        outlined init with copy of AggregationFunction.AggregationType(&v374, &v358);
        outlined destroy of AggregationFunction(&v374);
        if (v370 > 3u)
        {
          break;
        }

        if (v370 <= 1u)
        {
          goto LABEL_156;
        }

        if (v370 != 2)
        {
LABEL_159:
          v354 = v360;
          v355 = v361;
          v356 = v362;
          v357 = v363;
          v352 = v358;
          v353 = v359;
          outlined init with copy of SQLExpression(&v352, &v346);
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v41);
          v188 = *(v37 + 16);
          v187 = *(v37 + 24);
          v331._object = (v188 + 1);
          if (v188 >= v187 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v187 > 1), v188 + 1, 1, v37);
          }

          outlined destroy of SQLExpression(&v352);
          v174 = v37;
          *(v37 + 16) = v331._object;
          v189 = (v37 + 96 * v188);
          v190 = v347;
          v189[2] = v346;
          v189[3] = v190;
          v191 = v351;
          v193 = v348;
          v192 = v349;
          v189[6] = v350;
          v189[7] = v191;
          v189[4] = v193;
          v189[5] = v192;
          goto LABEL_162;
        }

        v354 = v360;
        v355 = v361;
        v356 = v362;
        v357 = v363;
        v352 = v358;
        v353 = v359;
        v348 = v366;
        v349 = v367;
        v350 = v368;
        v351 = v369;
        v346 = v364;
        v347 = v365;
        outlined init with copy of SQLExpression(&v352, &v340);
        v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v41);
        v165 = *(v163 + 2);
        v164 = *(v163 + 3);
        v37 = v165 + 1;
        if (v165 >= v164 >> 1)
        {
          v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v163);
        }

        *(v163 + 2) = v37;
        v166 = &v163[96 * v165];
        v167 = v341;
        *(v166 + 2) = v340;
        *(v166 + 3) = v167;
        v168 = v342;
        v169 = v343;
        v170 = v345;
        *(v166 + 6) = v344;
        *(v166 + 7) = v170;
        *(v166 + 4) = v168;
        *(v166 + 5) = v169;
        outlined init with copy of PgQuery_Alias?(&v346, &v334, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v335 + 1))
        {
          v171 = v43;
          v342 = v336;
          v343 = v337;
          v344 = v338;
          v345 = v339;
          v340 = v334;
          v341 = v335;
          outlined init with copy of SQLExpression(&v340, &v334);
          v172 = *(v163 + 3);
          v173 = v165 + 2;
          if ((v165 + 2) > (v172 >> 1))
          {
            v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v165 + 2, 1, v163);
          }

          v42 = v324;
          outlined destroy of SQLExpression(&v340);
          outlined destroy of URL?(&v346, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          outlined destroy of SQLExpression(&v352);
          v174 = v163;
          *(v163 + 2) = v173;
          isUniquelyReferenced_nonNull_native = 96;
          v175 = (v174 + 96 * v37);
          v176 = v335;
          v175[2] = v334;
          v175[3] = v176;
          v177 = v339;
          v179 = v336;
          v178 = v337;
          v175[6] = v338;
          v175[7] = v177;
          v175[4] = v179;
          v175[5] = v178;
          v43 = v171;
LABEL_162:
          v156 = v333;
          goto LABEL_165;
        }

        v37 = &_s14BiomeSQLParser13SQLExpressionVSgMd;
        outlined destroy of URL?(&v346, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(&v352);
        outlined destroy of URL?(&v334, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v42 = v324;
        v174 = v163;
        isUniquelyReferenced_nonNull_native = 96;
LABEL_165:
        Node = *(v174 + 16);
        if (Node)
        {
          v42 = 0;
          v194 = v174 + 32;
          v331._countAndFlagsBits = v174;
          v326 = (v174 + 32);
          while (1)
          {
            if (v42 >= *(v174 + 16))
            {
              goto LABEL_331;
            }

            v327 = v48;
            outlined init with copy of SQLExpression(v194 + 96 * v42, &v358);
            v41 = *(&v362 + 1);
            isUniquelyReferenced_nonNull_native = *(*(&v362 + 1) + 16);
            if (isUniquelyReferenced_nonNull_native)
            {
              break;
            }

LABEL_183:
            ++v42;
            outlined destroy of SQLExpression(&v358);
            v174 = v331._countAndFlagsBits;
            v194 = v326;
            v48 = v327;
            v41 = MEMORY[0x277D84F90];
            isUniquelyReferenced_nonNull_native = 96;
            if (v42 == Node)
            {

              v42 = v324;
              goto LABEL_186;
            }
          }

          v48 = 0;
          v331._object = (*(&v362 + 1) + 32);
          while (v48 < *(v41 + 16))
          {
            if (v156[2])
            {
              v195 = (v331._object + 24 * v48);
              v197 = *v195;
              v196 = v195[1];
              v198 = v156[5];
              Hasher.init(_seed:)();
              swift_bridgeObjectRetain_n();
              String.hash(into:)();
              v199 = Hasher._finalize()();
              v200 = -1 << *(v156 + 32);
              v37 = v199 & ~v200;
              if ((*(v332 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
              {
                v201 = ~v200;
                do
                {
                  v202 = (v333[6] + 16 * v37);
                  v203 = *v202 == v197 && v202[1] == v196;
                  if (v203 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    swift_bridgeObjectRelease_n();

                    v204 = v363;
                    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
                    v205 = swift_allocError();
                    *v206 = v204;
                    *(v206 + 16) = 0;
                    *(v206 + 24) = 0;
                    *(v206 + 32) = 3;
                    v327 = v205;
                    swift_willThrow();

                    outlined destroy of SQLExpression(v371);
                    outlined destroy of SQLExpression(&v358);
                    goto LABEL_269;
                  }

                  v37 = (v37 + 1) & v201;
                }

                while (((*(v332 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0);
              }

              swift_bridgeObjectRelease_n();
              v43 = v398;
              countAndFlagsBits = v322;
              v156 = v333;
            }

            if (++v48 == isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_183;
            }
          }

LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          swift_once();
LABEL_124:
          *(isUniquelyReferenced_nonNull_native + v42) = static PgQuery_Node._StorageClass.defaultInstance;
          v149 = v325;
          v150 = (v41)(v325, 1);

          if (v150 != 1)
          {
            outlined destroy of URL?(v149, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          }

          goto LABEL_127;
        }

LABEL_186:
        v161 = v329 + 1;
        v162 = v325;
        if (v329 + 1 == i)
        {
          goto LABEL_189;
        }
      }

      if (v370 > 5u)
      {
        if (v370 != 6)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 1, v41);
          goto LABEL_165;
        }
      }

      else if (v370 == 4)
      {
        goto LABEL_159;
      }

LABEL_156:
      v354 = v360;
      v355 = v361;
      v356 = v362;
      v357 = v363;
      v352 = v358;
      v353 = v359;
      outlined init with copy of SQLExpression(&v352, &v346);
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v41);
      v181 = *(v37 + 16);
      v180 = *(v37 + 24);
      if (v181 >= v180 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v180 > 1), v181 + 1, 1, v37);
      }

      outlined destroy of SQLExpression(&v352);
      v174 = v37;
      *(v37 + 16) = v181 + 1;
      v182 = (v37 + 96 * v181);
      v183 = v347;
      v182[2] = v346;
      v182[3] = v183;
      v184 = v351;
      v186 = v348;
      v185 = v349;
      v182[6] = v350;
      v182[7] = v184;
      v182[4] = v186;
      v182[5] = v185;
      v156 = v333;
      v41 = MEMORY[0x277D84F90];
      goto LABEL_165;
    }

LABEL_189:

    outlined destroy of SQLExpression(v371);
  }

  else
  {
    outlined destroy of URL?(&v374, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  v207 = MEMORY[0x277D84FA0];
  *&v358 = MEMORY[0x277D84FA0];
  v208 = v314;
  v326 = *(v314 + 16);
  if (v326)
  {
    v209 = 0;
    v210 = v314 + 32;
    v325 = v314 + 32;
    do
    {
      v327 = v48;
      if (v209 >= *(v208 + 16))
      {
        goto LABEL_327;
      }

      v211 = v210 + 24 * v209;
      v212 = *(v211 + 8);
      v37 = *(v211 + 16);
      i = (v209 + 1);
      v329 = v212;
      v213 = v37 + 64;
      v214 = 1 << *(v37 + 32);
      if (v214 < 64)
      {
        v215 = ~(-1 << v214);
      }

      else
      {
        v215 = -1;
      }

      isUniquelyReferenced_nonNull_native = v215 & *(v37 + 64);
      v42 = (v214 + 63) >> 6;

      swift_bridgeObjectRetain_n();
      v216 = 0;
      Node = v42;
      v331._countAndFlagsBits = v37 + 64;
      v331._object = v37;
      if (isUniquelyReferenced_nonNull_native)
      {
        while (1)
        {
LABEL_201:
          v218 = (*(v37 + 48) + ((v216 << 10) | (16 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)))));
          v219 = v218[1];
          v43 = v358;
          v332 = *v218;
          v220 = String.lowercased()();
          v221 = *(v43 + 16);
          v333 = v219;
          if (v221)
          {
            v222 = *(v43 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v223 = Hasher._finalize()();
            v224 = -1 << *(v43 + 32);
            v225 = v223 & ~v224;
            if ((*(v43 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225))
            {
              v226 = ~v224;
              while (1)
              {
                v227 = *(v43 + 48) + 16 * v225;
                v228 = *v227 == v220._countAndFlagsBits && *(v227 + 8) == v220._object;
                if (v228 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v225 = (v225 + 1) & v226;
                if (((*(v43 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225) & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
              v230 = swift_allocError();
              v231 = v333;
              *v232 = v332;
              *(v232 + 8) = v231;
              *(v232 + 16) = 0xD000000000000027;
              *(v232 + 24) = 0x80000002553B6A40;
              *(v232 + 32) = 7;
              v327 = v230;
              swift_willThrow();

              goto LABEL_268;
            }
          }

          else
          {
          }

LABEL_212:
          isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;

          v229 = String.lowercased()();
          v41 = v229._object;

          specialized Set._Variant.insert(_:)(&v374, v229._countAndFlagsBits, v229._object);

          countAndFlagsBits = v322;
          v213 = v331._countAndFlagsBits;
          v37 = v331._object;
          v42 = Node;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_197;
          }
        }
      }

      while (1)
      {
LABEL_197:
        v217 = v216 + 1;
        if (__OFADD__(v216, 1))
        {
          goto LABEL_320;
        }

        if (v217 >= v42)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = *(v213 + 8 * v217);
        ++v216;
        if (isUniquelyReferenced_nonNull_native)
        {
          v216 = v217;
          goto LABEL_201;
        }
      }

      v48 = v327;
      v209 = i;
      v208 = v314;
      v207 = MEMORY[0x277D84FA0];
      v210 = v325;
    }

    while (i != v326);
    v333 = v358;
  }

  else
  {
    v333 = MEMORY[0x277D84FA0];
  }

  *&v371[0] = v207;
  v37 = *(countAndFlagsBits + 16);
  if (!v37)
  {
    goto LABEL_248;
  }

  v233 = 0;
  v234 = countAndFlagsBits + 32;
  v332 = v333 + 7;
  Node = countAndFlagsBits + 32;
  v331._countAndFlagsBits = v37;
  do
  {
    if (v233 >= *(countAndFlagsBits + 16))
    {
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
      goto LABEL_334;
    }

    outlined init with copy of ResultColumn(v234 + (v233 << 7), &v374);
    v42 = v381;
    if (v381)
    {
      v327 = v48;
      v235 = *&v371[0];
      v331._object = v380;
      v236 = String.lowercased()();
      if (*(v235 + 16))
      {
        v237 = *(v235 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v238 = Hasher._finalize()();
        v239 = -1 << *(v235 + 32);
        v240 = v238 & ~v239;
        if ((*(v235 + 56 + ((v240 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v240))
        {
          v241 = ~v239;
          while (1)
          {
            v242 = *(v235 + 48) + 16 * v240;
            v243 = *v242 == v236._countAndFlagsBits && *(v242 + 8) == v236._object;
            if (v243 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v240 = (v240 + 1) & v241;
            if (((*(v235 + 56 + ((v240 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v240) & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          v266 = 0xD000000000000021;

          v267 = "lect alias names";
          goto LABEL_267;
        }
      }

      else
      {
      }

LABEL_234:

      v244 = String.lowercased()();
      v41 = v244._object;
      v245 = v333;
      if (v333[2])
      {
        v246 = v333[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v247 = Hasher._finalize()();
        v248 = -1 << *(v245 + 32);
        v249 = v247 & ~v248;
        countAndFlagsBits = v322;
        if ((*(v332 + ((v249 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v249))
        {
          v250 = ~v248;
          while (1)
          {
            v251 = v333[6] + 16 * v249;
            v252 = *v251 == v244._countAndFlagsBits && *(v251 + 8) == v244._object;
            if (v252 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v249 = (v249 + 1) & v250;
            if (((*(v332 + ((v249 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v249) & 1) == 0)
            {
              goto LABEL_245;
            }
          }

LABEL_266:

          v267 = "ave the same name";
          v266 = 0xD000000000000043;
LABEL_267:

          lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
          v268 = swift_allocError();
          *v269 = v331._object;
          *(v269 + 8) = v42;
          *(v269 + 16) = v266;
          *(v269 + 24) = v267 | 0x8000000000000000;
          *(v269 + 32) = 7;
          v327 = v268;
          swift_willThrow();
          outlined destroy of ResultColumn(&v374);
LABEL_268:

          goto LABEL_269;
        }
      }

      else
      {
        countAndFlagsBits = v322;
      }

LABEL_245:

      v253 = String.lowercased()();

      specialized Set._Variant.insert(_:)(&v358, v253._countAndFlagsBits, v253._object);

      outlined destroy of ResultColumn(&v374);
      v48 = v327;
      v234 = Node;
      v37 = v331._countAndFlagsBits;
    }

    else
    {
      outlined destroy of ResultColumn(&v374);
    }

    ++v233;
  }

  while (v233 != v37);
  v207 = *&v371[0];
LABEL_248:
  v254 = *(countAndFlagsBits + 16);
  v332 = v207;
  if (!v254)
  {
LABEL_271:
    v327 = v48;
    v42 = v322;
    isUniquelyReferenced_nonNull_native = *(v322 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_283;
    }

    v46 = MEMORY[0x277D84F90];
    *&v358 = MEMORY[0x277D84F90];
    v37 = &v358;
    specialized ContiguousArray.reserveCapacity(_:)(isUniquelyReferenced_nonNull_native);
    v41 = v42 + 32;
    v48 = v358;
    do
    {
      outlined init with copy of ResultColumn(v41, &v374);
      v42 = v378;

      outlined destroy of ResultColumn(&v374);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = &v358;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 16) + 1, 1);
        v48 = v358;
      }

      countAndFlagsBits = *(v48 + 16);
      v271 = *(v48 + 24);
      v43 = countAndFlagsBits + 1;
      if (countAndFlagsBits >= v271 >> 1)
      {
        v37 = &v358;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v271 > 1), countAndFlagsBits + 1, 1);
        v48 = v358;
      }

      *(v48 + 16) = v43;
      *(v48 + 8 * countAndFlagsBits + 32) = v42;
      v41 += 128;
      --isUniquelyReferenced_nonNull_native;
    }

    while (isUniquelyReferenced_nonNull_native);
    goto LABEL_281;
  }

  v255 = 0;
  countAndFlagsBits += 32;
  v256 = v207 + 7;
  while (2)
  {
    if (v255 >= *(v322 + 16))
    {
      __break(1u);
      goto LABEL_330;
    }

    outlined init with copy of ResultColumn(countAndFlagsBits + (v255 << 7), &v374);
    if (v381)
    {
LABEL_251:
      ++v255;
      outlined destroy of ResultColumn(&v374);
      if (v255 == v254)
      {
        goto LABEL_271;
      }

      continue;
    }

    break;
  }

  v37 = *(&v379 + 1);
  v331._object = v379;
  v257 = String.lowercased()();
  v41 = v257._object;
  v258 = v332[2];
  v327 = v48;
  if (!v258)
  {
    goto LABEL_250;
  }

  v331._countAndFlagsBits = v37;
  v259 = v332;
  v260 = v332[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  v261 = Hasher._finalize()();
  v262 = -1 << *(v259 + 32);
  v37 = v261 & ~v262;
  if (((*(v256 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
  {
LABEL_250:

    v48 = v327;
    goto LABEL_251;
  }

  v263 = ~v262;
  while (1)
  {
    v264 = v332[6] + 16 * v37;
    v265 = *v264 == v257._countAndFlagsBits && *(v264 + 8) == v257._object;
    if (v265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v37 = (v37 + 1) & v263;
    if (((*(v256 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_250;
    }
  }

  lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
  v272 = swift_allocError();
  v273 = v331._countAndFlagsBits;
  *v274 = v331._object;
  *(v274 + 8) = v273;
  *(v274 + 16) = 0xD00000000000003DLL;
  *(v274 + 24) = 0x80000002553B6A70;
  *(v274 + 32) = 7;
  v327 = v272;
  swift_willThrow();

  outlined destroy of ResultColumn(&v374);
LABEL_269:
  v270 = v321;
LABEL_270:
  outlined destroy of PgQuery_ParseResult(v270, type metadata accessor for PgQuery_SelectStmt);
  v92 = 1;
  v93 = 1;
  v94 = 1;
  v43 = v398;
LABEL_65:
  outlined destroy of PgQuery_ParseResult(v43, type metadata accessor for PlanResources);
  result = outlined destroy of FromClause(v382);
  if (v92)
  {
    result = outlined destroy of URL?(&v384, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  if (v93)
  {
  }

  v105 = v320;
  if (v94)
  {
    result = outlined destroy of URL?(&v391, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  if (!v105)
  {
  }

  return result;
}

unint64_t closure #1 in SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SQLTokenInformation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(*(Node - 8) + 64);
  MEMORY[0x28223BE20](Node - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_ScanResult(a1, v18, type metadata accessor for PgQuery_Node);
  v19 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(a3 + *(v19 + 20), v14, type metadata accessor for SQLTokenInformation);

  result = ResultColumn.init(node:schemas:tokenInformation:)(v18, a2, v14, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t closure #3 in SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SQLTokenInformation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(*(Node - 8) + 64);
  MEMORY[0x28223BE20](Node - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_ScanResult(a1, v18, type metadata accessor for PgQuery_Node);
  v19 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(a3 + *(v19 + 20), v14, type metadata accessor for SQLTokenInformation);

  v21 = specialized ColumnResolver.init(schemas:)(v20);
  v23 = v22;

  if (v5)
  {
    outlined destroy of PgQuery_ParseResult(v14, type metadata accessor for SQLTokenInformation);
    result = outlined destroy of PgQuery_ParseResult(v18, type metadata accessor for PgQuery_Node);
    *a4 = v5;
  }

  else
  {
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v18, a2, v21, v23, v14, v26);

    outlined init with copy of VirtualTable.Module(v26, v25);
    SQLExpression.init(rootNode:)(v25, a5);
    __swift_destroy_boxed_opaque_existential_0(v26);
    outlined destroy of PgQuery_ParseResult(v14, type metadata accessor for SQLTokenInformation);
    return outlined destroy of PgQuery_ParseResult(v18, type metadata accessor for PgQuery_Node);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SelectCore.CodingKeys()
{
  v1 = *v0;
  v2 = 1836020326;
  v3 = 0x794270756F7267;
  v4 = 0x676E69766168;
  if (v1 != 3)
  {
    v4 = 0x7463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6572656877;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SelectCore.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SelectCore.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelectCore.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelectCore.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectCore.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10SelectCoreV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10SelectCoreV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  lazy protocol witness table accessor for type FromClause and conformance FromClause();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 200);
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR);
    lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [SQLExpression] and conformance <A> [A], &_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR, lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 304);
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser12ResultColumnVGMd, &_sSay14BiomeSQLParser12ResultColumnVGMR);
    lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResultColumn] and conformance <A> [A], &_sSay14BiomeSQLParser12ResultColumnVGMd, &_sSay14BiomeSQLParser12ResultColumnVGMR, lazy protocol witness table accessor for type ResultColumn and conformance ResultColumn);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MaterializedView.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *MaterializedView.init(create:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  v87 = a2;
  v77 = a3;
  v83 = type metadata accessor for PlanResources(0);
  v4 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v75 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v70 - v8;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v9 = *(*(SelectStmt - 8) + 64);
  MEMORY[0x28223BE20](SelectStmt);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v70 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v73 = *(Node - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](Node);
  v79 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v70 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v81 = *(RangeVar - 8);
  v82 = RangeVar;
  v21 = *(v81 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v70 - v26;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v29 = *(IntoClause - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](IntoClause);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + *(type metadata accessor for PgQuery_CreateTableAsStmt(0) + 20));
  ResultSetCursor.columns.modify(*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind), *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8));
  if (v34 != 24)
  {
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v39 = 0xD000000000000039;
    *(v39 + 8) = 0x80000002553B69E0;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v87, type metadata accessor for PlanResources);
    return outlined destroy of PgQuery_ParseResult(a1, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  v76 = a1;
  outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v27, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v35 = *(v29 + 48);
  v36 = v35(v27, 1, IntoClause);
  v71 = v33;
  if (v36 == 1)
  {
    UnknownStorage.init()();
    v37 = *(IntoClause + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      v69 = *(IntoClause + 20);
      swift_once();
      v37 = v69;
    }

    *&v32[v37] = static PgQuery_IntoClause._StorageClass.defaultInstance;
    v38 = v35(v27, 1, IntoClause);

    if (v38 != 1)
    {
      outlined destroy of URL?(v27, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v27, v32, type metadata accessor for PgQuery_IntoClause);
  }

  outlined init with copy of PgQuery_Alias?(*&v32[*(IntoClause + 20)] + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v41 = v82;
  v42 = *(v81 + 48);
  v43 = v42(v19, 1, v82);
  v44 = v76;
  if (v43 == 1)
  {
    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    *(v23 + 2) = 0;
    *(v23 + 3) = 0xE000000000000000;
    *(v23 + 4) = 0;
    *(v23 + 5) = 0xE000000000000000;
    v23[48] = 0;
    *(v23 + 7) = 0;
    *(v23 + 8) = 0xE000000000000000;
    *(v23 + 18) = 0;
    v45 = &v23[*(v41 + 40)];
    UnknownStorage.init()();
    v46 = *(v41 + 44);
    Alias = type metadata accessor for PgQuery_Alias(0);
    (*(*(Alias - 8) + 56))(&v23[v46], 1, 1, Alias);
    v48 = v42(v19, 1, v41);
    v49 = v85;
    v50 = v71;
    if (v48 != 1)
    {
      outlined destroy of URL?(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v19, v23, type metadata accessor for PgQuery_RangeVar);
    v49 = v85;
    v50 = v71;
  }

  v51 = *(v83 + 20);
  outlined destroy of PgQuery_ParseResult(v32, type metadata accessor for PgQuery_IntoClause);
  v52 = *(v23 + 18);
  outlined destroy of PgQuery_ParseResult(v23, type metadata accessor for PgQuery_RangeVar);
  v53 = v87;
  v54 = SQLTokenInformation.tokenName(location:)(v52);
  if (v55)
  {
    outlined destroy of PgQuery_ParseResult(v53, type metadata accessor for PlanResources);
    return outlined destroy of PgQuery_ParseResult(v44, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  v56 = v78;
  *v77 = v54;
  object = v54._object;
  outlined init with copy of PgQuery_Alias?(v50 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v57 = *(v73 + 48);
  v58 = Node;
  if ((v57)(v56, 1, Node) == 1)
  {
    v59 = v79;
    UnknownStorage.init()();
    v60 = *(v58 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v59 + v60) = static PgQuery_Node._StorageClass.defaultInstance;
    v61 = v78;
    v62 = v57(v78, 1);

    v49 = v85;
    if (v62 != 1)
    {
      outlined destroy of URL?(v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    v63 = v56;
    v59 = v79;
    outlined init with take of PgQuery_ParseResult(v63, v79, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(*(v59 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v49, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v64 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v65 = (*(*(v64 - 8) + 48))(v49, 1, v64);
  v66 = v74;
  if (v65 == 1)
  {
    outlined destroy of URL?(v49, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_26:
    UnknownStorage.init()();
    v67 = *(SelectStmt + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v66 + v67) = static PgQuery_SelectStmt._StorageClass.defaultInstance;

    goto LABEL_29;
  }

  if (swift_getEnumCaseMultiPayload() != 56)
  {
    outlined destroy of PgQuery_ParseResult(v49, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_26;
  }

  outlined init with take of PgQuery_ParseResult(v49, v66, type metadata accessor for PgQuery_SelectStmt);
LABEL_29:
  outlined destroy of PgQuery_ParseResult(v79, type metadata accessor for PgQuery_Node);
  v68 = v75;
  outlined init with copy of PgQuery_ScanResult(v53, v75, type metadata accessor for PlanResources);
  SelectCore.init(select:resources:)(v66, v68, v86);
  outlined destroy of PgQuery_ParseResult(v53, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v76, type metadata accessor for PgQuery_CreateTableAsStmt);
  return memcpy(&v77[1], v86, 0x138uLL);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MaterializedView.CodingKeys()
{
  if (*v0)
  {
    result = 0x7463656C6573;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterializedView.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterializedView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterializedView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterializedView.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser16MaterializedViewV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser16MaterializedViewV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v14[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14[14] = 1;
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LogicalPlan.sql.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return v1;
}

uint64_t LogicalPlan.documentation.getter()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return v1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LogicalPlan.CodingKeys()
{
  v1 = 7106931;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6F437463656C6573;
  }

  if (*v0)
  {
    v1 = 0x746E656D75636F64;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LogicalPlan.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LogicalPlan.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogicalPlan.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser11LogicalPlanV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser11LogicalPlanV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LogicalPlanType(v3, v17);
  if (v17[328] == 1)
  {
    memcpy(v16, v17, sizeof(v16));
    v18 = 2;
    lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of MaterializedView(v16);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v16, v17, 0x138uLL);
    v18 = 3;
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      outlined destroy of SelectCore(v16);
LABEL_7:
      v11 = v3[42];
      v12 = v3[43];
      v17[0] = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      v13 = v3[44];
      v14 = v3[45];
      v17[0] = 1;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      return (*(v6 + 8))(v9, v5);
    }

    outlined destroy of SelectCore(v16);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LogicalPlanType.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6F437463656C6573;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LogicalPlanType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437463656C6573 && a2 == 0xEA00000000006572;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002553B6960 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.MaterializedViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.MaterializedViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LogicalPlanType.MaterializedViewCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.SelectCoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.SelectCoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogicalPlanType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO26MaterializedViewCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO26MaterializedViewCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO20SelectCoreCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO20SelectCoreCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LogicalPlanType(v24, v26);
  v16 = (v11 + 8);
  if (v26[328])
  {
    memcpy(v25, v26, sizeof(v25));
    v27 = 1;
    lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView();
    v17 = v23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v5, v17);
    outlined destroy of MaterializedView(v25);
  }

  else
  {
    memcpy(v25, v26, 0x138uLL);
    v27 = 0;
    lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    v18 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v9, v18);
    outlined destroy of SelectCore(v25);
  }

  return (*v16)(v14, v10);
}

void SQLParseResult.init(sql:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  v6 = *(*(ScanResult - 8) + 64);
  (MEMORY[0x28223BE20])();
  v108 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for CharacterSet();
  v109 = *(v112 - 8);
  v8 = *(v109 + 64);
  (MEMORY[0x28223BE20])();
  v111 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v107 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  v14 = *(*(ParseResult - 8) + 64);
  MEMORY[0x28223BE20](ParseResult);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SQLParseResult(0);
  v18 = *(v17 + 28);
  v110 = a3;
  v19 = (a3 + v18);
  *v19 = a1;
  v19[1] = a2;
  v114 = a1;
  String.utf8CString.getter();
  v118 = a2;

  pg_query_parse_protobuf(&v115);
  v20 = v115;
  v21 = *(&v115 + 1);
  v22 = v116;

  if (*(&v22 + 1))
  {
    if (**(&v22 + 1))
    {
      v23 = String.init(cString:)();
      v25 = v24;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v26 = v118;
      *v27 = v114;
      *(v27 + 8) = v26;
      *(v27 + 16) = v23;
      *(v27 + 24) = v25;
      *(v27 + 32) = 0;
      swift_willThrow();
LABEL_17:

      return;
    }

    goto LABEL_42;
  }

  v103 = v22;
  v104 = v17;
  v105 = v20;
  if (!v21)
  {
    goto LABEL_43;
  }

  v28 = v21;
  v29 = v21;
  v30 = v105;
  v31 = specialized Data.init(bytes:count:)(v28, v105);
  v33 = v32;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  outlined copy of Data._Representation(v31, v32);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult);
  v34 = v113;
  Message.init(serializedData:extensions:partial:options:)();
  if (v34)
  {

    outlined consume of Data._Representation(v31, v33);
    goto LABEL_17;
  }

  v113 = v31;
  v35 = v110;
  outlined init with take of PgQuery_ParseResult(v16, v110, type metadata accessor for PgQuery_ParseResult);
  deparse_protobuf = pg_query_deparse_protobuf(v30, v29);
  if (v37)
  {
    deparse_protobuf = *v37;
    if (*v37)
    {
LABEL_15:
      v49 = String.init(cString:)();
      v51 = v50;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v53 = v118;
      *v52 = v114;
      *(v52 + 8) = v53;
      *(v52 + 16) = v49;
      *(v52 + 24) = v51;
LABEL_16:
      *(v52 + 32) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v113, v33);
      outlined destroy of PgQuery_ParseResult(v35, type metadata accessor for PgQuery_ParseResult);
      goto LABEL_17;
    }

    __break(1u);
  }

  v99 = v37;
  if (!deparse_protobuf)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v38 = deparse_protobuf;
  v97 = v29;
  v39 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v98 = v38;
  v40 = [v39 initWithCString:v38 encoding:4];
  if (!v40)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = v40;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v100 = v44;
  v45 = String.utf8CString.getter();
  pg_query_split_with_parser((v45 + 32), &v115);
  v46 = v115;
  v47 = DWORD2(v115);
  v48 = v116;

  if (*(&v48 + 1))
  {
    if (!**(&v48 + 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  v101 = v42;
  v96 = v48;
  v102 = v46;
  if (*(*(v35 + 8) + 16) != v47)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v76 = v118;
    *v52 = v114;
    *(v52 + 8) = v76;
    *(v52 + 16) = 0xD000000000000042;
    *(v52 + 24) = 0x80000002553B68F0;
    goto LABEL_16;
  }

  if ((v47 & 0x80000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v95 = v33;
  v94 = v47;
  if (v47)
  {
    v109 += 8;
    v54 = MEMORY[0x277D84F90];
    v55 = v47;
    v56 = v102;
    while (v102)
    {
      v57 = *v56;
      if (!*v56)
      {
        goto LABEL_44;
      }

      v58 = v57[1];
      v59 = *v57;
      v60 = String.index(_:offsetBy:)();
      if (__OFADD__(v59, v58))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (String.index(_:offsetBy:)() >> 14 < v60 >> 14)
      {
        goto LABEL_40;
      }

      v61 = String.subscript.getter();
      v62 = MEMORY[0x259C32B00](v61);
      v64 = v63;

      *&v115 = v62;
      *(&v115 + 1) = v64;
      v65 = v111;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v66 = StringProtocol.trimmingCharacters(in:)();
      v67 = v65;
      v68 = v66;
      v70 = v69;
      (*v109)(v67, v112);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = *(v54 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v54 = v74;
      }

      v71 = *(v54 + 16);
      if (v71 >= *(v54 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v54 = v75;
      }

      *(v54 + 16) = v71 + 1;
      v72 = v54 + 16 * v71;
      *(v72 + 32) = v68;
      *(v72 + 40) = v70;
      ++v56;
      if (!--v55)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_45;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_34:
  *(v110 + *(v104 + 24)) = v54;
  v77 = v114;
  String.utf8CString.getter();

  pg_query_scan();
  v78 = v115;
  v79 = *(&v115 + 1);
  v80 = v116;

  if (*(&v80 + 1))
  {
    if (**(&v80 + 1))
    {

      v81 = String.init(cString:)();
      v83 = v82;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v84 = v118;
      *v85 = v77;
      *(v85 + 8) = v84;
      *(v85 + 16) = v81;
      *(v85 + 24) = v83;
      *(v85 + 32) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v113, v95);
      v86 = v104;
      v91 = v110;
      outlined destroy of PgQuery_ParseResult(v110, type metadata accessor for PgQuery_ParseResult);
      v92 = *(v91 + *(v86 + 24));

      goto LABEL_17;
    }

    goto LABEL_49;
  }

  v114 = v80;

  if (v79)
  {

    v87 = specialized Data.init(bytes:count:)(v79, v78);
    v89 = v88;
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    outlined copy of Data._Representation(v87, v88);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult);
    v90 = v108;
    Message.init(serializedData:extensions:partial:options:)();
    outlined init with take of PgQuery_ParseResult(v90, v110 + *(v104 + 20), type metadata accessor for PgQuery_ScanResult);
    LODWORD(v115) = v78;
    *(&v115 + 1) = v79;
    v116 = v114;
    pg_query_free_scan_result(&v115);
    *&v115 = v102;
    DWORD2(v115) = v94;
    v116 = v96;
    pg_query_free_split_result(&v115);
    pg_query_free_deparse_result(v98, v99);
    LODWORD(v115) = v105;
    *(&v115 + 1) = v97;
    v116 = v103;
    pg_query_free_protobuf_parse_result(&v115);
    outlined consume of Data._Representation(v113, v95);
    outlined consume of Data._Representation(v87, v89);
    return;
  }

LABEL_50:
  __break(1u);
}

uint64_t SQLParseResult.plans(with:)(uint64_t *a1)
{
  v3 = type metadata accessor for PlanResources(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SQLTokenInformation(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v14 = type metadata accessor for SQLParseResult(0);
  outlined init with copy of PgQuery_ScanResult(v1 + v14[5], v12, type metadata accessor for PgQuery_ScanResult);
  v15 = (v1 + v14[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = &v12[*(v9 + 28)];
  *v18 = v16;
  v18[1] = v17;
  outlined init with copy of PgQuery_ScanResult(v12, v7 + *(v4 + 28), type metadata accessor for SQLTokenInformation);
  *v7 = v13;
  v19 = *(v1 + 8);
  v20 = *(v1 + v14[6]);
  v24 = v12;
  v25 = v7;

  RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser15PgQuery_RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n(v19, v20, partial apply for closure #1 in SQLParseResult.plans(with:), v23);

  outlined destroy of PgQuery_ParseResult(v7, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v12, type metadata accessor for SQLTokenInformation);
  return RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n;
}

uint64_t closure #1 in SQLParseResult.plans(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v121 = a5;
  v133 = a4;
  v114 = a6;
  v115 = a3;
  v113 = a2;
  v139 = a1;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v7 = *(*(SelectStmt - 8) + 64);
  v8 = MEMORY[0x28223BE20](SelectStmt - 8);
  v120 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v130 = &v112 - v10;
  v11 = type metadata accessor for PlanResources(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v119 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v112 - v15;
  TableAsStmt = type metadata accessor for PgQuery_CreateTableAsStmt(0);
  v17 = *(*(TableAsStmt - 8) + 64);
  v18 = MEMORY[0x28223BE20](TableAsStmt - 8);
  v116 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v117 = &v112 - v20;
  v141 = type metadata accessor for CharacterSet();
  v138 = *(v141 - 8);
  v21 = *(v138 + 64);
  MEMORY[0x28223BE20](v141);
  v140 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v24 = *(ScanToken - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](ScanToken - 8);
  v127 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = (&v112 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v112 - v32;
  Node = type metadata accessor for PgQuery_Node(0);
  v35 = *(Node - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](Node);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v39 = *(*(v123 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v123);
  v122 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v125 = &v112 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v126 = &v112 - v45;
  MEMORY[0x28223BE20](v44);
  v132 = &v112 - v46;
  v139 = *&v139[*(type metadata accessor for PgQuery_RawStmt(0) + 20)];
  outlined init with copy of PgQuery_Alias?(&v139[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt], v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v47 = *(v35 + 48);
  if ((v47)(v33, 1, Node) == 1)
  {
    UnknownStorage.init()();
    v48 = *(Node + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
LABEL_55:
      v111 = v48;
      swift_once();
      v48 = v111;
    }

    *&v48[v38] = static PgQuery_Node._StorageClass.defaultInstance;
    v49 = (v47)(v33, 1, Node);

    if (v49 != 1)
    {
      outlined destroy of URL?(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v33, v38, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(*(v38 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v132, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined destroy of PgQuery_ParseResult(v38, type metadata accessor for PgQuery_Node);
  v50 = *(v133 + 8);
  v33 = *(v50 + 16);
  if (!v33)
  {
LABEL_36:
    v87 = 0;
LABEL_37:
    v88 = v126;
    outlined init with copy of PgQuery_Alias?(v132, v126, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v89 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
    if ((*(*(v89 - 8) + 48))(v88, 1, v89) == 1)
    {
      v90 = v88;

LABEL_47:
      v143[0]._countAndFlagsBits = 0;
      v143[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(90);
      MEMORY[0x259C32B90](0xD000000000000058, 0x80000002553B6980);
      v103 = v132;
      outlined init with copy of PgQuery_Alias?(v132, v122, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      v104 = String.init<A>(describing:)();
      MEMORY[0x259C32B90](v104);

      countAndFlagsBits = v143[0]._countAndFlagsBits;
      object = v143[0]._object;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      *v107 = countAndFlagsBits;
      *(v107 + 8) = object;
      *(v107 + 16) = 0;
      *(v107 + 24) = 0;
      *(v107 + 32) = 1;
      swift_willThrow();
      v102 = v103;
      goto LABEL_48;
    }

    v90 = v88;
    outlined init with copy of PgQuery_Alias?(v88, v125, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 56)
    {
      v98 = v130;
      outlined init with take of PgQuery_ParseResult(v125, v130, type metadata accessor for PgQuery_SelectStmt);
      v99 = v120;
      outlined init with copy of PgQuery_ScanResult(v98, v120, type metadata accessor for PgQuery_SelectStmt);
      v100 = v119;
      outlined init with copy of PgQuery_ScanResult(v121, v119, type metadata accessor for PlanResources);
      v101 = v135;
      SelectCore.init(select:resources:)(v99, v100, v143);
      if (v101)
      {

        v96 = type metadata accessor for PgQuery_SelectStmt;
        v97 = v98;
        goto LABEL_45;
      }

      outlined destroy of PgQuery_ParseResult(v98, type metadata accessor for PgQuery_SelectStmt);
      outlined destroy of URL?(v132, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      LOBYTE(v143[20]._object) = 0;
    }

    else
    {
      if (EnumCaseMultiPayload != 90)
      {

        outlined destroy of PgQuery_ParseResult(v125, type metadata accessor for PgQuery_Node.OneOf_Node);
        goto LABEL_47;
      }

      v92 = v117;
      outlined init with take of PgQuery_ParseResult(v125, v117, type metadata accessor for PgQuery_CreateTableAsStmt);
      v93 = v116;
      outlined init with copy of PgQuery_ScanResult(v92, v116, type metadata accessor for PgQuery_CreateTableAsStmt);
      v94 = v118;
      outlined init with copy of PgQuery_ScanResult(v121, v118, type metadata accessor for PlanResources);
      v95 = v135;
      MaterializedView.init(create:resources:)(v93, v94, v143);
      if (v95)
      {

        v96 = type metadata accessor for PgQuery_CreateTableAsStmt;
        v97 = v92;
LABEL_45:
        outlined destroy of PgQuery_ParseResult(v97, v96);
        v102 = v132;
LABEL_48:
        outlined destroy of URL?(v102, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
        v108 = v90;
        return outlined destroy of URL?(v108, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      }

      outlined destroy of PgQuery_ParseResult(v92, type metadata accessor for PgQuery_CreateTableAsStmt);
      outlined destroy of URL?(v132, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      LOBYTE(v143[20]._object) = 1;
    }

    v109 = v114;
    memcpy(v114, v143, 0x149uLL);
    v110 = v115;
    v109[42] = v113;
    v109[43] = v110;
    v109[44] = v33;
    v109[45] = v87;

    v108 = v90;
    return outlined destroy of URL?(v108, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v38 = 0;
  v48 = v139;
  v51 = *&v139[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation];
  v136 = *(v133 + 8);
  while (1)
  {
    if (v38 >= *(v50 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    Node = v50 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v47 = *(v24 + 72);
    outlined init with copy of PgQuery_ScanResult(Node + v47 * v38, v29, type metadata accessor for PgQuery_ScanToken);
    v52 = *v29;
    outlined destroy of PgQuery_ParseResult(v29, type metadata accessor for PgQuery_ScanToken);
    if (v52 >= v51)
    {
      break;
    }

    ++v38;
    v50 = v136;
    if (v33 == v38)
    {
      goto LABEL_35;
    }
  }

  v128 = v47;
  v129 = Node;
  v144 = MEMORY[0x277D84F90];
  result = v136;
  Node = *(v136 + 16);
  v54 = v127;
  if (Node >= v38)
  {
    v55 = v38;

    if (Node != v38)
    {
      v139 = (v138 + 8);
      v38 = v130;
      v124 = Node;
      while (1)
      {
        v134 = v55;
        outlined init with copy of PgQuery_ScanResult(v129 + v55 * v128, v54, type metadata accessor for PgQuery_ScanToken);
        v57 = *(v54 + 1);
        if (*(v54 + 16) != 1 || (v57 - 37) >= 2)
        {
          break;
        }

        PgQuery_Token.rawValue.getter(v57, 1);
        v59 = v133 + *(type metadata accessor for SQLTokenInformation(0) + 20);
        v29 = *v59;
        v33 = *(v59 + 8);
        v60 = *v54;
        v24 = String.index(_:offsetBy:)();
        v61 = v54[1];
        if (String.index(_:offsetBy:)() >> 14 < v24 >> 14)
        {
          goto LABEL_54;
        }

        v62 = String.subscript.getter();
        v63 = MEMORY[0x259C32B00](v62);
        v65 = v64;

        v143[0]._countAndFlagsBits = v63;
        v143[0]._object = v65;
        v66 = v140;
        static CharacterSet.whitespaces.getter();
        v138 = lazy protocol witness table accessor for type String and conformance String();
        v67 = StringProtocol.trimmingCharacters(in:)();
        v69 = v68;
        v137 = *v139;
        v137(v66, v141);

        v143[0]._countAndFlagsBits = 10;
        v143[0]._object = 0xE100000000000000;
        MEMORY[0x28223BE20](v70);
        *(&v112 - 2) = v143;
        v71 = v135;
        v47 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v112 - 4), v67, v69);
        v72 = *(v47 + 16);
        v135 = v71;
        if (v72)
        {
          v142 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
          v73 = v142;
          v131 = v47;
          v74 = (v47 + 56);
          do
          {
            v75 = *(v74 - 3);
            v76 = *(v74 - 2);
            v78 = *(v74 - 1);
            v77 = *v74;

            if (Substring.distance(from:to:)())
            {
              v143[0]._countAndFlagsBits = MEMORY[0x259C32B00](v75, v76, v78, v77);
              v143[0]._object = v79;
              v80 = v140;
              static CharacterSet.whitespaces.getter();
              v81 = StringProtocol.trimmingCharacters(in:)();
              v83 = v82;

              v137(v80, v141);
            }

            else
            {

              v83 = 0xE100000000000000;
              v81 = 10;
            }

            v142 = v73;
            v47 = *(v73 + 16);
            v84 = *(v73 + 24);
            if (v47 >= v84 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v47 + 1, 1);
              v73 = v142;
            }

            *(v73 + 16) = v47 + 1;
            v85 = v73 + 16 * v47;
            *(v85 + 32) = v81;
            *(v85 + 40) = v83;
            v74 += 4;
            --v72;
          }

          while (v72);

          v38 = v130;
          v54 = v127;
          Node = v124;
        }

        else
        {

          v73 = MEMORY[0x277D84F90];
        }

        v56 = v134 + 1;
        specialized Array.append<A>(contentsOf:)(v73);
        outlined destroy of PgQuery_ParseResult(v54, type metadata accessor for PgQuery_ScanToken);
        v55 = v56;
        if (v56 == Node)
        {
          goto LABEL_32;
        }
      }

      outlined destroy of PgQuery_ParseResult(v54, type metadata accessor for PgQuery_ScanToken);
    }

LABEL_32:

    if (*(v144 + 16))
    {
      v143[0]._countAndFlagsBits = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v33 = BidirectionalCollection<>.joined(separator:)();
      v87 = v86;

      goto LABEL_37;
    }

LABEL_35:
    v33 = 0;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser15PgQuery_RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, char *, uint64_t, uint64_t), uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  v63 = *(RawStmt - 8);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x28223BE20](RawStmt - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
  v12 = *(*(v60 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v60);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v56 = &v54 - v18;
  v64 = a1;
  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v20 >= v19)
  {
    v21 = *(a1 + 16);
  }

  else
  {
    v21 = *(a2 + 16);
  }

  v68 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v21;
  v66 = v68;
  v58 = v20;
  v59 = v19;
  v55 = a2;
  if (v21)
  {
    v24 = 0;
    v25 = (a2 + 40);
    while (v19 != v24)
    {
      result = outlined init with copy of PgQuery_ScanResult(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v24, v10, type metadata accessor for PgQuery_RawStmt);
      if (v20 == v24)
      {
        goto LABEL_30;
      }

      v26 = v10;
      v27 = v23;
      v28 = *(v25 - 1);
      v29 = *v25;
      v30 = &v15[*(v60 + 48)];
      v31 = v26;
      outlined init with take of PgQuery_ParseResult(v26, v15, type metadata accessor for PgQuery_RawStmt);
      *v30 = v28;
      *(v30 + 1) = v29;

      v32 = v65;
      v61(v67, v15, v28, v29);
      v65 = v32;
      if (v32)
      {

        return outlined destroy of URL?(v15, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      }

      outlined destroy of URL?(v15, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      v33 = v66;
      v68 = v66;
      v35 = *(v66 + 16);
      v34 = *(v66 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v33 = v68;
      }

      ++v24;
      *(v33 + 16) = v35 + 1;
      v66 = v33;
      result = memcpy((v33 + 368 * v35 + 32), v67, 0x170uLL);
      v25 += 2;
      v23 = v27;
      v36 = v27 == v24;
      v20 = v58;
      v19 = v59;
      v10 = v31;
      if (v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_13:
    if (v19 <= v20)
    {
      return v66;
    }

    v37 = (v55 + 16 * v23 + 40);
    v38 = &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd;
    v39 = v65;
    while (v23 < v19)
    {
      result = outlined init with copy of PgQuery_ScanResult(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v23, v57, type metadata accessor for PgQuery_RawStmt);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_32;
      }

      if (v20 == v23)
      {
        outlined destroy of PgQuery_ParseResult(v57, type metadata accessor for PgQuery_RawStmt);
        return v66;
      }

      if (v23 >= v20)
      {
        goto LABEL_33;
      }

      v55 = v23 + 1;
      v65 = v23;
      v41 = *(v37 - 1);
      v40 = *v37;
      v42 = v60;
      v43 = v38;
      v44 = v54;
      v45 = (v54 + *(v60 + 48));
      outlined init with take of PgQuery_ParseResult(v57, v54, type metadata accessor for PgQuery_RawStmt);
      *v45 = v41;
      v45[1] = v40;
      v46 = v44;
      v38 = v43;
      v47 = v56;
      outlined init with take of (PgQuery_RawStmt, String)(v46, v56, v43, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      v48 = (v47 + *(v42 + 48));
      v49 = *v48;
      v50 = v48[1];

      v61(v67, v47, v49, v50);
      if (v39)
      {
        outlined destroy of URL?(v56, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMd, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      }

      outlined destroy of URL?(v56, v43, &_s14BiomeSQLParser15PgQuery_RawStmtV_SStMR);
      v51 = v66;
      v68 = v66;
      v53 = *(v66 + 16);
      v52 = *(v66 + 24);
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v51 = v68;
      }

      v23 = v65 + 1;
      v37 += 2;
      *(v51 + 16) = v53 + 1;
      v66 = v51;
      result = memcpy((v51 + 368 * v53 + 32), v67, 0x170uLL);
      v19 = v59;
      v39 = 0;
      v20 = v58;
      if (v55 == v59)
      {
        return v66;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void parse(sql:catalog:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v127 = type metadata accessor for CharacterSet();
  v125 = *(v127 - 8);
  v6 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  v8 = *(*(ScanResult - 8) + 64);
  MEMORY[0x28223BE20](ScanResult);
  v124 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v122 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v108 - v14;
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  v15 = *(*(ParseResult - 8) + 64);
  MEMORY[0x28223BE20](ParseResult);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SQLParseResult(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v108 - v24;
  v121 = *a3;
  v26 = &v22[*(v23 + 28)];
  *v26 = a1;
  *(v26 + 1) = a2;
  v131 = a1;
  String.utf8CString.getter();
  v135 = a2;

  pg_query_parse_protobuf(&v132);
  v27 = v132;
  v28 = *(&v132 + 1);
  v29 = v133;

  if (*(&v29 + 1))
  {
    if (**(&v29 + 1))
    {
      v30 = String.init(cString:)();
      v32 = v31;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v33 = v135;
      *v34 = v131;
      *(v34 + 8) = v33;
      *(v34 + 16) = v30;
      *(v34 + 24) = v32;
      *(v34 + 32) = 0;
      swift_willThrow();
      return;
    }

    goto LABEL_44;
  }

  v119 = v22;
  v120 = v27;
  v116 = v29;
  v117 = v25;
  v118 = v18;
  if (!v28)
  {
    goto LABEL_45;
  }

  v35 = v17;
  v36 = v120;
  v37 = specialized Data.init(bytes:count:)(v28, v120);
  v39 = v38;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  outlined copy of Data._Representation(v37, v38);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult);
  v40 = v128;
  Message.init(serializedData:extensions:partial:options:)();
  v41 = v135;
  if (v40)
  {
    outlined consume of Data._Representation(v37, v39);
LABEL_31:

    return;
  }

  v42 = v119;
  outlined init with take of PgQuery_ParseResult(v35, v119, type metadata accessor for PgQuery_ParseResult);
  deparse_protobuf = pg_query_deparse_protobuf(v36, v28);
  if (v44)
  {
    if (!*v44)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v45 = String.init(cString:)();
    v47 = v46;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v48 = v131;
    *(v48 + 8) = v41;
    *(v48 + 16) = v45;
    *(v48 + 24) = v47;
    *(v48 + 32) = 0;
    swift_willThrow();
    goto LABEL_30;
  }

  v114 = 0;
  if (!deparse_protobuf)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v49 = deparse_protobuf;
  v115 = v39;
  v113 = v28;
  v50 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v112 = v49;
  v51 = [v50 initWithCString:v49 encoding:4];
  if (!v51)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v52 = v51;
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  ParseResult = v55;
  v56 = String.utf8CString.getter();
  pg_query_split_with_parser((v56 + 32), &v132);
  v57 = v132;
  v58 = DWORD2(v132);
  v59 = v133;

  if (*(&v59 + 1))
  {
    v39 = v115;
    if (!**(&v59 + 1))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v60 = String.init(cString:)();
    v62 = v61;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v63 = v135;
    *v64 = v131;
    *(v64 + 8) = v63;
    *(v64 + 16) = v60;
    *(v64 + 24) = v62;
    *(v64 + 32) = 0;
    swift_willThrow();
    v42 = v119;
    goto LABEL_30;
  }

  v128 = v53;
  v129 = v57;
  v42 = v119;
  if (*(*(v119 + 1) + 16) != v58)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v88 = v135;
    *v89 = v131;
    *(v89 + 8) = v88;
    *(v89 + 16) = 0xD000000000000042;
    *(v89 + 24) = 0x80000002553B68F0;
    *(v89 + 32) = 0;
    swift_willThrow();
    v39 = v115;
LABEL_30:

    outlined consume of Data._Representation(v37, v39);
    outlined destroy of PgQuery_ParseResult(v42, type metadata accessor for PgQuery_ParseResult);
    goto LABEL_31;
  }

  v110 = 0;
  if ((v58 & 0x80000000) != 0)
  {
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

  v111 = v37;
  v65 = v129;
  v108 = v59;
  v109 = v58;
  if (v58)
  {
    v125 += 8;
    v66 = MEMORY[0x277D84F90];
    v67 = v58;
    v68 = v129;
    while (v65)
    {
      v69 = *v68;
      if (!*v68)
      {
        goto LABEL_46;
      }

      v70 = v69[1];
      v71 = *v69;
      v72 = String.index(_:offsetBy:)();
      if (__OFADD__(v71, v70))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (String.index(_:offsetBy:)() >> 14 < v72 >> 14)
      {
        goto LABEL_42;
      }

      v73 = String.subscript.getter();
      v74 = MEMORY[0x259C32B00](v73);
      v76 = v75;

      *&v132 = v74;
      *(&v132 + 1) = v76;
      v77 = v126;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v78 = StringProtocol.trimmingCharacters(in:)();
      v79 = v77;
      v80 = v78;
      v82 = v81;
      (*v125)(v79, v127);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = *(v66 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v66 = v86;
      }

      v83 = *(v66 + 16);
      if (v83 >= *(v66 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v66 = v87;
      }

      *(v66 + 16) = v83 + 1;
      v84 = v66 + 16 * v83;
      *(v84 + 32) = v80;
      *(v84 + 40) = v82;
      ++v68;
      --v67;
      v65 = v129;
      if (!v67)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_47;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_33:
  v90 = v119;
  *&v119[*(v118 + 24)] = v66;
  v91 = v131;
  String.utf8CString.getter();

  pg_query_scan();
  v92 = v132;
  v93 = *(&v132 + 1);
  v94 = v133;

  if (*(&v94 + 1))
  {
    if (!**(&v94 + 1))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v95 = String.init(cString:)();
    v97 = v96;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v98 = v135;
    *v99 = v91;
    *(v99 + 8) = v98;
    *(v99 + 16) = v95;
    *(v99 + 24) = v97;
    *(v99 + 32) = 0;
    swift_willThrow();

    outlined consume of Data._Representation(v111, v115);
    v100 = v118;
    goto LABEL_39;
  }

  if (v93)
  {

    v101 = specialized Data.init(bytes:count:)(v93, v92);
    v103 = v102;
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    outlined copy of Data._Representation(v101, v102);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult);
    v104 = v124;
    v105 = v110;
    Message.init(serializedData:extensions:partial:options:)();
    if (!v105)
    {
      outlined init with take of PgQuery_ParseResult(v104, v90 + *(v118 + 20), type metadata accessor for PgQuery_ScanResult);
      LODWORD(v132) = v92;
      *(&v132 + 1) = v93;
      v133 = v94;
      pg_query_free_scan_result(&v132);
      *&v132 = v129;
      DWORD2(v132) = v109;
      v133 = v108;
      pg_query_free_split_result(&v132);
      pg_query_free_deparse_result(v112, v114);
      LODWORD(v132) = v120;
      *(&v132 + 1) = v113;
      v133 = v116;
      pg_query_free_protobuf_parse_result(&v132);
      outlined consume of Data._Representation(v111, v115);
      outlined consume of Data._Representation(*(&v94 + 1), v103);
      v107 = v117;
      outlined init with take of PgQuery_ParseResult(v90, v117, type metadata accessor for SQLParseResult);
      *&v132 = v121;
      SQLParseResult.plans(with:)(&v132);
      outlined destroy of PgQuery_ParseResult(v107, type metadata accessor for SQLParseResult);
      return;
    }

    outlined consume of Data._Representation(v111, v115);
    outlined consume of Data._Representation(v101, v103);
    v100 = v118;
LABEL_39:
    outlined destroy of PgQuery_ParseResult(v90, type metadata accessor for PgQuery_ParseResult);
    v106 = *(v90 + *(v100 + 24));

    goto LABEL_31;
  }

LABEL_53:
  __break(1u);
}

void *specialized ContiguousArray.reserveCapacity(_:)(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *(*(v8 + 56) + v16) = v25;
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v40 = *v25;
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v40;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 > v10 && (a4 & 1) != 0)
  {
    v12 = *v4;
    goto LABEL_83;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v13 = static _SetStorage.resize(original:capacity:move:)();
    v12 = v13;
    if (*(v9 + 16))
    {
      v96 = v4;
      v14 = v9;
      v15 = 0;
      v98 = v14;
      v18 = *(v14 + 56);
      v17 = (v14 + 56);
      v16 = v18;
      v19 = 1 << *(v17 - 24);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & v16;
      v22 = (v19 + 63) >> 6;
      v23 = v13 + 56;
      while (v21)
      {
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_19:
        v29 = (*(v98 + 48) + 16 * (v26 | (v15 << 6)));
        v30 = *v29;
        v31 = v29[1];
        v32 = *(v12 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v12 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
        {
          v37 = 0;
          v38 = (63 - v34) >> 6;
          while (++v36 != v38 || (v37 & 1) == 0)
          {
            v39 = v36 == v38;
            if (v36 == v38)
            {
              v36 = 0;
            }

            v37 |= v39;
            v40 = *(v23 + 8 * v36);
            if (v40 != -1)
            {
              v24 = __clz(__rbit64(~v40)) + (v36 << 6);
              goto LABEL_11;
            }
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v24 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v25 = (*(v12 + 48) + 16 * v24);
        *v25 = v30;
        v25[1] = v31;
        ++*(v12 + 16);
      }

      v27 = v15;
      while (1)
      {
        v15 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_86;
        }

        if (v15 >= v22)
        {
          break;
        }

        v28 = v17[v15];
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v21 = (v28 - 1) & v28;
          goto LABEL_19;
        }
      }

      v58 = 1 << *(v98 + 32);
      if (v58 >= 64)
      {
        bzero(v17, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v17 = -1 << v58;
      }

      v5 = v96;
      *(v98 + 16) = 0;
    }

    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  if (v11 <= v10)
  {
    v59 = static _SetStorage.resize(original:capacity:move:)();
    v12 = v59;
    if (!*(v9 + 16))
    {
LABEL_73:

LABEL_75:
      *v5 = v12;
      v87 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v88 = -1 << *(v12 + 32);
      a3 = result & ~v88;
      if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
      {
        v89 = ~v88;
        while (1)
        {
          v90 = (*(v12 + 48) + 16 * a3);
          if (*v90 == v8 && v90[1] == a2)
          {
            goto LABEL_91;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            goto LABEL_91;
          }

          a3 = (a3 + 1) & v89;
          if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_83;
    }

    v97 = v4;
    v60 = v9;
    v61 = 0;
    v99 = v60;
    v64 = *(v60 + 56);
    v63 = v60 + 56;
    v62 = v64;
    v65 = 1 << *(v63 - 24);
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = v66 & v62;
    v68 = (v65 + 63) >> 6;
    v69 = v59 + 56;
    while (v67)
    {
      v72 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
LABEL_60:
      v75 = (*(v99 + 48) + 16 * (v72 | (v61 << 6)));
      v76 = *v75;
      v77 = v75[1];
      v78 = *(v12 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v79 = Hasher._finalize()();
      v80 = -1 << *(v12 + 32);
      v81 = v79 & ~v80;
      v82 = v81 >> 6;
      if (((-1 << v81) & ~*(v69 + 8 * (v81 >> 6))) == 0)
      {
        v83 = 0;
        v84 = (63 - v80) >> 6;
        while (++v82 != v84 || (v83 & 1) == 0)
        {
          v85 = v82 == v84;
          if (v82 == v84)
          {
            v82 = 0;
          }

          v83 |= v85;
          v86 = *(v69 + 8 * v82);
          if (v86 != -1)
          {
            v70 = __clz(__rbit64(~v86)) + (v82 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_89;
      }

      v70 = __clz(__rbit64((-1 << v81) & ~*(v69 + 8 * (v81 >> 6)))) | v81 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v69 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v71 = (*(v12 + 48) + 16 * v70);
      *v71 = v76;
      v71[1] = v77;
      ++*(v12 + 16);
    }

    v73 = v61;
    while (1)
    {
      v61 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v61 >= v68)
      {

        v5 = v97;
        goto LABEL_75;
      }

      v74 = *(v63 + 8 * v61);
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v67 = (v74 - 1) & v74;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v41 = static _SetStorage.copy(original:)();
    v12 = v41;
    if (!*(v9 + 16))
    {
LABEL_70:

      *v5 = v12;
LABEL_83:
      *(v12 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v92 = (*(v12 + 48) + 16 * a3);
      *v92 = v8;
      v92[1] = a2;
      v93 = *(v12 + 16);
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (!v94)
      {
        *(v12 + 16) = v95;
        return result;
      }

      goto LABEL_90;
    }

    v42 = (v41 + 56);
    v43 = v9 + 56;
    v44 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v9 || v42 >= v43 + 8 * v44)
    {
      memmove(v42, (v9 + 56), 8 * v44);
    }

    v45 = 0;
    *(v12 + 16) = *(v9 + 16);
    v46 = 1 << *(v9 + 32);
    v47 = *(v9 + 56);
    v48 = -1;
    if (v46 < 64)
    {
      v48 = ~(-1 << v46);
    }

    v49 = v48 & v47;
    v50 = (v46 + 63) >> 6;
    if ((v48 & v47) != 0)
    {
      do
      {
        v51 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
LABEL_42:
        v54 = 16 * (v51 | (v45 << 6));
        v55 = (*(v9 + 48) + v54);
        v56 = v55[1];
        v57 = (*(v12 + 48) + v54);
        *v57 = *v55;
        v57[1] = v56;
      }

      while (v49);
    }

    v52 = v45;
    while (1)
    {
      v45 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v45 >= v50)
      {
        goto LABEL_70;
      }

      v53 = *(v43 + 8 * v45);
      ++v52;
      if (v53)
      {
        v51 = __clz(__rbit64(v53));
        v49 = (v53 - 1) & v53;
        goto LABEL_42;
      }
    }

LABEL_87:
    __break(1u);
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Schema and conformance Schema()
{
  result = lazy protocol witness table cache variable for type Schema and conformance Schema;
  if (!lazy protocol witness table cache variable for type Schema and conformance Schema)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema and conformance Schema);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema and conformance Schema;
  if (!lazy protocol witness table cache variable for type Schema and conformance Schema)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema and conformance Schema);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys;
  if (!lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Schema.CodingKeys and conformance Schema.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys;
  if (!lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause.CodingKeys and conformance FromClause.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FromClause and conformance FromClause()
{
  result = lazy protocol witness table cache variable for type FromClause and conformance FromClause;
  if (!lazy protocol witness table cache variable for type FromClause and conformance FromClause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FromClause and conformance FromClause);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Schema] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ResultColumn and conformance ResultColumn()
{
  result = lazy protocol witness table cache variable for type ResultColumn and conformance ResultColumn;
  if (!lazy protocol witness table cache variable for type ResultColumn and conformance ResultColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultColumn and conformance ResultColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelectCore and conformance SelectCore()
{
  result = lazy protocol witness table cache variable for type SelectCore and conformance SelectCore;
  if (!lazy protocol witness table cache variable for type SelectCore and conformance SelectCore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectCore and conformance SelectCore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView()
{
  result = lazy protocol witness table cache variable for type MaterializedView and conformance MaterializedView;
  if (!lazy protocol witness table cache variable for type MaterializedView and conformance MaterializedView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterializedView and conformance MaterializedView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys()
{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys;
  if (!lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys);
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser6SchemaVtGMd, &_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser6SchemaVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser6SchemaVtMd, &_sSS_14BiomeSQLParser6SchemaVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay14BiomeSQLParser19AggregationFunctionVGGMd, &_ss23_ContiguousArrayStorageCySay14BiomeSQLParser19AggregationFunctionVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser19AggregationFunctionVGMd, &_sSay14BiomeSQLParser19AggregationFunctionVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser11SQLDataTypeOGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser11SQLDataTypeOGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser11LogicalPlanVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser11LogicalPlanVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[368 * v8])
    {
      memmove(v12, v13, 368 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t specialized ResultColumn.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized SelectCore.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572656877 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x794270756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69766168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized LogicalPlan.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7106931 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002553B6960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F437463656C6573 && a2 == 0xEA00000000006572)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
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

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of PgQuery_ParseResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PgQuery_ParseResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType()
{
  result = lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType;
  if (!lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLParserError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 33))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 32);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLParserError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SQLParserError(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseCatalog(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DatabaseCatalog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FromClause(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for FromClause(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SelectCore(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t storeEnumTagSinglePayload for SelectCore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterializedView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterializedView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogicalPlan(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 344);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LogicalPlan(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 344) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogicalPlanType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 329))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 328);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LogicalPlanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 313) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 329) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 329) = 0;
    }

    if (a2)
    {
      *(result + 328) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LogicalPlanType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 320) = 0;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 328) = a2;
  return result;
}

void type metadata completion function for SQLParseResult()
{
  type metadata accessor for PgQuery_ParseResult(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_ScanResult(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t getEnumTagSinglePayload for LogicalPlan.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LogicalPlan.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ResultColumn.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResultColumn.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of PgQuery_ScanResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL partial apply for closure #1 in ResultColumn.init(node:schemas:tokenInformation:)(int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return v3 == *(*(v2 + *(type metadata accessor for PgQuery_ResTarget(0) + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
}

uint64_t outlined init with take of (PgQuery_RawStmt, String)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata completion function for SQLTokenInformation()
{
  result = type metadata accessor for PgQuery_ScanResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PlanResources()
{
  result = type metadata accessor for SQLTokenInformation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *pg_query_init()
{
  result = pg_query_initialized();
  if (!*result)
  {
    *result = 1;
    MemoryContextInit();
    SetDatabaseEncoding(6u);
    pthread_key_create(&pg_query_thread_exit_key, pg_query_thread_exit);
    v1 = *TopMemoryContext();

    return pthread_setspecific(v2, v1);
  }

  return result;
}

void *pg_query_free_top_memory_context(void *a1)
{
  MemoryContextDeleteChildren(a1);
  AllocSetDeleteFreeList(a1);
  (*(a1[2] + 32))(a1);
  free(a1);
  *TopMemoryContext() = 0;
  *CurrentMemoryContext(v2) = 0;
  result = ErrorContext();
  *result = 0;
  return result;
}

void *pg_query_exit()
{
  v0 = TopMemoryContext();
  v1 = *v0;
  MemoryContextDeleteChildren(*v0);
  AllocSetDeleteFreeList(v1);
  (*(v1[2] + 32))(v1);
  free(v1);
  *v0 = 0;
  *CurrentMemoryContext(v2) = 0;
  result = ErrorContext();
  *result = 0;
  return result;
}

uint64_t pg_query_enter_memory_context()
{
  initialized = pg_query_initialized();
  if (*initialized)
  {
    v1 = TopMemoryContext();
  }

  else
  {
    *initialized = 1;
    MemoryContextInit();
    SetDatabaseEncoding(6u);
    pthread_key_create(&pg_query_thread_exit_key, pg_query_thread_exit);
    v1 = TopMemoryContext();
    pthread_setspecific(v2, *v1);
  }

  AllocSetContextCreateInternal(*v1, "pg_query", 0, 0x2000uLL, 0x800000);
  v3 = CurrentMemoryContext();
  *v3 = v4;
  return v4;
}

uint64_t pg_query_exit_memory_context()
{
  v0 = *TopMemoryContext();
  v1 = CurrentMemoryContext();
  *v1 = v3;

  return MemoryContextDelete(v2);
}

void pg_query_free_error(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  free(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

char *pg_query_deparse_protobuf(unsigned int a1, unsigned __int8 *a2)
{
  v1363 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v1360 = 0;
  v1361 = 0;
  enter_memory_context = pg_query_enter_memory_context();
  v5 = PG_exception_stack();
  v6 = *v5;
  v7 = v5;
  v8 = error_context_stack();
  v9 = *v8;
  v10 = v8;
  memset(v1362, 0, 196);
  if (!sigsetjmp(v1362, 0))
  {
    *v7 = v1362;
    protobuf_to_nodes = pg_query_protobuf_to_nodes(a1, a2);
    initStringInfo(&__s1);
    if (!protobuf_to_nodes || *(protobuf_to_nodes + 4) < 1)
    {
LABEL_2464:
      v13 = strdup(__s1);
      goto LABEL_2465;
    }

    v15 = 0;
    v1357 = v7;
    v1358 = v6;
    v1355 = v10;
    v1356 = v9;
    v1354 = protobuf_to_nodes;
LABEL_7:
    v16 = *(protobuf_to_nodes + 16) + 8 * v15;
    v17 = *(*v16 + 8);
    if (!v17)
    {
      pg_query_deparse_protobuf_cold_2();
    }

    v18 = *(*v16 + 8);
    v1353 = v15;
    v1352 = v16;
    switch(*v17)
    {
      case 0xE9:
        goto LABEL_9;
      case 0xEA:
        goto LABEL_1294;
      case 0xEB:
        goto LABEL_1288;
      case 0xEC:
        goto LABEL_1287;
      case 0xED:
        appendStringInfoString(&__s1, "ALTER ");
        v356 = *(v17 + 24);
        if (v356 <= 34)
        {
          if (v356 == 18)
          {
            v358 = 0;
            v357 = "FOREIGN TABLE ";
          }

          else if (v356 == 20)
          {
            v358 = 0;
            v357 = "INDEX ";
          }

          else
          {
            v600 = 0;
            v359 = 0;
            if (v356 != 23)
            {
              goto LABEL_1631;
            }

            v358 = 0;
            v357 = "MATERIALIZED VIEW ";
          }
        }

        else if (v356 > 46)
        {
          if (v356 == 47)
          {
            v359 = 9;
            v358 = 1;
            v357 = "TYPE ";
LABEL_1630:
            v885 = v358;
            appendStringInfoString(&__s1, v357);
            v600 = v885;
LABEL_1631:
            v1351 = v600;
            if (*(v18 + 28) != 1)
            {
              goto LABEL_1633;
            }

            goto LABEL_1632;
          }

          v600 = 0;
          v359 = 0;
          if (v356 != 49)
          {
            goto LABEL_1631;
          }

          v358 = 0;
          v357 = "VIEW ";
        }

        else
        {
          if (v356 != 35)
          {
            if (v356 != 39)
            {
              v359 = 0;
              v1351 = 0;
              if (*(v17 + 28) != 1)
              {
LABEL_1633:
                deparseRangeVar(&__s1, *(v18 + 8), v359);
                appendStringInfoChar(&__s1, 32);
                v891 = *(v18 + 16);
                if (v891)
                {
                  v892 = *(v18 + 16);
                  if (*(v891 + 4) >= 1)
                  {
                    v893 = 0;
                    v1350 = *(v18 + 16);
                    while (1)
                    {
                      v894 = 0;
                      v895 = v893;
                      v896 = *(v892 + 16) + 8 * v893;
                      v897 = *v896;
                      v898 = *v896;
                      v899 = 1;
                      v1349 = v895;
                      v900 = "DROP EXPRESSION";
                      switch(*(*v896 + 4))
                      {
                        case 0:
                          if (v1351)
                          {
                            v901 = "ADD ATTRIBUTE ";
                          }

                          else
                          {
                            v901 = "ADD COLUMN ";
                          }

                          goto LABEL_1705;
                        case 3:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          if (*(v898 + 32))
                          {
                            v894 = "SET DEFAULT";
                          }

                          else
                          {
                            v894 = "DROP DEFAULT";
                          }

                          goto LABEL_1706;
                        case 5:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          v894 = "DROP NOT NULL";
                          goto LABEL_1706;
                        case 6:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          v894 = "SET NOT NULL";
                          goto LABEL_1706;
                        case 7:
                          goto LABEL_1695;
                        case 9:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          v894 = "SET STATISTICS";
                          goto LABEL_1706;
                        case 0xA:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          v894 = "SET";
                          goto LABEL_1706;
                        case 0xB:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          v894 = "RESET";
                          goto LABEL_1706;
                        case 0xC:
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v899 = 0;
                          v894 = "SET STORAGE";
                          goto LABEL_1706;
                        case 0xD:
                          if (v1351)
                          {
                            v901 = "DROP ATTRIBUTE ";
                          }

                          else
                          {
                            v901 = "DROP ";
                          }

                          goto LABEL_1705;
                        case 0xF:
                          v901 = "ADD INDEX ";
                          goto LABEL_1705;
                        case 0x11:
                          v901 = "ADD ";
                          goto LABEL_1705;
                        case 0x15:
                        case 0x41:
                          v901 = "ALTER ";
                          goto LABEL_1705;
                        case 0x16:
                          v901 = "VALIDATE CONSTRAINT ";
                          goto LABEL_1705;
                        case 0x19:
                          v901 = "DROP CONSTRAINT ";
                          goto LABEL_1705;
                        case 0x1C:
                          if (v1351)
                          {
                            v904 = "ALTER ATTRIBUTE ";
                          }

                          else
                          {
                            v904 = "ALTER COLUMN ";
                          }

                          appendStringInfoString(&__s1, v904);
                          v899 = 0;
                          v894 = "TYPE";
                          goto LABEL_1706;
                        case 0x1D:
                          v901 = "ALTER COLUMN ";
                          goto LABEL_1705;
                        case 0x1E:
                          appendStringInfoString(&__s1, "OWNER TO ");
                          v894 = 0;
                          v902 = *(v898 + 24);
                          v903 = *(v902 + 4);
                          v899 = 1;
                          if (v903 > 1)
                          {
                            if (v903 == 2)
                            {
                              v901 = "SESSION_USER";
                            }

                            else
                            {
                              if (v903 != 3)
                              {
                                goto LABEL_1706;
                              }

                              v901 = "public";
                            }
                          }

                          else if (v903)
                          {
                            if (v903 != 1)
                            {
                              goto LABEL_1706;
                            }

                            v901 = "CURRENT_USER";
                          }

                          else
                          {
                            v901 = quote_identifier(*(v902 + 8));
                          }

LABEL_1705:
                          appendStringInfoString(&__s1, v901);
                          v894 = 0;
                          v899 = 1;
LABEL_1706:
                          v905 = v894;
                          v909 = v899;
                          if (*(v898 + 44) == 1)
                          {
                            if (*(v898 + 4))
                            {
                              v910 = "IF EXISTS ";
                            }

                            else
                            {
                              v910 = "IF NOT EXISTS ";
                            }

                            appendStringInfoString(&__s1, v910);
                          }

                          v906 = (v898 + 44);
                          v907 = 0;
                          v908 = v909;
LABEL_1712:
                          v911 = *(v898 + 8);
                          if (v911)
                          {
                            v912 = quote_identifier(v911);
                            appendStringInfoString(&__s1, v912);
                            appendStringInfoChar(&__s1, 32);
                          }

                          if (*(v898 + 16) >= 1)
                          {
                            appendStringInfo(&__s1, "%d ", v900, v886, v887, v888, v889, v890, *(v898 + 16));
                          }

                          if (v908)
                          {
                            if ((v907 & *v906) != 1)
                            {
                              goto LABEL_1721;
                            }
                          }

                          else
                          {
                            appendStringInfoString(&__s1, v905);
                            appendStringInfoChar(&__s1, 32);
                            if ((v907 & *v906) != 1)
                            {
LABEL_1721:
                              v913 = *(v898 + 4);
LABEL_1722:
                              switch(v913)
                              {
                                case 0u:
                                case 0x1Cu:
                                  deparseColumnDef(&__s1, *(v898 + 32));
                                  goto LABEL_1762;
                                case 3u:
                                  v935 = *(v898 + 32);
                                  if (!v935)
                                  {
                                    goto LABEL_1763;
                                  }

                                  deparseExpr(&__s1, v935, v900, v886, v887, v888, v889, v890);
                                  goto LABEL_1762;
                                case 9u:
                                  appendStringInfo(&__s1, "%d", v900, v886, v887, v888, v889, v890, *(*(v898 + 32) + 8));
                                  goto LABEL_1762;
                                case 0xAu:
                                case 0xBu:
                                case 0x25u:
                                case 0x26u:
                                  deparseRelOptions(&__s1, *(v898 + 32));
                                  goto LABEL_1762;
                                case 0xCu:
                                  v916 = quote_identifier(*(*(v898 + 32) + 8));
                                  goto LABEL_1735;
                                case 0x11u:
                                case 0x15u:
                                case 0x40u:
                                  deparseConstraint(&__s1, *(v898 + 32));
                                  goto LABEL_1762;
                                case 0x1Du:
                                case 0x3Du:
                                  deparseAlterGenericOptions(&__s1, *(v898 + 32));
                                  goto LABEL_1762;
                                case 0x34u:
                                case 0x35u:
                                  deparseRangeVar(&__s1, *(v898 + 32), 0);
                                  goto LABEL_1762;
                                case 0x36u:
                                  deparseTypeName(&__s1, *(v898 + 32));
                                  goto LABEL_1762;
                                case 0x38u:
                                  v915 = *(*(v898 + 32) + 4);
                                  if (v915 <= 0x68)
                                  {
                                    if (v915 == 100)
                                    {
                                      v916 = "DEFAULT ";
                                    }

                                    else
                                    {
                                      if (v915 != 102)
                                      {
                                        goto LABEL_1762;
                                      }

                                      v916 = "FULL ";
                                    }

                                    goto LABEL_1735;
                                  }

                                  if (v915 == 105)
                                  {
                                    v937 = *(v898 + 32);
                                    appendStringInfoString(&__s1, "USING INDEX ");
                                    v916 = quote_identifier(*(v937 + 8));
                                    goto LABEL_1735;
                                  }

                                  if (v915 == 110)
                                  {
                                    v916 = "NOTHING ";
LABEL_1735:
                                    appendStringInfoString(&__s1, v916);
                                  }

LABEL_1762:
                                  appendStringInfoChar(&__s1, 32);
                                  goto LABEL_1763;
                                case 0x3Eu:
                                case 0x3Fu:
                                  v914 = *(v898 + 32);
                                  deparseRangeVar(&__s1, *(v914 + 8), 0);
                                  if (*(v914 + 16))
                                  {
                                    appendStringInfoChar(&__s1, 32);
                                    deparsePartitionBoundSpec(&__s1, *(v914 + 16));
                                  }

                                  goto LABEL_1762;
                                case 0x41u:
                                  v917 = *(v898 + 32);
                                  if (!v917 || *(v917 + 4) < 1)
                                  {
                                    goto LABEL_1762;
                                  }

                                  v918 = 0;
                                  v919 = 8;
                                  break;
                                default:
                                  goto LABEL_1763;
                              }

                              while (2)
                              {
                                v920 = enter_memory_context;
                                v921 = *(v917 + 16);
                                v922 = *(v921 + 8 * v918);
                                v923 = *(v922 + 16);
                                if (!strcmp(v923, "restart"))
                                {
                                  if (*(v922 + 24))
                                  {
                                    appendStringInfoString(&__s1, "RESTART ");
                                    v930 = *(v922 + 24);
                                    if (*v930 != 222)
                                    {
                                      if (*v930 == 221)
                                      {
                                        appendStringInfo(&__s1, "%d", v924, v925, v926, v927, v928, v929, v930[2]);
                                      }

                                      goto LABEL_1756;
                                    }

                                    v932 = *(v930 + 1);
                                  }

                                  else
                                  {
                                    v932 = "RESTART";
                                  }
                                }

                                else
                                {
                                  if (strcmp(v923, "generated"))
                                  {
                                    appendStringInfoString(&__s1, "SET ");
                                    deparseSeqOptElem(&__s1, v922);
                                    goto LABEL_1756;
                                  }

                                  appendStringInfoString(&__s1, "SET GENERATED ");
                                  v931 = *(*(v922 + 24) + 8);
                                  if (v931 != 100)
                                  {
                                    if (v931 == 97)
                                    {
                                      v932 = "ALWAYS";
                                      break;
                                    }

LABEL_1756:
                                    v933 = *(v917 + 4);
                                    v934 = v921 + v919;
                                    if (v921 + v919)
                                    {
                                      enter_memory_context = v920;
                                      if (v934 < *(v917 + 16) + 8 * *(v917 + 4))
                                      {
                                        appendStringInfoChar(&__s1, 32);
                                        v933 = *(v917 + 4);
                                      }
                                    }

                                    else
                                    {
                                      enter_memory_context = v920;
                                    }

                                    ++v918;
                                    v919 += 8;
                                    v10 = v1355;
                                    if (v918 >= v933)
                                    {
                                      goto LABEL_1762;
                                    }

                                    continue;
                                  }

                                  v932 = "BY DEFAULT";
                                }

                                break;
                              }

                              appendStringInfoString(&__s1, v932);
                              goto LABEL_1756;
                            }
                          }

                          appendStringInfoString(&__s1, "IF EXISTS ");
                          v913 = *(v898 + 4);
                          if (v913 <= 0x41)
                          {
                            goto LABEL_1722;
                          }

LABEL_1763:
                          if (*(v898 + 40) == 1)
                          {
                            appendStringInfoString(&__s1, "CASCADE ");
                          }

                          v936 = v1360 - 1;
                          v7 = v1357;
                          v6 = v1358;
                          v9 = v1356;
                          v892 = v1350;
                          if (v1360 >= 1 && __s1[v936] == 32)
                          {
                            LODWORD(v1360) = v1360 - 1;
                            __s1[v936] = 0;
                          }

                          if (v896 != -8 && v896 + 8 < (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4)))
                          {
                            appendStringInfoString(&__s1, ", ");
                          }

                          v893 = v1349 + 1;
                          if (v1349 + 1 >= *(v1350 + 4))
                          {
                            goto LABEL_2447;
                          }

                          break;
                        case 0x1F:
                          v901 = "CLUSTER ON ";
                          goto LABEL_1705;
                        case 0x20:
                          v901 = "SET WITHOUT CLUSTER ";
                          goto LABEL_1705;
                        case 0x21:
                          v901 = "SET LOGGED ";
                          goto LABEL_1705;
                        case 0x22:
                          v901 = "SET UNLOGGED ";
                          goto LABEL_1705;
                        case 0x23:
                          v901 = "SET WITHOUT OIDS ";
                          goto LABEL_1705;
                        case 0x24:
                          v901 = "SET TABLESPACE ";
                          goto LABEL_1705;
                        case 0x25:
                          v901 = "SET ";
                          goto LABEL_1705;
                        case 0x26:
                          v901 = "RESET ";
                          goto LABEL_1705;
                        case 0x28:
                        case 0x2C:
                          v901 = "ENABLE TRIGGER ";
                          goto LABEL_1705;
                        case 0x29:
                          v901 = "ENABLE ALWAYS TRIGGER ";
                          goto LABEL_1705;
                        case 0x2A:
                          v901 = "ENABLE REPLICA TRIGGER ";
                          goto LABEL_1705;
                        case 0x2B:
                          v901 = "DISABLE TRIGGER ";
                          goto LABEL_1705;
                        case 0x2D:
                          v901 = "DISABLE TRIGGER ALL ";
                          goto LABEL_1705;
                        case 0x2E:
                          v901 = "ENABLE TRIGGER USER ";
                          goto LABEL_1705;
                        case 0x2F:
                          v901 = "DISABLE TRIGGER USER ";
                          goto LABEL_1705;
                        case 0x30:
                          v901 = "ENABLE RULE ";
                          goto LABEL_1705;
                        case 0x31:
                          v901 = "ENABLE ALWAYS RULE ";
                          goto LABEL_1705;
                        case 0x32:
                          v901 = "ENABLE REPLICA RULE ";
                          goto LABEL_1705;
                        case 0x33:
                          v901 = "DISABLE RULE ";
                          goto LABEL_1705;
                        case 0x34:
                          v901 = "INHERIT ";
                          goto LABEL_1705;
                        case 0x35:
                          v901 = "NO INHERIT ";
                          goto LABEL_1705;
                        case 0x36:
                          v901 = "OF ";
                          goto LABEL_1705;
                        case 0x37:
                          v901 = "NOT OF ";
                          goto LABEL_1705;
                        case 0x38:
                          v901 = "REPLICA IDENTITY ";
                          goto LABEL_1705;
                        case 0x39:
                          v901 = "ENABLE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3A:
                          v901 = "DISABLE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3B:
                          v901 = "FORCE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3C:
                          v901 = "NO FORCE ROW LEVEL SECURITY ";
                          goto LABEL_1705;
                        case 0x3E:
                          v901 = "ATTACH PARTITION ";
                          goto LABEL_1705;
                        case 0x3F:
                          v901 = "DETACH PARTITION ";
                          goto LABEL_1705;
                        case 0x40:
                          appendStringInfoString(&__s1, "ALTER ");
                          v899 = 0;
                          v894 = "ADD";
                          goto LABEL_1706;
                        case 0x42:
                          v900 = "DROP IDENTITY";
LABEL_1695:
                          v905 = v900;
                          appendStringInfoString(&__s1, "ALTER COLUMN ");
                          v906 = (v897 + 44);
                          v907 = 1;
                          v908 = 0;
                          goto LABEL_1712;
                        default:
                          goto LABEL_1706;
                      }
                    }
                  }
                }

                goto LABEL_2447;
              }

LABEL_1632:
              appendStringInfoString(&__s1, "IF EXISTS ");
              goto LABEL_1633;
            }

            v357 = "TABLE ";
            v358 = 0;
            v359 = 0;
            goto LABEL_1630;
          }

          v358 = 0;
          v357 = "SEQUENCE ";
        }

        v359 = 0;
        goto LABEL_1630;
      case 0xEF:
        appendStringInfoString(&__s1, "ALTER DOMAIN ");
        v322 = *(v17 + 8);
        if (v322 && *(v322 + 4) >= 1)
        {
          v323 = 8;
          v324 = 0;
          do
          {
            v325 = *(v322 + 16);
            v326 = quote_identifier(*(*(v325 + 8 * v324) + 8));
            appendStringInfoString(&__s1, v326);
            v327 = *(v322 + 4);
            if (v325 + v323)
            {
              v328 = v325 + v323 >= (*(v322 + 16) + 8 * v327);
            }

            else
            {
              v328 = 1;
            }

            if (!v328)
            {
              appendStringInfoChar(&__s1, 46);
              v327 = *(v322 + 4);
            }

            ++v324;
            v323 += 8;
          }

          while (v324 < v327);
        }

        appendStringInfoChar(&__s1, 32);
        v329 = *(v18 + 4);
        if (v329 <= 0x53)
        {
          v9 = v1356;
          switch(v329)
          {
            case 'C':
              appendStringInfoString(&__s1, "ADD ");
              deparseConstraint(&__s1, *(v18 + 24));
              goto LABEL_2447;
            case 'N':
              v26 = "DROP NOT NULL";
              break;
            case 'O':
              v26 = "SET NOT NULL";
              break;
            default:
              goto LABEL_2447;
          }

          goto LABEL_2263;
        }

        if (v329 == 88)
        {
          appendStringInfoString(&__s1, "DROP CONSTRAINT ");
          v9 = v1356;
          if (*(v18 + 36) == 1)
          {
            appendStringInfoString(&__s1, "IF EXISTS ");
          }

          v824 = quote_identifier(*(v18 + 16));
          appendStringInfoString(&__s1, v824);
          if (*(v18 + 32) == 1)
          {
            v26 = " CASCADE";
            goto LABEL_2263;
          }

          goto LABEL_2447;
        }

        v9 = v1356;
        if (v329 == 86)
        {
          appendStringInfoString(&__s1, "VALIDATE CONSTRAINT ");
          v189 = *(v18 + 16);
          goto LABEL_2262;
        }

        if (v329 != 84)
        {
          goto LABEL_2447;
        }

        if (*(v18 + 24))
        {
          appendStringInfoString(&__s1, "SET DEFAULT ");
          deparseExpr(&__s1, *(v18 + 24), v592, v593, v594, v595, v596, v597);
          goto LABEL_2447;
        }

        v26 = "DROP DEFAULT";
        goto LABEL_2263;
      case 0xF1:
        deparseGrantStmt(&__s1, v17);
        goto LABEL_2447;
      case 0xF2:
        if (*(v17 + 24))
        {
          v234 = "GRANT ";
        }

        else
        {
          v234 = "REVOKE ";
        }

        appendStringInfoString(&__s1, v234);
        v235 = *(v17 + 8);
        if (v235 && *(v235 + 4) >= 1)
        {
          v236 = 8;
          v237 = 0;
          do
          {
            v238 = *(v235 + 16);
            deparseAccessPriv(&__s1, *(v238 + 8 * v237));
            if (v238 + v236)
            {
              v239 = v238 + v236 >= (*(*(v18 + 8) + 16) + 8 * *(*(v18 + 8) + 4));
            }

            else
            {
              v239 = 1;
            }

            if (!v239)
            {
              appendStringInfoChar(&__s1, 44);
            }

            appendStringInfoChar(&__s1, 32);
            ++v237;
            v236 += 8;
          }

          while (v237 < *(v235 + 4));
        }

        if (*(v18 + 24))
        {
          v240 = "TO ";
        }

        else
        {
          v240 = "FROM ";
        }

        appendStringInfoString(&__s1, v240);
        v241 = *(v18 + 16);
        if (!v241 || *(v241 + 4) < 1)
        {
          goto LABEL_398;
        }

        v242 = 8;
        v243 = 0;
        while (1)
        {
          v244 = *(v241 + 16);
          v245 = *(v244 + 8 * v243);
          v246 = *(v245 + 4);
          if (v246 > 1)
          {
            if (v246 == 2)
            {
              v247 = "SESSION_USER";
              goto LABEL_392;
            }

            if (v246 == 3)
            {
              v247 = "public";
              goto LABEL_392;
            }
          }

          else
          {
            if (!v246)
            {
              v247 = quote_identifier(*(v245 + 8));
              goto LABEL_392;
            }

            if (v246 == 1)
            {
              v247 = "CURRENT_USER";
LABEL_392:
              appendStringInfoString(&__s1, v247);
            }
          }

          v248 = *(v241 + 4);
          if (v244 + v242)
          {
            v249 = v244 + v242 >= (*(v241 + 16) + 8 * v248);
          }

          else
          {
            v249 = 1;
          }

          if (!v249)
          {
            appendStringInfoString(&__s1, ", ");
            v248 = *(v241 + 4);
          }

          ++v243;
          v242 += 8;
          if (v243 >= v248)
          {
LABEL_398:
            appendStringInfoChar(&__s1, 32);
            v9 = v1356;
            if (*(v18 + 25) == 1)
            {
              appendStringInfoString(&__s1, "WITH ADMIN OPTION ");
            }

            goto LABEL_2444;
          }
        }

      case 0xF3:
        appendStringInfoString(&__s1, "ALTER DEFAULT PRIVILEGES ");
        v332 = *(v17 + 8);
        if (!v332 || *(v332 + 4) < 1)
        {
          goto LABEL_555;
        }

        v333 = *(v332 + 4);
        v334 = 0;
        while (1)
        {
          v335 = *(*(v332 + 16) + 8 * v334);
          v336 = *(v335 + 16);
          if (!strcmp(v336, "schemas"))
          {
            appendStringInfoString(&__s1, "IN SCHEMA ");
            v346 = *(v335 + 24);
            if (v346 && *(v346 + 4) >= 1)
            {
              v347 = 8;
              v348 = 0;
              do
              {
                v349 = *(v346 + 16);
                v350 = quote_identifier(*(*(v349 + 8 * v348) + 8));
                appendStringInfoString(&__s1, v350);
                v351 = *(v346 + 4);
                if (v349 + v347)
                {
                  v352 = v349 + v347 >= (*(v346 + 16) + 8 * v351);
                }

                else
                {
                  v352 = 1;
                }

                if (!v352)
                {
                  appendStringInfoString(&__s1, ", ");
                  v351 = *(v346 + 4);
                }

                ++v348;
                v347 += 8;
              }

              while (v348 < v351);
            }
          }

          else
          {
            if (strcmp(v336, "roles"))
            {
              goto LABEL_524;
            }

            appendStringInfoString(&__s1, "FOR ROLE ");
            v337 = *(v335 + 24);
            if (v337 && *(v337 + 4) >= 1)
            {
              v338 = 8;
              for (i = 0; i < v344; ++i)
              {
                v340 = *(v337 + 16);
                v341 = *(v340 + 8 * i);
                v342 = *(v341 + 4);
                if (v342 > 1)
                {
                  if (v342 == 2)
                  {
                    v343 = "SESSION_USER";
                    goto LABEL_540;
                  }

                  if (v342 == 3)
                  {
                    v343 = "public";
                    goto LABEL_540;
                  }
                }

                else
                {
                  if (!v342)
                  {
                    v343 = quote_identifier(*(v341 + 8));
                    goto LABEL_540;
                  }

                  if (v342 == 1)
                  {
                    v343 = "CURRENT_USER";
LABEL_540:
                    appendStringInfoString(&__s1, v343);
                  }
                }

                v344 = *(v337 + 4);
                if (v340 + v338)
                {
                  v345 = v340 + v338 >= (*(v337 + 16) + 8 * v344);
                }

                else
                {
                  v345 = 1;
                }

                if (!v345)
                {
                  appendStringInfoString(&__s1, ", ");
                  v344 = *(v337 + 4);
                }

                v338 += 8;
              }
            }
          }

          appendStringInfoChar(&__s1, 32);
          v333 = *(v332 + 4);
          v7 = v1357;
LABEL_524:
          if (++v334 >= v333)
          {
LABEL_555:
            deparseGrantStmt(&__s1, *(v18 + 16));
            v6 = v1358;
            v9 = v1356;
            goto LABEL_2447;
          }
        }

      case 0xF4:
        appendStringInfoString(&__s1, "CLOSE ");
        v189 = *(v17 + 8);
        if (!v189)
        {
          goto LABEL_448;
        }

        goto LABEL_2262;
      case 0xF5:
        appendStringInfoString(&__s1, "CLUSTER ");
        if ((*(v17 + 24) & 2) != 0)
        {
          appendStringInfoString(&__s1, "VERBOSE ");
        }

        v330 = *(v17 + 8);
        if (v330)
        {
          deparseRangeVar(&__s1, v330, 0);
          appendStringInfoChar(&__s1, 32);
        }

        if (!*(v17 + 16))
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "USING ");
        v331 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v331);
        goto LABEL_1617;
      case 0xF6:
        appendStringInfoString(&__s1, "COPY ");
        v275 = *(v17 + 8);
        if (v275)
        {
          deparseRangeVar(&__s1, v275, 0);
          v276 = *(v17 + 24);
          if (v276 && *(v276 + 4) >= 1)
          {
            appendStringInfoChar(&__s1, 40);
            v277 = *(v17 + 24);
            if (v277 && *(v277 + 4) >= 1)
            {
              v278 = 8;
              v279 = 0;
              do
              {
                v280 = *(v277 + 16);
                v281 = quote_identifier(*(*(v280 + 8 * v279) + 8));
                appendStringInfoString(&__s1, v281);
                v282 = *(v277 + 4);
                if (v280 + v278)
                {
                  v283 = v280 + v278 >= (*(v277 + 16) + 8 * v282);
                }

                else
                {
                  v283 = 1;
                }

                if (!v283)
                {
                  appendStringInfoString(&__s1, ", ");
                  v282 = *(v277 + 4);
                }

                ++v279;
                v278 += 8;
              }

              while (v279 < v282);
            }

            appendStringInfoChar(&__s1, 41);
            v9 = v1356;
          }

          appendStringInfoChar(&__s1, 32);
        }

        if (*(v18 + 16))
        {
          appendStringInfoChar(&__s1, 40);
          v728 = *(v18 + 16);
          v729 = *v728;
          if (*v728 > 234)
          {
            if (v729 == 235)
            {
              deparseUpdateStmt(&__s1, v728);
            }

            else if (v729 == 236)
            {
              deparseSelectStmt(&__s1, v728);
            }
          }

          else if (v729 == 233)
          {
            deparseInsertStmt(&__s1, v728);
          }

          else if (v729 == 234)
          {
            deparseDeleteStmt(&__s1, v728);
          }

          appendStringInfoString(&__s1, ") ");
        }

        if (*(v18 + 32))
        {
          v826 = "FROM ";
        }

        else
        {
          v826 = "TO ";
        }

        appendStringInfoString(&__s1, v826);
        if (*(v18 + 33) == 1)
        {
          appendStringInfoString(&__s1, "PROGRAM ");
        }

        v827 = *(v18 + 40);
        if (v827)
        {
          deparseStringLiteral(&__s1, v827);
          appendStringInfoChar(&__s1, 32);
        }

        else
        {
          if (*(v18 + 32) == 1)
          {
            v828 = "STDIN ";
          }

          else
          {
            v828 = "STDOUT ";
          }

          appendStringInfoString(&__s1, v828);
        }

        v829 = *(v18 + 48);
        if (!v829 || *(v829 + 4) < 1)
        {
          goto LABEL_1615;
        }

        appendStringInfoString(&__s1, "WITH (");
        v830 = *(v18 + 48);
        if (!v830 || *(v830 + 4) < 1)
        {
          goto LABEL_1614;
        }

        v831 = 0;
        while (1)
        {
          v832 = *(v830 + 16) + 8 * v831;
          v833 = *v832;
          v834 = *(*v832 + 16);
          if (!strcmp(v834, "format"))
          {
            appendStringInfoString(&__s1, "FORMAT ");
            v844 = *(*(v833 + 24) + 8);
            if (!strcmp(v844, "binary"))
            {
              v845 = "BINARY";
            }

            else
            {
              if (strcmp(v844, "csv"))
              {
                goto LABEL_1566;
              }

              v845 = "CSV";
            }

            goto LABEL_1562;
          }

          if (!strcmp(v834, "freeze") && ((v846 = *(v833 + 24)) == 0 || *(v846 + 8) == 1))
          {
            appendStringInfoString(&__s1, "FREEZE");
            v847 = *(v833 + 24);
            if (v847)
            {
              goto LABEL_1560;
            }
          }

          else
          {
            if (!strcmp(v834, "delimiter"))
            {
              v848 = "DELIMITER ";
LABEL_1565:
              appendStringInfoString(&__s1, v848);
              deparseStringLiteral(&__s1, *(*(v833 + 24) + 8));
              goto LABEL_1566;
            }

            if (!strcmp(v834, "null"))
            {
              v848 = "NULL ";
              goto LABEL_1565;
            }

            if (!strcmp(v834, "header"))
            {
              v849 = *(v833 + 24);
              if (!v849 || *(v849 + 8) == 1)
              {
                appendStringInfoString(&__s1, "HEADER");
                v847 = *(v833 + 24);
                if (!v847)
                {
                  goto LABEL_1566;
                }

LABEL_1560:
                if (*(v847 + 8) != 1)
                {
                  goto LABEL_1566;
                }

                v845 = " 1";
LABEL_1562:
                appendStringInfoString(&__s1, v845);
                goto LABEL_1566;
              }
            }

            if (!strcmp(v834, "quote"))
            {
              v848 = "QUOTE ";
              goto LABEL_1565;
            }

            if (!strcmp(v834, "escape"))
            {
              v848 = "ESCAPE ";
              goto LABEL_1565;
            }

            if (!strcmp(v834, "force_quote"))
            {
              appendStringInfoString(&__s1, "FORCE_QUOTE ");
              v850 = **(v833 + 24);
              if (v850 != 226)
              {
                if (v850 != 351)
                {
                  goto LABEL_1566;
                }

LABEL_1571:
                appendStringInfoChar(&__s1, 42);
                goto LABEL_1566;
              }

              appendStringInfoChar(&__s1, 40);
              v865 = *(v833 + 24);
              if (v865 && *(v865 + 4) >= 1)
              {
                v866 = 8;
                v867 = 0;
                do
                {
                  v868 = *(v865 + 16);
                  v869 = quote_identifier(*(*(v868 + 8 * v867) + 8));
                  appendStringInfoString(&__s1, v869);
                  v870 = *(v865 + 4);
                  if (v868 + v866)
                  {
                    v871 = v868 + v866 >= (*(v865 + 16) + 8 * v870);
                  }

                  else
                  {
                    v871 = 1;
                  }

                  if (!v871)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v870 = *(v865 + 4);
                  }

                  ++v867;
                  v866 += 8;
                }

                while (v867 < v870);
              }

              goto LABEL_1611;
            }

            if (!strcmp(v834, "force_not_null"))
            {
              appendStringInfoString(&__s1, "FORCE_NOT_NULL (");
              v851 = *(v833 + 24);
              if (v851 && *(v851 + 4) >= 1)
              {
                v852 = 8;
                v853 = 0;
                do
                {
                  v854 = *(v851 + 16);
                  v855 = quote_identifier(*(*(v854 + 8 * v853) + 8));
                  appendStringInfoString(&__s1, v855);
                  v856 = *(v851 + 4);
                  if (v854 + v852)
                  {
                    v857 = v854 + v852 >= (*(v851 + 16) + 8 * v856);
                  }

                  else
                  {
                    v857 = 1;
                  }

                  if (!v857)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v856 = *(v851 + 4);
                  }

                  ++v853;
                  v852 += 8;
                }

                while (v853 < v856);
              }

LABEL_1611:
              appendStringInfoChar(&__s1, 41);
              goto LABEL_1612;
            }

            if (!strcmp(v834, "force_null"))
            {
              appendStringInfoString(&__s1, "FORCE_NULL (");
              v858 = *(v833 + 24);
              if (v858 && *(v858 + 4) >= 1)
              {
                v859 = 8;
                v860 = 0;
                do
                {
                  v861 = *(v858 + 16);
                  v862 = quote_identifier(*(*(v861 + 8 * v860) + 8));
                  appendStringInfoString(&__s1, v862);
                  v863 = *(v858 + 4);
                  if (v861 + v859)
                  {
                    v864 = v861 + v859 >= (*(v858 + 16) + 8 * v863);
                  }

                  else
                  {
                    v864 = 1;
                  }

                  if (!v864)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v863 = *(v858 + 4);
                  }

                  ++v860;
                  v859 += 8;
                }

                while (v860 < v863);
              }

              goto LABEL_1611;
            }

            if (!strcmp(v834, "encoding"))
            {
              appendStringInfoString(&__s1, "ENCODING ");
              deparseStringLiteral(&__s1, *(*(v833 + 24) + 8));
LABEL_1612:
              v10 = v1355;
              v9 = v1356;
              goto LABEL_1566;
            }

            v835 = quote_identifier(v834);
            appendStringInfoString(&__s1, v835);
            v10 = v1355;
            v9 = v1356;
            if (!*(v833 + 24))
            {
              goto LABEL_1566;
            }

            appendStringInfoChar(&__s1, 32);
            v842 = *(v833 + 24);
            if (!v842)
            {
              goto LABEL_1566;
            }

            v843 = *v842;
            if (*v842 > 222)
            {
              if (v843 == 351)
              {
                goto LABEL_1571;
              }

              if (v843 != 226)
              {
                if (v843 == 223)
                {
                  deparseOptBooleanOrString(&__s1, *(v842 + 8));
                }

                goto LABEL_1566;
              }

              appendStringInfoChar(&__s1, 40);
              if (*(v842 + 4) >= 1)
              {
                v872 = 8;
                v873 = 0;
                do
                {
                  v874 = *(v842 + 16);
                  deparseOptBooleanOrString(&__s1, *(*(v874 + 8 * v873) + 8));
                  v875 = *(v842 + 4);
                  if (v874 + v872)
                  {
                    v876 = v874 + v872 >= (*(v842 + 16) + 8 * v875);
                  }

                  else
                  {
                    v876 = 1;
                  }

                  if (!v876)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v875 = *(v842 + 4);
                  }

                  ++v873;
                  v872 += 8;
                }

                while (v873 < v875);
              }

              goto LABEL_1611;
            }

            if (v843 == 221)
            {
              appendStringInfo(&__s1, "%d", v836, v837, v838, v839, v840, v841, *(v842 + 8));
            }

            else if (v843 == 222)
            {
              v845 = *(v842 + 8);
              goto LABEL_1562;
            }
          }

LABEL_1566:
          if (v832 != -8 && v832 + 8 < (*(*(v18 + 48) + 16) + 8 * *(*(v18 + 48) + 4)))
          {
            appendStringInfoString(&__s1, ", ");
          }

          if (++v831 >= *(v830 + 4))
          {
LABEL_1614:
            appendStringInfoString(&__s1, ") ");
            v7 = v1357;
            v6 = v1358;
LABEL_1615:
            v877 = *(v18 + 56);
            if (v877)
            {
              appendStringInfoString(&__s1, "WHERE ");
              deparseExpr(&__s1, v877, v878, v879, v880, v881, v882, v883);
LABEL_1617:
              appendStringInfoChar(&__s1, 32);
            }

LABEL_2444:
            v411 = v1360 - 1;
            if (v1360 >= 1)
            {
LABEL_2445:
              if (__s1[v411] == 32)
              {
                LODWORD(v1360) = v411;
                __s1[v411] = 0;
              }
            }

LABEL_2447:
            protobuf_to_nodes = v1354;
            if (v1352 != -8 && v1352 + 8 < (*(v1354 + 16) + 8 * *(v1354 + 4)))
            {
              appendStringInfoString(&__s1, "; ");
            }

            v15 = v1353 + 1;
            if (v1353 + 1 >= *(v1354 + 4))
            {
              goto LABEL_2464;
            }

            goto LABEL_7;
          }
        }

      case 0xF7:
        deparseCreateStmt(&__s1, v17, 0);
        goto LABEL_2447;
      case 0xF8:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v17 + 41) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        v360 = *(v17 + 4);
        if (v360 > 43)
        {
          if (v360 > 45)
          {
            if (v360 == 46)
            {
              v361 = "TEXT SEARCH TEMPLATE ";
            }

            else
            {
              if (v360 != 47)
              {
                goto LABEL_1813;
              }

              v361 = "TYPE ";
            }
          }

          else if (v360 == 44)
          {
            v361 = "TEXT SEARCH DICTIONARY ";
          }

          else
          {
            v361 = "TEXT SEARCH PARSER ";
          }
        }

        else if (v360 > 24)
        {
          if (v360 == 25)
          {
            v361 = "OPERATOR ";
          }

          else
          {
            if (v360 != 43)
            {
              goto LABEL_1813;
            }

            v361 = "TEXT SEARCH CONFIGURATION ";
          }
        }

        else if (v360 == 1)
        {
          v361 = "AGGREGATE ";
        }

        else
        {
          if (v360 != 7)
          {
            goto LABEL_1813;
          }

          v361 = "COLLATION ";
        }

        appendStringInfoString(&__s1, v361);
LABEL_1813:
        if (*(v17 + 40) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v948 = *(v17 + 4);
        if (v948 > 42)
        {
          if ((v948 - 43) >= 5)
          {
            goto LABEL_2357;
          }

          goto LABEL_1817;
        }

        switch(v948)
        {
          case 1:
            v960 = *(v17 + 16);
            if (v960 && *(v960 + 4) >= 1)
            {
              v961 = 8;
              v962 = 0;
              do
              {
                v963 = *(v960 + 16);
                v964 = quote_identifier(*(*(v963 + 8 * v962) + 8));
                appendStringInfoString(&__s1, v964);
                v965 = *(v960 + 4);
                if (v963 + v961)
                {
                  v966 = v963 + v961 >= (*(v960 + 16) + 8 * v965);
                }

                else
                {
                  v966 = 1;
                }

                if (!v966)
                {
                  appendStringInfoChar(&__s1, 46);
                  v965 = *(v960 + 4);
                }

                ++v962;
                v961 += 8;
              }

              while (v962 < v965);
            }

            break;
          case 7:
LABEL_1817:
            v949 = *(v17 + 16);
            if (v949 && *(v949 + 4) >= 1)
            {
              v950 = 8;
              v951 = 0;
              do
              {
                v952 = *(v949 + 16);
                v953 = quote_identifier(*(*(v952 + 8 * v951) + 8));
                appendStringInfoString(&__s1, v953);
                v954 = *(v949 + 4);
                if (v952 + v950)
                {
                  v955 = v952 + v950 >= (*(v949 + 16) + 8 * v954);
                }

                else
                {
                  v955 = 1;
                }

                if (!v955)
                {
                  appendStringInfoChar(&__s1, 46);
                  v954 = *(v949 + 4);
                }

                ++v951;
                v950 += 8;
              }

              while (v951 < v954);
            }

            break;
          case 25:
            v956 = *(v17 + 16);
            if (v956)
            {
              v957 = *(v956 + 4);
              if (v957 == 1)
              {
                v959 = *(v956 + 16);
              }

              else
              {
                if (v957 != 2)
                {
                  break;
                }

                v958 = quote_identifier(*(**(v956 + 16) + 8));
                appendStringInfoString(&__s1, v958);
                appendStringInfoChar(&__s1, 46);
                v959 = *(v956 + 16) + 8 * (*(v956 + 4) - 1);
              }

              appendStringInfoString(&__s1, *(*v959 + 8));
            }

            break;
        }

LABEL_2357:
        appendStringInfoChar(&__s1, 32);
        v9 = v1356;
        if (*(v18 + 8))
        {
          goto LABEL_2374;
        }

        v1290 = *(v18 + 4);
        if (v1290 == 1)
        {
          v1291 = *(*(v18 + 24) + 16);
          v1292 = *v1291;
          v1293 = *(v1291[1] + 8);
          appendStringInfoChar(&__s1, 40);
          if (v1292)
          {
            v1294 = v1293;
            LODWORD(v1295) = *(v1292 + 4);
            if (v1295 >= 1)
            {
              v1296 = *(v1292 + 16);
              if (!v1294)
              {
                appendStringInfoString(&__s1, "ORDER BY ");
              }

              deparseFunctionParameter(&__s1, *v1296);
              LODWORD(v1295) = *(v1292 + 4);
              if (v1295 >= 2)
              {
                v1297 = 1;
                do
                {
                  v1299 = *(v1292 + 16);
                  if (v1294 == v1297)
                  {
                    appendStringInfoChar(&__s1, 32);
                    v1298 = "ORDER BY ";
                  }

                  else
                  {
                    v1298 = ", ";
                  }

                  appendStringInfoString(&__s1, v1298);
                  deparseFunctionParameter(&__s1, *(v1299 + 8 * v1297++));
                  v1295 = *(v1292 + 4);
                  v6 = v1358;
                }

                while (v1297 < v1295);
                v9 = v1356;
              }
            }

            if (v1294 == v1295)
            {
              appendStringInfoString(&__s1, " ORDER BY ");
              deparseFunctionParameter(&__s1, *(*(v1292 + 16) + 8 * (*(v1292 + 4) - 1)));
            }
          }

          else
          {
            appendStringInfoChar(&__s1, 42);
          }

          appendStringInfoChar(&__s1, 41);
          appendStringInfoChar(&__s1, 32);
LABEL_2374:
          v1290 = *(v18 + 4);
        }

        v1300 = *(v18 + 32);
        if (v1290 == 7)
        {
          if (!v1300)
          {
            goto LABEL_2444;
          }

          v1301 = *(v1300 + 4);
          if (v1301 == 1)
          {
            if (!strcmp(*(**(v1300 + 16) + 16), "from"))
            {
              appendStringInfoString(&__s1, "FROM ");
              v1302 = *(**(*(v18 + 32) + 16) + 24);
              if (v1302 && *(v1302 + 4) >= 1)
              {
                v1303 = 8;
                v1304 = 0;
                do
                {
                  v1305 = *(v1302 + 16);
                  v1306 = quote_identifier(*(*(v1305 + 8 * v1304) + 8));
                  appendStringInfoString(&__s1, v1306);
                  v1307 = *(v1302 + 4);
                  if (v1305 + v1303)
                  {
                    v1308 = v1305 + v1303 >= (*(v1302 + 16) + 8 * v1307);
                  }

                  else
                  {
                    v1308 = 1;
                  }

                  if (!v1308)
                  {
                    appendStringInfoChar(&__s1, 46);
                    v1307 = *(v1302 + 4);
                  }

                  ++v1304;
                  v1303 += 8;
                }

                while (v1304 < v1307);
              }

              goto LABEL_2444;
            }

            goto LABEL_2391;
          }
        }

        else
        {
          if (!v1300)
          {
            goto LABEL_2444;
          }

          v1301 = *(v1300 + 4);
        }

        if (v1301 < 1)
        {
          goto LABEL_2444;
        }

LABEL_2391:
        v654 = v1300;
LABEL_2392:
        deparseDefinition(&__s1, v654);
        goto LABEL_2444;
      case 0xF9:
        appendStringInfoString(&__s1, "DROP ");
        v389 = *(v17 + 16);
        if (v389 <= 0x31 && ((0x2FEAF3FBFD1A3uLL >> v389) & 1) != 0)
        {
          appendStringInfoString(&__s1, (&off_2797B69D8)[v389]);
        }

        if (*(v17 + 25) == 1)
        {
          appendStringInfoString(&__s1, "CONCURRENTLY ");
          if (*(v17 + 24) != 1)
          {
LABEL_617:
            v390 = *(v17 + 16);
            if (v390 > 0x31)
            {
              goto LABEL_624;
            }

LABEL_621:
            switch(v390)
            {
              case 0u:
              case 0xEu:
              case 0xFu:
              case 0x10u:
              case 0x11u:
              case 0x1Du:
              case 0x22u:
                v764 = *(v17 + 8);
                if (v764 && *(v764 + 4) >= 1)
                {
                  v765 = 8;
                  v766 = 0;
                  do
                  {
                    v767 = *(v764 + 16);
                    v768 = quote_identifier(*(*(v767 + 8 * v766) + 8));
                    appendStringInfoString(&__s1, v768);
                    v769 = *(v764 + 4);
                    if (v767 + v765)
                    {
                      v770 = v767 + v765 >= (*(v764 + 16) + 8 * v769);
                    }

                    else
                    {
                      v770 = 1;
                    }

                    if (!v770)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v769 = *(v764 + 4);
                    }

                    ++v766;
                    v765 += 8;
                    v9 = v1356;
                  }

                  while (v766 < v769);
                }

                goto LABEL_623;
              case 1u:
                v1265 = *(v17 + 8);
                if (v1265 && *(v1265 + 4) >= 1)
                {
                  v1266 = 8;
                  v1267 = 0;
                  do
                  {
                    v1268 = *(v1265 + 16);
                    deparseAggregateWithArgtypes(&__s1, *(v1268 + 8 * v1267));
                    if (v1268 + v1266)
                    {
                      v1269 = v1268 + v1266 >= (*(*(v18 + 8) + 16) + 8 * *(*(v18 + 8) + 4));
                    }

                    else
                    {
                      v1269 = 1;
                    }

                    if (!v1269)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v1267;
                    v1266 += 8;
                    v9 = v1356;
                  }

                  while (v1267 < *(v1265 + 4));
                }

                goto LABEL_623;
              case 5u:
                v1270 = **(*(v17 + 8) + 16);
                appendStringInfoChar(&__s1, 40);
                deparseTypeName(&__s1, **(v1270 + 16));
                appendStringInfoString(&__s1, " AS ");
                deparseTypeName(&__s1, *(*(v1270 + 16) + 8));
                appendStringInfoChar(&__s1, 41);
                goto LABEL_623;
              case 7u:
              case 8u:
              case 0x12u:
              case 0x14u:
              case 0x17u:
              case 0x23u:
              case 0x25u:
              case 0x27u:
              case 0x2Bu:
              case 0x2Cu:
              case 0x2Du:
              case 0x2Eu:
              case 0x31u:
                deparseAnyNameList(&__s1, *(v17 + 8));
                goto LABEL_623;
              case 0xCu:
              case 0x2Fu:
                v1024 = *(v17 + 8);
                if (v1024 && *(v1024 + 4) >= 1)
                {
                  v1025 = 8;
                  v1026 = 0;
                  do
                  {
                    v1027 = *(v1024 + 16);
                    deparseTypeName(&__s1, *(v1027 + 8 * v1026));
                    if (v1027 + v1025)
                    {
                      v1028 = v1027 + v1025 >= (*(*(v18 + 8) + 16) + 8 * *(*(v18 + 8) + 4));
                    }

                    else
                    {
                      v1028 = 1;
                    }

                    if (!v1028)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v1026;
                    v1025 += 8;
                    v9 = v1356;
                  }

                  while (v1026 < *(v1024 + 4));
                }

                goto LABEL_623;
              case 0x13u:
              case 0x1Cu:
              case 0x20u:
                v1000 = *(v17 + 8);
                if (v1000 && *(v1000 + 4) >= 1)
                {
                  v1001 = 8;
                  v1002 = 0;
                  do
                  {
                    v1003 = *(v1000 + 16);
                    deparseFunctionWithArgtypes(&__s1, *(v1003 + 8 * v1002));
                    if (v1003 + v1001)
                    {
                      v1004 = v1003 + v1001 >= (*(*(v18 + 8) + 16) + 8 * *(*(v18 + 8) + 4));
                    }

                    else
                    {
                      v1004 = 1;
                    }

                    if (!v1004)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v1002;
                    v1001 += 8;
                    v9 = v1356;
                  }

                  while (v1002 < *(v1000 + 4));
                }

                goto LABEL_623;
              case 0x15u:
                deparseStringLiteral(&__s1, *(**(*(v17 + 8) + 16) + 8));
                goto LABEL_623;
              case 0x18u:
              case 0x1Au:
                v1029 = **(*(v17 + 8) + 16);
                if (!v1029)
                {
                  goto LABEL_2468;
                }

                if (*(v1029 + 4) >= 2)
                {
                  v1030 = 1;
                  v1031 = 0x100000000;
                  do
                  {
                    v1032 = (*(v1029 + 16) + (v1031 >> 29));
                    v1034 = *v1032;
                    v1033 = (v1032 + 1);
                    v1035 = quote_identifier(*(v1034 + 8));
                    appendStringInfoString(&__s1, v1035);
                    v1036 = *(v1029 + 4);
                    if (v1033)
                    {
                      v1037 = v1033 >= *(v1029 + 16) + 8 * v1036;
                    }

                    else
                    {
                      v1037 = 1;
                    }

                    if (!v1037)
                    {
                      appendStringInfoChar(&__s1, 46);
                      LODWORD(v1036) = *(v1029 + 4);
                    }

                    ++v1030;
                    v1031 += 0x100000000;
                  }

                  while (v1036 > v1030);
                }

                appendStringInfoString(&__s1, " USING ");
                v1038 = quote_identifier(*(**(v1029 + 16) + 8));
                appendStringInfoString(&__s1, v1038);
                v9 = v1356;
LABEL_623:
                appendStringInfoChar(&__s1, 32);
                break;
              case 0x19u:
                v1271 = *(v17 + 8);
                if (v1271 && *(v1271 + 4) >= 1)
                {
                  v1272 = 8;
                  v1273 = 0;
                  do
                  {
                    v1274 = *(v1271 + 16);
                    deparseOperatorWithArgtypes(&__s1, *(v1274 + 8 * v1273));
                    if (v1274 + v1272)
                    {
                      v1275 = v1274 + v1272 >= (*(*(v18 + 8) + 16) + 8 * *(*(v18 + 8) + 4));
                    }

                    else
                    {
                      v1275 = 1;
                    }

                    if (!v1275)
                    {
                      appendStringInfoString(&__s1, ", ");
                    }

                    ++v1273;
                    v1272 += 8;
                    v9 = v1356;
                  }

                  while (v1273 < *(v1271 + 4));
                }

                goto LABEL_623;
              case 0x1Bu:
              case 0x21u:
              case 0x2Au:
                v1005 = **(*(v17 + 8) + 16);
                v1006 = quote_identifier(*(*(*(v1005 + 16) + 8 * (*(v1005 + 4) - 1)) + 8));
                appendStringInfoString(&__s1, v1006);
                appendStringInfoString(&__s1, " ON ");
                v1007 = *(v1005 + 4);
                if (v1007 >= 1)
                {
                  v1008 = 8;
                  v1009 = 0;
                  do
                  {
                    v1010 = v1007;
                    v1011 = *(v1005 + 16);
                    if (v1011 + v1008)
                    {
                      v1012 = v1011 + v1008 >= (v1011 + 8 * v1010);
                    }

                    else
                    {
                      v1012 = 1;
                    }

                    if (!v1012)
                    {
                      v1013 = quote_identifier(*(*(v1011 + 8 * v1009) + 8));
                      appendStringInfoString(&__s1, v1013);
                      v1010 = *(v1005 + 4);
                      if (v1009 < *(v1005 + 4) - 2)
                      {
                        appendStringInfoChar(&__s1, 46);
                        v1010 = *(v1005 + 4);
                      }
                    }

                    v1007 = v1010;
                    v993 = v1009 + 1 < v1010;
                    v1008 += 8;
                    ++v1009;
                  }

                  while (v993);
                }

                goto LABEL_623;
              case 0x29u:
                v1276 = **(*(v17 + 8) + 16);
                appendStringInfoString(&__s1, "FOR ");
                deparseTypeName(&__s1, **(v1276 + 16));
                appendStringInfoString(&__s1, " LANGUAGE ");
                v1277 = quote_identifier(*(*(*(v1276 + 16) + 8) + 8));
                appendStringInfoString(&__s1, v1277);
                goto LABEL_623;
              default:
                break;
            }

LABEL_624:
            if (*(v18 + 20) == 1)
            {
LABEL_2443:
              appendStringInfoString(&__s1, "CASCADE ");
            }

            goto LABEL_2444;
          }
        }

        else if (*(v17 + 24) != 1)
        {
          goto LABEL_617;
        }

        appendStringInfoString(&__s1, "IF EXISTS ");
        v390 = *(v17 + 16);
        goto LABEL_621;
      case 0xFA:
        appendStringInfoString(&__s1, "TRUNCATE ");
        v405 = *(v17 + 8);
        if (v405 && *(v405 + 4) >= 1)
        {
          v406 = 8;
          v407 = 0;
          do
          {
            v408 = *(v405 + 16);
            deparseRangeVar(&__s1, *(v408 + 8 * v407), 0);
            v409 = *(v405 + 4);
            if (v408 + v406)
            {
              v410 = v408 + v406 >= (*(v405 + 16) + 8 * v409);
            }

            else
            {
              v410 = 1;
            }

            if (!v410)
            {
              appendStringInfoString(&__s1, ", ");
              v409 = *(v405 + 4);
            }

            ++v407;
            v406 += 8;
          }

          while (v407 < v409);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 16) == 1)
        {
          appendStringInfoString(&__s1, "RESTART IDENTITY ");
          v9 = v1356;
          if (*(v18 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        else
        {
          v9 = v1356;
          if (*(v18 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        appendStringInfoString(&__s1, "CASCADE ");
        v411 = v1360 - 1;
        if (v1360 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0xFB:
        appendStringInfoString(&__s1, "COMMENT ON ");
        v396 = *(v17 + 4);
        v397 = v396;
        if (v396 <= 0x31 && ((0x2FFFFBFFFF3E3uLL >> v396) & 1) != 0)
        {
          appendStringInfoString(&__s1, (&off_2797B6810)[v396]);
          v397 = *(v17 + 4);
        }

        switch(v397)
        {
          case 0:
          case 9:
          case 14:
          case 15:
          case 16:
          case 17:
          case 21:
          case 29:
          case 31:
          case 34:
          case 36:
          case 40:
            v722 = quote_identifier(*(*(v17 + 8) + 8));
            appendStringInfoString(&__s1, v722);
            goto LABEL_2399;
          case 1:
            deparseAggregateWithArgtypes(&__s1, *(v17 + 8));
            goto LABEL_2399;
          case 5:
            v1309 = *(v17 + 8);
            appendStringInfoChar(&__s1, 40);
            deparseTypeName(&__s1, **(v1309 + 16));
            appendStringInfoString(&__s1, " AS ");
            deparseTypeName(&__s1, *(*(v1309 + 16) + 8));
            appendStringInfoChar(&__s1, 41);
            goto LABEL_2399;
          case 6:
          case 7:
          case 8:
          case 18:
          case 20:
          case 23:
          case 35:
          case 37:
          case 39:
          case 43:
          case 44:
          case 45:
          case 46:
          case 49:
            v398 = *(v17 + 8);
            if (v398 && *(v398 + 4) >= 1)
            {
              v399 = 8;
              v400 = 0;
              do
              {
                v401 = *(v398 + 16);
                v402 = quote_identifier(*(*(v401 + 8 * v400) + 8));
                appendStringInfoString(&__s1, v402);
                v403 = *(v398 + 4);
                if (v401 + v399)
                {
                  v404 = v401 + v399 >= (*(v398 + 16) + 8 * v403);
                }

                else
                {
                  v404 = 1;
                }

                if (!v404)
                {
                  appendStringInfoChar(&__s1, 46);
                  v403 = *(v398 + 4);
                }

                ++v400;
                v399 += 8;
                v9 = v1356;
              }

              while (v400 < v403);
            }

            goto LABEL_2399;
          case 12:
          case 47:
            deparseTypeName(&__s1, *(v17 + 8));
            goto LABEL_2399;
          case 13:
            v1312 = *(v17 + 8);
            v1313 = quote_identifier(*(*(*(v1312 + 16) + 8 * (*(v1312 + 4) - 1)) + 8));
            appendStringInfoString(&__s1, v1313);
            appendStringInfoString(&__s1, " ON DOMAIN ");
            deparseTypeName(&__s1, **(v1312 + 16));
            goto LABEL_2399;
          case 19:
          case 28:
          case 32:
            deparseFunctionWithArgtypes(&__s1, *(v17 + 8));
            goto LABEL_2399;
          case 22:
            deparseValue(&__s1, *(v17 + 8), 0, v391, v392, v393, v394, v395);
            goto LABEL_2399;
          case 24:
          case 26:
            v1039 = *(v17 + 8);
            if (!v1039)
            {
              goto LABEL_2468;
            }

            if (*(v1039 + 4) >= 2)
            {
              v1040 = 1;
              v1041 = 0x100000000;
              do
              {
                v1042 = (*(v1039 + 16) + (v1041 >> 29));
                v1044 = *v1042;
                v1043 = (v1042 + 1);
                v1045 = quote_identifier(*(v1044 + 8));
                appendStringInfoString(&__s1, v1045);
                v1046 = *(v1039 + 4);
                if (v1043)
                {
                  v1047 = v1043 >= *(v1039 + 16) + 8 * v1046;
                }

                else
                {
                  v1047 = 1;
                }

                if (!v1047)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1046) = *(v1039 + 4);
                }

                ++v1040;
                v1041 += 0x100000000;
              }

              while (v1046 > v1040);
            }

            appendStringInfoString(&__s1, " USING ");
            v1048 = quote_identifier(*(**(v1039 + 16) + 8));
            appendStringInfoString(&__s1, v1048);
            v9 = v1356;
LABEL_2399:
            appendStringInfoString(&__s1, " IS ");
            v429 = *(v18 + 16);
            if (v429)
            {
              goto LABEL_2400;
            }

            v26 = "NULL";
            break;
          case 25:
            deparseOperatorWithArgtypes(&__s1, *(v17 + 8));
            goto LABEL_2399;
          case 27:
          case 33:
          case 38:
          case 42:
            v988 = *(v17 + 8);
            v989 = quote_identifier(*(*(*(v988 + 16) + 8 * (*(v988 + 4) - 1)) + 8));
            appendStringInfoString(&__s1, v989);
            appendStringInfoString(&__s1, " ON ");
            v990 = *(v988 + 4);
            if (v990 >= 1)
            {
              v991 = 8;
              v992 = 0;
              do
              {
                v994 = v990;
                v995 = *(v988 + 16);
                if (v995 + v991)
                {
                  v996 = v995 + v991 >= (v995 + 8 * v994);
                }

                else
                {
                  v996 = 1;
                }

                if (!v996)
                {
                  v997 = quote_identifier(*(*(v995 + 8 * v992) + 8));
                  appendStringInfoString(&__s1, v997);
                  v994 = *(v988 + 4);
                  if (v992 < *(v988 + 4) - 2)
                  {
                    appendStringInfoChar(&__s1, 46);
                    v994 = *(v988 + 4);
                  }
                }

                v990 = v994;
                v993 = v992 + 1 < v994;
                v991 += 8;
                ++v992;
              }

              while (v993);
            }

            goto LABEL_2399;
          case 41:
            v1310 = *(v17 + 8);
            appendStringInfoString(&__s1, "FOR ");
            deparseTypeName(&__s1, **(v1310 + 16));
            appendStringInfoString(&__s1, " LANGUAGE ");
            v1311 = quote_identifier(*(*(*(v1310 + 16) + 8) + 8));
            appendStringInfoString(&__s1, v1311);
            goto LABEL_2399;
          default:
            goto LABEL_2399;
        }

        goto LABEL_2263;
      case 0xFC:
        if (*(v17 + 24))
        {
          v366 = "MOVE ";
        }

        else
        {
          v366 = "FETCH ";
        }

        appendStringInfoString(&__s1, v366);
        v373 = *(v17 + 4);
        if (v373 > 1)
        {
          if (v373 == 2)
          {
            v742 = *(v17 + 8);
            if (v742 == -1)
            {
              v375 = "LAST ";
              goto LABEL_1923;
            }

            if (v742 == 1)
            {
              v375 = "FIRST ";
              goto LABEL_1923;
            }

            appendStringInfo(&__s1, "ABSOLUTE %ld ", v367, v368, v369, v370, v371, v372, *(v18 + 8));
          }

          else if (v373 == 3)
          {
            appendStringInfo(&__s1, "RELATIVE %ld ", v367, v368, v369, v370, v371, v372, *(v17 + 8));
          }
        }

        else if (v373)
        {
          if (v373 == 1)
          {
            v374 = *(v17 + 8);
            if (v374 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v375 = "BACKWARD ALL ";
              goto LABEL_1923;
            }

            if (v374 == 1)
            {
              v375 = "PRIOR ";
LABEL_1923:
              appendStringInfoString(&__s1, v375);
              v26 = *(v17 + 16);
              goto LABEL_2263;
            }

            appendStringInfo(&__s1, "BACKWARD %ld ", v367, v368, v369, v370, v371, v372, *(v18 + 8));
          }
        }

        else
        {
          v741 = *(v17 + 8);
          if (v741 != 1)
          {
            if (v741 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v375 = "ALL ";
              goto LABEL_1923;
            }

            appendStringInfo(&__s1, "FORWARD %ld ", v367, v368, v369, v370, v371, v372, *(v18 + 8));
          }
        }

        v26 = *(v17 + 16);
        goto LABEL_2263;
      case 0xFD:
        deparseIndexStmt(&__s1, v17);
        goto LABEL_2447;
      case 0xFE:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v17 + 5) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        if (*(v17 + 4))
        {
          v306 = "PROCEDURE ";
        }

        else
        {
          v306 = "FUNCTION ";
        }

        appendStringInfoString(&__s1, v306);
        v307 = *(v17 + 8);
        if (v307 && *(v307 + 4) >= 1)
        {
          v308 = 8;
          v309 = 0;
          do
          {
            v310 = *(v307 + 16);
            v311 = quote_identifier(*(*(v310 + 8 * v309) + 8));
            appendStringInfoString(&__s1, v311);
            v312 = *(v307 + 4);
            if (v310 + v308)
            {
              v313 = v310 + v308 >= (*(v307 + 16) + 8 * v312);
            }

            else
            {
              v313 = 1;
            }

            if (!v313)
            {
              appendStringInfoChar(&__s1, 46);
              v312 = *(v307 + 4);
            }

            ++v309;
            v308 += 8;
          }

          while (v309 < v312);
        }

        appendStringInfoChar(&__s1, 40);
        v314 = *(v18 + 16);
        if (v314 && *(v314 + 4) >= 1)
        {
          v315 = 0;
          v316 = 8;
          v317 = 0;
          do
          {
            v319 = *(v314 + 16);
            v320 = *(v319 + 8 * v317);
            if (*(v320 + 24) == 116)
            {
              v318 = 1;
            }

            else
            {
              v318 = v315;
              deparseFunctionParameter(&__s1, v320);
              if (v319 + v316)
              {
                v321 = v319 + v316 >= (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4));
              }

              else
              {
                v321 = 1;
              }

              if (!v321 && *(*(v319 + 8 * v317 + 8) + 24) != 116)
              {
                appendStringInfoString(&__s1, ", ");
              }
            }

            ++v317;
            v316 += 8;
            v315 = v318;
          }

          while (v317 < *(v314 + 4));
          appendStringInfoString(&__s1, ") ");
          if (v318)
          {
            appendStringInfoString(&__s1, "RETURNS TABLE (");
            v647 = *(v18 + 16);
            if (v647 && *(v647 + 4) >= 1)
            {
              v648 = 8;
              v649 = 0;
              do
              {
                v650 = *(v647 + 16);
                v651 = *(v650 + 8 * v649);
                if (*(v651 + 24) == 116)
                {
                  deparseFunctionParameter(&__s1, v651);
                  if (v650 + v648 && v650 + v648 < (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4)))
                  {
                    appendStringInfoString(&__s1, ", ");
                  }
                }

                ++v649;
                v648 += 8;
              }

              while (v649 < *(v647 + 4));
            }

            appendStringInfoString(&__s1, ") ");
            goto LABEL_1347;
          }
        }

        else
        {
          appendStringInfoString(&__s1, ") ");
        }

        if (*(v18 + 24))
        {
          appendStringInfoString(&__s1, "RETURNS ");
          deparseTypeName(&__s1, *(v18 + 24));
          appendStringInfoChar(&__s1, 32);
        }

LABEL_1347:
        v744 = *(v18 + 32);
        v9 = v1356;
        if (!v744 || *(v744 + 4) < 1)
        {
          goto LABEL_1386;
        }

        v745 = 0;
        while (1)
        {
          v747 = *(*(v744 + 16) + 8 * v745);
          v748 = *(v747 + 16);
          if (*v748 == 97 && *(v748 + 1) == 115 && !*(v748 + 2))
          {
            appendStringInfoString(&__s1, "AS ");
            v757 = *(v747 + 24);
            if (v757 && *(v757 + 4) >= 1)
            {
              v758 = 8;
              v759 = 0;
              do
              {
                v760 = *(v757 + 16);
                v761 = *(*(v760 + 8 * v759) + 8);
                if (strstr(v761, "$$"))
                {
                  deparseStringLiteral(&__s1, v761);
                }

                else
                {
                  appendStringInfoString(&__s1, "$$");
                  appendStringInfoString(&__s1, v761);
                  appendStringInfoString(&__s1, "$$");
                }

                v762 = *(v757 + 4);
                if (v760 + v758)
                {
                  v763 = v760 + v758 >= (*(v757 + 16) + 8 * v762);
                }

                else
                {
                  v763 = 1;
                }

                if (!v763)
                {
                  appendStringInfoString(&__s1, ", ");
                  v762 = *(v757 + 4);
                }

                ++v759;
                v758 += 8;
              }

              while (v759 < v762);
            }

            goto LABEL_1352;
          }

          if (!strcmp(*(v747 + 16), "language"))
          {
            appendStringInfoString(&__s1, "LANGUAGE ");
            v749 = *(*(v747 + 24) + 8);
            v750 = strlen(v749);
            if (v750)
            {
              if (v750 >= 0x40)
              {
                deparseStringLiteral(&__s1, v749);
                goto LABEL_1352;
              }

              v746 = quote_identifier(v749);
            }

            else
            {
              v746 = "''";
            }
          }

          else
          {
            if (!strcmp(v748, "transform"))
            {
              v751 = *(v747 + 24);
              appendStringInfoString(&__s1, "TRANSFORM ");
              if (v751 && *(v751 + 4) >= 1)
              {
                v752 = 8;
                v753 = 0;
                do
                {
                  v754 = *(v751 + 16);
                  appendStringInfoString(&__s1, "FOR TYPE ");
                  deparseTypeName(&__s1, *(v754 + 8 * v753));
                  v755 = *(v751 + 4);
                  if (v754 + v752)
                  {
                    v756 = v754 + v752 >= (*(v751 + 16) + 8 * v755);
                  }

                  else
                  {
                    v756 = 1;
                  }

                  if (!v756)
                  {
                    appendStringInfoString(&__s1, ", ");
                    v755 = *(v751 + 4);
                  }

                  ++v753;
                  v752 += 8;
                }

                while (v753 < v755);
              }

              goto LABEL_1352;
            }

            if (strcmp(v748, "window"))
            {
              deparseCommonFuncOptItem(&__s1, v747);
              goto LABEL_1352;
            }

            v746 = "WINDOW";
          }

          appendStringInfoString(&__s1, v746);
LABEL_1352:
          appendStringInfoChar(&__s1, 32);
          ++v745;
          v9 = v1356;
          v7 = v1357;
          v10 = v1355;
          if (v745 >= *(v744 + 4))
          {
LABEL_1386:
            v411 = v1360 - 1;
            v6 = v1358;
            if (v1360 >= 1)
            {
              goto LABEL_2445;
            }

            goto LABEL_2447;
          }
        }

      case 0xFF:
        appendStringInfoString(&__s1, "ALTER ");
        v284 = *(v17 + 4);
        switch(v284)
        {
          case 19:
            v285 = "FUNCTION ";
            break;
          case 32:
            v285 = "ROUTINE ";
            break;
          case 28:
            v285 = "PROCEDURE ";
            break;
          default:
            goto LABEL_1256;
        }

        appendStringInfoString(&__s1, v285);
LABEL_1256:
        deparseFunctionWithArgtypes(&__s1, *(v17 + 8));
        appendStringInfoChar(&__s1, 32);
        v723 = *(v17 + 16);
        if (v723 && *(v723 + 4) >= 1)
        {
          v724 = 8;
          v725 = 0;
          do
          {
            v726 = *(v723 + 16);
            deparseCommonFuncOptItem(&__s1, *(v726 + 8 * v725));
            if (v726 + v724)
            {
              v727 = v726 + v724 >= (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4));
            }

            else
            {
              v727 = 1;
            }

            if (!v727)
            {
              appendStringInfoChar(&__s1, 32);
            }

            ++v725;
            v724 += 8;
            v9 = v1356;
          }

          while (v725 < *(v723 + 4));
        }

        goto LABEL_2447;
      case 0x100:
        appendStringInfoString(&__s1, "DO ");
        v376 = *(v17 + 8);
        if (!v376 || *(v376 + 4) < 1)
        {
          goto LABEL_1802;
        }

        v377 = *(v376 + 4);
        v378 = 0;
        while (1)
        {
          v380 = *(*(v376 + 16) + 8 * v378);
          v381 = *(v380 + 16);
          if (!strcmp(v381, "language"))
          {
            appendStringInfoString(&__s1, "LANGUAGE ");
            v379 = quote_identifier(*(*(v380 + 24) + 8));
          }

          else
          {
            if (*v381 != 97 || *(v381 + 1) != 115 || *(v381 + 2))
            {
              goto LABEL_595;
            }

            v382 = *(*(v380 + 24) + 8);
            v383 = "$$";
            if (strstr(v382, "$$"))
            {
              v383 = "$outer$";
            }

            appendStringInfoString(&__s1, v383);
            appendStringInfoString(&__s1, v382);
            v379 = v383;
          }

          appendStringInfoString(&__s1, v379);
          appendStringInfoChar(&__s1, 32);
          v377 = *(v376 + 4);
LABEL_595:
          if (++v378 >= v377)
          {
            goto LABEL_1802;
          }
        }

      case 0x101:
        appendStringInfoString(&__s1, "ALTER ");
        v458 = "AGGREGATE ";
        switch(*(v17 + 4))
        {
          case 1:
            goto LABEL_2407;
          case 4:
          case 0x2F:
            v458 = "TYPE ";
            goto LABEL_2407;
          case 6:
            v1278 = *(v17 + 8);
            if (v1278 > 38)
            {
              if (v1278 == 39)
              {
LABEL_2406:
                v458 = "TABLE ";
              }

              else
              {
                if (v1278 != 49)
                {
                  goto LABEL_2408;
                }

LABEL_2405:
                v458 = "VIEW ";
              }
            }

            else if (v1278 == 18)
            {
LABEL_2317:
              v458 = "FOREIGN TABLE ";
            }

            else
            {
              if (v1278 != 23)
              {
                goto LABEL_2408;
              }

LABEL_2316:
              v458 = "MATERIALIZED VIEW ";
            }

LABEL_2407:
            appendStringInfoString(&__s1, v458);
LABEL_2408:
            if (*(v17 + 52) == 1)
            {
              appendStringInfoString(&__s1, "IF EXISTS ");
            }

            switch(*(v17 + 4))
            {
              case 1:
                deparseAggregateWithArgtypes(&__s1, *(v17 + 24));
                goto LABEL_2441;
              case 4:
                deparseRangeVar(&__s1, *(v17 + 16), 9);
                v1335 = " RENAME ATTRIBUTE ";
                goto LABEL_2453;
              case 6:
                deparseRangeVar(&__s1, *(v17 + 16), 0);
                v1335 = " RENAME COLUMN ";
                goto LABEL_2453;
              case 7:
              case 8:
              case 0xC:
              case 0x25:
              case 0x2B:
              case 0x2C:
              case 0x2D:
              case 0x2E:
              case 0x2F:
                v1314 = *(v17 + 24);
                if (v1314 && *(v1314 + 4) >= 1)
                {
                  v1315 = 8;
                  v1316 = 0;
                  do
                  {
                    v1317 = *(v1314 + 16);
                    v1318 = quote_identifier(*(*(v1317 + 8 * v1316) + 8));
                    appendStringInfoString(&__s1, v1318);
                    v1319 = *(v1314 + 4);
                    if (v1317 + v1315)
                    {
                      v1320 = v1317 + v1315 >= (*(v1314 + 16) + 8 * v1319);
                    }

                    else
                    {
                      v1320 = 1;
                    }

                    if (!v1320)
                    {
                      appendStringInfoChar(&__s1, 46);
                      v1319 = *(v1314 + 4);
                    }

                    ++v1316;
                    v1315 += 8;
                  }

                  while (v1316 < v1319);
                }

                goto LABEL_2420;
              case 9:
              case 0x1F:
              case 0x22:
              case 0x28:
                v1322 = *(v17 + 32);
                goto LABEL_2424;
              case 0xD:
                v1339 = *(v17 + 24);
                if (v1339 && *(v1339 + 4) >= 1)
                {
                  v1340 = 8;
                  v1341 = 0;
                  do
                  {
                    v1342 = *(v1339 + 16);
                    v1343 = quote_identifier(*(*(v1342 + 8 * v1341) + 8));
                    appendStringInfoString(&__s1, v1343);
                    v1344 = *(v1339 + 4);
                    if (v1342 + v1340)
                    {
                      v1345 = v1342 + v1340 >= (*(v1339 + 16) + 8 * v1344);
                    }

                    else
                    {
                      v1345 = 1;
                    }

                    if (!v1345)
                    {
                      appendStringInfoChar(&__s1, 46);
                      v1344 = *(v1339 + 4);
                    }

                    ++v1341;
                    v1340 += 8;
                  }

                  while (v1341 < v1344);
                }

                appendStringInfoString(&__s1, " RENAME CONSTRAINT ");
                v1346 = quote_identifier(*(v18 + 32));
                appendStringInfoString(&__s1, v1346);
                appendStringInfoChar(&__s1, 32);
                v9 = v1356;
                break;
              case 0xE:
              case 0x10:
              case 0x11:
              case 0x15:
              case 0x1D:
              case 0x24:
                v1322 = *(*(v17 + 24) + 8);
LABEL_2424:
                v1323 = quote_identifier(v1322);
                appendStringInfoString(&__s1, v1323);
                goto LABEL_2441;
              case 0x12:
              case 0x14:
              case 0x17:
              case 0x23:
              case 0x27:
              case 0x31:
                v1321 = *(v17 + 16);
                goto LABEL_2426;
              case 0x13:
              case 0x1C:
              case 0x20:
                deparseFunctionWithArgtypes(&__s1, *(v17 + 24));
                goto LABEL_2441;
              case 0x18:
              case 0x1A:
                v1325 = *(v17 + 24);
                if (!v1325)
                {
                  goto LABEL_2468;
                }

                if (*(v1325 + 4) >= 2)
                {
                  v1326 = 1;
                  v1327 = 0x100000000;
                  do
                  {
                    v1328 = (*(v1325 + 16) + (v1327 >> 29));
                    v1330 = *v1328;
                    v1329 = (v1328 + 1);
                    v1331 = quote_identifier(*(v1330 + 8));
                    appendStringInfoString(&__s1, v1331);
                    v1332 = *(v1325 + 4);
                    if (v1329)
                    {
                      v1333 = v1329 >= *(v1325 + 16) + 8 * v1332;
                    }

                    else
                    {
                      v1333 = 1;
                    }

                    if (!v1333)
                    {
                      appendStringInfoChar(&__s1, 46);
                      LODWORD(v1332) = *(v1325 + 4);
                    }

                    ++v1326;
                    v1327 += 0x100000000;
                  }

                  while (v1332 > v1326);
                }

                appendStringInfoString(&__s1, " USING ");
                v1334 = quote_identifier(*(**(v1325 + 16) + 8));
                appendStringInfoString(&__s1, v1334);
LABEL_2420:
                appendStringInfoString(&__s1, " RENAME ");
                v9 = v1356;
                break;
              case 0x1B:
              case 0x21:
              case 0x2A:
                v1324 = quote_identifier(*(v17 + 32));
                appendStringInfoString(&__s1, v1324);
                appendStringInfoString(&__s1, " ON ");
                v1321 = *(v17 + 16);
LABEL_2426:
                deparseRangeVar(&__s1, v1321, 0);
LABEL_2441:
                appendStringInfoString(&__s1, " RENAME ");
                break;
              case 0x26:
                deparseRangeVar(&__s1, *(v17 + 16), 0);
                v1335 = " RENAME CONSTRAINT ";
LABEL_2453:
                appendStringInfoString(&__s1, v1335);
                v1338 = quote_identifier(*(v17 + 32));
                appendStringInfoString(&__s1, v1338);
                appendStringInfoChar(&__s1, 32);
                break;
              default:
                break;
            }

            appendStringInfoString(&__s1, "TO ");
            v1336 = quote_identifier(*(v18 + 40));
            appendStringInfoString(&__s1, v1336);
            appendStringInfoChar(&__s1, 32);
            if (*(v18 + 48) == 1)
            {
              goto LABEL_2443;
            }

            goto LABEL_2444;
          case 7:
            v458 = "COLLATION ";
            goto LABEL_2407;
          case 8:
            v458 = "CONVERSION ";
            goto LABEL_2407;
          case 9:
            v458 = "DATABASE ";
            goto LABEL_2407;
          case 0xC:
          case 0xD:
            v458 = "DOMAIN ";
            goto LABEL_2407;
          case 0xE:
            v458 = "EVENT TRIGGER ";
            goto LABEL_2407;
          case 0x10:
            v458 = "FOREIGN DATA WRAPPER ";
            goto LABEL_2407;
          case 0x11:
            v458 = "SERVER ";
            goto LABEL_2407;
          case 0x12:
            goto LABEL_2317;
          case 0x13:
            v458 = "FUNCTION ";
            goto LABEL_2407;
          case 0x14:
            v458 = "INDEX ";
            goto LABEL_2407;
          case 0x15:
            v458 = "LANGUAGE ";
            goto LABEL_2407;
          case 0x17:
            goto LABEL_2316;
          case 0x18:
            v458 = "OPERATOR CLASS ";
            goto LABEL_2407;
          case 0x1A:
            v458 = "OPERATOR FAMILY ";
            goto LABEL_2407;
          case 0x1B:
            v458 = "POLICY ";
            goto LABEL_2407;
          case 0x1C:
            v458 = "PROCEDURE ";
            goto LABEL_2407;
          case 0x1D:
            v458 = "PUBLICATION ";
            goto LABEL_2407;
          case 0x1F:
            v458 = "ROLE ";
            goto LABEL_2407;
          case 0x20:
            v458 = "ROUTINE ";
            goto LABEL_2407;
          case 0x21:
            v458 = "RULE ";
            goto LABEL_2407;
          case 0x22:
            v458 = "SCHEMA ";
            goto LABEL_2407;
          case 0x23:
            v458 = "SEQUENCE ";
            goto LABEL_2407;
          case 0x24:
            v458 = "SUBSCRIPTION ";
            goto LABEL_2407;
          case 0x25:
            v458 = "STATISTICS ";
            goto LABEL_2407;
          case 0x26:
          case 0x27:
            goto LABEL_2406;
          case 0x28:
            v458 = "TABLESPACE ";
            goto LABEL_2407;
          case 0x2A:
            v458 = "TRIGGER ";
            goto LABEL_2407;
          case 0x2B:
            v458 = "TEXT SEARCH CONFIGURATION ";
            goto LABEL_2407;
          case 0x2C:
            v458 = "TEXT SEARCH DICTIONARY ";
            goto LABEL_2407;
          case 0x2D:
            v458 = "TEXT SEARCH PARSER ";
            goto LABEL_2407;
          case 0x2E:
            v458 = "TEXT SEARCH TEMPLATE ";
            goto LABEL_2407;
          case 0x31:
            goto LABEL_2405;
          default:
            goto LABEL_2408;
        }

      case 0x102:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v17 + 48) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        appendStringInfoString(&__s1, "RULE ");
        v197 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v197);
        appendStringInfoString(&__s1, " AS ON ");
        v198 = *(v17 + 32) - 1;
        if (v198 <= 3)
        {
          appendStringInfoString(&__s1, (&off_2797B6BD0)[v198]);
        }

        appendStringInfoString(&__s1, "TO ");
        deparseRangeVar(&__s1, *(v17 + 8), 0);
        appendStringInfoChar(&__s1, 32);
        v199 = *(v17 + 24);
        if (v199)
        {
          appendStringInfoString(&__s1, "WHERE ");
          deparseExpr(&__s1, v199, v200, v201, v202, v203, v204, v205);
          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "DO ");
        if (*(v17 + 36) == 1)
        {
          appendStringInfoString(&__s1, "INSTEAD ");
        }

        v206 = *(v17 + 40);
        if (!v206)
        {
          goto LABEL_314;
        }

        v207 = *(v206 + 4);
        if (v207 != 1)
        {
          if (!v207)
          {
LABEL_314:
            v26 = "NOTHING";
            goto LABEL_2263;
          }

          appendStringInfoChar(&__s1, 40);
          v731 = *(v17 + 40);
          if (v731 && *(v731 + 4) >= 1)
          {
            v732 = 0;
            v733 = 0;
            do
            {
              v734 = *(v731 + 16);
              v735 = *(v734 + v733);
              v736 = *v735;
              if (*v735 <= 234)
              {
                if (v736 == 233)
                {
                  deparseInsertStmt(&__s1, *(v734 + v733));
                }

                else if (v736 == 234)
                {
                  deparseDeleteStmt(&__s1, *(v734 + v733));
                }
              }

              else
              {
                switch(v736)
                {
                  case 235:
                    deparseUpdateStmt(&__s1, *(v734 + v733));
                    break;
                  case 259:
                    appendStringInfoString(&__s1, "NOTIFY ");
                    v737 = quote_identifier(*(v735 + 8));
                    appendStringInfoString(&__s1, v737);
                    if (*(v735 + 16))
                    {
                      appendStringInfoString(&__s1, ", ");
                      deparseStringLiteral(&__s1, *(v735 + 16));
                    }

                    break;
                  case 236:
                    deparseSelectStmt(&__s1, *(v734 + v733));
                    break;
                }
              }

              if (v734 + v733 != -8 && v734 + v733 + 8 < (*(*(v18 + 40) + 16) + 8 * *(*(v18 + 40) + 4)))
              {
                appendStringInfoString(&__s1, "; ");
              }

              ++v732;
              v733 += 8;
            }

            while (v732 < *(v731 + 4));
          }

          appendStringInfoChar(&__s1, 41);
          v7 = v1357;
          v6 = v1358;
          v9 = v1356;
          goto LABEL_2447;
        }

        v18 = **(v206 + 16);
        v634 = *v18;
        if (*v18 <= 234)
        {
          goto LABEL_1292;
        }

        if (v634 == 235)
        {
          goto LABEL_1288;
        }

        if (v634 != 259)
        {
          goto LABEL_1286;
        }

LABEL_1289:
        appendStringInfoString(&__s1, "NOTIFY ");
        v730 = quote_identifier(*(v18 + 8));
        appendStringInfoString(&__s1, v730);
        if (*(v18 + 16))
        {
          appendStringInfoString(&__s1, ", ");
          v429 = *(v18 + 16);
LABEL_2400:
          deparseStringLiteral(&__s1, v429);
        }

        goto LABEL_2447;
      case 0x103:
        goto LABEL_1289;
      case 0x104:
        appendStringInfoString(&__s1, "LISTEN ");
        v189 = *(v17 + 8);
        goto LABEL_2262;
      case 0x105:
        appendStringInfoString(&__s1, "UNLISTEN ");
        v189 = *(v17 + 8);
        if (v189)
        {
          goto LABEL_2262;
        }

        v26 = "*";
        goto LABEL_2263;
      case 0x106:
        v459 = *(v17 + 4);
        if (v459 <= 4)
        {
          if (v459 <= 1)
          {
            if (v459)
            {
              if (v459 != 1)
              {
                goto LABEL_2444;
              }

              v739 = "START TRANSACTION ";
            }

            else
            {
              v739 = "BEGIN ";
            }

            appendStringInfoString(&__s1, v739);
            deparseTransactionModeList(&__s1, *(v17 + 8));
            goto LABEL_2444;
          }

          if (v459 == 2)
          {
            v999 = "COMMIT ";
          }

          else
          {
            if (v459 != 3)
            {
              v460 = "SAVEPOINT ";
              goto LABEL_1882;
            }

            v999 = "ROLLBACK ";
          }

          appendStringInfoString(&__s1, v999);
          if (*(v17 + 32) == 1)
          {
            appendStringInfoString(&__s1, "AND CHAIN ");
          }

          goto LABEL_2444;
        }

        if (v459 > 6)
        {
          switch(v459)
          {
            case 7:
              v598 = "PREPARE TRANSACTION ";
              break;
            case 8:
              v598 = "COMMIT PREPARED ";
              break;
            case 9:
              v598 = "ROLLBACK PREPARED ";
              break;
            default:
              goto LABEL_2444;
          }

          appendStringInfoString(&__s1, v598);
          deparseStringLiteral(&__s1, *(v17 + 24));
          goto LABEL_2444;
        }

        if (v459 == 5)
        {
          v460 = "RELEASE ";
        }

        else
        {
          appendStringInfoString(&__s1, "ROLLBACK ");
          v460 = "TO SAVEPOINT ";
        }

LABEL_1882:
        appendStringInfoString(&__s1, v460);
        v998 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v998);
        goto LABEL_2444;
      case 0x107:
        deparseViewStmt(&__s1, v17);
        goto LABEL_2447;
      case 0x108:
        appendStringInfoString(&__s1, "LOAD ");
        v429 = *(v17 + 8);
        goto LABEL_2400;
      case 0x109:
        appendStringInfoString(&__s1, "CREATE DOMAIN ");
        v412 = *(v17 + 8);
        if (v412 && *(v412 + 4) >= 1)
        {
          v413 = 8;
          v414 = 0;
          do
          {
            v415 = *(v412 + 16);
            v416 = quote_identifier(*(*(v415 + 8 * v414) + 8));
            appendStringInfoString(&__s1, v416);
            v417 = *(v412 + 4);
            if (v415 + v413)
            {
              v418 = v415 + v413 >= (*(v412 + 16) + 8 * v417);
            }

            else
            {
              v418 = 1;
            }

            if (!v418)
            {
              appendStringInfoChar(&__s1, 46);
              v417 = *(v412 + 4);
            }

            ++v414;
            v413 += 8;
          }

          while (v414 < v417);
        }

        appendStringInfoString(&__s1, " AS ");
        deparseTypeName(&__s1, *(v18 + 16));
        appendStringInfoChar(&__s1, 32);
        v419 = *(v18 + 24);
        if (v419)
        {
          deparseCollateClause(&__s1, v419);
          appendStringInfoChar(&__s1, 32);
        }

        v420 = *(v18 + 32);
        v9 = v1356;
        if (v420 && *(v420 + 4) >= 1)
        {
          v421 = 0;
          do
          {
            v422 = v421;
            deparseConstraint(&__s1, *(*(v420 + 16) + 8 * v421));
            appendStringInfoChar(&__s1, 32);
            v421 = v422 + 1;
          }

          while (v422 + 1 < *(v420 + 4));
        }

        goto LABEL_2444;
      case 0x10A:
        appendStringInfoString(&__s1, "CREATE DATABASE ");
        v423 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v423);
        appendStringInfoChar(&__s1, 32);
        deparseCreatedbOptList(&__s1, *(v17 + 16));
        v411 = v1360 - 1;
        if (v1360 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0x10B:
        appendStringInfoString(&__s1, "DROP DATABASE ");
        if (*(v17 + 16) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        v430 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v430);
        appendStringInfoChar(&__s1, 32);
        v431 = *(v17 + 24);
        if (v431 && *(v431 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v432 = *(v17 + 24);
          if (v432 && *(v432 + 4) >= 1)
          {
            v433 = 8;
            v434 = 0;
            do
            {
              v435 = *(v432 + 16);
              if (!strcmp(*(*(v435 + 8 * v434) + 16), "force"))
              {
                appendStringInfoString(&__s1, "FORCE");
              }

              if (v435 + v433)
              {
                v436 = v435 + v433 >= (*(*(v18 + 24) + 16) + 8 * *(*(v18 + 24) + 4));
              }

              else
              {
                v436 = 1;
              }

              if (!v436)
              {
                appendStringInfoString(&__s1, ", ");
              }

              ++v434;
              v433 += 8;
            }

            while (v434 < *(v432 + 4));
          }

          appendStringInfoChar(&__s1, 41);
          v9 = v1356;
        }

        goto LABEL_2444;
      case 0x10C:
        if (*(v17 + 24))
        {
          v286 = "VACUUM ";
        }

        else
        {
          v286 = "ANALYZE ";
        }

        appendStringInfoString(&__s1, v286);
        v287 = *(v17 + 8);
        if (v287 && *(v287 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v288 = *(v17 + 8);
          if (v288 && *(v288 + 4) >= 1)
          {
            v289 = 0;
            do
            {
              v290 = *(v288 + 16) + 8 * v289;
              v291 = *v290;
              v292 = pstrdup(*(*v290 + 16));
              v293 = v292;
              if (*v292)
              {
                v294 = *v292;
                v295 = (v292 + 1);
                do
                {
                  v296 = v295;
                  *(v295 - 1) = pg_toupper(v294);
                  v294 = *v296;
                  v295 = v296 + 1;
                }

                while (*v296);
              }

              appendStringInfoString(&__s1, v293);
              pfree(v293);
              if (*(v291 + 24))
              {
                appendStringInfoChar(&__s1, 32);
                v303 = *(v291 + 24);
                v304 = *v303;
                if (*v303 == 223)
                {
                  deparseOptBooleanOrString(&__s1, v303[1]);
                }

                else if (v304 == 222)
                {
                  appendStringInfoString(&__s1, v303[1]);
                }

                else if (v304 == 221)
                {
                  appendStringInfo(&__s1, "%d", v297, v298, v299, v300, v301, v302, *(v303 + 2));
                }
              }

              v305 = v290 == -8 || v290 + 8 >= (*(*(v18 + 8) + 16) + 8 * *(*(v18 + 8) + 4));
              v7 = v1357;
              if (!v305)
              {
                appendStringInfoString(&__s1, ", ");
              }

              ++v289;
            }

            while (v289 < *(v288 + 4));
          }

          appendStringInfoString(&__s1, ") ");
          v6 = v1358;
        }

        v635 = *(v18 + 16);
        if (v635 && *(v635 + 4) >= 1)
        {
          v636 = 0;
          do
          {
            v637 = *(v635 + 16) + 8 * v636;
            v638 = *v637;
            deparseRangeVar(&__s1, *(*v637 + 8), 0);
            v639 = *(v638 + 24);
            if (v639 && *(v639 + 4) >= 1)
            {
              appendStringInfoChar(&__s1, 40);
              v640 = *(v638 + 24);
              if (v640 && *(v640 + 4) >= 1)
              {
                v641 = 8;
                v642 = 0;
                do
                {
                  v643 = *(v640 + 16);
                  v644 = quote_identifier(*(*(v643 + 8 * v642) + 8));
                  appendStringInfoString(&__s1, v644);
                  if (v643 + v641)
                  {
                    v645 = v643 + v641 >= (*(*(v638 + 24) + 16) + 8 * *(*(v638 + 24) + 4));
                  }

                  else
                  {
                    v645 = 1;
                  }

                  if (!v645)
                  {
                    appendStringInfoString(&__s1, ", ");
                  }

                  ++v642;
                  v641 += 8;
                }

                while (v642 < *(v640 + 4));
              }

              appendStringInfoChar(&__s1, 41);
              v7 = v1357;
              v6 = v1358;
              v10 = v1355;
            }

            if (v637 != -8 && v637 + 8 < (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4)))
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v636;
          }

          while (v636 < *(v635 + 4));
        }

        goto LABEL_1802;
      case 0x10D:
        appendStringInfoString(&__s1, "EXPLAIN ");
        v253 = *(v17 + 16);
        if (v253 && *(v253 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v254 = *(v17 + 16);
          if (v254 && *(v254 + 4) >= 1)
          {
            v255 = 0;
            do
            {
              v256 = *(v254 + 16) + 8 * v255;
              v257 = *v256;
              v258 = pstrdup(*(*v256 + 16));
              v259 = v258;
              if (*v258)
              {
                v260 = *v258;
                v261 = (v258 + 1);
                do
                {
                  v262 = v261;
                  *(v261 - 1) = pg_toupper(v260);
                  v260 = *v262;
                  v261 = v262 + 1;
                }

                while (*v262);
              }

              appendStringInfoString(&__s1, v259);
              pfree(v259);
              v263 = *(v257 + 24);
              if (v263)
              {
                v264 = *v263;
                if (v264 == 223)
                {
                  appendStringInfoChar(&__s1, 32);
                  deparseOptBooleanOrString(&__s1, *(*(v257 + 24) + 8));
                }

                else if ((v264 - 221) <= 1)
                {
                  appendStringInfoChar(&__s1, 32);
                  v271 = *(v257 + 24);
                  if (*v271 == 222)
                  {
                    appendStringInfoString(&__s1, *(v271 + 8));
                  }

                  else if (*v271 == 221)
                  {
                    appendStringInfo(&__s1, "%d", v265, v266, v267, v268, v269, v270, *(v271 + 8));
                  }
                }
              }

              v272 = v256 == -8 || v256 + 8 >= (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4));
              v7 = v1357;
              if (!v272)
              {
                appendStringInfoString(&__s1, ", ");
              }

              ++v255;
            }

            while (v255 < *(v254 + 4));
          }

          appendStringInfoString(&__s1, ") ");
          v6 = v1358;
          v9 = v1356;
        }

        v18 = *(v18 + 8);
        v634 = *v18;
        if (*v18 <= 269)
        {
          if (v634 <= 234)
          {
LABEL_1292:
            if (v634 == 233)
            {
LABEL_9:
              deparseInsertStmt(&__s1, v18);
            }

            else if (v634 == 234)
            {
LABEL_1294:
              deparseDeleteStmt(&__s1, v18);
            }
          }

          else if (v634 == 235)
          {
LABEL_1288:
            deparseUpdateStmt(&__s1, v18);
          }

          else
          {
LABEL_1286:
            if (v634 == 236)
            {
LABEL_1287:
              deparseSelectStmt(&__s1, v18);
            }
          }

          goto LABEL_2447;
        }

        if (v634 <= 296)
        {
          if (v634 == 270)
          {
LABEL_1090:
            deparseCreateTableAsStmt(&__s1, v18);
          }

          else if (v634 == 295)
          {
LABEL_1089:
            deparseExecuteStmt(&__s1, v18);
          }

          goto LABEL_2447;
        }

        if (v634 == 297)
        {
LABEL_1253:
          deparseDeclareCursorStmt(&__s1, v18);
          goto LABEL_2447;
        }

        if (v634 != 330)
        {
          goto LABEL_2447;
        }

LABEL_1249:
        appendStringInfoString(&__s1, "REFRESH MATERIALIZED VIEW ");
        if (*(v18 + 4) == 1)
        {
          appendStringInfoString(&__s1, "CONCURRENTLY ");
        }

        deparseRangeVar(&__s1, *(v18 + 8), 0);
        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 5) == 1)
        {
          appendStringInfoString(&__s1, "WITH NO DATA ");
        }

        goto LABEL_2444;
      case 0x10E:
        goto LABEL_1090;
      case 0x10F:
        deparseCreateSeqStmt(&__s1, v17);
        goto LABEL_2447;
      case 0x110:
        appendStringInfoString(&__s1, "ALTER SEQUENCE ");
        if (*(v17 + 25) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        deparseRangeVar(&__s1, *(v17 + 8), 0);
        appendStringInfoChar(&__s1, 32);
        v127 = *(v17 + 16);
        if (v127 && *(v127 + 4) >= 1)
        {
          v128 = 0;
          do
          {
            v129 = v128;
            deparseSeqOptElem(&__s1, *(*(v127 + 16) + 8 * v128));
            appendStringInfoChar(&__s1, 32);
            v128 = v129 + 1;
          }

          while (v129 + 1 < *(v127 + 4));
        }

        goto LABEL_2444;
      case 0x111:
        deparseVariableSetStmt(&__s1, v17);
        goto LABEL_2447;
      case 0x112:
        appendStringInfoString(&__s1, "SHOW ");
        v490 = *(v17 + 8);
        if (!strcmp(v490, "timezone"))
        {
          v26 = "TIME ZONE";
        }

        else if (!strcmp(v490, "transaction_isolation"))
        {
          v26 = "TRANSACTION ISOLATION LEVEL";
        }

        else if (!strcmp(v490, "session_authorization"))
        {
          v26 = "SESSION AUTHORIZATION";
        }

        else if (!strcmp(v490, "all"))
        {
          v26 = "SESSION ALL";
        }

        else
        {
          v26 = v490;
        }

        goto LABEL_2263;
      case 0x113:
        appendStringInfoString(&__s1, "DISCARD ");
        v178 = *(v17 + 4);
        if (v178 > 3)
        {
          goto LABEL_2447;
        }

        v26 = (&off_2797B69B8)[v178];
        goto LABEL_2263;
      case 0x114:
        deparseCreateTrigStmt(&__s1, v17);
        goto LABEL_2447;
      case 0x115:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v17 + 4) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        if (*(v17 + 40) == 1)
        {
          appendStringInfoString(&__s1, "TRUSTED ");
        }

        appendStringInfoString(&__s1, "LANGUAGE ");
        v487 = *(v17 + 8);
        v488 = strlen(v487);
        if (v488)
        {
          if (v488 >= 0x40)
          {
            deparseStringLiteral(&__s1, v487);
            goto LABEL_1211;
          }

          v676 = quote_identifier(v487);
        }

        else
        {
          v676 = "''";
        }

        appendStringInfoString(&__s1, v676);
LABEL_1211:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "HANDLER ");
        v701 = *(v17 + 16);
        if (v701 && *(v701 + 4) >= 1)
        {
          v702 = 8;
          v703 = 0;
          do
          {
            v704 = *(v701 + 16);
            v705 = quote_identifier(*(*(v704 + 8 * v703) + 8));
            appendStringInfoString(&__s1, v705);
            v706 = *(v701 + 4);
            if (v704 + v702)
            {
              v707 = v704 + v702 >= (*(v701 + 16) + 8 * v706);
            }

            else
            {
              v707 = 1;
            }

            if (!v707)
            {
              appendStringInfoChar(&__s1, 46);
              v706 = *(v701 + 4);
            }

            ++v703;
            v702 += 8;
          }

          while (v703 < v706);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 24))
        {
          appendStringInfoString(&__s1, "INLINE ");
          v708 = *(v18 + 24);
          if (v708 && *(v708 + 4) >= 1)
          {
            v709 = 8;
            v710 = 0;
            do
            {
              v711 = *(v708 + 16);
              v712 = quote_identifier(*(*(v711 + 8 * v710) + 8));
              appendStringInfoString(&__s1, v712);
              v713 = *(v708 + 4);
              if (v711 + v709)
              {
                v714 = v711 + v709 >= (*(v708 + 16) + 8 * v713);
              }

              else
              {
                v714 = 1;
              }

              if (!v714)
              {
                appendStringInfoChar(&__s1, 46);
                v713 = *(v708 + 4);
              }

              ++v710;
              v709 += 8;
            }

            while (v710 < v713);
          }

          appendStringInfoChar(&__s1, 32);
        }

        v9 = v1356;
        if (!*(v18 + 32))
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "VALIDATOR ");
        v715 = *(v18 + 32);
        if (v715 && *(v715 + 4) >= 1)
        {
          v716 = 8;
          v717 = 0;
          do
          {
            v718 = *(v715 + 16);
            v719 = quote_identifier(*(*(v718 + 8 * v717) + 8));
            appendStringInfoString(&__s1, v719);
            v720 = *(v715 + 4);
            if (v718 + v716)
            {
              v721 = v718 + v716 >= (*(v715 + 16) + 8 * v720);
            }

            else
            {
              v721 = 1;
            }

            if (!v721)
            {
              appendStringInfoChar(&__s1, 46);
              v720 = *(v715 + 4);
            }

            ++v717;
            v716 += 8;
          }

          while (v717 < v720);
        }

        goto LABEL_1617;
      case 0x116:
        appendStringInfoString(&__s1, "CREATE ");
        v139 = *(v17 + 4);
        if (v139 <= 2)
        {
          appendStringInfoString(&__s1, (&off_2797B69A0)[v139]);
        }

        v140 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v140);
        appendStringInfoChar(&__s1, 32);
        if (!*(v17 + 16))
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "WITH ");
        v141 = *(v17 + 16);
        if (!v141 || *(v141 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v142 = 0;
        while (1)
        {
          v143 = *(*(v141 + 16) + 8 * v142);
          v144 = *(v143 + 16);
          if (!strcmp(v144, "sysid"))
          {
            appendStringInfo(&__s1, "SYSID %d", v145, v146, v147, v148, v149, v150, *(*(v143 + 24) + 8));
          }

          else
          {
            if (!strcmp(v144, "adminmembers"))
            {
              appendStringInfoString(&__s1, "ADMIN ");
              v151 = *(v143 + 24);
              if (!v151 || *(v151 + 4) < 1)
              {
                goto LABEL_209;
              }

              v152 = 8;
              v153 = 0;
              while (2)
              {
                v154 = *(v151 + 16);
                v155 = *(v154 + 8 * v153);
                v156 = *(v155 + 4);
                if (v156 > 1)
                {
                  if (v156 == 2)
                  {
                    v157 = "SESSION_USER";
                  }

                  else
                  {
                    if (v156 != 3)
                    {
                      goto LABEL_229;
                    }

                    v157 = "public";
                  }
                }

                else
                {
                  if (v156)
                  {
                    if (v156 == 1)
                    {
                      v157 = "CURRENT_USER";
                      break;
                    }

LABEL_229:
                    v158 = *(v151 + 4);
                    if (v154 + v152)
                    {
                      v159 = v154 + v152 >= (*(v151 + 16) + 8 * v158);
                    }

                    else
                    {
                      v159 = 1;
                    }

                    if (!v159)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v158 = *(v151 + 4);
                    }

                    ++v153;
                    v152 += 8;
                    if (v153 >= v158)
                    {
                      goto LABEL_209;
                    }

                    continue;
                  }

                  v157 = quote_identifier(*(v155 + 8));
                }

                break;
              }

              appendStringInfoString(&__s1, v157);
              goto LABEL_229;
            }

            if (!strcmp(v144, "rolemembers"))
            {
              appendStringInfoString(&__s1, "ROLE ");
              v160 = *(v143 + 24);
              if (!v160 || *(v160 + 4) < 1)
              {
                goto LABEL_209;
              }

              v161 = 8;
              v162 = 0;
              while (2)
              {
                v163 = *(v160 + 16);
                v164 = *(v163 + 8 * v162);
                v165 = *(v164 + 4);
                if (v165 > 1)
                {
                  if (v165 == 2)
                  {
                    v166 = "SESSION_USER";
                  }

                  else
                  {
                    if (v165 != 3)
                    {
                      goto LABEL_248;
                    }

                    v166 = "public";
                  }
                }

                else
                {
                  if (v165)
                  {
                    if (v165 == 1)
                    {
                      v166 = "CURRENT_USER";
                      break;
                    }

LABEL_248:
                    v167 = *(v160 + 4);
                    if (v163 + v161)
                    {
                      v168 = v163 + v161 >= (*(v160 + 16) + 8 * v167);
                    }

                    else
                    {
                      v168 = 1;
                    }

                    if (!v168)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v167 = *(v160 + 4);
                    }

                    ++v162;
                    v161 += 8;
                    if (v162 >= v167)
                    {
                      goto LABEL_209;
                    }

                    continue;
                  }

                  v166 = quote_identifier(*(v164 + 8));
                }

                break;
              }

              appendStringInfoString(&__s1, v166);
              goto LABEL_248;
            }

            if (!strcmp(v144, "addroleto"))
            {
              appendStringInfoString(&__s1, "IN ROLE ");
              v169 = *(v143 + 24);
              if (!v169 || *(v169 + 4) < 1)
              {
                goto LABEL_209;
              }

              v170 = 8;
              v171 = 0;
              while (2)
              {
                v172 = *(v169 + 16);
                v173 = *(v172 + 8 * v171);
                v174 = *(v173 + 4);
                if (v174 > 1)
                {
                  if (v174 == 2)
                  {
                    v175 = "SESSION_USER";
                  }

                  else
                  {
                    if (v174 != 3)
                    {
                      goto LABEL_267;
                    }

                    v175 = "public";
                  }
                }

                else
                {
                  if (v174)
                  {
                    if (v174 == 1)
                    {
                      v175 = "CURRENT_USER";
                      break;
                    }

LABEL_267:
                    v176 = *(v169 + 4);
                    if (v172 + v170)
                    {
                      v177 = v172 + v170 >= (*(v169 + 16) + 8 * v176);
                    }

                    else
                    {
                      v177 = 1;
                    }

                    if (!v177)
                    {
                      appendStringInfoString(&__s1, ", ");
                      v176 = *(v169 + 4);
                    }

                    ++v171;
                    v170 += 8;
                    if (v171 >= v176)
                    {
                      goto LABEL_209;
                    }

                    continue;
                  }

                  v175 = quote_identifier(*(v173 + 8));
                }

                break;
              }

              appendStringInfoString(&__s1, v175);
              goto LABEL_267;
            }

            deparseAlterRoleElem(&__s1, v143);
          }

LABEL_209:
          appendStringInfoChar(&__s1, 32);
          ++v142;
          v6 = v1358;
          v9 = v1356;
          if (v142 >= *(v141 + 4))
          {
            goto LABEL_2444;
          }
        }

      case 0x117:
        appendStringInfoString(&__s1, "ALTER ");
        v362 = *(v17 + 16);
        if (!v362 || *(v362 + 4) != 1 || strcmp(*(**(v362 + 16) + 16), "rolemembers"))
        {
          appendStringInfoString(&__s1, "ROLE ");
          v363 = *(v17 + 8);
          v364 = *(v363 + 4);
          if (v364 > 1)
          {
            if (v364 == 2)
            {
              v365 = "SESSION_USER";
              goto LABEL_1407;
            }

            if (v364 == 3)
            {
              v365 = "public";
              goto LABEL_1407;
            }
          }

          else
          {
            if (!v364)
            {
              v365 = quote_identifier(*(v363 + 8));
              goto LABEL_1407;
            }

            if (v364 == 1)
            {
              v365 = "CURRENT_USER";
LABEL_1407:
              appendStringInfoString(&__s1, v365);
            }
          }

          appendStringInfoChar(&__s1, 32);
          appendStringInfoString(&__s1, "WITH ");
          v771 = *(v17 + 16);
          if (v771 && *(v771 + 4) >= 1)
          {
            v772 = 0;
            do
            {
              v773 = v772;
              deparseAlterRoleElem(&__s1, *(*(v771 + 16) + 8 * v772));
              appendStringInfoChar(&__s1, 32);
              v772 = v773 + 1;
            }

            while (v773 + 1 < *(v771 + 4));
          }

          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "GROUP ");
        v945 = *(v17 + 8);
        v946 = *(v945 + 4);
        if (v946 > 1)
        {
          if (v946 == 2)
          {
            v947 = "SESSION_USER";
          }

          else
          {
            if (v946 != 3)
            {
              goto LABEL_2331;
            }

            v947 = "public";
          }
        }

        else if (v946)
        {
          if (v946 != 1)
          {
            goto LABEL_2331;
          }

          v947 = "CURRENT_USER";
        }

        else
        {
          v947 = quote_identifier(*(v945 + 8));
        }

        appendStringInfoString(&__s1, v947);
LABEL_2331:
        appendStringInfoChar(&__s1, 32);
        v1279 = *(v17 + 24);
        if (v1279 == 1)
        {
          v1280 = "ADD USER ";
        }

        else
        {
          if (v1279 != -1)
          {
            goto LABEL_2336;
          }

          v1280 = "DROP USER ";
        }

        appendStringInfoString(&__s1, v1280);
LABEL_2336:
        v1281 = *(**(*(v17 + 16) + 16) + 24);
        if (!v1281 || *(v1281 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v1282 = 8;
        v1283 = 0;
        while (1)
        {
          v1284 = *(v1281 + 16);
          v1285 = *(v1284 + 8 * v1283);
          v1286 = *(v1285 + 4);
          if (v1286 > 1)
          {
            if (v1286 == 2)
            {
              v1287 = "SESSION_USER";
              goto LABEL_2349;
            }

            if (v1286 == 3)
            {
              v1287 = "public";
              goto LABEL_2349;
            }
          }

          else
          {
            if (!v1286)
            {
              v1287 = quote_identifier(*(v1285 + 8));
              goto LABEL_2349;
            }

            if (v1286 == 1)
            {
              v1287 = "CURRENT_USER";
LABEL_2349:
              appendStringInfoString(&__s1, v1287);
            }
          }

          v1288 = *(v1281 + 4);
          if (v1284 + v1282)
          {
            v1289 = v1284 + v1282 >= (*(v1281 + 16) + 8 * v1288);
          }

          else
          {
            v1289 = 1;
          }

          if (!v1289)
          {
            appendStringInfoString(&__s1, ", ");
            v1288 = *(v1281 + 4);
          }

          ++v1283;
          v1282 += 8;
          if (v1283 >= v1288)
          {
            goto LABEL_2444;
          }
        }

      case 0x118:
        appendStringInfoString(&__s1, "DROP ROLE ");
        if (*(v17 + 16) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        v463 = *(v17 + 8);
        if (!v463 || *(v463 + 4) < 1)
        {
          goto LABEL_2447;
        }

        v464 = 8;
        v465 = 0;
        while (1)
        {
          v466 = *(v463 + 16);
          v467 = *(v466 + 8 * v465);
          v468 = *(v467 + 4);
          if (v468 > 1)
          {
            if (v468 == 2)
            {
              v469 = "SESSION_USER";
              goto LABEL_763;
            }

            if (v468 == 3)
            {
              v469 = "public";
              goto LABEL_763;
            }
          }

          else
          {
            if (!v468)
            {
              v469 = quote_identifier(*(v467 + 8));
              goto LABEL_763;
            }

            if (v468 == 1)
            {
              v469 = "CURRENT_USER";
LABEL_763:
              appendStringInfoString(&__s1, v469);
            }
          }

          v470 = *(v463 + 4);
          if (v466 + v464)
          {
            v471 = v466 + v464 >= (*(v463 + 16) + 8 * v470);
          }

          else
          {
            v471 = 1;
          }

          if (!v471)
          {
            appendStringInfoString(&__s1, ", ");
            v470 = *(v463 + 4);
          }

          ++v465;
          v464 += 8;
          if (v465 >= v470)
          {
            goto LABEL_2447;
          }
        }

      case 0x119:
        appendStringInfoString(&__s1, "LOCK TABLE ");
        v499 = *(v17 + 8);
        if (v499 && *(v499 + 4) >= 1)
        {
          v500 = 8;
          v501 = 0;
          do
          {
            v502 = *(v499 + 16);
            deparseRangeVar(&__s1, *(v502 + 8 * v501), 0);
            v503 = *(v499 + 4);
            if (v502 + v500)
            {
              v504 = v502 + v500 >= (*(v499 + 16) + 8 * v503);
            }

            else
            {
              v504 = 1;
            }

            if (!v504)
            {
              appendStringInfoString(&__s1, ", ");
              v503 = *(v499 + 4);
            }

            ++v501;
            v500 += 8;
          }

          while (v501 < v503);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 16) == 8)
        {
          v9 = v1356;
          if (*(v18 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        else
        {
          appendStringInfoString(&__s1, "IN ");
          v599 = *(v18 + 16) - 1;
          if (v599 <= 7)
          {
            appendStringInfoString(&__s1, (&off_2797B6B68)[v599]);
          }

          appendStringInfoString(&__s1, "MODE ");
          v9 = v1356;
          if (*(v18 + 20) != 1)
          {
            goto LABEL_2444;
          }
        }

        appendStringInfoString(&__s1, "NOWAIT ");
        v411 = v1360 - 1;
        if (v1360 >= 1)
        {
          goto LABEL_2445;
        }

        goto LABEL_2447;
      case 0x11A:
        appendStringInfoString(&__s1, "SET CONSTRAINTS ");
        v97 = *(v17 + 8);
        if (v97 && *(v97 + 4) >= 1)
        {
          v98 = 8;
          v99 = 0;
          do
          {
            v100 = *(v97 + 16);
            deparseRangeVar(&__s1, *(v100 + 8 * v99), 0);
            v101 = *(v97 + 4);
            if (v100 + v98)
            {
              v102 = v100 + v98 >= (*(v97 + 16) + 8 * v101);
            }

            else
            {
              v102 = 1;
            }

            if (!v102)
            {
              appendStringInfoString(&__s1, ", ");
              v101 = *(v97 + 4);
            }

            ++v99;
            v98 += 8;
          }

          while (v99 < v101);
          appendStringInfoChar(&__s1, 32);
          v9 = v1356;
        }

        else
        {
          appendStringInfoString(&__s1, "ALL ");
        }

        if (*(v18 + 16))
        {
          v26 = "DEFERRED";
        }

        else
        {
          v26 = "IMMEDIATE";
        }

        goto LABEL_2263;
      case 0x11B:
        appendStringInfoString(&__s1, "REINDEX ");
        if (*(v17 + 24))
        {
          appendStringInfoString(&__s1, "(VERBOSE) ");
          v449 = *(v17 + 4);
          if (v449 <= 4)
          {
LABEL_723:
            appendStringInfoString(&__s1, (&off_2797B6BA8)[v449]);
            if (*(v17 + 28) != 1)
            {
              goto LABEL_724;
            }

            goto LABEL_1010;
          }
        }

        else
        {
          v449 = *(v17 + 4);
          if (v449 <= 4)
          {
            goto LABEL_723;
          }
        }

        if (*(v17 + 28) != 1)
        {
LABEL_724:
          v450 = *(v17 + 8);
          if (v450)
          {
LABEL_725:
            deparseRangeVar(&__s1, v450, 0);
            goto LABEL_2447;
          }

LABEL_1011:
          v189 = *(v17 + 16);
          if (!v189)
          {
            goto LABEL_2447;
          }

          goto LABEL_2262;
        }

LABEL_1010:
        appendStringInfoString(&__s1, "CONCURRENTLY ");
        v450 = *(v17 + 8);
        if (v450)
        {
          goto LABEL_725;
        }

        goto LABEL_1011;
      case 0x11C:
        v26 = "CHECKPOINT";
        goto LABEL_2263;
      case 0x11D:
        appendStringInfoString(&__s1, "CREATE SCHEMA ");
        if (*(v17 + 32) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v424 = *(v17 + 8);
        if (v424)
        {
          v425 = quote_identifier(v424);
          appendStringInfoString(&__s1, v425);
          appendStringInfoChar(&__s1, 32);
        }

        if (!*(v17 + 16))
        {
          goto LABEL_1780;
        }

        appendStringInfoString(&__s1, "AUTHORIZATION ");
        v426 = *(v17 + 16);
        v427 = *(v426 + 4);
        if (v427 > 1)
        {
          if (v427 == 2)
          {
            v428 = "SESSION_USER";
          }

          else
          {
            if (v427 != 3)
            {
              goto LABEL_1779;
            }

            v428 = "public";
          }
        }

        else if (v427)
        {
          if (v427 != 1)
          {
            goto LABEL_1779;
          }

          v428 = "CURRENT_USER";
        }

        else
        {
          v428 = quote_identifier(*(v426 + 8));
        }

        appendStringInfoString(&__s1, v428);
LABEL_1779:
        appendStringInfoChar(&__s1, 32);
LABEL_1780:
        v938 = *(v17 + 24);
        if (v938 && *(v938 + 4) >= 1)
        {
          v939 = 8;
          v940 = 0;
          do
          {
            v941 = *(v938 + 16);
            v942 = *(v941 + 8 * v940);
            v943 = *v942;
            if (*v942 > 262)
            {
              switch(v943)
              {
                case 263:
                  deparseViewStmt(&__s1, v942);
                  break;
                case 271:
                  deparseCreateSeqStmt(&__s1, v942);
                  break;
                case 276:
                  deparseCreateTrigStmt(&__s1, v942);
                  break;
              }
            }

            else
            {
              switch(v943)
              {
                case 241:
                  deparseGrantStmt(&__s1, v942);
                  break;
                case 247:
                  deparseCreateStmt(&__s1, v942, 0);
                  break;
                case 253:
                  deparseIndexStmt(&__s1, v942);
                  break;
              }
            }

            if (v941 + v939)
            {
              v944 = v941 + v939 >= (*(*(v18 + 24) + 16) + 8 * *(*(v18 + 24) + 4));
            }

            else
            {
              v944 = 1;
            }

            if (!v944)
            {
              appendStringInfoChar(&__s1, 32);
            }

            ++v940;
            v939 += 8;
          }

          while (v940 < *(v938 + 4));
        }

        goto LABEL_1802;
      case 0x11E:
        appendStringInfoString(&__s1, "ALTER DATABASE ");
        v489 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v489);
        appendStringInfoChar(&__s1, 32);
        deparseCreatedbOptList(&__s1, *(v17 + 16));
        goto LABEL_2444;
      case 0x11F:
        appendStringInfoString(&__s1, "ALTER DATABASE ");
        v273 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v273);
        appendStringInfoChar(&__s1, 32);
        v274 = *(v17 + 16);
        goto LABEL_1627;
      case 0x120:
        appendStringInfoString(&__s1, "ALTER ROLE ");
        v353 = *(v17 + 8);
        if (v353)
        {
          v354 = *(v353 + 4);
          if (v354 > 1)
          {
            if (v354 == 2)
            {
              v355 = "SESSION_USER";
            }

            else
            {
              if (v354 != 3)
              {
                goto LABEL_1624;
              }

              v355 = "public";
            }
          }

          else if (v354)
          {
            if (v354 != 1)
            {
              goto LABEL_1624;
            }

            v355 = "CURRENT_USER";
          }

          else
          {
            v355 = quote_identifier(*(v353 + 8));
          }
        }

        else
        {
          v355 = "ALL";
        }

        appendStringInfoString(&__s1, v355);
LABEL_1624:
        appendStringInfoChar(&__s1, 32);
        if (*(v17 + 16))
        {
          appendStringInfoString(&__s1, "IN DATABASE ");
          v884 = quote_identifier(*(v17 + 16));
          appendStringInfoString(&__s1, v884);
          appendStringInfoChar(&__s1, 32);
        }

        v274 = *(v17 + 24);
LABEL_1627:
        deparseVariableSetStmt(&__s1, v274);
        goto LABEL_2447;
      case 0x121:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v17 + 40) == 1)
        {
          appendStringInfoString(&__s1, "DEFAULT ");
        }

        appendStringInfoString(&__s1, "CONVERSION ");
        v514 = *(v17 + 8);
        if (v514 && *(v514 + 4) >= 1)
        {
          v515 = 8;
          v516 = 0;
          do
          {
            v517 = *(v514 + 16);
            v518 = quote_identifier(*(*(v517 + 8 * v516) + 8));
            appendStringInfoString(&__s1, v518);
            v519 = *(v514 + 4);
            if (v517 + v515)
            {
              v520 = v517 + v515 >= (*(v514 + 16) + 8 * v519);
            }

            else
            {
              v520 = 1;
            }

            if (!v520)
            {
              appendStringInfoChar(&__s1, 46);
              v519 = *(v514 + 4);
            }

            ++v516;
            v515 += 8;
          }

          while (v516 < v519);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "FOR ");
        deparseStringLiteral(&__s1, *(v18 + 16));
        appendStringInfoString(&__s1, " TO ");
        deparseStringLiteral(&__s1, *(v18 + 24));
        appendStringInfoString(&__s1, "FROM ");
        v521 = *(v18 + 32);
        v9 = v1356;
        if (v521 && *(v521 + 4) >= 1)
        {
          v522 = 8;
          v523 = 0;
          do
          {
            v524 = *(v521 + 16);
            v525 = quote_identifier(*(*(v524 + 8 * v523) + 8));
            appendStringInfoString(&__s1, v525);
            v526 = *(v521 + 4);
            if (v524 + v522)
            {
              v527 = v524 + v522 >= (*(v521 + 16) + 8 * v526);
            }

            else
            {
              v527 = 1;
            }

            if (!v527)
            {
              appendStringInfoChar(&__s1, 46);
              v526 = *(v521 + 4);
            }

            ++v523;
            v522 += 8;
          }

          while (v523 < v526);
        }

        goto LABEL_2447;
      case 0x122:
        appendStringInfoString(&__s1, "CREATE CAST (");
        deparseTypeName(&__s1, *(v17 + 8));
        appendStringInfoString(&__s1, " AS ");
        deparseTypeName(&__s1, *(v17 + 16));
        appendStringInfoString(&__s1, ") ");
        if (*(v17 + 24))
        {
          appendStringInfoString(&__s1, "WITH FUNCTION ");
          deparseFunctionWithArgtypes(&__s1, *(v17 + 24));
          appendStringInfoChar(&__s1, 32);
          v225 = *(v17 + 32);
          if (v225)
          {
LABEL_352:
            if (v225 != 1)
            {
              goto LABEL_2447;
            }

            v26 = "AS ASSIGNMENT";
            goto LABEL_2263;
          }
        }

        else
        {
          if (*(v17 + 36) == 1)
          {
            v675 = "WITH INOUT ";
          }

          else
          {
            v675 = "WITHOUT FUNCTION ";
          }

          appendStringInfoString(&__s1, v675);
          v225 = *(v17 + 32);
          if (v225)
          {
            goto LABEL_352;
          }
        }

        v26 = "AS IMPLICIT";
        goto LABEL_2263;
      case 0x123:
        appendStringInfoString(&__s1, "CREATE OPERATOR CLASS ");
        v103 = *(v17 + 8);
        if (v103 && *(v103 + 4) >= 1)
        {
          v104 = 8;
          v105 = 0;
          do
          {
            v106 = *(v103 + 16);
            v107 = quote_identifier(*(*(v106 + 8 * v105) + 8));
            appendStringInfoString(&__s1, v107);
            v108 = *(v103 + 4);
            if (v106 + v104)
            {
              v109 = v106 + v104 >= (*(v103 + 16) + 8 * v108);
            }

            else
            {
              v109 = 1;
            }

            if (!v109)
            {
              appendStringInfoChar(&__s1, 46);
              v108 = *(v103 + 4);
            }

            ++v105;
            v104 += 8;
          }

          while (v105 < v108);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 48) == 1)
        {
          appendStringInfoString(&__s1, "DEFAULT ");
        }

        appendStringInfoString(&__s1, "FOR TYPE ");
        deparseTypeName(&__s1, *(v18 + 32));
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "USING ");
        v110 = quote_identifier(*(v18 + 24));
        appendStringInfoString(&__s1, v110);
        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 16))
        {
          appendStringInfoString(&__s1, "FAMILY ");
          v111 = *(v18 + 16);
          if (v111 && *(v111 + 4) >= 1)
          {
            v112 = 8;
            v113 = 0;
            do
            {
              v114 = *(v111 + 16);
              v115 = quote_identifier(*(*(v114 + 8 * v113) + 8));
              appendStringInfoString(&__s1, v115);
              v116 = *(v111 + 4);
              if (v114 + v112)
              {
                v117 = v114 + v112 >= (*(v111 + 16) + 8 * v116);
              }

              else
              {
                v117 = 1;
              }

              if (!v117)
              {
                appendStringInfoChar(&__s1, 46);
                v116 = *(v111 + 4);
              }

              ++v113;
              v112 += 8;
            }

            while (v113 < v116);
          }

          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "AS ");
        deparseOpclassItemList(&__s1, *(v18 + 40));
        v9 = v1356;
        goto LABEL_2447;
      case 0x124:
        appendStringInfoString(&__s1, "CREATE OPERATOR FAMILY ");
        v226 = *(v17 + 8);
        if (v226 && *(v226 + 4) >= 1)
        {
          v227 = 8;
          v228 = 0;
          do
          {
            v229 = *(v226 + 16);
            v230 = quote_identifier(*(*(v229 + 8 * v228) + 8));
            appendStringInfoString(&__s1, v230);
            v231 = *(v226 + 4);
            if (v229 + v227)
            {
              v232 = v229 + v227 >= (*(v226 + 16) + 8 * v231);
            }

            else
            {
              v232 = 1;
            }

            if (!v232)
            {
              appendStringInfoChar(&__s1, 46);
              v231 = *(v226 + 4);
            }

            ++v228;
            v227 += 8;
          }

          while (v228 < v231);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "USING ");
        v233 = *(v18 + 16);
        goto LABEL_2129;
      case 0x125:
        appendStringInfoString(&__s1, "ALTER OPERATOR FAMILY ");
        v118 = *(v17 + 8);
        if (v118 && *(v118 + 4) >= 1)
        {
          v119 = 8;
          v120 = 0;
          do
          {
            v121 = *(v118 + 16);
            v122 = quote_identifier(*(*(v121 + 8 * v120) + 8));
            appendStringInfoString(&__s1, v122);
            v123 = *(v118 + 4);
            if (v121 + v119)
            {
              v124 = v121 + v119 >= (*(v118 + 16) + 8 * v123);
            }

            else
            {
              v124 = 1;
            }

            if (!v124)
            {
              appendStringInfoChar(&__s1, 46);
              v123 = *(v118 + 4);
            }

            ++v120;
            v119 += 8;
          }

          while (v120 < v123);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "USING ");
        v125 = quote_identifier(*(v18 + 16));
        appendStringInfoString(&__s1, v125);
        appendStringInfoChar(&__s1, 32);
        if (*(v18 + 24))
        {
          v126 = "DROP ";
        }

        else
        {
          v126 = "ADD ";
        }

        appendStringInfoString(&__s1, v126);
        deparseOpclassItemList(&__s1, *(v18 + 32));
        v9 = v1356;
        goto LABEL_2447;
      case 0x126:
        appendStringInfoString(&__s1, "PREPARE ");
        v179 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v179);
        v180 = *(v17 + 16);
        if (v180 && *(v180 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v181 = *(v17 + 16);
          if (v181 && *(v181 + 4) >= 1)
          {
            v182 = 8;
            v183 = 0;
            do
            {
              v184 = *(v181 + 16);
              deparseTypeName(&__s1, *(v184 + 8 * v183));
              v185 = *(v181 + 4);
              if (v184 + v182)
              {
                v186 = v184 + v182 >= (*(v181 + 16) + 8 * v185);
              }

              else
              {
                v186 = 1;
              }

              if (!v186)
              {
                appendStringInfoString(&__s1, ", ");
                v185 = *(v181 + 4);
              }

              ++v183;
              v182 += 8;
            }

            while (v183 < v185);
          }

          appendStringInfoChar(&__s1, 41);
          v9 = v1356;
        }

        appendStringInfoString(&__s1, " AS ");
        v632 = *(v18 + 24);
        v633 = *v632;
        if (*v632 > 234)
        {
          if (v633 == 235)
          {
            deparseUpdateStmt(&__s1, v632);
          }

          else if (v633 == 236)
          {
            deparseSelectStmt(&__s1, v632);
          }
        }

        else if (v633 == 233)
        {
          deparseInsertStmt(&__s1, v632);
        }

        else if (v633 == 234)
        {
          deparseDeleteStmt(&__s1, v632);
        }

        goto LABEL_2447;
      case 0x127:
        goto LABEL_1089;
      case 0x128:
        appendStringInfoString(&__s1, "DEALLOCATE ");
        v189 = *(v17 + 8);
        if (v189)
        {
          goto LABEL_2262;
        }

LABEL_448:
        v26 = "ALL";
        goto LABEL_2263;
      case 0x129:
        goto LABEL_1253;
      case 0x12A:
        appendStringInfoString(&__s1, "CREATE TABLESPACE ");
        v133 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v133);
        appendStringInfoChar(&__s1, 32);
        if (!*(v17 + 16))
        {
          goto LABEL_1506;
        }

        appendStringInfoString(&__s1, "OWNER ");
        v134 = *(v17 + 16);
        v135 = *(v134 + 4);
        if (v135 > 1)
        {
          if (v135 == 2)
          {
            v136 = "SESSION_USER";
          }

          else
          {
            if (v135 != 3)
            {
              goto LABEL_1505;
            }

            v136 = "public";
          }
        }

        else if (v135)
        {
          if (v135 != 1)
          {
            goto LABEL_1505;
          }

          v136 = "CURRENT_USER";
        }

        else
        {
          v136 = quote_identifier(*(v134 + 8));
        }

        appendStringInfoString(&__s1, v136);
LABEL_1505:
        appendStringInfoChar(&__s1, 32);
LABEL_1506:
        appendStringInfoString(&__s1, "LOCATION ");
        deparseStringLiteral(&__s1, *(v17 + 24));
        appendStringInfoChar(&__s1, 32);
        v825 = *(v17 + 32);
        if (!v825 || *(v825 + 4) < 1)
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "WITH ");
        deparseRelOptions(&__s1, v825);
        goto LABEL_1617;
      case 0x12B:
        appendStringInfoString(&__s1, "DROP TABLESPACE ");
        if (*(v17 + 16) == 1)
        {
          goto LABEL_179;
        }

        goto LABEL_180;
      case 0x12C:
        appendStringInfoString(&__s1, "ALTER ");
        v187 = *(v17 + 4);
        if (v187 > 27)
        {
          switch(v187)
          {
            case 28:
              v823 = "PROCEDURE ";
              break;
            case 32:
              v823 = "ROUTINE ";
              break;
            case 42:
              appendStringInfoString(&__s1, "TRIGGER ");
              v591 = quote_identifier(*(**(*(v17 + 16) + 16) + 8));
              appendStringInfoString(&__s1, v591);
              v188 = " ON ";
              goto LABEL_1488;
            default:
              goto LABEL_1491;
          }
        }

        else
        {
          if (v187 != 19)
          {
            if (v187 == 20)
            {
              v188 = "INDEX ";
            }

            else
            {
              if (v187 != 23)
              {
                goto LABEL_1491;
              }

              v188 = "MATERIALIZED VIEW ";
            }

LABEL_1488:
            appendStringInfoString(&__s1, v188);
            deparseRangeVar(&__s1, *(v17 + 8), 0);
            goto LABEL_1491;
          }

          v823 = "FUNCTION ";
        }

        appendStringInfoString(&__s1, v823);
        deparseFunctionWithArgtypes(&__s1, *(v17 + 16));
LABEL_1491:
        appendStringInfoChar(&__s1, 32);
        if (*(v17 + 32) == 1)
        {
          appendStringInfoString(&__s1, "NO ");
        }

        appendStringInfoString(&__s1, "DEPENDS ON EXTENSION ");
        v189 = *(*(v17 + 24) + 8);
        goto LABEL_2262;
      case 0x12D:
        appendStringInfoString(&__s1, "ALTER ");
        switch(*(v17 + 4))
        {
          case 1:
            appendStringInfoString(&__s1, "AGGREGATE ");
            deparseAggregateWithArgtypes(&__s1, *(v17 + 16));
            break;
          case 7:
            appendStringInfoString(&__s1, "COLLATION ");
            v1133 = *(v17 + 16);
            if (v1133 && *(v1133 + 4) >= 1)
            {
              v1134 = 8;
              v1135 = 0;
              do
              {
                v1136 = *(v1133 + 16);
                v1137 = quote_identifier(*(*(v1136 + 8 * v1135) + 8));
                appendStringInfoString(&__s1, v1137);
                v1138 = *(v1133 + 4);
                if (v1136 + v1134)
                {
                  v1139 = v1136 + v1134 >= (*(v1133 + 16) + 8 * v1138);
                }

                else
                {
                  v1139 = 1;
                }

                if (!v1139)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1138 = *(v1133 + 4);
                }

                ++v1135;
                v1134 += 8;
              }

              while (v1135 < v1138);
            }

            break;
          case 8:
            appendStringInfoString(&__s1, "CONVERSION ");
            v1126 = *(v17 + 16);
            if (v1126 && *(v1126 + 4) >= 1)
            {
              v1127 = 8;
              v1128 = 0;
              do
              {
                v1129 = *(v1126 + 16);
                v1130 = quote_identifier(*(*(v1129 + 8 * v1128) + 8));
                appendStringInfoString(&__s1, v1130);
                v1131 = *(v1126 + 4);
                if (v1129 + v1127)
                {
                  v1132 = v1129 + v1127 >= (*(v1126 + 16) + 8 * v1131);
                }

                else
                {
                  v1132 = 1;
                }

                if (!v1132)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1131 = *(v1126 + 4);
                }

                ++v1128;
                v1127 += 8;
              }

              while (v1128 < v1131);
            }

            break;
          case 0xC:
            appendStringInfoString(&__s1, "DOMAIN ");
            v1147 = *(v17 + 16);
            if (v1147 && *(v1147 + 4) >= 1)
            {
              v1148 = 8;
              v1149 = 0;
              do
              {
                v1150 = *(v1147 + 16);
                v1151 = quote_identifier(*(*(v1150 + 8 * v1149) + 8));
                appendStringInfoString(&__s1, v1151);
                v1152 = *(v1147 + 4);
                if (v1150 + v1148)
                {
                  v1153 = v1150 + v1148 >= (*(v1147 + 16) + 8 * v1152);
                }

                else
                {
                  v1153 = 1;
                }

                if (!v1153)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1152 = *(v1147 + 4);
                }

                ++v1149;
                v1148 += 8;
              }

              while (v1149 < v1152);
            }

            break;
          case 0xF:
            appendStringInfoString(&__s1, "EXTENSION ");
            v1154 = *(v17 + 16);
            goto LABEL_2127;
          case 0x12:
            v1108 = "FOREIGN TABLE ";
            goto LABEL_2103;
          case 0x13:
            v1118 = "FUNCTION ";
            goto LABEL_2091;
          case 0x17:
            v1108 = "MATERIALIZED VIEW ";
            goto LABEL_2103;
          case 0x18:
            v1109 = *(v17 + 16);
            appendStringInfoString(&__s1, "OPERATOR CLASS ");
            if (!v1109)
            {
              goto LABEL_2468;
            }

            if (*(v1109 + 4) >= 2)
            {
              v1155 = 1;
              v1156 = 0x100000000;
              do
              {
                v1157 = (*(v1109 + 16) + (v1156 >> 29));
                v1159 = *v1157;
                v1158 = (v1157 + 1);
                v1160 = quote_identifier(*(v1159 + 8));
                appendStringInfoString(&__s1, v1160);
                v1161 = *(v1109 + 4);
                if (v1158)
                {
                  v1162 = v1158 >= *(v1109 + 16) + 8 * v1161;
                }

                else
                {
                  v1162 = 1;
                }

                if (!v1162)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1161) = *(v1109 + 4);
                }

                ++v1155;
                v1156 += 0x100000000;
              }

              while (v1161 > v1155);
            }

            goto LABEL_2126;
          case 0x19:
            appendStringInfoString(&__s1, "OPERATOR ");
            deparseOperatorWithArgtypes(&__s1, *(v17 + 16));
            break;
          case 0x1A:
            v1109 = *(v17 + 16);
            appendStringInfoString(&__s1, "OPERATOR FAMILY ");
            if (!v1109)
            {
              goto LABEL_2468;
            }

            if (*(v1109 + 4) >= 2)
            {
              v1110 = 1;
              v1111 = 0x100000000;
              do
              {
                v1112 = (*(v1109 + 16) + (v1111 >> 29));
                v1114 = *v1112;
                v1113 = (v1112 + 1);
                v1115 = quote_identifier(*(v1114 + 8));
                appendStringInfoString(&__s1, v1115);
                v1116 = *(v1109 + 4);
                if (v1113)
                {
                  v1117 = v1113 >= *(v1109 + 16) + 8 * v1116;
                }

                else
                {
                  v1117 = 1;
                }

                if (!v1117)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1116) = *(v1109 + 4);
                }

                ++v1110;
                v1111 += 0x100000000;
              }

              while (v1116 > v1110);
            }

LABEL_2126:
            appendStringInfoString(&__s1, " USING ");
            v1154 = **(v1109 + 16);
LABEL_2127:
            v1163 = quote_identifier(*(v1154 + 8));
            appendStringInfoString(&__s1, v1163);
            break;
          case 0x1C:
            v1118 = "PROCEDURE ";
            goto LABEL_2091;
          case 0x20:
            v1118 = "ROUTINE ";
LABEL_2091:
            appendStringInfoString(&__s1, v1118);
            deparseFunctionWithArgtypes(&__s1, *(v17 + 16));
            break;
          case 0x23:
            v1108 = "SEQUENCE ";
            goto LABEL_2103;
          case 0x25:
            appendStringInfoString(&__s1, "STATISTICS ");
            v1140 = *(v17 + 16);
            if (v1140 && *(v1140 + 4) >= 1)
            {
              v1141 = 8;
              v1142 = 0;
              do
              {
                v1143 = *(v1140 + 16);
                v1144 = quote_identifier(*(*(v1143 + 8 * v1142) + 8));
                appendStringInfoString(&__s1, v1144);
                v1145 = *(v1140 + 4);
                if (v1143 + v1141)
                {
                  v1146 = v1143 + v1141 >= (*(v1140 + 16) + 8 * v1145);
                }

                else
                {
                  v1146 = 1;
                }

                if (!v1146)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1145 = *(v1140 + 4);
                }

                ++v1142;
                v1141 += 8;
              }

              while (v1142 < v1145);
            }

            break;
          case 0x27:
            v1108 = "TABLE ";
            goto LABEL_2103;
          case 0x2B:
            appendStringInfoString(&__s1, "TEXT SEARCH CONFIGURATION ");
            v1172 = *(v17 + 16);
            if (v1172 && *(v1172 + 4) >= 1)
            {
              v1173 = 8;
              v1174 = 0;
              do
              {
                v1175 = *(v1172 + 16);
                v1176 = quote_identifier(*(*(v1175 + 8 * v1174) + 8));
                appendStringInfoString(&__s1, v1176);
                v1177 = *(v1172 + 4);
                if (v1175 + v1173)
                {
                  v1178 = v1175 + v1173 >= (*(v1172 + 16) + 8 * v1177);
                }

                else
                {
                  v1178 = 1;
                }

                if (!v1178)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1177 = *(v1172 + 4);
                }

                ++v1174;
                v1173 += 8;
              }

              while (v1174 < v1177);
            }

            break;
          case 0x2C:
            appendStringInfoString(&__s1, "TEXT SEARCH DICTIONARY ");
            v1165 = *(v17 + 16);
            if (v1165 && *(v1165 + 4) >= 1)
            {
              v1166 = 8;
              v1167 = 0;
              do
              {
                v1168 = *(v1165 + 16);
                v1169 = quote_identifier(*(*(v1168 + 8 * v1167) + 8));
                appendStringInfoString(&__s1, v1169);
                v1170 = *(v1165 + 4);
                if (v1168 + v1166)
                {
                  v1171 = v1168 + v1166 >= (*(v1165 + 16) + 8 * v1170);
                }

                else
                {
                  v1171 = 1;
                }

                if (!v1171)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1170 = *(v1165 + 4);
                }

                ++v1167;
                v1166 += 8;
              }

              while (v1167 < v1170);
            }

            break;
          case 0x2D:
            appendStringInfoString(&__s1, "TEXT SEARCH PARSER ");
            v1101 = *(v17 + 16);
            if (v1101 && *(v1101 + 4) >= 1)
            {
              v1102 = 8;
              v1103 = 0;
              do
              {
                v1104 = *(v1101 + 16);
                v1105 = quote_identifier(*(*(v1104 + 8 * v1103) + 8));
                appendStringInfoString(&__s1, v1105);
                v1106 = *(v1101 + 4);
                if (v1104 + v1102)
                {
                  v1107 = v1104 + v1102 >= (*(v1101 + 16) + 8 * v1106);
                }

                else
                {
                  v1107 = 1;
                }

                if (!v1107)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1106 = *(v1101 + 4);
                }

                ++v1103;
                v1102 += 8;
              }

              while (v1103 < v1106);
            }

            break;
          case 0x2E:
            appendStringInfoString(&__s1, "TEXT SEARCH TEMPLATE ");
            v1119 = *(v17 + 16);
            if (v1119 && *(v1119 + 4) >= 1)
            {
              v1120 = 8;
              v1121 = 0;
              do
              {
                v1122 = *(v1119 + 16);
                v1123 = quote_identifier(*(*(v1122 + 8 * v1121) + 8));
                appendStringInfoString(&__s1, v1123);
                v1124 = *(v1119 + 4);
                if (v1122 + v1120)
                {
                  v1125 = v1122 + v1120 >= (*(v1119 + 16) + 8 * v1124);
                }

                else
                {
                  v1125 = 1;
                }

                if (!v1125)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1124 = *(v1119 + 4);
                }

                ++v1121;
                v1120 += 8;
              }

              while (v1121 < v1124);
            }

            break;
          case 0x2F:
            appendStringInfoString(&__s1, "TYPE ");
            v1179 = *(v17 + 16);
            if (v1179 && *(v1179 + 4) >= 1)
            {
              v1180 = 8;
              v1181 = 0;
              do
              {
                v1182 = *(v1179 + 16);
                v1183 = quote_identifier(*(*(v1182 + 8 * v1181) + 8));
                appendStringInfoString(&__s1, v1183);
                v1184 = *(v1179 + 4);
                if (v1182 + v1180)
                {
                  v1185 = v1182 + v1180 >= (*(v1179 + 16) + 8 * v1184);
                }

                else
                {
                  v1185 = 1;
                }

                if (!v1185)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1184 = *(v1179 + 4);
                }

                ++v1181;
                v1180 += 8;
              }

              while (v1181 < v1184);
            }

            break;
          case 0x31:
            v1108 = "VIEW ";
LABEL_2103:
            appendStringInfoString(&__s1, v1108);
            if (*(v17 + 32) == 1)
            {
              appendStringInfoString(&__s1, "IF EXISTS ");
            }

            deparseRangeVar(&__s1, *(v17 + 8), 0);
            break;
          default:
            break;
        }

        appendStringInfoString(&__s1, " SET SCHEMA ");
        v233 = *(v18 + 24);
LABEL_2129:
        v1164 = quote_identifier(v233);
        appendStringInfoString(&__s1, v1164);
        v9 = v1356;
        goto LABEL_2447;
      case 0x12E:
        appendStringInfoString(&__s1, "ALTER ");
        switch(*(v17 + 4))
        {
          case 1:
            appendStringInfoString(&__s1, "AGGREGATE ");
            deparseAggregateWithArgtypes(&__s1, *(v17 + 16));
            goto LABEL_2259;
          case 7:
            appendStringInfoString(&__s1, "COLLATION ");
            v1247 = *(v17 + 16);
            if (v1247 && *(v1247 + 4) >= 1)
            {
              v1248 = 8;
              v1249 = 0;
              do
              {
                v1250 = *(v1247 + 16);
                v1251 = quote_identifier(*(*(v1250 + 8 * v1249) + 8));
                appendStringInfoString(&__s1, v1251);
                v1252 = *(v1247 + 4);
                if (v1250 + v1248)
                {
                  v1253 = v1250 + v1248 >= (*(v1247 + 16) + 8 * v1252);
                }

                else
                {
                  v1253 = 1;
                }

                if (!v1253)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1252 = *(v1247 + 4);
                }

                ++v1249;
                v1248 += 8;
              }

              while (v1249 < v1252);
            }

            goto LABEL_2259;
          case 8:
            appendStringInfoString(&__s1, "CONVERSION ");
            v1231 = *(v17 + 16);
            if (v1231 && *(v1231 + 4) >= 1)
            {
              v1232 = 8;
              v1233 = 0;
              do
              {
                v1234 = *(v1231 + 16);
                v1235 = quote_identifier(*(*(v1234 + 8 * v1233) + 8));
                appendStringInfoString(&__s1, v1235);
                v1236 = *(v1231 + 4);
                if (v1234 + v1232)
                {
                  v1237 = v1234 + v1232 >= (*(v1231 + 16) + 8 * v1236);
                }

                else
                {
                  v1237 = 1;
                }

                if (!v1237)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1236 = *(v1231 + 4);
                }

                ++v1233;
                v1232 += 8;
              }

              while (v1233 < v1236);
            }

            goto LABEL_2259;
          case 9:
            v1186 = "DATABASE ";
            goto LABEL_2256;
          case 0xC:
            appendStringInfoString(&__s1, "DOMAIN ");
            v1255 = *(v17 + 16);
            if (v1255 && *(v1255 + 4) >= 1)
            {
              v1256 = 8;
              v1257 = 0;
              do
              {
                v1258 = *(v1255 + 16);
                v1259 = quote_identifier(*(*(v1258 + 8 * v1257) + 8));
                appendStringInfoString(&__s1, v1259);
                v1260 = *(v1255 + 4);
                if (v1258 + v1256)
                {
                  v1261 = v1258 + v1256 >= (*(v1255 + 16) + 8 * v1260);
                }

                else
                {
                  v1261 = 1;
                }

                if (!v1261)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1260 = *(v1255 + 4);
                }

                ++v1257;
                v1256 += 8;
              }

              while (v1257 < v1260);
            }

            goto LABEL_2259;
          case 0xE:
            v1186 = "EVENT TRIGGER ";
            goto LABEL_2256;
          case 0x10:
            v1186 = "FOREIGN DATA WRAPPER ";
            goto LABEL_2256;
          case 0x11:
            v1186 = "SERVER ";
            goto LABEL_2256;
          case 0x13:
            v1254 = "FUNCTION ";
            goto LABEL_2254;
          case 0x15:
            v1186 = "LANGUAGE ";
            goto LABEL_2256;
          case 0x16:
            appendStringInfoString(&__s1, "LARGE OBJECT ");
            v1216 = *(v17 + 16);
            if (*v1216 == 222)
            {
              v1262 = *(v1216 + 1);
LABEL_2258:
              appendStringInfoString(&__s1, v1262);
            }

            else if (*v1216 == 221)
            {
              appendStringInfo(&__s1, "%d", v1210, v1211, v1212, v1213, v1214, v1215, v1216[2]);
            }

LABEL_2259:
            appendStringInfoString(&__s1, " OWNER TO ");
            v63 = *(v18 + 24);
            v64 = *(v63 + 4);
            if (v64 > 1)
            {
              goto LABEL_2264;
            }

            v9 = v1356;
            if (!v64)
            {
              goto LABEL_2261;
            }

            goto LABEL_88;
          case 0x18:
            v1194 = *(v17 + 16);
            appendStringInfoString(&__s1, "OPERATOR CLASS ");
            if (!v1194)
            {
              goto LABEL_2468;
            }

            if (*(v1194 + 4) >= 2)
            {
              v1238 = 1;
              v1239 = 0x100000000;
              do
              {
                v1240 = (*(v1194 + 16) + (v1239 >> 29));
                v1242 = *v1240;
                v1241 = (v1240 + 1);
                v1243 = quote_identifier(*(v1242 + 8));
                appendStringInfoString(&__s1, v1243);
                v1244 = *(v1194 + 4);
                if (v1241)
                {
                  v1245 = v1241 >= *(v1194 + 16) + 8 * v1244;
                }

                else
                {
                  v1245 = 1;
                }

                if (!v1245)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1244) = *(v1194 + 4);
                }

                ++v1238;
                v1239 += 0x100000000;
              }

              while (v1244 > v1238);
            }

            goto LABEL_2226;
          case 0x19:
            appendStringInfoString(&__s1, "OPERATOR ");
            deparseOperatorWithArgtypes(&__s1, *(v17 + 16));
            goto LABEL_2259;
          case 0x1A:
            v1194 = *(v17 + 16);
            appendStringInfoString(&__s1, "OPERATOR FAMILY ");
            if (!v1194)
            {
              goto LABEL_2468;
            }

            if (*(v1194 + 4) >= 2)
            {
              v1195 = 1;
              v1196 = 0x100000000;
              do
              {
                v1197 = (*(v1194 + 16) + (v1196 >> 29));
                v1199 = *v1197;
                v1198 = (v1197 + 1);
                v1200 = quote_identifier(*(v1199 + 8));
                appendStringInfoString(&__s1, v1200);
                v1201 = *(v1194 + 4);
                if (v1198)
                {
                  v1202 = v1198 >= *(v1194 + 16) + 8 * v1201;
                }

                else
                {
                  v1202 = 1;
                }

                if (!v1202)
                {
                  appendStringInfoChar(&__s1, 46);
                  LODWORD(v1201) = *(v1194 + 4);
                }

                ++v1195;
                v1196 += 0x100000000;
              }

              while (v1201 > v1195);
            }

LABEL_2226:
            appendStringInfoString(&__s1, " USING ");
            v1246 = **(v1194 + 16);
            goto LABEL_2257;
          case 0x1C:
            v1254 = "PROCEDURE ";
            goto LABEL_2254;
          case 0x1D:
            v1186 = "PUBLICATION ";
            goto LABEL_2256;
          case 0x20:
            v1254 = "ROUTINE ";
LABEL_2254:
            appendStringInfoString(&__s1, v1254);
            deparseFunctionWithArgtypes(&__s1, *(v17 + 16));
            goto LABEL_2259;
          case 0x22:
            v1186 = "SCHEMA ";
            goto LABEL_2256;
          case 0x24:
            v1186 = "SUBSCRIPTION ";
            goto LABEL_2256;
          case 0x25:
            appendStringInfoString(&__s1, "STATISTICS ");
            v1224 = *(v17 + 16);
            if (v1224 && *(v1224 + 4) >= 1)
            {
              v1225 = 8;
              v1226 = 0;
              do
              {
                v1227 = *(v1224 + 16);
                v1228 = quote_identifier(*(*(v1227 + 8 * v1226) + 8));
                appendStringInfoString(&__s1, v1228);
                v1229 = *(v1224 + 4);
                if (v1227 + v1225)
                {
                  v1230 = v1227 + v1225 >= (*(v1224 + 16) + 8 * v1229);
                }

                else
                {
                  v1230 = 1;
                }

                if (!v1230)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1229 = *(v1224 + 4);
                }

                ++v1226;
                v1225 += 8;
              }

              while (v1226 < v1229);
            }

            goto LABEL_2259;
          case 0x28:
            v1186 = "TABLESPACE ";
LABEL_2256:
            appendStringInfoString(&__s1, v1186);
            v1246 = *(v17 + 16);
LABEL_2257:
            v1262 = quote_identifier(*(v1246 + 8));
            goto LABEL_2258;
          case 0x2B:
            appendStringInfoString(&__s1, "TEXT SEARCH CONFIGURATION ");
            v1187 = *(v17 + 16);
            if (v1187 && *(v1187 + 4) >= 1)
            {
              v1188 = 8;
              v1189 = 0;
              do
              {
                v1190 = *(v1187 + 16);
                v1191 = quote_identifier(*(*(v1190 + 8 * v1189) + 8));
                appendStringInfoString(&__s1, v1191);
                v1192 = *(v1187 + 4);
                if (v1190 + v1188)
                {
                  v1193 = v1190 + v1188 >= (*(v1187 + 16) + 8 * v1192);
                }

                else
                {
                  v1193 = 1;
                }

                if (!v1193)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1192 = *(v1187 + 4);
                }

                ++v1189;
                v1188 += 8;
              }

              while (v1189 < v1192);
            }

            goto LABEL_2259;
          case 0x2C:
            appendStringInfoString(&__s1, "TEXT SEARCH DICTIONARY ");
            v1217 = *(v17 + 16);
            if (v1217 && *(v1217 + 4) >= 1)
            {
              v1218 = 8;
              v1219 = 0;
              do
              {
                v1220 = *(v1217 + 16);
                v1221 = quote_identifier(*(*(v1220 + 8 * v1219) + 8));
                appendStringInfoString(&__s1, v1221);
                v1222 = *(v1217 + 4);
                if (v1220 + v1218)
                {
                  v1223 = v1220 + v1218 >= (*(v1217 + 16) + 8 * v1222);
                }

                else
                {
                  v1223 = 1;
                }

                if (!v1223)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1222 = *(v1217 + 4);
                }

                ++v1219;
                v1218 += 8;
              }

              while (v1219 < v1222);
            }

            goto LABEL_2259;
          case 0x2F:
            appendStringInfoString(&__s1, "TYPE ");
            v1203 = *(v17 + 16);
            if (v1203 && *(v1203 + 4) >= 1)
            {
              v1204 = 8;
              v1205 = 0;
              do
              {
                v1206 = *(v1203 + 16);
                v1207 = quote_identifier(*(*(v1206 + 8 * v1205) + 8));
                appendStringInfoString(&__s1, v1207);
                v1208 = *(v1203 + 4);
                if (v1206 + v1204)
                {
                  v1209 = v1206 + v1204 >= (*(v1203 + 16) + 8 * v1208);
                }

                else
                {
                  v1209 = 1;
                }

                if (!v1209)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1208 = *(v1203 + 4);
                }

                ++v1205;
                v1204 += 8;
              }

              while (v1205 < v1208);
            }

            goto LABEL_2259;
          default:
            goto LABEL_2259;
        }

      case 0x12F:
        appendStringInfoString(&__s1, "ALTER OPERATOR ");
        deparseOperatorWithArgtypes(&__s1, *(v17 + 8));
        appendStringInfoString(&__s1, " SET (");
        deparseOperatorDefList(&__s1, *(v17 + 16));
        goto LABEL_349;
      case 0x130:
        appendStringInfoString(&__s1, "ALTER TYPE ");
        v77 = *(v17 + 8);
        if (v77 && *(v77 + 4) >= 1)
        {
          v78 = 8;
          v79 = 0;
          do
          {
            v80 = *(v77 + 16);
            v81 = quote_identifier(*(*(v80 + 8 * v79) + 8));
            appendStringInfoString(&__s1, v81);
            v82 = *(v77 + 4);
            if (v80 + v78)
            {
              v83 = v80 + v78 >= (*(v77 + 16) + 8 * v82);
            }

            else
            {
              v83 = 1;
            }

            if (!v83)
            {
              appendStringInfoChar(&__s1, 46);
              v82 = *(v77 + 4);
            }

            ++v79;
            v78 += 8;
          }

          while (v79 < v82);
        }

        appendStringInfoString(&__s1, " SET (");
        deparseOperatorDefList(&__s1, *(v18 + 16));
        appendStringInfoChar(&__s1, 41);
        v9 = v1356;
        goto LABEL_2447;
      case 0x131:
        appendStringInfoString(&__s1, "DROP OWNED BY ");
        v505 = *(v17 + 8);
        if (!v505 || *(v505 + 4) < 1)
        {
          goto LABEL_853;
        }

        v506 = 8;
        v507 = 0;
        while (1)
        {
          v508 = *(v505 + 16);
          v509 = *(v508 + 8 * v507);
          v510 = *(v509 + 4);
          if (v510 > 1)
          {
            if (v510 == 2)
            {
              v511 = "SESSION_USER";
              goto LABEL_847;
            }

            if (v510 == 3)
            {
              v511 = "public";
              goto LABEL_847;
            }
          }

          else
          {
            if (!v510)
            {
              v511 = quote_identifier(*(v509 + 8));
              goto LABEL_847;
            }

            if (v510 == 1)
            {
              v511 = "CURRENT_USER";
LABEL_847:
              appendStringInfoString(&__s1, v511);
            }
          }

          v512 = *(v505 + 4);
          if (v508 + v506)
          {
            v513 = v508 + v506 >= (*(v505 + 16) + 8 * v512);
          }

          else
          {
            v513 = 1;
          }

          if (!v513)
          {
            appendStringInfoString(&__s1, ", ");
            v512 = *(v505 + 4);
          }

          ++v507;
          v506 += 8;
          if (v507 >= v512)
          {
LABEL_853:
            appendStringInfoChar(&__s1, 32);
            if (*(v18 + 16) == 1)
            {
              appendStringInfoString(&__s1, "CASCADE ");
            }

LABEL_1802:
            v411 = v1360 - 1;
            v9 = v1356;
            if (v1360 >= 1)
            {
              goto LABEL_2445;
            }

            goto LABEL_2447;
          }
        }

      case 0x132:
        appendStringInfoString(&__s1, "REASSIGN OWNED BY ");
        v54 = *(v17 + 8);
        if (!v54 || *(v54 + 4) < 1)
        {
          goto LABEL_86;
        }

        v55 = 8;
        v56 = 0;
        while (1)
        {
          v57 = *(v54 + 16);
          v58 = *(v57 + 8 * v56);
          v59 = *(v58 + 4);
          if (v59 > 1)
          {
            if (v59 == 2)
            {
              v60 = "SESSION_USER";
              goto LABEL_80;
            }

            if (v59 == 3)
            {
              v60 = "public";
              goto LABEL_80;
            }
          }

          else
          {
            if (!v59)
            {
              v60 = quote_identifier(*(v58 + 8));
              goto LABEL_80;
            }

            if (v59 == 1)
            {
              v60 = "CURRENT_USER";
LABEL_80:
              appendStringInfoString(&__s1, v60);
            }
          }

          v61 = *(v54 + 4);
          if (v57 + v55)
          {
            v62 = v57 + v55 >= (*(v54 + 16) + 8 * v61);
          }

          else
          {
            v62 = 1;
          }

          if (!v62)
          {
            appendStringInfoString(&__s1, ", ");
            v61 = *(v54 + 4);
          }

          ++v56;
          v55 += 8;
          if (v56 >= v61)
          {
LABEL_86:
            appendStringInfoChar(&__s1, 32);
            appendStringInfoString(&__s1, "TO ");
            v63 = *(v18 + 16);
            v64 = *(v63 + 4);
            if (v64 > 1)
            {
LABEL_2264:
              v9 = v1356;
              if (v64 == 2)
              {
                v26 = "SESSION_USER";
              }

              else
              {
                if (v64 != 3)
                {
                  goto LABEL_2447;
                }

                v26 = "public";
              }
            }

            else
            {
              v9 = v1356;
              if (v64)
              {
LABEL_88:
                if (v64 != 1)
                {
                  goto LABEL_2447;
                }

                v26 = "CURRENT_USER";
                goto LABEL_2263;
              }

LABEL_2261:
              v189 = *(v63 + 8);
LABEL_2262:
              v26 = quote_identifier(v189);
            }

LABEL_2263:
            appendStringInfoString(&__s1, v26);
            goto LABEL_2447;
          }
        }

      case 0x133:
        appendStringInfoString(&__s1, "CREATE TYPE ");
        deparseRangeVar(&__s1, *(v17 + 8), 8);
        appendStringInfoString(&__s1, " AS (");
        v384 = *(v17 + 16);
        if (v384 && *(v384 + 4) >= 1)
        {
          v385 = 8;
          v386 = 0;
          do
          {
            v387 = *(v384 + 16);
            deparseColumnDef(&__s1, *(v387 + 8 * v386));
            if (v387 + v385)
            {
              v388 = v387 + v385 >= (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4));
            }

            else
            {
              v388 = 1;
            }

            if (!v388)
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v386;
            v385 += 8;
          }

          while (v386 < *(v384 + 4));
        }

        goto LABEL_720;
      case 0x134:
        appendStringInfoString(&__s1, "CREATE TYPE ");
        v437 = *(v17 + 8);
        if (v437 && *(v437 + 4) >= 1)
        {
          v438 = 8;
          v439 = 0;
          do
          {
            v440 = *(v437 + 16);
            v441 = quote_identifier(*(*(v440 + 8 * v439) + 8));
            appendStringInfoString(&__s1, v441);
            v442 = *(v437 + 4);
            if (v440 + v438)
            {
              v443 = v440 + v438 >= (*(v437 + 16) + 8 * v442);
            }

            else
            {
              v443 = 1;
            }

            if (!v443)
            {
              appendStringInfoChar(&__s1, 46);
              v442 = *(v437 + 4);
            }

            ++v439;
            v438 += 8;
          }

          while (v439 < v442);
        }

        appendStringInfoString(&__s1, " AS ENUM (");
        v444 = *(v18 + 16);
        if (v444 && *(v444 + 4) >= 1)
        {
          v445 = 8;
          v446 = 0;
          do
          {
            v447 = *(v444 + 16);
            deparseStringLiteral(&__s1, *(*(v447 + 8 * v446) + 8));
            if (v447 + v445)
            {
              v448 = v447 + v445 >= (*(*(v18 + 16) + 16) + 8 * *(*(v18 + 16) + 4));
            }

            else
            {
              v448 = 1;
            }

            if (!v448)
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v446;
            v445 += 8;
          }

          while (v446 < *(v444 + 4));
        }

LABEL_720:
        appendStringInfoChar(&__s1, 41);
        v9 = v1356;
        goto LABEL_2447;
      case 0x135:
        appendStringInfoString(&__s1, "CREATE TYPE ");
        v451 = *(v17 + 8);
        if (v451 && *(v451 + 4) >= 1)
        {
          v452 = 8;
          v453 = 0;
          do
          {
            v454 = *(v451 + 16);
            v455 = quote_identifier(*(*(v454 + 8 * v453) + 8));
            appendStringInfoString(&__s1, v455);
            v456 = *(v451 + 4);
            if (v454 + v452)
            {
              v457 = v454 + v452 >= (*(v451 + 16) + 8 * v456);
            }

            else
            {
              v457 = 1;
            }

            if (!v457)
            {
              appendStringInfoChar(&__s1, 46);
              v456 = *(v451 + 4);
            }

            ++v453;
            v452 += 8;
          }

          while (v453 < v456);
        }

        appendStringInfoString(&__s1, " AS RANGE ");
        deparseDefinition(&__s1, *(v18 + 16));
        v9 = v1356;
        goto LABEL_2447;
      case 0x136:
        appendStringInfoString(&__s1, "ALTER TYPE ");
        v65 = *(v17 + 8);
        if (v65 && *(v65 + 4) >= 1)
        {
          v66 = 8;
          v67 = 0;
          do
          {
            v68 = *(v65 + 16);
            v69 = quote_identifier(*(*(v68 + 8 * v67) + 8));
            appendStringInfoString(&__s1, v69);
            v70 = *(v65 + 4);
            if (v68 + v66)
            {
              v71 = v68 + v66 >= (*(v65 + 16) + 8 * v70);
            }

            else
            {
              v71 = 1;
            }

            if (!v71)
            {
              appendStringInfoChar(&__s1, 46);
              v70 = *(v65 + 4);
            }

            ++v67;
            v66 += 8;
          }

          while (v67 < v70);
        }

        appendStringInfoChar(&__s1, 32);
        if (*(v17 + 16))
        {
          appendStringInfoString(&__s1, "RENAME VALUE ");
          deparseStringLiteral(&__s1, *(v17 + 16));
          appendStringInfoString(&__s1, " TO ");
          v72 = (v17 + 24);
          v6 = v1358;
          v9 = v1356;
        }

        else
        {
          appendStringInfoString(&__s1, "ADD VALUE ");
          if (*(v17 + 41) == 1)
          {
            appendStringInfoString(&__s1, "IF NOT EXISTS ");
          }

          deparseStringLiteral(&__s1, *(v17 + 24));
          appendStringInfoChar(&__s1, 32);
          v6 = v1358;
          v9 = v1356;
          if (!*(v17 + 32))
          {
            goto LABEL_2444;
          }

          if (*(v17 + 40))
          {
            v667 = "AFTER ";
          }

          else
          {
            v667 = "BEFORE ";
          }

          appendStringInfoString(&__s1, v667);
          v72 = (v17 + 32);
        }

        deparseStringLiteral(&__s1, *v72);
        goto LABEL_2444;
      case 0x137:
        appendStringInfoString(&__s1, "ALTER TEXT SEARCH DICTIONARY ");
        v190 = *(v17 + 8);
        if (v190 && *(v190 + 4) >= 1)
        {
          v191 = 8;
          v192 = 0;
          do
          {
            v193 = *(v190 + 16);
            v194 = quote_identifier(*(*(v193 + 8 * v192) + 8));
            appendStringInfoString(&__s1, v194);
            v195 = *(v190 + 4);
            if (v193 + v191)
            {
              v196 = v193 + v191 >= (*(v190 + 16) + 8 * v195);
            }

            else
            {
              v196 = 1;
            }

            if (!v196)
            {
              appendStringInfoChar(&__s1, 46);
              v195 = *(v190 + 4);
            }

            ++v192;
            v191 += 8;
          }

          while (v192 < v195);
        }

        appendStringInfoChar(&__s1, 32);
        deparseDefinition(&__s1, *(v18 + 16));
        v9 = v1356;
        goto LABEL_2447;
      case 0x138:
        appendStringInfoString(&__s1, "ALTER TEXT SEARCH CONFIGURATION ");
        v562 = *(v17 + 8);
        if (v562 && *(v562 + 4) >= 1)
        {
          v563 = 8;
          v564 = 0;
          do
          {
            v565 = *(v562 + 16);
            v566 = quote_identifier(*(*(v565 + 8 * v564) + 8));
            appendStringInfoString(&__s1, v566);
            v567 = *(v562 + 4);
            if (v565 + v563)
            {
              v568 = v565 + v563 >= (*(v562 + 16) + 8 * v567);
            }

            else
            {
              v568 = 1;
            }

            if (!v568)
            {
              appendStringInfoChar(&__s1, 46);
              v567 = *(v562 + 4);
            }

            ++v564;
            v563 += 8;
          }

          while (v564 < v567);
        }

        appendStringInfoChar(&__s1, 32);
        v569 = *(v18 + 4);
        if (v569 <= 1)
        {
          if (v569)
          {
            v9 = v1356;
            if (v569 != 1)
            {
              goto LABEL_2447;
            }

            appendStringInfoString(&__s1, "ALTER MAPPING FOR ");
            v601 = *(v18 + 16);
            if (v601 && *(v601 + 4) >= 1)
            {
              v602 = 8;
              v603 = 0;
              do
              {
                v604 = *(v601 + 16);
                v605 = quote_identifier(*(*(v604 + 8 * v603) + 8));
                appendStringInfoString(&__s1, v605);
                v606 = *(v601 + 4);
                if (v604 + v602)
                {
                  v607 = v604 + v602 >= (*(v601 + 16) + 8 * v606);
                }

                else
                {
                  v607 = 1;
                }

                if (!v607)
                {
                  appendStringInfoString(&__s1, ", ");
                  v606 = *(v601 + 4);
                }

                ++v603;
                v602 += 8;
              }

              while (v603 < v606);
            }
          }

          else
          {
            appendStringInfoString(&__s1, "ADD MAPPING FOR ");
            v816 = *(v18 + 16);
            if (v816 && *(v816 + 4) >= 1)
            {
              v817 = 8;
              v818 = 0;
              do
              {
                v819 = *(v816 + 16);
                v820 = quote_identifier(*(*(v819 + 8 * v818) + 8));
                appendStringInfoString(&__s1, v820);
                v821 = *(v816 + 4);
                if (v819 + v817)
                {
                  v822 = v819 + v817 >= (*(v816 + 16) + 8 * v821);
                }

                else
                {
                  v822 = 1;
                }

                if (!v822)
                {
                  appendStringInfoString(&__s1, ", ");
                  v821 = *(v816 + 4);
                }

                ++v818;
                v817 += 8;
              }

              while (v818 < v821);
            }
          }

          appendStringInfoString(&__s1, " WITH ");
          deparseAnyNameList(&__s1, *(v18 + 24));
          v9 = v1356;
        }

        else if (v569 == 2)
        {
          appendStringInfoString(&__s1, "ALTER MAPPING REPLACE ");
          v781 = **(*(v18 + 24) + 16);
          if (v781 && *(v781 + 4) >= 1)
          {
            v782 = 8;
            v783 = 0;
            do
            {
              v784 = *(v781 + 16);
              v785 = quote_identifier(*(*(v784 + 8 * v783) + 8));
              appendStringInfoString(&__s1, v785);
              v786 = *(v781 + 4);
              if (v784 + v782)
              {
                v787 = v784 + v782 >= (*(v781 + 16) + 8 * v786);
              }

              else
              {
                v787 = 1;
              }

              if (!v787)
              {
                appendStringInfoChar(&__s1, 46);
                v786 = *(v781 + 4);
              }

              ++v783;
              v782 += 8;
            }

            while (v783 < v786);
          }

          appendStringInfoString(&__s1, " WITH ");
          v788 = *(*(*(v18 + 24) + 16) + 8);
          v9 = v1356;
          if (v788 && *(v788 + 4) >= 1)
          {
            v789 = 8;
            v790 = 0;
            do
            {
              v791 = *(v788 + 16);
              v792 = quote_identifier(*(*(v791 + 8 * v790) + 8));
              appendStringInfoString(&__s1, v792);
              v793 = *(v788 + 4);
              if (v791 + v789)
              {
                v794 = v791 + v789 >= (*(v788 + 16) + 8 * v793);
              }

              else
              {
                v794 = 1;
              }

              if (!v794)
              {
                appendStringInfoChar(&__s1, 46);
                v793 = *(v788 + 4);
              }

              ++v790;
              v789 += 8;
            }

            while (v790 < v793);
          }
        }

        else if (v569 == 3)
        {
          appendStringInfoString(&__s1, "ALTER MAPPING FOR ");
          v795 = *(v18 + 16);
          if (v795 && *(v795 + 4) >= 1)
          {
            v796 = 8;
            v797 = 0;
            do
            {
              v798 = *(v795 + 16);
              v799 = quote_identifier(*(*(v798 + 8 * v797) + 8));
              appendStringInfoString(&__s1, v799);
              v800 = *(v795 + 4);
              if (v798 + v796)
              {
                v801 = v798 + v796 >= (*(v795 + 16) + 8 * v800);
              }

              else
              {
                v801 = 1;
              }

              if (!v801)
              {
                appendStringInfoString(&__s1, ", ");
                v800 = *(v795 + 4);
              }

              ++v797;
              v796 += 8;
            }

            while (v797 < v800);
          }

          appendStringInfoString(&__s1, " REPLACE ");
          v802 = **(*(v18 + 24) + 16);
          if (v802 && *(v802 + 4) >= 1)
          {
            v803 = 8;
            v804 = 0;
            do
            {
              v805 = *(v802 + 16);
              v806 = quote_identifier(*(*(v805 + 8 * v804) + 8));
              appendStringInfoString(&__s1, v806);
              v807 = *(v802 + 4);
              if (v805 + v803)
              {
                v808 = v805 + v803 >= (*(v802 + 16) + 8 * v807);
              }

              else
              {
                v808 = 1;
              }

              if (!v808)
              {
                appendStringInfoChar(&__s1, 46);
                v807 = *(v802 + 4);
              }

              ++v804;
              v803 += 8;
            }

            while (v804 < v807);
          }

          appendStringInfoString(&__s1, " WITH ");
          v809 = *(*(*(v18 + 24) + 16) + 8);
          v9 = v1356;
          if (v809 && *(v809 + 4) >= 1)
          {
            v810 = 8;
            v811 = 0;
            do
            {
              v812 = *(v809 + 16);
              v813 = quote_identifier(*(*(v812 + 8 * v811) + 8));
              appendStringInfoString(&__s1, v813);
              v814 = *(v809 + 4);
              if (v812 + v810)
              {
                v815 = v812 + v810 >= (*(v809 + 16) + 8 * v814);
              }

              else
              {
                v815 = 1;
              }

              if (!v815)
              {
                appendStringInfoChar(&__s1, 46);
                v814 = *(v809 + 4);
              }

              ++v811;
              v810 += 8;
            }

            while (v811 < v814);
          }
        }

        else
        {
          v9 = v1356;
          if (v569 == 4)
          {
            appendStringInfoString(&__s1, "DROP MAPPING ");
            if (*(v18 + 34) == 1)
            {
              appendStringInfoString(&__s1, "IF EXISTS ");
            }

            appendStringInfoString(&__s1, "FOR ");
            v570 = *(v18 + 16);
            if (v570 && *(v570 + 4) >= 1)
            {
              v571 = 8;
              v572 = 0;
              do
              {
                v573 = *(v570 + 16);
                v574 = quote_identifier(*(*(v573 + 8 * v572) + 8));
                appendStringInfoString(&__s1, v574);
                v575 = *(v570 + 4);
                if (v573 + v571)
                {
                  v576 = v573 + v571 >= (*(v570 + 16) + 8 * v575);
                }

                else
                {
                  v576 = 1;
                }

                if (!v576)
                {
                  appendStringInfoString(&__s1, ", ");
                  v575 = *(v570 + 4);
                }

                ++v572;
                v571 += 8;
              }

              while (v572 < v575);
            }
          }
        }

        goto LABEL_2447;
      case 0x139:
        appendStringInfoString(&__s1, "CREATE FOREIGN DATA WRAPPER ");
        v461 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v461);
        appendStringInfoChar(&__s1, 32);
        v462 = *(v17 + 16);
        if (v462 && *(v462 + 4) >= 1)
        {
          deparseFdwOptions(&__s1, v462);
          appendStringInfoChar(&__s1, 32);
        }

        deparseCreateGenericOptions(&__s1, *(v17 + 24));
        goto LABEL_2444;
      case 0x13A:
        appendStringInfoString(&__s1, "ALTER FOREIGN DATA WRAPPER ");
        v560 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v560);
        appendStringInfoChar(&__s1, 32);
        v561 = *(v17 + 16);
        if (!v561 || *(v561 + 4) < 1)
        {
          goto LABEL_1399;
        }

        deparseFdwOptions(&__s1, v561);
        goto LABEL_1398;
      case 0x13B:
        appendStringInfoString(&__s1, "CREATE SERVER ");
        if (*(v17 + 40) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v75 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v75);
        appendStringInfoChar(&__s1, 32);
        if (*(v17 + 16))
        {
          appendStringInfoString(&__s1, "TYPE ");
          deparseStringLiteral(&__s1, *(v17 + 16));
          appendStringInfoChar(&__s1, 32);
        }

        if (*(v17 + 24))
        {
          appendStringInfoString(&__s1, "VERSION ");
          deparseStringLiteral(&__s1, *(v17 + 24));
          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "FOREIGN DATA WRAPPER ");
        v76 = quote_identifier(*(v17 + 32));
        appendStringInfoString(&__s1, v76);
        appendStringInfoChar(&__s1, 32);
        deparseCreateGenericOptions(&__s1, *(v17 + 48));
        goto LABEL_2444;
      case 0x13C:
        appendStringInfoString(&__s1, "ALTER SERVER ");
        v137 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v137);
        appendStringInfoChar(&__s1, 32);
        if (*(v17 + 32) != 1)
        {
          goto LABEL_1399;
        }

        appendStringInfoString(&__s1, "VERSION ");
        v138 = *(v17 + 16);
        if (v138)
        {
          deparseStringLiteral(&__s1, v138);
        }

        else
        {
          appendStringInfoString(&__s1, "NULL");
        }

LABEL_1398:
        appendStringInfoChar(&__s1, 32);
LABEL_1399:
        v473 = *(v17 + 24);
        if (v473)
        {
LABEL_1400:
          if (*(v473 + 4) >= 1)
          {
            deparseAlterGenericOptions(&__s1, v473);
          }
        }

        goto LABEL_2444;
      case 0x13D:
        appendStringInfoString(&__s1, "CREATE USER MAPPING ");
        if (*(v17 + 24) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        appendStringInfoString(&__s1, "FOR ");
        v130 = *(v17 + 8);
        v131 = *(v130 + 4);
        if (v131 > 1)
        {
          if (v131 == 2)
          {
            v132 = "SESSION_USER";
          }

          else
          {
            if (v131 != 3)
            {
              goto LABEL_1328;
            }

            v132 = "public";
          }
        }

        else if (v131)
        {
          if (v131 != 1)
          {
            goto LABEL_1328;
          }

          v132 = "CURRENT_USER";
        }

        else
        {
          v132 = quote_identifier(*(v130 + 8));
        }

        appendStringInfoString(&__s1, v132);
LABEL_1328:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "SERVER ");
        v740 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v740);
        appendStringInfoChar(&__s1, 32);
        deparseCreateGenericOptions(&__s1, *(v17 + 32));
        v411 = v1360 - 1;
        if (v1360 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0x13E:
        appendStringInfoString(&__s1, "ALTER USER MAPPING FOR ");
        v546 = *(v17 + 8);
        v547 = *(v546 + 4);
        if (v547 > 1)
        {
          if (v547 == 2)
          {
            v548 = "SESSION_USER";
          }

          else
          {
            if (v547 != 3)
            {
              goto LABEL_1345;
            }

            v548 = "public";
          }
        }

        else if (v547)
        {
          if (v547 != 1)
          {
            goto LABEL_1345;
          }

          v548 = "CURRENT_USER";
        }

        else
        {
          v548 = quote_identifier(*(v546 + 8));
        }

        appendStringInfoString(&__s1, v548);
LABEL_1345:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "SERVER ");
        v743 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v743);
        appendStringInfoChar(&__s1, 32);
        deparseAlterGenericOptions(&__s1, *(v17 + 24));
        goto LABEL_2444;
      case 0x13F:
        appendStringInfoString(&__s1, "DROP USER MAPPING ");
        if (*(v17 + 24) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        appendStringInfoString(&__s1, "FOR ");
        v543 = *(v17 + 8);
        v544 = *(v543 + 4);
        if (v544 > 1)
        {
          if (v544 == 2)
          {
            v545 = "SESSION_USER";
          }

          else
          {
            if (v544 != 3)
            {
              goto LABEL_1341;
            }

            v545 = "public";
          }
        }

        else if (v544)
        {
          if (v544 != 1)
          {
            goto LABEL_1341;
          }

          v545 = "CURRENT_USER";
        }

        else
        {
          v545 = quote_identifier(*(v543 + 8));
        }

        appendStringInfoString(&__s1, v545);
LABEL_1341:
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "SERVER ");
        v189 = *(v17 + 16);
        goto LABEL_2262;
      case 0x140:
        appendStringInfoString(&__s1, "ALTER TABLESPACE ");
        v250 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v250);
        appendStringInfoChar(&__s1, 32);
        if (*(v17 + 24))
        {
          v251 = "RESET ";
        }

        else
        {
          v251 = "SET ";
        }

        appendStringInfoString(&__s1, v251);
        deparseRelOptions(&__s1, *(v17 + 16));
        goto LABEL_2447;
      case 0x142:
        appendStringInfoString(&__s1, "SECURITY LABEL ");
        if (*(v17 + 16))
        {
          appendStringInfoString(&__s1, "FOR ");
          v252 = quote_identifier(*(v17 + 16));
          appendStringInfoString(&__s1, v252);
          appendStringInfoChar(&__s1, 32);
        }

        appendStringInfoString(&__s1, "ON ");
        switch(*(v17 + 4))
        {
          case 1:
            appendStringInfoString(&__s1, "AGGREGATE ");
            deparseAggregateWithArgtypes(&__s1, *(v17 + 8));
            break;
          case 6:
            appendStringInfoString(&__s1, "COLUMN ");
            v1059 = *(v17 + 8);
            if (v1059 && *(v1059 + 4) >= 1)
            {
              v1060 = 8;
              v1061 = 0;
              do
              {
                v1062 = *(v1059 + 16);
                v1063 = quote_identifier(*(*(v1062 + 8 * v1061) + 8));
                appendStringInfoString(&__s1, v1063);
                v1064 = *(v1059 + 4);
                if (v1062 + v1060)
                {
                  v1065 = v1062 + v1060 >= (*(v1059 + 16) + 8 * v1064);
                }

                else
                {
                  v1065 = 1;
                }

                if (!v1065)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1064 = *(v1059 + 4);
                }

                ++v1061;
                v1060 += 8;
              }

              while (v1061 < v1064);
            }

            break;
          case 9:
            v1049 = "DATABASE ";
            goto LABEL_2026;
          case 0xC:
            v1051 = "DOMAIN ";
            goto LABEL_2004;
          case 0xE:
            v1049 = "EVENT TRIGGER ";
            goto LABEL_2026;
          case 0x12:
            appendStringInfoString(&__s1, "FOREIGN TABLE ");
            v1052 = *(v17 + 8);
            if (v1052 && *(v1052 + 4) >= 1)
            {
              v1053 = 8;
              v1054 = 0;
              do
              {
                v1055 = *(v1052 + 16);
                v1056 = quote_identifier(*(*(v1055 + 8 * v1054) + 8));
                appendStringInfoString(&__s1, v1056);
                v1057 = *(v1052 + 4);
                if (v1055 + v1053)
                {
                  v1058 = v1055 + v1053 >= (*(v1052 + 16) + 8 * v1057);
                }

                else
                {
                  v1058 = 1;
                }

                if (!v1058)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1057 = *(v1052 + 4);
                }

                ++v1054;
                v1053 += 8;
              }

              while (v1054 < v1057);
            }

            break;
          case 0x13:
            v1050 = "FUNCTION ";
            goto LABEL_1990;
          case 0x15:
            v1049 = "LANGUAGE ";
            goto LABEL_2026;
          case 0x16:
            appendStringInfoString(&__s1, "LARGE OBJECT ");
            deparseValue(&__s1, *(v17 + 8), 11, v1080, v1081, v1082, v1083, v1084);
            break;
          case 0x17:
            appendStringInfoString(&__s1, "MATERIALIZED VIEW ");
            v1073 = *(v17 + 8);
            if (v1073 && *(v1073 + 4) >= 1)
            {
              v1074 = 8;
              v1075 = 0;
              do
              {
                v1076 = *(v1073 + 16);
                v1077 = quote_identifier(*(*(v1076 + 8 * v1075) + 8));
                appendStringInfoString(&__s1, v1077);
                v1078 = *(v1073 + 4);
                if (v1076 + v1074)
                {
                  v1079 = v1076 + v1074 >= (*(v1073 + 16) + 8 * v1078);
                }

                else
                {
                  v1079 = 1;
                }

                if (!v1079)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1078 = *(v1073 + 4);
                }

                ++v1075;
                v1074 += 8;
              }

              while (v1075 < v1078);
            }

            break;
          case 0x1C:
            v1050 = "PROCEDURE ";
            goto LABEL_1990;
          case 0x1D:
            v1049 = "PUBLICATION ";
            goto LABEL_2026;
          case 0x1F:
            v1049 = "ROLE ";
            goto LABEL_2026;
          case 0x20:
            v1050 = "ROUTINE ";
LABEL_1990:
            appendStringInfoString(&__s1, v1050);
            deparseFunctionWithArgtypes(&__s1, *(v17 + 8));
            break;
          case 0x22:
            v1049 = "SCHEMA ";
            goto LABEL_2026;
          case 0x23:
            appendStringInfoString(&__s1, "SEQUENCE ");
            v1066 = *(v17 + 8);
            if (v1066 && *(v1066 + 4) >= 1)
            {
              v1067 = 8;
              v1068 = 0;
              do
              {
                v1069 = *(v1066 + 16);
                v1070 = quote_identifier(*(*(v1069 + 8 * v1068) + 8));
                appendStringInfoString(&__s1, v1070);
                v1071 = *(v1066 + 4);
                if (v1069 + v1067)
                {
                  v1072 = v1069 + v1067 >= (*(v1066 + 16) + 8 * v1071);
                }

                else
                {
                  v1072 = 1;
                }

                if (!v1072)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1071 = *(v1066 + 4);
                }

                ++v1068;
                v1067 += 8;
              }

              while (v1068 < v1071);
            }

            break;
          case 0x24:
            v1049 = "SUBSCRIPTION ";
            goto LABEL_2026;
          case 0x27:
            appendStringInfoString(&__s1, "TABLE ");
            v1085 = *(v17 + 8);
            if (v1085 && *(v1085 + 4) >= 1)
            {
              v1086 = 8;
              v1087 = 0;
              do
              {
                v1088 = *(v1085 + 16);
                v1089 = quote_identifier(*(*(v1088 + 8 * v1087) + 8));
                appendStringInfoString(&__s1, v1089);
                v1090 = *(v1085 + 4);
                if (v1088 + v1086)
                {
                  v1091 = v1088 + v1086 >= (*(v1085 + 16) + 8 * v1090);
                }

                else
                {
                  v1091 = 1;
                }

                if (!v1091)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1090 = *(v1085 + 4);
                }

                ++v1087;
                v1086 += 8;
              }

              while (v1087 < v1090);
            }

            break;
          case 0x28:
            v1049 = "TABLESPACE ";
LABEL_2026:
            appendStringInfoString(&__s1, v1049);
            v1092 = quote_identifier(*(*(v17 + 8) + 8));
            appendStringInfoString(&__s1, v1092);
            break;
          case 0x2F:
            v1051 = "TYPE ";
LABEL_2004:
            appendStringInfoString(&__s1, v1051);
            deparseTypeName(&__s1, *(v17 + 8));
            break;
          case 0x31:
            appendStringInfoString(&__s1, "VIEW ");
            v1094 = *(v17 + 8);
            if (v1094 && *(v1094 + 4) >= 1)
            {
              v1095 = 8;
              v1096 = 0;
              do
              {
                v1097 = *(v1094 + 16);
                v1098 = quote_identifier(*(*(v1097 + 8 * v1096) + 8));
                appendStringInfoString(&__s1, v1098);
                v1099 = *(v1094 + 4);
                if (v1097 + v1095)
                {
                  v1100 = v1097 + v1095 >= (*(v1094 + 16) + 8 * v1099);
                }

                else
                {
                  v1100 = 1;
                }

                if (!v1100)
                {
                  appendStringInfoChar(&__s1, 46);
                  v1099 = *(v1094 + 4);
                }

                ++v1096;
                v1095 += 8;
              }

              while (v1096 < v1099);
            }

            break;
          default:
            break;
        }

        appendStringInfoString(&__s1, " IS ");
        v1093 = *(v18 + 24);
        if (v1093)
        {
          deparseStringLiteral(&__s1, v1093);
        }

        else
        {
          appendStringInfoString(&__s1, "NULL");
        }

        v9 = v1356;
        goto LABEL_2447;
      case 0x143:
        deparseCreateStmt(&__s1, v17, 1);
        appendStringInfoString(&__s1, " SERVER ");
        v472 = quote_identifier(*(v17 + 104));
        appendStringInfoString(&__s1, v472);
        appendStringInfoChar(&__s1, 32);
        v473 = *(v17 + 112);
        if (!v473)
        {
          goto LABEL_2444;
        }

        goto LABEL_1400;
      case 0x144:
        appendStringInfoString(&__s1, "IMPORT FOREIGN SCHEMA ");
        appendStringInfoString(&__s1, *(v17 + 16));
        appendStringInfoChar(&__s1, 32);
        v47 = *(v17 + 32);
        if (v47 == 2)
        {
          appendStringInfoString(&__s1, "EXCEPT (");
          v677 = *(v17 + 40);
          if (v677 && *(v677 + 4) >= 1)
          {
            v678 = 8;
            v679 = 0;
            do
            {
              v680 = *(v677 + 16);
              deparseRangeVar(&__s1, *(v680 + 8 * v679), 0);
              v681 = *(v677 + 4);
              if (v680 + v678)
              {
                v682 = v680 + v678 >= (*(v677 + 16) + 8 * v681);
              }

              else
              {
                v682 = 1;
              }

              if (!v682)
              {
                appendStringInfoString(&__s1, ", ");
                v681 = *(v677 + 4);
              }

              ++v679;
              v678 += 8;
            }

            while (v679 < v681);
          }
        }

        else
        {
          if (v47 != 1)
          {
            goto LABEL_1172;
          }

          appendStringInfoString(&__s1, "LIMIT TO (");
          v48 = *(v17 + 40);
          if (v48 && *(v48 + 4) >= 1)
          {
            v49 = 8;
            v50 = 0;
            do
            {
              v51 = *(v48 + 16);
              deparseRangeVar(&__s1, *(v51 + 8 * v50), 0);
              v52 = *(v48 + 4);
              if (v51 + v49)
              {
                v53 = v51 + v49 >= (*(v48 + 16) + 8 * v52);
              }

              else
              {
                v53 = 1;
              }

              if (!v53)
              {
                appendStringInfoString(&__s1, ", ");
                v52 = *(v48 + 4);
              }

              ++v50;
              v49 += 8;
            }

            while (v50 < v52);
          }
        }

        appendStringInfoString(&__s1, ") ");
        v9 = v1356;
LABEL_1172:
        appendStringInfoString(&__s1, "FROM SERVER ");
        v683 = quote_identifier(*(v18 + 8));
        appendStringInfoString(&__s1, v683);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "INTO ");
        v684 = quote_identifier(*(v18 + 24));
        appendStringInfoString(&__s1, v684);
        appendStringInfoChar(&__s1, 32);
        deparseCreateGenericOptions(&__s1, *(v18 + 48));
        v411 = v1360 - 1;
        if (v1360 < 1)
        {
          goto LABEL_2447;
        }

        goto LABEL_2445;
      case 0x145:
        appendStringInfoString(&__s1, "CREATE EXTENSION ");
        if (*(v17 + 16) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v535 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v535);
        appendStringInfoChar(&__s1, 32);
        v536 = *(v17 + 24);
        if (!v536 || *(v536 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v537 = 0;
        while (1)
        {
          v539 = *(*(v536 + 16) + 8 * v537);
          v540 = *(v539 + 16);
          if (!strcmp(v540, "schema"))
          {
            appendStringInfoString(&__s1, "SCHEMA ");
            v538 = quote_identifier(*(*(v539 + 24) + 8));
          }

          else if (!strcmp(v540, "new_version"))
          {
            appendStringInfoString(&__s1, "VERSION ");
            v541 = *(*(v539 + 24) + 8);
            v542 = strlen(v541);
            if (v542)
            {
              if (v542 >= 0x40)
              {
                deparseStringLiteral(&__s1, v541);
                goto LABEL_893;
              }

              v538 = quote_identifier(v541);
            }

            else
            {
              v538 = "''";
            }
          }

          else
          {
            if (strcmp(v540, "cascade"))
            {
              goto LABEL_893;
            }

            v538 = "CASCADE";
          }

          appendStringInfoString(&__s1, v538);
LABEL_893:
          appendStringInfoChar(&__s1, 32);
          if (++v537 >= *(v536 + 4))
          {
            goto LABEL_2444;
          }
        }

      case 0x146:
        appendStringInfoString(&__s1, "ALTER EXTENSION ");
        v528 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v528);
        appendStringInfoString(&__s1, " UPDATE ");
        v529 = *(v17 + 16);
        if (!v529 || *(v529 + 4) < 1)
        {
          goto LABEL_2444;
        }

        v530 = 0;
        while (1)
        {
          v532 = *(*(v529 + 16) + 8 * v530);
          if (!strcmp(*(v532 + 16), "new_version"))
          {
            appendStringInfoString(&__s1, "TO ");
            v533 = *(*(v532 + 24) + 8);
            v534 = strlen(v533);
            if (v534)
            {
              if (v534 >= 0x40)
              {
                deparseStringLiteral(&__s1, v533);
                goto LABEL_880;
              }

              v531 = quote_identifier(v533);
            }

            else
            {
              v531 = "''";
            }

            appendStringInfoString(&__s1, v531);
          }

LABEL_880:
          appendStringInfoChar(&__s1, 32);
          if (++v530 >= *(v529 + 4))
          {
            goto LABEL_2444;
          }
        }

      case 0x147:
        appendStringInfoString(&__s1, "ALTER EXTENSION ");
        v580 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v580);
        appendStringInfoChar(&__s1, 32);
        v581 = *(v17 + 16);
        if (v581 == 1)
        {
          v582 = "ADD ";
        }

        else
        {
          if (v581 != -1)
          {
            goto LABEL_1187;
          }

          v582 = "DROP ";
        }

        appendStringInfoString(&__s1, v582);
LABEL_1187:
        v692 = *(v17 + 20);
        v693 = v692;
        if (v692 <= 0x31 && ((0x2FA8D17AF51A3uLL >> v692) & 1) != 0)
        {
          appendStringInfoString(&__s1, (&off_2797B6668)[v692]);
          v693 = *(v17 + 20);
        }

        switch(v693)
        {
          case 0:
          case 14:
          case 16:
          case 17:
          case 21:
          case 34:
            v189 = *(*(v17 + 24) + 8);
            goto LABEL_2262;
          case 1:
            deparseAggregateWithArgtypes(&__s1, *(v17 + 24));
            goto LABEL_2447;
          case 5:
            v1263 = *(v17 + 24);
            appendStringInfoChar(&__s1, 40);
            deparseTypeName(&__s1, **(v1263 + 16));
            appendStringInfoString(&__s1, " AS ");
            deparseTypeName(&__s1, *(*(v1263 + 16) + 8));
            goto LABEL_349;
          case 7:
          case 8:
          case 18:
          case 23:
          case 35:
          case 39:
          case 43:
          case 44:
          case 45:
          case 46:
          case 49:
            v694 = *(v17 + 24);
            if (v694 && *(v694 + 4) >= 1)
            {
              v695 = 8;
              v696 = 0;
              do
              {
                v697 = *(v694 + 16);
                v698 = quote_identifier(*(*(v697 + 8 * v696) + 8));
                appendStringInfoString(&__s1, v698);
                v699 = *(v694 + 4);
                if (v697 + v695)
                {
                  v700 = v697 + v695 >= (*(v694 + 16) + 8 * v699);
                }

                else
                {
                  v700 = 1;
                }

                if (!v700)
                {
                  appendStringInfoChar(&__s1, 46);
                  v699 = *(v694 + 4);
                }

                ++v696;
                v695 += 8;
              }

              while (v696 < v699);
            }

            goto LABEL_2447;
          case 12:
          case 47:
            deparseTypeName(&__s1, *(v17 + 24));
            goto LABEL_2447;
          case 19:
          case 28:
          case 32:
            deparseFunctionWithArgtypes(&__s1, *(v17 + 24));
            goto LABEL_2447;
          case 24:
          case 26:
            v1014 = *(v17 + 24);
            if (v1014)
            {
              if (*(v1014 + 4) >= 2)
              {
                v1015 = 1;
                v1016 = 0x100000000;
                do
                {
                  v1017 = (*(v1014 + 16) + (v1016 >> 29));
                  v1019 = *v1017;
                  v1018 = (v1017 + 1);
                  v1020 = quote_identifier(*(v1019 + 8));
                  appendStringInfoString(&__s1, v1020);
                  v1021 = *(v1014 + 4);
                  if (v1018)
                  {
                    v1022 = v1018 >= *(v1014 + 16) + 8 * v1021;
                  }

                  else
                  {
                    v1022 = 1;
                  }

                  if (!v1022)
                  {
                    appendStringInfoChar(&__s1, 46);
                    LODWORD(v1021) = *(v1014 + 4);
                  }

                  ++v1015;
                  v1016 += 0x100000000;
                }

                while (v1021 > v1015);
              }

              appendStringInfoString(&__s1, " USING ");
              v1023 = **(v1014 + 16);
LABEL_2270:
              v26 = quote_identifier(*(v1023 + 8));
              goto LABEL_2263;
            }

LABEL_2468:
            result = appendStringInfoString(&__s1, " USING ");
            __break(1u);
            break;
          case 25:
            deparseOperatorWithArgtypes(&__s1, *(v17 + 24));
            goto LABEL_2447;
          case 41:
            v1264 = *(v17 + 24);
            appendStringInfoString(&__s1, "FOR ");
            deparseTypeName(&__s1, **(v1264 + 16));
            appendStringInfoString(&__s1, " LANGUAGE ");
            v1023 = *(*(v1264 + 16) + 8);
            goto LABEL_2270;
          default:
            goto LABEL_2447;
        }

        return result;
      case 0x148:
        appendStringInfoString(&__s1, "CREATE EVENT TRIGGER ");
        v208 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v208);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "ON ");
        v209 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v209);
        appendStringInfoChar(&__s1, 32);
        if (!*(v17 + 24))
        {
          goto LABEL_970;
        }

        appendStringInfoString(&__s1, "WHEN ");
        v210 = *(v17 + 24);
        if (!v210 || *(v210 + 4) < 1)
        {
          goto LABEL_969;
        }

        v211 = 0;
        while (1)
        {
          v212 = *(v210 + 16) + 8 * v211;
          v213 = *(*v212 + 24);
          v214 = quote_identifier(*(*v212 + 16));
          appendStringInfoString(&__s1, v214);
          appendStringInfoString(&__s1, " IN (");
          if (v213)
          {
            if (*(v213 + 4) >= 1)
            {
              break;
            }
          }

LABEL_336:
          appendStringInfoChar(&__s1, 41);
          if (v212 != -8 && v212 + 8 < (*(*(v18 + 24) + 16) + 8 * *(*(v18 + 24) + 4)))
          {
            appendStringInfoString(&__s1, " AND ");
          }

          if (++v211 >= *(v210 + 4))
          {
LABEL_969:
            appendStringInfoChar(&__s1, 32);
            v7 = v1357;
            v6 = v1358;
            v9 = v1356;
LABEL_970:
            appendStringInfoString(&__s1, "EXECUTE FUNCTION ");
            v583 = *(v18 + 32);
            if (v583 && *(v583 + 4) >= 1)
            {
              v584 = 8;
              v585 = 0;
              do
              {
                v586 = *(v583 + 16);
                v587 = quote_identifier(*(*(v586 + 8 * v585) + 8));
                appendStringInfoString(&__s1, v587);
                v588 = *(v583 + 4);
                if (v586 + v584)
                {
                  v589 = v586 + v584 >= (*(v583 + 16) + 8 * v588);
                }

                else
                {
                  v589 = 1;
                }

                if (!v589)
                {
                  appendStringInfoChar(&__s1, 46);
                  v588 = *(v583 + 4);
                }

                ++v585;
                v584 += 8;
              }

              while (v585 < v588);
            }

            v26 = "()";
            goto LABEL_2263;
          }
        }

        v215 = 0;
LABEL_325:
        v216 = *(v213 + 16) + 8 * v215;
        v217 = *(*v216 + 8);
        if (strchr(v217, 92))
        {
          appendStringInfoChar(&__s1, 69);
        }

        appendStringInfoChar(&__s1, 39);
        for (j = v217; ; ++j)
        {
          v219 = *j;
          v220 = *j;
          if (v219 == 39 || v219 == 92)
          {
            appendStringInfoChar(&__s1, v219);
          }

          else if (!*j)
          {
            appendStringInfoChar(&__s1, 39);
            v221 = *(v213 + 4);
            v222 = v216 + 8;
            if (v216 == -8)
            {
              v10 = v1355;
            }

            else
            {
              v10 = v1355;
              if (v222 < *(v213 + 16) + 8 * *(v213 + 4))
              {
                appendStringInfoString(&__s1, ", ");
                v221 = *(v213 + 4);
              }
            }

            if (++v215 >= v221)
            {
              goto LABEL_336;
            }

            goto LABEL_325;
          }

          appendStringInfoChar(&__s1, v220);
        }

      case 0x149:
        appendStringInfoString(&__s1, "ALTER EVENT TRIGGER ");
        v45 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v45);
        appendStringInfoChar(&__s1, 32);
        v46 = *(v17 + 16);
        if (v46 > 0x4E)
        {
          if (v46 == 79)
          {
            v26 = "ENABLE";
          }

          else
          {
            if (v46 != 82)
            {
              goto LABEL_2447;
            }

            v26 = "ENABLE REPLICA";
          }
        }

        else if (v46 == 65)
        {
          v26 = "ENABLE ALWAYS";
        }

        else
        {
          if (v46 != 68)
          {
            goto LABEL_2447;
          }

          v26 = "DISABLE";
        }

        goto LABEL_2263;
      case 0x14A:
        goto LABEL_1249;
      case 0x14C:
        appendStringInfoString(&__s1, "ALTER SYSTEM ");
        v274 = *(v17 + 8);
        goto LABEL_1627;
      case 0x14D:
        appendStringInfoString(&__s1, "CREATE POLICY ");
        v27 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v27);
        appendStringInfoString(&__s1, " ON ");
        deparseRangeVar(&__s1, *(v17 + 16), 0);
        appendStringInfoChar(&__s1, 32);
        if ((*(v17 + 32) & 1) == 0)
        {
          appendStringInfoString(&__s1, "AS RESTRICTIVE ");
        }

        v28 = *(v17 + 24);
        if (!strcmp(v28, "all"))
        {
          goto LABEL_1845;
        }

        if (!strcmp(v28, "select"))
        {
          v29 = "FOR SELECT ";
        }

        else if (!strcmp(v28, "insert"))
        {
          v29 = "FOR INSERT ";
        }

        else if (!strcmp(v28, "update"))
        {
          v29 = "FOR UPDATE ";
        }

        else
        {
          if (strcmp(v28, "delete"))
          {
            goto LABEL_1845;
          }

          v29 = "FOR DELETE ";
        }

        appendStringInfoString(&__s1, v29);
LABEL_1845:
        appendStringInfoString(&__s1, "TO ");
        v967 = *(v17 + 40);
        if (!v967 || *(v967 + 4) < 1)
        {
          goto LABEL_1864;
        }

        v968 = 8;
        v969 = 0;
        while (1)
        {
          v970 = *(v967 + 16);
          v971 = *(v970 + 8 * v969);
          v972 = *(v971 + 4);
          if (v972 > 1)
          {
            if (v972 == 2)
            {
              v973 = "SESSION_USER";
              goto LABEL_1858;
            }

            if (v972 == 3)
            {
              v973 = "public";
              goto LABEL_1858;
            }
          }

          else
          {
            if (!v972)
            {
              v973 = quote_identifier(*(v971 + 8));
              goto LABEL_1858;
            }

            if (v972 == 1)
            {
              v973 = "CURRENT_USER";
LABEL_1858:
              appendStringInfoString(&__s1, v973);
            }
          }

          v974 = *(v967 + 4);
          if (v970 + v968)
          {
            v975 = v970 + v968 >= (*(v967 + 16) + 8 * v974);
          }

          else
          {
            v975 = 1;
          }

          if (!v975)
          {
            appendStringInfoString(&__s1, ", ");
            v974 = *(v967 + 4);
          }

          ++v969;
          v968 += 8;
          if (v969 >= v974)
          {
LABEL_1864:
            appendStringInfoChar(&__s1, 32);
            if (*(v18 + 48))
            {
              appendStringInfoString(&__s1, "USING (");
              deparseExpr(&__s1, *(v18 + 48), v976, v977, v978, v979, v980, v981);
              appendStringInfoString(&__s1, ") ");
            }

            v9 = v1356;
            if (!*(v18 + 56))
            {
              goto LABEL_2447;
            }

            appendStringInfoString(&__s1, "WITH CHECK (");
            deparseExpr(&__s1, *(v18 + 56), v982, v983, v984, v985, v986, v987);
            v26 = ") ";
            goto LABEL_2263;
          }
        }

      case 0x14E:
        appendStringInfoString(&__s1, "ALTER POLICY ");
        v549 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v549);
        appendStringInfoString(&__s1, " ON ");
        deparseRangeVar(&__s1, *(v17 + 16), 0);
        appendStringInfoChar(&__s1, 32);
        v550 = *(v17 + 24);
        if (!v550 || *(v550 + 4) < 1)
        {
          goto LABEL_1132;
        }

        appendStringInfoString(&__s1, "TO ");
        v551 = *(v17 + 24);
        if (!v551 || *(v551 + 4) < 1)
        {
          goto LABEL_1131;
        }

        v552 = 8;
        v553 = 0;
        break;
      case 0x14F:
        appendStringInfoString(&__s1, "CREATE ");
        if (*(v17 + 4) == 1)
        {
          appendStringInfoString(&__s1, "OR REPLACE ");
        }

        appendStringInfoString(&__s1, "TRANSFORM FOR ");
        deparseTypeName(&__s1, *(v17 + 8));
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "LANGUAGE ");
        v224 = quote_identifier(*(v17 + 16));
        appendStringInfoString(&__s1, v224);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoChar(&__s1, 40);
        if (*(v17 + 24))
        {
          appendStringInfoString(&__s1, "FROM SQL WITH FUNCTION ");
          deparseFunctionWithArgtypes(&__s1, *(v17 + 24));
          if (*(v17 + 24))
          {
            if (*(v17 + 32))
            {
              appendStringInfoString(&__s1, ", ");
            }
          }
        }

        if (*(v17 + 32))
        {
          appendStringInfoString(&__s1, "TO SQL WITH FUNCTION ");
          deparseFunctionWithArgtypes(&__s1, *(v17 + 32));
        }

LABEL_349:
        appendStringInfoChar(&__s1, 41);
        goto LABEL_2447;
      case 0x150:
        appendStringInfoString(&__s1, "CREATE ACCESS METHOD ");
        v577 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v577);
        appendStringInfoChar(&__s1, 32);
        appendStringInfoString(&__s1, "TYPE ");
        v578 = *(v17 + 24);
        if (v578 == 105)
        {
          v579 = "INDEX ";
        }

        else
        {
          if (v578 != 116)
          {
            goto LABEL_1176;
          }

          v579 = "TABLE ";
        }

        appendStringInfoString(&__s1, v579);
LABEL_1176:
        appendStringInfoString(&__s1, "HANDLER ");
        v685 = *(v17 + 16);
        if (v685 && *(v685 + 4) >= 1)
        {
          v686 = 8;
          v687 = 0;
          do
          {
            v688 = *(v685 + 16);
            v689 = quote_identifier(*(*(v688 + 8 * v687) + 8));
            appendStringInfoString(&__s1, v689);
            v690 = *(v685 + 4);
            if (v688 + v686)
            {
              v691 = v688 + v686 >= (*(v685 + 16) + 8 * v690);
            }

            else
            {
              v691 = 1;
            }

            if (!v691)
            {
              appendStringInfoChar(&__s1, 46);
              v690 = *(v685 + 4);
            }

            ++v687;
            v686 += 8;
          }

          while (v687 < v690);
        }

        goto LABEL_2447;
      case 0x151:
        appendStringInfoString(&__s1, "CREATE PUBLICATION ");
        v491 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v491);
        appendStringInfoChar(&__s1, 32);
        v492 = *(v17 + 24);
        if (v492 && *(v492 + 4) >= 1)
        {
          appendStringInfoString(&__s1, "FOR TABLE ");
          v493 = *(v17 + 24);
          if (v493 && *(v493 + 4) >= 1)
          {
            v494 = 8;
            v495 = 0;
            do
            {
              v496 = *(v493 + 16);
              deparseRangeVar(&__s1, *(v496 + 8 * v495), 0);
              v497 = *(v493 + 4);
              if (v496 + v494)
              {
                v498 = v496 + v494 >= (*(v493 + 16) + 8 * v497);
              }

              else
              {
                v498 = 1;
              }

              if (!v498)
              {
                appendStringInfoString(&__s1, ", ");
                v497 = *(v493 + 4);
              }

              ++v495;
              v494 += 8;
            }

            while (v495 < v497);
          }

          appendStringInfoChar(&__s1, 32);
          v9 = v1356;
        }

        else if (*(v17 + 32) == 1)
        {
          appendStringInfoString(&__s1, "FOR ALL TABLES ");
        }

        v653 = *(v18 + 16);
        if (!v653 || *(v653 + 4) < 1)
        {
          goto LABEL_2444;
        }

        appendStringInfoString(&__s1, "WITH ");
        v654 = v653;
        goto LABEL_2392;
      case 0x152:
        appendStringInfoString(&__s1, "ALTER PUBLICATION ");
        v478 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v478);
        appendStringInfoChar(&__s1, 32);
        v479 = *(v17 + 24);
        if (v479 && *(v479 + 4) >= 1)
        {
          v480 = *(v17 + 36) - 1;
          if (v480 > 2 || (appendStringInfoString(&__s1, (&off_2797B67F8)[v480]), (v479 = *(v17 + 24)) != 0))
          {
            v481 = v479;
            if (*(v479 + 4) >= 1)
            {
              v482 = 8;
              v483 = 0;
              do
              {
                v484 = *(v481 + 16);
                deparseRangeVar(&__s1, *(v484 + 8 * v483), 0);
                v485 = *(v481 + 4);
                if (v484 + v482)
                {
                  v486 = v484 + v482 >= (*(v481 + 16) + 8 * v485);
                }

                else
                {
                  v486 = 1;
                }

                if (!v486)
                {
                  appendStringInfoString(&__s1, ", ");
                  v485 = *(v481 + 4);
                }

                ++v483;
                v482 += 8;
              }

              while (v483 < v485);
            }
          }
        }

        else
        {
          v590 = *(v17 + 16);
          if (v590 && *(v590 + 4) >= 1)
          {
            appendStringInfoString(&__s1, "SET ");
            deparseDefinition(&__s1, *(v17 + 16));
          }
        }

        goto LABEL_2447;
      case 0x153:
        appendStringInfoString(&__s1, "CREATE SUBSCRIPTION ");
        v73 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v73);
        appendStringInfoString(&__s1, " CONNECTION ");
        v74 = *(v17 + 16);
        if (v74)
        {
          deparseStringLiteral(&__s1, v74);
        }

        else
        {
          appendStringInfoString(&__s1, "''");
        }

        appendStringInfoString(&__s1, " PUBLICATION ");
        v668 = *(v17 + 24);
        if (v668 && *(v668 + 4) >= 1)
        {
          v669 = 8;
          v670 = 0;
          do
          {
            v671 = *(v668 + 16);
            v672 = quote_identifier(*(*(v671 + 8 * v670) + 8));
            appendStringInfoString(&__s1, v672);
            if (v671 + v669)
            {
              v673 = v671 + v669 >= (*(*(v18 + 24) + 16) + 8 * *(*(v18 + 24) + 4));
            }

            else
            {
              v673 = 1;
            }

            if (!v673)
            {
              appendStringInfoString(&__s1, ", ");
            }

            ++v670;
            v669 += 8;
          }

          while (v670 < *(v668 + 4));
        }

        appendStringInfoChar(&__s1, 32);
        v674 = *(v18 + 32);
        if (v674 && *(v674 + 4) >= 1)
        {
          appendStringInfoString(&__s1, "WITH ");
          deparseDefinition(&__s1, v674);
        }

        goto LABEL_1802;
      case 0x154:
        appendStringInfoString(&__s1, "ALTER SUBSCRIPTION ");
        v474 = quote_identifier(*(v17 + 8));
        appendStringInfoString(&__s1, v474);
        appendStringInfoChar(&__s1, 32);
        v475 = *(v17 + 4);
        if (v475 <= 1)
        {
          if (!v475)
          {
            appendStringInfoString(&__s1, "SET ");
            deparseDefinition(&__s1, *(v17 + 32));
            goto LABEL_2444;
          }

          if (v475 != 1)
          {
            goto LABEL_2444;
          }

          appendStringInfoString(&__s1, "CONNECTION ");
          deparseStringLiteral(&__s1, *(v17 + 16));
          goto LABEL_1617;
        }

        switch(v475)
        {
          case 2:
            appendStringInfoString(&__s1, "SET PUBLICATION ");
            v774 = *(v17 + 24);
            if (v774 && *(v774 + 4) >= 1)
            {
              v775 = 8;
              v776 = 0;
              do
              {
                v777 = *(v774 + 16);
                v778 = quote_identifier(*(*(v777 + 8 * v776) + 8));
                appendStringInfoString(&__s1, v778);
                if (v777 + v775)
                {
                  v779 = v777 + v775 >= (*(*(v18 + 24) + 16) + 8 * *(*(v18 + 24) + 4));
                }

                else
                {
                  v779 = 1;
                }

                if (!v779)
                {
                  appendStringInfoString(&__s1, ", ");
                }

                ++v776;
                v775 += 8;
              }

              while (v776 < *(v774 + 4));
            }

            appendStringInfoChar(&__s1, 32);
            v780 = *(v18 + 32);
            v9 = v1356;
            if (!v780)
            {
              goto LABEL_2444;
            }

            break;
          case 3:
            appendStringInfoString(&__s1, "REFRESH PUBLICATION ");
            v780 = *(v17 + 32);
            if (!v780)
            {
              goto LABEL_2444;
            }

            break;
          case 4:
            v476 = *(*(**(*(v17 + 32) + 16) + 24) + 8);
            if (v476)
            {
              if (v476 != 1)
              {
                goto LABEL_2444;
              }

              v477 = " ENABLE ";
            }

            else
            {
              v477 = " DISABLE ";
            }

            appendStringInfoString(&__s1, v477);
            goto LABEL_2444;
          default:
            goto LABEL_2444;
        }

        if (*(v780 + 4) >= 1)
        {
          appendStringInfoString(&__s1, "WITH ");
          deparseDefinition(&__s1, v780);
        }

        goto LABEL_2444;
      case 0x155:
        appendStringInfoString(&__s1, "DROP SUBSCRIPTION ");
        if (*(v17 + 16) == 1)
        {
LABEL_179:
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

LABEL_180:
        v26 = *(v17 + 8);
        goto LABEL_2263;
      case 0x156:
        appendStringInfoString(&__s1, "CREATE STATISTICS ");
        if (*(v17 + 48) == 1)
        {
          appendStringInfoString(&__s1, "IF NOT EXISTS ");
        }

        v30 = *(v17 + 8);
        if (v30 && *(v30 + 4) >= 1)
        {
          v31 = 8;
          v32 = 0;
          do
          {
            v33 = *(v30 + 16);
            v34 = quote_identifier(*(*(v33 + 8 * v32) + 8));
            appendStringInfoString(&__s1, v34);
            v35 = *(v30 + 4);
            if (v33 + v31)
            {
              v36 = v33 + v31 >= (*(v30 + 16) + 8 * v35);
            }

            else
            {
              v36 = 1;
            }

            if (!v36)
            {
              appendStringInfoChar(&__s1, 46);
              v35 = *(v30 + 4);
            }

            ++v32;
            v31 += 8;
          }

          while (v32 < v35);
        }

        appendStringInfoChar(&__s1, 32);
        v37 = *(v18 + 16);
        if (v37 && *(v37 + 4) >= 1)
        {
          appendStringInfoChar(&__s1, 40);
          v38 = *(v18 + 16);
          if (v38 && *(v38 + 4) >= 1)
          {
            v39 = 8;
            v40 = 0;
            do
            {
              v41 = *(v38 + 16);
              v42 = quote_identifier(*(*(v41 + 8 * v40) + 8));
              appendStringInfoString(&__s1, v42);
              v43 = *(v38 + 4);
              if (v41 + v39)
              {
                v44 = v41 + v39 >= (*(v38 + 16) + 8 * v43);
              }

              else
              {
                v44 = 1;
              }

              if (!v44)
              {
                appendStringInfoString(&__s1, ", ");
                v43 = *(v38 + 4);
              }

              ++v40;
              v39 += 8;
            }

            while (v40 < v43);
          }

          appendStringInfoString(&__s1, ") ");
        }

        appendStringInfoString(&__s1, "ON ");
        v614 = *(v18 + 24);
        if (v614 && *(v614 + 4) >= 1)
        {
          v615 = 8;
          v616 = 0;
          do
          {
            v617 = *(v614 + 16);
            deparseExpr(&__s1, *(v617 + 8 * v616), v608, v609, v610, v611, v612, v613);
            v618 = *(v614 + 4);
            if (v617 + v615)
            {
              v619 = v617 + v615 >= (*(v614 + 16) + 8 * v618);
            }

            else
            {
              v619 = 1;
            }

            if (!v619)
            {
              appendStringInfoString(&__s1, ", ");
              v618 = *(v614 + 4);
            }

            ++v616;
            v615 += 8;
          }

          while (v616 < v618);
        }

        appendStringInfoString(&__s1, " FROM ");
        v626 = *(v18 + 32);
        v9 = v1356;
        if (v626 && *(v626 + 4) >= 1)
        {
          v627 = 8;
          v628 = 0;
          do
          {
            v629 = *(v626 + 16);
            deparseTableRef(&__s1, *(v629 + 8 * v628), v620, v621, v622, v623, v624, v625);
            v630 = *(v626 + 4);
            if (v629 + v627)
            {
              v631 = v629 + v627 >= (*(v626 + 16) + 8 * v630);
            }

            else
            {
              v631 = 1;
            }

            if (!v631)
            {
              appendStringInfoString(&__s1, ", ");
              v630 = *(v626 + 4);
            }

            ++v628;
            v627 += 8;
          }

          while (v628 < v630);
        }

        goto LABEL_2447;
      case 0x157:
        appendStringInfoString(&__s1, "ALTER COLLATION ");
        v19 = *(v17 + 8);
        if (v19 && *(v19 + 4) >= 1)
        {
          v20 = 8;
          v21 = 0;
          do
          {
            v22 = *(v19 + 16);
            v23 = quote_identifier(*(*(v22 + 8 * v21) + 8));
            appendStringInfoString(&__s1, v23);
            v24 = *(v19 + 4);
            if (v22 + v20)
            {
              v25 = v22 + v20 >= (*(v19 + 16) + 8 * v24);
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              appendStringInfoChar(&__s1, 46);
              v24 = *(v19 + 4);
            }

            ++v21;
            v20 += 8;
          }

          while (v21 < v24);
        }

        v26 = " REFRESH VERSION";
        goto LABEL_2263;
      case 0x158:
        appendStringInfoString(&__s1, "CALL ");
        deparseFuncCall(&__s1, *(v17 + 8));
        goto LABEL_2447;
      case 0x159:
        appendStringInfoString(&__s1, "ALTER STATISTICS ");
        if (*(v17 + 20) == 1)
        {
          appendStringInfoString(&__s1, "IF EXISTS ");
        }

        v84 = *(v17 + 8);
        if (v84 && *(v84 + 4) >= 1)
        {
          v85 = 8;
          v86 = 0;
          do
          {
            v87 = *(v84 + 16);
            v88 = quote_identifier(*(*(v87 + 8 * v86) + 8));
            appendStringInfoString(&__s1, v88);
            v89 = *(v84 + 4);
            if (v87 + v85)
            {
              v90 = v87 + v85 >= (*(v84 + 16) + 8 * v89);
            }

            else
            {
              v90 = 1;
            }

            if (!v90)
            {
              appendStringInfoChar(&__s1, 46);
              v89 = *(v84 + 4);
            }

            ++v86;
            v85 += 8;
          }

          while (v86 < v89);
        }

        appendStringInfoChar(&__s1, 32);
        appendStringInfo(&__s1, "SET STATISTICS %d", v91, v92, v93, v94, v95, v96, *(v18 + 16));
        v9 = v1356;
        goto LABEL_2447;
      default:
        pg_query_deparse_protobuf_cold_1();
    }

    while (1)
    {
      v554 = *(v551 + 16);
      v555 = *(v554 + 8 * v553);
      v556 = *(v555 + 4);
      if (v556 > 1)
      {
        if (v556 == 2)
        {
          v557 = "SESSION_USER";
          goto LABEL_928;
        }

        if (v556 == 3)
        {
          v557 = "public";
          goto LABEL_928;
        }
      }

      else
      {
        if (!v556)
        {
          v557 = quote_identifier(*(v555 + 8));
          goto LABEL_928;
        }

        if (v556 == 1)
        {
          v557 = "CURRENT_USER";
LABEL_928:
          appendStringInfoString(&__s1, v557);
        }
      }

      v558 = *(v551 + 4);
      if (v554 + v552)
      {
        v559 = v554 + v552 >= (*(v551 + 16) + 8 * v558);
      }

      else
      {
        v559 = 1;
      }

      if (!v559)
      {
        appendStringInfoString(&__s1, ", ");
        v558 = *(v551 + 4);
      }

      ++v553;
      v552 += 8;
      if (v553 >= v558)
      {
LABEL_1131:
        appendStringInfoChar(&__s1, 32);
        v9 = v1356;
LABEL_1132:
        if (*(v18 + 32))
        {
          appendStringInfoString(&__s1, "USING (");
          deparseExpr(&__s1, *(v18 + 32), v655, v656, v657, v658, v659, v660);
          appendStringInfoString(&__s1, ") ");
        }

        if (!*(v18 + 40))
        {
          goto LABEL_2447;
        }

        appendStringInfoString(&__s1, "WITH CHECK (");
        deparseExpr(&__s1, *(v18 + 40), v661, v662, v663, v664, v665, v666);
        v26 = ") ";
        goto LABEL_2263;
      }
    }
  }

  *v7 = v6;
  *v10 = v9;
  *CurrentMemoryContext() = enter_memory_context;
  v11 = CopyErrorData();
  v12 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
  *v12 = strdup(*(v11 + 64));
  v12[2] = strdup(*(v11 + 16));
  v12[1] = strdup(*(v11 + 32));
  v12[4] = 0;
  *(v12 + 6) = *(v11 + 24);
  *(v12 + 7) = *(v11 + 160);
  FlushErrorState();
  v13 = 0;
LABEL_2465:
  *v7 = v6;
  *v10 = v9;
  pg_query_exit_memory_context();
  v1347 = *MEMORY[0x277D85DE8];
  return v13;
}