uint64_t sub_25850594C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v133 = a3;
  v135 = a4;
  v136[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v124 - v9;
  v11 = sub_258532CFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v131 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v124 - v19;
  v21 = sub_258532C8C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_258532CAC();
  if ((*(v22 + 6))(v20, 1, v21) == 1)
  {
    sub_258465168(v20, &qword_27F9307C0, &qword_25853A850);

    sub_258532D1C();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_258465168(v10, &unk_27F931350, qword_258538C60);
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v27 = sub_258532A4C();
      __swift_project_value_buffer(v27, qword_27F93D020);
      v28 = sub_258532A2C();
      v29 = sub_2585338CC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_25845E000, v28, v29, "Invalid address passed to addDevice", v30, 2u);
        MEMORY[0x259C82900](v30, -1, -1);
      }

      sub_258506978();
      swift_allocError();
      *v31 = 0;
      result = swift_willThrow();
    }

    else
    {
      v46 = v11;
      v129 = v11;
      v130 = a1;
      v47 = v12;
      v48 = v131;
      (*(v12 + 32))(v131, v10, v46);
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v49 = sub_258532A4C();
      __swift_project_value_buffer(v49, qword_27F93D020);
      v50 = a2;

      v51 = v135;

      v52 = v134;

      v53 = sub_258532A2C();
      v54 = sub_2585338EC();

      v55 = os_log_type_enabled(v53, v54);
      v127 = v47;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v57 = v52;
        v58 = swift_slowAlloc();
        v136[0] = v58;
        *v56 = 136381187;
        *(v56 + 4) = sub_2584713B0(v130, v50, v136);
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_2584713B0(v133, v51, v136);
        *(v56 + 22) = 2048;
        *(v56 + 24) = [*(v57 + 24) clockIdentity];

        _os_log_impl(&dword_25845E000, v53, v54, "Removing IPv6 device at %{private}s on %s from %llu", v56, 0x20u);
        swift_arrayDestroy();
        v59 = v58;
        v52 = v57;
        v47 = v127;
        MEMORY[0x259C82900](v59, -1, -1);
        MEMORY[0x259C82900](v56, -1, -1);
      }

      else
      {
      }

      v74 = sub_258507E78();
      if (v74)
      {
        v75 = v74;
        v76 = *(v52 + 24);
        v77 = v133;
        v78 = v135;
        v79 = sub_25853341C();
        v136[0] = 0;
        v125 = v76;
        LODWORD(v76) = [v76 removeUnicastUDPv6EtEPortFromInterfaceNamed:v79 withDestinationAddress:v75 error:v136];

        v80 = v136[0];
        if (v76)
        {

          v81 = v80;
          v82 = sub_258532A2C();
          v83 = sub_2585338EC();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v126 = v75;
            v85 = v77;
            v86 = v84;
            v87 = swift_slowAlloc();
            v136[0] = v87;
            *v86 = 136381187;
            *(v86 + 4) = sub_2584713B0(v130, v50, v136);
            *(v86 + 12) = 2080;
            v88 = v85;
            v75 = v126;
            *(v86 + 14) = sub_2584713B0(v88, v78, v136);
            *(v86 + 22) = 2048;
            *(v86 + 24) = [v125 clockIdentity];

            _os_log_impl(&dword_25845E000, v82, v83, "Removed IPv6 device at %{private}s on %s from %llu", v86, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x259C82900](v87, -1, -1);
            MEMORY[0x259C82900](v86, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v126 = v75;
          v113 = v136[0];
          v114 = sub_2585328BC();

          swift_willThrow();
          v132 = 0;

          v115 = v114;
          v116 = sub_258532A2C();
          v117 = sub_2585338EC();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v136[0] = v120;
            *v118 = 136381443;
            *(v118 + 4) = sub_2584713B0(v130, v50, v136);
            *(v118 + 12) = 2080;
            *(v118 + 14) = sub_2584713B0(v133, v78, v136);
            *(v118 + 22) = 2048;
            *(v118 + 24) = [v125 clockIdentity];

            *(v118 + 32) = 2112;
            v121 = v114;
            v122 = _swift_stdlib_bridgeErrorToNSError();
            *(v118 + 34) = v122;
            *v119 = v122;
            _os_log_impl(&dword_25845E000, v116, v117, "    Failed to remove IPv6 device at %{private}s on %s     from %llu, error:%@", v118, 0x2Au);
            sub_258465168(v119, &qword_27F92FBC0, &qword_258537930);
            MEMORY[0x259C82900](v119, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x259C82900](v120, -1, -1);
            MEMORY[0x259C82900](v118, -1, -1);
          }

          else
          {
          }

          v75 = v126;
        }

        MEMORY[0x259C82900](v75, -1, -1);
        result = (*(v127 + 8))(v48, v129);
      }

      else
      {
        sub_258506978();
        swift_allocError();
        *v112 = 0;
        swift_willThrow();
        result = (*(v47 + 8))(v48, v129);
      }
    }

    goto LABEL_53;
  }

  (*(v22 + 4))(v26, v20, v21);
  if (qword_27F92F8F0 != -1)
  {
    swift_once();
  }

  v131 = v22;
  v33 = sub_258532A4C();
  v34 = __swift_project_value_buffer(v33, qword_27F93D020);
  v35 = a2;

  v36 = v135;

  v37 = v134;

  v127 = v34;
  v38 = sub_258532A2C();
  v39 = sub_2585338EC();

  v40 = os_log_type_enabled(v38, v39);
  v128 = v35;
  v129 = v21;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = v37;
    v43 = swift_slowAlloc();
    v136[0] = v43;
    *v41 = 136381187;
    v44 = a1;
    *(v41 + 4) = sub_2584713B0(a1, v35, v136);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_2584713B0(v133, v135, v136);
    *(v41 + 22) = 2048;
    *(v41 + 24) = [*(v42 + 24) clockIdentity];

    _os_log_impl(&dword_25845E000, v38, v39, "Removing IPv4 device at %{private}s on %s from %llu", v41, 0x20u);
    swift_arrayDestroy();
    v45 = v43;
    v37 = v42;
    v36 = v135;
    MEMORY[0x259C82900](v45, -1, -1);
    MEMORY[0x259C82900](v41, -1, -1);
  }

  else
  {
    v44 = a1;
  }

  v60 = *(v37 + 24);
  v61 = sub_25853341C();
  v62 = sub_258532C7C();
  v63 = v62;
  v65 = v64;
  v66 = v64 >> 62;
  v130 = v44;
  if ((v64 >> 62) > 1)
  {
    if (v66 != 2)
    {
      v92 = 0;
      v67 = v131;
LABEL_37:
      v93 = v60;
      sub_258467E20(v63, v65);
      v136[0] = 0;
      v94 = [v60 removeUnicastUDPv4EtEPortFromInterfaceNamed:v61 withDestinationAddress:v92 error:v136];

      v95 = v136[0];
      v96 = v128;
      if (v94)
      {

        v97 = v95;
        v98 = sub_258532A2C();
        v99 = sub_2585338EC();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v136[0] = v101;
          *v100 = 136381187;
          *(v100 + 4) = sub_2584713B0(v130, v96, v136);
          *(v100 + 12) = 2080;
          *(v100 + 14) = sub_2584713B0(v133, v36, v136);
          *(v100 + 22) = 2048;
          *(v100 + 24) = [v93 clockIdentity];

          _os_log_impl(&dword_25845E000, v98, v99, "Removed IPv4 device at %{private}s on %s from %llu", v100, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v101, -1, -1);
          MEMORY[0x259C82900](v100, -1, -1);
        }

        else
        {
        }

        result = (*(v67 + 1))(v26, v129);
      }

      else
      {
        v132 = v26;
        v102 = v136[0];
        v103 = sub_2585328BC();

        swift_willThrow();

        v104 = v103;
        v105 = sub_258532A2C();
        v106 = sub_2585338EC();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v136[0] = v131;
          *v107 = 136381443;
          *(v107 + 4) = sub_2584713B0(v130, v96, v136);
          *(v107 + 12) = 2080;
          *(v107 + 14) = sub_2584713B0(v133, v135, v136);
          *(v107 + 22) = 2048;
          *(v107 + 24) = [v93 clockIdentity];

          *(v107 + 32) = 2112;
          v109 = v103;
          v110 = _swift_stdlib_bridgeErrorToNSError();
          *(v107 + 34) = v110;
          *v108 = v110;
          _os_log_impl(&dword_25845E000, v105, v106, "    Failed to remove IPv4 device at %{private}s on %s     from %llu, error:%@", v107, 0x2Au);
          sub_258465168(v108, &qword_27F92FBC0, &qword_258537930);
          MEMORY[0x259C82900](v108, -1, -1);
          v111 = v131;
          swift_arrayDestroy();
          MEMORY[0x259C82900](v111, -1, -1);
          MEMORY[0x259C82900](v107, -1, -1);
        }

        else
        {
        }

        result = (*(v67 + 1))(v132, v129);
      }

LABEL_53:
      v123 = *MEMORY[0x277D85DE8];
      return result;
    }

    v68 = v26;
    v69 = *(v62 + 16);
    v70 = sub_25853285C();
    v67 = v131;
    if (v70)
    {
      v71 = v70;
      v72 = sub_25853287C();
      if (__OFSUB__(v69, v72))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v73 = (v69 - v72 + v71);
      sub_25853286C();
      if (v73)
      {
LABEL_34:
        LODWORD(v62) = *v73;
        v36 = v135;
        v26 = v68;
        goto LABEL_35;
      }
    }

    else
    {
      sub_25853286C();
    }

    __break(1u);
    goto LABEL_59;
  }

  if (!v66)
  {
    v67 = v131;
LABEL_35:
    v92 = _OSSwapInt32(v62);
    goto LABEL_37;
  }

  v68 = v26;
  v67 = v131;
  if (v62 > v62 >> 32)
  {
    __break(1u);
    goto LABEL_55;
  }

  v89 = sub_25853285C();
  if (!v89)
  {
LABEL_59:
    result = sub_25853286C();
    __break(1u);
    goto LABEL_60;
  }

  v90 = v89;
  v91 = sub_25853287C();
  if (__OFSUB__(v63, v91))
  {
    goto LABEL_56;
  }

  v73 = (v63 - v91 + v90);
  result = sub_25853286C();
  if (v73)
  {
    goto LABEL_34;
  }

LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_258506978()
{
  result = qword_27F9316E0;
  if (!qword_27F9316E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9316E0);
  }

  return result;
}

unint64_t sub_2585069DC(uint64_t a1)
{
  result = sub_258506978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258506A08()
{
  result = qword_27F9316E8;
  if (!qword_27F9316E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9316E8);
  }

  return result;
}

id sub_258506AAC()
{
  if (*(v0 + 149) == 1)
  {
    v1 = *(v0 + 116);
    v2 = *(v0 + 124);
    v3 = *(v0 + 132) | *(v0 + 140);
    if (*(v0 + 148))
    {
      v4 = 0;
    }

    else
    {
      v4 = (v3 | v1 | v2) == 0;
    }

    if (v4)
    {
      goto LABEL_19;
    }

    v5 = v3 | v2;
    if (!*(v0 + 148) && (v1 == 1 ? (v6 = v5 == 0) : (v6 = 0), v6))
    {
      v7 = MEMORY[0x277D7BA38];
    }

    else
    {
      if (!*(v0 + 148) && v1 == 2 && !v5)
      {
LABEL_19:
        v7 = MEMORY[0x277D7BA50];
        goto LABEL_20;
      }

      v7 = MEMORY[0x277D7BA48];
      if (!*(v0 + 148) && v1 == 3 && !v5)
      {
        v7 = MEMORY[0x277D7BA40];
      }
    }
  }

  else
  {
    if (qword_27F92F948 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F93D170;
  }

LABEL_20:
  v8 = *v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D7BB10]) initWithAddress_];
  v10 = [objc_allocWithZone(MEMORY[0x277D7BA68]) initWithUniqueIdentifier:v8 peerAddress:v9];

  return v10;
}

void sub_258506C04()
{
  if (*(v0 + 112) == 1)
  {
    *(v0 + 112) = 3;

    v1 = sub_258532A2C();
    v2 = sub_2585338EC();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138477827;
      v5 = sub_258506AAC();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&dword_25845E000, v1, v2, "Traffic registration=%{private}@ interrupted", v3, 0xCu);
      sub_2584D1214(v4);
      MEMORY[0x259C82900](v4, -1, -1);
      MEMORY[0x259C82900](v3, -1, -1);
    }

    v6 = (v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    v7 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    if (v7)
    {
      v8 = v6[1];

      v7(v9);
      sub_258464B24(v7);
      v10 = *v6;
    }

    else
    {
      v10 = 0;
    }

    v11 = v6[1];
    *v6 = 0;
    v6[1] = 0;

    sub_258464B24(v10);
  }
}

