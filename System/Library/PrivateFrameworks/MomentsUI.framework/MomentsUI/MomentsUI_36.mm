uint64_t static CloudDevice.bestNominee(in:favorRecent:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = type metadata accessor for CloudDevice();
  v72 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v71 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v65 = &v61 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v61 - v13);
  MEMORY[0x28223BE20](v12);
  v76 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v61 - v19;
  v20 = type metadata accessor for Date();
  v69 = *(v20 - 8);
  v70 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v23 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v24)
  {
    v23 = 2419200.0;
  }

  v68 = v22;
  v78 = v22;
  v79 = v23;
  v25 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in static CloudDevice.bestNominee(in:favorRecent:), v77, a1);
  v26 = v25;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  if (v30)
  {
    v63 = v5;
    v64 = a3;
    v31 = 0;
    v32 = __clz(__rbit64(v30));
    v33 = (v30 - 1) & v30;
    v34 = (v28 + 63) >> 6;
LABEL_11:
    v37 = *(v25 + 56);
    v38 = (*(v25 + 48) + 16 * v32);
    v39 = *v38;
    v40 = v38[1];
    v73 = *(v72 + 72);
    outlined init with copy of CloudDevice(v37 + v73 * v32, v14 + *(v75 + 48));
    *v14 = v39;
    v14[1] = v40;
    outlined init with take of URL?(v14, v76, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

    v41 = v65;
    if (v33)
    {
      goto LABEL_14;
    }

LABEL_15:
    while (1)
    {
      v42 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v42 >= v34)
      {

        v48 = v66;
        outlined init with take of URL?(v76, v66, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
        v49 = 0;
        v5 = v63;
        a3 = v64;
        goto LABEL_22;
      }

      v33 = *(v27 + 8 * v42);
      ++v31;
      if (v33)
      {
        while (1)
        {
          v43 = __clz(__rbit64(v33)) | (v42 << 6);
          v44 = (*(v26 + 48) + 16 * v43);
          v45 = *v44;
          v46 = v44[1];
          outlined init with copy of CloudDevice(*(v26 + 56) + v43 * v73, v9 + *(v75 + 48));
          *v9 = v45;
          v9[1] = v46;
          outlined init with take of URL?(v9, v41, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

          v33 &= v33 - 1;
          if (closure #2 in static CloudDevice.bestNominee(in:favorRecent:)(v76, v41, v74 & 1))
          {
            v47 = v76;
            outlined destroy of UTType?(v76, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
            outlined init with take of URL?(v41, v47, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
            v31 = v42;
            if (!v33)
            {
              goto LABEL_15;
            }
          }

          else
          {
            outlined destroy of UTType?(v41, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
            v31 = v42;
            if (!v33)
            {
              goto LABEL_15;
            }
          }

LABEL_14:
          v42 = v31;
        }
      }
    }

    __break(1u);

    outlined destroy of UTType?(v41, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    result = outlined destroy of UTType?(v76, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    __break(1u);
  }

  else
  {
    v35 = 0;
    v34 = (v28 + 63) >> 6;
    while (v34 - 1 != v30)
    {
      v31 = v30 + 1;
      v36 = *(v25 + 72 + 8 * v30);
      v35 -= 64;
      ++v30;
      if (v36)
      {
        v63 = v5;
        v64 = a3;
        v33 = (v36 - 1) & v36;
        v32 = __clz(__rbit64(v36)) - v35;
        goto LABEL_11;
      }
    }

    v49 = 1;
    v48 = v66;
LABEL_22:
    v50 = v71;
    v51 = v75;
    (*(v71 + 56))(v48, v49, 1, v75);

    v52 = v48;
    v53 = v67;
    outlined init with take of URL?(v52, v67, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
    if ((*(v50 + 48))(v53, 1, v51) == 1)
    {
      outlined destroy of UTType?(v53, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
      v54 = 1;
    }

    else
    {

      v55 = v53 + *(v51 + 48);
      v56 = v62;
      outlined init with take of CloudDevice(v55, v62);
      outlined init with take of CloudDevice(v56, a3);
      v54 = 0;
    }

    v58 = v69;
    v57 = v70;
    v59 = v68;
    (*(v72 + 56))(a3, v54, 1, v5);
    return (*(v58 + 8))(v59, v57);
  }

  return result;
}

uint64_t CloudDevice.onboarded.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = type metadata accessor for CloudDevice();
  outlined init with copy of DateInterval?(v0 + *(v11 + 80), v3, &_s10Foundation4DateVSgMd);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
    v12 = 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    static Date.distantPast.getter();
    v12 = static Date.> infix(_:_:)();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
  }

  return v12 & 1;
}

uint64_t static CloudDevice.nominationDateForPhone(_:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v87[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v87[-v13];
  v15 = type metadata accessor for CloudDevice();
  v110 = *(v15 - 1);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v109 = &v87[-v19];
  v111 = type metadata accessor for Date();
  v20 = MEMORY[0x28223BE20](v111);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v87[-v24];
  MEMORY[0x28223BE20](v23);
  v31 = v15[10];
  v107 = a1;
  if ((*(a1 + v31 + 8) & 1) != 0 || *(a1 + v31))
  {
    v64 = *(v26 + 56);
    v65 = v111;

    return v64(a3, 1, 1, v65);
  }

  v100 = v30;
  v90 = v29;
  v96 = v28;
  v103 = v14;
  v93 = v12;
  v94 = v8;
  v91 = v6;
  v92 = v5;
  v97 = a3;
  v102 = &v87[-v27];
  v106 = v26;
  static Date.now.getter();
  v32 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v33)
  {
    v34 = 2419200.0;
  }

  else
  {
    v34 = v32;
  }

  v101 = v25;
  static Date.distantPast.getter();
  v35 = v108;
  v36 = (v108 + 64);
  v37 = 1 << *(v108 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v108 + 64);
  v40 = (v37 + 63) >> 6;
  v104 = (v106 + 48);
  v99 = (v106 + 32);
  v41 = (v106 + 8);
  v89 = (v106 + 40);

  v42 = 0;
  v98 = v41;
  v105 = v15;
  while (v39)
  {
LABEL_15:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = v109;
    outlined init with copy of CloudDevice(*(v35 + 56) + *(v110 + 72) * (v44 | (v42 << 6)), v109);
    outlined init with take of CloudDevice(v45, v18);
    v46 = &v18[v15[17]];
    v47 = v46[1];
    if (v47 && (*v46 == *v107 ? (v48 = v47 == v107[1]) : (v48 = 0), v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v49 = v41;
      v50 = &v18[v15[7]];
      v51 = v103;
      outlined init with copy of DateInterval?(v50, v103, &_s10Foundation4DateVSgMd);
      v52 = *v104;
      v53 = v111;
      if ((*v104)(v51, 1, v111) == 1)
      {
        outlined destroy of CloudDevice(v18);
        outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd);
        v15 = v105;
        v41 = v49;
        v35 = v108;
      }

      else
      {
        v95 = v18;
        v54 = *v99;
        v55 = v100;
        (*v99)(v100, v51, v53);
        Date.timeIntervalSince(_:)();
        if (v56 >= v34)
        {
          v59 = v98;
          (*v98)(v55, v53);
          v18 = v95;
          outlined destroy of CloudDevice(v95);
          v41 = v59;
          goto LABEL_27;
        }

        v18 = v95;
        v57 = v93;
        outlined init with copy of DateInterval?(&v95[v105[18]], v93, &_s10Foundation4DateVSgMd);
        if (v52(v57, 1, v53) == 1)
        {
          v58 = v53;
          v41 = v98;
          (*v98)(v100, v58);
          outlined destroy of CloudDevice(v18);
          outlined destroy of UTType?(v57, &_s10Foundation4DateVSgMd);
          v35 = v108;
          v15 = v105;
        }

        else
        {
          v60 = v90;
          v54(v90, v57, v53);
          v61 = v101;
          v62 = v53;
          v88 = static Date.> infix(_:_:)();
          v41 = v98;
          v63 = *v98;
          (*v98)(v100, v62);
          outlined destroy of CloudDevice(v18);
          if (v88)
          {
            (*v89)(v61, v60, v62);
          }

          else
          {
            v63(v60, v62);
          }

LABEL_27:
          v35 = v108;
          v15 = v105;
        }
      }
    }

    else
    {
      outlined destroy of CloudDevice(v18);
    }
  }

  while (2)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v43 < v40)
    {
      v39 = *(v36 + v43);
      ++v42;
      if (v39)
      {
        v42 = v43;
        goto LABEL_15;
      }

      continue;
    }

    break;
  }

  v67 = v96;
  static Date.distantPast.getter();
  v42 = v101;
  v68 = static Date.> infix(_:_:)();
  v36 = *v41;
  v69 = v111;
  (*v41)(v67, v111);
  if ((v68 & 1) == 0)
  {
    v36(v102, v69);
    (*(v106 + 56))(v97, 1, 1, v69);
    v84 = v42;
    v85 = v69;
    return (v36)(v84, v85);
  }

  if (one-time initialization token for Log != -1)
  {
LABEL_43:
    swift_once();
  }

  v70 = v92;
  v71 = __swift_project_value_buffer(v92, static CloudDevice.Log);
  swift_beginAccess();
  v72 = v91;
  v73 = v94;
  (*(v91 + 16))(v94, v71, v70);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v112[0] = v77;
    *v76 = 136446466;
    *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216585E00, v112);
    *(v76 + 12) = 2080;
    swift_beginAccess();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v78 = v111;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v112);

    *(v76 + 14) = v81;
    _os_log_impl(&dword_21607C000, v74, v75, "CloudDevice.%{public}s mostRecentNomination: %s", v76, 0x16u);
    swift_arrayDestroy();
    v82 = v77;
    v42 = v101;
    MEMORY[0x21CE94770](v82, -1, -1);
    MEMORY[0x21CE94770](v76, -1, -1);

    (*(v72 + 8))(v94, v70);
    v83 = v102;
  }

  else
  {

    (*(v72 + 8))(v73, v70);
    v83 = v102;
    v78 = v111;
  }

  v36(v83, v78);
  swift_beginAccess();
  v86 = v97;
  (*(v106 + 16))(v97, v42, v78);
  (*(v106 + 56))(v86, 0, 1, v78);
  v84 = v42;
  v85 = v78;
  return (v36)(v84, v85);
}

uint64_t CloudDevice.systemIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudDevice();
  v4 = v1 + *(result + 40);
  if ((*(v4 + 8) & 1) != 0 || (v5 = *v4, v5 > 6))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0x6050004030201uLL >> (8 * v5);
  }

  *a1 = v6;
  return result;
}

Swift::String __swiftcall CloudDevice.description()()
{
  v1 = v0;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2 = MEMORY[0x28223BE20](v137);
  v136 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v114 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v139 = &v114 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v114 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v150 = &v114 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v125 = &v114 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v122 = &v114 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v114 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v138 = &v114 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v121 = &v114 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v120 = &v114 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v114 - v26;
  v148 = type metadata accessor for Date();
  v28 = *(v148 - 8);
  v29 = MEMORY[0x28223BE20](v148);
  v146 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v114 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v114 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v115 = &v114 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v144 = &v114 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v151 = &v114 - v40;
  MEMORY[0x28223BE20](v39);
  v143 = &v114 - v41;
  v42 = *v1;
  v134 = v1[1];
  v135 = v42;
  if (v1[3])
  {
    v43 = v1[2];
    v132 = v1[3];
    v133 = v43;
  }

  else
  {
    swift_beginAccess();
    v132 = qword_27CA92B00;
    v133 = static CloudDevice.nilStr;
  }

  v140 = v11;
  v141 = v6;
  if (v1[5])
  {
    v44 = v1[4];
    v130 = v1[5];
    v131 = v44;
  }

  else
  {
    swift_beginAccess();
    v130 = qword_27CA92B00;
    v131 = static CloudDevice.nilStr;
  }

  v45 = type metadata accessor for CloudDevice();
  outlined init with copy of DateInterval?(v1 + v45[7], v27, &_s10Foundation4DateVSgMd);
  v46 = *(v28 + 48);
  v47 = v148;
  v48 = v46(v27, 1, v148);
  v142 = v28;
  v152 = v46;
  if (v48 == 1)
  {

    static Date.distantPast.getter();
    if (v46(v27, 1, v47) != 1)
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v28 + 32))(v143, v27, v47);
  }

  v49 = (v1 + v45[8]);
  v50 = v49[1];
  v119 = v50;
  if (v50)
  {
    v51 = *v49;
    v128 = v50;
    v129 = v51;
  }

  else
  {
    swift_beginAccess();
    v128 = qword_27CA92B00;
    v129 = static CloudDevice.nilStr;
  }

  v52 = (v1 + v45[9]);
  v53 = v52[1];
  if (v53)
  {
    v54 = *v52;
    v123 = v53;
    v124 = v54;
  }

  else
  {
    swift_beginAccess();
    v123 = qword_27CA92B00;
    v124 = static CloudDevice.nilStr;
  }

  v55 = v45[11];
  v56 = v1 + v45[10];
  v118 = *v56;
  v117 = v56[8];
  if (*(v1 + v55 + 8))
  {
    v57 = *(v1 + v55);
    v126 = *(v1 + v55 + 8);
    v127 = v57;
  }

  else
  {
    swift_beginAccess();
    v126 = qword_27CA92B00;
    v127 = static CloudDevice.nilStr;
  }

  v58 = *(v1 + v45[13]);
  v59 = v120;
  outlined init with copy of DateInterval?(v1 + v45[14], v120, &_s10Foundation4DateVSgMd);
  v60 = v148;
  v61 = v152;
  v62 = v152(v59, 1, v148);
  v116 = v58;
  if (v62 == 1)
  {

    static Date.distantPast.getter();
    v63 = v60;
    if (v61(v59, 1, v60) != 1)
    {
      outlined destroy of UTType?(v59, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v142 + 32))(v151, v59, v60);

    v63 = v60;
  }

  v64 = v121;
  outlined init with copy of DateInterval?(v1 + v45[16], v121, &_s10Foundation4DateVSgMd);
  v65 = v61(v64, 1, v63);
  v66 = v138;
  if (v65 == 1)
  {
    static Date.distantPast.getter();
    v67 = v61(v64, 1, v63);
    v68 = v142;
    if (v67 != 1)
    {
      outlined destroy of UTType?(v64, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v68 = v142;
    (*(v142 + 32))(v144, v64, v63);
  }

  if (*(v1 + v45[15]) == 2)
  {
    v69 = v115;
    static Date.distantPast.getter();
    LODWORD(v119) = static Date.> infix(_:_:)();
    (*(v68 + 8))(v69, v63);
  }

  else
  {
    LODWORD(v119) = *(v1 + v45[15]);
  }

  v70 = (v1 + v45[17]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    v120 = v71;
    v121 = v72;
  }

  else
  {
    swift_beginAccess();
    v120 = qword_27CA92B00;
    v121 = static CloudDevice.nilStr;
    v66 = v138;
  }

  outlined init with copy of DateInterval?(v1 + v45[18], v66, &_s10Foundation4DateVSgMd);
  v73 = v152;
  if (v152(v66, 1, v63) == 1)
  {

    static Date.distantPast.getter();
    v74 = v73(v66, 1, v63);
    v75 = v141;
    if (v74 != 1)
    {
      outlined destroy of UTType?(v66, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v68 + 32))(v147, v66, v63);

    v75 = v141;
  }

  outlined init with copy of DateInterval?(v1 + v45[19], v149, &_s10Foundation4DateVSgMd);
  v76 = v122;
  outlined init with copy of DateInterval?(v1 + v45[20], v122, &_s10Foundation4DateVSgMd);
  v77 = v152;
  if (v152(v76, 1, v63) == 1)
  {
    static Date.distantPast.getter();
    v78 = v77(v76, 1, v63);
    v79 = v125;
    if (v78 != 1)
    {
      outlined destroy of UTType?(v76, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v68 + 32))(v145, v76, v63);
    v79 = v125;
  }

  outlined init with copy of DateInterval?(v1 + v45[21], v79, &_s10Foundation4DateVSgMd);
  v80 = v152;
  if (v152(v79, 1, v63) == 1)
  {
    static Date.distantPast.getter();
    if (v80(v79, 1, v63) != 1)
    {
      outlined destroy of UTType?(v79, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v68 + 32))(v146, v79, v63);
  }

  outlined init with copy of DateInterval?(v1 + v45[22], v150, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v1 + v45[23], v140, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v1 + v45[24], v139, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v1 + v45[25], v75, &_s10Foundation4DateVSgMd);
  CloudDevice.snapshotEventAggregation.getter(&v162);
  if (v162 == 1)
  {
    swift_beginAccess();
    v138 = static CloudDevice.nilStr;
    v152 = qword_27CA92B00;
  }

  else
  {
    v153 = v162;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v154 = v163;
    v138 = CloudDevicesDB.SnapshotEventAggregation.description.getter();
    v152 = v81;
    outlined destroy of UTType?(&v162, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  }

  v82 = (v1 + v45[27]);
  v83 = v82[1];
  if (v83)
  {
    v125 = *v82;
    v122 = v83;
  }

  else
  {
    swift_beginAccess();
    v125 = static CloudDevice.nilStr;
    v122 = qword_27CA92B00;
  }

  if (v116)
  {
    v84 = v116;
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
  }

  if (v117)
  {
    v85 = -1;
  }

  else
  {
    v85 = v118;
  }

  v160 = 0;
  v161 = 0xE000000000000000;

  _StringGuts.grow(_:)(535);
  MEMORY[0x21CE92100](540697705, 0xE400000000000000);
  MEMORY[0x21CE92100](v135, v134);
  MEMORY[0x21CE92100](0x496563697665640ALL, 0xEB00000000203A44);
  MEMORY[0x21CE92100](v133, v132);

  MEMORY[0x21CE92100](0x49656C646E75620ALL, 0xEB00000000203A44);
  MEMORY[0x21CE92100](v131, v130);

  MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216585E20);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v86 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v86);

  MEMORY[0x21CE92100](0x203A656D616E0ALL, 0xE700000000000000);
  MEMORY[0x21CE92100](v129, v128);

  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216585E40);
  MEMORY[0x21CE92100](v124, v123);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585E60);
  v159 = v85;
  v87 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v87);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585E80);
  MEMORY[0x21CE92100](v127, v126);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585EA0);
  v88 = MEMORY[0x21CE922B0](v84, &type metadata for CloudDevice.Capability);
  v90 = v89;

  MEMORY[0x21CE92100](v88, v90);

  MEMORY[0x21CE92100](0xD000000000000014, 0x8000000216585EC0);
  v91 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v91);

  MEMORY[0x21CE92100](0x6D6972507361770ALL, 0xED0000203A797261);
  if (v119)
  {
    v92 = 1702195828;
  }

  else
  {
    v92 = 0x65736C6166;
  }

  if (v119)
  {
    v93 = 0xE400000000000000;
  }

  else
  {
    v93 = 0xE500000000000000;
  }

  MEMORY[0x21CE92100](v92, v93);

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216585EE0);
  v94 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v94);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585F00);
  MEMORY[0x21CE92100](v121, v120);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585F20);
  v95 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v95);

  MEMORY[0x21CE92100](0xD000000000000013, 0x8000000216585F40);
  v96 = v136;
  outlined init with copy of DateInterval?(v149, v136, &_s10Foundation4DateVSgMd);
  v97 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v97);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585F60);
  v98 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v98);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585F80);
  MEMORY[0x21CE92100](v125, v122);

  MEMORY[0x21CE92100](0xD000000000000026, 0x8000000216585FA0);
  v99 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v99);

  MEMORY[0x21CE92100](0xD000000000000024, 0x8000000216585FD0);
  outlined init with copy of DateInterval?(v150, v96, &_s10Foundation4DateVSgMd);
  v100 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v100);

  MEMORY[0x21CE92100](0xD000000000000041, 0x8000000216586000);
  v101 = v140;
  outlined init with copy of DateInterval?(v140, v96, &_s10Foundation4DateVSgMd);
  v102 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v102);

  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586050);
  v103 = v139;
  outlined init with copy of DateInterval?(v139, v96, &_s10Foundation4DateVSgMd);
  v104 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v104);

  MEMORY[0x21CE92100](0xD000000000000013, 0x8000000216586070);
  v105 = v141;
  outlined init with copy of DateInterval?(v141, v96, &_s10Foundation4DateVSgMd);
  v106 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v106);

  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586090);
  MEMORY[0x21CE92100](v138, v152);

  v107 = v160;
  v108 = v161;
  outlined destroy of UTType?(v105, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v103, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v101, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd);
  v109 = *(v142 + 8);
  v110 = v148;
  v109(v146, v148);
  v109(v145, v110);
  outlined destroy of UTType?(v149, &_s10Foundation4DateVSgMd);
  v109(v147, v110);
  v109(v144, v110);
  v109(v151, v110);
  v109(v143, v110);
  v111 = v107;
  v112 = v108;
  result._object = v112;
  result._countAndFlagsBits = v111;
  return result;
}

Swift::Void __swiftcall CloudDevice.addCapability(_:)(MomentsUI::CloudDevice::Capability a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(type metadata accessor for CloudDevice() + 52);
  if (*(v1 + v4))
  {
    v5 = *(v1 + v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v5);

  v13 = v6;

  v7 = specialized Set.contains(_:)(v3, v6);

  if ((v7 & 1) == 0)
  {
    specialized Set._Variant.insert(_:)(&v12, v3);
    v8 = v13;
    v9 = *(v13 + 16);
    if (v9)
    {
      v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v9, 0);
      v11 = specialized Sequence._copySequenceContents(initializing:)(&v12, v10 + 32, v9, v8);

      outlined consume of [String : DBAssetData].Iterator._Variant();
      if (v11 != v9)
      {
        __break(1u);

        __break(1u);
        return;
      }
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    v12 = v10;
    specialized MutableCollection<>.sort(by:)(&v12);

    *(v2 + v4) = v12;
    return;
  }
}

Swift::Void __swiftcall CloudDevice.removeCapability(_:)(MomentsUI::CloudDevice::Capability a1)
{
  v2 = *a1;
  v44 = *(type metadata accessor for CloudDevice() + 52);
  v45 = v1;
  if (*(v1 + v44))
  {
    v3 = *(v1 + v44);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v5 = (v3 + 16);
  v4 = *(v3 + 2);

  if (!v4)
  {
LABEL_64:
    v23 = *v5;
    v6 = *v5;
    goto LABEL_131;
  }

  v6 = 0;
  while (1)
  {
    v7 = v3[v6 + 32];
    if (v7 > 3)
    {
      if (v3[v6 + 32] > 5u)
      {
        if (v7 == 6)
        {
          v12 = 0x756F527465737361;
          v13 = 0xEE00626F6C426574;
          if (v2 > 3)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v12 = 0x6174536775626564;
          v13 = 0xEA0000000000656CLL;
          if (v2 > 3)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        if (v7 == 4)
        {
          v12 = 1280328553;
        }

        else
        {
          v12 = 0x68746C616548;
        }

        if (v7 == 4)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE600000000000000;
        }

        if (v2 > 3)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v8 = 0x64756F6C43776F6CLL;
      if (v7 != 2)
      {
        v8 = 0x6469766F72506F6ELL;
      }

      v9 = 0xEF656761726F7453;
      v10 = 0xEB00000000737265;
      if (v7 == 2)
      {
        v10 = 0xEF656761726F7453;
      }

      v11 = 0x6C61636F4C776F6CLL;
      if (!v3[v6 + 32])
      {
        v11 = 0x626E4F726576656ELL;
        v9 = 0xEE0064656472616FLL;
      }

      if (v3[v6 + 32] <= 1u)
      {
        v12 = v11;
      }

      else
      {
        v12 = v8;
      }

      if (v3[v6 + 32] <= 1u)
      {
        v13 = v9;
      }

      else
      {
        v13 = v10;
      }

      if (v2 > 3)
      {
LABEL_33:
        v16 = 0x756F527465737361;
        if (v2 != 6)
        {
          v16 = 0x6174536775626564;
        }

        v17 = 0xEE00626F6C426574;
        if (v2 != 6)
        {
          v17 = 0xEA0000000000656CLL;
        }

        v18 = 0x68746C616548;
        if (v2 == 4)
        {
          v18 = 1280328553;
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE600000000000000;
        }

        if (v2 <= 5)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v2 <= 5)
        {
          v15 = v19;
        }

        else
        {
          v15 = v17;
        }

        if (v12 != v20)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v21 = 0x64756F6C43776F6CLL;
      }

      else
      {
        v21 = 0x6469766F72506F6ELL;
      }

      if (v2 == 2)
      {
        v15 = 0xEF656761726F7453;
      }

      else
      {
        v15 = 0xEB00000000737265;
      }

      if (v12 != v21)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v14 = 0x626E4F726576656ELL;
      v15 = 0xEE0064656472616FLL;
      if (v2)
      {
        v14 = 0x6C61636F4C776F6CLL;
        v15 = 0xEF656761726F7453;
      }

      if (v12 != v14)
      {
        goto LABEL_56;
      }
    }

LABEL_55:
    if (v13 == v15)
    {
      break;
    }

LABEL_56:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_66;
    }

    if (v4 == ++v6)
    {
      goto LABEL_64;
    }
  }

LABEL_66:
  v23 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_146;
  }

  v24 = *v5;
  if (v23 != *v5)
  {
    v25 = (v6 + 33);
    while (1)
    {
      v28 = v25 - 32;
      if ((v25 - 32) >= v24)
      {
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v29 = v25[v3];
      if (v29 > 3)
      {
        v32 = 0x756F527465737361;
        if (v29 != 6)
        {
          v32 = 0x6174536775626564;
        }

        v33 = 0xEE00626F6C426574;
        if (v29 != 6)
        {
          v33 = 0xEA0000000000656CLL;
        }

        v34 = 0x68746C616548;
        if (v29 == 4)
        {
          v34 = 1280328553;
        }

        v35 = 0xE600000000000000;
        if (v29 == 4)
        {
          v35 = 0xE400000000000000;
        }

        if (v25[v3] <= 5u)
        {
          v30 = v34;
        }

        else
        {
          v30 = v32;
        }

        if (v25[v3] <= 5u)
        {
          v31 = v35;
        }

        else
        {
          v31 = v33;
        }
      }

      else if (v25[v3] > 1u)
      {
        if (v29 == 2)
        {
          v30 = 0x64756F6C43776F6CLL;
          v31 = 0xEF656761726F7453;
        }

        else
        {
          v30 = 0x6469766F72506F6ELL;
          v31 = 0xEB00000000737265;
        }
      }

      else
      {
        if (v25[v3])
        {
          v30 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v30 = 0x626E4F726576656ELL;
        }

        if (v25[v3])
        {
          v31 = 0xEF656761726F7453;
        }

        else
        {
          v31 = 0xEE0064656472616FLL;
        }
      }

      if (v2 > 3)
      {
        if (v2 > 5)
        {
          if (v2 == 6)
          {
            v37 = 0xEE00626F6C426574;
            if (v30 != 0x756F527465737361)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v37 = 0xEA0000000000656CLL;
            if (v30 != 0x6174536775626564)
            {
LABEL_117:
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v39 & 1) == 0)
              {
                if (v28 != v6)
                {
                  if (v6 < 0)
                  {
                    goto LABEL_141;
                  }

                  if (v6 >= *v5)
                  {
                    goto LABEL_142;
                  }

                  if (v28 >= *v5)
                  {
                    goto LABEL_143;
                  }

                  v40 = v3[v6 + 32];
                  v41 = v25[v3];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                  }

                  v3[v6 + 32] = v41;
                  v25[v3] = v40;
                }

                ++v6;
              }

              goto LABEL_70;
            }
          }
        }

        else if (v2 == 4)
        {
          v37 = 0xE400000000000000;
          if (v30 != 1280328553)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v37 = 0xE600000000000000;
          if (v30 != 0x68746C616548)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
        if (v2 > 1)
        {
          if (v2 == 2)
          {
            v38 = 0x64756F6C43776F6CLL;
LABEL_106:
            v37 = 0xEF656761726F7453;
            if (v30 != v38)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          }

          v36 = 0x6469766F72506F6ELL;
          v37 = 0xEB00000000737265;
        }

        else
        {
          v36 = 0x626E4F726576656ELL;
          v37 = 0xEE0064656472616FLL;
          if (v2)
          {
            v38 = 0x6C61636F4C776F6CLL;
            goto LABEL_106;
          }
        }

        if (v30 != v36)
        {
          goto LABEL_117;
        }
      }

LABEL_116:
      if (v31 != v37)
      {
        goto LABEL_117;
      }

LABEL_70:
      v5 = (v3 + 16);
      v24 = *(v3 + 2);
      v26 = v25 + 1;
      v27 = v25 - 31;
      ++v25;
      if (v27 == v24)
      {
        v23 = (v26 - 32);
        break;
      }
    }
  }

  if (v23 < v6)
  {
    goto LABEL_144;
  }

  if (v6 < 0)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    return;
  }