uint64_t sub_258506D7C()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_logger;
  v2 = sub_258532A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler + 8);
  sub_258464B24(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for WiFiP2PBackedTrafficRegistration()
{
  result = qword_27F931708;
  if (!qword_27F931708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258506E6C()
{
  result = sub_258532A4C();
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

unint64_t sub_258506F4C()
{
  result = qword_27F931718;
  if (!qword_27F931718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931718);
  }

  return result;
}

uint64_t sub_258506FA4(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (v2[112])
  {
    sub_2585075D0();
    swift_allocError();
LABEL_8:
    result = swift_willThrow();
    goto LABEL_9;
  }

  v3 = v2;

  v6 = sub_258532A2C();
  v7 = sub_2585338EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138477827;
    v10 = sub_258506AAC();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_25845E000, v6, v7, "Setting traffic registration=%{private}@", v8, 0xCu);
    sub_2584D1214(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v11 = *&v2[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager];
  v12 = sub_258506AAC();
  aBlock[4] = sub_258507624;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258507240;
  aBlock[3] = &block_descriptor_5;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LOBYTE(v11) = [v11 setTrafficRegistration:v12 onInvalidationHandler:v13 error:aBlock];
  _Block_release(v13);

  v14 = aBlock[0];
  if ((v11 & 1) == 0)
  {
    v20 = aBlock[0];
    sub_2585328BC();

    goto LABEL_8;
  }

  v15 = &v3[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler];
  v16 = *&v3[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler];
  v17 = *&v3[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler + 8];
  *v15 = a1;
  v15[1] = a2;
  v18 = v14;

  result = sub_258464B24(v16);
  v3[112] = 1;
LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258507240(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2585072A8()
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 112) == 1)
  {
    v1 = v0;
    *(v0 + 112) = 2;

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138477827;
      v6 = sub_258506AAC();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_25845E000, v2, v3, "Clearing traffic registration=%{private}@", v4, 0xCu);
      sub_2584D1214(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    v7 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager);
    v8 = sub_258506AAC();
    v24[0] = 0;
    LODWORD(v7) = [v7 clearTrafficRegistration:v8 error:v24];

    if (v7)
    {
      v9 = v24[0];
    }

    else
    {
      v10 = v24[0];
      v11 = sub_2585328BC();

      swift_willThrow();

      v12 = v11;
      v13 = sub_258532A2C();
      v14 = sub_2585338CC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138478083;
        v17 = sub_258506AAC();
        *(v15 + 4) = v17;
        *v16 = v17;
        *(v15 + 12) = 2112;
        v18 = v11;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 14) = v19;
        v16[1] = v19;
        _os_log_impl(&dword_25845E000, v13, v14, "Clear traffic registration=%{private}@ failed with error=%@", v15, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBC0, &qword_258537930);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v16, -1, -1);
        MEMORY[0x259C82900](v15, -1, -1);
      }

      else
      {
      }
    }

    v20 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    v21 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    v22 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler + 8);
    *v20 = 0;
    v20[1] = 0;
    sub_258464B24(v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_258507598()
{
  result = sub_25853341C();
  qword_27F93D170 = result;
  return result;
}

unint64_t sub_2585075D0()
{
  result = qword_27F931720;
  if (!qword_27F931720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931720);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258507650(uint64_t a1)
{
  result = sub_2585075D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25850767C()
{
  result = qword_27F931728;
  if (!qword_27F931728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931728);
  }

  return result;
}

unint64_t sub_2585076E8()
{
  result = qword_27F931730;
  if (!qword_27F931730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931730);
  }

  return result;
}

uint64_t static audit_token_t.current.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85F48];
  memset(v5, 0, sizeof(v5));
  result = sub_25850783C(v5, v6, v1, &v4);
  if (!v0)
  {
    result = *&v5[0];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> audit_token_t.init(taskName:)(audit_token_t *__return_ptr retstr, Swift::UInt32 taskName)
{
  v5[1] = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  sub_25850783C(v4, v5, taskName, &v3);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25850783C(integer_t *a1, uint64_t a2, task_name_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = sub_2585329DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
  }

  task_info_outCnt = 8;
  result = task_info(a3, 0xFu, a1, &task_info_outCnt);
  if (result)
  {
    v14 = sub_258532A5C();
    if ((v14 & 0x100000000) != 0)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    v18 = v15;
    sub_258507B48(MEMORY[0x277D84F90]);
    sub_258507C58();
    sub_25853289C();
    v16 = sub_2585329CC();
    (*(v8 + 8))(v12, v7);
    result = swift_willThrow();
    *a4 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2585079D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 32)
      {
        goto LABEL_8;
      }

LABEL_11:
      result = sub_258467E20(a1, a2);
      v13 = 0uLL;
      v12 = 1;
      v14 = 0uLL;
      goto LABEL_12;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_258507AF4();
  sub_25853283C();
  result = sub_258467E20(a1, a2);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
LABEL_12:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v12;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_258507AF4()
{
  result = qword_27F931738;
  if (!qword_27F931738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931738);
  }

  return result;
}

unint64_t sub_258507B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
    v3 = sub_258533CDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_258507CB0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2584BC1D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2584F6C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258507C58()
{
  result = qword_27F931740;
  if (!qword_27F931740)
  {
    sub_2585329DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931740);
  }

  return result;
}

uint64_t sub_258507CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314E0, &qword_25853D648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258507D20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_258532CFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  sub_258507F1C(v16, v17, &v15, v11);
  (*(v7 + 32))(a3, v11, v6);
  result = (*(v7 + 56))(a3, 0, 1, v6);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258507E78()
{
  v0 = swift_slowAlloc();
  result = sub_258532CDC();
  v2 = result;
  v4 = v3;
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(result + 16);
    }
  }

  else if (v5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  if (__OFADD__(v6, 16))
  {
    __break(1u);
  }

  else if (v6 + 16 >= v6)
  {
    sub_25853290C();
    sub_258467E20(v2, v4);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_258507F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v26 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60) - 8) + 64);
  v15 = MEMORY[0x28223BE20](a1, v14);
  v17 = &v26 - v16;
  if (!v15 || a2 - v15 != 16)
  {
    sub_258508184();
    v24 = swift_allocError();
    result = swift_willThrow();
    goto LABEL_6;
  }

  v18 = sub_2584F01F0(v15, 16);
  v20 = v19;
  v21 = sub_258532D8C();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_2584A7B8C(v18, v20);
  sub_258532D0C();
  v22 = sub_258532CFC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {
    sub_2584AE2A8(v17);
    sub_258508184();
    v24 = swift_allocError();
    swift_willThrow();
    result = sub_258467E20(v18, v20);
LABEL_6:
    *a3 = v24;
    return result;
  }

  sub_258467E20(v18, v20);
  return (*(v23 + 32))(a4, v17, v22);
}

unint64_t sub_258508184()
{
  result = qword_27F931748;
  if (!qword_27F931748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931748);
  }

  return result;
}

unint64_t sub_2585081E8(uint64_t a1)
{
  result = sub_258508184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258508214()
{
  result = qword_27F931750;
  if (!qword_27F931750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931750);
  }

  return result;
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_27F931758;
  if (!qword_27F931758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2585082B4(uint64_t a1, uint64_t a2)
{
  sub_258508328(319, a2);
  if (v2 <= 0x3F)
  {
    sub_258508424();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_258508328(uint64_t a1, uint64_t a2)
{
  if (!qword_27F931768)
  {
    MEMORY[0x28223BE20](a1, a2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F931768);
    }
  }
}

void sub_258508424()
{
  if (!qword_27F931770)
  {
    type metadata accessor for AVCStreamInputID(255);
    sub_25853398C();
    type metadata accessor for CMTime(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F931770);
    }
  }
}

void sub_2585084C8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930590, &qword_25853F8A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v30 - v13;

  v15 = sub_258532A2C();
  v16 = sub_2585338EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v33);
    *(v18 + 12) = 2080;
    v32 = a1;
    v20 = sub_25853347C();
    v30 = v14;
    v21 = a1;
    v22 = v4;
    v24 = sub_2584713B0(v20, v23, v33);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v32 = *(v2 + 232);
    v25 = sub_25853347C();
    v27 = sub_2584713B0(v25, v26, v33);

    *(v18 + 24) = v27;
    v4 = v22;
    a1 = v21;
    v14 = v30;
    _os_log_impl(&dword_25845E000, v15, v16, "%s state changed from %s to %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v19, -1, -1);
    v28 = v18;
    v9 = v31;
    MEMORY[0x259C82900](v28, -1, -1);
  }

  if (a1 == 2)
  {
    v29 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v2 + v29, v14, &qword_27F930590, &qword_25853F8A0);
    if ((*(v5 + 48))(v14, 1, v4))
    {
      sub_258465168(v14, &qword_27F930590, &qword_25853F8A0);
    }

    else
    {
      (*(v5 + 16))(v9, v14, v4);
      sub_258465168(v14, &qword_27F930590, &qword_25853F8A0);
      sub_25853364C();
      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_258508844()
{
  sub_2584A96C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 136);

  sub_258465168(v0 + 144, &qword_27F9317E0, &qword_25853EB18);
  sub_258465168(v0 + 184, &qword_27F9317F0, &qword_25853EB30);

  v2 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_sessionID;
  v3 = sub_2585329BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection));
  sub_25850FA84(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 40), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 48), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 56), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 64), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 72), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 80), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProviderVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_delegatedPIDProvider));
  v4 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931810, &unk_25853EB70);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStreamContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger;
  v13 = sub_258532A4C();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider));
  v14 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor);

  v15 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor);

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation, &qword_27F931820, &unk_25853F380);
  v16 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  swift_unknownObjectRelease();
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistrationVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_signpostReporter));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  return v0;
}

uint64_t sub_258508BFC()
{
  sub_258508844();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for VideoStreamAVConference()
{
  result = qword_27F931778;
  if (!qword_27F931778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258508CA8()
{
  v0 = sub_2585329BC();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_25850904C(319, &qword_27F931788, MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_25850904C(319, &qword_27F931790, MEMORY[0x277D858B0]);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_2585090C8(319, &qword_27F931798, MEMORY[0x277D857B8]);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_2585090C8(319, &qword_27F9317A0, MEMORY[0x277D85788]);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            v10 = sub_258532A4C();
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_2584A7894(319, &qword_27F9317A8, &qword_27F9317B0, &qword_25853EA00);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_25850911C();
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  sub_2584A7894(319, &qword_27F9317C0, &qword_27F930570, &qword_258538220);
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_25850904C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for VideoStreamEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2585090C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MediaStreamInternalEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25850911C()
{
  if (!qword_27F9317B8)
  {
    type metadata accessor for MediaConnectionPrerequisites();
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9317B8);
    }
  }
}

uint64_t sub_258509198(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Signpost();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v30 - v11);
  swift_beginAccess();
  sub_2584AC3B8(v1 + 144, &v33, &qword_27F9317E0, &qword_25853EB18);
  if (v34)
  {
    sub_258464C18(&v33, v35);
    v37 = sub_25853391C();
    if (v37)
    {
      v13 = *(*__swift_project_boxed_opaque_existential_1(v35, v36) + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput);
      if (v13)
      {
        v14 = [v13 streamInputID];
      }

      else
      {
        v14 = 0;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      v19 = *(v18 + 48);
      v20 = v12 + *(v18 + 64);
      *v12 = v14;
      sub_25853399C();
      v31 = a1;
      *v20 = sub_25853392C();
      *(v20 + 2) = v21;
      *(v20 + 3) = v22;
      *(v20 + 2) = v23;
      swift_storeEnumTagMultiPayload();
      sub_2584D6874();
      v32 = v24;
      sub_25850FB28(v12, v9, type metadata accessor for Signpost);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *(v18 + 48);
        v26 = sub_25853398C();
        (*(*(v26 - 8) + 8))(&v9[v25], v26);
      }

      kdebug_trace();
      sub_25850FC88(v12, type metadata accessor for Signpost);
      v27 = *(v2 + 232);
      if (v27 != 3)
      {
        if (v27 == 4)
        {
          v28 = *__swift_project_boxed_opaque_existential_1(v35, v36);
          sub_2584D3F60(v31);
        }

        else
        {
          sub_258476AE4();
          swift_allocError();
          *v29 = 0;
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_25850AAF8();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    sub_258465168(&v33, &qword_27F9317E0, &qword_25853EB18);
    sub_25850AAF8();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_258509514()
{
  v1[5] = v0;
  v2 = sub_2585329BC();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for MediaConnectionPrerequisites();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v10 = sub_25853362C();
  v1[14] = v10;
  v1[15] = v9;

  return MEMORY[0x2822009F8](sub_2585096C8, v10, v9);
}

uint64_t sub_2585096C8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v3, &qword_27F930580, &unk_2585382B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_258465168(v0[10], &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v19 = v0[13];
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v7 = v0[13];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[5];
    sub_25850BB7C(v0[10], v7);
    v12 = *(v10 + 16);
    v12(v8, v7, v9);
    v13 = sub_258509C94(&OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_sessionID);
    v14 = v0[8];
    v12(v14, v0[9], v0[6]);
    v15 = type metadata accessor for AVConferenceBackedVideoStream();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_2584D4300(v14, v13);
    v0[16] = v18;
    v25 = v18;
    v26 = v0[5];
    (*(v0[7] + 8))(v0[9], v0[6]);
    v27 = sub_25850FBDC(&unk_27F930D80, type metadata accessor for AVConferenceBackedVideoStream);
    v28 = (v26 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
    v29 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
    *v28 = v25;
    v28[1] = v27;

    swift_unknownObjectRelease();
    v0[17] = sub_258509DB4();
    v0[18] = 0;

    return MEMORY[0x2822009F8](sub_258509A08, v25, 0);
  }
}

uint64_t sub_258509A08()
{
  v1 = v0[18];
  sub_2584BB594(v0[17], v0[16]);
  v0[19] = v1;
  v3 = v0[16];
  v2 = v0[17];
  if (v1)
  {

    v4 = v0[14];
    v5 = v0[15];
    v6 = sub_258509BC4;
  }

  else
  {
    v7 = v0[16];

    v4 = v0[14];
    v5 = v0[15];
    v6 = sub_258509AB0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258509AB0()
{
  v1 = v0[19];
  v2 = v0[5];
  sub_25850A160();
  v3 = v0[13];
  if (v1)
  {
    sub_25850FC88(v3, type metadata accessor for MediaConnectionPrerequisites);
    v4 = v0[13];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[8];
  }

  else
  {
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    v12 = v0[13];
    sub_25850FC88(v3, type metadata accessor for MediaConnectionPrerequisites);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_258509BC4()
{
  sub_25850FC88(v0[13], type metadata accessor for MediaConnectionPrerequisites);
  v1 = v0[19];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

id sub_258509C94(void *a1, void *a2)
{
  v5 = v2;
  v6 = *__swift_project_boxed_opaque_existential_1((v2 + *a1), *(v2 + *a1 + 24));
  result = sub_2584D2858();
  v8 = result;
  if (!v3)
  {
    v9 = *MEMORY[0x277CE57D8];
    *&v15 = sub_25853342C();
    *(&v15 + 1) = v10;
    sub_258533B2C();
    v11 = sub_2585329BC();
    v16 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v5 + *a2, v11);
    sub_2584F6C74(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v8;
    sub_25850D840(v14, v17, isUniquelyReferenced_nonNull_native);
    sub_2584BC6D0(v17);
    return v18;
  }

  return result;
}

id sub_258509DB4()
{
  v2 = v0;
  v3 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator + 24));
  v4 = sub_2584D2938();
  v5 = v4;
  if (v1 || *(v2 + 48) < 0)
  {
    return v5;
  }

  if (*(v2 + 32))
  {
    goto LABEL_15;
  }

  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  result = [v4 video];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = result;
  [result setVideoResolution_];

  result = [v5 video];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((~*&v8 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = result;
  [result setCustomWidth_];

  result = [v5 video];
  if (result)
  {
    if ((~*&v7 & 0x7FF0000000000000) != 0)
    {
      if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
          v11 = result;
          [result setCustomHeight_];

LABEL_15:
          result = [v5 video];
          if (result)
          {
            v12 = result;
            v13 = [result captureSource];

            if (v13 == 3)
            {
              sub_25850AB4C(v5);
              swift_beginAccess();
              sub_2584AC3B8(v2 + 144, v24, &qword_27F9317E0, &qword_25853EB18);
              v14 = v25;
              if (v25)
              {
                v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
                v16 = *(v14 - 8);
                v17 = *(v16 + 64);
                MEMORY[0x28223BE20](v15, v15);
                v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v16 + 16))(v19);
                sub_258465168(v24, &qword_27F9317E0, &qword_25853EB18);
                v20 = *(*v19 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput);
                if (v20)
                {
                  v21 = [v20 streamInputID];
                }

                else
                {
                  v21 = 0;
                }

                (*(v16 + 8))(v19, v14);
                [v5 setStreamInputID_];
              }

              else
              {
                sub_258465168(v24, &qword_27F9317E0, &qword_25853EB18);
                sub_25850AAF8();
                swift_allocError();
                *v22 = 0;
                swift_willThrow();
              }
            }

            return v5;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_25850A160()
{
  v2 = *(v0 + 48);
  if (v2 < 0)
  {
    if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream))
    {
      v3 = *(v0 + 24);
      v37 = *(v0 + 16);
      v4 = *(v0 + 32);
      v5 = *(v0 + 40);
      v6 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream + 8);
      if (v3)
      {
        v30 = v0;
        ObjectType = swift_getObjectType();
        v8 = *(v6 + 16);
        v32 = v4;
        sub_2584A967C(v37, v3, v4, v5, v2);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v9 = v8(ObjectType, v6);
        v10 = type metadata accessor for AVConferenceBackedRemoteVideoClient();
        swift_unknownObjectRetain();
        v11 = sub_2584D396C(v9, v3);
        if (v1)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();
          sub_2584A96C0(v37, v3, v32, v5, v2);
        }

        else
        {
          v21 = v11;
          swift_unknownObjectRelease();
          v35 = v10;
          v36 = &off_28698F1E0;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_2584A96C0(v37, v3, v32, v5, v2);
          v34[0] = v21;
          swift_beginAccess();
          sub_2584AC5D0(v34, v30 + 184, &qword_27F9317F0, &qword_25853EB30);
          swift_endAccess();
        }
      }

      else if (v37)
      {
        v31 = v0;
        v13 = swift_getObjectType();
        v14 = v4;
        v15 = *(v6 + 16);
        sub_2584A967C(v37, 0, v14, v5, v2);
        swift_unknownObjectRetain();
        v33 = v5;
        v16 = v37;
        v17 = v15(v13, v6);
        v18 = type metadata accessor for AVConferenceBackedRemoteVideoClient();
        v19 = v16;
        v20 = sub_2584D2F4C(v17, v19);
        if (v1)
        {

          sub_2584A96C0(v37, 0, v14, v33, v2);
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = v20;
          v35 = v18;
          v36 = &off_28698F1E0;

          sub_2584A96C0(v37, 0, v14, v33, v2);
          swift_unknownObjectRelease();
          v34[0] = v29;
          swift_beginAccess();
          sub_2584AC5D0(v34, v31 + 184, &qword_27F9317F0, &qword_25853EB30);
          swift_endAccess();
        }
      }

      else
      {
        sub_2584A967C(0, 0, *(v0 + 32), *(v0 + 40), v2);
        v22 = qword_27F92F8E0;
        swift_unknownObjectRetain();
        if (v22 != -1)
        {
          swift_once();
        }

        v23 = sub_258532A4C();
        __swift_project_value_buffer(v23, qword_27F93CFF0);

        v24 = sub_258532A2C();
        v25 = sub_2585338EC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v34[0] = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v34);
          _os_log_impl(&dword_25845E000, v24, v25, "%s receive configuration does not have layer or figEndpointID", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x259C82900](v27, -1, -1);
          MEMORY[0x259C82900](v26, -1, -1);
        }

        sub_258476AE4();
        swift_allocError();
        *v28 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_2584A96C0(0, 0, v4, v5, v2);
      }
    }

    else
    {
      sub_258476AE4();
      swift_allocError();
      *v12 = 8;
      swift_willThrow();
    }
  }
}

uint64_t sub_25850A63C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  swift_beginAccess();
  sub_2584AC3B8(v0 + 184, &v26, &qword_27F9317F0, &qword_25853EB30);
  if (!v27)
  {
    return sub_258465168(&v26, &qword_27F9317F0, &qword_25853EB30);
  }

  sub_258464C18(&v26, v28);
  v13 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v14 = *v13;
  if (*(*v13 + OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_isValid) == 1)
  {
    v15 = OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_eventStream;
    v16 = sub_25853368C();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    (*(v3 + 16))(v7, v14 + v15, v2);
    v17 = sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v25 = v1;
    v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v0;
    *(v20 + 24) = v17;
    (*(v3 + 32))(v20 + v18, v7, v2);
    *(v20 + v19) = v0;
    swift_retain_n();
    v21 = sub_258476C88(0, 0, v12, &unk_25853EB40, v20);
    v22 = *(v0 + 136);
    *(v0 + 136) = v21;
  }

  else
  {
    sub_2584D3A58();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_25850A96C(uint64_t a1)
{
  *(a1 + 8) = sub_25850FBDC(&qword_27F9317C8, type metadata accessor for VideoStreamAVConference);
  result = sub_25850FBDC(&qword_27F9317D0, type metadata accessor for VideoStreamAVConference);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_25850A9F4()
{
  result = qword_27F9317D8;
  if (!qword_27F9317D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9317D8);
  }

  return result;
}

uint64_t sub_25850AA48(uint64_t a1)
{
  result = sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25850AAA0(uint64_t a1)
{
  result = sub_25850FBDC(&qword_27F9317C8, type metadata accessor for VideoStreamAVConference);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25850AAF8()
{
  result = qword_27F9317E8;
  if (!qword_27F9317E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9317E8);
  }

  return result;
}

void sub_25850AB4C(void *a1)
{
  formatDescriptionOut[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 video];
  if (!v4)
  {
LABEL_24:
    __break(1u);
  }

  v5 = v4;
  v6 = [v4 videoResolution];

  if (v6 != 12)
  {
    sub_25850AAF8();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
LABEL_18:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  formatDescriptionOut[0] = 0;
  v7 = [a1 video];
  if (!v7)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  v9 = [v7 pixelFormat];

  v10 = [a1 video];
  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v10 customWidth];

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = [a1 video];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 customHeight];

    if (v15 >= 0xFFFFFFFF80000000)
    {
      if (v15 <= 0x7FFFFFFF)
      {
        v16 = CMVideoFormatDescriptionCreate(0, v9, v12, v15, 0, formatDescriptionOut);
        if (formatDescriptionOut[0])
        {
          v17 = v16;
          v18 = formatDescriptionOut[0];
          if (v17 == sub_258532A6C())
          {
            v19 = v1;
            v20 = type metadata accessor for AVConferenceBackedStreamInput();
            v21 = objc_allocWithZone(v20);
            v22 = v18;
            v23 = sub_2584D3B60(v22);
            if (v2)
            {
            }

            else
            {
              v27 = v23;
              v28[3] = v20;
              v28[4] = &off_28698F2B8;

              v28[0] = v27;
              swift_beginAccess();
              sub_2584AC5D0(v28, v19 + 144, &qword_27F9317E0, &qword_25853EB18);
              swift_endAccess();
            }

            goto LABEL_17;
          }
        }

        sub_25850AAF8();
        swift_allocError();
        *v25 = 3;
        swift_willThrow();
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_25850AE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317F8, &qword_25853EB48);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931800, &unk_25853EB50);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v5[15] = sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v13 = sub_25853362C();
  v5[16] = v13;
  v5[17] = v12;

  return MEMORY[0x2822009F8](sub_25850AFA4, v13, v12);
}

uint64_t sub_25850AFA4()
{
  v1 = v0[14];
  v2 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  sub_2585336FC();
  v0[18] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStreamContinuation;
  v3 = v0[15];
  v4 = v0[8];
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_25850B090;
  v7 = v0[14];
  v8 = v0[12];

  return MEMORY[0x2822005A8](v0 + 2, v4, v3, v8, v0 + 6);
}

uint64_t sub_25850B090()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_25850B51C;
  }

  else
  {
    v6 = sub_25850B1A0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25850B1A0()
{
  v28 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    goto LABEL_9;
  }

  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  v4 = sub_258532A4C();
  __swift_project_value_buffer(v4, qword_27F93CFF0);

  sub_25850BB2C(v1, v2);
  v5 = sub_258532A2C();
  v6 = sub_2585338EC();

  sub_25850BB54(v1, v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v27);
    *(v7 + 12) = 2080;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2;
    sub_25850BB40(v1, v2);
    v9 = sub_25853347C();
    v11 = sub_2584713B0(v9, v10, &v27);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_25845E000, v5, v6, "%s received remote video client event: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  if (sub_25853376C())
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    sub_25850BB54(v1, v2);
LABEL_9:
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);

    v14 = *(v0 + 8);

    return v14();
  }

  if (v2 != 2 || v1)
  {
    sub_25850BB54(v1, v2);
  }

  else
  {
    v16 = *(v0 + 144);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
    sub_2585337EC();
    (*(v18 + 8))(v17, v19);
  }

  v21 = *(v0 + 120);
  v22 = *(v0 + 64);
  v23 = *(MEMORY[0x277D858B8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_25850B090;
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);

  return MEMORY[0x2822005A8](v0 + 16, v22, v21, v26, v0 + 48);
}

uint64_t sub_25850B51C()
{
  v16 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[6];
  v0[20] = v1;
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFF0);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v15);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_25845E000, v5, v6, "%s remote video client failed with error: %@", v7, 0x16u);
    sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_25850B784;
  v13 = v0[8];

  return sub_258519A34(v1);
}

uint64_t sub_25850B784()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25850B8A4, v4, v3);
}

uint64_t sub_25850B8A4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25850B91C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25850BA00(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_25850AE14(a1, v6, v7, v1 + v5, v8);
}

id sub_25850BB2C(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_25850BB40(result, a2);
  }

  return result;
}

id sub_25850BB40(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_25850BB54(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_25850BB68(a1, a2);
  }
}

void sub_25850BB68(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_25850BB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25850BBE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930788, &unk_25853EBA0);
  result = sub_258533CCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_258533EDC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25850BE50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931880, &qword_25853EBF0);
  v38 = a2;
  result = sub_258533CCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v39 = (v13 - 1) & v13;
LABEL_17:
      v21 = *(v5 + 56) + 40 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      if ((v38 & 1) == 0)
      {
        sub_2584A967C(v22, v23, v24, v25, v26);
      }

      v27 = *(v8 + 40);
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
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
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
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
        v39 = (v20 - 1) & v20;
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

uint64_t sub_25850C144(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931888, &qword_25853EBF8);
  v34 = a2;
  result = sub_258533CCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(v5 + 56) + 16 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      if ((v34 & 1) == 0)
      {
        sub_2584742A4(v22, v23);
      }

      v24 = *(v8 + 40);
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      ++*(v8 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25850C3EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
  v36 = a2;
  result = sub_258533CCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2584F6C74(v25, v37);
      }

      else
      {
        sub_258472C68(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2584F6C74(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25850C6A4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_258533CCC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = *(v23 + 8 * v22);
      }

      v26 = *(v10 + 40);
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25850C918(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
  result = sub_258533CCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_2584F6C74((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2584BC778(v24, &v38);
        sub_258472C68(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_258533B0C();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2584F6C74(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25850CBD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931500, &unk_25853D740);
  v38 = a2;
  result = sub_258533CCC();
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
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
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

unint64_t sub_25850CE78(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC4BC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850BE50(v12, a2 & 1);
      v16 = *v3;
      result = sub_2584BC4BC();
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850DBF0();
      result = v15;
    }
  }

  v18 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    v20 = *(v18 + 56) + 40 * result;
    v21 = *a1;
    v22 = *(a1 + 16);
    *(v20 + 32) = *(a1 + 32);
    *v20 = v21;
    *(v20 + 16) = v22;
    v23 = *(v18 + 16);
    v11 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v11)
    {
      *(v18 + 16) = v24;
      return result;
    }

    goto LABEL_15;
  }

  v19 = *(v18 + 56) + 40 * result;

  return sub_25850FCE8(a1, v19);
}

unint64_t sub_25850CFC4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2584BC50C();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25850C144(v14, a3 & 1);
      v18 = *v4;
      result = sub_2584BC50C();
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25850DD60();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v20 + 8 * (result >> 6) + 64) |= 1 << result;
    v24 = *(v20 + 56) + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    v25 = *(v20 + 16);
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      *(v20 + 16) = v26;
      return result;
    }

    goto LABEL_15;
  }

  v21 = *(v20 + 56) + 16 * result;
  v22 = *v21;
  v23 = *(v21 + 8);
  *v21 = a1;
  *(v21 + 8) = a2 & 1;

  return sub_2584A9614(v22, v23);
}

_OWORD *sub_25850D118(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2584BC1D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25850DEC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25850C3EC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2584BC1D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_258533E5C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_2584F6C74(a1, v23);
  }

  else
  {
    sub_25850DB08(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_25850D268(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC4BC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931840, &qword_25853EBC0);
      v16 = *v3;
      result = sub_2584BC4BC();
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931840, &qword_25853EBC0);
      result = v15;
    }
  }

  v18 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + 8 * result) = a1;
    v21 = *(v18 + 16);
    v11 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v11)
    {
      *(v18 + 16) = v22;
      return result;
    }

    goto LABEL_15;
  }

  v19 = *(v18 + 56);
  v20 = *(v19 + 8 * result);
  *(v19 + 8 * result) = a1;
}

unint64_t sub_25850D3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC4BC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931848, &qword_25853EBC8);
      v16 = *v3;
      result = sub_2584BC4BC();
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931848, &qword_25853EBC8);
      result = v15;
    }
  }

  v18 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + 8 * result) = a1;
    v21 = *(v18 + 16);
    v11 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v11)
    {
      *(v18 + 16) = v22;
      return result;
    }

    goto LABEL_15;
  }

  v19 = *(v18 + 56);
  v20 = *(v19 + 8 * result);
  *(v19 + 8 * result) = a1;
}

unint64_t sub_25850D560(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC50C();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931830, &qword_25853EBB0);
      v16 = *v3;
      result = sub_2584BC50C();
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931830, &qword_25853EBB0);
      result = v15;
    }
  }

  v18 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + 8 * result) = a1;
    v21 = *(v18 + 16);
    v11 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v11)
    {
      *(v18 + 16) = v22;
      return result;
    }

    goto LABEL_15;
  }

  v19 = *(v18 + 56);
  v20 = *(v19 + 8 * result);
  *(v19 + 8 * result) = a1;
}

unint64_t sub_25850D6D0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC50C();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931838, &qword_25853EBB8);
      v16 = *v3;
      result = sub_2584BC50C();
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931838, &qword_25853EBB8);
      result = v15;
    }
  }

  v18 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + 8 * result) = a1;
    v21 = *(v18 + 16);
    v11 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v11)
    {
      *(v18 + 16) = v22;
      return result;
    }

    goto LABEL_15;
  }

  v19 = *(v18 + 56);
  v20 = *(v19 + 8 * result);
  *(v19 + 8 * result) = a1;
}