LABEL_131:
  if (__OFADD__(v23, v6 - v23))
  {
    goto LABEL_140;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v3 + 3) >> 1)
  {
    if (v23 <= v6)
    {
      v43 = v6;
    }

    else
    {
      v43 = v23;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v43, 1, v3);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v23, 0);

  *(v45 + v44) = v3;
}

id CloudDevice.lastKnownCKRecord.getter()
{
  v1 = (v0 + *(type metadata accessor for CloudDevice() + 112));
  v2 = *v1;
  v3 = v1[1];

  return specialized static CloudSyncDB.getCKRecord(_:)(v2, v3);
}

Swift::Void __swiftcall CloudDevice.populateRecord(_:)(CKRecord a1)
{
  v191 = *MEMORY[0x277D85DE8];
  v184 = type metadata accessor for Logger();
  v3 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v5 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v181 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v167 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v167 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v171 = &v167 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v170 = &v167 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v169 = &v167 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v167 - v25;
  v27 = v1[3];
  v178 = v28;
  v176 = v29;
  v174 = v30;
  v172 = v31;
  if (v27)
  {
    v32 = v1[2];
    v33 = MEMORY[0x277CBBE08];
    v34 = MEMORY[0x277D837D0];
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v33 = 0;
    *&v189 = 0;
  }

  *&v188 = v32;
  *(&v188 + 1) = v27;
  *(&v189 + 1) = v34;
  v190 = v33;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x4449656369766564, 0xE800000000000000, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v35 = v1[5];
  v175 = v16;
  if (v35)
  {
    v36 = v1[4];
    v37 = MEMORY[0x277CBBE08];
    v38 = MEMORY[0x277D837D0];
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v37 = 0;
    *&v189 = 0;
  }

  *&v188 = v36;
  *(&v188 + 1) = v35;
  *(&v189 + 1) = v38;
  v190 = v37;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x4449656C646E7562, 0xE800000000000000, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v39 = type metadata accessor for CloudDevice();
  outlined init with copy of DateInterval?(v1 + v39[7], v26, &_s10Foundation4DateVSgMd);
  v40 = type metadata accessor for Date();
  v41 = *(v40 - 8);
  v186 = *(v41 + 48);
  v42 = v186(v26, 1, v40);
  v185 = v41;
  v177 = v40;
  if (v42 == 1)
  {
    outlined destroy of UTType?(v26, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v40;
    v190 = MEMORY[0x277CBBBE8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v41 + 32))(boxed_opaque_existential_1, v26, v40);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000014, 0x8000000216585CF0, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v44 = (v1 + v39[8]);
  v45 = v44[1];
  if (v45)
  {
    v46 = *v44;
    v47 = MEMORY[0x277CBBE08];
    v48 = MEMORY[0x277D837D0];
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v47 = 0;
    *&v189 = 0;
  }

  v49 = v185;
  *&v188 = v46;
  *(&v188 + 1) = v45;
  *(&v189 + 1) = v48;
  v190 = v47;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 1701667182, 0xE400000000000000, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v50 = (v1 + v39[9]);
  v51 = v50[1];
  if (v51)
  {
    v52 = *v50;
    v53 = MEMORY[0x277CBBE08];
    v54 = MEMORY[0x277D837D0];
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v53 = 0;
    *&v189 = 0;
  }

  *&v188 = v52;
  *(&v188 + 1) = v51;
  *(&v189 + 1) = v54;
  v190 = v53;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x65566D6574737973, 0xED00006E6F697372, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v55 = v1 + v39[10];
  if (v55[8])
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(&v188 + 1) = 0;
    *&v189 = 0;
  }

  else
  {
    v56 = *v55;
    v58 = MEMORY[0x277CBBEF0];
    v57 = MEMORY[0x277D84A28];
  }

  *&v188 = v56;
  *(&v189 + 1) = v57;
  v190 = v58;
  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x64496D6574737973, 0xEE00746E496D6F69, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v59 = (v1 + v39[11]);
  v60 = v59[1];
  if (v60)
  {
    v61 = *v59;
    v62 = MEMORY[0x277CBBE08];
    v63 = MEMORY[0x277D837D0];
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v62 = 0;
    *&v189 = 0;
  }

  *&v188 = v61;
  *(&v188 + 1) = v60;
  *(&v189 + 1) = v63;
  v190 = v62;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x614C6D6574737973, 0xEE0065676175676ELL, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v64 = (v1 + v39[12]);
  v65 = v64[1];
  v180 = v11;
  if (v65)
  {
    v66 = *v64;
    v67 = MEMORY[0x277CBBE08];
    v68 = MEMORY[0x277D837D0];
  }

  else
  {
    v66 = 0;
    v68 = 0;
    v67 = 0;
    *&v189 = 0;
  }

  *&v188 = v66;
  *(&v188 + 1) = v65;
  *(&v189 + 1) = v68;
  v190 = v67;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x6F4D656369766564, 0xEB000000006C6564, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v179 = v39;
  v69 = *(v1 + v39[13]);
  v182 = v5;
  v183 = v3;
  if (v69 && (v70 = *(v69 + 16)) != 0)
  {
    v167 = v41 + 48;
    v168 = v1;
    isa = a1.super.isa;
    *&v188 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
    v71 = (v69 + 32);
    v72 = v188;
    v73 = 0x6174536775626564;
    do
    {
      v75 = *v71++;
      v74 = v75;
      v76 = v75 == 6;
      if (v75 == 6)
      {
        v77 = 0x756F527465737361;
      }

      else
      {
        v77 = v73;
      }

      if (v76)
      {
        v78 = 0xEE00626F6C426574;
      }

      else
      {
        v78 = 0xEA0000000000656CLL;
      }

      if (v74 == 4)
      {
        v79 = 1280328553;
      }

      else
      {
        v79 = 0x68746C616548;
      }

      if (v74 == 4)
      {
        v80 = 0xE400000000000000;
      }

      else
      {
        v80 = 0xE600000000000000;
      }

      if (v74 <= 5)
      {
        v77 = v79;
        v78 = v80;
      }

      if (v74 == 2)
      {
        v81 = 0x64756F6C43776F6CLL;
      }

      else
      {
        v81 = 0x6469766F72506F6ELL;
      }

      if (v74 == 2)
      {
        v82 = 0xEF656761726F7453;
      }

      else
      {
        v82 = 0xEB00000000737265;
      }

      if (v74)
      {
        v83 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v83 = 0x626E4F726576656ELL;
      }

      if (v74)
      {
        v84 = 0xEF656761726F7453;
      }

      else
      {
        v84 = 0xEE0064656472616FLL;
      }

      if (v74 <= 1)
      {
        v81 = v83;
        v82 = v84;
      }

      if (v74 <= 3)
      {
        v85 = v81;
      }

      else
      {
        v85 = v77;
      }

      if (v74 <= 3)
      {
        v86 = v82;
      }

      else
      {
        v86 = v78;
      }

      *&v188 = v72;
      v88 = *(v72 + 16);
      v87 = *(v72 + 24);
      if (v88 >= v87 >> 1)
      {
        v90 = v73;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
        v73 = v90;
        v72 = v188;
      }

      *(v72 + 16) = v88 + 1;
      v89 = v72 + 16 * v88;
      *(v89 + 32) = v85;
      *(v89 + 40) = v86;
      --v70;
    }

    while (v70);
    a1.super.isa = isa;
    v1 = v168;
    v91 = v177;
    v49 = v185;
  }

  else
  {
    v91 = v177;
  }

  v92 = objc_opt_self();
  v93 = Array._bridgeToObjectiveC()().super.isa;

  *&v188 = 0;
  v94 = [v92 dataWithJSONObject:v93 options:0 error:&v188];

  v95 = v188;
  if (!v94)
  {
    v105 = v95;
    v106 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v104 = 0;
    v100 = 0xF000000000000000;
    v101 = v179;
    v102 = v186;
    v103 = MEMORY[0x277CBBBE8];
    goto LABEL_71;
  }

  v96 = v49;
  v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  v100 = v99;
  v101 = v179;
  if (v99 >> 60 == 15)
  {
    v102 = v186;
    v103 = MEMORY[0x277CBBBE8];
    v104 = v97;
    v49 = v96;
LABEL_71:
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    goto LABEL_73;
  }

  *(&v189 + 1) = MEMORY[0x277CC9318];
  v190 = MEMORY[0x277CBBBE0];
  *&v188 = v97;
  *(&v188 + 1) = v99;
  v102 = v186;
  v103 = MEMORY[0x277CBBBE8];
  v104 = v97;
  v49 = v96;
LABEL_73:
  v179 = v104;
  isa = v100;
  outlined copy of Data?(v104, v100);
  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000012, 0x8000000216585D10, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v107 = v169;
  outlined init with copy of DateInterval?(v1 + v101[14], v169, &_s10Foundation4DateVSgMd);
  if (v102(v107, 1, v91) == 1)
  {
    outlined destroy of UTType?(v107, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = v103;
    v108 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v49 + 32))(v108, v107, v91);
  }

  v109 = v170;
  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000011, 0x8000000216585D30, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  outlined init with copy of DateInterval?(v1 + v101[16], v109, &_s10Foundation4DateVSgMd);
  if (v102(v109, 1, v91) == 1)
  {
    outlined destroy of UTType?(v109, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = v103;
    v110 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v49 + 32))(v110, v109, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000013, 0x8000000216585D50, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v111 = (v1 + v101[17]);
  v112 = v111[1];
  if (v112)
  {
    v113 = *v111;
    v114 = MEMORY[0x277CBBE08];
    v115 = MEMORY[0x277D837D0];
  }

  else
  {
    v113 = 0;
    v115 = 0;
    v114 = 0;
    *&v189 = 0;
  }

  *&v188 = v113;
  *(&v188 + 1) = v112;
  *(&v189 + 1) = v115;
  v190 = v114;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000012, 0x8000000216585D70, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v116 = v171;
  outlined init with copy of DateInterval?(v1 + v101[18], v171, &_s10Foundation4DateVSgMd);
  if (v102(v116, 1, v91) == 1)
  {
    outlined destroy of UTType?(v116, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v117 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v49 + 32))(v117, v116, v91);
  }

  v118 = v180;
  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v119 = v172;
  outlined init with copy of DateInterval?(v1 + v101[19], v172, &_s10Foundation4DateVSgMd);
  if (v102(v119, 1, v91) == 1)
  {
    outlined destroy of UTType?(v119, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v120 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v185 + 32))(v120, v119, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000010, 0x8000000216585D90, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v121 = v174;
  outlined init with copy of DateInterval?(v1 + v101[20], v174, &_s10Foundation4DateVSgMd);
  if (v102(v121, 1, v91) == 1)
  {
    outlined destroy of UTType?(v121, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v122 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v185 + 32))(v122, v121, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x696472616F626E6FLL, 0xEE0065746144676ELL, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v123 = v175;
  outlined init with copy of DateInterval?(v1 + v101[21], v175, &_s10Foundation4DateVSgMd);
  if (v102(v123, 1, v91) == 1)
  {
    outlined destroy of UTType?(v123, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v124 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v185 + 32))(v124, v123, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000023, 0x8000000216585DB0, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v125 = v176;
  outlined init with copy of DateInterval?(v1 + v101[22], v176, &_s10Foundation4DateVSgMd);
  if (v186(v125, 1, v91) == 1)
  {
    v126 = v183;
    outlined destroy of UTType?(v125, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    v126 = v183;
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v127 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v185 + 32))(v127, v125, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000021, 0x80000002165842C0, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v128 = v178;
  outlined init with copy of DateInterval?(v1 + v101[23], v178, &_s10Foundation4DateVSgMd);
  if (v186(v128, 1, v91) == 1)
  {
    outlined destroy of UTType?(v128, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v129 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v185 + 32))(v129, v128, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000020, 0x80000002165842F0, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  outlined init with copy of DateInterval?(v1 + v101[24], v118, &_s10Foundation4DateVSgMd);
  v130 = v126;
  if (v186(v118, 1, v91) == 1)
  {
    outlined destroy of UTType?(v118, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
    v131 = v185;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v132 = __swift_allocate_boxed_opaque_existential_1(&v188);
    v131 = v185;
    (*(v185 + 32))(v132, v118, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000018, 0x8000000216584320, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v133 = v181;
  outlined init with copy of DateInterval?(v1 + v101[25], v181, &_s10Foundation4DateVSgMd);
  if (v186(v133, 1, v91) == 1)
  {
    outlined destroy of UTType?(v133, &_s10Foundation4DateVSgMd);
    v188 = 0u;
    v189 = 0u;
    v190 = 0;
  }

  else
  {
    *(&v189 + 1) = v91;
    v190 = MEMORY[0x277CBBBE8];
    v134 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(v131 + 32))(v134, v133, v91);
  }

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD000000000000010, 0x8000000216584340, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v135 = (v1 + v101[26]);
  v136 = *v135;
  v137 = v135[1];
  v138 = v184;
  if (v137 >> 60 == 15)
  {
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    *&v189 = 0;
  }

  else
  {
    v142 = MEMORY[0x277CBBBE0];
    v141 = MEMORY[0x277CC9318];
    v139 = v136;
    v140 = v137;
  }

  v143 = v182;
  *&v188 = v139;
  *(&v188 + 1) = v140;
  *(&v189 + 1) = v141;
  v190 = v142;
  outlined copy of Data?(v136, v137);
  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0xD00000000000001CLL, 0x8000000216585DE0, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v144 = (v1 + v101[27]);
  v145 = v144[1];
  if (v145)
  {
    v146 = *v144;
    v147 = MEMORY[0x277CBBE08];
    v148 = MEMORY[0x277D837D0];
  }

  else
  {
    v146 = 0;
    v148 = 0;
    v147 = 0;
    *&v189 = 0;
  }

  *&v188 = v146;
  *(&v188 + 1) = v145;
  *(&v189 + 1) = v148;
  v190 = v147;

  specialized CloudRecord._setEncryptedValue(_:_:_:)(a1.super.isa, 0x69746172656E6567, 0xEA00000000006E6FLL, &v188);
  outlined destroy of UTType?(&v188, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v149 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v150)
  {
    v151 = 2419200.0;
  }

  else
  {
    v151 = v149;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v152 = __swift_project_value_buffer(v138, static CloudDevice.Log);
  swift_beginAccess();
  (*(v130 + 16))(v143, v152, v138);
  v153 = a1.super.isa;
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = v130;
    v158 = swift_slowAlloc();
    v187 = v158;
    *v156 = 136446722;
    *(v156 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v187);
    *(v156 + 12) = 2080;
    v159 = [(objc_class *)v153 recordID];
    v160 = [v159 recordName];

    v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = v162;

    v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v163, &v187);

    *(v156 + 14) = v164;
    *(v156 + 22) = 2048;
    *(v156 + 24) = v151;
    _os_log_impl(&dword_21607C000, v154, v155, "CloudDevice.%{public}s Setting TTL for record %s to %f seconds", v156, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v158, -1, -1);
    MEMORY[0x21CE94770](v156, -1, -1);

    (*(v157 + 8))(v143, v184);
  }

  else
  {

    (*(v130 + 8))(v143, v138);
  }

  v165 = v179;
  v166 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [(objc_class *)v153 setExpirationAfterTimeInterval:v166];

  outlined consume of Data?(v165, isa);
}

uint64_t CloudDevice.init(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v351 = *MEMORY[0x277D85DE8];
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtMd);
  v321 = *(v322 - 8);
  v4 = MEMORY[0x28223BE20](v322);
  v293 = (&v291 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v292 = &v291 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v320 = &v291 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v318 = (&v291 - v10);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v340 = &v291 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v291 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v329 = &v291 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v327 = &v291 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v325 = &v291 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v323 = &v291 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v294 = &v291 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v314 = &v291 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v316 = &v291 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v311 = &v291 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v312 = &v291 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v307 = &v291 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v306 = &v291 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v304 = &v291 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v305 = &v291 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v301 = &v291 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v302 = &v291 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v297 = &v291 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v298 = &v291 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v331 = &v291 - v53;
  MEMORY[0x28223BE20](v52);
  v332 = &v291 - v54;
  v55 = type metadata accessor for UUID();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v291 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v56 + 8))(v58, v55);
  v59 = type metadata accessor for CloudDevice();
  v60 = v59[7];
  v344 = v12;
  v61 = *(v12 + 56);
  v330 = v60;
  v61(&a2[v60], 1, 1, v11);
  v62 = &a2[v59[8]];
  *v62 = 0;
  *(v62 + 1) = 0;
  v333 = v62;
  v63 = &a2[v59[9]];
  *v63 = 0;
  *(v63 + 1) = 0;
  v334 = v63;
  v64 = &a2[v59[10]];
  *v64 = 0;
  v335 = v64;
  *(v64 + 8) = 1;
  v65 = &a2[v59[11]];
  *v65 = 0;
  *(v65 + 1) = 0;
  v336 = v65;
  v66 = &a2[v59[12]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v337 = v66;
  v295 = v59[13];
  *&a2[v295] = MEMORY[0x277D84F90];
  v296 = v59[14];
  v61(&a2[v296], 1, 1, v11);
  a2[v59[15]] = 2;
  v299 = v59[16];
  v61(&a2[v299], 1, 1, v11);
  v67 = &a2[v59[17]];
  *v67 = 0;
  *(v67 + 1) = 0;
  v300 = v67;
  v303 = v59[18];
  v61(&a2[v303], 1, 1, v11);
  v338 = v59[19];
  v61(&a2[v338], 1, 1, v11);
  v308 = v59[20];
  v61(&a2[v308], 1, 1, v11);
  v309 = v59[21];
  v61(&a2[v309], 1, 1, v11);
  v315 = v59[22];
  v61(&a2[v315], 1, 1, v11);
  v317 = v59[23];
  v61(&a2[v317], 1, 1, v11);
  v319 = v59[24];
  v61(&a2[v319], 1, 1, v11);
  v324 = v59[25];
  v61(&a2[v324], 1, 1, v11);
  v326 = &a2[v59[26]];
  *v326 = xmmword_21658E040;
  v68 = &a2[v59[27]];
  *v68 = 0;
  *(v68 + 1) = 0;
  v328 = v68;
  v310 = &a2[v59[28]];
  *v310 = xmmword_21658E040;
  v313 = v59[29];
  v343 = v11;
  v345 = v61;
  v346 = v12 + 56;
  v61(&a2[v313], 1, 1, v11);
  v69 = [a1 recordID];
  v70 = [v69 recordName];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  *a2 = v71;
  *(a2 + 1) = v73;
  v74 = [a1 encryptedValues];
  v75 = MEMORY[0x21CE91FC0](0x4449656369766564, 0xE800000000000000);
  v76 = [v74 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v342 = v16;
  if (v76)
  {
    v348 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v77 = swift_dynamicCast();
    if (v77)
    {
      v78 = v349;
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = v350;
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  *(a2 + 2) = v78;
  *(a2 + 3) = v79;

  v347 = a1;
  v80 = [a1 encryptedValues];
  v81 = MEMORY[0x21CE91FC0](0x4449656C646E7562, 0xE800000000000000);
  v82 = [v80 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v82)
  {
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    if (!v79)
    {
      goto LABEL_23;
    }

LABEL_22:

    goto LABEL_23;
  }

  v348 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
  v83 = swift_dynamicCast();
  if (v83)
  {
    v84 = v349;
  }

  else
  {
    v84 = 0;
  }

  if (v83)
  {
    v85 = v350;
  }

  else
  {
    v85 = 0;
  }

  *(a2 + 4) = v84;
  *(a2 + 5) = v85;
  if (!v79)
  {
    goto LABEL_23;
  }

  if (!v85)
  {
    goto LABEL_22;
  }

  v349 = v78;
  v350 = v79;

  MEMORY[0x21CE92100](46, 0xE100000000000000);

  MEMORY[0x21CE92100](v84, v85);

  if (v71 == v349 && v73 == v350)
  {

    goto LABEL_25;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v91 & 1) == 0)
  {
LABEL_23:
    v86 = type metadata accessor for DecodingError();
    swift_allocError();
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_21658CA50;
    *(v89 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v89 + 64) = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();
    *(v89 + 32) = 0;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v86 - 8) + 104))(v88, *MEMORY[0x277D84168], v86);
    swift_willThrow();

    return outlined destroy of CloudDevice(a2);
  }

LABEL_25:
  v92 = v347;
  v93 = [v347 encryptedValues];
  v94 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
  v95 = [v93 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v95)
  {
    v349 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v96 = v331;
    v97 = v343;
    v98 = swift_dynamicCast();
    v99 = v345;
    v345(v96, v98 ^ 1u, 1, v97);
    v100 = v344;
    v341 = *(v344 + 48);
    v101 = v341(v96, 1, v97);
    v102 = v332;
    if (v101 != 1)
    {
      (*(v100 + 32))(v332, v96, v97);
      goto LABEL_31;
    }
  }

  else
  {
    v96 = v331;
    v97 = v343;
    v99 = v345;
    v345(v331, 1, 1, v343);
    v100 = v344;
    v102 = v332;
  }

  static Date.distantPast.getter();
  v341 = *(v100 + 48);
  if (v341(v96, 1, v97) != 1)
  {
    outlined destroy of UTType?(v96, &_s10Foundation4DateVSgMd);
  }

LABEL_31:
  v103 = v330;
  v99(v102, 0, 1, v97);
  outlined assign with take of Date?(v102, &a2[v103]);
  v104 = [v92 encryptedValues];
  v105 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  v106 = [v104 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v106 && (v348 = v106, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v107 = v349;
    v108 = v350;
  }

  else
  {
    v107 = 0;
    v108 = 0xE000000000000000;
  }

  v109 = v333;
  *v333 = v107;
  v109[1] = v108;
  v110 = [v92 encryptedValues];
  v111 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
  v112 = [v110 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v112 && (v348 = v112, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v113 = v349;
    v114 = v350;
  }

  else
  {
    v113 = 0;
    v114 = 0xE000000000000000;
  }

  v115 = v334;
  *v334 = v113;
  v115[1] = v114;
  v116 = [v92 encryptedValues];
  v117 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
  v118 = [v116 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v118 && (v349 = v118, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), swift_dynamicCast()))
  {
    v119 = v348;
  }

  else
  {
    v119 = -1;
  }

  v120 = v335;
  *v335 = v119;
  *(v120 + 8) = 0;
  v121 = [v92 encryptedValues];
  v122 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
  v123 = [v121 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v123 && (v348 = v123, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v124 = v349;
    v125 = v350;
  }

  else
  {
    v124 = 0;
    v125 = 0xE000000000000000;
  }

  v126 = v336;
  *v336 = v124;
  v126[1] = v125;
  v127 = [v92 encryptedValues];
  v128 = MEMORY[0x21CE91FC0](0x6F4D656369766564, 0xEB000000006C6564);
  v129 = [v127 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v129 && (v348 = v129, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v130 = v349;
    v131 = v350;
  }

  else
  {
    v130 = 0;
    v131 = 0xE000000000000000;
  }

  v132 = v337;
  *v337 = v130;
  v132[1] = v131;
  v133 = [v92 encryptedValues];
  v134 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D10);
  v135 = [v133 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v135 && (v348 = v135, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v136 = v349;
    v137 = v350;
  }

  else
  {
    v136 = 0;
    v137 = 0xC000000000000000;
  }

  v138 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v349 = 0;
  v140 = [v138 JSONObjectWithData:isa options:0 error:&v349];

  v336 = v137;
  v337 = v136;
  if (!v140)
  {
    v143 = v349;
    v144 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v339 = 0;
    goto LABEL_59;
  }

  v141 = v349;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v142 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v142 = v348;
LABEL_60:
  v145 = 0;
  v146 = *(v142 + 16);
  v147 = (v142 + 40);
  v148 = MEMORY[0x277D84F90];
  v335 = (v142 + 40);
LABEL_61:
  v149 = &v147[2 * v145];
  while (v146 != v145)
  {
    if (v145 >= *(v142 + 16))
    {
      __break(1u);
    }

    ++v145;
    v150 = v149 + 2;
    v151 = *(v149 - 1);
    v152 = *v149;

    v153._countAndFlagsBits = v151;
    v153._object = v152;
    v154 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v153);

    v149 = v150;
    if (v154 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
      }

      v156 = *(v148 + 2);
      v155 = *(v148 + 3);
      if (v156 >= v155 >> 1)
      {
        v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), v156 + 1, 1, v148);
      }

      *(v148 + 2) = v156 + 1;
      v148[v156 + 32] = v154;
      v147 = v335;
      goto LABEL_61;
    }
  }

  *&a2[v295] = v148;
  v157 = [v347 encryptedValues];
  v158 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
  v159 = [v157 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v160 = v298;
  v161 = v297;
  if (v159)
  {
    v349 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v162 = v343;
    v163 = swift_dynamicCast();
    v164 = v345;
    v345(v161, v163 ^ 1u, 1, v162);
    v165 = v344;
    v166 = v341;
    v167 = v341(v161, 1, v162);
    v168 = v299;
    if (v167 != 1)
    {
      (*(v165 + 32))(v160, v161, v162);
      goto LABEL_76;
    }
  }

  else
  {
    v162 = v343;
    v164 = v345;
    v345(v297, 1, 1, v343);
    v166 = v341;
    v168 = v299;
  }

  static Date.distantPast.getter();
  if (v166(v161, 1, v162) != 1)
  {
    outlined destroy of UTType?(v161, &_s10Foundation4DateVSgMd);
  }

LABEL_76:
  v164(v160, 0, 1, v162);
  outlined assign with take of Date?(v160, &a2[v296]);
  v169 = [v347 encryptedValues];
  v170 = v164;
  v171 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
  v172 = [v169 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v172)
  {
    v349 = v172;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v173 = v301;
    v174 = swift_dynamicCast();
    v170(v173, v174 ^ 1u, 1, v162);
    v175 = v344;
    v176 = v341;
    v177 = v341(v173, 1, v162);
    v178 = v302;
    if (v177 != 1)
    {
      (*(v175 + 32))(v302, v173, v162);
      goto LABEL_82;
    }
  }

  else
  {
    v173 = v301;
    v170(v301, 1, 1, v162);
    v176 = v341;
    v178 = v302;
  }

  static Date.distantPast.getter();
  if (v176(v173, 1, v162) != 1)
  {
    outlined destroy of UTType?(v173, &_s10Foundation4DateVSgMd);
  }

LABEL_82:
  v170(v178, 0, 1, v162);
  outlined assign with take of Date?(v178, &a2[v168]);
  v179 = [v347 encryptedValues];
  v180 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D70);
  v181 = [v179 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v181)
  {
    v348 = v181;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v182 = swift_dynamicCast();
    v183 = v304;
    v184 = v344;
    if (v182)
    {
      v185 = v349;
      v186 = v350;
    }

    else
    {
      v185 = 0;
      v186 = 0xE000000000000000;
    }

    v187 = v305;
    v188 = v300;
  }

  else
  {
    v185 = 0;
    v186 = 0xE000000000000000;
    v187 = v305;
    v183 = v304;
    v188 = v300;
    v184 = v344;
  }

  *v188 = v185;
  v188[1] = v186;
  v189 = [v347 encryptedValues];
  v190 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
  v191 = [v189 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v191)
  {
    v349 = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v192 = swift_dynamicCast();
    v193 = v345;
    v345(v183, v192 ^ 1u, 1, v162);
    v194 = v341(v183, 1, v162);
    v195 = v303;
    if (v194 != 1)
    {
      (*(v184 + 32))(v187, v183, v162);
      goto LABEL_94;
    }
  }

  else
  {
    v193 = v345;
    v345(v183, 1, 1, v162);
    v195 = v303;
  }

  static Date.distantPast.getter();
  if (v341(v183, 1, v162) != 1)
  {
    outlined destroy of UTType?(v183, &_s10Foundation4DateVSgMd);
  }

LABEL_94:
  v193(v187, 0, 1, v162);
  outlined assign with take of Date?(v187, &a2[v195]);
  v196 = v193;
  v197 = [v347 encryptedValues];
  v198 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216585D90);
  v199 = [v197 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v199)
  {
    v349 = v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v200 = v306;
    v201 = swift_dynamicCast() ^ 1;
    v202 = v200;
  }

  else
  {
    v200 = v306;
    v202 = v306;
    v201 = 1;
  }

  v196(v202, v201, 1, v162);
  v203 = v196;
  v204 = v307;
  v205 = v338;
  outlined assign with take of Date?(v200, &a2[v338]);
  outlined init with copy of DateInterval?(&a2[v205], v204, &_s10Foundation4DateVSgMd);
  v206 = v184;
  v207 = v341;
  if (v341(v204, 1, v162) == 1)
  {
    static Date.distantFuture.getter();
    v208 = v207(v204, 1, v162);
    v209 = v206;
    if (v208 != 1)
    {
      outlined destroy of UTType?(v204, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v206 + 32))(v342, v204, v162);
    v209 = v206;
  }

  v210 = [v347 creationDate];
  if (v210)
  {
    v211 = v210;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v212 = v340;
    if (static Date.< infix(_:_:)())
    {
      v213 = v338;
      outlined destroy of UTType?(&a2[v338], &_s10Foundation4DateVSgMd);
      (*(v209 + 32))(&a2[v213], v212, v162);
      v203(&a2[v213], 0, 1, v162);
    }

    else
    {
      (*(v209 + 8))(v212, v162);
    }
  }

  v214 = [v347 encryptedValues];
  v215 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
  v216 = [v214 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v216)
  {
    v349 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v217 = v311;
    v218 = swift_dynamicCast();
    v219 = v345;
    v345(v217, v218 ^ 1u, 1, v162);
    v220 = v341(v217, 1, v162);
    v221 = v312;
    if (v220 != 1)
    {
      (*(v209 + 32))(v312, v217, v162);
      goto LABEL_111;
    }
  }

  else
  {
    v217 = v311;
    v219 = v345;
    v345(v311, 1, 1, v162);
    v221 = v312;
  }

  static Date.distantPast.getter();
  if (v341(v217, 1, v162) != 1)
  {
    outlined destroy of UTType?(v217, &_s10Foundation4DateVSgMd);
  }

LABEL_111:
  v219(v221, 0, 1, v162);
  outlined assign with take of Date?(v221, &a2[v308]);
  v222 = [v347 encryptedValues];
  v223 = v219;
  v224 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
  v225 = [v222 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v225)
  {
    v226 = v314;
    v223(v314, 1, 1, v162);
    v230 = v316;
    v231 = v309;
    v228 = v341;
LABEL_115:
    static Date.distantPast.getter();
    if (v228(v226, 1, v162) != 1)
    {
      outlined destroy of UTType?(v226, &_s10Foundation4DateVSgMd);
    }

    goto LABEL_117;
  }

  v349 = v225;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
  v226 = v314;
  v227 = swift_dynamicCast();
  v223(v226, v227 ^ 1u, 1, v162);
  v228 = v341;
  v229 = v341(v226, 1, v162);
  v230 = v316;
  v231 = v309;
  if (v229 == 1)
  {
    goto LABEL_115;
  }

  (*(v344 + 32))(v316, v226, v162);
LABEL_117:
  v223(v230, 0, 1, v162);
  outlined assign with take of Date?(v230, &a2[v231]);
  type metadata accessor for CloudSyncDB();
  v232 = v310;
  v233 = *v310;
  v234 = *(v310 + 1);
  v235 = v347;
  v236 = v347;
  v237 = v313;
  v238 = v318;
  static CloudSyncDB.setCKRecord(oldData:oldDate:newValue:)(v233, v234, v235, v318);
  v347 = v236;

  v239 = v320;
  outlined init with take of URL?(v238, v320, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  v240 = v322;
  if ((*(v321 + 48))(v239, 1, v322) == 1)
  {
    outlined destroy of UTType?(v239, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  }

  else
  {
    v241 = v239;
    v242 = v292;
    outlined init with take of URL?(v241, v292, &_s10Foundation4DataVSg_AA4DateVSgtMd);
    v243 = v293;
    outlined init with take of URL?(v242, v293, &_s10Foundation4DataVSg_AA4DateVSgtMd);
    v244 = *v243;
    v245 = v243[1];
    v246 = *(v240 + 48);
    outlined consume of Data?(*v232, *(v232 + 1));
    *v232 = v244;
    *(v232 + 1) = v245;
    outlined assign with take of Date?(v243 + v246, &a2[v237]);
  }

  v247 = v294;
  static Date.now.getter();
  v248 = v343;
  v249 = v345;
  v345(v247, 0, 1, v343);
  outlined assign with take of Date?(v247, &a2[v237]);
  v250 = v347;
  v251 = [v347 encryptedValues];
  v252 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165842C0);
  v253 = [v251 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v253)
  {
    v349 = v253;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v254 = v323;
    v255 = swift_dynamicCast() ^ 1;
    v256 = v254;
  }

  else
  {
    v254 = v323;
    v256 = v323;
    v255 = 1;
  }

  v249(v256, v255, 1, v248);
  v257 = v344;
  outlined assign with take of Date?(v254, &a2[v315]);
  v258 = [v250 encryptedValues];
  v259 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165842F0);
  v260 = [v258 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v260)
  {
    v349 = v260;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v261 = v325;
    v262 = swift_dynamicCast() ^ 1;
    v263 = v261;
  }

  else
  {
    v261 = v325;
    v263 = v325;
    v262 = 1;
  }

  v345(v263, v262, 1, v248);
  outlined assign with take of Date?(v261, &a2[v317]);
  v264 = [v250 encryptedValues];
  v265 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216584320);
  v266 = [v264 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v266)
  {
    v349 = v266;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v267 = v327;
    v268 = swift_dynamicCast() ^ 1;
    v269 = v267;
  }

  else
  {
    v267 = v327;
    v269 = v327;
    v268 = 1;
  }

  v345(v269, v268, 1, v248);
  outlined assign with take of Date?(v267, &a2[v319]);
  v270 = [v250 encryptedValues];
  v271 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216584340);
  v272 = [v270 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v272)
  {
    v349 = v272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v273 = v329;
    v274 = swift_dynamicCast() ^ 1;
    v275 = v273;
  }

  else
  {
    v273 = v329;
    v275 = v329;
    v274 = 1;
  }

  v345(v275, v274, 1, v248);
  v277 = v336;
  v276 = v337;
  outlined assign with take of Date?(v273, &a2[v324]);
  v278 = [v347 encryptedValues];
  v279 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216585DE0);
  v280 = [v278 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v280)
  {
    v348 = v280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v281 = swift_dynamicCast();
    v282 = v326;
    if (v281)
    {
      v280 = v349;
      v283 = v350;
    }

    else
    {
      v280 = 0;
      v283 = 0xF000000000000000;
    }
  }

  else
  {
    v283 = 0xF000000000000000;
    v282 = v326;
  }

  outlined consume of Data?(*v282, *(v282 + 1));
  *v282 = v280;
  *(v282 + 1) = v283;
  v284 = v347;
  v285 = [v347 encryptedValues];
  v286 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v287 = [v285 objectForKeyedSubscript_];
  outlined consume of Data._Representation(v276, v277);

  swift_unknownObjectRelease();
  result = (*(v257 + 8))(v342, v248);
  if (v287)
  {
    v348 = v287;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    result = swift_dynamicCast();
    if (result)
    {
      v288 = v349;
      v289 = v350;
    }

    else
    {
      v288 = 0;
      v289 = 0;
    }
  }

  else
  {
    v288 = 0;
    v289 = 0;
  }

  v290 = v328;
  *v328 = v288;
  v290[1] = v289;
  return result;
}