_OWORD *sub_25850D840(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2584BC248(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25850E1F8();
      goto LABEL_7;
    }

    sub_25850C918(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2584BC248(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2584BC778(a2, v22);
      return sub_25850DB74(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_258533E5C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_2584F6C74(a1, v17);
}

uint64_t sub_25850D98C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2584BC1D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25850CBD0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2584BC1D0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25850E39C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_25850DB08(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2584F6C74(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_25850DB74(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2584F6C74(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_25850DBF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931880, &qword_25853EBF0);
  v2 = *v0;
  v3 = sub_258533CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 56) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        result = sub_2584A967C(v19, v20, v21, v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25850DD60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931888, &qword_25853EBF8);
  v2 = *v0;
  v3 = sub_258533CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 56) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = sub_2584742A4(v19, v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25850DEC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
  v2 = *v0;
  v3 = sub_258533CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_258472C68(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2584F6C74(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25850E0A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_258533CBC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 56) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 56) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25850E1F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
  v2 = *v0;
  v3 = sub_258533CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_2584BC778(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_258472C68(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2584F6C74(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25850E39C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931500, &unk_25853D740);
  v2 = *v0;
  v3 = sub_258533CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25850E50C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 33) == 1)
  {
    if (*(a1 + 32))
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(a1 + 16) | *(a1 + 24) | *a1 | *(a1 + 8)) == 0;
    }

    if (!v2 && !*(a1 + 32))
    {
      v2 = *a1 == 1;
    }

    sub_258476AE4();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }

  else
  {
    v5 = *(a2 + 32);
    v6 = *MEMORY[0x277CE55E0];
    v7 = sub_25853342C();
    v9 = v8;
    if (v5 < 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v14 = MEMORY[0x277D83B88];
    *&v13 = v10;
    sub_2584F6C74(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25850D118(v12, v7, v9, isUniquelyReferenced_nonNull_native);

    return 12;
  }
}

uint64_t sub_25850E63C(uint64_t a1)
{
  v2 = sub_25853394C();
  v189 = *(v2 - 8);
  v190 = v2;
  v3 = *(v189 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v188 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_2585339AC();
  v6 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186, v7);
  v187 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25853335C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v185 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931850, &qword_25853EBD0);
  v184 = *(v194 - 1);
  v13 = v184[8];
  MEMORY[0x28223BE20](v194, v14);
  v183 = (&v157 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  v201 = *(v16 - 8);
  v202 = v16;
  v17 = *(v201 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v182 = &v157 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v199 = *(v20 - 8);
  v200 = v20;
  v21 = *(v199 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v181 = &v157 - v23;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931858, &unk_25853EBD8);
  v24 = *(v180 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v180, v26);
  v28 = &v157 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  v197 = *(v29 - 8);
  v198 = v29;
  v30 = *(v197 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v157 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931810, &unk_25853EB70);
  v195 = *(v34 - 8);
  v196 = v34;
  v35 = *(v195 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v157 - v37;
  inited = type metadata accessor for VideoStreamInternalInitParameters();
  v39 = *(*(inited - 1) + 64);
  MEMORY[0x28223BE20](inited, v40);
  v192 = a1;
  v234 = (&v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25850FB28(a1, v234, type metadata accessor for VideoStreamInternalInitParameters);
  v42 = type metadata accessor for AVConferenceBackedMediaStreamNegotiatorVendor();
  v43 = swift_allocObject();
  v227 = v42;
  v228 = &off_28698F1B8;
  v226[0] = v43;
  v44 = type metadata accessor for AVConferenceBackedMediaStreamAVCVendor();
  v45 = swift_allocObject();
  v225[4] = &off_28698EA90;
  v225[3] = v44;
  v225[0] = v45;
  v46 = type metadata accessor for AVConferenceBackedMediaStreamInputVendor();
  v47 = swift_allocObject();
  v224[4] = &off_28698F0D0;
  v224[3] = v46;
  v224[0] = v47;
  v48 = type metadata accessor for AVConferenceBackedRemoteVideoClientVendor();
  v49 = swift_allocObject();
  v223[4] = &off_28698F2A0;
  v223[3] = v48;
  v223[0] = v49;
  v50 = type metadata accessor for TrafficRegistrationVendor();
  v51 = swift_allocObject();
  v222[4] = &off_286990C48;
  v222[3] = v50;
  v222[0] = v51;
  v52 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProviderVendor();
  v53 = swift_allocObject();
  v221[4] = &off_281DA7598;
  v221[3] = v52;
  v221[0] = v53;
  v54 = type metadata accessor for AVConferenceBackedDelegatedPIDProvider();
  v55 = swift_allocObject();
  v220[4] = &off_28698E800;
  v220[3] = v54;
  v220[0] = v55;
  v56 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v57 = swift_allocObject();
  v57[3] = 0xD00000000000001CLL;
  v57[4] = 0x800000025853FF50;
  v58 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v59 = sub_25853341C();
  v60 = [v58 initWithSuiteName_];

  v57[2] = v60;
  v219[4] = &off_28698F5C8;
  v219[3] = v56;
  v219[0] = v57;
  v61 = type metadata accessor for KTraceBackedSignpostReporter();
  v62 = swift_allocObject();
  v218[4] = &off_28698F5E0;
  v218[3] = v61;
  v218[0] = v62;
  v63 = type metadata accessor for VideoStreamAVConference();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v179 = v63;
  v66 = swift_allocObject();
  *(v66 + 184) = 0u;
  v176 = v66 + 184;
  *(v66 + 232) = 0;
  *(v66 + 136) = 0u;
  *(v66 + 152) = 0u;
  *(v66 + 168) = 0u;
  *(v66 + 200) = 0u;
  *(v66 + 216) = 0;
  v67 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStream;
  v68 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStreamContinuation;
  v69 = v180;
  (*(v24 + 104))(v28, *MEMORY[0x277D858A0], v180);
  sub_2585337BC();
  (*(v24 + 8))(v28, v69);
  v70 = *(v195 + 32);
  v178 = v67;
  v70(v67, v38, v196);
  v71 = *(v197 + 32);
  v180 = v68;
  v71(v68, v33, v198);
  v72 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStream;
  v73 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStreamContinuation);
  v75 = v183;
  v74 = v184;
  v76 = v194;
  (v184[13])(v183, *MEMORY[0x277D85778], v194);
  v77 = v181;
  v78 = v182;
  sub_25853369C();
  (v74[1])(v75, v76);
  v79 = *(v199 + 32);
  v177 = v72;
  v79(v72, v77, v200);
  v80 = *(v201 + 32);
  v181 = v73;
  v80(v73, v78, v202);
  v81 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger;
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v82 = sub_258532A4C();
  v83 = __swift_project_value_buffer(v82, qword_27F93CFF0);
  v174 = *(v82 - 8);
  v175 = v82;
  v84 = *(v174 + 16);
  v182 = v81;
  v84(v66 + v81, v83, v82);
  *(v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused) = 0;
  v171 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor;
  *(v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor) = 0;
  v172 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor;
  *(v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor) = 0;
  v85 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v87 = *(*(v86 - 8) + 56);
  v173 = v85;
  v87(v85, 1, 1, v86);
  v88 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  *v88 = 0;
  v88[1] = 0;
  v169 = v88;
  v89 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  v90 = type metadata accessor for MediaConnectionPrerequisites();
  v91 = *(*(v90 - 8) + 56);
  v170 = v89;
  v91(v89, 1, 1, v90);
  v92 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  *v92 = 0u;
  *(v92 + 16) = 0u;
  v168 = v92;
  *(v92 + 32) = 0;
  v93 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  (*(*(v94 - 8) + 56))(v66 + v93, 1, 1, v94);
  v95 = v234;
  v96 = v234[1];
  *(v66 + 236) = *v234;
  v97 = *(v95 + 32);
  v98 = *(v95 + 33);
  *(v66 + 252) = v96;
  *(v66 + 268) = v97;
  *(v66 + 269) = v98;
  v100 = *(v95 + 5);
  v99 = *(v95 + 6);
  v102 = *(v95 + 7);
  v183 = *(v95 + 8);
  v101 = v183;
  v184 = v99;
  *(v66 + 16) = v100;
  *(v66 + 24) = v99;
  *(v66 + 32) = v102;
  *(v66 + 40) = v101;
  v103 = *(v95 + 72);
  v104 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
  *(v66 + 48) = v103;
  v166 = v104;
  sub_258464C30((v95 + 5), v104);
  v106 = *(v95 + 168);
  v230 = *(v95 + 152);
  v105 = v230;
  v231 = v106;
  v108 = *(v95 + 200);
  v232 = *(v95 + 184);
  v107 = v232;
  v233 = v108;
  v109 = *(v95 + 136);
  v229[0] = *(v95 + 120);
  v229[1] = v109;
  v110 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer);
  *v110 = v229[0];
  v110[1] = v109;
  v110[2] = v105;
  v110[3] = v106;
  v110[4] = v107;
  v110[5] = v108;
  v194 = v110;
  v111 = v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_sessionID;
  v112 = inited;
  v113 = inited[8];
  v114 = sub_2585329BC();
  v162 = *(v114 - 8);
  v115 = *(v162 + 16);
  v164 = v114;
  v165 = v111;
  v115(v111, v95 + v113);
  *(v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_shouldPerformTrafficRegistration) = *(v95 + v112[9]);
  v116 = v95 + v112[10];
  v167 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider);
  sub_258464C30(v116, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider);
  v163 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  sub_258464C30(v221, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  v117 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  swift_allocObject();
  sub_2584A967C(v100, v184, v102, v183, v103);
  sub_2584AC3B8(v229, &v212, &qword_27F9303B8, &qword_258537F70);
  v120 = sub_2584EAE98();
  v121 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider);
  v121[3] = v117;
  v121[4] = &off_28698FE70;
  v184 = v121;
  *v121 = v120;
  v159 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamVendor);
  sub_258464C30(v225, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamVendor);
  sub_258464C30(v224, v66 + 56);
  sub_258464C30(v223, v66 + 96);
  v158 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_delegatedPIDProvider);
  sub_258464C30(v220, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_delegatedPIDProvider);
  v161 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  sub_258464C30(v219, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  v160 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistrationVendor);
  sub_258464C30(v222, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistrationVendor);
  v183 = (v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_signpostReporter);
  sub_258464C30(v218, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_signpostReporter);
  if (*(v66 + 48) < 0)
  {
    if (qword_27F92F940 != -1)
    {
      swift_once();
    }

    v122 = &qword_27F93D0A8;
  }

  else
  {
    if (qword_27F92F938 != -1)
    {
      swift_once();
    }

    v122 = &qword_27F93D0A0;
  }

  v123 = *v122;
  sub_25850FB90();
  inited = v123;
  sub_25853334C();
  *&v212 = MEMORY[0x277D84F90];
  sub_25850FBDC(&qword_27F931868, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931870, &qword_25853EBE8);
  sub_25850FC24();
  sub_258533A8C();
  (*(v189 + 104))(v188, *MEMORY[0x277D85268], v190);
  *(v66 + 224) = sub_2585339BC();
  v124 = *(v66 + 268);
  v125 = *(v66 + 269);
  v126 = *(v66 + 252);
  v209[0] = *(v66 + 236);
  v209[1] = v126;
  v210 = v124;
  v211 = v125;
  v127 = *(v66 + 24);
  v128 = *(v66 + 32);
  v129 = *(v66 + 40);
  v130 = *(v66 + 48);
  v204 = *(v66 + 16);
  v205 = v127;
  v206 = v128;
  v207 = v129;
  v208 = v130;
  sub_2584A967C(v204, v127, v128, v129, v130);
  v131 = v191;
  v132 = sub_25850E50C(v209, &v204);
  if (!v131)
  {
    v144 = v133;
    v145 = v132;
    sub_2584A96C0(v204, v205, v206, v207, v208);
    v146 = v194[3];
    v214 = v194[2];
    v215 = v146;
    v147 = v194[5];
    v216 = v194[4];
    v217 = v147;
    v148 = v194[1];
    v212 = *v194;
    v213 = v148;
    if (v212 == 2)
    {
      v149 = *__swift_project_boxed_opaque_existential_1(v226, v227);
      sub_2584D2AD4(v145, v144, v203);
      v150 = v234;

      __swift_destroy_boxed_opaque_existential_1Tm(v218);
      __swift_destroy_boxed_opaque_existential_1Tm(v219);
      __swift_destroy_boxed_opaque_existential_1Tm(v220);
      __swift_destroy_boxed_opaque_existential_1Tm(v221);
      __swift_destroy_boxed_opaque_existential_1Tm(v222);
      __swift_destroy_boxed_opaque_existential_1Tm(v223);
      __swift_destroy_boxed_opaque_existential_1Tm(v224);
      __swift_destroy_boxed_opaque_existential_1Tm(v225);
      v156 = v150;
    }

    else
    {
      v152 = *(&v212 + 1);
      v151 = v213;
      v190 = *__swift_project_boxed_opaque_existential_1(v226, v227);
      v191 = 0;
      v153 = v214;
      v154 = v215;
      v186 = *(&v216 + 1);
      v187 = v216;
      v188 = *(&v217 + 1);
      v189 = v217;
      sub_2584A7B8C(v152, v151);
      sub_2584ABAF4(v153, *(&v153 + 1));
      sub_2584ABAF4(v154, *(&v154 + 1));
      sub_2584A7B8C(v187, v186);
      sub_2584A7B8C(v189, v188);
      v155 = v191;
      sub_2584D2BD8(v152, v151, v144, v203);
      if (v155)
      {
        sub_258465168(&v212, &qword_27F9303B8, &qword_258537F70);

        __swift_destroy_boxed_opaque_existential_1Tm(v218);
        __swift_destroy_boxed_opaque_existential_1Tm(v219);
        __swift_destroy_boxed_opaque_existential_1Tm(v220);
        __swift_destroy_boxed_opaque_existential_1Tm(v221);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        __swift_destroy_boxed_opaque_existential_1Tm(v223);
        __swift_destroy_boxed_opaque_existential_1Tm(v224);
        __swift_destroy_boxed_opaque_existential_1Tm(v225);
        sub_25850FC88(v234, type metadata accessor for VideoStreamInternalInitParameters);
        goto LABEL_12;
      }

      sub_258465168(&v212, &qword_27F9303B8, &qword_258537F70);

      __swift_destroy_boxed_opaque_existential_1Tm(v218);
      __swift_destroy_boxed_opaque_existential_1Tm(v219);
      __swift_destroy_boxed_opaque_existential_1Tm(v220);
      __swift_destroy_boxed_opaque_existential_1Tm(v221);
      __swift_destroy_boxed_opaque_existential_1Tm(v222);
      __swift_destroy_boxed_opaque_existential_1Tm(v223);
      __swift_destroy_boxed_opaque_existential_1Tm(v224);
      __swift_destroy_boxed_opaque_existential_1Tm(v225);
      v156 = v234;
    }

    sub_25850FC88(v156, type metadata accessor for VideoStreamInternalInitParameters);
    sub_258464C18(v203, v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v218);
  __swift_destroy_boxed_opaque_existential_1Tm(v219);
  __swift_destroy_boxed_opaque_existential_1Tm(v220);
  __swift_destroy_boxed_opaque_existential_1Tm(v221);
  __swift_destroy_boxed_opaque_existential_1Tm(v222);
  __swift_destroy_boxed_opaque_existential_1Tm(v223);
  __swift_destroy_boxed_opaque_existential_1Tm(v224);
  __swift_destroy_boxed_opaque_existential_1Tm(v225);
  sub_25850FC88(v234, type metadata accessor for VideoStreamInternalInitParameters);
  sub_2584A96C0(v204, v205, v206, v207, v208);
LABEL_12:
  sub_2584A96C0(*(v66 + 16), *(v66 + 24), *(v66 + 32), *(v66 + 40), *(v66 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v66 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v66 + 96));
  v134 = *(v66 + 136);

  sub_258465168(v66 + 144, &qword_27F9317E0, &qword_25853EB18);
  sub_258465168(v176, &qword_27F9317F0, &qword_25853EB30);

  (*(v162 + 8))(v165, v164);
  __swift_destroy_boxed_opaque_existential_1Tm(v166);
  v135 = v194[3];
  v214 = v194[2];
  v215 = v135;
  v136 = v194[5];
  v216 = v194[4];
  v217 = v136;
  v137 = v194[1];
  v212 = *v194;
  v213 = v137;
  sub_258465168(&v212, &qword_27F9303B8, &qword_258537F70);
  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  __swift_destroy_boxed_opaque_existential_1Tm(v159);
  __swift_destroy_boxed_opaque_existential_1Tm(v158);
  (*(v195 + 8))(v178, v196);
  (*(v197 + 8))(v180, v198);
  (*(v199 + 8))(v177, v200);
  (*(v201 + 8))(v181, v202);
  (*(v174 + 8))(&v182[v66], v175);
  __swift_destroy_boxed_opaque_existential_1Tm(v184);
  v138 = *(v66 + v171);

  v139 = *(v66 + v172);

  sub_258465168(v173, &qword_27F931820, &unk_25853F380);
  v140 = *v169;
  swift_unknownObjectRelease();
  sub_258465168(v170, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  sub_258465168(v168, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm(v167);
  __swift_destroy_boxed_opaque_existential_1Tm(v183);
  sub_258465168(v66 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  v141 = *(*v66 + 48);
  v142 = *(*v66 + 52);
  swift_deallocPartialClassInstance();
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v226);
  sub_25850FC88(v192, type metadata accessor for VideoStreamInternalInitParameters);
  return v66;
}

uint64_t sub_25850FA84(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  if (result != 2)
  {
    sub_258467E20(a2, a3);
    sub_2584AE960(a5, a6);
    sub_2584AE960(a7, a8);
    sub_258467E20(a9, a10);

    return sub_258467E20(a11, a12);
  }

  return result;
}

uint64_t sub_25850FB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25850FB90()
{
  result = qword_27F931860;
  if (!qword_27F931860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F931860);
  }

  return result;
}

uint64_t sub_25850FBDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25850FC24()
{
  result = qword_27F931878;
  if (!qword_27F931878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F931870, &qword_25853EBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931878);
  }

  return result;
}

uint64_t sub_25850FC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25850FD54(uint64_t a1)
{
  result = sub_25850AAF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25850FD80()
{
  result = qword_27F931890;
  if (!qword_27F931890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931890);
  }

  return result;
}

uint64_t sub_25850FDD4(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  swift_unknownObjectRetain();
  v1 = nw_endpoint_copy_interface();
  if (v1)
  {
    type = nw_interface_get_type(v1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (type == nw_interface_type_wired)
    {
      return 1;
    }

    else
    {
      return 2 * (type != nw_interface_type_wifi);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return 2;
  }
}

uint64_t sub_25850FE58()
{
  sub_258532EEC();
  nw_parameters_allow_interface_type();
  swift_unknownObjectRelease();
  sub_258532EEC();
  nw_parameters_allow_interface_subtype();
  swift_unknownObjectRelease();
  sub_258532EEC();
  nw_parameters_allow_interface_type();
  swift_unknownObjectRelease();
  sub_258532EEC();
  nw_parameters_allow_interface_subtype();
  swift_unknownObjectRelease();
  v13 = &type metadata for MediaContinuityKitFeatureFlags;
  v14 = sub_2584A56DC();
  LOBYTE(aBlock[0]) = 1;
  v0 = sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v0)
  {
    sub_258532EEC();
    v14 = sub_25850FDD4;
    v15 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25851011C;
    v13 = &block_descriptor_6;
    v1 = _Block_copy(aBlock);

    nw_parameters_set_endpoint_resolution_preference_handler();
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_25853341C();
  v5 = [v3 initWithSuiteName_];

  *(inited + 16) = v5;
  v6 = sub_2585138CC(1, 1);

  if (v6 != 2 && (v6 & 1) != 0)
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93CFA8);
    v8 = sub_258532A2C();
    v9 = sub_2585338EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25845E000, v8, v9, "Allowing infrastructure WiFi interface", v10, 2u);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    sub_258532EEC();
    nw_parameters_allow_interface_subtype();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25851011C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t _s7Network12NWParametersC18MediaContinuityKitE35compositorServicesBrowserParametersACvgZ_0()
{
  sub_258532EFC();
  v10 = sub_258532EDC();
  sub_2585330CC();

  sub_2585330DC();

  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_25853341C();
  v3 = [v1 initWithSuiteName_];

  *(inited + 16) = v3;
  v4 = sub_2585138CC(1, 1);

  if (v4 == 2 || (v4 & 1) == 0)
  {
    sub_258532EEC();
    nw_parameters_set_include_ble();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CFD8);
    v6 = sub_258532A2C();
    v7 = sub_2585338EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25845E000, v6, v7, "Allowing Infra WiFi Interface, not limiting discovery to BLE ", v8, 2u);
      MEMORY[0x259C82900](v8, -1, -1);
    }
  }

  return v10;
}

uint64_t _s7Network12NWParametersC18MediaContinuityKitE38compositorServicesConnectionParameters9sessionIDAC10Foundation4UUIDV_tFZ_0()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = sub_258532ECC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258532EFC();
  v14 = sub_258532EDC();
  sub_2585330CC();

  v13 = v11;
  sub_25853310C();

  v13 = v14;
  (*(v1 + 104))(v5, *MEMORY[0x277CD8E18], v0);
  sub_2585330FC();
  (*(v1 + 8))(v5, v0);

  v6 = v11;
  sub_25850FE58();

  sub_258532EBC();
  sub_258532EEC();
  nw_parameters_set_required_address_family();
  swift_unknownObjectRelease();
  v11 = sub_25853299C();
  v12 = v7;
  sub_258532EEC();
  nw_parameters_set_migration_controller_session_uuid();
  swift_unknownObjectRelease();
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _s7Network12NWParametersC18MediaContinuityKitE36compositorServicesListenerParametersACvgZ_0()
{
  sub_258532EFC();
  v1 = sub_258532EDC();
  sub_2585330CC();

  sub_2585330EC();

  sub_25850FE58();

  sub_258532EEC();
  nw_parameters_set_required_address_family();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for ReportingEndReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReportingEndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2585107F8()
{
  v1 = *v0;
  sub_258533EEC();
  v2 = dword_25853EDD8[v1];
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_258510880()
{
  v1 = *v0;
  sub_258533EEC();
  v2 = dword_25853EDD8[v1];
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_2585108CC@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258510A18(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2585109C4()
{
  result = qword_27F931898;
  if (!qword_27F931898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931898);
  }

  return result;
}

uint64_t sub_258510A18(int a1)
{
  if (a1 <= 2000)
  {
    if (a1 <= 999)
    {
      return 1;
    }

    if (a1 <= 1002)
    {
      if (a1 == 1000)
      {
        return 14;
      }

      if (a1 == 1001)
      {
        return 15;
      }

      return 16;
    }

    switch(a1)
    {
      case 1003:
        return 17;
      case 1004:
        return 18;
      case 2000:
        return 19;
    }

    return 40;
  }

  if (a1 > 2010)
  {
    if (a1 > 5000)
    {
      if (a1 <= 6999)
      {
        if (a1 == 5001)
        {
          return 35;
        }

        if (a1 == 6000)
        {
          return 36;
        }
      }

      else
      {
        switch(a1)
        {
          case 7000:
            return 37;
          case 8000:
            return 38;
          case 8001:
            return 39;
        }
      }
    }

    else if (a1 <= 3000)
    {
      if (a1 == 2011)
      {
        return 30;
      }

      if (a1 == 3000)
      {
        return 31;
      }
    }

    else
    {
      switch(a1)
      {
        case 3001:
          return 32;
        case 4000:
          return 33;
        case 5000:
          return 34;
      }
    }

    return 40;
  }

  if (a1 > 2005)
  {
    if (a1 <= 2007)
    {
      if (a1 == 2006)
      {
        return 25;
      }

      else
      {
        return 26;
      }
    }

    else if (a1 == 2008)
    {
      return 27;
    }

    else if (a1 == 2009)
    {
      return 28;
    }

    else
    {
      return 29;
    }
  }

  else if (a1 <= 2002)
  {
    if (a1 == 2001)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }

  else if (a1 == 2003)
  {
    return 22;
  }

  else if (a1 == 2004)
  {
    return 23;
  }

  else
  {
    return 24;
  }
}

unint64_t sub_258510D00()
{
  result = qword_27F9318A0;
  if (!qword_27F9318A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9318A0);
  }

  return result;
}

void sub_258510D54()
{
  v1 = v0;
  if (*(v0 + 112))
  {
    v2 = qword_27F92F8F0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D020);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v8, type metadata accessor for TimeSyncHeartbeat);
      v9 = sub_258533DFC();
      v11 = sub_2584713B0(v9, v10, &v22);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_25845E000, v4, v5, "%s stopping", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    sub_25853374C();

    v12 = *(v1 + 112);
    *(v1 + 112) = 0;
  }

  else
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v13 = sub_258532A4C();
    __swift_project_value_buffer(v13, qword_27F93D020);

    oslog = sub_258532A2C();
    v14 = sub_2585338CC();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v17, type metadata accessor for TimeSyncHeartbeat);
      v18 = sub_258533DFC();
      v20 = sub_2584713B0(v18, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_25845E000, oslog, v14, "%s not started", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x259C82900](v16, -1, -1);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2585110D4()
{
  if (v0[14])
  {
    sub_258510D54();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v1 = v0[14];

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_25851114C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TimeSyncHeartbeat();
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

void sub_25851118C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v35 - v5;
  if (v0[14])
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93D020);

    v36 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v36, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v0;
      v38 = v10;
      *v9 = 136315138;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v11, type metadata accessor for TimeSyncHeartbeat);
      v12 = sub_258533DFC();
      v14 = sub_2584713B0(v12, v13, &v38);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25845E000, v36, v8, "%s already started", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    else
    {
      v34 = v36;
    }
  }

  else
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v15 = sub_258532A4C();
    __swift_project_value_buffer(v15, qword_27F93D020);

    v16 = sub_258532A2C();
    v17 = sub_2585338EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v0;
      v38 = v19;
      *v18 = 136315394;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v20, type metadata accessor for TimeSyncHeartbeat);
      v21 = sub_258533DFC();
      v23 = sub_2584713B0(v21, v22, &v38);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = v0[7];
      v25 = v0[8];
      v26 = sub_258533F5C();
      v28 = sub_2584713B0(v26, v27, &v38);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_25845E000, v16, v17, "%s starting with interval: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v19, -1, -1);
      MEMORY[0x259C82900](v18, -1, -1);
    }

    v29 = sub_25853368C();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    v32 = sub_2585135CC(0, 0, v6, &unk_25853EF38, v31);
    v33 = v1[14];
    v1[14] = v32;
  }
}