uint64_t CloudDevice.lastKnownCKRecord.setter(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v26 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  type metadata accessor for CloudSyncDB();
  v15 = type metadata accessor for CloudDevice();
  v16 = *(v15 + 116);
  v17 = v1 + *(v15 + 112);
  v18 = *v17;
  v19 = *(v17 + 8);
  v27 = v1;
  v20 = v3;
  static CloudSyncDB.setCKRecord(oldData:oldDate:newValue:)(v18, v19, a1, v14);

  outlined init with take of URL?(v14, v12, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    return outlined destroy of UTType?(v12, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  }

  v22 = v26;
  outlined init with take of URL?(v12, v26, &_s10Foundation4DataVSg_AA4DateVSgtMd);
  outlined init with take of URL?(v22, v7, &_s10Foundation4DataVSg_AA4DateVSgtMd);
  v23 = *v7;
  v24 = v7[1];
  v25 = *(v20 + 48);
  outlined consume of Data?(*v17, *(v17 + 8));
  *v17 = v23;
  *(v17 + 8) = v24;
  return outlined assign with take of Date?(v7 + v25, v27 + v16);
}

uint64_t CloudDevice.init(deviceID:bundleID:userModificationDate:name:systemVersion:systemIdiom:systemLanguage:deviceModel:deviceCapabilities:becamePrimaryDate:declinedPrimaryDate:nominationDeviceID:nominationDate:registrationDate:onboardingDate:lastInformedOfNewlyOnboardedDevices:lastSnapshotAnalyticsCreationDate:lastSnapshotDownloadCompleteDate:lastSnapshotCreationDate:lastUILaunchDate:snapshotEventAggregationData:snapshotGeneration:lastKnownCKRecordData:lastKnownCKRecordSync:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 *a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35)
{
  v110 = a8;
  v133 = a7;
  v109 = a6;
  v157 = a5;
  v131 = a4;
  v154 = a3;
  v130 = a1;
  v152 = a34;
  v153 = a35;
  v138 = a32;
  v150 = a30;
  v151 = a33;
  v148 = a27;
  v149 = a28;
  v146 = a29;
  v147 = a26;
  v144 = a24;
  v145 = a25;
  v142 = a22;
  v143 = a23;
  v140 = a18;
  v141 = a21;
  v139 = a17;
  v136 = a16;
  v137 = a20;
  v135 = a15;
  v134 = a13;
  v132 = a10;
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *a11;
  UUID.init()();
  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v38 + 8))(v40, v37);
  *a9 = v41;
  *(a9 + 8) = v43;
  v104 = v43;
  v44 = type metadata accessor for CloudDevice();
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  v45 = v44[7];
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v105 = v45;
  (v48)(a9 + v45, 1, 1, v46);
  v49 = (a9 + v44[8]);
  *v49 = 0;
  v49[1] = 0;
  v106 = v49;
  v50 = (a9 + v44[9]);
  *v50 = 0;
  v50[1] = 0;
  v51 = a9 + v44[10];
  *v51 = 0;
  v107 = v51;
  LODWORD(v129) = 1;
  *(v51 + 8) = 1;
  v52 = v130;
  v53 = (a9 + v44[11]);
  *v53 = 0;
  v53[1] = 0;
  v111 = v53;
  v54 = (a9 + v44[12]);
  *v54 = 0;
  v54[1] = 0;
  v112 = v54;
  v113 = v44[13];
  *(a9 + v113) = MEMORY[0x277D84F90];
  v114 = a9 + v44[14];
  v48();
  *(a9 + v44[15]) = 2;
  v116 = a9 + v44[16];
  v48();
  v55 = (a9 + v44[17]);
  *v55 = 0;
  v55[1] = 0;
  v115 = v55;
  v117 = a9 + v44[18];
  v48();
  v118 = a9 + v44[19];
  v48();
  v122 = a9 + v44[20];
  v48();
  v127 = a9 + v44[21];
  v48();
  v126 = a9 + v44[22];
  v48();
  v125 = a9 + v44[23];
  v48();
  v124 = a9 + v44[24];
  v48();
  v120 = a9 + v44[25];
  v48();
  v121 = (a9 + v44[26]);
  *v121 = xmmword_21658E040;
  v56 = (a9 + v44[27]);
  *v56 = 0;
  v56[1] = 0;
  v119 = v56;
  v123 = (a9 + v44[28]);
  *v123 = xmmword_21658E040;
  v57 = a9 + v44[29];
  (v48)(v57, 1, 1, v46);
  v58 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v58 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {
    v128 = "Bundle ID cannot be empty";
LABEL_17:

    v72 = type metadata accessor for EncodingError();
    swift_allocError();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v74[3] = MEMORY[0x277D837D0];
    *v74 = v52;
    v74[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_21658CA50;
    *(v75 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v75 + 64) = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();
    *(v75 + 32) = v129;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D841A8], v72);
    swift_willThrow();
    outlined consume of Data?(v151, v152);
    outlined consume of Data?(v146, v150);
    v76 = *(v47 + 8);
    v76(v153, v46);
    outlined destroy of UTType?(v149, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v148, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v147, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v145, &_s10Foundation4DateVSgMd);
    v76(v144, v46);
    v76(v143, v46);
    v76(v142, v46);
    v76(v141, v46);
    v76(v140, v46);
    v76(v139, v46);
    v76(v157, v46);
    return outlined destroy of CloudDevice(a9);
  }

  v129 = v50;
  v59 = v131;
  v60 = HIBYTE(v131) & 0xF;
  v61 = v154;
  if ((v131 & 0x2000000000000000) == 0)
  {
    v60 = v154 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
    v128 = "checkDB(forceUpdate:)";
    LODWORD(v129) = 2;
    v52 = v154;
    a2 = v131;
    goto LABEL_17;
  }

  v103 = v57;
  *(a9 + 16) = v52;
  *(a9 + 24) = a2;
  *(a9 + 32) = v61;
  *(a9 + 40) = v59;
  v155 = v52;
  v156 = a2;
  swift_bridgeObjectRetain_n();

  MEMORY[0x21CE92100](46, 0xE100000000000000);

  MEMORY[0x21CE92100](v154, v59);

  v62 = v156;
  *a9 = v155;
  *(a9 + 8) = v62;
  v63 = v105;
  outlined destroy of UTType?(a9 + v105, &_s10Foundation4DateVSgMd);
  (*(v47 + 16))(a9 + v63, v157, v46);
  (v48)(a9 + v63, 0, 1, v46);
  v64 = v133;
  Device = v109;
  if (!v133)
  {
    Device = specialized static CloudDevice._getDeviceName()(0x72657475706D6F43, 0xEC000000656D614ELL, "Computer Name: %s");
  }

  v66 = v106;
  *v106 = Device;
  v66[1] = v64;
  v67 = v132;
  v68 = v110;
  v69 = v129;
  if (!v132)
  {
    v68 = specialized static CloudDevice._getDeviceName()(0x56746375646F7250, 0xEE006E6F69737265, "OS Version: %s");
  }

  *v69 = v68;
  v69[1] = v67;
  if (v108 > 3)
  {
    if (v108 > 5)
    {
      if (v108 == 6)
      {
        v71 = 6;
      }

      else
      {
        v71 = specialized static CloudDevice._getIdiom()();
      }
    }

    else if (v108 == 4)
    {
      v71 = 3;
    }

    else
    {
      v71 = 5;
    }
  }

  else if (v108 > 1)
  {
    if (v108 == 2)
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }
  }

  else if (v108)
  {
    v71 = 0;
  }

  else
  {
    v71 = -1;
  }

  v79 = v107;
  *v107 = v71;
  *(v79 + 8) = 0;
  v80 = v134;
  if (!v134)
  {
    v81 = static Locale.preferredLanguages.getter();
    if (v81[2])
    {
      a12 = v81[4];
      v80 = v81[5];
    }

    else
    {

      v80 = 0xE200000000000000;
      a12 = 28261;
    }
  }

  v154 = a31;
  v82 = v111;
  *v111 = a12;
  v82[1] = v80;
  v83 = v135;
  if (!v135)
  {
    a14 = specialized static CloudDevice._getDeviceName()(0x54746375646F7250, 0xEB00000000657079, "Machine Code: %s");
  }

  v84 = v112;
  *v112 = a14;
  v84[1] = v83;
  (*(v47 + 8))(v157, v46);
  v85 = v136;
  if (!v136)
  {
    v85 = MEMORY[0x277D84F90];
  }

  *(a9 + v113) = v85;
  v86 = v114;
  outlined destroy of UTType?(v114, &_s10Foundation4DateVSgMd);
  v87 = *(v47 + 32);
  v87(v86, v139, v46);
  (v48)(v86, 0, 1, v46);
  v88 = v116;
  outlined destroy of UTType?(v116, &_s10Foundation4DateVSgMd);
  v87(v88, v140, v46);
  (v48)(v88, 0, 1, v46);
  v89 = v115;
  v90 = v137;
  *v115 = a19;
  v89[1] = v90;
  v91 = v117;
  outlined destroy of UTType?(v117, &_s10Foundation4DateVSgMd);
  v87(v91, v141, v46);
  (v48)(v91, 0, 1, v46);
  v92 = v118;
  outlined destroy of UTType?(v118, &_s10Foundation4DateVSgMd);
  v87(v92, v142, v46);
  (v48)(v92, 0, 1, v46);
  v93 = v122;
  outlined destroy of UTType?(v122, &_s10Foundation4DateVSgMd);
  v87(v93, v143, v46);
  (v48)(v93, 0, 1, v46);
  v94 = v127;
  outlined destroy of UTType?(v127, &_s10Foundation4DateVSgMd);
  v87(v94, v144, v46);
  (v48)(v94, 0, 1, v46);
  outlined assign with take of Date?(v145, v126);
  outlined assign with take of Date?(v147, v125);
  outlined assign with take of Date?(v148, v124);
  outlined assign with take of Date?(v149, v120);
  v95 = v121;
  outlined consume of Data?(*v121, v121[1]);
  v96 = v150;
  *v95 = v146;
  v95[1] = v96;
  v97 = v119;
  v98 = v138;
  *v119 = v154;
  v97[1] = v98;
  v99 = v123;
  outlined consume of Data?(*v123, v123[1]);
  v100 = v152;
  *v99 = v151;
  v99[1] = v100;
  v101 = v103;
  outlined destroy of UTType?(v103, &_s10Foundation4DateVSgMd);
  v87(v101, v153, v46);
  return (v48)(v101, 0, 1, v46);
}

uint64_t CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, char a6, char a7)
{
  *(v8 + 2136) = v7;
  *(v8 + 2634) = a7;
  *(v8 + 2633) = a6;
  *(v8 + 2632) = a5;
  *(v8 + 2128) = a3;
  *(v8 + 2120) = a2;
  *(v8 + 2112) = a1;
  *(v8 + 2144) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  *(v8 + 2152) = swift_task_alloc();
  *(v8 + 2160) = swift_task_alloc();
  *(v8 + 2168) = swift_task_alloc();
  *(v8 + 2176) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v8 + 2184) = swift_task_alloc();
  *(v8 + 2192) = swift_task_alloc();
  *(v8 + 2200) = swift_task_alloc();
  *(v8 + 2208) = swift_task_alloc();
  *(v8 + 2216) = swift_task_alloc();
  *(v8 + 2224) = swift_task_alloc();
  *(v8 + 2232) = swift_task_alloc();
  *(v8 + 2240) = swift_task_alloc();
  *(v8 + 2248) = swift_task_alloc();
  *(v8 + 2256) = swift_task_alloc();
  *(v8 + 2264) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v8 + 2272) = v10;
  *(v8 + 2280) = *(v10 - 8);
  *(v8 + 2288) = swift_task_alloc();
  *(v8 + 2296) = swift_task_alloc();
  *(v8 + 2304) = swift_task_alloc();
  *(v8 + 2312) = swift_task_alloc();
  *(v8 + 2320) = swift_task_alloc();
  *(v8 + 2328) = swift_task_alloc();
  *(v8 + 2336) = swift_task_alloc();
  *(v8 + 2344) = swift_task_alloc();
  *(v8 + 2352) = swift_task_alloc();
  *(v8 + 2360) = swift_task_alloc();
  *(v8 + 2368) = swift_task_alloc();
  *(v8 + 2376) = type metadata accessor for CloudDevice();
  *(v8 + 2384) = swift_task_alloc();
  *(v8 + 2392) = swift_task_alloc();
  *(v8 + 2400) = swift_task_alloc();
  *(v8 + 2408) = swift_task_alloc();
  *(v8 + 2416) = swift_task_alloc();
  *(v8 + 2424) = swift_task_alloc();
  *(v8 + 2432) = swift_task_alloc();
  *(v8 + 2440) = swift_task_alloc();
  *(v8 + 2448) = swift_task_alloc();
  *(v8 + 2456) = swift_task_alloc();
  *(v8 + 2464) = swift_task_alloc();
  *(v8 + 2472) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 2480) = v11;
  *(v8 + 2488) = *(v11 - 8);
  *(v8 + 2496) = swift_task_alloc();
  *(v8 + 2504) = swift_task_alloc();
  *(v8 + 2512) = swift_task_alloc();
  *(v8 + 2520) = swift_task_alloc();
  *(v8 + 2528) = swift_task_alloc();
  *(v8 + 2536) = swift_task_alloc();
  *(v8 + 2544) = swift_task_alloc();
  *(v8 + 2552) = swift_task_alloc();
  *(v8 + 2560) = swift_task_alloc();
  *(v8 + 2568) = swift_task_alloc();
  *(v8 + 2576) = swift_task_alloc();
  *(v8 + 2584) = swift_task_alloc();
  *(v8 + 2592) = swift_task_alloc();
  *(v8 + 2635) = *a4;

  return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