uint64_t sub_258511600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_258533C4C();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_258533C6C();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_25853398C();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = type metadata accessor for Signpost();
  v4[29] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585117CC, 0, 0);
}

uint64_t sub_2585117CC()
{
  v92 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  if (sub_25853376C())
  {
    v2 = *(v0 + 144);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v5 = sub_258532A4C();
      __swift_project_value_buffer(v5, qword_27F93D020);

      v6 = sub_258532A2C();
      v7 = sub_2585338EC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v91[0] = v9;
        *v8 = 136315138;
        *(v0 + 120) = v4;
        type metadata accessor for TimeSyncHeartbeat();
        sub_258512FF8(&qword_27F9318B0, v10, type metadata accessor for TimeSyncHeartbeat);
        v11 = sub_258533DFC();
        v13 = sub_2584713B0(v11, v12, v91);

        *(v8 + 4) = v13;
        _os_log_impl(&dword_25845E000, v6, v7, "%s task cancelled", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x259C82900](v9, -1, -1);
        MEMORY[0x259C82900](v8, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  v14 = *(v0 + 144);
  v15 = swift_weakLoadStrong();
  *(v0 + 264) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [*(*__swift_project_boxed_opaque_existential_1((v15 + 16) *(v15 + 40)) + 16)];
    v18 = mach_absolute_time();
    v19 = [*(*__swift_project_boxed_opaque_existential_1(v16 + 2 v16[5]) + 16)];
    v20 = [*(*__swift_project_boxed_opaque_existential_1(v16 + 2 v16[5]) + 16)];
    v21 = v20;
    if (v20 >= 3)
    {
      v91[0] = 0;
      v91[1] = 0xE000000000000000;
      sub_258533B8C();
      *(v0 + 88) = 0;
      *(v0 + 96) = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000014, 0x80000002585428E0);
      *(v0 + 84) = v21;
      type metadata accessor for TSClockLockState(0);
      sub_258533C8C();
      v52 = *(v0 + 88);
      v53 = *(v0 + 96);
      return sub_258533C9C();
    }

    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 232);
    v87 = v20;
    v89 = v18;
    v90 = v17;
    *v22 = v17;
    v22[1] = v18;
    v88 = v19;
    v22[2] = v19;
    v22[3] = v20;
    swift_storeEnumTagMultiPayload();
    sub_2584D6A6C(v22, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = *v23;
    v27 = *(v0 + 248);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 216);
      v28 = *(v0 + 224);
      v30 = *(v0 + 208);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      v32 = &v27[*(v31 + 64)];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = *(v32 + 2);
      v36 = (*(v29 + 32))(v28, &v27[*(v31 + 48)], v30);
      if (v26 < 0)
      {
        __break(1u);
        return MEMORY[0x2822008C8](v36, v37, v38, v39);
      }

      v41 = *(v0 + 216);
      v40 = *(v0 + 224);
      v42 = *(v0 + 208);
      sub_25853397C();
      sub_2585339DC();
      (*(v41 + 8))(v40, v42);
    }

    else
    {
      v54 = *(v27 + 1);
      v55 = *(v27 + 2);
      v56 = *(v27 + 3);
    }

    v57 = *(v0 + 232);
    sub_2584D6A6C(*(v0 + 256), *(v0 + 240));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = *(v0 + 240);
      v59 = *(v0 + 208);
      v60 = *(v0 + 216);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      (*(v60 + 8))(v58 + *(v61 + 48), v59);
    }

    kdebug_trace();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v62 = sub_258532A4C();
    __swift_project_value_buffer(v62, qword_27F93D020);

    v63 = sub_258532A2C();
    v64 = sub_2585338EC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 136316162;
      *(v0 + 128) = v66;
      *(v0 + 136) = v16;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v67, type metadata accessor for TimeSyncHeartbeat);
      v68 = sub_258533DFC();
      v70 = sub_2584713B0(v68, v69, (v0 + 128));

      *(v65 + 4) = v70;
      *(v65 + 12) = 2048;
      *(v65 + 14) = v90;
      *(v65 + 22) = 2048;
      *(v65 + 24) = v89;
      *(v65 + 32) = 2048;
      *(v65 + 34) = v88;
      *(v65 + 42) = 2080;
      if (v87)
      {
        if (v87 == 1)
        {
          v71 = 0xE700000000000000;
          v72 = 0x676E696B636F4CLL;
        }

        else
        {
          v71 = 0xE600000000000000;
          v72 = 0x64656B636F4CLL;
        }
      }

      else
      {
        v71 = 0xEB00000000676E69;
        v72 = 0x6B636F6C20746F4ELL;
      }

      v73 = sub_2584713B0(v72, v71, (v0 + 128));

      *(v65 + 44) = v73;
      _os_log_impl(&dword_25845E000, v63, v64, "%s leader: %llu, machTime: %llu, domainTime: %llu, lockState: %s", v65, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v66, -1, -1);
      MEMORY[0x259C82900](v65, -1, -1);
    }

    v74 = *(v0 + 200);
    v75 = *(v0 + 176);
    v76 = *(v0 + 184);
    v78 = *(v0 + 160);
    v77 = *(v0 + 168);
    v79 = *(v0 + 152);
    v81 = v16[7];
    v80 = v16[8];
    sub_258533E8C();
    *(v0 + 104) = v81;
    *(v0 + 112) = v80;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v82 = sub_258512FF8(&qword_27F930428, 255, MEMORY[0x277D85928]);
    sub_258533E6C();
    sub_258512FF8(&qword_27F930430, 255, MEMORY[0x277D858F8]);
    sub_258533C7C();
    v83 = *(v78 + 8);
    *(v0 + 272) = v83;
    *(v0 + 280) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v83(v77, v79);
    v84 = *(MEMORY[0x277D85A58] + 4);
    v85 = swift_task_alloc();
    *(v0 + 288) = v85;
    *v85 = v0;
    v85[1] = sub_2585120E4;
    v86 = *(v0 + 200);
    v38 = *(v0 + 184);
    v36 = *(v0 + 176);
    v37 = v0 + 64;
    v39 = v82;

    return MEMORY[0x2822008C8](v36, v37, v38, v39);
  }