uint64_t CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)()
{
  v204 = v0;
  Device = specialized static CloudDevice._getDeviceName()(0x72657475706D6F43, 0xEC000000656D614ELL, "Computer Name: %s");
  if (v2)
  {
    v3 = Device;
    v4 = v2;
    v5 = *(v0 + 2376);
    v6 = (*(v0 + 2136) + *(v5 + 32));
    v7 = v6[1];
    if (!v7 || (*v6 == Device ? (v8 = v7 == v4) : (v8 = 0), !v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 2592);
      v46 = *(v0 + 2488);
      v47 = *(v0 + 2480);
      v48 = *(v0 + 2472);
      v49 = *(v0 + 2136);
      v50 = __swift_project_value_buffer(v47, static CloudDevice.Log);
      swift_beginAccess();
      (*(v46 + 16))(v45, v50, v47);
      outlined init with copy of CloudDevice(v49, v48);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 2472);
        v54 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v203[0] = v201;
        *v54 = 136315394;
        v55 = (v53 + *(v5 + 32));
        if (v55[1])
        {
          v56 = *v55;
          v57 = v55[1];
        }

        else
        {
          swift_beginAccess();
          v56 = static CloudDevice.nilStr;
          v57 = qword_27CA92B00;
        }

        v95 = *(v0 + 2488);
        v195 = *(v0 + 2480);
        v198 = *(v0 + 2592);
        v96 = *(v0 + 2472);

        outlined destroy of CloudDevice(v96);
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v203);

        *(v54 + 4) = v97;
        *(v54 + 12) = 2080;
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, v203);

        *(v54 + 14) = v98;
        v99 = "Device name changed: %s -> %s";
        goto LABEL_86;
      }

      v77 = *(v0 + 2592);
      v78 = *(v0 + 2488);
      v79 = *(v0 + 2480);
      v80 = *(v0 + 2472);
      goto LABEL_48;
    }
  }

  v9 = specialized static CloudDevice._getDeviceName()(0x56746375646F7250, 0xEE006E6F69737265, "OS Version: %s");
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v0 + 2376);
    v14 = (*(v0 + 2136) + *(v13 + 36));
    v15 = v14[1];
    if (!v15 || (*v14 == v9 ? (v16 = v15 == v12) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 2584);
      v68 = *(v0 + 2488);
      v69 = *(v0 + 2480);
      v70 = *(v0 + 2464);
      v71 = *(v0 + 2136);
      v72 = __swift_project_value_buffer(v69, static CloudDevice.Log);
      swift_beginAccess();
      (*(v68 + 16))(v67, v72, v69);
      outlined init with copy of CloudDevice(v71, v70);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v73 = *(v0 + 2464);
        v54 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v203[0] = v201;
        *v54 = 136315394;
        v74 = (v73 + *(v13 + 36));
        if (v74[1])
        {
          v75 = *v74;
          v76 = v74[1];
        }

        else
        {
          swift_beginAccess();
          v75 = static CloudDevice.nilStr;
          v76 = qword_27CA92B00;
        }

        v95 = *(v0 + 2488);
        v195 = *(v0 + 2480);
        v198 = *(v0 + 2584);
        v160 = *(v0 + 2464);

        outlined destroy of CloudDevice(v160);
        v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v203);

        *(v54 + 4) = v161;
        *(v54 + 12) = 2080;
        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v203);

        *(v54 + 14) = v162;
        v99 = "System version changed: %s -> %s";
        goto LABEL_86;
      }

      v77 = *(v0 + 2584);
      v78 = *(v0 + 2488);
      v79 = *(v0 + 2480);
      v80 = *(v0 + 2464);
LABEL_48:

      outlined destroy of CloudDevice(v80);
      (*(v78 + 8))(v77, v79);
LABEL_87:

      v163 = *(v0 + 8);

      return v163(1);
    }
  }

  v17 = *(v0 + 2376);
  v18 = *(v0 + 2136);
  v19 = specialized static CloudDevice._getIdiom()();
  v20 = v19;
  v21 = v18 + *(v17 + 40);
  if (*(v21 + 8) == 1)
  {
    if (v19 != -1)
    {
LABEL_19:
      v200 = v17;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 2576);
      v23 = *(v0 + 2488);
      v24 = *(v0 + 2480);
      v25 = *(v0 + 2456);
      v26 = *(v0 + 2448);
      v27 = *(v0 + 2136);
      v28 = __swift_project_value_buffer(v24, static CloudDevice.Log);
      swift_beginAccess();
      (*(v23 + 16))(v22, v28, v24);
      outlined init with copy of CloudDevice(v27, v25);
      outlined init with copy of CloudDevice(v27, v26);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 2576);
      v33 = *(v0 + 2488);
      v34 = *(v0 + 2480);
      v35 = *(v0 + 2456);
      v36 = *(v0 + 2448);
      if (v31)
      {
        v37 = swift_slowAlloc();
        v193 = v20;
        v38 = swift_slowAlloc();
        v203[0] = v38;
        *v37 = 136315650;
        v194 = v34;
        v197 = v32;
        v39 = CloudDevice.systemIdiomString.getter();
        v41 = v40;
        outlined destroy of CloudDevice(v35);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v203);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2048;
        v43 = v36 + *(v200 + 40);
        if (*(v43 + 8))
        {
          v44 = -1;
        }

        else
        {
          v44 = *v43;
        }

        outlined destroy of CloudDevice(v36);
        *(v37 + 14) = v44;
        *(v37 + 22) = 2048;
        *(v37 + 24) = v193;
        _os_log_impl(&dword_21607C000, v29, v30, "System idiom changed: %s (%lld) -> %ld", v37, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x21CE94770](v38, -1, -1);
        MEMORY[0x21CE94770](v37, -1, -1);

        (*(v33 + 8))(v197, v194);
      }

      else
      {
        outlined destroy of CloudDevice(*(v0 + 2448));

        outlined destroy of CloudDevice(v35);
        (*(v33 + 8))(v32, v34);
      }

      goto LABEL_87;
    }
  }

  else if (*v21 != v19)
  {
    goto LABEL_19;
  }

  v58 = *(v0 + 2376);
  v59 = (*(v0 + 2136) + *(v58 + 44));
  v60 = *v59;
  v61 = v59[1];

  v62 = static Locale.preferredLanguages.getter();
  if (v62[2])
  {
    v64 = v62[4];
    v63 = v62[5];

    if (v61)
    {
      goto LABEL_34;
    }

LABEL_50:

    goto LABEL_51;
  }

  v63 = 0xE200000000000000;
  v64 = 28261;

  if (!v61)
  {
    goto LABEL_50;
  }

LABEL_34:
  if (v60 == v64 && v61 == v63)
  {

    goto LABEL_59;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v66 & 1) == 0)
  {
LABEL_51:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v81 = *(v0 + 2568);
    v82 = *(v0 + 2488);
    v83 = *(v0 + 2480);
    v84 = *(v0 + 2440);
    v85 = *(v0 + 2136);
    v86 = __swift_project_value_buffer(v83, static CloudDevice.Log);
    swift_beginAccess();
    (*(v82 + 16))(v81, v86, v83);
    outlined init with copy of CloudDevice(v85, v84);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = *(v0 + 2440);
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v203[0] = v91;
      *v90 = 136315394;
      v92 = (v89 + *(v58 + 44));
      if (v92[1])
      {
        v93 = *v92;
        v94 = v92[1];
      }

      else
      {
        swift_beginAccess();
        v93 = static CloudDevice.nilStr;
        v94 = qword_27CA92B00;
      }

      v175 = *(v0 + 2440);

      outlined destroy of CloudDevice(v175);
      v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v203);

      *(v90 + 4) = v176;
      *(v90 + 12) = 2080;
      v177 = static Locale.preferredLanguages.getter();
      if (v177[2])
      {
        v179 = v177[4];
        v178 = v177[5];
      }

      else
      {
        v178 = 0xE200000000000000;
        v179 = 28261;
      }

      v180 = *(v0 + 2568);
      v181 = *(v0 + 2488);
      v182 = *(v0 + 2480);

      v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v178, v203);

      *(v90 + 14) = v183;
      _os_log_impl(&dword_21607C000, v87, v88, "System language changed: %s -> %s", v90, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v91, -1, -1);
      MEMORY[0x21CE94770](v90, -1, -1);

      (*(v181 + 8))(v180, v182);
    }

    else
    {
      v133 = *(v0 + 2568);
      v134 = *(v0 + 2488);
      v135 = *(v0 + 2480);
      v136 = *(v0 + 2440);

      outlined destroy of CloudDevice(v136);
      (*(v134 + 8))(v133, v135);
    }

    goto LABEL_87;
  }

LABEL_59:
  v100 = specialized static CloudDevice._getDeviceName()(0x54746375646F7250, 0xEB00000000657079, "Machine Code: %s");
  if (!v101)
  {
    goto LABEL_65;
  }

  v102 = v100;
  v103 = v101;
  v104 = *(v0 + 2376);
  v105 = (*(v0 + 2136) + *(v104 + 48));
  v106 = v105[1];
  if (!v106 || (*v105 != v100 || v106 != v103) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v165 = *(v0 + 2560);
    v166 = *(v0 + 2488);
    v167 = *(v0 + 2480);
    v168 = *(v0 + 2432);
    v169 = *(v0 + 2136);
    v170 = __swift_project_value_buffer(v167, static CloudDevice.Log);
    swift_beginAccess();
    (*(v166 + 16))(v165, v170, v167);
    outlined init with copy of CloudDevice(v169, v168);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v171 = *(v0 + 2432);
      v54 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v203[0] = v201;
      *v54 = 136315394;
      v172 = (v171 + *(v104 + 48));
      if (v172[1])
      {
        v173 = *v172;
        v174 = v172[1];
      }

      else
      {
        swift_beginAccess();
        v173 = static CloudDevice.nilStr;
        v174 = qword_27CA92B00;
      }

      v95 = *(v0 + 2488);
      v195 = *(v0 + 2480);
      v198 = *(v0 + 2560);
      v190 = *(v0 + 2432);

      outlined destroy of CloudDevice(v190);
      v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v174, v203);

      *(v54 + 4) = v191;
      *(v54 + 12) = 2080;
      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v203);

      *(v54 + 14) = v192;
      v99 = "Device model changed: %s -> %s";
LABEL_86:
      _os_log_impl(&dword_21607C000, v51, v52, v99, v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v201, -1, -1);
      MEMORY[0x21CE94770](v54, -1, -1);

      (*(v95 + 8))(v198, v195);
      goto LABEL_87;
    }

    v77 = *(v0 + 2560);
    v78 = *(v0 + 2488);
    v79 = *(v0 + 2480);
    v80 = *(v0 + 2432);
    goto LABEL_48;
  }

LABEL_65:
  v107 = *(v0 + 2376);
  v108 = *(v107 + 52);
  v109 = *(*(v0 + 2136) + v108);
  if (v109)
  {
    v110 = *(*(v0 + 2136) + v108);
  }

  else
  {
    v110 = MEMORY[0x277D84F90];
  }

  v111 = *(v0 + 2632);
  v112 = *(v0 + 2633);
  v113 = *(v0 + 2634);
  LOBYTE(v203[0]) = *(v0 + 2635);
  swift_bridgeObjectRetain_n();
  v114 = specialized static CloudDevice.effectiveCapabilities(original:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(v110, v203, v111, v112, v113);

  if (!v109 || (, v115 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v109, v114), , , (v115 & 1) == 0))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v137 = *(v0 + 2552);
    v138 = *(v0 + 2488);
    v139 = *(v0 + 2480);
    v140 = *(v0 + 2424);
    v141 = *(v0 + 2136);
    v142 = __swift_project_value_buffer(v139, static CloudDevice.Log);
    swift_beginAccess();
    (*(v138 + 16))(v137, v142, v139);
    outlined init with copy of CloudDevice(v141, v140);

    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();

    v145 = os_log_type_enabled(v143, v144);
    v146 = *(v0 + 2552);
    v147 = *(v0 + 2488);
    v148 = *(v0 + 2480);
    v149 = *(v0 + 2424);
    if (v145)
    {
      v150 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v203[0] = v196;
      *v150 = 136446466;
      if (*(v149 + *(v107 + 52)))
      {
        v151 = *(v149 + *(v107 + 52));
      }

      else
      {
        v151 = MEMORY[0x277D84F90];
      }

      v199 = v146;
      v202 = v148;
      v152 = MEMORY[0x21CE922B0](v151, &type metadata for CloudDevice.Capability);
      v154 = v153;

      outlined destroy of CloudDevice(v149);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v203);

      *(v150 + 4) = v155;
      *(v150 + 12) = 2082;
      v156 = MEMORY[0x21CE922B0](v114, &type metadata for CloudDevice.Capability);
      v158 = v157;

      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, v203);

      *(v150 + 14) = v159;
      _os_log_impl(&dword_21607C000, v143, v144, "Device capabilities changed: %{public}s -> %{public}s", v150, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v196, -1, -1);
      MEMORY[0x21CE94770](v150, -1, -1);

      (*(v147 + 8))(v199, v202);
    }

    else
    {

      outlined destroy of CloudDevice(v149);
      (*(v147 + 8))(v146, v148);
    }

    goto LABEL_87;
  }

  v116 = *(v0 + 2376);
  v117 = *(v0 + 2280);
  v118 = *(v0 + 2272);
  v119 = *(v0 + 2264);
  v120 = *(v0 + 2136);

  outlined init with copy of DateInterval?(v120 + *(v116 + 28), v119, &_s10Foundation4DateVSgMd);
  v121 = *(v117 + 48);
  *(v0 + 2600) = v121;
  *(v0 + 2608) = (v117 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v121(v119, 1, v118) == 1)
  {
    outlined destroy of UTType?(*(v0 + 2264), &_s10Foundation4DateVSgMd);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v122 = *(v0 + 2496);
    v123 = *(v0 + 2488);
    v124 = *(v0 + 2480);
    v125 = __swift_project_value_buffer(v124, static CloudDevice.Log);
    swift_beginAccess();
    (*(v123 + 16))(v122, v125, v124);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();
    v128 = os_log_type_enabled(v126, v127);
    v129 = *(v0 + 2496);
    v130 = *(v0 + 2488);
    v131 = *(v0 + 2480);
    if (v128)
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_21607C000, v126, v127, "Device modification date is nil: need to update", v132, 2u);
      MEMORY[0x21CE94770](v132, -1, -1);
    }

    (*(v130 + 8))(v129, v131);
    goto LABEL_87;
  }

  v184 = *(v0 + 2368);
  v185 = *(v0 + 2280);
  v186 = *(v0 + 2272);
  v187 = *(v0 + 2264);
  v188 = *(v0 + 2112);
  v189 = *(v185 + 32);
  *(v0 + 2616) = v189;
  *(v0 + 2624) = (v185 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v189(v184, v187, v186);

  return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v188, 0);
}

{
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2112);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v71 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2256);
  if (v1(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_19:
    v59 = *(v0 + 2112);

    return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v59, 0);
  }

  v4 = *(v0 + 2376);
  v5 = *(v0 + 2360);
  v6 = *(v0 + 2280);
  v7 = *(v0 + 2248);
  v8 = *(v0 + 2168);
  v66 = *(v0 + 2144);
  v68 = *(v0 + 2136);
  (*(v0 + 2616))(v5, v3, v2);
  v62 = v4;
  v9 = *(v4 + 96);
  v63 = *(v6 + 16);
  v63(v7, v5, v2);
  (*(v6 + 56))(v7, 0, 1, v2);
  v10 = *(v66 + 48);
  outlined init with copy of DateInterval?(v68 + v9, v8, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v8 + v10, &_s10Foundation4DateVSgMd);
  v11 = v1(v8, 1, v2);
  v12 = *(v0 + 2600);
  v13 = *(v0 + 2272);
  if (v11 == 1)
  {
    outlined destroy of UTType?(*(v0 + 2248), &_s10Foundation4DateVSgMd);
    if (v12(v8 + v10, 1, v13) == 1)
    {
      v14 = *(v0 + 2280);
      outlined destroy of UTType?(*(v0 + 2168), &_s10Foundation4DateVSgMd);
      (*(v14 + 8))(*(v0 + 2360), *(v0 + 2272));
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 2168), *(v0 + 2240), &_s10Foundation4DateVSgMd);
  if (v12(v8 + v10, 1, v13) == 1)
  {
    v15 = *(v0 + 2280);
    v16 = *(v0 + 2272);
    v17 = *(v0 + 2240);
    outlined destroy of UTType?(*(v0 + 2248), &_s10Foundation4DateVSgMd);
    (*(v15 + 8))(v17, v16);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 2168), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v51 = *(v0 + 2352);
  v52 = *(v0 + 2280);
  v53 = *(v0 + 2272);
  v54 = *(v0 + 2248);
  v55 = *(v0 + 2240);
  v56 = *(v0 + 2168);
  (*(v0 + 2616))(v51, v8 + v10, v53);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v52 + 8);
  v58(v51, v53);
  outlined destroy of UTType?(v54, &_s10Foundation4DateVSgMd);
  v58(v55, v53);
  outlined destroy of UTType?(v56, &_s10Foundation4DateVSgMd);
  if (v57)
  {
    v58(*(v0 + 2360), *(v0 + 2272));
    goto LABEL_19;
  }

LABEL_9:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 2544);
  v19 = *(v0 + 2488);
  v20 = *(v0 + 2480);
  v21 = *(v0 + 2416);
  v22 = *(v0 + 2360);
  v23 = *(v0 + 2344);
  v24 = *(v0 + 2272);
  v25 = *(v0 + 2136);
  v26 = __swift_project_value_buffer(v20, static CloudDevice.Log);
  swift_beginAccess();
  (*(v19 + 16))(v18, v26, v20);
  outlined init with copy of CloudDevice(v25, v21);
  v63(v23, v22, v24);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 2544);
  v31 = *(v0 + 2488);
  v32 = *(v0 + 2416);
  v33 = *(v0 + 2368);
  v67 = *(v0 + 2480);
  v69 = *(v0 + 2360);
  v34 = *(v0 + 2344);
  v35 = *(v0 + 2280);
  v36 = *(v0 + 2272);
  if (v29)
  {
    v61 = v28;
    v37 = *(v0 + 2232);
    v65 = *(v0 + 2368);
    v64 = *(v0 + 2544);
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v38 = 136446722;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000086, 0x80000002165860D0, v70);
    *(v38 + 12) = 2080;
    outlined init with copy of DateInterval?(v32 + *(v62 + 96), v37, &_s10Foundation4DateVSgMd);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    outlined destroy of CloudDevice(v32);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v70);

    *(v38 + 14) = v42;
    *(v38 + 22) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = *(v35 + 8);
    v46(v34, v36);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v70);

    *(v38 + 24) = v47;
    _os_log_impl(&dword_21607C000, v27, v61, "cloudDevice.%{public}s  lastSnapshotCreationDate changed: %s -> %s. Updated hasEnvironmentChanged to true.", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v60, -1, -1);
    MEMORY[0x21CE94770](v38, -1, -1);

    (*(v31 + 8))(v64, v67);
    v46(v69, v36);
    v46(v65, v36);
  }

  else
  {

    v48 = *(v35 + 8);
    v48(v34, v36);
    outlined destroy of CloudDevice(v32);
    (*(v31 + 8))(v30, v67);
    v48(v69, v36);
    v48(v33, v36);
  }

  v49 = *(v0 + 8);

  return v49(1);
}

{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2112);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v71 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2224);
  if (v1(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_19:
    v59 = *(v0 + 2112);

    return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v59, 0);
  }

  v4 = *(v0 + 2376);
  v5 = *(v0 + 2336);
  v6 = *(v0 + 2280);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2160);
  v66 = *(v0 + 2144);
  v68 = *(v0 + 2136);
  (*(v0 + 2616))(v5, v3, v2);
  v62 = v4;
  v9 = *(v4 + 92);
  v63 = *(v6 + 16);
  v63(v7, v5, v2);
  (*(v6 + 56))(v7, 0, 1, v2);
  v10 = *(v66 + 48);
  outlined init with copy of DateInterval?(v68 + v9, v8, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v8 + v10, &_s10Foundation4DateVSgMd);
  v11 = v1(v8, 1, v2);
  v12 = *(v0 + 2600);
  v13 = *(v0 + 2272);
  if (v11 == 1)
  {
    outlined destroy of UTType?(*(v0 + 2216), &_s10Foundation4DateVSgMd);
    if (v12(v8 + v10, 1, v13) == 1)
    {
      v14 = *(v0 + 2280);
      outlined destroy of UTType?(*(v0 + 2160), &_s10Foundation4DateVSgMd);
      (*(v14 + 8))(*(v0 + 2336), *(v0 + 2272));
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 2160), *(v0 + 2208), &_s10Foundation4DateVSgMd);
  if (v12(v8 + v10, 1, v13) == 1)
  {
    v15 = *(v0 + 2280);
    v16 = *(v0 + 2272);
    v17 = *(v0 + 2208);
    outlined destroy of UTType?(*(v0 + 2216), &_s10Foundation4DateVSgMd);
    (*(v15 + 8))(v17, v16);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 2160), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v51 = *(v0 + 2352);
  v52 = *(v0 + 2280);
  v53 = *(v0 + 2272);
  v54 = *(v0 + 2216);
  v55 = *(v0 + 2208);
  v56 = *(v0 + 2160);
  (*(v0 + 2616))(v51, v8 + v10, v53);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v52 + 8);
  v58(v51, v53);
  outlined destroy of UTType?(v54, &_s10Foundation4DateVSgMd);
  v58(v55, v53);
  outlined destroy of UTType?(v56, &_s10Foundation4DateVSgMd);
  if (v57)
  {
    v58(*(v0 + 2336), *(v0 + 2272));
    goto LABEL_19;
  }

LABEL_9:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 2536);
  v19 = *(v0 + 2488);
  v20 = *(v0 + 2480);
  v21 = *(v0 + 2408);
  v22 = *(v0 + 2336);
  v23 = *(v0 + 2328);
  v24 = *(v0 + 2272);
  v25 = *(v0 + 2136);
  v26 = __swift_project_value_buffer(v20, static CloudDevice.Log);
  swift_beginAccess();
  (*(v19 + 16))(v18, v26, v20);
  outlined init with copy of CloudDevice(v25, v21);
  v63(v23, v22, v24);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 2536);
  v31 = *(v0 + 2488);
  v32 = *(v0 + 2408);
  v33 = *(v0 + 2368);
  v67 = *(v0 + 2480);
  v69 = *(v0 + 2336);
  v34 = *(v0 + 2328);
  v35 = *(v0 + 2280);
  v36 = *(v0 + 2272);
  if (v29)
  {
    v61 = v28;
    v37 = *(v0 + 2232);
    v65 = *(v0 + 2368);
    v64 = *(v0 + 2536);
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v38 = 136446722;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000086, 0x80000002165860D0, v70);
    *(v38 + 12) = 2080;
    outlined init with copy of DateInterval?(v32 + *(v62 + 92), v37, &_s10Foundation4DateVSgMd);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    outlined destroy of CloudDevice(v32);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v70);

    *(v38 + 14) = v42;
    *(v38 + 22) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = *(v35 + 8);
    v46(v34, v36);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v70);

    *(v38 + 24) = v47;
    _os_log_impl(&dword_21607C000, v27, v61, "cloudDevice.%{public}s  lastSnapshotDownloadCompleteDate changed: %s -> %s. Updated hasEnvironmentChanged to true.", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v60, -1, -1);
    MEMORY[0x21CE94770](v38, -1, -1);

    (*(v31 + 8))(v64, v67);
    v46(v69, v36);
    v46(v65, v36);
  }

  else
  {

    v48 = *(v35 + 8);
    v48(v34, v36);
    outlined destroy of CloudDevice(v32);
    (*(v31 + 8))(v30, v67);
    v48(v69, v36);
    v48(v33, v36);
  }

  v49 = *(v0 + 8);

  return v49(1);
}

{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2112);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v71 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2200);
  if (v1(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_19:
    v59 = *(v0 + 2112);

    return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v59, 0);
  }

  v4 = *(v0 + 2376);
  v5 = *(v0 + 2320);
  v6 = *(v0 + 2280);
  v7 = *(v0 + 2192);
  v8 = *(v0 + 2152);
  v66 = *(v0 + 2144);
  v68 = *(v0 + 2136);
  (*(v0 + 2616))(v5, v3, v2);
  v62 = v4;
  v9 = *(v4 + 100);
  v63 = *(v6 + 16);
  v63(v7, v5, v2);
  (*(v6 + 56))(v7, 0, 1, v2);
  v10 = *(v66 + 48);
  outlined init with copy of DateInterval?(v68 + v9, v8, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v8 + v10, &_s10Foundation4DateVSgMd);
  v11 = v1(v8, 1, v2);
  v12 = *(v0 + 2600);
  v13 = *(v0 + 2272);
  if (v11 == 1)
  {
    outlined destroy of UTType?(*(v0 + 2192), &_s10Foundation4DateVSgMd);
    if (v12(v8 + v10, 1, v13) == 1)
    {
      v14 = *(v0 + 2280);
      outlined destroy of UTType?(*(v0 + 2152), &_s10Foundation4DateVSgMd);
      (*(v14 + 8))(*(v0 + 2320), *(v0 + 2272));
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 2152), *(v0 + 2184), &_s10Foundation4DateVSgMd);
  if (v12(v8 + v10, 1, v13) == 1)
  {
    v15 = *(v0 + 2280);
    v16 = *(v0 + 2272);
    v17 = *(v0 + 2184);
    outlined destroy of UTType?(*(v0 + 2192), &_s10Foundation4DateVSgMd);
    (*(v15 + 8))(v17, v16);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 2152), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v51 = *(v0 + 2352);
  v52 = *(v0 + 2280);
  v53 = *(v0 + 2272);
  v54 = *(v0 + 2192);
  v55 = *(v0 + 2184);
  v56 = *(v0 + 2152);
  (*(v0 + 2616))(v51, v8 + v10, v53);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v52 + 8);
  v58(v51, v53);
  outlined destroy of UTType?(v54, &_s10Foundation4DateVSgMd);
  v58(v55, v53);
  outlined destroy of UTType?(v56, &_s10Foundation4DateVSgMd);
  if (v57)
  {
    v58(*(v0 + 2320), *(v0 + 2272));
    goto LABEL_19;
  }