LABEL_13:
  v44 = *(v0 + 248);
  v43 = *(v0 + 256);
  v45 = *(v0 + 240);
  v46 = *(v0 + 224);
  v47 = *(v0 + 200);
  v49 = *(v0 + 168);
  v48 = *(v0 + 176);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_2585120E4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v10 = *v1;
  *(*v1 + 296) = v0;

  v4 = *(v2 + 280);
  if (v0)
  {
    (*(v2 + 272))(*(v2 + 176), *(v2 + 152));
    v5 = sub_258512B4C;
  }

  else
  {
    v7 = *(v2 + 192);
    v6 = *(v2 + 200);
    v8 = *(v2 + 184);
    (*(v2 + 272))(*(v2 + 176), *(v2 + 152));
    (*(v7 + 8))(v6, v8);
    v5 = sub_25851223C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25851223C()
{
  v93 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);

  sub_258513040(v2);
  if (sub_25853376C())
  {
    v3 = *(v0 + 144);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v6 = sub_258532A4C();
      __swift_project_value_buffer(v6, qword_27F93D020);

      v7 = sub_258532A2C();
      v8 = sub_2585338EC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v92[0] = v10;
        *v9 = 136315138;
        *(v0 + 120) = v5;
        type metadata accessor for TimeSyncHeartbeat();
        sub_258512FF8(&qword_27F9318B0, v11, type metadata accessor for TimeSyncHeartbeat);
        v12 = sub_258533DFC();
        v14 = sub_2584713B0(v12, v13, v92);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_25845E000, v7, v8, "%s task cancelled", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x259C82900](v10, -1, -1);
        MEMORY[0x259C82900](v9, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  v15 = *(v0 + 144);
  v16 = swift_weakLoadStrong();
  *(v0 + 264) = v16;
  if (v16)
  {
    v17 = v16;
    v18 = [*(*__swift_project_boxed_opaque_existential_1((v16 + 16) *(v16 + 40)) + 16)];
    v19 = mach_absolute_time();
    v20 = [*(*__swift_project_boxed_opaque_existential_1(v17 + 2 v17[5]) + 16)];
    v21 = [*(*__swift_project_boxed_opaque_existential_1(v17 + 2 v17[5]) + 16)];
    v22 = v21;
    if (v21 >= 3)
    {
      v92[0] = 0;
      v92[1] = 0xE000000000000000;
      sub_258533B8C();
      *(v0 + 88) = 0;
      *(v0 + 96) = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000014, 0x80000002585428E0);
      *(v0 + 84) = v22;
      type metadata accessor for TSClockLockState(0);
      sub_258533C8C();
      v53 = *(v0 + 88);
      v54 = *(v0 + 96);
      return sub_258533C9C();
    }

    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 232);
    v88 = v21;
    v90 = v19;
    v91 = v18;
    *v23 = v18;
    v23[1] = v19;
    v89 = v20;
    v23[2] = v20;
    v23[3] = v21;
    swift_storeEnumTagMultiPayload();
    sub_2584D6A6C(v23, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v27 = *v24;
    v28 = *(v0 + 248);
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *(v0 + 216);
      v29 = *(v0 + 224);
      v31 = *(v0 + 208);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      v33 = &v28[*(v32 + 64)];
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = *(v33 + 2);
      v37 = (*(v30 + 32))(v29, &v28[*(v32 + 48)], v31);
      if (v27 < 0)
      {
        __break(1u);
        return MEMORY[0x2822008C8](v37, v38, v39, v40);
      }

      v42 = *(v0 + 216);
      v41 = *(v0 + 224);
      v43 = *(v0 + 208);
      sub_25853397C();
      sub_2585339DC();
      (*(v42 + 8))(v41, v43);
    }

    else
    {
      v55 = *(v28 + 1);
      v56 = *(v28 + 2);
      v57 = *(v28 + 3);
    }

    v58 = *(v0 + 232);
    sub_2584D6A6C(*(v0 + 256), *(v0 + 240));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = *(v0 + 240);
      v60 = *(v0 + 208);
      v61 = *(v0 + 216);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      (*(v61 + 8))(v59 + *(v62 + 48), v60);
    }

    kdebug_trace();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v63 = sub_258532A4C();
    __swift_project_value_buffer(v63, qword_27F93D020);

    v64 = sub_258532A2C();
    v65 = sub_2585338EC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 136316162;
      *(v0 + 128) = v67;
      *(v0 + 136) = v17;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v68, type metadata accessor for TimeSyncHeartbeat);
      v69 = sub_258533DFC();
      v71 = sub_2584713B0(v69, v70, (v0 + 128));

      *(v66 + 4) = v71;
      *(v66 + 12) = 2048;
      *(v66 + 14) = v91;
      *(v66 + 22) = 2048;
      *(v66 + 24) = v90;
      *(v66 + 32) = 2048;
      *(v66 + 34) = v89;
      *(v66 + 42) = 2080;
      if (v88)
      {
        if (v88 == 1)
        {
          v72 = 0xE700000000000000;
          v73 = 0x676E696B636F4CLL;
        }

        else
        {
          v72 = 0xE600000000000000;
          v73 = 0x64656B636F4CLL;
        }
      }

      else
      {
        v72 = 0xEB00000000676E69;
        v73 = 0x6B636F6C20746F4ELL;
      }

      v74 = sub_2584713B0(v73, v72, (v0 + 128));

      *(v66 + 44) = v74;
      _os_log_impl(&dword_25845E000, v64, v65, "%s leader: %llu, machTime: %llu, domainTime: %llu, lockState: %s", v66, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v67, -1, -1);
      MEMORY[0x259C82900](v66, -1, -1);
    }

    v75 = *(v0 + 200);
    v76 = *(v0 + 176);
    v77 = *(v0 + 184);
    v79 = *(v0 + 160);
    v78 = *(v0 + 168);
    v80 = *(v0 + 152);
    v82 = v17[7];
    v81 = v17[8];
    sub_258533E8C();
    *(v0 + 104) = v82;
    *(v0 + 112) = v81;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v83 = sub_258512FF8(&qword_27F930428, 255, MEMORY[0x277D85928]);
    sub_258533E6C();
    sub_258512FF8(&qword_27F930430, 255, MEMORY[0x277D858F8]);
    sub_258533C7C();
    v84 = *(v79 + 8);
    *(v0 + 272) = v84;
    *(v0 + 280) = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v84(v78, v80);
    v85 = *(MEMORY[0x277D85A58] + 4);
    v86 = swift_task_alloc();
    *(v0 + 288) = v86;
    *v86 = v0;
    v86[1] = sub_2585120E4;
    v87 = *(v0 + 200);
    v39 = *(v0 + 184);
    v37 = *(v0 + 176);
    v38 = v0 + 64;
    v40 = v83;

    return MEMORY[0x2822008C8](v37, v38, v39, v40);
  }

LABEL_13:
  v45 = *(v0 + 248);
  v44 = *(v0 + 256);
  v46 = *(v0 + 240);
  v47 = *(v0 + 224);
  v48 = *(v0 + 200);
  v50 = *(v0 + 168);
  v49 = *(v0 + 176);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_258512B4C()
{
  v26 = v0;
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];
  (*(v0[24] + 8))(v0[25], v0[23]);

  sub_258513040(v3);

  v4 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93D020);

    v8 = sub_258532A2C();
    v9 = sub_2585338EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      v0[15] = v6;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v12, type metadata accessor for TimeSyncHeartbeat);
      v13 = sub_258533DFC();
      v15 = sub_2584713B0(v13, v14, &v25);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_25845E000, v8, v9, "%s task cancelled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
    }
  }

  v17 = v0[31];
  v16 = v0[32];
  v18 = v0[30];
  v19 = v0[28];
  v20 = v0[25];
  v22 = v0[21];
  v21 = v0[22];

  v23 = v0[1];

  return v23();
}

uint64_t sub_258512DE0()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000012, 0x8000000258542880);
  type metadata accessor for TimeSyncHeartbeat();
  sub_258512FF8(&qword_27F9318A8, v2, type metadata accessor for TimeSyncHeartbeat);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_258512ECC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258512F04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258512F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_258511600(a1, v4, v5, v6);
}

uint64_t sub_258512FF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258513040(uint64_t a1)
{
  v2 = type metadata accessor for Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MediaStreamDirection.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

MediaContinuityKit::MediaStreamDirection_optional __swiftcall MediaStreamDirection.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2585130CC()
{
  v1 = *v0;
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_258513154()
{
  v1 = *v0;
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

_DWORD *sub_2585131A0@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2585131C0(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t MediaStreamDirection.description.getter()
{
  if (*v0)
  {
    result = 0x65766965636572;
  }

  else
  {
    result = 1684956531;
  }

  *v0;
  return result;
}

unint64_t sub_258513210()
{
  result = qword_27F9318B8;
  if (!qword_27F9318B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9318B8);
  }

  return result;
}

uint64_t sub_258513264()
{
  if (*v0)
  {
    result = 0x65766965636572;
  }

  else
  {
    result = 1684956531;
  }

  *v0;
  return result;
}

uint64_t sub_2585132A8()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F60](v1);
  return sub_258533F2C();
}

uint64_t sub_25851331C()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F60](v1);
  return sub_258533F2C();
}

uint64_t *sub_258513360@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_258513384()
{
  v1 = 0x676E696B636F4CLL;
  if (*v0 != 1)
  {
    v1 = 0x64656B636F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B636F6C20746F4ELL;
  }
}

unint64_t sub_2585133F8()
{
  result = qword_27F9318C0[0];
  if (!qword_27F9318C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F9318C0);
  }

  return result;
}

uint64_t sub_2585134B4(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

void *sub_2585134D0()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[18];
  sub_258464B24(v0[17]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_258513510()
{
  sub_2585134D0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_258513574(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2585135CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_2584AC3B8(a3, v28 - v12, &qword_27F92FB78, &qword_2585368F0);
  v14 = sub_25853368C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_258465168(v13, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_25853362C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_25853348C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_2585138CC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v4 = sub_25853341C();
    v5 = [v3 initWithString_];

    [v5 UTF8String];
    v6 = v5;
    if (!os_variant_allows_internal_security_policies())
    {
      return 2;
    }
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = sub_25853341C();

    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_258533A5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FD80, &unk_25853F3F0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_258513AE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return (sub_2585154CC)(a1);
}

uint64_t sub_258513B98(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258513CB0, v1, 0);
}

uint64_t sub_258513CB0()
{
  v1 = v0[10];
  if (*(v1 + 121) == 1)
  {
    *(v1 + 121) = 2;
    sub_25852FFD0(1);
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection), v2);
    v4 = *(v3 + 64);
    v13 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_258513EBC;
    v7 = v0[16];

    return v13(v7, v2, v3);
  }

  else
  {
    sub_258476AE4();
    v9 = swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v0[28] = v9;
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_2585150C4;
    v12 = v0[10];

    return sub_258519188(v9);
  }
}

uint64_t sub_258513EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_258514374;
  }

  else
  {
    v6 = sub_258513FE8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258513FE8()
{
  v1 = v0[10];
  if (*(v1 + 121) == 2)
  {
    v2 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer;
    v0[19] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer;
    if (*(v1 + v2) == 2)
    {
      v3 = v0[15];
      v4 = v0[16];
      v6 = v0[13];
      v5 = v0[14];
      v7 = v0[11];
      v8 = v0[12];
      v9 = sub_25853368C();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      (*(v6 + 16))(v3, v4, v8);
      v10 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
      v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = v10;
      (*(v6 + 32))(v13 + v11, v3, v8);
      *(v13 + v12) = v1;
      swift_retain_n();
      v14 = sub_258476C88(0, 0, v7, &unk_25853F4E0, v13);
      v15 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor);
      *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor) = v14;

      v16 = swift_task_alloc();
      v0[22] = v16;
      *v16 = v0;
      v16[1] = sub_258514554;
      v17 = v0[10];

      return sub_25851C6C4();
    }

    else
    {
      v27 = swift_task_alloc();
      v0[20] = v27;
      *v27 = v0;
      v27[1] = sub_258514428;
      v28 = v0[10];

      return sub_25851E8FC();
    }
  }

  else
  {
    v19 = v0[16];
    v20 = v0[12];
    v21 = v0[13];
    sub_258476AE4();
    v23 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v24 = 4;
    }

    else
    {
      v24 = 5;
    }

    *v22 = v24;
    swift_willThrow();
    (*(v21 + 8))(v19, v20);
    v0[28] = v23;
    v25 = swift_task_alloc();
    v0[29] = v25;
    *v25 = v0;
    v25[1] = sub_2585150C4;
    v26 = v0[10];

    return sub_258519188(v23);
  }
}

uint64_t sub_258514374()
{
  v1 = v0[18];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;
  v3 = v0[10];

  return sub_258519188(v1);
}

uint64_t sub_258514428()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_258515400;
  }

  else
  {
    v6 = sub_258515268;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258514554()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_258514680;
  }

  else
  {
    v6 = sub_25852E2A8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258514680()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[23];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;
  v3 = v0[10];

  return sub_258519188(v1);
}

uint64_t sub_25851474C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_258514A10;
  }

  else
  {
    v6 = sub_258514878;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258514878()
{
  v1 = v0[10];
  if (*(v1 + 121) == 2)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_258514ADC;
    v3 = v0[10];

    return sub_258520628();
  }

  else
  {
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    sub_258476AE4();
    v9 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    *v8 = v10;
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v0[28] = v9;
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_2585150C4;
    v12 = v0[10];

    return sub_258519188(v9);
  }
}

uint64_t sub_258514A10()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[25];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;
  v3 = v0[10];

  return sub_258519188(v1);
}