LABEL_9:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 2528);
  v19 = *(v0 + 2488);
  v20 = *(v0 + 2480);
  v21 = *(v0 + 2400);
  v22 = *(v0 + 2320);
  v23 = *(v0 + 2312);
  v24 = *(v0 + 2272);
  v25 = *(v0 + 2136);
  v26 = __swift_project_value_buffer(v20, static CloudDevice.Log);
  swift_beginAccess();
  (*(v19 + 16))(v18, v26, v20);
  outlined init with copy of CloudDevice(v25, v21);
  v63(v23, v22, v24);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 2528);
  v31 = *(v0 + 2488);
  v32 = *(v0 + 2400);
  v33 = *(v0 + 2368);
  v67 = *(v0 + 2480);
  v69 = *(v0 + 2320);
  v34 = *(v0 + 2312);
  v35 = *(v0 + 2280);
  v36 = *(v0 + 2272);
  if (v29)
  {
    v61 = v28;
    v37 = *(v0 + 2232);
    v65 = *(v0 + 2368);
    v64 = *(v0 + 2528);
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v38 = 136446722;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000086, 0x80000002165860D0, v70);
    *(v38 + 12) = 2080;
    outlined init with copy of DateInterval?(v32 + *(v62 + 100), v37, &_s10Foundation4DateVSgMd);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    outlined destroy of CloudDevice(v32);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v70);

    *(v38 + 14) = v42;
    *(v38 + 22) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = *(v35 + 8);
    v46(v34, v36);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v70);

    *(v38 + 24) = v47;
    _os_log_impl(&dword_21607C000, v27, v61, "cloudDevice.%{public}s  lastUILaunchDate changed: %s -> %s. Updated hasEnvironmentChanged to true.", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v60, -1, -1);
    MEMORY[0x21CE94770](v38, -1, -1);

    (*(v31 + 8))(v64, v67);
    v46(v69, v36);
    v46(v65, v36);
  }

  else
  {

    v48 = *(v35 + 8);
    v48(v34, v36);
    outlined destroy of CloudDevice(v32);
    (*(v31 + 8))(v30, v67);
    v48(v69, v36);
    v48(v33, v36);
  }

  v49 = *(v0 + 8);

  return v49(1);
}

{
  v1 = (*(v0 + 2112) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  *(v0 + 816) = *v1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  *(v0 + 864) = v1[3];
  *(v0 + 880) = v4;
  *(v0 + 832) = v2;
  *(v0 + 848) = v3;
  outlined init with copy of DateInterval?(v0 + 816, v0 + 976, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v166 = v0;
  v1 = *(v0 + 816);
  v2 = (v0 + 824);
  *(v0 + 1600) = *(v0 + 888);
  v3 = *(v0 + 824);
  *(v0 + 1552) = *(v0 + 840);
  v4 = *(v0 + 872);
  *(v0 + 1568) = *(v0 + 856);
  *(v0 + 1584) = v4;
  *(v0 + 1536) = v3;
  if (v1 != 1)
  {
    CloudDevice.snapshotEventAggregation.getter(&v153);
    v5 = v153;
    v6 = *(v0 + 816);
    v7 = *(v0 + 872);
    v161 = *(v0 + 856);
    v162 = v7;
    v163 = *(v0 + 888);
    v8 = *(v0 + 840);
    v159 = *v2;
    v160 = v8;
    if (v153 == 1)
    {
      if (v6 == 1)
      {
        *(v0 + 1136) = 1;
        v9 = v155;
        v10 = v157;
        *(v0 + 1176) = v156;
        *(v0 + 1192) = v10;
        *(v0 + 1208) = v158;
        *(v0 + 1144) = v154;
        *(v0 + 1160) = v9;
        v11 = v0 + 1136;
LABEL_17:
        outlined destroy of UTType?(v11, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
        goto LABEL_18;
      }

      v18 = *(v0 + 864);
      *(v0 + 1248) = *(v0 + 848);
      *(v0 + 1264) = v18;
      *(v0 + 1280) = *(v0 + 880);
      v19 = *(v0 + 832);
      *(v0 + 1216) = *(v0 + 816);
      *(v0 + 1232) = v19;
      outlined init with copy of CloudDevicesDB.SnapshotEventAggregation(v0 + 1216, v0 + 1296);
    }

    else
    {
      *(v0 + 1056) = v153;
      v12 = v155;
      v13 = v157;
      *(v0 + 1096) = v156;
      *(v0 + 1112) = v13;
      *(v0 + 1128) = v158;
      *(v0 + 1064) = v154;
      *(v0 + 1080) = v12;
      v14 = *(v0 + 1104);
      v164[2] = *(v0 + 1088);
      v164[3] = v14;
      v164[4] = *(v0 + 1120);
      v15 = *(v0 + 1072);
      v164[0] = *(v0 + 1056);
      v164[1] = v15;
      if (v6 != 1)
      {
        v45 = *v2;
        *&v165[24] = *(v0 + 840);
        v46 = *(v0 + 872);
        *&v165[40] = *(v0 + 856);
        *&v165[56] = v46;
        v47 = *(v0 + 888);
        *&v165[8] = v45;
        *&v165[72] = v47;
        *v165 = v6;
        outlined init with copy of DateInterval?(v0 + 816, v0 + 336, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
        outlined init with copy of DateInterval?(v0 + 1056, v0 + 256, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
        v48 = specialized static CloudDevicesDB.SnapshotEventAggregation.== infix(_:_:)(v164, v165);
        v49 = *&v165[48];
        *(v0 + 448) = *&v165[32];
        *(v0 + 464) = v49;
        *(v0 + 480) = *&v165[64];
        v50 = *&v165[16];
        *(v0 + 416) = *v165;
        *(v0 + 432) = v50;
        outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v0 + 416);
        v51 = v164[3];
        *(v0 + 528) = v164[2];
        *(v0 + 544) = v51;
        *(v0 + 560) = v164[4];
        v52 = v164[1];
        *(v0 + 496) = v164[0];
        *(v0 + 512) = v52;
        outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v0 + 496);
        *(v0 + 576) = v5;
        v53 = v155;
        v54 = v157;
        *(v0 + 616) = v156;
        *(v0 + 632) = v54;
        *(v0 + 648) = v158;
        *(v0 + 584) = v154;
        *(v0 + 600) = v53;
        outlined destroy of UTType?(v0 + 576, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
        if (v48)
        {
          v11 = v0 + 816;
          goto LABEL_17;
        }

LABEL_9:
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 2520);
        v23 = *(v0 + 2488);
        v24 = *(v0 + 2480);
        v25 = *(v0 + 2392);
        v26 = *(v0 + 2136);
        v27 = __swift_project_value_buffer(v24, static CloudDevice.Log);
        swift_beginAccess();
        (*(v23 + 16))(v22, v27, v24);
        outlined init with copy of CloudDevice(v26, v25);
        v28 = *(v0 + 864);
        *(v0 + 1408) = *(v0 + 848);
        *(v0 + 1424) = v28;
        *(v0 + 1440) = *(v0 + 880);
        v29 = *(v0 + 832);
        *(v0 + 1376) = *(v0 + 816);
        *(v0 + 1392) = v29;
        outlined init with copy of CloudDevicesDB.SnapshotEventAggregation(v0 + 1376, v0 + 176);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        outlined destroy of UTType?(v0 + 816, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
        if (os_log_type_enabled(v30, v31))
        {
          v148 = v31;
          v32 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v153 = v145;
          *v32 = 136446722;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000086, 0x80000002165860D0, &v153);
          *(v32 + 12) = 2080;
          CloudDevice.snapshotEventAggregation.getter(v164);
          v33 = v164[4];
          *(v0 + 1504) = v164[3];
          *(v0 + 1520) = v33;
          v34 = v164[2];
          *(v0 + 1472) = v164[1];
          *(v0 + 1488) = v34;
          *(v0 + 1456) = v164[0];
          v35 = *(v0 + 1456);
          if (v35 == 1)
          {
            v36 = 7104878;
            v37 = 0xE300000000000000;
          }

          else
          {
            *&v165[24] = *(&v164[1] + 8);
            *&v165[40] = *(&v164[2] + 8);
            *&v165[56] = *(&v164[3] + 8);
            *v165 = v35;
            *&v165[72] = *(&v164[4] + 1);
            *&v165[8] = *(v164 + 8);
            v36 = CloudDevicesDB.SnapshotEventAggregation.description.getter();
            v37 = v115;
            outlined destroy of UTType?(v0 + 1456, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
          }

          v116 = *(v0 + 2488);
          v135 = *(v0 + 2480);
          v138 = *(v0 + 2520);
          v117 = *(v0 + 2280);
          v140 = *(v0 + 2272);
          v143 = *(v0 + 2368);
          outlined destroy of CloudDevice(*(v0 + 2392));
          v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v153);

          *(v32 + 14) = v118;
          *(v32 + 22) = 2080;
          v119 = *(v0 + 1536);
          *&v165[24] = *(v0 + 1552);
          v120 = *(v0 + 1584);
          *&v165[40] = *(v0 + 1568);
          *&v165[56] = v120;
          v121 = *(v0 + 1600);
          *v165 = v1;
          *&v165[72] = v121;
          *&v165[8] = v119;
          v122 = CloudDevicesDB.SnapshotEventAggregation.description.getter();
          v124 = v123;
          outlined destroy of UTType?(v0 + 816, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
          v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v153);

          *(v32 + 24) = v125;
          _os_log_impl(&dword_21607C000, v30, v148, "cloudDevice.%{public}s  snapshotEventAggregation changed: %s -> %s. Updated hasEnvironmentChanged to true.", v32, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v145, -1, -1);
          MEMORY[0x21CE94770](v32, -1, -1);

          (*(v116 + 8))(v138, v135);
          (*(v117 + 8))(v143, v140);
          goto LABEL_45;
        }

        v38 = *(v0 + 2520);
        v39 = *(v0 + 2488);
        v40 = *(v0 + 2480);
        v41 = *(v0 + 2392);
        v42 = *(v0 + 2368);
        v43 = *(v0 + 2280);
        v44 = *(v0 + 2272);

        outlined destroy of UTType?(v0 + 816, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
        outlined destroy of CloudDevice(v41);
        (*(v39 + 8))(v38, v40);
        goto LABEL_40;
      }

      v16 = *(v0 + 1104);
      *(v0 + 928) = *(v0 + 1088);
      *(v0 + 944) = v16;
      *(v0 + 960) = *(v0 + 1120);
      v17 = *(v0 + 1072);
      *(v0 + 896) = *(v0 + 1056);
      *(v0 + 912) = v17;
      outlined init with copy of DateInterval?(v0 + 816, v0 + 736, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
      outlined init with copy of DateInterval?(v0 + 1056, v0 + 656, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
      outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v0 + 896);
    }

    *(v0 + 40) = v155;
    *(v0 + 56) = v156;
    *(v0 + 72) = v157;
    *(v0 + 24) = v154;
    v20 = v159;
    *(v0 + 120) = v160;
    v21 = v162;
    *(v0 + 136) = v161;
    *(v0 + 152) = v21;
    *(v0 + 16) = v5;
    *(v0 + 88) = v158;
    *(v0 + 96) = v6;
    *(v0 + 168) = v163;
    *(v0 + 104) = v20;
    outlined destroy of UTType?(v0 + 16, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSg_AFtMd);
    goto LABEL_9;
  }

LABEL_18:
  v55 = *(v0 + 2128);
  if (!v55 || (v56 = *(v0 + 2376), v57 = (*(v0 + 2136) + *(v56 + 108)), (v58 = v57[1]) != 0) && (v58 == v55 ? (v59 = *v57 == *(v0 + 2120)) : (v59 = 0), v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v61 = v60;
    v62 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v63)
    {
      if (v61 >= 3000.0)
      {
LABEL_27:
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v64 = *(v0 + 2504);
        v65 = *(v0 + 2488);
        v66 = *(v0 + 2480);
        v67 = *(v0 + 2368);
        v149 = *(v0 + 2304);
        v68 = *(v0 + 2296);
        v69 = *(v0 + 2288);
        v70 = *(v0 + 2280);
        v71 = *(v0 + 2272);
        v72 = __swift_project_value_buffer(v66, static CloudDevice.Log);
        swift_beginAccess();
        (*(v65 + 16))(v64, v72, v66);
        v73 = *(v70 + 16);
        v73(v68, v67, v71);
        v73(v69, v149, v71);
        v74 = Logger.logObject.getter();
        v146 = static os_log_type_t.debug.getter();
        v75 = os_log_type_enabled(v74, v146);
        v76 = *(v0 + 2504);
        v77 = *(v0 + 2488);
        v150 = *(v0 + 2480);
        v78 = *(v0 + 2368);
        v79 = *(v0 + 2304);
        v80 = *(v0 + 2296);
        v81 = *(v0 + 2288);
        v82 = *(v0 + 2280);
        v83 = *(v0 + 2272);
        if (v75)
        {
          v142 = *(v0 + 2504);
          v84 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *v165 = v137;
          *v84 = 136446978;
          *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000086, 0x80000002165860D0, v165);
          *(v84 + 12) = 2080;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v134 = v79;
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          log = v74;
          v87 = v86;
          v88 = *(v82 + 8);
          v88(v80, v83);
          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v165);

          *(v84 + 14) = v89;
          *(v84 + 22) = 2080;
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          v88(v81, v83);
          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v165);

          *(v84 + 24) = v93;
          *(v84 + 32) = 2048;
          *(v84 + 34) = v61;
          _os_log_impl(&dword_21607C000, log, v146, "cloudDevice.%{public}s Device modification date stale: %s vs %s (%f)", v84, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v137, -1, -1);
          MEMORY[0x21CE94770](v84, -1, -1);

          (*(v77 + 8))(v142, v150);
          v88(v134, v83);
          v88(v78, v83);
        }

        else
        {

          v110 = *(v82 + 8);
          v110(v81, v83);
          v110(v80, v83);
          (*(v77 + 8))(v76, v150);
          v110(v79, v83);
          v110(v78, v83);
        }

        goto LABEL_45;
      }
    }

    else if (v61 >= v62)
    {
      goto LABEL_27;
    }

    v94 = *(v0 + 2368);
    v95 = *(v0 + 2272);
    v96 = *(*(v0 + 2280) + 8);
    v96(*(v0 + 2304), v95);
    v96(v94, v95);
    v151 = 0;
    goto LABEL_46;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v97 = *(v0 + 2512);
  v98 = *(v0 + 2488);
  v99 = *(v0 + 2480);
  v100 = *(v0 + 2384);
  v101 = *(v0 + 2136);
  v102 = __swift_project_value_buffer(v99, static CloudDevice.Log);
  swift_beginAccess();
  (*(v98 + 16))(v97, v102, v99);
  outlined init with copy of CloudDevice(v101, v100);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v152 = v104;
    v105 = *(v0 + 2384);
    v106 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *v165 = v147;
    *v106 = 136446722;
    *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000086, 0x80000002165860D0, v165);
    *(v106 + 12) = 2080;
    v107 = (v105 + *(v56 + 108));
    if (v107[1])
    {
      v108 = *v107;
      v109 = v107[1];
    }

    else
    {
      v108 = 7104878;
      v109 = 0xE300000000000000;
    }

    v126 = *(v0 + 2488);
    v136 = *(v0 + 2480);
    v139 = *(v0 + 2512);
    v127 = *(v0 + 2384);
    v128 = *(v0 + 2280);
    v141 = *(v0 + 2272);
    v144 = *(v0 + 2368);
    v129 = *(v0 + 2120);

    outlined destroy of CloudDevice(v127);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v165);

    *(v106 + 14) = v130;
    *(v106 + 22) = 2080;
    *(v106 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v55, v165);
    _os_log_impl(&dword_21607C000, v103, v152, "cloudDevice.%{public}s Snapshot generation changed: %s -> %s", v106, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v147, -1, -1);
    MEMORY[0x21CE94770](v106, -1, -1);

    (*(v126 + 8))(v139, v136);
    (*(v128 + 8))(v144, v141);
    goto LABEL_45;
  }

  v111 = *(v0 + 2512);
  v112 = *(v0 + 2488);
  v113 = *(v0 + 2480);
  v114 = *(v0 + 2384);
  v42 = *(v0 + 2368);
  v43 = *(v0 + 2280);
  v44 = *(v0 + 2272);

  outlined destroy of CloudDevice(v114);
  (*(v112 + 8))(v111, v113);
LABEL_40:
  (*(v43 + 8))(v42, v44);
LABEL_45:
  v151 = 1;
LABEL_46:

  v131 = *(v0 + 8);

  return v131(v151);
}

uint64_t CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, char a6, char a7)
{
  *(v8 + 1936) = v7;
  *(v8 + 2274) = a7;
  *(v8 + 2273) = a6;
  *(v8 + 2272) = a5;
  *(v8 + 1928) = a3;
  *(v8 + 1920) = a2;
  *(v8 + 1912) = a1;
  v10 = type metadata accessor for Logger();
  *(v8 + 1944) = v10;
  *(v8 + 1952) = *(v10 - 8);
  *(v8 + 1960) = swift_task_alloc();
  *(v8 + 1968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  *(v8 + 1976) = swift_task_alloc();
  *(v8 + 1984) = swift_task_alloc();
  *(v8 + 1992) = swift_task_alloc();
  *(v8 + 2000) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v8 + 2008) = swift_task_alloc();
  *(v8 + 2016) = swift_task_alloc();
  *(v8 + 2024) = swift_task_alloc();
  *(v8 + 2032) = swift_task_alloc();
  *(v8 + 2040) = swift_task_alloc();
  *(v8 + 2048) = swift_task_alloc();
  *(v8 + 2056) = swift_task_alloc();
  *(v8 + 2064) = swift_task_alloc();
  *(v8 + 2072) = swift_task_alloc();
  *(v8 + 2080) = swift_task_alloc();
  *(v8 + 2088) = swift_task_alloc();
  *(v8 + 2096) = swift_task_alloc();
  *(v8 + 2104) = swift_task_alloc();
  *(v8 + 2112) = swift_task_alloc();
  *(v8 + 2120) = swift_task_alloc();
  *(v8 + 2128) = swift_task_alloc();
  *(v8 + 2136) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v8 + 2144) = v11;
  *(v8 + 2152) = *(v11 - 8);
  *(v8 + 2160) = swift_task_alloc();
  *(v8 + 2168) = swift_task_alloc();
  *(v8 + 2176) = swift_task_alloc();
  *(v8 + 2184) = swift_task_alloc();
  *(v8 + 2192) = swift_task_alloc();
  *(v8 + 2200) = swift_task_alloc();
  *(v8 + 2208) = swift_task_alloc();
  *(v8 + 2216) = swift_task_alloc();
  *(v8 + 2224) = swift_task_alloc();
  *(v8 + 2232) = swift_task_alloc();
  *(v8 + 2240) = swift_task_alloc();
  *(v8 + 2275) = *a4;

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

uint64_t CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)()
{
  v47 = v0;
  Device = specialized static CloudDevice._getDeviceName()(0x72657475706D6F43, 0xEC000000656D614ELL, "Computer Name: %s");
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = Device;
  v4 = v2;
  v5 = *(v0 + 1936);
  v6 = (v5 + *(type metadata accessor for CloudDevice() + 32));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 == v3 && v7 == v4;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

LABEL_9:
      v9 = 0;
      goto LABEL_12;
    }
  }

  *v6 = v3;
  v6[1] = v4;
  v9 = 1;
LABEL_12:
  v10 = specialized static CloudDevice._getDeviceName()(0x56746375646F7250, 0xEE006E6F69737265, "OS Version: %s");
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = v10;
  v13 = v11;
  v14 = *(v0 + 1936);
  v15 = (v14 + *(type metadata accessor for CloudDevice() + 36));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15 == v12 && v16 == v13;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      goto LABEL_22;
    }
  }

  *v15 = v12;
  v15[1] = v13;
  v9 = 1;
LABEL_22:
  v18 = *(v0 + 1936);
  v19 = specialized static CloudDevice._getIdiom()();
  v20 = type metadata accessor for CloudDevice();
  *(v0 + 2248) = v20;
  v21 = v18 + v20[10];
  if (*(v21 + 8) == 1)
  {
    if (v19 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (*v21 != v19)
  {
LABEL_24:
    *v21 = v19;
    *(v21 + 8) = 0;
    v9 = 1;
  }

LABEL_25:
  v22 = static Locale.preferredLanguages.getter();
  if (v22[2])
  {
    v24 = v22[4];
    v23 = v22[5];
  }

  else
  {
    v23 = 0xE200000000000000;
    v24 = 28261;
  }

  v25 = *(v0 + 1936);

  v26 = (v25 + v20[11]);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26 == v24 && v27 == v23;
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      goto LABEL_39;
    }
  }

  *v26 = v24;
  v26[1] = v23;
  v9 = 1;
LABEL_39:
  v29 = *(v0 + 1936);
  v31 = specialized static CloudDevice._getDeviceName()(0x54746375646F7250, 0xEB00000000657079, "Machine Code: %s");
  v32 = v30;
  v33 = (v29 + v20[12]);
  v34 = v33[1];
  if (v34)
  {
    if (v30 && (*v33 == v31 && v34 == v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v30)
  {
LABEL_48:
    *v33 = v31;
    v33[1] = v32;
    v9 = 1;
  }

LABEL_49:
  v35 = *(v0 + 1936);
  v36 = v20[13];
  v37 = *(v35 + v36);
  if (v37)
  {
    v38 = *(v35 + v36);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v39 = *(v0 + 2272);
  v40 = *(v0 + 2273);
  v41 = *(v0 + 2274);
  v46 = *(v0 + 2275);
  swift_bridgeObjectRetain_n();
  v42 = specialized static CloudDevice.effectiveCapabilities(original:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(v38, &v46, v39, v40, v41);

  if (v37)
  {

    v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v37, v42);

    if (v43)
    {

      goto LABEL_57;
    }
  }

  *(v35 + v36) = v42;
  v9 = 1;
LABEL_57:
  *(v0 + 2276) = v9;
  v44 = *(v0 + 1912);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v44, 0);
}

{
  v1 = *(v0 + 2136);
  v2 = *(v0 + 1912);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotAnalyticsCreationDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v56 = v0;
  v1 = *(v0 + 2152);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 2136);
  v4 = v1[6];
  *(v0 + 2256) = v4;
  *(v0 + 2264) = (v1 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_17:
    v35 = *(v0 + 2276);
    goto LABEL_18;
  }

  v5 = *(v0 + 2248);
  v6 = *(v0 + 2240);
  v7 = *(v0 + 2120);
  v51 = *(v0 + 2128);
  v52 = *(v0 + 2000);
  v53 = *(v0 + 1968);
  v8 = *(v0 + 1936);
  v50 = v1[4];
  v50(v6, v3, v2);
  v48 = *(v5 + 88);
  v49 = v8;
  outlined init with copy of DateInterval?(v8 + v48, v51, &_s10Foundation4DateVSgMd);
  v46 = v1[2];
  v46(v7, v6, v2);
  v47 = v1[7];
  v47(v7, 0, 1, v2);
  v9 = *(v53 + 48);
  outlined init with copy of DateInterval?(v51, v52, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v52 + v9, &_s10Foundation4DateVSgMd);
  v10 = v4(v52, 1, v2);
  v11 = *(v0 + 2144);
  if (v10 == 1)
  {
    v12 = *(v0 + 2128);
    outlined destroy of UTType?(*(v0 + 2120), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v12, &_s10Foundation4DateVSgMd);
    if (v4(v52 + v9, 1, v11) == 1)
    {
      v13 = *(v0 + 2152);
      outlined destroy of UTType?(*(v0 + 2000), &_s10Foundation4DateVSgMd);
      (*(v13 + 8))(*(v0 + 2240), *(v0 + 2144));
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 2000), *(v0 + 2112), &_s10Foundation4DateVSgMd);
  if (v4(v52 + v9, 1, v11) == 1)
  {
    v14 = *(v0 + 2152);
    v15 = *(v0 + 2144);
    v16 = *(v0 + 2128);
    v17 = *(v0 + 2112);
    outlined destroy of UTType?(*(v0 + 2120), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v16, &_s10Foundation4DateVSgMd);
    (*(v14 + 8))(v17, v15);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 2000), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v36 = *(v0 + 2232);
  v37 = *(v0 + 2152);
  v38 = *(v0 + 2144);
  v39 = *(v0 + 2128);
  v40 = *(v0 + 2120);
  v41 = *(v0 + 2112);
  v54 = *(v0 + 2000);
  v50(v36, v52 + v9, v38);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v37 + 8);
  v43(v36, v38);
  outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v39, &_s10Foundation4DateVSgMd);
  v43(v41, v38);
  outlined destroy of UTType?(v54, &_s10Foundation4DateVSgMd);
  if (v42)
  {
    v43(*(v0 + 2240), *(v0 + 2144));
    goto LABEL_17;
  }

LABEL_9:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 2240);
  v19 = *(v0 + 2224);
  v20 = *(v0 + 2144);
  __swift_project_value_buffer(*(v0 + 1944), static CommonLogger.analytics);
  v46(v19, v18, v20);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 2224);
  v25 = *(v0 + 2152);
  v26 = *(v0 + 2144);
  if (v23)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55 = v28;
    *v27 = 136446466;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000082, 0x8000000216586160, &v55);
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v25 + 8))(v24, v26);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v55);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_21607C000, v21, v22, "[CloudDevice.%{public}s] Updated lastSnapshotAnalyticsCreationDate to %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v28, -1, -1);
    MEMORY[0x21CE94770](v27, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
  }

  v33 = *(v0 + 2240);
  v34 = *(v0 + 2144);
  outlined destroy of UTType?(v49 + v48, &_s10Foundation4DateVSgMd);
  v50(v49 + v48, v33, v34);
  v35 = 1;
  v47(v49 + v48, 0, 1, v34);
LABEL_18:
  *(v0 + 2277) = v35;
  v44 = *(v0 + 1912);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v44, 0);
}

{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 1912);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v57 = v0;
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 2104);
  if (v1(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_17:
    v36 = *(v0 + 2277);
    goto LABEL_18;
  }

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2216);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2088);
  v52 = *(v0 + 2096);
  v53 = *(v0 + 1992);
  v54 = *(v0 + 1968);
  v8 = *(v0 + 1936);
  v51 = v6[4];
  v51(v5, v3, v2);
  v49 = *(v4 + 92);
  v50 = v8;
  outlined init with copy of DateInterval?(v8 + v49, v52, &_s10Foundation4DateVSgMd);
  v47 = v6[2];
  v47(v7, v5, v2);
  v48 = v6[7];
  v48(v7, 0, 1, v2);
  v9 = *(v54 + 48);
  outlined init with copy of DateInterval?(v52, v53, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v53 + v9, &_s10Foundation4DateVSgMd);
  v10 = v1(v53, 1, v2);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2144);
  if (v10 == 1)
  {
    v13 = *(v0 + 2096);
    outlined destroy of UTType?(*(v0 + 2088), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
    if (v11(v53 + v9, 1, v12) == 1)
    {
      v14 = *(v0 + 2152);
      outlined destroy of UTType?(*(v0 + 1992), &_s10Foundation4DateVSgMd);
      (*(v14 + 8))(*(v0 + 2216), *(v0 + 2144));
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 1992), *(v0 + 2080), &_s10Foundation4DateVSgMd);
  if (v11(v53 + v9, 1, v12) == 1)
  {
    v15 = *(v0 + 2152);
    v16 = *(v0 + 2144);
    v17 = *(v0 + 2096);
    v18 = *(v0 + 2080);
    outlined destroy of UTType?(*(v0 + 2088), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v17, &_s10Foundation4DateVSgMd);
    (*(v15 + 8))(v18, v16);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 1992), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v37 = *(v0 + 2232);
  v38 = *(v0 + 2152);
  v39 = *(v0 + 2144);
  v40 = *(v0 + 2096);
  v41 = *(v0 + 2088);
  v42 = *(v0 + 2080);
  v55 = *(v0 + 1992);
  v51(v37, v53 + v9, v39);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v38 + 8);
  v44(v37, v39);
  outlined destroy of UTType?(v41, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
  v44(v42, v39);
  outlined destroy of UTType?(v55, &_s10Foundation4DateVSgMd);
  if (v43)
  {
    v44(*(v0 + 2216), *(v0 + 2144));
    goto LABEL_17;
  }

LABEL_9:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2144);
  __swift_project_value_buffer(*(v0 + 1944), static CommonLogger.analytics);
  v47(v20, v19, v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 2208);
  v26 = *(v0 + 2152);
  v27 = *(v0 + 2144);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56 = v29;
    *v28 = 136446466;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000082, 0x8000000216586160, &v56);
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v56);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_21607C000, v22, v23, "[CloudDevice.%{public}s] Updated lastSnapshotDownloadCompleteDate to %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  v34 = *(v0 + 2216);
  v35 = *(v0 + 2144);
  outlined destroy of UTType?(v50 + v49, &_s10Foundation4DateVSgMd);
  v51(v50 + v49, v34, v35);
  v36 = 1;
  v48(v50 + v49, 0, 1, v35);
LABEL_18:
  *(v0 + 2278) = v36;
  v45 = *(v0 + 1912);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v45, 0);
}

{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 1912);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v57 = v0;
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 2072);
  if (v1(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_17:
    v36 = *(v0 + 2278);
    goto LABEL_18;
  }

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2200);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2056);
  v52 = *(v0 + 2064);
  v53 = *(v0 + 1984);
  v54 = *(v0 + 1968);
  v8 = *(v0 + 1936);
  v51 = v6[4];
  v51(v5, v3, v2);
  v49 = *(v4 + 96);
  v50 = v8;
  outlined init with copy of DateInterval?(v8 + v49, v52, &_s10Foundation4DateVSgMd);
  v47 = v6[2];
  v47(v7, v5, v2);
  v48 = v6[7];
  v48(v7, 0, 1, v2);
  v9 = *(v54 + 48);
  outlined init with copy of DateInterval?(v52, v53, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v53 + v9, &_s10Foundation4DateVSgMd);
  v10 = v1(v53, 1, v2);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2144);
  if (v10 == 1)
  {
    v13 = *(v0 + 2064);
    outlined destroy of UTType?(*(v0 + 2056), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
    if (v11(v53 + v9, 1, v12) == 1)
    {
      v14 = *(v0 + 2152);
      outlined destroy of UTType?(*(v0 + 1984), &_s10Foundation4DateVSgMd);
      (*(v14 + 8))(*(v0 + 2200), *(v0 + 2144));
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 1984), *(v0 + 2048), &_s10Foundation4DateVSgMd);
  if (v11(v53 + v9, 1, v12) == 1)
  {
    v15 = *(v0 + 2152);
    v16 = *(v0 + 2144);
    v17 = *(v0 + 2064);
    v18 = *(v0 + 2048);
    outlined destroy of UTType?(*(v0 + 2056), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v17, &_s10Foundation4DateVSgMd);
    (*(v15 + 8))(v18, v16);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 1984), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v37 = *(v0 + 2232);
  v38 = *(v0 + 2152);
  v39 = *(v0 + 2144);
  v40 = *(v0 + 2064);
  v41 = *(v0 + 2056);
  v42 = *(v0 + 2048);
  v55 = *(v0 + 1984);
  v51(v37, v53 + v9, v39);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v38 + 8);
  v44(v37, v39);
  outlined destroy of UTType?(v41, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
  v44(v42, v39);
  outlined destroy of UTType?(v55, &_s10Foundation4DateVSgMd);
  if (v43)
  {
    v44(*(v0 + 2200), *(v0 + 2144));
    goto LABEL_17;
  }

LABEL_9:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 2200);
  v20 = *(v0 + 2192);
  v21 = *(v0 + 2144);
  __swift_project_value_buffer(*(v0 + 1944), static CommonLogger.analytics);
  v47(v20, v19, v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 2192);
  v26 = *(v0 + 2152);
  v27 = *(v0 + 2144);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56 = v29;
    *v28 = 136446466;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000082, 0x8000000216586160, &v56);
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v56);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_21607C000, v22, v23, "[CloudDevice.%{public}s] Updated lastSnapshotCreationDate to %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  v34 = *(v0 + 2200);
  v35 = *(v0 + 2144);
  outlined destroy of UTType?(v50 + v49, &_s10Foundation4DateVSgMd);
  v51(v50 + v49, v34, v35);
  v36 = 1;
  v48(v50 + v49, 0, 1, v35);
LABEL_18:
  *(v0 + 2279) = v36;
  v45 = *(v0 + 1912);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v45, 0);
}

{
  v1 = *(v0 + 2040);
  v2 = *(v0 + 1912);
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation4DateVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v57 = v0;
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 2040);
  if (v1(v3, 1, v2) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
LABEL_17:
    v36 = *(v0 + 2279);
    goto LABEL_18;
  }

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2184);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2024);
  v52 = *(v0 + 2032);
  v53 = *(v0 + 1976);
  v54 = *(v0 + 1968);
  v8 = *(v0 + 1936);
  v51 = v6[4];
  v51(v5, v3, v2);
  v49 = *(v4 + 100);
  v50 = v8;
  outlined init with copy of DateInterval?(v8 + v49, v52, &_s10Foundation4DateVSgMd);
  v47 = v6[2];
  v47(v7, v5, v2);
  v48 = v6[7];
  v48(v7, 0, 1, v2);
  v9 = *(v54 + 48);
  outlined init with copy of DateInterval?(v52, v53, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v7, v53 + v9, &_s10Foundation4DateVSgMd);
  v10 = v1(v53, 1, v2);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2144);
  if (v10 == 1)
  {
    v13 = *(v0 + 2032);
    outlined destroy of UTType?(*(v0 + 2024), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
    if (v11(v53 + v9, 1, v12) == 1)
    {
      v14 = *(v0 + 2152);
      outlined destroy of UTType?(*(v0 + 1976), &_s10Foundation4DateVSgMd);
      (*(v14 + 8))(*(v0 + 2184), *(v0 + 2144));
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  outlined init with copy of DateInterval?(*(v0 + 1976), *(v0 + 2016), &_s10Foundation4DateVSgMd);
  if (v11(v53 + v9, 1, v12) == 1)
  {
    v15 = *(v0 + 2152);
    v16 = *(v0 + 2144);
    v17 = *(v0 + 2032);
    v18 = *(v0 + 2016);
    outlined destroy of UTType?(*(v0 + 2024), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v17, &_s10Foundation4DateVSgMd);
    (*(v15 + 8))(v18, v16);
LABEL_8:
    outlined destroy of UTType?(*(v0 + 1976), &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_9;
  }

  v37 = *(v0 + 2232);
  v38 = *(v0 + 2152);
  v39 = *(v0 + 2144);
  v40 = *(v0 + 2032);
  v41 = *(v0 + 2024);
  v42 = *(v0 + 2016);
  v55 = *(v0 + 1976);
  v51(v37, v53 + v9, v39);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v38 + 8);
  v44(v37, v39);
  outlined destroy of UTType?(v41, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
  v44(v42, v39);
  outlined destroy of UTType?(v55, &_s10Foundation4DateVSgMd);
  if (v43)
  {
    v44(*(v0 + 2184), *(v0 + 2144));
    goto LABEL_17;
  }

LABEL_9:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 2184);
  v20 = *(v0 + 2176);
  v21 = *(v0 + 2144);
  __swift_project_value_buffer(*(v0 + 1944), static CommonLogger.analytics);
  v47(v20, v19, v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 2176);
  v26 = *(v0 + 2152);
  v27 = *(v0 + 2144);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56 = v29;
    *v28 = 136446466;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000082, 0x8000000216586160, &v56);
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v56);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_21607C000, v22, v23, "[CloudDevice.%{public}s] Updated lastUILaunchDate to %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  v34 = *(v0 + 2184);
  v35 = *(v0 + 2144);
  outlined destroy of UTType?(v50 + v49, &_s10Foundation4DateVSgMd);
  v51(v50 + v49, v34, v35);
  v36 = 1;
  v48(v50 + v49, 0, 1, v35);
LABEL_18:
  *(v0 + 2280) = v36;
  v45 = *(v0 + 1912);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), v45, 0);
}

{
  v1 = (*(v0 + 1912) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  *(v0 + 416) = *v1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  *(v0 + 464) = v1[3];
  *(v0 + 480) = v4;
  *(v0 + 432) = v2;
  *(v0 + 448) = v3;
  outlined init with copy of DateInterval?(v0 + 416, v0 + 576, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);

  return MEMORY[0x2822009F8](CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:), 0, 0);
}

{
  v121 = v0;
  v1 = *(v0 + 416);
  v2 = (v0 + 424);
  *(v0 + 1760) = *(v0 + 488);
  v3 = *(v0 + 424);
  *(v0 + 1712) = *(v0 + 440);
  v4 = *(v0 + 472);
  *(v0 + 1728) = *(v0 + 456);
  *(v0 + 1744) = v4;
  *(v0 + 1696) = v3;
  if (v1 == 1)
  {
    goto LABEL_18;
  }

  CloudDevice.snapshotEventAggregation.getter(&v104);
  v5 = v104;
  v6 = *(v0 + 416);
  v7 = *(v0 + 472);
  v112 = *(v0 + 456);
  v113 = v7;
  v114 = *(v0 + 488);
  v8 = *(v0 + 440);
  v110 = *v2;
  v111 = v8;
  if (v104 == 1)
  {
    if (v6 == 1)
    {
      *(v0 + 1216) = 1;
      v9 = v106;
      v10 = v108;
      *(v0 + 1256) = v107;
      *(v0 + 1272) = v10;
      *(v0 + 1288) = v109;
      *(v0 + 1224) = v105;
      *(v0 + 1240) = v9;
      v11 = v0 + 1216;
LABEL_17:
      outlined destroy of UTType?(v11, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
LABEL_18:
      v38 = *(v0 + 2280);
      goto LABEL_19;
    }

    v18 = *(v0 + 464);
    *(v0 + 768) = *(v0 + 448);
    *(v0 + 784) = v18;
    *(v0 + 800) = *(v0 + 480);
    v19 = *(v0 + 432);
    *(v0 + 736) = *(v0 + 416);
    *(v0 + 752) = v19;
    outlined init with copy of DateInterval?(v0 + 416, v0 + 816, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    outlined init with copy of CloudDevicesDB.SnapshotEventAggregation(v0 + 736, v0 + 896);
    goto LABEL_8;
  }

  *(v0 + 1296) = v104;
  v12 = v106;
  v13 = v108;
  *(v0 + 1336) = v107;
  *(v0 + 1352) = v13;
  *(v0 + 1368) = v109;
  *(v0 + 1304) = v105;
  *(v0 + 1320) = v12;
  v14 = *(v0 + 1344);
  v117 = *(v0 + 1328);
  v118 = v14;
  v119 = *(v0 + 1360);
  v15 = *(v0 + 1312);
  v115 = *(v0 + 1296);
  v116 = v15;
  if (v6 == 1)
  {
    v16 = *(v0 + 1344);
    *(v0 + 1408) = *(v0 + 1328);
    *(v0 + 1424) = v16;
    *(v0 + 1440) = *(v0 + 1360);
    v17 = *(v0 + 1312);
    *(v0 + 1376) = *(v0 + 1296);
    *(v0 + 1392) = v17;
    outlined init with copy of DateInterval?(v0 + 416, v0 + 1456, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    outlined init with copy of DateInterval?(v0 + 416, v0 + 1536, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    outlined init with copy of DateInterval?(v0 + 1296, v0 + 1616, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v0 + 1376);
LABEL_8:
    *(v0 + 40) = v106;
    *(v0 + 56) = v107;
    *(v0 + 72) = v108;
    *(v0 + 24) = v105;
    v20 = v110;
    *(v0 + 120) = v111;
    v21 = v113;
    *(v0 + 136) = v112;
    *(v0 + 152) = v21;
    *(v0 + 16) = v5;
    *(v0 + 88) = v109;
    *(v0 + 96) = v6;
    *(v0 + 168) = v114;
    *(v0 + 104) = v20;
    outlined destroy of UTType?(v0 + 16, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSg_AFtMd);
    goto LABEL_9;
  }

  v39 = *v2;
  *&v120[24] = *(v0 + 440);
  v40 = *(v0 + 472);
  *&v120[40] = *(v0 + 456);
  *&v120[56] = v40;
  v41 = *(v0 + 488);
  *&v120[8] = v39;
  *&v120[72] = v41;
  *v120 = v6;
  outlined init with copy of DateInterval?(v0 + 416, v0 + 496, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  outlined init with copy of DateInterval?(v0 + 416, v0 + 336, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  outlined init with copy of DateInterval?(v0 + 1296, v0 + 176, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  v42 = specialized static CloudDevicesDB.SnapshotEventAggregation.== infix(_:_:)(&v115, v120);
  v43 = *&v120[48];
  *(v0 + 688) = *&v120[32];
  *(v0 + 704) = v43;
  *(v0 + 720) = *&v120[64];
  v44 = *&v120[16];
  *(v0 + 656) = *v120;
  *(v0 + 672) = v44;
  outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v0 + 656);
  v45 = v118;
  *(v0 + 1008) = v117;
  *(v0 + 1024) = v45;
  *(v0 + 1040) = v119;
  v46 = v116;
  *(v0 + 976) = v115;
  *(v0 + 992) = v46;
  outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v0 + 976);
  *(v0 + 256) = v5;
  v47 = v106;
  v48 = v108;
  *(v0 + 296) = v107;
  *(v0 + 312) = v48;
  *(v0 + 328) = v109;
  *(v0 + 264) = v105;
  *(v0 + 280) = v47;
  outlined destroy of UTType?(v0 + 256, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  if (v42)
  {
    outlined destroy of UTType?(v0 + 416, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    v11 = v0 + 416;
    goto LABEL_17;
  }

LABEL_9:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1944), static CommonLogger.analytics);
  v22 = *(v0 + 464);
  *(v0 + 1088) = *(v0 + 448);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 480);
  v23 = *(v0 + 432);
  *(v0 + 1056) = *(v0 + 416);
  *(v0 + 1072) = v23;
  outlined init with copy of CloudDevicesDB.SnapshotEventAggregation(v0 + 1056, v0 + 1136);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  outlined destroy of UTType?(v0 + 416, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v115 = v27;
    *v26 = 136446466;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000082, 0x8000000216586160, &v115);
    v29 = *(v0 + 1696);
    *&v120[24] = *(v0 + 1712);
    v30 = *(v0 + 1744);
    *&v120[40] = *(v0 + 1728);
    *&v120[56] = v30;
    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    v31 = *(v0 + 1760);
    *v120 = v1;
    *&v120[72] = v31;
    *&v120[8] = v29;
    v32 = CloudDevicesDB.SnapshotEventAggregation.description.getter();
    v34 = v33;
    outlined destroy of UTType?(v0 + 416, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v115);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_21607C000, v24, v25, "[CloudDevice.%{public}s] Updated snapshotEventAggregation to %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v27, -1, -1);
    MEMORY[0x21CE94770](v26, -1, -1);
  }

  else
  {
    outlined destroy of UTType?(v0 + 416, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  }

  v36 = *(v0 + 464);
  *&v120[32] = *(v0 + 448);
  *&v120[48] = v36;
  *&v120[64] = *(v0 + 480);
  v37 = *(v0 + 432);
  *v120 = *(v0 + 416);
  *&v120[16] = v37;
  CloudDevice.snapshotEventAggregation.setter(v120);
  v38 = 1;
LABEL_19:
  v49 = *(v0 + 1928);
  v50 = (*(v0 + 1936) + *(*(v0 + 2248) + 108));
  v51 = v50[1];
  if (v51)
  {
    if (v49)
    {
      v52 = *v50 == *(v0 + 1920) && v51 == v49;
      if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (!v49)
  {
    goto LABEL_39;
  }

  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 1928);
  __swift_project_value_buffer(*(v0 + 1944), static CommonLogger.analytics);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 1928);
    v57 = *(v0 + 1920);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v120 = v59;
    *v58 = 136446466;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000082, 0x8000000216586160, v120);
    *(v58 + 12) = 2080;
    v60 = v56 == 0;
    if (v56)
    {
      v61 = v57;
    }

    else
    {
      v61 = 7104878;
    }

    if (v60)
    {
      v62 = 0xE300000000000000;
    }

    else
    {
      v62 = v53;
    }

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v120);

    *(v58 + 14) = v63;
    _os_log_impl(&dword_21607C000, v54, v55, "[CloudDevice.%{public}s] Updated snapshotGeneration to %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v59, -1, -1);
    MEMORY[0x21CE94770](v58, -1, -1);
  }

  v64 = *(v0 + 1928);
  v65 = *(v0 + 1920);

  *v50 = v65;
  v50[1] = v64;
  v38 = 1;
LABEL_39:
  v66 = *(v0 + 2256);
  v67 = *(v0 + 2248);
  v68 = *(v0 + 2144);
  v69 = *(v0 + 2008);
  v70 = *(v0 + 1936);
  Date.init()();
  v71 = *(v67 + 28);
  outlined init with copy of DateInterval?(v70 + v71, v69, &_s10Foundation4DateVSgMd);
  if (v66(v69, 1, v68) == 1)
  {
    v72 = *(v0 + 2168);
    v73 = *(v0 + 2152);
    v74 = *(v0 + 2144);
    outlined destroy of UTType?(*(v0 + 2008), &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v70 + v71, &_s10Foundation4DateVSgMd);
    (*(v73 + 32))(v70 + v71, v72, v74);
    (*(v73 + 56))(v70 + v71, 0, 1, v74);
    goto LABEL_52;
  }

  v75 = *(*(v0 + 2152) + 32);
  v75(*(v0 + 2160), *(v0 + 2008), *(v0 + 2144));
  v76 = *(v0 + 2168);
  v77 = *(v0 + 2160);
  if (v38)
  {
    goto LABEL_45;
  }

  Date.timeIntervalSince(_:)();
  v79 = v78;
  v80 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v81)
  {
    if (v79 >= 3000.0)
    {
LABEL_44:
      v76 = *(v0 + 2168);
      v77 = *(v0 + 2160);
LABEL_45:
      v82 = *(v0 + 2152);
      v83 = *(v0 + 2144);
      (*(v82 + 8))(v77, v83);
      outlined destroy of UTType?(v70 + v71, &_s10Foundation4DateVSgMd);
      v75(v70 + v71, v76, v83);
      (*(v82 + 56))(v70 + v71, 0, 1, v83);
      goto LABEL_52;
    }
  }

  else if (v79 >= v80)
  {
    goto LABEL_44;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v84 = *(v0 + 1960);
  v85 = *(v0 + 1952);
  v86 = *(v0 + 1944);
  v87 = __swift_project_value_buffer(v86, static CloudDevice.Log);
  swift_beginAccess();
  (*(v85 + 16))(v84, v87, v86);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  v90 = os_log_type_enabled(v88, v89);
  v91 = *(v0 + 2168);
  v92 = *(v0 + 2160);
  v93 = *(v0 + 2152);
  v94 = *(v0 + 2144);
  v95 = *(v0 + 1960);
  v96 = *(v0 + 1952);
  v97 = *(v0 + 1944);
  if (v90)
  {
    v103 = *(v0 + 2168);
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_21607C000, v88, v89, "Device model up-to-date, not updating userModificationDate", v98, 2u);
    MEMORY[0x21CE94770](v98, -1, -1);

    (*(v96 + 8))(v95, v97);
    v99 = *(v93 + 8);
    v99(v92, v94);
    v99(v103, v94);
  }

  else
  {

    (*(v96 + 8))(v95, v97);
    v100 = *(v93 + 8);
    v100(v92, v94);
    v100(v91, v94);
  }

LABEL_52:

  v101 = *(v0 + 8);

  return v101();
}

double CloudDevice.snapshotEventAggregation.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6];
  if (*(v1 + *(type metadata accessor for CloudDevice() + 104) + 8) >> 60 == 15)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, static CloudDevice.Log);
    swift_beginAccess();
    (*(v4 + 16))(v7, v8, v3);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000002165842A0, &v21);
      _os_log_impl(&dword_21607C000, v9, v10, "CloudDevice.%{public}s snapshotEventAggregationData is nil. returning new SnapshotEventAggregation", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    *&v14 = 0;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v13 = v19;
    a1[2] = v18;
    a1[3] = v13;
    a1[4] = v20;
    v14 = v17;
    *a1 = *&v16[8];
    a1[1] = v14;
  }

  return *&v14;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (v6 == 6)
        {
          v9 = 0x756F527465737361;
        }

        else
        {
          v9 = 0x6174536775626564;
        }

        v10 = 0xEA0000000000656CLL;
        if (v6 == 6)
        {
          v10 = 0xEE00626F6C426574;
        }

        v11 = 1280328553;
        if (v6 != 4)
        {
          v11 = 0x68746C616548;
        }

        v12 = 0xE400000000000000;
        if (v6 != 4)
        {
          v12 = 0xE600000000000000;
        }

        if (*v3 <= 5u)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (*v3 <= 5u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v7 = 0x64756F6C43776F6CLL;
          v8 = 0xEF656761726F7453;
        }

        else
        {
          v7 = 0x6469766F72506F6ELL;
          v8 = 0xEB00000000737265;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v7 = 0x626E4F726576656ELL;
        }

        if (*v3)
        {
          v8 = 0xEF656761726F7453;
        }

        else
        {
          v8 = 0xEE0064656472616FLL;
        }
      }

      v13 = *v4;
      if (v13 > 3)
      {
        if (*v4 > 5u)
        {
          if (v13 == 6)
          {
            v15 = 0xEE00626F6C426574;
            if (v7 != 0x756F527465737361)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v15 = 0xEA0000000000656CLL;
            if (v7 != 0x6174536775626564)
            {
LABEL_5:
              v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v5 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_6;
            }
          }
        }

        else if (v13 == 4)
        {
          v15 = 0xE400000000000000;
          if (v7 != 1280328553)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xE600000000000000;
          if (v7 != 0x68746C616548)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v13 == 2)
          {
            v16 = 0x64756F6C43776F6CLL;
LABEL_42:
            v15 = 0xEF656761726F7453;
            if (v7 != v16)
            {
              goto LABEL_5;
            }

            goto LABEL_52;
          }

          v14 = 0x6469766F72506F6ELL;
          v15 = 0xEB00000000737265;
        }

        else
        {
          v14 = 0x626E4F726576656ELL;
          v15 = 0xEE0064656472616FLL;
          if (*v4)
          {
            v16 = 0x6C61636F4C776F6CLL;
            goto LABEL_42;
          }
        }

        if (v7 != v14)
        {
          goto LABEL_5;
        }
      }