uint64_t sub_258514ADC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_258514FF8;
  }

  else
  {
    v6 = sub_258514C08;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258514C08()
{
  v1 = *(v0 + 80);
  if (*(v1 + 121) == 2)
  {
    v2 = *(v0 + 152);
    *(v1 + 121) = 4;
    sub_25852FFD0(2);
    if (*(v1 + v2) != 2)
    {
      v3 = *(v0 + 120);
      v4 = *(v0 + 128);
      v6 = *(v0 + 104);
      v5 = *(v0 + 112);
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      v9 = *(v0 + 80);
      v10 = sub_25853368C();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      (*(v6 + 16))(v3, v4, v8);
      v11 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
      v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = swift_allocObject();
      *(v14 + 16) = v9;
      *(v14 + 24) = v11;
      (*(v6 + 32))(v14 + v12, v3, v8);
      *(v14 + v13) = v9;
      swift_retain_n();
      v15 = sub_258476C88(0, 0, v7, &unk_25853F500, v14);
      v16 = *(v9 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor);
      *(v9 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor) = v15;
    }

    v17 = *(v0 + 128);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v35 = *(v0 + 120);
    v36 = *(v0 + 88);
    v21 = *(v0 + 72);
    *(v0 + 40) = &type metadata for AudioStreamIdentifier;
    *(v0 + 48) = sub_2584ABB2C();
    *(v0 + 65) = 5;
    __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v20 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
    v22 = off_286990988;
    type metadata accessor for TelemetryProvider();
    v22(v0 + 16);
    (*(v19 + 8))(v17, v18);
    sub_2584A57D8(v0 + 16);
    v23 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStream;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F8, &qword_25853F8B0);
    (*(*(v24 - 8) + 16))(v21, v20 + v23, v24);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 128);
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    sub_258476AE4();
    v31 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v32 = 4;
    }

    else
    {
      v32 = 5;
    }

    *v30 = v32;
    swift_willThrow();
    (*(v29 + 8))(v27, v28);
    *(v0 + 224) = v31;
    v33 = swift_task_alloc();
    *(v0 + 232) = v33;
    *v33 = v0;
    v33[1] = sub_2585150C4;
    v34 = *(v0 + 80);

    return sub_258519188(v31);
  }
}

uint64_t sub_258514FF8()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[27];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;
  v3 = v0[10];

  return sub_258519188(v1);
}

uint64_t sub_2585150C4()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2585151D4, v2, 0);
}

uint64_t sub_2585151D4()
{
  v1 = v0[28];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[11];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_258515268()
{
  v1 = v0[10];
  if (*(v1 + 121) == 2)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_25851474C;
    v3 = v0[10];

    return sub_258530B2C();
  }

  else
  {
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    sub_258476AE4();
    v9 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    *v8 = v10;
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v0[28] = v9;
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_2585150C4;
    v12 = v0[10];

    return sub_258519188(v9);
  }
}

uint64_t sub_258515400()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[21];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;
  v3 = v0[10];

  return sub_258519188(v1);
}

uint64_t sub_2585154CC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v2[17] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v7 = sub_25853362C();
  v2[18] = v7;
  v2[19] = v6;

  return MEMORY[0x2822009F8](sub_25851563C, v7, v6);
}

uint64_t sub_25851563C()
{
  v1 = v0[10];
  if (*(v1 + 232) == 1)
  {
    *(v1 + 232) = 2;
    sub_2585084C8(1);
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection), v2);
    v4 = *(v3 + 64);
    v13 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_258515848;
    v7 = v0[16];

    return v13(v7, v2, v3);
  }

  else
  {
    sub_258476AE4();
    v9 = swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v0[31] = v9;
    v11 = swift_task_alloc();
    v0[32] = v11;
    *v11 = v0;
    v11[1] = sub_258516A6C;
    v12 = v0[10];

    return sub_258519A34(v9);
  }
}

uint64_t sub_258515848()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_258515CDC;
  }

  else
  {
    v7 = sub_258515984;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258515984()
{
  v1 = v0[10];
  if (*(v1 + 232) == 2)
  {
    v2 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer;
    v0[22] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer;
    if (*(v1 + v2) == 2)
    {
      v3 = v0[16];
      v4 = v0[17];
      v6 = v0[14];
      v5 = v0[15];
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[11];
      v10 = sub_25853368C();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      (*(v8 + 16))(v5, v3, v7);
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v4;
      (*(v8 + 32))(v12 + v11, v5, v7);
      *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
      swift_retain_n();
      v13 = sub_258476C88(0, 0, v9, &unk_25853F3B8, v12);
      v14 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor);
      *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor) = v13;

      v15 = swift_task_alloc();
      v0[25] = v15;
      *v15 = v0;
      v15[1] = sub_258515ECC;
      v16 = v0[10];

      return sub_25851D7CC();
    }

    else
    {
      v26 = swift_task_alloc();
      v0[23] = v26;
      *v26 = v0;
      v26[1] = sub_258515D90;
      v27 = v0[10];

      return sub_25851F76C();
    }
  }

  else
  {
    v18 = v0[16];
    v19 = v0[12];
    v20 = v0[13];
    sub_258476AE4();
    v22 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v23 = 4;
    }

    else
    {
      v23 = 5;
    }

    *v21 = v23;
    swift_willThrow();
    (*(v20 + 8))(v18, v19);
    v0[31] = v22;
    v24 = swift_task_alloc();
    v0[32] = v24;
    *v24 = v0;
    v24[1] = sub_258516A6C;
    v25 = v0[10];

    return sub_258519A34(v22);
  }
}

uint64_t sub_258515CDC()
{
  v1 = v0[21];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;
  v3 = v0[10];

  return sub_258519A34(v1);
}

uint64_t sub_258515D90()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_258516DB8;
  }

  else
  {
    v7 = sub_258516C20;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258515ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_258516008;
  }

  else
  {
    v7 = sub_25852E2AC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258516008()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[26];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;
  v3 = v0[10];

  return sub_258519A34(v1);
}

uint64_t sub_2585160D4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_2585163E0;
  }

  else
  {
    v7 = sub_258516210;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258516210()
{
  v1 = v0[10];
  if (*(v1 + 232) != 2)
  {
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    sub_258476AE4();
    v3 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    *v7 = v8;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);
    goto LABEL_8;
  }

  v2 = v0[28];
  sub_25850A63C();
  if (v2)
  {
    v3 = v2;
    (*(v0[13] + 8))(v0[16], v0[12]);
LABEL_8:
    v0[31] = v3;
    v9 = swift_task_alloc();
    v0[32] = v9;
    *v9 = v0;
    v9[1] = sub_258516A6C;
    v10 = v0[10];

    return sub_258519A34(v3);
  }

  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_2585164AC;
  v13 = v0[10];

  return sub_258521650();
}

uint64_t sub_2585163E0()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[28];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;
  v3 = v0[10];

  return sub_258519A34(v1);
}

uint64_t sub_2585164AC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_2585169A0;
  }

  else
  {
    v7 = sub_2585165E8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2585165E8()
{
  v1 = *(v0 + 80);
  if (*(v1 + 232) == 2)
  {
    v2 = *(v0 + 176);
    *(v1 + 232) = 4;
    sub_2585084C8(2);
    if (*(v1 + v2) != 2)
    {
      v3 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = sub_25853368C();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      (*(v8 + 16))(v5, v3, v7);
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v4;
      (*(v8 + 32))(v13 + v12, v5, v7);
      *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
      swift_retain_n();
      v14 = sub_258476C88(0, 0, v9, &unk_25853F3D8, v13);
      v15 = *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor);
      *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor) = v14;
    }

    v16 = *(v0 + 128);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);
    v34 = *(v0 + 120);
    v35 = *(v0 + 88);
    v20 = *(v0 + 72);
    *(v0 + 40) = &type metadata for VideoStreamIdentifier;
    *(v0 + 48) = sub_2584AC364();
    *(v0 + 65) = 5;
    __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v19 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
    v21 = off_286990988;
    type metadata accessor for TelemetryProvider();
    v21(v0 + 16);
    (*(v18 + 8))(v16, v17);
    sub_2584A57D8(v0 + 16);
    v22 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStream;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931810, &unk_25853EB70);
    (*(*(v23 - 8) + 16))(v20, v19 + v22, v23);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 128);
    v27 = *(v0 + 96);
    v28 = *(v0 + 104);
    sub_258476AE4();
    v30 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v31 = 4;
    }

    else
    {
      v31 = 5;
    }

    *v29 = v31;
    swift_willThrow();
    (*(v28 + 8))(v26, v27);
    *(v0 + 248) = v30;
    v32 = swift_task_alloc();
    *(v0 + 256) = v32;
    *v32 = v0;
    v32[1] = sub_258516A6C;
    v33 = *(v0 + 80);

    return sub_258519A34(v30);
  }
}

uint64_t sub_2585169A0()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[30];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;
  v3 = v0[10];

  return sub_258519A34(v1);
}

uint64_t sub_258516A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_258516B8C, v4, v3);
}

uint64_t sub_258516B8C()
{
  v1 = v0[31];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[11];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_258516C20()
{
  v1 = v0[10];
  if (*(v1 + 232) == 2)
  {
    v2 = swift_task_alloc();
    v0[27] = v2;
    *v2 = v0;
    v2[1] = sub_2585160D4;
    v3 = v0[10];

    return sub_258509514();
  }

  else
  {
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    sub_258476AE4();
    v9 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    *v8 = v10;
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v0[31] = v9;
    v11 = swift_task_alloc();
    v0[32] = v11;
    *v11 = v0;
    v11[1] = sub_258516A6C;
    v12 = v0[10];

    return sub_258519A34(v9);
  }
}

uint64_t sub_258516DB8()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[24];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;
  v3 = v0[10];

  return sub_258519A34(v1);
}

uint64_t sub_258516E84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2585176A4();
}

uint64_t sub_258516F24()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258516FF0, v0, 0);
}

uint64_t sub_258516FF0()
{
  v27 = v0;
  v1 = *(v0 + 168);
  if (*(v1 + 121) > 4u)
  {
    v9 = *(v0 + 192);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v2 = *(v0 + 168);

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 168);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;

      *(v7 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v26);
      _os_log_impl(&dword_25845E000, v3, v4, "Invalidating %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
      v12 = *(v0 + 168);
    }

    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v1 + 121);
    *(v1 + 121) = 5;
    sub_25852FFD0(v17);
    *(v0 + 136) = &type metadata for AudioStreamIdentifier;
    *(v0 + 144) = sub_2584ABB2C();
    *(v0 + 161) = 6;
    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v15 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
    v18 = off_286990988;
    type metadata accessor for TelemetryProvider();
    v18(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v14 + 8))(v13, v16);
    v19 = (v15 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v20 = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v21 = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    *(v0 + 16) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 0;
    v22 = *(v21 + 80);
    v25 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_25851737C;

    return v25(v0 + 16, v20, v21);
  }
}

uint64_t sub_25851737C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 168);

    v6 = v5;
  }

  else
  {
    v6 = *(v2 + 168);
  }

  return MEMORY[0x2822009F8](sub_2585174B0, v6, 0);
}

uint64_t sub_2585174B0()
{
  sub_258476AE4();
  v1 = swift_allocError();
  v0[26] = v1;
  *v2 = 4;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_258517570;
  v4 = v0[21];

  return sub_25851A32C(v1);
}

uint64_t sub_258517570()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v7 = *v0;

  v4 = *(v1 + 192);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2585176A4()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v6 = sub_25853362C();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x2822009F8](sub_2585177C4, v6, v5);
}

uint64_t sub_2585177C4()
{
  v27 = v0;
  v1 = *(v0 + 168);
  if (*(v1 + 232) > 4u)
  {
    v9 = *(v0 + 192);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v2 = *(v0 + 168);

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 168);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;

      *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v26);
      _os_log_impl(&dword_25845E000, v3, v4, "Invalidating %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
      v12 = *(v0 + 168);
    }

    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v1 + 232);
    *(v1 + 232) = 5;
    sub_2585084C8(v17);
    *(v0 + 136) = &type metadata for VideoStreamIdentifier;
    *(v0 + 144) = sub_2584AC364();
    *(v0 + 161) = 6;
    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v15 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
    v18 = off_286990988;
    type metadata accessor for TelemetryProvider();
    v18(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v14 + 8))(v13, v16);
    v19 = (v15 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v20 = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v21 = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    *(v0 + 16) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 0;
    v22 = *(v21 + 80);
    v25 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v24[1] = sub_258517B50;

    return v25(v0 + 16, v20, v21);
  }
}

uint64_t sub_258517B50()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 200);
  v6 = *(v2 + 208);

  return MEMORY[0x2822009F8](sub_258517C74, v5, v6);
}

uint64_t sub_258517C74()
{
  sub_258476AE4();
  v1 = swift_allocError();
  v0[28] = v1;
  *v2 = 4;
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_258517D34;
  v4 = v0[21];

  return sub_25851B44C(v1);
}

uint64_t sub_258517D34()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 192);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_258517E68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518360();
}

uint64_t sub_258517F28()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 121), &unk_28698BAF0) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, v0[3] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, (*(v2 + v3) & 1) != 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v4 = 0;
LABEL_4:
    swift_willThrow();
    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v7 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v8 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  v0[4] = v8;
  if (!v8)
  {
    sub_258476AE4();
    swift_allocError();
    *v14 = 8;
    goto LABEL_4;
  }

  if (*(v1 + 121) != 4)
  {
    *(v2 + v3) = 1;
    v5 = v0[1];
    goto LABEL_5;
  }

  v9 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);
  swift_unknownObjectRetain();
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[5] = v13;
  *v13 = v0;
  v13[1] = sub_258518160;

  return v15(ObjectType, v9);
}

uint64_t sub_258518160()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_2585182FC;
  }

  else
  {
    v6 = sub_25851828C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25851828C()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  *(v0[2] + v0[3]) = 1;
  v2 = v0[1];

  return v2();
}

uint64_t sub_2585182FC()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_258518360()
{
  v1[2] = v0;
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v3 = sub_25853362C();
  v1[3] = v3;
  v1[4] = v2;

  return MEMORY[0x2822009F8](sub_258518418, v3, v2);
}

uint64_t sub_258518418()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 232), &unk_28698BAC8) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, v0[5] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, (*(v2 + v3) & 1) != 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v4 = 0;
LABEL_4:
    swift_willThrow();
    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v7 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v8 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  v0[6] = v8;
  if (!v8)
  {
    sub_258476AE4();
    swift_allocError();
    *v14 = 8;
    goto LABEL_4;
  }

  if (*(v1 + 232) != 4)
  {
    *(v2 + v3) = 1;
    v5 = v0[1];
    goto LABEL_5;
  }

  v9 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);
  swift_unknownObjectRetain();
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_258518650;

  return v15(ObjectType, v9);
}

uint64_t sub_258518650()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_258518800;
  }

  else
  {
    v7 = sub_25851878C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25851878C()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  *(v0[2] + v0[5]) = 1;
  v2 = v0[1];

  return v2();
}

uint64_t sub_258518800()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_258518864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518CF0();
}

uint64_t sub_258518924()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 121), &unk_28698BB40) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, v0[3] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, (*(v2 + v3) & 1) == 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v12 = 0;
LABEL_9:
    swift_willThrow();
    v13 = v0[1];
    goto LABEL_10;
  }

  v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v5 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  v0[4] = v5;
  if (!v5)
  {
    sub_258476AE4();
    swift_allocError();
    *v14 = 8;
    goto LABEL_9;
  }

  if (*(v1 + 121) == 4)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v15 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_258518B58;

    return v15(ObjectType, v6);
  }

  *(v2 + v3) = 0;
  v13 = v0[1];
LABEL_10:

  return v13();
}

uint64_t sub_258518B58()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_25852E2D0;
  }

  else
  {
    v6 = sub_258518C84;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258518C84()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  *(v0[2] + v0[3]) = 0;
  v2 = v0[1];

  return v2();
}