LABEL_52:
      if (v8 != v15)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t static CloudDevice.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudDevice.Class = a1;
  unk_27CA92AE8 = a2;
  byte_27CA92AF0 = a3;
  return result;
}

uint64_t CloudDevice.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudDevice.Log);
}

uint64_t static CloudDevice.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevice.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudDevice.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevice.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudDevice.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudDevice.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudDevice@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevice.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t CloudDevice.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CloudDevice.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudDevice.deviceID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CloudDevice.deviceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CloudDevice.bundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CloudDevice.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CloudDevice.userModificationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 28);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudDevice() + 32));

  return v1;
}

uint64_t CloudDevice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudDevice() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CloudDevice.systemVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudDevice() + 36));

  return v1;
}

uint64_t CloudDevice.systemVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudDevice() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CloudDevice.systemIdiomInt.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for CloudDevice();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t CloudDevice.systemLanguage.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudDevice() + 44));

  return v1;
}

uint64_t CloudDevice.systemLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudDevice() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CloudDevice.deviceModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudDevice() + 48));

  return v1;
}

uint64_t CloudDevice.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudDevice() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CloudDevice.Capability(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064656472616FLL;
  v4 = 0x626E4F726576656ELL;
  v5 = 0xEE00626F6C426574;
  v6 = 0x756F527465737361;
  if (v2 != 6)
  {
    v6 = 0x6174536775626564;
    v5 = 0xEA0000000000656CLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1280328553;
  if (v2 != 4)
  {
    v8 = 0x68746C616548;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x64756F6C43776F6CLL;
  v10 = 0xEF656761726F7453;
  if (v2 != 2)
  {
    v9 = 0x6469766F72506F6ELL;
    v10 = 0xEB00000000737265;
  }

  if (*v1)
  {
    v4 = 0x6C61636F4C776F6CLL;
    v3 = 0xEF656761726F7453;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance CloudDevice.Capability(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static CloudDevice.Capability.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance CloudDevice.Capability(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static CloudDevice.Capability.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance CloudDevice.Capability(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static CloudDevice.Capability.< infix(_:_:)(&v4, &v5) & 1;
}

uint64_t CloudDevice.deviceCapabilities.getter()
{
  type metadata accessor for CloudDevice();
}

uint64_t CloudDevice.deviceCapabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CloudDevice() + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CloudDevice.becamePrimaryDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 56);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.wasPrimary.setter(char a1)
{
  result = type metadata accessor for CloudDevice();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t CloudDevice.declinedPrimaryDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 64);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.nominationDeviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudDevice() + 68));

  return v1;
}

uint64_t CloudDevice.nominationDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudDevice() + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CloudDevice.nominationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 72);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.registrationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 76);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.onboardingDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 80);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.lastInformedOfNewlyOnboardedDevices.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 84);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.lastSnapshotAnalyticsCreationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 88);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.lastSnapshotDownloadCompleteDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 92);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.lastSnapshotCreationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 96);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.lastUILaunchDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 100);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudDevice.snapshotEventAggregationData.getter()
{
  v1 = v0 + *(type metadata accessor for CloudDevice() + 104);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t CloudDevice.snapshotEventAggregationData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudDevice() + 104);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t CloudDevice.snapshotGeneration.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudDevice() + 108));

  return v1;
}

uint64_t CloudDevice.snapshotGeneration.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudDevice() + 108));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CloudDevice.lastKnownCKRecordData.getter()
{
  v1 = v0 + *(type metadata accessor for CloudDevice() + 112);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t CloudDevice.lastKnownCKRecordData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudDevice() + 112);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t CloudDevice.lastKnownCKRecordSync.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudDevice() + 116);

  return outlined assign with take of Date?(a1, v3);
}

MomentsUI::CloudDevice::Idiom_optional __swiftcall CloudDevice.Idiom.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) >= 8)
  {
    v2 = 7;
  }

  else
  {
    v2 = 0x605070403020100uLL >> (8 * (rawValue + 1));
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CloudDevice.Idiom()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_2165A4770[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudDevice.Idiom()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_2165A4770[v1]);
  return Hasher._finalize()();
}

uint64_t CloudDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v244 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v242 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v243 = &v207 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v240 = &v207 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v241 = &v207 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v238 = &v207 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v239 = &v207 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v235 = &v207 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v237 = &v207 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v231 = &v207 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v232 = &v207 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v228 = &v207 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v229 = &v207 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v226 = &v207 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v224 = &v207 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v225 = &v207 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v219 = &v207 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v220 = &v207 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v246 = &v207 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v216 = &v207 - v41;
  MEMORY[0x28223BE20](v40);
  v255 = &v207 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI11CloudDeviceV10CodingKeys33_D5A993C7D6F373FD5A5F605EBA620C18LLOGMd);
  v256 = *(v43 - 8);
  v257 = v43;
  MEMORY[0x28223BE20](v43);
  v261 = &v207 - v44;
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v207 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CloudDevice();
  v50 = (v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v207 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  (*(v46 + 8))(v48, v45);
  *v52 = v53;
  *(v52 + 1) = v55;
  v253 = v55;
  *(v52 + 1) = 0u;
  *(v52 + 2) = 0u;
  v56 = v50[9];
  v57 = type metadata accessor for Date();
  v254 = *(v57 - 8);
  v58 = v254 + 56;
  v59 = *(v254 + 56);
  v252 = v56;
  v59(&v52[v56], 1, 1, v57);
  v60 = &v52[v50[10]];
  *v60 = 0;
  *(v60 + 1) = 0;
  v251 = v60;
  v61 = &v52[v50[11]];
  *v61 = 0;
  *(v61 + 1) = 0;
  v250 = v61;
  v62 = &v52[v50[12]];
  *v62 = 0;
  v249 = v62;
  v62[8] = 1;
  v63 = &v52[v50[13]];
  *v63 = 0;
  *(v63 + 1) = 0;
  v248 = v63;
  v64 = &v52[v50[14]];
  *v64 = 0;
  *(v64 + 1) = 0;
  v247 = v64;
  v245 = v50[15];
  *&v52[v245] = MEMORY[0x277D84F90];
  v213 = v50[16];
  v59(&v52[v213], 1, 1, v57);
  v52[v50[17]] = 2;
  v214 = v50[18];
  v59(&v52[v214], 1, 1, v57);
  v65 = &v52[v50[19]];
  *v65 = 0;
  *(v65 + 1) = 0;
  v215 = v65;
  v217 = v50[20];
  v59(&v52[v217], 1, 1, v57);
  v218 = v50[21];
  v59(&v52[v218], 1, 1, v57);
  v221 = v50[22];
  v59(&v52[v221], 1, 1, v57);
  v223 = v50[23];
  v59(&v52[v223], 1, 1, v57);
  v230 = v50[24];
  v59(&v52[v230], 1, 1, v57);
  v233 = v50[25];
  v59(&v52[v233], 1, 1, v57);
  v234 = v50[26];
  v59(&v52[v234], 1, 1, v57);
  v59(&v52[v50[27]], 1, 1, v57);
  v236 = &v52[v50[28]];
  *v236 = xmmword_21658E040;
  v66 = &v52[v50[29]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v222 = &v52[v50[30]];
  *v222 = xmmword_21658E040;
  v67 = v50[31];
  v259 = v52;
  v227 = v67;
  v59(&v52[v67], 1, 1, v57);
  v68 = a1[3];
  v258 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v68);
  v69 = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();
  v70 = v260;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v70)
  {
    v260 = v70;
LABEL_7:
    v84 = v258;
    v85 = v259;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v84);
    v86 = v85;
    return outlined destroy of CloudDevice(v86);
  }

  v71 = v255;
  v209 = v66;
  v210 = v58;
  v212 = v57;
  v211 = v59;
  v72 = v254;
  LOBYTE(v262) = 0;
  v73 = v257;
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v75)
  {
    v79 = type metadata accessor for DecodingError();
    v80 = swift_allocError();
    v82 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
    *(v82 + 24) = &type metadata for CloudDevice.CodingKeys;
    *(v82 + 32) = v69;
    *v82 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_21658CA50;
    *(v83 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v83 + 64) = v69;
    *(v83 + 32) = 0;
LABEL_6:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v79 - 8) + 104))(v82, *MEMORY[0x277D84158], v79);
    v260 = v80;
    swift_willThrow();
    (*(v256 + 8))(v261, v73);
    goto LABEL_7;
  }

  v76 = v74;
  v208 = v75;
  LOBYTE(v262) = 1;
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v78)
  {

    v79 = type metadata accessor for DecodingError();
    v80 = swift_allocError();
    v82 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
    *(v82 + 24) = &type metadata for CloudDevice.CodingKeys;
    *(v82 + 32) = v69;
    *v82 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_21658CA50;
    *(v93 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v93 + 64) = v69;
    *(v93 + 32) = 1;
    goto LABEL_6;
  }

  v88 = v77;
  v89 = v78;
  LOBYTE(v262) = 2;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v91)
  {

    v97 = type metadata accessor for DecodingError();
    v98 = swift_allocError();
    v100 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
    *(v100 + 24) = &type metadata for CloudDevice.CodingKeys;
    *(v100 + 32) = v69;
    *v100 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_21658CA50;
    *(v101 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v101 + 64) = v69;
    *(v101 + 32) = 2;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v97 - 8) + 104))(v100, *MEMORY[0x277D84158], v97);
    v260 = v98;
    swift_willThrow();
    goto LABEL_18;
  }

  v262 = v88;
  v263 = v89;
  v94 = v90;
  v95 = v91;

  MEMORY[0x21CE92100](46, 0xE100000000000000);

  MEMORY[0x21CE92100](v94, v95);

  if (v76 == v262 && v208 == v263)
  {

    v96 = v71;
  }

  else
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v96 = v71;
    if ((v102 & 1) == 0)
    {
      LOBYTE(v262) = 0;
      type metadata accessor for DecodingError();
      v113 = swift_allocError();
      lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type KeyedDecodingContainer<CloudDevice.CodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy9MomentsUI11CloudDeviceV10CodingKeys33_D5A993C7D6F373FD5A5F605EBA620C18LLOGMd);
      v114 = v261;
      v115 = v257;
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      v260 = v113;
      swift_willThrow();
      (*(v256 + 8))(v114, v115);
      goto LABEL_7;
    }
  }

  LOBYTE(v262) = 0;
  v103 = v257;
  v104 = v261;
  v105 = KeyedDecodingContainer.decode(_:forKey:)();
  v260 = v70;
  v85 = v259;
  v106 = v105;
  v108 = v107;

  *v85 = v106;
  v85[1] = v108;
  LOBYTE(v262) = 1;
  v109 = v260;
  v110 = KeyedDecodingContainer.decode(_:forKey:)();
  v112 = v256;
  if (v109)
  {
    v260 = v109;
LABEL_24:
    (*(v112 + 8))(v104, v103);
    v84 = v258;
    goto LABEL_8;
  }

  v85[2] = v110;
  v85[3] = v111;
  LOBYTE(v262) = 2;
  v116 = KeyedDecodingContainer.decode(_:forKey:)();
  v260 = 0;
  v85[4] = v116;
  v85[5] = v117;
  LOBYTE(v262) = 3;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v118 = v212;
  v119 = v260;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v260 = v119;
  if (v119)
  {
    goto LABEL_24;
  }

  v211(v96, 0, 1, v118);
  outlined assign with take of Date?(v96, v85 + v252);
  LOBYTE(v262) = 4;
  v120 = v260;
  v121 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v120;
  if (v120)
  {
    (*(v256 + 8))(v104, v103);
    goto LABEL_7;
  }

  if (v122)
  {
    v123 = v121;
  }

  else
  {
    v123 = 0;
  }

  if (v122)
  {
    v124 = v122;
  }

  else
  {
    v124 = 0xE000000000000000;
  }

  v125 = v251;
  *v251 = v123;
  v125[1] = v124;
  LOBYTE(v262) = 2;
  v126 = v260;
  v127 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v126;
  if (v126)
  {
    goto LABEL_18;
  }

  v129 = v127;
  v130 = v128;

  v131 = v130 ? v129 : 0;
  v132 = v130 ? v130 : 0xE000000000000000;
  v133 = v259;
  v134 = v260;
  v259[4] = v131;
  *(v133 + 40) = v132;
  LOBYTE(v262) = 5;
  v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v134;
  if (v134)
  {
    goto LABEL_18;
  }

  if (v136)
  {
    v137 = v135;
  }

  else
  {
    v137 = 0;
  }

  v138 = 0xE000000000000000;
  if (v136)
  {
    v138 = v136;
  }

  v139 = v250;
  *v250 = v137;
  v139[1] = v138;
  LOBYTE(v262) = 6;
  v140 = v260;
  v141 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v140;
  if (v140)
  {
    goto LABEL_18;
  }

  v143 = (v142 & 1) != 0 ? -1 : v141;
  v144 = v249;
  *v249 = v143;
  *(v144 + 8) = 0;
  LOBYTE(v262) = 7;
  v145 = v260;
  v146 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v145;
  if (v145)
  {
    goto LABEL_18;
  }

  v148 = v147 ? v146 : 0;
  v149 = v147 ? v147 : 0xE000000000000000;
  v150 = v248;
  *v248 = v148;
  v150[1] = v149;
  LOBYTE(v262) = 8;
  v151 = v260;
  v152 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v151;
  if (v151)
  {
    goto LABEL_18;
  }

  v154 = v153 ? v152 : 0;
  v155 = v153 ? v153 : 0xE000000000000000;
  v156 = v247;
  *v247 = v154;
  v156[1] = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11CloudDeviceV10CapabilityOGMd);
  v264 = 9;
  lazy protocol witness table accessor for type [CloudDevice.Capability] and conformance <A> [A](&lazy protocol witness table cache variable for type [CloudDevice.Capability] and conformance <A> [A], lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability);
  v157 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v157;
  if (v157)
  {
    goto LABEL_18;
  }

  v158 = v262;
  if (!v262)
  {
    v158 = MEMORY[0x277D84F90];
  }

  v159 = v260;
  *(v259 + v245) = v158;
  LOBYTE(v262) = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v159;
  v160 = *(v72 + 48);
  if (v160(v246, 1, v212) == 1)
  {
    static Date.distantPast.getter();
    if (v160(v246, 1, v212) != 1)
    {
      outlined destroy of UTType?(v246, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v72 + 32))(v216, v246, v212);
  }

  v161 = v216;
  v211(v216, 0, 1, v212);
  outlined assign with take of Date?(v161, v259 + v213);
  LOBYTE(v262) = 12;
  v162 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v162;
  if (v162)
  {
    goto LABEL_18;
  }

  if (v160(v219, 1, v212) == 1)
  {
    static Date.distantPast.getter();
    if (v160(v219, 1, v212) != 1)
    {
      outlined destroy of UTType?(v219, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v72 + 32))(v220, v219, v212);
  }

  v163 = v220;
  v211(v220, 0, 1, v212);
  outlined assign with take of Date?(v163, v259 + v214);
  LOBYTE(v262) = 13;
  v164 = v260;
  v165 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v260 = v164;
  if (v164)
  {
    goto LABEL_18;
  }

  if (v166)
  {
    v167 = v165;
  }

  else
  {
    v167 = 0;
  }

  v168 = 0xE000000000000000;
  if (v166)
  {
    v168 = v166;
  }

  v169 = v215;
  *v215 = v167;
  v169[1] = v168;
  LOBYTE(v262) = 14;
  v170 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v170;
  if (v170)
  {
    goto LABEL_18;
  }

  if (v160(v224, 1, v212) == 1)
  {
    static Date.distantPast.getter();
    if (v160(v224, 1, v212) != 1)
    {
      outlined destroy of UTType?(v224, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v72 + 32))(v225, v224, v212);
  }

  v171 = v225;
  v211(v225, 0, 1, v212);
  outlined assign with take of Date?(v171, v259 + v217);
  LOBYTE(v262) = 15;
  v172 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v172;
  if (v172)
  {
    goto LABEL_18;
  }

  outlined assign with take of Date?(v226, v259 + v218);
  LOBYTE(v262) = 16;
  v173 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v173;
  if (v173)
  {
    goto LABEL_18;
  }

  if (v160(v228, 1, v212) == 1)
  {
    static Date.distantPast.getter();
    if (v160(v228, 1, v212) != 1)
    {
      outlined destroy of UTType?(v228, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v72 + 32))(v229, v228, v212);
  }

  v174 = v229;
  v211(v229, 0, 1, v212);
  outlined assign with take of Date?(v174, v259 + v221);
  LOBYTE(v262) = 17;
  v175 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v175;
  if (v175)
  {
    goto LABEL_18;
  }

  if (v160(v231, 1, v212) == 1)
  {
    static Date.distantPast.getter();
    if (v160(v231, 1, v212) != 1)
    {
      outlined destroy of UTType?(v231, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v72 + 32))(v232, v231, v212);
  }

  v176 = v232;
  v211(v232, 0, 1, v212);
  outlined assign with take of Date?(v176, v259 + v223);
  v264 = 24;
  lazy protocol witness table accessor for type Data and conformance Data();
  v177 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v177;
  if (v177)
  {
    goto LABEL_18;
  }

  v178 = v263 >> 60 == 15 ? 0 : v262;
  v179 = v263 >> 60 == 15 ? 0xF000000000000000 : v263;
  v180 = v222;
  outlined consume of Data?(*v222, *(v222 + 1));
  *v180 = v178;
  *(v180 + 1) = v179;
  LOBYTE(v262) = 25;
  v181 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v181;
  if (v181)
  {
    goto LABEL_18;
  }

  if (v160(v235, 1, v212) == 1)
  {
    static Date.distantPast.getter();
    if (v160(v235, 1, v212) != 1)
    {
      outlined destroy of UTType?(v235, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v72 + 32))(v237, v235, v212);
  }

  v182 = v237;
  v211(v237, 0, 1, v212);
  outlined assign with take of Date?(v182, v259 + v227);
  LOBYTE(v262) = 18;
  v183 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v183;
  if (v183)
  {
    goto LABEL_18;
  }

  if (v160(v238, 1, v212) == 1)
  {
    v184 = v212;
    v211(v239, 1, 1, v212);
    if (v160(v238, 1, v184) != 1)
    {
      outlined destroy of UTType?(v238, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v185 = v239;
    v186 = v212;
    (*(v72 + 32))(v239, v238, v212);
    v211(v185, 0, 1, v186);
  }

  outlined assign with take of Date?(v239, v259 + v230);
  LOBYTE(v262) = 19;
  v187 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v187;
  if (v187)
  {
    goto LABEL_18;
  }

  if (v160(v240, 1, v212) == 1)
  {
    v188 = v212;
    v211(v241, 1, 1, v212);
    if (v160(v240, 1, v188) != 1)
    {
      outlined destroy of UTType?(v240, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v189 = v241;
    v190 = v212;
    (*(v72 + 32))(v241, v240, v212);
    v211(v189, 0, 1, v190);
  }

  outlined assign with take of Date?(v241, v259 + v233);
  LOBYTE(v262) = 20;
  v191 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v191;
  if (v191)
  {
    goto LABEL_18;
  }

  if (v160(v242, 1, v212) == 1)
  {
    v192 = v212;
    v211(v243, 1, 1, v212);
    if (v160(v242, 1, v192) != 1)
    {
      outlined destroy of UTType?(v242, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v193 = v243;
    v194 = v212;
    (*(v72 + 32))(v243, v242, v212);
    v211(v193, 0, 1, v194);
  }

  outlined assign with take of Date?(v243, v259 + v234);
  v264 = 22;
  v195 = v260;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v260 = v195;
  if (v195 || (v263 >> 60 != 15 ? (v196 = v262) : (v196 = 0), v263 >> 60 != 15 ? (v197 = v263) : (v197 = 0xF000000000000000), v198 = v236, outlined consume of Data?(*v236, *(v236 + 1)), *v198 = v196, *(v198 + 1) = v197, LOBYTE(v262) = 23, v199 = v260, v200 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v260 = v199) != 0))
  {
LABEL_18:
    (*(v256 + 8))(v261, v257);
    goto LABEL_7;
  }

  v202 = v200;
  v203 = v201;
  (*(v256 + 8))(v261, v257);
  if (v203)
  {
    v204 = v202;
  }

  else
  {
    v204 = 0;
  }

  v205 = v209;
  *v209 = v204;
  *(v205 + 1) = v203;
  v206 = v259;
  outlined init with copy of CloudDevice(v259, v244);
  __swift_destroy_boxed_opaque_existential_1(v258);
  v86 = v206;
  return outlined destroy of CloudDevice(v86);
}

unint64_t CloudDevice.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4449656369766564;
      break;
    case 2:
      result = 0x4449656C646E7562;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x64496D6574737973;
      break;
    case 7:
      result = 0x614C6D6574737973;
      break;
    case 8:
      result = 0x6F4D656369766564;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x616D697250736177;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6974616E696D6F6ELL;
      break;
    case 15:
    case 21:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x696472616F626E6FLL;
      break;
    case 17:
      result = 0xD000000000000023;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 24:
    case 25:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CloudDevice.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CloudDevice.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CloudDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CloudDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI11CloudDeviceV10CodingKeys33_D5A993C7D6F373FD5A5F605EBA620C18LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = type metadata accessor for CloudDevice();
    LOBYTE(v16) = 3;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + v9[13]);
    v18 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11CloudDeviceV10CapabilityOGMd);
    lazy protocol witness table accessor for type [CloudDevice.Capability] and conformance <A> [A](&lazy protocol witness table cache variable for type [CloudDevice.Capability] and conformance <A> [A], lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 17;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 19;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 20;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 21;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[26]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v18 = 22;
    outlined copy of Data?(v16, v11);
    v15[1] = lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v16, v17);
    LOBYTE(v16) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v3 + v9[28]);
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 24;
    outlined copy of Data?(v16, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v16, v17);
    LOBYTE(v16) = 25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t static CloudDevice.nilStr.getter()
{
  swift_beginAccess();
  v0 = static CloudDevice.nilStr;

  return v0;
}

uint64_t static CloudDevice.nilStr.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  static CloudDevice.nilStr = a1;
  qword_27CA92B00 = a2;
}