uint64_t sub_258518CF0()
{
  v1[2] = v0;
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v3 = sub_25853362C();
  v1[3] = v3;
  v1[4] = v2;

  return MEMORY[0x2822009F8](sub_258518DA8, v3, v2);
}

uint64_t sub_258518DA8()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 232), &unk_28698BB18) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, v0[5] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, (*(v2 + v3) & 1) == 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v12 = 0;
LABEL_9:
    swift_willThrow();
    v13 = v0[1];
    goto LABEL_10;
  }

  v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v5 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  v0[6] = v5;
  if (!v5)
  {
    sub_258476AE4();
    swift_allocError();
    *v14 = 8;
    goto LABEL_9;
  }

  if (*(v1 + 232) == 4)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v15 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_258518FDC;

    return v15(ObjectType, v6);
  }

  *(v2 + v3) = 0;
  v13 = v0[1];
LABEL_10:

  return v13();
}

uint64_t sub_258518FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_25852E2D4;
  }

  else
  {
    v7 = sub_258519118;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258519118()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  *(v0[2] + v0[5]) = 0;
  v2 = v0[1];

  return v2();
}

uint64_t sub_258519188(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258519254, v1, 0);
}

uint64_t sub_258519254()
{
  v40 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 121) > 4u)
  {
    v15 = *(v0 + 232);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);

    v4 = v2;
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 208);
    if (v7)
    {
      v9 = *(v0 + 200);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v10 = 136315394;

      *(v10 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v39);
      *(v10 + 12) = 2112;
      v13 = v9;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&dword_25845E000, v5, v6, "Interrupting %s, error:%@", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
      v18 = *(v0 + 208);
    }

    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v22 = *(v0 + 208);
    v21 = *(v0 + 216);
    v23 = *(v0 + 200);
    v24 = *(v1 + 121);
    *(v1 + 121) = 6;
    sub_25852FFD0(v24);
    *(v0 + 136) = &type metadata for AudioStreamIdentifier;
    *(v0 + 144) = sub_2584ABB2C();
    *(v0 + 152) = v23;
    *(v0 + 161) = 7;
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v22 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
    v25 = off_286990988;
    v26 = v23;
    type metadata accessor for TelemetryProvider();
    v25(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v20 + 8))(v19, v21);
    if (sub_25852D4DC(v23))
    {
      v27 = *(v0 + 200);
      v28 = (*(v0 + 208) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
      v29 = v28[3];
      v30 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v29);
      swift_getErrorValue();
      v31 = *(v0 + 168);
      *(v0 + 16) = sub_25852F0FC(*(v0 + 176), *(v0 + 184));
      *(v0 + 88) = 0;
      *(v0 + 104) = 0;
      v32 = *(v30 + 80);
      v38 = (v32 + *v32);
      v33 = v32[1];
      v34 = swift_task_alloc();
      *(v0 + 240) = v34;
      *v34 = v0;
      v34[1] = sub_258519708;

      return v38(v0 + 16, v29, v30);
    }

    else
    {
      v35 = swift_task_alloc();
      *(v0 + 248) = v35;
      *v35 = v0;
      v35[1] = sub_258519924;
      v36 = *(v0 + 200);
      v37 = *(v0 + 208);

      return sub_25851A32C(v36);
    }
  }
}

uint64_t sub_258519708()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[26];

    return MEMORY[0x2822009F8](sub_258519890, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v2[31] = v6;
    *v6 = v4;
    v6[1] = sub_258519924;
    v7 = v2[26];
    v8 = v2[25];

    return sub_25851A32C(v8);
  }
}

uint64_t sub_258519890()
{
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_258519924;
  v2 = v0[25];
  v3 = v0[26];

  return sub_25851A32C(v2);
}

uint64_t sub_258519924()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 232);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_258519A34(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v7 = sub_25853362C();
  v2[30] = v7;
  v2[31] = v6;

  return MEMORY[0x2822009F8](sub_258519B54, v7, v6);
}

uint64_t sub_258519B54()
{
  v40 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 232) > 4u)
  {
    v15 = *(v0 + 232);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);

    v4 = v2;
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 208);
    if (v7)
    {
      v9 = *(v0 + 200);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v10 = 136315394;

      *(v10 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v39);
      *(v10 + 12) = 2112;
      v13 = v9;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&dword_25845E000, v5, v6, "Interrupting %s, error:%@", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
      v18 = *(v0 + 208);
    }

    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v22 = *(v0 + 208);
    v21 = *(v0 + 216);
    v23 = *(v0 + 200);
    v24 = *(v1 + 232);
    *(v1 + 232) = 6;
    sub_2585084C8(v24);
    *(v0 + 136) = &type metadata for VideoStreamIdentifier;
    *(v0 + 144) = sub_2584AC364();
    *(v0 + 152) = v23;
    *(v0 + 161) = 7;
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v22 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
    v25 = off_286990988;
    v26 = v23;
    type metadata accessor for TelemetryProvider();
    v25(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v20 + 8))(v19, v21);
    if (sub_25852D4DC(v23))
    {
      v27 = *(v0 + 200);
      v28 = (*(v0 + 208) + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
      v29 = v28[3];
      v30 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v29);
      swift_getErrorValue();
      v31 = *(v0 + 168);
      *(v0 + 16) = sub_25852F0FC(*(v0 + 176), *(v0 + 184));
      *(v0 + 88) = 0;
      *(v0 + 104) = 0;
      v32 = *(v30 + 80);
      v38 = (v32 + *v32);
      v33 = v32[1];
      v34 = swift_task_alloc();
      *(v0 + 256) = v34;
      *v34 = v0;
      v34[1] = sub_25851A008;

      return v38(v0 + 16, v29, v30);
    }

    else
    {
      v35 = swift_task_alloc();
      *(v0 + 264) = v35;
      *v35 = v0;
      v35[1] = sub_25851A21C;
      v36 = *(v0 + 200);
      v37 = *(v0 + 208);

      return sub_25851B44C(v36);
    }
  }
}

uint64_t sub_25851A008()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  if (v0)
  {

    v5 = v2[30];
    v6 = v2[31];

    return MEMORY[0x2822009F8](sub_25851A188, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v2[33] = v7;
    *v7 = v4;
    v7[1] = sub_25851A21C;
    v8 = v2[26];
    v9 = v2[25];

    return sub_25851B44C(v9);
  }
}

uint64_t sub_25851A188()
{
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_25851A21C;
  v2 = v0[25];
  v3 = v0[26];

  return sub_25851B44C(v2);
}

uint64_t sub_25851A21C()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *(v1 + 232);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25851A32C(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25851A430, v1, 0);
}

uint64_t sub_25851A430()
{
  v1 = (*(v0 + 184) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 72);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_25851A564;

  return v8(v2, v3);
}

uint64_t sub_25851A564()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25851A674, v2, 0);
}

uint64_t sub_25851A674()
{
  v1 = *(v0 + 184);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  *(v0 + 232) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v37 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_25851AB7C;

    return v37(ObjectType, v4);
  }

  else
  {
    v10 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v1 + v10, v0 + 16, &qword_27F931828, &unk_25853EB90);
    if (*(v0 + 40))
    {
      sub_258464C30(v0 + 16, v0 + 56);
      sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
      v11 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      *(v0 + 248) = v11;
      v12 = *v11;

      return MEMORY[0x2822009F8](sub_25851ACD8, v12, 0);
    }

    else
    {
      sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
      v13 = *(v0 + 184);
      if (*(v13 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor))
      {
        v14 = *(v13 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v13 = *(v0 + 184);
      }

      if (*(v13 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
      {
        v15 = *(v13 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v13 = *(v0 + 184);
      }

      v16 = *(v0 + 216);
      v17 = *(v0 + 192);
      v18 = *(v0 + 200);
      v19 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
      swift_beginAccess();
      sub_2584AC3B8(v13 + v19, v16, &qword_27F931820, &unk_25853F380);
      v20 = (*(v18 + 48))(v16, 1, v17);
      v21 = *(v0 + 216);
      if (v20)
      {
        sub_258465168(*(v0 + 216), &qword_27F931820, &unk_25853F380);
      }

      else
      {
        v23 = *(v0 + 200);
        v22 = *(v0 + 208);
        v24 = *(v0 + 192);
        v25 = *(v0 + 176);
        (*(v23 + 16))(v22, *(v0 + 216), v24);
        sub_258465168(v21, &qword_27F931820, &unk_25853F380);
        *(v0 + 168) = v25;
        v26 = v25;
        sub_25853363C();
        (*(v23 + 8))(v22, v24);
      }

      v27 = *(v0 + 176);
      *(v0 + 144) = v27;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      if (swift_dynamicCast() && *(v0 + 256) == 4)
      {
        v29 = *(v0 + 184);
        *(v0 + 160) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
      }

      else
      {
        v30 = *(v0 + 176);
        v31 = *(v0 + 184);
        *(v0 + 152) = v30;
        v32 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
      }

      sub_2585337FC();
      v34 = *(v0 + 208);
      v33 = *(v0 + 216);
      v35 = *(v0 + 184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336DC();

      v36 = *(v0 + 8);

      return v36();
    }
  }
}

uint64_t sub_25851AB7C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;

  v5 = *(v2 + 232);
  v6 = *(v2 + 184);
  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = sub_25852E2D8;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = sub_25851B064;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25851ACD8()
{
  v1 = *(v0 + 184);
  v2 = **(v0 + 248);
  sub_2585072A8();

  return MEMORY[0x2822009F8](sub_25851AD48, v1, 0);
}

uint64_t sub_25851AD48()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 184);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor))
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 184);
  }

  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
  {
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 184);
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v7, v4, &qword_27F931820, &unk_25853F380);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = *(v0 + 216);
  if (v8)
  {
    sub_258465168(*(v0 + 216), &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    (*(v11 + 16))(v10, *(v0 + 216), v12);
    sub_258465168(v9, &qword_27F931820, &unk_25853F380);
    *(v0 + 168) = v13;
    v14 = v13;
    sub_25853363C();
    (*(v11 + 8))(v10, v12);
  }

  v15 = *(v0 + 176);
  *(v0 + 144) = v15;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (swift_dynamicCast() && *(v0 + 256) == 4)
  {
    v17 = *(v0 + 184);
    *(v0 + 160) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  }

  else
  {
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    *(v0 + 152) = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  }

  sub_2585337FC();
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v23 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  sub_2585336DC();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25851B064()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 16, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 56);
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(v0 + 248) = v3;
    v4 = *v3;

    return MEMORY[0x2822009F8](sub_25851ACD8, v4, 0);
  }

  else
  {
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v5 = *(v0 + 184);
    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor))
    {
      v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 184);
    }

    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
    {
      v7 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 184);
    }

    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v5 + v11, v8, &qword_27F931820, &unk_25853F380);
    v12 = (*(v10 + 48))(v8, 1, v9);
    v13 = *(v0 + 216);
    if (v12)
    {
      sub_258465168(*(v0 + 216), &qword_27F931820, &unk_25853F380);
    }

    else
    {
      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v16 = *(v0 + 192);
      v17 = *(v0 + 176);
      (*(v15 + 16))(v14, *(v0 + 216), v16);
      sub_258465168(v13, &qword_27F931820, &unk_25853F380);
      *(v0 + 168) = v17;
      v18 = v17;
      sub_25853363C();
      (*(v15 + 8))(v14, v16);
    }

    v19 = *(v0 + 176);
    *(v0 + 144) = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    if (swift_dynamicCast() && *(v0 + 256) == 4)
    {
      v21 = *(v0 + 184);
      *(v0 + 160) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
    }

    else
    {
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      *(v0 + 152) = v22;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
    }

    sub_2585337FC();
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);
    v27 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336DC();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_25851B44C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v8 = sub_25853362C();
  v2[41] = v8;
  v2[42] = v7;

  return MEMORY[0x2822009F8](sub_25851B5A4, v8, v7);
}

uint64_t sub_25851B5A4()
{
  v1 = v0[36];
  swift_beginAccess();
  sub_2584AC3B8(v1 + 184, (v0 + 2), &qword_27F9317F0, &qword_25853EB30);
  if (v0[5])
  {
    sub_258464C30((v0 + 2), (v0 + 17));
    sub_258465168((v0 + 2), &qword_27F9317F0, &qword_25853EB30);
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    v2 = off_28698F1F0;
    type metadata accessor for AVConferenceBackedRemoteVideoClient();
    v2();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  }

  else
  {
    sub_258465168((v0 + 2), &qword_27F9317F0, &qword_25853EB30);
  }

  v3 = v0[36];
  if (*(v3 + 136))
  {
    v4 = *(v3 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v3 = v0[36];
  }

  v5 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
  v6 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection), v5);
  v7 = *(v6 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_25851B7EC;

  return v11(v5, v6);
}

uint64_t sub_25851B7EC()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v6 = *v0;

  v3 = *(v1 + 336);
  v4 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_25851B90C, v4, v3);
}

uint64_t sub_25851B90C()
{
  v1 = *(v0 + 288);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  *(v0 + 352) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v37 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 360) = v8;
    *v8 = v0;
    v8[1] = sub_25851BE14;

    return v37(ObjectType, v4);
  }

  else
  {
    v10 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v1 + v10, v0 + 56, &qword_27F931828, &unk_25853EB90);
    if (*(v0 + 80))
    {
      sub_258464C30(v0 + 56, v0 + 96);
      sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
      v11 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      *(v0 + 368) = v11;
      v12 = *v11;

      return MEMORY[0x2822009F8](sub_25851BF58, v12, 0);
    }

    else
    {
      sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
      v13 = *(v0 + 288);
      if (*(v13 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor))
      {
        v14 = *(v13 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v13 = *(v0 + 288);
      }

      if (*(v13 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
      {
        v15 = *(v13 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v13 = *(v0 + 288);
      }

      v16 = *(v0 + 320);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      v19 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
      swift_beginAccess();
      sub_2584AC3B8(v13 + v19, v16, &qword_27F931820, &unk_25853F380);
      v20 = (*(v18 + 48))(v16, 1, v17);
      v21 = *(v0 + 320);
      if (v20)
      {
        sub_258465168(*(v0 + 320), &qword_27F931820, &unk_25853F380);
      }

      else
      {
        v23 = *(v0 + 304);
        v22 = *(v0 + 312);
        v24 = *(v0 + 296);
        v25 = *(v0 + 280);
        (*(v23 + 16))(v22, *(v0 + 320), v24);
        sub_258465168(v21, &qword_27F931820, &unk_25853F380);
        *(v0 + 272) = v25;
        v26 = v25;
        sub_25853363C();
        (*(v23 + 8))(v22, v24);
      }

      v27 = *(v0 + 280);
      *(v0 + 248) = v27;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      if (swift_dynamicCast() && *(v0 + 376) == 4)
      {
        v29 = *(v0 + 288);
        *(v0 + 264) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
      }

      else
      {
        v30 = *(v0 + 280);
        v31 = *(v0 + 288);
        *(v0 + 256) = v30;
        v32 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
      }

      sub_2585337FC();
      v34 = *(v0 + 312);
      v33 = *(v0 + 320);
      v35 = *(v0 + 288);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336DC();

      v36 = *(v0 + 8);

      return v36();
    }
  }
}