uint64_t CloudDevice.systemIdiomString.getter()
{
  v1 = v0 + *(type metadata accessor for CloudDevice() + 40);
  if (*(v1 + 8))
  {
    v2 = -1;
  }

  else
  {
    v2 = *v1;
  }

  CloudDevice.Idiom.init(rawValue:)(v2);
  v3 = 0x6E6F697369762ELL;
  if (v8 != 6)
  {
    v3 = 0x69636570736E752ELL;
  }

  v4 = 0x79616C507261632ELL;
  if (v8 != 4)
  {
    v4 = 1667329326;
  }

  if (v8 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1684107310;
  if (v8 != 2)
  {
    v5 = 7762990;
  }

  v6 = 0x656E6F68702ELL;
  if (!v8)
  {
    v6 = 0x69636570736E752ELL;
  }

  if (v8 <= 1u)
  {
    v5 = v6;
  }

  if (v8 <= 3u)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t CloudDevice.snapshotEventAggregation.setter(_OWORD *a1)
{
  v3 = type metadata accessor for Logger();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v11[4] = a1[4];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation? and conformance <A> A?();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  outlined destroy of UTType?(v11, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  v9 = v1 + *(type metadata accessor for CloudDevice() + 104);
  result = outlined consume of Data?(*v9, *(v9 + 8));
  *v9 = v6;
  *(v9 + 8) = v8;
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.insert(_:)(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CloudDevice._bundleMap.setter(void *a1)
{
  swift_beginAccess();
  static CloudDevice._bundleMap = a1;
}

uint64_t closure #1 in static CloudDevice.primaryPhone(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v86 = a3;
  v87 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v77 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v85 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v88 = &v77 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v77 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v90 = &v77 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v92 = &v77 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v77 - v33;
  v35 = type metadata accessor for CloudDevice();
  v36 = *(v35 + 40);
  v93 = a1;
  v37 = a1 + v36;
  if ((*(v37 + 8) & 1) != 0 || *v37)
  {
    return (*(*(v35 - 8) + 56))(a4, 1, 1);
  }

  v82 = a4;
  v91 = v35;
  v38 = *(v35 + 80);
  outlined init with copy of DateInterval?(v93 + v38, v20, &_s10Foundation4DateVSgMd);
  v39 = v22;
  v40 = *(v22 + 48);
  v41 = v21;
  v81 = v40;
  if (v40(v20, 1, v21) == 1)
  {
    outlined destroy of UTType?(v20, &_s10Foundation4DateVSgMd);
LABEL_18:
    v62 = *(*(v91 - 1) + 56);
    v63 = v82;
    return v62(v63, 1, 1);
  }

  v79 = *(v39 + 32);
  v80 = v39 + 32;
  v79(v34, v20, v21);
  v43 = v92;
  static Date.distantPast.getter();
  v44 = static Date.> infix(_:_:)();
  v77 = v39;
  v45 = (v39 + 8);
  v46 = *(v39 + 8);
  v47 = v43;
  v48 = v45;
  v46(v47, v41);
  v78 = v46;
  v46(v34, v41);
  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of DateInterval?(v93 + v38, v18, &_s10Foundation4DateVSgMd);
  v49 = v81;
  if (v81(v18, 1, v41) == 1)
  {
    v50 = v90;
    static Date.distantFuture.getter();
    v51 = v49(v18, 1, v41);
    v52 = v77;
    if (v51 != 1)
    {
      outlined destroy of UTType?(v18, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v50 = v90;
    v79(v90, v18, v41);
    v52 = v77;
  }

  outlined init with copy of DateInterval?(v93 + v91[7], v15, &_s10Foundation4DateVSgMd);
  if (v49(v15, 1, v41) == 1)
  {
    v78(v50, v41);
    outlined destroy of UTType?(v15, &_s10Foundation4DateVSgMd);
    goto LABEL_18;
  }

  v53 = v89;
  v79(v89, v15, v41);
  Date.timeIntervalSince(_:)();
  if (v54 >= a5)
  {
    v60 = v53;
    v61 = v78;
    v78(v60, v41);
    v61(v50, v41);
    goto LABEL_18;
  }

  v55 = v83;
  outlined init with copy of DateInterval?(v93 + v91[16], v83, &_s10Foundation4DateVSgMd);
  v56 = v49(v55, 1, v41);
  v90 = v48;
  if (v56 == 1)
  {
    v57 = v88;
    static Date.distantPast.getter();
    v58 = v49(v55, 1, v41);
    v59 = v86;
    if (v58 != 1)
    {
      outlined destroy of UTType?(v55, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v57 = v88;
    v79(v88, v55, v41);
    v59 = v86;
  }

  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v64 = v92;
    (v52)[2](v92, v59, v41);
    v65 = static Date.> infix(_:_:)();
    v66 = v64;
    v49 = v81;
    v78(v66, v41);
    if (v65)
    {
      (v52)[3](v59, v57, v41);
    }
  }

  v67 = v84;
  outlined init with copy of DateInterval?(v93 + v91[14], v84, &_s10Foundation4DateVSgMd);
  if (v49(v67, 1, v41) == 1)
  {
    v68 = v85;
    static Date.distantPast.getter();
    v69 = v49(v67, 1, v41);
    v70 = v82;
    if (v69 != 1)
    {
      outlined destroy of UTType?(v67, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v68 = v85;
    v79(v85, v67, v41);
    v70 = v82;
  }

  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v71 = v78;
    v78(v68, v41);
    v71(v88, v41);
    v71(v89, v41);
LABEL_32:
    v71(v50, v41);
    v62 = *(*(v91 - 1) + 56);
    v63 = v70;
    return v62(v63, 1, 1);
  }

  v72 = v92;
  v73 = v86;
  (v52)[2](v92, v86, v41);
  v74 = dispatch thunk of static Comparable.< infix(_:_:)();
  v75 = v72;
  v76 = v78;
  v78(v75, v41);
  v76(v88, v41);
  v76(v89, v41);
  v76(v50, v41);
  if (v74)
  {
    v71 = v76;
    v50 = v68;
    goto LABEL_32;
  }

  (v52)[5](v73, v68, v41);
  outlined init with copy of CloudDevice(v93, v70);
  return (*(*(v91 - 1) + 56))(v70, 0, 1);
}

uint64_t closure #2 in static CloudDevice.primaryPhone(in:)(uint64_t a1, int *a2)
{
  v59 = a2;
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - v5;
  v7 = type metadata accessor for Date();
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v16 = type metadata accessor for CloudDevice();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  outlined init with copy of DateInterval?(v56, v15, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  outlined init with take of CloudDevice(&v15[*(v13 + 56)], v21);
  outlined init with copy of DateInterval?(v59, v15, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  v22 = *(v13 + 56);
  v23 = v7;
  v24 = &v15[v22];
  v25 = v55;
  outlined init with take of CloudDevice(v24, v19);
  v59 = v16;
  outlined init with copy of DateInterval?(&v21[v16[14]], v6, &_s10Foundation4DateVSgMd);
  v26 = *(v25 + 48);
  if (v26(v6, 1, v7) == 1)
  {
    static Date.distantPast.getter();
    if (v26(v6, 1, v7) != 1)
    {
      outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v25 + 32))(v11, v6, v7);
  }

  v27 = v57;
  outlined init with copy of DateInterval?(&v19[v59[14]], v57, &_s10Foundation4DateVSgMd);
  if (v26(v27, 1, v23) == 1)
  {
    v28 = v58;
    static Date.distantPast.getter();
    if (v26(v27, 1, v23) != 1)
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v28 = v58;
    (*(v25 + 32))(v58, v27, v23);
  }

  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v58 = v23;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v29 = v59[9];
    if (*&v21[v29 + 8])
    {
      v30 = *&v21[v29];
      v31 = *&v21[v29 + 8];
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    v57 = v21;
    v33 = v19;
    v34 = &v19[v29];
    if (v34[1])
    {
      v35 = *v34;
      v36 = v34[1];
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v32 = specialized static CloudDevice._compareVersions(_:_:)(v30, v31, v35, v36);

    if (v32 == 2)
    {
      if (*v57 == *v33 && *(v57 + 1) == *(v33 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v56 = v11;
        v37 = specialized static CloudSyncDB.getCKRecord(_:)(*&v57[v59[28]], *&v57[v59[28] + 8]);
        if (v37)
        {
          v38 = v37;
          v39 = [v37 recordID];

          v40 = [v39 recordName];
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0xE000000000000000;
        }

        v44 = specialized static CloudSyncDB.getCKRecord(_:)(*&v33[v59[28]], *&v33[v59[28] + 8]);
        if (v44)
        {
          v45 = v44;
          v46 = [v44 recordID];

          v47 = [v46 recordName];
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0xE000000000000000;
        }

        v11 = v56;
        if (v41 == v48 && v43 == v50)
        {

          v32 = 0;
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v19 = v33;
    v21 = v57;
  }

  else
  {
    v32 = static Date.< infix(_:_:)();
  }

  v51 = *(v25 + 8);
  v52 = v58;
  v51(v28, v58);
  v51(v11, v52);
  outlined destroy of CloudDevice(v19);
  outlined destroy of CloudDevice(v21);
  return v32 & 1;
}

uint64_t closure #1 in closure #1 in static CloudDevice.nominatedPhone(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a7;
  v71 = a3;
  v72 = a6;
  v65 = type metadata accessor for CloudDevice();
  v68 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v62 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
  v19 = MEMORY[0x28223BE20](v18);
  v69 = (&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v70 = (&v62 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v62 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62 - v27;
  v62 = a1;
  *v28 = a1;
  *(v28 + 1) = a2;
  v29 = *(v26 + 48);
  v30 = type metadata accessor for Date();
  v74 = *(v30 - 8);
  v31 = *(v74 + 16);
  v31(&v28[v29], v71, v30);
  v71 = a4;
  *v25 = a4;
  v25[1] = a5;
  v31(v25 + *(v18 + 48), v72, v30);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v63 = a2;

  v72 = a5;

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v57 = static Date.< infix(_:_:)();
LABEL_19:
    outlined destroy of UTType?(v25, &_sSS3key_10Foundation4DateV5valuetMd);
    outlined destroy of UTType?(v28, &_sSS3key_10Foundation4DateV5valuetMd);
    return v57 & 1;
  }

  v32 = v70;
  outlined init with copy of DateInterval?(v28, v70, &_sSS3key_10Foundation4DateV5valuetMd);
  v33 = v75;
  if (!*(v75 + 16))
  {
    goto LABEL_22;
  }

  v34 = *(v18 + 48);
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(*v32, v32[1]);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v38 = v67;
  v39 = v34;
  v40 = *(v68 + 72);
  outlined init with copy of CloudDevice(*(v33 + 56) + v40 * v35, v67);
  outlined init with take of CloudDevice(v38, v73);
  v41 = *(v74 + 8);
  v42 = v32 + v39;
  v74 += 8;
  v43 = v41;
  v41(v42, v30);
  v44 = v69;
  outlined init with copy of DateInterval?(v25, v69, &_sSS3key_10Foundation4DateV5valuetMd);
  if (*(v33 + 16))
  {
    v45 = *(v18 + 48);
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(*v44, v44[1]);
    v47 = v44;
    v49 = v48;

    if (v49)
    {
      v70 = v25;
      v50 = *(v75 + 56) + v46 * v40;
      v51 = v64;
      outlined init with copy of CloudDevice(v50, v64);
      v52 = v66;
      outlined init with take of CloudDevice(v51, v66);
      v43(v47 + v45, v30);
      v53 = *(v65 + 36);
      v54 = (v73 + v53);
      if (*(v73 + v53 + 8))
      {
        v55 = *v54;
        v56 = v54[1];
      }

      else
      {
        v55 = 0;
        v56 = 0xE000000000000000;
      }

      v58 = (v52 + v53);
      if (v58[1])
      {
        v59 = *v58;
        v60 = v58[1];
      }

      else
      {
        v59 = 0;
        v60 = 0xE000000000000000;
      }

      v57 = specialized static CloudDevice._compareVersions(_:_:)(v55, v56, v59, v60);

      if (v57 == 2)
      {
        if (v62 == v71 && v63 == v72)
        {
          v57 = 0;
        }

        else
        {
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      outlined destroy of CloudDevice(v52);
      outlined destroy of CloudDevice(v73);
      v25 = v70;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_23:

  __break(1u);
  return result;
}

uint64_t closure #1 in static CloudDevice.bestNominee(in:favorRecent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v38 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  v13 = type metadata accessor for Date();
  v40 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v35 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v35 - v20;
  v22 = type metadata accessor for CloudDevice();
  v23 = v22;
  v24 = *(v22 + 40);
  v41 = a1;
  v25 = a1 + v24;
  if ((*(v25 + 8) & 1) != 0 || *v25)
  {
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  v36 = a3;
  v37 = v4;
  outlined init with copy of DateInterval?(v41 + *(v22 + 28), v12, &_s10Foundation4DateVSgMd);
  v26 = v40;
  v27 = *(v40 + 48);
  if (v27(v12, 1, v13) == 1)
  {
    outlined destroy of UTType?(v12, &_s10Foundation4DateVSgMd);
    return (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  }

  v35[0] = *(v26 + 32);
  v35[1] = v26 + 32;
  (v35[0])(v21, v12, v13);
  Date.timeIntervalSince(_:)();
  if (v29 >= a4)
  {
    (*(v26 + 8))(v21, v13);
    return (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  }

  v30 = v38;
  outlined init with copy of DateInterval?(v41 + *(v23 + 80), v38, &_s10Foundation4DateVSgMd);
  if (v27(v30, 1, v13) == 1)
  {
    (*(v40 + 8))(v21, v13);
    outlined destroy of UTType?(v30, &_s10Foundation4DateVSgMd);
    v31 = v36;
  }

  else
  {
    (v35[0])(v19, v30, v13);
    static Date.distantPast.getter();
    v32 = static Date.> infix(_:_:)();
    v33 = *(v40 + 8);
    v33(v16, v13);
    v33(v19, v13);
    v33(v21, v13);
    v31 = v36;
    if (v32)
    {
      v34 = v36;
      outlined init with copy of CloudDevice(v41, v36);
      return (*(*(v23 - 8) + 56))(v34, 0, 1, v23);
    }
  }

  return (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
}

uint64_t closure #2 in static CloudDevice.bestNominee(in:favorRecent:)(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v92) = a3;
  v90 = a1;
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v82 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v82 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v82 - v19;
  MEMORY[0x28223BE20](v18);
  v89 = &v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v82 - v23;
  v93 = type metadata accessor for CloudDevice();
  v25 = MEMORY[0x28223BE20](v93);
  v27 = (&v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  outlined init with copy of DateInterval?(v90, v24, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  outlined init with take of CloudDevice(&v24[*(v22 + 56)], v29);
  outlined init with copy of DateInterval?(v91, v24, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  outlined init with take of CloudDevice(&v24[*(v22 + 56)], v27);
  if (v92)
  {
    v30 = v29;
    outlined init with copy of DateInterval?(&v29[v93[14]], v11, &_s10Foundation4DateVSgMd);
    v31 = *(v13 + 48);
    v32 = v13;
    if (v31(v11, 1, v12) == 1)
    {
      v33 = v89;
      static Date.distantPast.getter();
      v34 = v31(v11, 1, v12);
      v35 = v88;
      if (v34 != 1)
      {
        outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v36 = *(v13 + 32);
      v33 = v89;
      v36(v89, v11, v12);
      v35 = v88;
    }

    v37 = v87;
    outlined init with copy of DateInterval?(v27 + v93[14], v87, &_s10Foundation4DateVSgMd);
    if (v31(v37, 1, v12) == 1)
    {
      static Date.distantPast.getter();
      if (v31(v37, 1, v12) != 1)
      {
        outlined destroy of UTType?(v37, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v32 + 32))(v35, v37, v12);
    }

    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v45 = static Date.< infix(_:_:)();
      v50 = *(v32 + 8);
      v50(v35, v12);
      v50(v33, v12);
      goto LABEL_21;
    }

    v38 = *(v32 + 8);
    v38(v35, v12);
    v38(v33, v12);
    v13 = v32;
    v29 = v30;
  }

  v84 = v12;
  v39 = v13;
  v30 = v29;
  if (*(v29 + 5))
  {
    v40 = *(v29 + 4);
    v41 = *(v29 + 5);
    v42 = v27[5];
    if (v42)
    {
LABEL_14:
      v43 = v27[4];
      v44 = v42;
      goto LABEL_17;
    }
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v27[5];
    if (v42)
    {
      goto LABEL_14;
    }
  }

  v43 = 0;
  v44 = 0xE000000000000000;
LABEL_17:
  v45 = specialized static CloudDevice._compareBundles(_:_:)(v40, v41, v43, v44);

  if (v45 != 2)
  {
LABEL_21:
    v47 = v30;
    goto LABEL_55;
  }

  v46 = v93[9];
  v47 = v30;
  if (*&v30[v46 + 8])
  {
    v48 = *&v30[v46];
    v49 = *&v30[v46 + 8];
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
  }

  v51 = v84;
  v52 = v86;
  v53 = (v27 + v46);
  if (v53[1])
  {
    v54 = *v53;
    v55 = v53[1];
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  v45 = specialized static CloudDevice._compareVersions(_:_:)(v48, v49, v54, v55);

  if (v45 == 2)
  {
    v56 = v82;
    outlined init with copy of DateInterval?(v47 + v93[25], v82, &_s10Foundation4DateVSgMd);
    v57 = *(v39 + 48);
    if (v57(v56, 1, v51) == 1)
    {
      v58 = v85;
      static Date.distantPast.getter();
      v59 = v57(v56, 1, v51) == 1;
      v60 = v56;
      v61 = v83;
      if (!v59)
      {
        outlined destroy of UTType?(v60, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v58 = v85;
      (*(v39 + 32))(v85, v56, v51);
      v61 = v83;
    }

    outlined init with copy of DateInterval?(v27 + v93[25], v61, &_s10Foundation4DateVSgMd);
    if (v57(v61, 1, v51) == 1)
    {
      static Date.distantPast.getter();
      if (v57(v61, 1, v51) != 1)
      {
        outlined destroy of UTType?(v61, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v39 + 32))(v52, v61, v51);
    }

    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v62 = *(v47 + 24);
      if (!v62 || (v63 = v27[3]) == 0 || *(v47 + 16) == v27[2] && v62 == v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v64 = v93[28];
        v92 = v47;
        v65 = specialized static CloudSyncDB.getCKRecord(_:)(*(v47 + v64), *(v47 + v64 + 8));
        if (v65)
        {
          v66 = v65;
          v67 = [v65 recordID];

          v68 = [v67 recordName];
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;
        }

        else
        {
          v69 = 0;
          v71 = 0xE000000000000000;
        }

        v73 = specialized static CloudSyncDB.getCKRecord(_:)(*(v27 + v93[28]), *(v27 + v93[28] + 8));
        if (v73)
        {
          v74 = v73;
          v75 = [v73 recordID];

          v76 = [v75 recordName];
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;
        }

        else
        {
          v77 = 0;
          v79 = 0xE000000000000000;
        }

        v51 = v84;
        v47 = v92;
        if (v69 == v77 && v71 == v79)
        {
          v45 = 0;
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v80 = *(v39 + 8);
      v80(v52, v51);
      v80(v85, v51);
    }

    else
    {
      v45 = static Date.< infix(_:_:)();
      v72 = *(v39 + 8);
      v72(v52, v51);
      v72(v58, v51);
    }
  }

LABEL_55:
  outlined destroy of CloudDevice(v27);
  outlined destroy of CloudDevice(v47);
  return v45 & 1;
}

uint64_t closure #1 in static CloudDevice.newlyOnboardedDevices(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v87 = a3;
  v84 = a2;
  v6 = type metadata accessor for Logger();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - v11;
  v13 = type metadata accessor for Date();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  v21 = type metadata accessor for CloudDevice();
  v22 = MEMORY[0x28223BE20](v21);
  v80 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v72 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v72 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - v29;
  outlined init with copy of DateInterval?(a1, v20, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  outlined init with take of CloudDevice(&v20[*(v18 + 56)], v30);
  v31 = &v30[*(v21 + 40)];
  if (v31[8])
  {
    v32 = -1;
  }

  else
  {
    v32 = *v31;
  }

  CloudDevice.Idiom.init(rawValue:)(v32);
  if (v91 != 1)
  {
    outlined destroy of CloudDevice(v30);
    return (*(v88 + 56))(v87, 1, 1, v89);
  }

  outlined init with copy of DateInterval?(&v30[*(v21 + 28)], v12, &_s10Foundation4DateVSgMd);
  v34 = v88;
  v33 = v89;
  v35 = *(v88 + 48);
  if (v35(v12, 1, v89) == 1)
  {
    outlined destroy of CloudDevice(v30);
    outlined destroy of UTType?(v12, &_s10Foundation4DateVSgMd);
    return (*(v34 + 56))(v87, 1, 1, v33);
  }

  v77 = v35;
  v37 = v86;
  v76 = *(v34 + 32);
  v76(v86, v12, v33);
  Date.timeIntervalSince(_:)();
  if (v38 >= a4)
  {
    (*(v34 + 8))(v37, v33);
    outlined destroy of CloudDevice(v30);
    return (*(v34 + 56))(v87, 1, 1, v33);
  }

  v84 = v21;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v39 = v83;
  __swift_project_value_buffer(v83, static CloudDevice.Log);
  swift_beginAccess();
  v40 = v82;
  v41 = v81;
  (*(v82 + 16))();
  outlined init with copy of CloudDevice(v30, v28);
  outlined init with copy of CloudDevice(v30, v85);
  v42 = v80;
  outlined init with copy of CloudDevice(v30, v80);
  v43 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v75))
  {
    v74 = v43;
    v44 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v73;
    *v44 = 136446978;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002165865F0, &v90);
    *(v44 + 12) = 2080;
    v45 = v42;
    v46 = *v28;
    v47 = v28[1];

    outlined destroy of CloudDevice(v28);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v90);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2080;
    v49 = v85;
    v50 = CloudDevice.systemIdiomString.getter();
    v52 = v51;
    outlined destroy of CloudDevice(v49);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v90);

    *(v44 + 24) = v53;
    v85 = v44;
    *(v44 + 32) = 2080;
    v54 = v84;
    v55 = v45 + *(v84 + 84);
    v56 = v78;
    outlined init with copy of DateInterval?(v55, v78, &_s10Foundation4DateVSgMd);
    v57 = v89;
    v58 = v77;
    if (v77(v56, 1, v89) == 1)
    {
      v59 = v79;
      static Date.distantPast.getter();
      v60 = v58(v56, 1, v57);
      v61 = v82;
      v62 = v88;
      if (v60 != 1)
      {
        outlined destroy of UTType?(v56, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v59 = v79;
      v76(v79, v56, v57);
      v61 = v82;
      v62 = v88;
    }

    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v63 = v57;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = *(v62 + 8);
    v67(v59, v63);
    outlined destroy of CloudDevice(v80);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v90);

    v69 = v85;
    *(v85 + 34) = v68;
    v70 = v74;
    _os_log_impl(&dword_21607C000, v74, v75, "CloudDevice.%{public}s Considering: %s %s %s", v69, 0x2Au);
    v71 = v73;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v71, -1, -1);
    MEMORY[0x21CE94770](v69, -1, -1);

    (*(v61 + 8))(v81, v83);
    v67(v86, v63);
  }

  else
  {

    outlined destroy of CloudDevice(v42);
    outlined destroy of CloudDevice(v85);
    outlined destroy of CloudDevice(v28);
    (*(v40 + 8))(v41, v39);
    (*(v88 + 8))(v86, v89);
    v54 = v84;
  }

  outlined init with copy of DateInterval?(&v30[*(v54 + 84)], v87, &_s10Foundation4DateVSgMd);
  return outlined destroy of CloudDevice(v30);
}

uint64_t closure #2 in static CloudDevice.newlyOnboardedDevices(in:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v106 = a4;
  v97 = a3;
  v102 = a2;
  v104 = a1;
  v6 = type metadata accessor for Logger();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6);
  v94 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v92 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v87 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v100 = &v87 - v20;
  MEMORY[0x28223BE20](v19);
  v103 = &v87 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - v24;
  v26 = type metadata accessor for CloudDevice();
  v105 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v99 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v98 = &v87 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v93 = (&v87 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = &v87 - v33;
  outlined init with copy of DateInterval?(v104, v25, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  v35 = *(v23 + 56);
  v36 = v26;
  outlined init with take of CloudDevice(&v25[v35], v34);
  v37 = &v34[*(v26 + 40)];
  if (v37[8])
  {
    v38 = -1;
  }

  else
  {
    v38 = *v37;
  }

  CloudDevice.Idiom.init(rawValue:)(v38);
  if (v108 != 1)
  {
    outlined init with copy of DateInterval?(&v34[*(v26 + 28)], v14, &_s10Foundation4DateVSgMd);
    v39 = *(v16 + 48);
    if (v39(v14, 1, v15) == 1)
    {
      outlined destroy of CloudDevice(v34);
      outlined destroy of UTType?(v14, &_s10Foundation4DateVSgMd);
      goto LABEL_8;
    }

    v90 = v34;
    v104 = v36;
    v42 = *(v16 + 32);
    v43 = v103;
    v42(v103, v14, v15);
    Date.timeIntervalSince(_:)();
    if (v44 >= a5)
    {
      (*(v16 + 8))(v43, v15);
    }

    else
    {
      v102 = v42;
      v45 = v90;
      v46 = v101;
      outlined init with copy of DateInterval?(&v90[*(v104 + 80)], v101, &_s10Foundation4DateVSgMd);
      v47 = v15;
      if (v39(v46, 1, v15) == 1)
      {
        (*(v16 + 8))(v43, v15);
        outlined destroy of CloudDevice(v45);
        outlined destroy of UTType?(v46, &_s10Foundation4DateVSgMd);
LABEL_14:
        v40 = 1;
        v41 = v106;
LABEL_15:
        v36 = v104;
        return (*(v105 + 56))(v41, v40, 1, v36);
      }

      v89 = v16;
      v49 = v100;
      v50 = v46;
      v51 = v102;
      v102(v100, v50, v47);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v52 = v47;
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        v101 = v47;
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v54 = v96;
        v55 = __swift_project_value_buffer(v96, static CloudDevice.Log);
        swift_beginAccess();
        v56 = v94;
        v57 = v95;
        (*(v95 + 16))(v94, v55, v54);
        v58 = v90;
        v59 = v93;
        outlined init with copy of CloudDevice(v90, v93);
        outlined init with copy of CloudDevice(v58, v98);
        outlined init with copy of CloudDevice(v58, v99);
        v60 = Logger.logObject.getter();
        LODWORD(v97) = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v60, v97))
        {
          v88 = v60;
          v61 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v107 = v87;
          *v61 = 136446978;
          *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002165865F0, &v107);
          *(v61 + 12) = 2080;
          v62 = *v59;
          v63 = v59[1];

          outlined destroy of CloudDevice(v59);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v107);

          *(v61 + 14) = v64;
          *(v61 + 22) = 2080;
          v65 = v98;
          v66 = CloudDevice.systemIdiomString.getter();
          v68 = v67;
          outlined destroy of CloudDevice(v65);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v107);

          *(v61 + 24) = v69;
          *(v61 + 32) = 2080;
          v70 = v92;
          outlined init with copy of DateInterval?(v99 + *(v104 + 80), v92, &_s10Foundation4DateVSgMd);
          v71 = v101;
          if (v39(v70, 1, v101) == 1)
          {
            v72 = v91;
            static Date.distantPast.getter();
            v73 = v39(v70, 1, v71);
            v75 = v94;
            v74 = v95;
            if (v73 != 1)
            {
              outlined destroy of UTType?(v70, &_s10Foundation4DateVSgMd);
            }
          }

          else
          {
            v78 = v91;
            v51(v91, v70, v71);
            v72 = v78;
            v75 = v94;
            v74 = v95;
          }

          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          v82 = *(v89 + 8);
          v82(v72, v71);
          outlined destroy of CloudDevice(v99);
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v107);

          *(v61 + 34) = v83;
          v84 = v88;
          _os_log_impl(&dword_21607C000, v88, v97, "CloudDevice.%{public}s Candidate: %s %s %s", v61, 0x2Au);
          v85 = v87;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v85, -1, -1);
          MEMORY[0x21CE94770](v61, -1, -1);

          (*(v74 + 8))(v75, v96);
          v82(v100, v71);
          v82(v103, v71);
        }

        else
        {

          outlined destroy of CloudDevice(v99);
          outlined destroy of CloudDevice(v98);
          outlined destroy of CloudDevice(v59);
          (*(v57 + 8))(v56, v54);
          v76 = *(v89 + 8);
          v77 = v101;
          v76(v100, v101);
          v76(v103, v77);
        }

        v86 = v106;
        outlined init with take of CloudDevice(v90, v106);
        v41 = v86;
        v40 = 0;
        goto LABEL_15;
      }

      v53 = *(v89 + 8);
      v53(v49, v52);
      v53(v103, v52);
    }

    outlined destroy of CloudDevice(v90);
    goto LABEL_14;
  }

  outlined destroy of CloudDevice(v34);
LABEL_8:
  v40 = 1;
  v41 = v106;
  return (*(v105 + 56))(v41, v40, 1, v36);
}