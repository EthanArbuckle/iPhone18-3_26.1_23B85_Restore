__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_247C20FEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C2100C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_247C2107C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C2109C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0;
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
    *result = (a2 - 1);
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

  *(result + 176) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_247C2113C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C2115C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_247C211A8(uint64_t a1, int a2)
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

uint64_t sub_247C211C8(uint64_t result, int a2, int a3)
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

_DWORD *sub_247C21244@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_247C21274(uint64_t a1, id *a2)
{
  result = sub_247D1FBC8();
  *a2 = 0;
  return result;
}

uint64_t sub_247C212EC(uint64_t a1, id *a2)
{
  v3 = sub_247D1FBD8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_247C2136C@<X0>(uint64_t *a1@<X8>)
{
  sub_247D1FBE8();
  v2 = sub_247D1FBB8();

  *a1 = v2;
  return result;
}

uint64_t sub_247C213D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247D1FBE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_247C21404(uint64_t a1)
{
  v2 = sub_247C21970(&qword_27EE62A38, type metadata accessor for CIContextOption);
  v3 = sub_247C21970(&qword_27EE62A40, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247C214C0(uint64_t a1)
{
  v2 = sub_247C21970(&qword_27EE629D0, type metadata accessor for Key);
  v3 = sub_247C21970(&qword_27EE629D8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247C2157C(uint64_t a1)
{
  v2 = sub_247C21970(&qword_27EE62990, type metadata accessor for Level);
  v3 = sub_247C21970(&qword_27EE62998, type metadata accessor for Level);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_247C216EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C2170C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
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

uint64_t sub_247C2177C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C2179C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_247C21828(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C21848(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 120) = v3;
  return result;
}

uint64_t sub_247C21970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247C219B8(uint64_t a1)
{
  v2 = sub_247C21970(&qword_27EE629C0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_247C21970(&qword_27EE629C8, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247C21B04(uint64_t a1)
{
  v2 = sub_247C21970(&qword_27EE629A0, type metadata accessor for Preset);
  v3 = sub_247C21970(&qword_27EE629A8, type metadata accessor for Preset);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247C21BC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_247D1FBB8();

  *a1 = v2;
  return result;
}

uint64_t sub_247C21C08(uint64_t a1)
{
  v2 = sub_247C21970(&qword_27EE629B0, type metadata accessor for DeviceType);
  v3 = sub_247C21970(&qword_27EE629B8, type metadata accessor for DeviceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247C21D54()
{
  v0 = sub_247D1FBE8();
  v1 = MEMORY[0x24C1B7BF0](v0);

  return v1;
}

uint64_t sub_247C21D90()
{
  sub_247D1FBE8();
  sub_247D1FCB8();
}

uint64_t sub_247C21DE4()
{
  sub_247D1FBE8();
  sub_247D20618();
  sub_247D1FCB8();
  v0 = sub_247D20658();

  return v0;
}

uint64_t sub_247C21E58()
{
  v0 = sub_247D1FBE8();
  v2 = v1;
  if (v0 == sub_247D1FBE8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_247D20538();
  }

  return v5 & 1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_247C221FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C2221C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

void sub_247C22374(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_247C22474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247C224BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_247C22520()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C2482C(v1, v3, _s15DiagnosticStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247C24768(v3, _s15DiagnosticStyleOMa);
      return 0xD000000000000018;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_247C24768(v3, _s5StateVMa);
    return 0x7665446B63656863;
  }

  else
  {
    sub_247C24768(v3, _s15DiagnosticStyleOMa);
    return 0xD000000000000011;
  }
}

id sub_247C226BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v134 = a3;
  v138 = a2;
  v4 = sub_247D1EFC8();
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_247D1ECB8();
  v130 = *(v136 - 1);
  MEMORY[0x28223BE20](v136);
  v7 = (&v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_247D1ECD8();
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_247D1FB98();
  v129 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v137 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5StateVMa();
  v126 = *(v11 - 8);
  v12 = *(v126 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v128 = (&v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v13);
  v127 = &v125 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v125 - v16;
  v18 = _s15DiagnosticStyleOMa(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v125 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v125 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v125 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (&v125 - v31);
  v139 = a1;
  sub_247C2482C(a1, &v125 - v31, _s15DiagnosticStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_247C247C8(v32, v17);
      v34 = v137;
      sub_247D1FB88();
      sub_247C88264(v34);
      v35 = (v129 + 8);
      v36 = *(v129 + 1);
      (v36)(v34, v135);
      v37 = sub_247D1FBB8();

      sub_247C2482C(v139, v30, _s15DiagnosticStyleOMa);
      v38 = swift_getEnumCaseMultiPayload();
      v39 = _s15DiagnosticStyleOMa;
      if (v38 > 1)
      {
        if (v38 != 2)
        {
          v40 = 0;
          goto LABEL_42;
        }

        v39 = _s15DiagnosticStyleOMa;
      }

      else
      {
        if (!v38)
        {
          v40 = 0;
LABEL_28:
          sub_247C24768(v30, v39);
LABEL_42:
          v96 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:v37 preferredStyle:v40];

          v73 = v96;
          v97 = v137;
          sub_247D1FB88();
          sub_247C88264(v97);
          v98 = v135;
          (v36)(v97, v135);
          v99 = swift_allocObject();
          v129 = v35;
          v100 = v99;
          v133 = v36;
          v101 = v134;
          *(v99 + 16) = v138;
          *(v99 + 24) = v101;

          v102 = sub_247D1FBB8();

          v145 = sub_247C24CE8;
          v146 = v100;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v136 = &v143;
          v143 = sub_247C23D60;
          v144 = &block_descriptor_25;
          v103 = _Block_copy(&aBlock);

          v104 = objc_opt_self();
          v105 = [v104 actionWithTitle:v102 style:1 handler:v103];
          _Block_release(v103);

          [v73 addAction_];
          sub_247D1FB88();
          sub_247C88264(v97);
          (v133)(v97, v98);
          v106 = v127;
          sub_247C2482C(v17, v127, _s5StateVMa);
          v107 = (*(v126 + 80) + 32) & ~*(v126 + 80);
          v108 = swift_allocObject();
          *(v108 + 16) = v138;
          *(v108 + 24) = v101;
          sub_247C247C8(v106, v108 + v107);

          v109 = sub_247D1FBB8();

          v145 = sub_247C24FFC;
          v146 = v108;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v143 = sub_247C23D60;
          v144 = &block_descriptor_31;
          v110 = _Block_copy(&aBlock);

          v111 = [v104 actionWithTitle:v109 style:2 handler:v110];
          _Block_release(v110);

          [v73 addAction_];

          sub_247C24768(v139, _s15DiagnosticStyleOMa);
          v94 = _s5StateVMa;
          v95 = v17;
          goto LABEL_45;
        }

        v39 = _s5StateVMa;
      }

      v40 = 1;
      goto LABEL_28;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70);
    v51 = *(v32 + *(v50 + 48));
    sub_247C247C8(v32, v128);
    v52 = v137;
    sub_247D1FB88();
    v53 = sub_247C88264(v52);
    v55 = v54;
    v56 = *(v129 + 1);
    v56(v52, v135);
    v140 = v53;
    v141 = v55;
    if (sub_247CBDF50())
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_247D202C8();

      strcpy(&aBlock, "\n\n [INTERNAL] ");
      HIBYTE(aBlock) = -18;
      swift_getErrorValue();
      v57 = sub_247D205B8();
      MEMORY[0x24C1B7B80](v57);

      MEMORY[0x24C1B7B80](aBlock, *(&aBlock + 1));
    }

    v136 = v51;
    sub_247D1FB88();
    sub_247C88264(v52);
    v56(v52, v135);
    v58 = sub_247D1FBB8();

    v59 = sub_247D1FBB8();

    sub_247C2482C(v139, v24, _s15DiagnosticStyleOMa);
    v60 = swift_getEnumCaseMultiPayload();
    v61 = _s15DiagnosticStyleOMa;
    if (v60 > 1)
    {
      if (v60 != 2)
      {
        v81 = v56;
        v62 = 0;
        goto LABEL_44;
      }

      v61 = _s15DiagnosticStyleOMa;
    }

    else
    {
      if (!v60)
      {
        v62 = 0;
LABEL_35:
        v81 = v56;
        sub_247C24768(v24, v61);
LABEL_44:
        v112 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v58 message:v59 preferredStyle:v62];

        v73 = v112;
        sub_247D1FB88();
        v113 = v128;
        sub_247C88264(v52);
        v81(v52, v135);
        v114 = v127;
        sub_247C2482C(v113, v127, _s5StateVMa);
        v115 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v116 = (v12 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
        v117 = swift_allocObject();
        v118 = v134;
        *(v117 + 16) = v138;
        *(v117 + 24) = v118;
        sub_247C247C8(v114, v117 + v115);
        v119 = v136;
        *(v117 + v116) = v136;

        v120 = v119;
        v121 = sub_247D1FBB8();

        v145 = sub_247C24BE8;
        v146 = v117;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v143 = sub_247C23D60;
        v144 = &block_descriptor_7;
        v122 = _Block_copy(&aBlock);

        v123 = [objc_opt_self() actionWithTitle:v121 style:0 handler:v122];
        _Block_release(v122);

        [v73 addAction_];

        sub_247C24768(v139, _s15DiagnosticStyleOMa);
        v94 = _s5StateVMa;
        v95 = v113;
        goto LABEL_45;
      }

      v61 = _s5StateVMa;
    }

    v62 = 1;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_247D1FB88();
    v63 = type metadata accessor for DeviceAssessmentViewController(0);
    *v7 = v63;
    v65 = v130 + 104;
    v64 = *(v130 + 104);
    LODWORD(v135) = *MEMORY[0x277CC9120];
    v129 = v64;
    v64(v7);
    sub_247D1EFB8();
    sub_247D1ECE8();
    sub_247D1FC48();
    v66 = sub_247D1FBB8();

    sub_247C2482C(v139, v27, _s15DiagnosticStyleOMa);
    v67 = swift_getEnumCaseMultiPayload();
    v68 = _s15DiagnosticStyleOMa;
    if (v67 > 1)
    {
      v69 = 0;
      if (v67 != 2)
      {
LABEL_39:
        v82 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:v66 preferredStyle:v69];

        v73 = v82;
        sub_247D1FB88();
        *v7 = v63;
        (v129)(v7, v135, v136);
        sub_247D1EFB8();
        sub_247D1ECE8();
        sub_247D1FC48();
        v130 = v65;
        v83 = swift_allocObject();
        v128 = v63;
        v84 = v83;
        v85 = v134;
        *(v83 + 16) = v138;
        *(v83 + 24) = v85;

        v86 = sub_247D1FBB8();

        v145 = sub_247C24C88;
        v146 = v84;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v133 = &v143;
        v143 = sub_247C23D60;
        v144 = &block_descriptor_13;
        v87 = _Block_copy(&aBlock);

        v88 = objc_opt_self();
        v89 = [v88 actionWithTitle:v86 style:1 handler:v87];
        _Block_release(v87);

        [v73 addAction_];
        sub_247D1FB88();
        *v7 = v128;
        (v129)(v7, v135, v136);
        sub_247D1EFB8();
        sub_247D1ECE8();
        sub_247D1FC48();
        v90 = swift_allocObject();
        *(v90 + 16) = v138;
        *(v90 + 24) = v85;

        v91 = sub_247D1FBB8();

        v145 = sub_247C24CE0;
        v146 = v90;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v143 = sub_247C23D60;
        v144 = &block_descriptor_19;
        v92 = _Block_copy(&aBlock);

        v93 = [v88 actionWithTitle:v91 style:2 handler:v92];
        _Block_release(v92);

        [v73 addAction_];

        goto LABEL_40;
      }

      v68 = _s15DiagnosticStyleOMa;
    }

    else
    {
      if (!v67)
      {
        v69 = 0;
LABEL_38:
        sub_247C24768(v27, v68);
        goto LABEL_39;
      }

      v68 = _s5StateVMa;
    }

    v69 = 1;
    goto LABEL_38;
  }

  v135 = *v32;
  sub_247D1FB88();
  v41 = type metadata accessor for DeviceAssessmentViewController(0);
  *v7 = v41;
  v125 = v18;
  v42 = *MEMORY[0x277CC9120];
  v127 = v21;
  v43 = *(v130 + 104);
  v44 = v136;
  v43(v7, v42, v136);
  sub_247D1EFB8();
  sub_247D1ECE8();
  sub_247D1FC48();
  v126 = sub_247D1FBB8();

  sub_247D1FB88();
  v130 = v41;
  *v7 = v41;
  LODWORD(v129) = v42;
  v128 = v43;
  v43(v7, v42, v44);
  v45 = v127;
  sub_247D1EFB8();
  sub_247D1ECE8();
  sub_247D1FC48();
  v46 = sub_247D1FBB8();

  sub_247C2482C(v139, v45, _s15DiagnosticStyleOMa);
  v47 = swift_getEnumCaseMultiPayload();
  v48 = _s15DiagnosticStyleOMa;
  if (v47 <= 1)
  {
    if (!v47)
    {
      v49 = 0;
LABEL_31:
      sub_247C24768(v45, v48);
      goto LABEL_32;
    }

    v48 = _s5StateVMa;
LABEL_30:
    v49 = 1;
    goto LABEL_31;
  }

  v49 = 0;
  if (v47 == 2)
  {
    v48 = _s15DiagnosticStyleOMa;
    goto LABEL_30;
  }

LABEL_32:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = v126;
  v72 = [ObjCClassFromMetadata alertControllerWithTitle:v126 message:v46 preferredStyle:v49];

  v73 = v72;
  sub_247D1FB88();
  *v7 = v130;
  (v128)(v7, v129, v136);
  sub_247D1EFB8();
  sub_247D1ECE8();
  sub_247D1FC48();
  v74 = swift_allocObject();
  v75 = v134;
  v74[2] = v138;
  v74[3] = v75;
  v76 = v135;
  v74[4] = v135;

  v77 = v76;
  v78 = sub_247D1FBB8();

  v145 = sub_247C246FC;
  v146 = v74;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v143 = sub_247C23D60;
  v144 = &block_descriptor;
  v79 = _Block_copy(&aBlock);

  v80 = [objc_opt_self() actionWithTitle:v78 style:0 handler:v79];
  _Block_release(v79);

  [v73 addAction_];

LABEL_40:
  v94 = _s15DiagnosticStyleOMa;
  v95 = v139;
LABEL_45:
  sub_247C24768(v95, v94);

  return v73;
}

void sub_247C23D60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_247C23DC8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  v10 = *(v9 + 48);
  sub_247C2482C(a4, v8, _s5StateVMa);
  v11 = _s5StateVMa();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_247C250C8();
  *&v8[v10] = swift_allocError();
  *v12 = xmmword_247D22B20;
  *(v12 + 16) = 0x8000000247D2D700;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0xE000000000000000;
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  a2(v8);
  sub_247C24768(v8, _s15DiagnosticStyleO6ResultOMa);
}

uint64_t sub_247C23FDC(uint64_t a1, void (*a2)(char *))
{
  v3 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a2(v5);
  sub_247C24768(v5, _s15DiagnosticStyleO6ResultOMa);
}

uint64_t sub_247C24140(uint64_t a1, void (*a2)(char *))
{
  v3 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  v7 = *(v6 + 48);
  v8 = _s5StateVMa();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_247C250C8();
  *&v5[v7] = swift_allocError();
  *v9 = xmmword_247D22B30;
  *(v9 + 16) = 0x8000000247D2D730;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0xE000000000000000;
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  a2(v5);
  sub_247C24768(v5, _s15DiagnosticStyleO6ResultOMa);
}

uint64_t sub_247C24328(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, void *a5)
{
  v8 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  v12 = *(v11 + 48);
  sub_247C2482C(a4, v10, _s5StateVMa);
  v13 = _s5StateVMa();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  *&v10[v12] = a5;
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v14 = a5;
  a2(v10);
  sub_247C24768(v10, _s15DiagnosticStyleO6ResultOMa);
}

uint64_t sub_247C24504(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v6 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  v10 = *(v9 + 48);
  v11 = _s5StateVMa();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  *&v8[v10] = a4;
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v12 = a4;
  a2(v8);
  sub_247C24768(v8, _s15DiagnosticStyleO6ResultOMa);
}

uint64_t sub_247C246BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247C24768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C247C8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C2482C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C24894()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = (v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = v1[9];
  v14 = sub_247D1F488();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_247C24BE8(uint64_t a1)
{
  v3 = *(_s5StateVMa() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_247C24328(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_247C24CA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C24D08()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v15 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_247C24FFC(uint64_t a1)
{
  v3 = *(_s5StateVMa() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_247C23DC8(a1, v4, v5, v6);
}

uint64_t sub_247C25090(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247C250C8()
{
  result = qword_27EE62B80;
  if (!qword_27EE62B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62B80);
  }

  return result;
}

uint64_t sub_247C25130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C251BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_247C25248()
{
  sub_247C252A0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_247C252A0()
{
  if (!qword_27EE62B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62BA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE62B98);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_247C253C0()
{
  _s5StateVMa();
  if (v0 <= 0x3F)
  {
    sub_247C25448();
    if (v1 <= 0x3F)
    {
      sub_247C254C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_247C25448()
{
  if (!qword_27EE62BC0)
  {
    _s5StateVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62BA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE62BC0);
    }
  }
}

unint64_t sub_247C254C4()
{
  result = qword_27EE62BC8;
  if (!qword_27EE62BC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EE62BC8);
  }

  return result;
}

double static AssessmentError.userCanceledSession.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 10;
  *a1 = xmmword_247D22B20;
  *(a1 + 16) = 0x8000000247D2D700;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.canceledInitialLoad.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 8;
  *a1 = xmmword_247D22B30;
  *(a1 + 16) = 0x8000000247D2D730;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

uint64_t AssessmentError.errorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AssessmentError.isUserInitiatedCancel.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v2 != 10)
  {

    if (v2 != 8 || (v1 != 0xD000000000000030 || 0x8000000247D2D730 != v4) && (sub_247D20538() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_22;
    }

    if (v3 || v5 != 0xE000000000000000)
    {
      v8 = sub_247D20538();
      goto LABEL_22;
    }

LABEL_17:
    v8 = 1;
LABEL_22:

    return v8 & 1;
  }

  v6 = v1 == 0xD00000000000002BLL && 0x8000000247D2D700 == v4;
  if (!v6 && (sub_247D20538() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v3 && v5 == 0xE000000000000000)
  {
    goto LABEL_17;
  }

  v7 = sub_247D20538();

  if ((v7 & 1) == 0)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = 1;
  return v8 & 1;
}

void sub_247C25780(void *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v3 = sub_247D1F058();
  v55 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_247D1F098();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for TulaError();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  if (swift_dynamicCast())
  {
    v23 = v60;
    v22 = v61;
    v24 = v62;
    v25 = v63;
    v26 = v64;
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_247D202C8();

    v60 = v22;
    v61 = v24;
    MEMORY[0x24C1B7B80](0x20726F7272452820, 0xEE00203A65646F43);
    v65 = v23;
    v27 = sub_247D204D8();
    MEMORY[0x24C1B7B80](v27);

    MEMORY[0x24C1B7B80](41, 0xE100000000000000);

    v29 = v60;
    v28 = v61;
  }

  else
  {
    v60 = a1;
    v30 = a1;
    v31 = swift_dynamicCast();
    v32 = *(v18 + 56);
    if (v31)
    {
      v32(v16, 0, 1, v17);
      sub_247C271A4(v16, v20);
      v23 = sub_247CF82F8(*v20, v20[8]);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_247D202C8();
      v33 = *(v20 + 2);
      v34 = *(v20 + 3);

      v60 = v33;
      v61 = v34;
      MEMORY[0x24C1B7B80](0x43726F7272452820, 0xED0000203A65646FLL);
      v65 = v23;
      v35 = sub_247D204D8();
      MEMORY[0x24C1B7B80](v35);

      MEMORY[0x24C1B7B80](41, 0xE100000000000000);

      v29 = v60;
      v28 = v61;
      v25 = *(v20 + 4);
      v26 = *(v20 + 5);

      sub_247C27208(v20);
    }

    else
    {
      v32(v16, 1, 1, v17);
      sub_247C27100(v16, &qword_27EE62C10);
      v60 = a1;
      v36 = a1;
      v37 = v58;
      v38 = swift_dynamicCast();
      v39 = v57;
      v40 = *(v57 + 56);
      if (v38)
      {
        v40(v11, 0, 1, v37);
        (*(v39 + 32))(v56, v11, v37);
        sub_247C27160(&qword_27EE62C18);
        v23 = sub_247D1EC78();
        sub_247D1F048();
        v41 = sub_247D1F038();
        v42 = *(v55 + 8);
        v42(v8, v3);
        sub_247D1EFF8();
        v43 = sub_247D1F038();
        v42(v6, v3);
        if (v41 == v23 || v43 == v23)
        {
          v60 = 0;
          v61 = 0xE000000000000000;
          sub_247D202C8();
          MEMORY[0x24C1B7B80](0xD0000000000000B5, 0x8000000247D2D9D0);
          v65 = v23;
          v52 = sub_247D204D8();
          MEMORY[0x24C1B7B80](v52);

          MEMORY[0x24C1B7B80](41, 0xE100000000000000);
          v29 = v60;
          v28 = v61;
          v45 = v56;
          v44 = v58;
        }

        else
        {
          v60 = 0;
          v61 = 0xE000000000000000;
          sub_247D202C8();
          sub_247C27160(&qword_27EE62C20);
          v44 = v58;
          v45 = v56;
          v46 = sub_247D205B8();
          v48 = v47;

          v60 = v46;
          v61 = v48;
          v39 = v57;
          MEMORY[0x24C1B7B80](0x20726F7272452820, 0xEE00203A65646F43);
          v65 = v23;
          v49 = sub_247D204D8();
          MEMORY[0x24C1B7B80](v49);

          MEMORY[0x24C1B7B80](41, 0xE100000000000000);
          v29 = v60;
          v28 = v61;
        }

        (*(v39 + 8))(v45, v44);
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      else
      {
        v40(v11, 1, 1, v37);
        sub_247C27100(v11, &qword_27EE62C08);
        v50 = sub_247D1EC98();
        v23 = [v50 code];

        v26 = 0xE000000000000000;
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_247D202C8();

        v60 = 0xD000000000000020;
        v61 = 0x8000000247D2D9A0;
        v65 = v23;
        v51 = sub_247D204D8();
        MEMORY[0x24C1B7B80](v51);

        MEMORY[0x24C1B7B80](41, 0xE100000000000000);

        v25 = 0;
        v29 = v60;
        v28 = v61;
      }
    }
  }

  v53 = v59;
  *v59 = v23;
  v53[1] = v29;
  v53[2] = v28;
  v53[3] = v25;
  v53[4] = v26;
}

uint64_t static AssessmentError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_247D20538();
}

uint64_t sub_247C26080()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  return sub_247D20658();
}

uint64_t sub_247C260F4()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  return sub_247D20658();
}

uint64_t sub_247C26138()
{
  v1 = 0x73654D726F727265;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646F43726F727265;
  }
}

uint64_t sub_247C261A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_247C26FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_247C261E4(uint64_t a1)
{
  v2 = sub_247C26460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247C26220(uint64_t a1)
{
  v2 = sub_247C26460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssessmentError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[0] = v1[4];
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247C26460();
  sub_247D20678();
  v14 = 0;
  sub_247D204A8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_247D20478();
  v12 = 2;
  sub_247D20478();
  return (*(v5 + 8))(v7, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_247C26460()
{
  result = qword_27EE62BD8;
  if (!qword_27EE62BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62BD8);
  }

  return result;
}

uint64_t AssessmentError.hash(into:)()
{
  MEMORY[0x24C1B84E0](*v0);
  sub_247D1FCB8();

  return sub_247D1FCB8();
}

uint64_t AssessmentError.hashValue.getter()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  sub_247D1FCB8();
  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t AssessmentError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247C26460();
  sub_247D20668();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_247D20438();
  v23 = 1;
  v10 = sub_247D20428();
  v12 = v11;
  v21 = v10;
  v22 = 2;
  v13 = sub_247D20428();
  v15 = v14;
  v16 = *(v6 + 8);
  v20 = v13;
  v16(v8, v5);
  v17 = v20;
  v18 = v21;
  *a2 = v9;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v17;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_247C267D0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_247C2683C()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  sub_247D1FCB8();
  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t sub_247C268BC()
{
  MEMORY[0x24C1B84E0](*v0);
  sub_247D1FCB8();

  return sub_247D1FCB8();
}

uint64_t sub_247C2692C()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  sub_247D1FCB8();
  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t sub_247C269B8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_247D20538();
}

double static AssessmentError.sessionArchived.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_247D22C40;
  *(a1 + 16) = 0x8000000247D2D7D0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.sessionExpired.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_247D22C50;
  *(a1 + 16) = 0x8000000247D2D7F0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.sessionMissing.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_247D22C60;
  *(a1 + 16) = 0x8000000247D2D810;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.invalidImageUploadTokens.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 4;
  *a1 = xmmword_247D22C70;
  *(a1 + 16) = 0x8000000247D2D830;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.viewSupportOptions.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 5;
  *a1 = xmmword_247D22C80;
  *(a1 + 16) = 0x8000000247D2D850;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.cosmeticAssessmentFailed.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 6;
  *a1 = xmmword_247D22C90;
  *(a1 + 16) = 0x8000000247D2D880;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.accessibilityEscape.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 7;
  *a1 = xmmword_247D22CA0;
  *(a1 + 16) = 0x8000000247D2D8A0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.clientTerminatedSession.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 9;
  *a1 = xmmword_247D22CB0;
  *(a1 + 16) = 0x8000000247D2D8D0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.retryExceeded.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 11;
  *a1 = xmmword_247D22CC0;
  *(a1 + 16) = 0x8000000247D2D900;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.possibleIssueDetected.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 12;
  *a1 = xmmword_247D22CD0;
  *(a1 + 16) = 0x8000000247D2D930;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

double static AssessmentError.imageProcessingTimeout.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 13;
  *a1 = xmmword_247D22CE0;
  *(a1 + 16) = 0x8000000247D2D960;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

unint64_t sub_247C26C58()
{
  result = qword_27EE62BE8;
  if (!qword_27EE62BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62BE8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247C26CC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247C26D08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssessmentError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssessmentError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_247C26ED0()
{
  result = qword_27EE62BF0;
  if (!qword_27EE62BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62BF0);
  }

  return result;
}

unint64_t sub_247C26F28()
{
  result = qword_27EE62BF8;
  if (!qword_27EE62BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62BF8);
  }

  return result;
}

unint64_t sub_247C26F80()
{
  result = qword_27EE62C00;
  if (!qword_27EE62C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C00);
  }

  return result;
}

uint64_t sub_247C26FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (sub_247D20538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_247D20538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000247D2D980 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_247D20538();

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

uint64_t sub_247C27100(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C27160(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_247D1F098();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247C271A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TulaError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C27208(uint64_t a1)
{
  v2 = type metadata accessor for TulaError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247C27274()
{
  MEMORY[0x24C1B7B80](40, 0xE100000000000000);
  sub_247D1FFA8();
  MEMORY[0x24C1B7B80](8236, 0xE200000000000000);
  sub_247D1FFA8();
  MEMORY[0x24C1B7B80](8236, 0xE200000000000000);
  sub_247D1FFA8();
  MEMORY[0x24C1B7B80](41, 0xE100000000000000);
  return 0;
}

void sub_247C27350(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  point[0] = a8;
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  v14 = CGRectGetHeight(v42) * a7 / a8;
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  v15 = CGRectGetWidth(v43) * a8 / a7;
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  v30 = (v14 - CGRectGetWidth(v44)) / v14 * 0.5;
  v45.origin.x = a3;
  v45.origin.y = a4;
  v45.size.width = a5;
  v45.size.height = a6;
  v16 = (v15 - CGRectGetHeight(v45)) / v15 * 0.5;
  v46.origin.x = a3;
  v46.origin.y = a4;
  v46.size.width = a5;
  v46.size.height = a6;
  v17 = v15 * (a2 - v16);
  v18 = v14 * (a1 - v30) / CGRectGetWidth(v46);
  v47.origin.x = a3;
  v47.origin.y = a4;
  v47.size.width = a5;
  v47.size.height = a6;
  v19 = v17 / CGRectGetHeight(v47);
  v20 = a7 < point[0];
  if (a7 >= point[0])
  {
    v21 = v18;
  }

  else
  {
    v21 = a1;
  }

  point[0] = v21;
  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = a2;
  }

  CGAffineTransformMakeScale(&v39, 1.0, -1.0);
  tx = v39.tx;
  ty = v39.ty;
  v33 = *&v39.c;
  v36 = *&v39.a;
  v48.origin.x = a3;
  v48.origin.y = a4;
  v48.size.width = a5;
  v48.size.height = a6;
  Height = CGRectGetHeight(v48);
  *&v39.c = v33;
  *&v39.a = v36;
  v39.tx = tx;
  v39.ty = ty;
  CGAffineTransformTranslate(&point[1], &v39, 0.0, -Height);
  v27 = point[5];
  v26 = point[6];
  v37 = *&point[1];
  v34 = *&point[3];
  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  Width = CGRectGetWidth(v49);
  v50.origin.x = a3;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  v29 = CGRectGetHeight(v50);
  v39.a = 1.0;
  v39.b = 0.0;
  v39.c = 0.0;
  v39.d = 1.0;
  v39.tx = 0.0;
  v39.ty = 0.0;
  CGAffineTransformScale(&point[1], &v39, Width, v29);
  v39 = *&point[1];
  v40.x = point[0];
  v40.y = v22;
  v41 = CGPointApplyAffineTransform(v40, &v39);
  *&v39.c = v34;
  *&v39.a = v37;
  v39.tx = v27;
  v39.ty = v26;
  CGPointApplyAffineTransform(v41, &v39);
}

double sub_247C27590@<D0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  [a1 topLeft];
  sub_247C27350(v16, v17, a3, a4, a5, a6, a7, a8);
  v61 = v18;
  v20 = v19;
  [a1 bottomLeft];
  v56 = a4;
  v57 = a5;
  v55 = a6;
  sub_247C27350(v21, v22, a3, a4, a5, a6, a7, a8);
  v60 = v23;
  v59 = v24;
  [a1 topRight];
  sub_247C27350(v25, v26, a3, a4, a5, a6, a7, a8);
  v28 = v27;
  v58 = v29;
  [a1 bottomRight];
  sub_247C27350(v30, v31, a3, a4, a5, a6, a7, a8);
  v33 = v32;
  v35 = v34;
  v62.origin.x = a3;
  v62.origin.y = a4;
  v62.size.width = a5;
  v62.size.height = a6;
  MaxX = CGRectGetMaxX(v62);
  v37 = v20;
  v53 = v20;
  v38 = v20 - v20;
  v39 = v28;
  v54 = v28;
  v40 = v28 - v61;
  v41 = v58 - v37;
  v51 = v59 - v37;
  v52 = v33 - v39;
  v42 = v38 * (v58 - v37) + v40 * MaxX;
  v43 = hypot(MaxX, v38);
  v44 = hypot(v40, v41);
  v45 = round(acos(v42 / (v43 * v44)) * 180.0 / 3.14159265);
  if (v38 >= v41)
  {
    v46 = v45;
  }

  else
  {
    v46 = -v45;
  }

  v47 = v44 - hypot(v33 - v60, v35 - v59);
  v48 = hypot(v60 - v61, v51);
  v49 = hypot(v52, v35 - v58);
  *a2 = v46;
  *(a2 + 8) = v47;
  *(a2 + 16) = v48 - v49;
  *(a2 + 24) = v61;
  *(a2 + 32) = v53;
  *(a2 + 40) = v60;
  *(a2 + 48) = v59;
  *(a2 + 56) = v54;
  *(a2 + 64) = v58;
  *(a2 + 72) = v33;
  *(a2 + 80) = v35;
  *(a2 + 88) = a3;
  *(a2 + 96) = v56;
  *(a2 + 104) = v57;
  result = v55;
  *(a2 + 112) = v55;
  return result;
}

uint64_t sub_247C277F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_247C2793C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_247C2793C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247C27A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_247C2793C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_247C27BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_247C27E44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_247C27CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_247C27E44;

  return v11(a1, a2, a3, a4);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_247C27E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_247C27ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247C27F60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 128);
  v49 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F908();
  v29 = v49;
  sub_247D1F908();
  sub_247D1F998();
  sub_247D1F508();
  v29 = *(v1 + 80);
  sub_247D1F908();
  v4 = *&v50[0];
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  sub_247D1F7E8();
  v51.origin.x = v5;
  v51.origin.y = v6;
  v51.size.width = v7;
  v51.size.height = v8;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = v5;
  v52.origin.y = v6;
  v52.size.width = v7;
  v52.size.height = v8;
  v10 = MinX + CGRectGetMaxX(v52) * 0.0325;
  v53.origin.x = v5;
  v53.origin.y = v6;
  v53.size.width = v7;
  v53.size.height = v8;
  MidY = CGRectGetMidY(v53);
  v54.origin.x = v5;
  v54.origin.y = v6;
  v54.size.width = v7;
  v54.size.height = v8;
  v12 = MidY + CGRectGetMaxY(v54) * 0.03;
  LOBYTE(v50[0]) = v41;
  v39 = v43;
  v29 = *(v1 + 64);

  sub_247D1F908();
  *&v31 = v3;
  *(&v31 + 1) = v40;
  LOBYTE(v32) = v41;
  *(&v32 + 1) = v42;
  LOBYTE(v33) = v43;
  *(&v33 + 1) = v44;
  *&v34 = v45;
  *(&v34 + 1) = v4;
  v35 = v46;
  v36 = v47;
  LOBYTE(v37) = v48;
  *(&v37 + 1) = v10;
  *&v38 = v12;
  v29 = *v1;
  v30 = *(v1 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C30);
  MEMORY[0x24C1B7800](v50, v13);
  v39 = v50[0];
  v14 = swift_allocObject();
  v15 = *(v1 + 144);
  *(v14 + 144) = *(v1 + 128);
  *(v14 + 160) = v15;
  *(v14 + 176) = *(v1 + 160);
  v16 = *(v1 + 80);
  *(v14 + 80) = *(v1 + 64);
  *(v14 + 96) = v16;
  v17 = *(v1 + 112);
  *(v14 + 112) = *(v1 + 96);
  *(v14 + 128) = v17;
  v18 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v18;
  v19 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v19;
  sub_247C29ADC(v1, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C38);
  sub_247C29B14();
  sub_247D1F868();

  v50[4] = v35;
  v50[5] = v36;
  v50[6] = v37;
  v50[7] = v38;
  v50[0] = v31;
  v50[1] = v32;
  v50[2] = v33;
  v50[3] = v34;
  sub_247C27100(v50, &qword_27EE62C38);
  v20 = swift_allocObject();
  v21 = *(v2 + 144);
  *(v20 + 144) = *(v2 + 128);
  *(v20 + 160) = v21;
  *(v20 + 176) = *(v2 + 160);
  v22 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v22;
  v23 = *(v2 + 112);
  *(v20 + 112) = *(v2 + 96);
  *(v20 + 128) = v23;
  v24 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v24;
  v25 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v25;
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C98) + 36));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = sub_247C29E18;
  v26[3] = v20;
  return sub_247C29ADC(v2, &v29);
}

void sub_247C2833C(uint64_t a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247C285DC();
  v16 = *a1;
  LOBYTE(v17) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C30);
  MEMORY[0x24C1B7800](&aBlock, v2);
  if (aBlock == 1)
  {
    v3 = objc_opt_self();
    v4 = *(a1 + 96) + *(a1 + 104) + *(a1 + 112) + *(a1 + 120);
    v5 = swift_allocObject();
    v6 = *(a1 + 144);
    *(v5 + 144) = *(a1 + 128);
    *(v5 + 160) = v6;
    *(v5 + 176) = *(a1 + 160);
    v7 = *(a1 + 80);
    *(v5 + 80) = *(a1 + 64);
    *(v5 + 96) = v7;
    v8 = *(a1 + 112);
    *(v5 + 112) = *(a1 + 96);
    *(v5 + 128) = v8;
    v9 = *(a1 + 16);
    *(v5 + 16) = *a1;
    *(v5 + 32) = v9;
    v10 = *(a1 + 48);
    *(v5 + 48) = *(a1 + 32);
    *(v5 + 64) = v10;
    v21 = sub_247C29F40;
    v22 = v5;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v19 = sub_247C23D60;
    v20 = &block_descriptor_0;
    v11 = _Block_copy(&aBlock);
    sub_247C29ADC(a1, &v16);

    v12 = [v3 scheduledTimerWithTimeInterval:1 repeats:v11 block:v4];
    _Block_release(v11);
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    aBlock = *(a1 + 24);
    v19 = *(a1 + 40);
    v15 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CA0);
    sub_247D1F958();
    aBlock = v16;
    v19 = v17;
    MEMORY[0x24C1B7800](&v15, v13);
    v14 = v15;
    [v15 fire];
  }

  else
  {
    sub_247C285DC();
    sub_247C29618();
  }
}

uint64_t sub_247C285DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[5];
  v11 = v3;
  v12 = v2;
  v8 = v2;
  v9 = v1;
  v10 = v3;

  sub_247C29E20(&v12, &v7);
  sub_247C29E7C(&v11, &v7);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CA0);
  MEMORY[0x24C1B7800](&v7);
  if (v7)
  {

    v8 = v2;
    v9 = v1;
    v10 = v3;
    MEMORY[0x24C1B7800](&v7, v4);
    v5 = v7;
    [v7 invalidate];

    v8 = v2;
    v9 = v1;
    v10 = v3;
    v7 = 0;
    sub_247D1F958();
  }

  sub_247C29EEC(&v12);

  return sub_247C27100(&v11, &qword_27EE62F90);
}

uint64_t sub_247C286E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4 - 8];
  v6 = sub_247D1FEC8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_247D1FEA8();
  sub_247C29ADC(a2, v17);
  v7 = sub_247D1FE98();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a2 + 144);
  *(v8 + 160) = *(a2 + 128);
  *(v8 + 176) = v10;
  *(v8 + 192) = *(a2 + 160);
  v11 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 64);
  *(v8 + 112) = v11;
  v12 = *(a2 + 112);
  *(v8 + 128) = *(a2 + 96);
  *(v8 + 144) = v12;
  v13 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v13;
  v14 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = v14;
  sub_247CD082C(0, 0, v5, &unk_247D23260, v8);
}

uint64_t sub_247C28840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a1;
  v4[24] = a4;
  v5 = sub_247D1F6E8();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_247D1FEA8();
  v4[28] = sub_247D1FE98();
  v7 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C28934, v7, v6);
}

uint64_t sub_247C28934()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];

  MEMORY[0x24C1B7880](v5, *(v4 + 104) * 0.5, 0.85, 0.25);
  *(swift_task_alloc() + 16) = v4;
  v6 = swift_allocObject();
  v8 = *(v4 + 16);
  v7 = *(v4 + 32);
  *(v6 + 16) = *v4;
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  v9 = *(v4 + 96);
  v11 = *(v4 + 48);
  v10 = *(v4 + 64);
  *(v6 + 96) = *(v4 + 80);
  *(v6 + 112) = v9;
  *(v6 + 64) = v11;
  *(v6 + 80) = v10;
  v13 = *(v4 + 128);
  v12 = *(v4 + 144);
  v14 = *(v4 + 112);
  *(v6 + 176) = *(v4 + 160);
  *(v6 + 144) = v13;
  *(v6 + 160) = v12;
  *(v6 + 128) = v14;
  sub_247C29ADC(v4, (v0 + 2));
  sub_247D1F6D8();
  sub_247D1F538();

  (*(v3 + 8))(v1, v2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_247C28ADC(uint64_t a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  CGRectGetWidth(*(a1 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
  sub_247D1F918();
}

uint64_t sub_247C28BE8(uint64_t a1)
{
  v2 = sub_247D1F6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = MEMORY[0x24C1B7880](isCurrentExecutor, *(a1 + 104) * 0.5, 0.85, 0.25);
  MEMORY[0x28223BE20](v7);
  *(&v15 - 2) = a1;
  v8 = swift_allocObject();
  v9 = *(a1 + 144);
  *(v8 + 144) = *(a1 + 128);
  *(v8 + 160) = v9;
  *(v8 + 176) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v10;
  v11 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v11;
  v12 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v12;
  v13 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v13;
  sub_247C29ADC(a1, v16);
  sub_247D1F6D8();
  sub_247D1F538();

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_247C28E28(uint64_t a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  CGRectGetWidth(*(a1 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
  sub_247D1F918();
}

uint64_t sub_247C28F38(uint64_t a1)
{
  v2 = sub_247D1F6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = MEMORY[0x24C1B7880](isCurrentExecutor, *(a1 + 96), 0.85, 0.25);
  MEMORY[0x28223BE20](v7);
  *(&v15 - 2) = a1;
  v8 = swift_allocObject();
  v9 = *(a1 + 144);
  *(v8 + 144) = *(a1 + 128);
  *(v8 + 160) = v9;
  *(v8 + 176) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v10;
  v11 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v11;
  v12 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v12;
  v13 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v13;
  sub_247C29ADC(a1, v16);
  sub_247D1F6D8();
  sub_247D1F538();

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_247C29170()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
}

uint64_t sub_247C29248(uint64_t a1)
{
  v2 = sub_247D1F6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = MEMORY[0x24C1B7880](isCurrentExecutor, *(a1 + 112), 0.85, 0.25);
  MEMORY[0x28223BE20](v7);
  *(&v15 - 2) = a1;
  v8 = swift_allocObject();
  v9 = *(a1 + 144);
  *(v8 + 144) = *(a1 + 128);
  *(v8 + 160) = v9;
  *(v8 + 176) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v10;
  v11 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v11;
  v12 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v12;
  v13 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v13;
  sub_247C29ADC(a1, v16);
  sub_247D1F6D8();
  sub_247D1F538();

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_247C29480()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
}

uint64_t sub_247C29554()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
}

uint64_t sub_247C29618()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
  sub_247D1F918();
  return sub_247D1F918();
}

uint64_t sub_247C296BC()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247C285DC();
  sub_247C29618();
}

uint64_t sub_247C29760(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxX(v9);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  sub_247D1F7C8();
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxX(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMidY(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMaxY(v14);
  sub_247D1F7D8();
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxX(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMinY(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMaxY(v17);
  sub_247D1F7D8();
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMaxX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMaxY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMaxY(v20);
  sub_247D1F7D8();
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMaxX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMaxY(v22);
  sub_247D1F7D8();
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMaxX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMidY(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMaxY(v25);
  sub_247D1F7D8();
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMaxY(v28);
  return sub_247D1F7D8();
}

unint64_t sub_247C29B14()
{
  result = qword_27EE62C40;
  if (!qword_27EE62C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62C38);
    sub_247C29BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C40);
  }

  return result;
}

unint64_t sub_247C29BA0()
{
  result = qword_27EE62C48;
  if (!qword_27EE62C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62C50);
    sub_247C29C2C();
    sub_247C29DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C48);
  }

  return result;
}

unint64_t sub_247C29C2C()
{
  result = qword_27EE62C58;
  if (!qword_27EE62C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62C60);
    sub_247C29CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C58);
  }

  return result;
}

unint64_t sub_247C29CB8()
{
  result = qword_27EE62C68;
  if (!qword_27EE62C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62C70);
    sub_247C29D70();
    sub_247C2A7FC(&qword_27EE62C80, &qword_27EE62C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C68);
  }

  return result;
}

unint64_t sub_247C29D70()
{
  result = qword_27EE62C78;
  if (!qword_27EE62C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C78);
  }

  return result;
}

unint64_t sub_247C29DC4()
{
  result = qword_27EE62C90;
  if (!qword_27EE62C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C90);
  }

  return result;
}

uint64_t sub_247C29E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247C29F60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_247C29FE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247C2793C;

  return sub_247C28840(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247C2A1C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 64))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247C2A210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_247C2A278()
{
  result = qword_27EE62CA8;
  if (!qword_27EE62CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62C38);
    sub_247C29B14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62CA8);
  }

  return result;
}

unint64_t sub_247C2A358()
{
  result = qword_27EE62CB0;
  if (!qword_27EE62CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62CB0);
  }

  return result;
}

double sub_247C2A3AC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_247C2A3B8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_247C2A3C4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_247C2A3F0;
}

double sub_247C2A3F0(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_247C2A408()
{
  result = qword_27EE62CB8;
  if (!qword_27EE62CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62CB8);
  }

  return result;
}

uint64_t sub_247C2A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_247C2A6EC();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_247C2A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_247C2A6EC();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_247C2A590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v17 = *(v2 + 8);
  v18 = v5;
  v19 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  sub_247D1F7A8();
  v8 = COERCE_DOUBLE(sub_247D1F7B8());
  v10 = v9;
  v12 = v11;
  sub_247C2A698(v16);
  if ((v12 & 1) == 0)
  {
    v6 = v8;
    v7 = v10;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CC0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CC8);
  v15 = (a2 + *(result + 36));
  *v15 = v6;
  v15[1] = v7;
  return result;
}

unint64_t sub_247C2A6EC()
{
  result = qword_27EE62CD0;
  if (!qword_27EE62CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62CD0);
  }

  return result;
}

unint64_t sub_247C2A744()
{
  result = qword_27EE62CD8;
  if (!qword_27EE62CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62CC8);
    sub_247C2A7FC(&qword_27EE62CE0, &qword_27EE62CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62CD8);
  }

  return result;
}

uint64_t sub_247C2A7FC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double HeartbeatIconView.init(size:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_247D1F8F8();
  *a1 = v11;
  *(a1 + 8) = *(&v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F90);
  sub_247D1F8F8();
  *(a1 + 16) = v11;
  sub_247D1F8F8();
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  return result;
}

int64x2_t HeartbeatIconView.init()@<Q0>(uint64_t a1@<X8>)
{
  sub_247D1F8F8();
  *a1 = v3;
  *(a1 + 8) = *(&v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F90);
  sub_247D1F8F8();
  *(a1 + 16) = v3;
  sub_247D1F8F8();
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = vdupq_n_s64(0x4051800000000000uLL);
  *(a1 + 64) = result;
  return result;
}

uint64_t HeartbeatIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v28 = v1[2];
  v29.origin = v3;
  v29.size = v1[4];
  v4 = v1[1];
  v26 = *v1;
  v27 = v4;
  v5 = sub_247D1F998();
  v7 = v6;
  sub_247C2ACD4(&v26, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v31, __src, sizeof(v31));
  sub_247C2BD10(__dst, v25, &qword_27EE62CE8);
  sub_247C27100(v31, &qword_27EE62CE8);
  memcpy(__src, __dst, sizeof(__src));
  origin = v29.origin;
  size = v29.size;
  CGRectGetWidth(v29);
  v36.origin = origin;
  v36.size = size;
  CGRectGetHeight(v36);
  sub_247D1F998();
  sub_247D1F508();
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CF0) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CF8) + 28);
  v13 = *MEMORY[0x277CDFA88];
  v14 = sub_247D1F568();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  *a1 = v5;
  *(a1 + 8) = v7;
  memcpy((a1 + 16), __src, 0x1F8uLL);
  v15 = v33;
  *(a1 + 520) = v32;
  *(a1 + 536) = v15;
  *(a1 + 552) = v34;
  v16 = swift_allocObject();
  v17 = v29.origin;
  *(v16 + 48) = v28;
  *(v16 + 64) = v17;
  *(v16 + 80) = v29.size;
  v18 = v27;
  *(v16 + 16) = v26;
  *(v16 + 32) = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D00) + 36));
  *v19 = sub_247C2B7EC;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = 0;
  v20 = swift_allocObject();
  v21 = v29.origin;
  *(v20 + 48) = v28;
  *(v20 + 64) = v21;
  *(v20 + 80) = v29.size;
  v22 = v27;
  *(v20 + 16) = v26;
  *(v20 + 32) = v22;
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D08) + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_247C2B93C;
  v23[3] = v20;
  sub_247C2B960(&v26, v25);
  return sub_247C2B960(&v26, v25);
}

uint64_t sub_247C2ACD4@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_opt_self() systemBlueColor];
  sub_247D1F8C8();
  v4 = sub_247D1F8A8();

  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v75.origin.x = v5;
  v75.origin.y = v6;
  v75.size.width = v7;
  v75.size.height = v8;
  CGRectGetWidth(v75);
  sub_247D1F4E8();
  v9 = v69;
  v11 = v70;
  v10 = v71;
  v22 = v71;
  v23 = v70;
  v12 = v72;
  v13 = v73;
  v28 = v74;
  v14 = sub_247D1F998();
  v27 = v15;
  v24 = sub_247D1F888();
  v16 = sub_247D1F998();
  v25 = v17;
  v26 = v16;
  v76.origin.x = v5;
  v76.origin.y = v6;
  v76.size.width = v7;
  v76.size.height = v8;
  CGRectGetWidth(v76);
  v77.origin.x = v5;
  v77.origin.y = v6;
  v77.size.width = v7;
  v77.size.height = v8;
  CGRectGetWidth(v77);
  v78.origin.x = v5;
  v78.origin.y = v6;
  v78.size.width = v7;
  v78.size.height = v8;
  CGRectGetHeight(v78);
  v79.origin.x = v5;
  v79.origin.y = v6;
  v79.size.width = v7;
  v79.size.height = v8;
  CGRectGetWidth(v79);
  sub_247D1F998();
  sub_247D1F508();
  v18 = sub_247D1F998();
  v20 = v19;
  sub_247C2B1BC(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v56, __src, sizeof(v56));
  sub_247C2BD10(__dst, v64, &qword_27EE62D58);
  sub_247C27100(v56, &qword_27EE62D58);
  memcpy(v51, __dst, sizeof(v51));
  v80.origin.x = v5;
  v80.origin.y = v6;
  v80.size.width = v7;
  v80.size.height = v8;
  CGRectGetWidth(v80);
  v81.origin.x = v5;
  v81.origin.y = v6;
  v81.size.width = v7;
  v81.size.height = v8;
  CGRectGetWidth(v81);
  sub_247D1F998();
  sub_247D1F508();
  *&v57 = v24;
  WORD4(v57) = 256;
  *&v58 = v9;
  *(&v58 + 1) = __PAIR64__(v10, v11);
  *&v59 = v12;
  *(&v59 + 1) = v13;
  *&v60 = v28;
  *(&v60 + 1) = v4;
  LOWORD(v61) = 256;
  *(&v61 + 1) = v14;
  *&v62 = v27;
  *(&v62 + 1) = v26;
  *v63 = v25;
  *&v63[24] = v53;
  *&v63[8] = v52;
  *&v63[40] = v54;
  v47[4] = v61;
  v47[5] = v62;
  v47[2] = v59;
  v47[3] = v60;
  v47[0] = v57;
  v47[1] = v58;
  *&v47[9] = *(&v54 + 1);
  v47[7] = *&v63[16];
  v47[8] = *&v63[32];
  v47[6] = *v63;
  *&v64[0] = v18;
  *(&v64[0] + 1) = v20;
  memcpy(&v64[1], v51, 0x120uLL);
  v64[19] = v48;
  v64[20] = v49;
  v64[21] = v50;
  memcpy(&v47[9] + 8, v64, 0x160uLL);
  memcpy(a2, v47, 0x1F8uLL);
  *__src = v18;
  *&__src[8] = v20;
  memcpy(&__src[16], v51, 0x120uLL);
  v66 = v48;
  v67 = v49;
  v68 = v50;
  sub_247C2BD10(&v57, &v30, &qword_27EE62D60);
  sub_247C2BD10(v64, &v30, &qword_27EE62D68);
  sub_247C27100(__src, &qword_27EE62D68);
  v30 = v24;
  v31 = 256;
  v32 = v9;
  v33 = v23;
  v34 = v22;
  v35 = v12;
  v36 = v13;
  v37 = v28;
  v38 = v4;
  v39 = 256;
  v40 = v14;
  v41 = v27;
  v42 = v26;
  v43 = v25;
  v46 = v54;
  v45 = v53;
  v44 = v52;
  sub_247C27100(&v30, &qword_27EE62D60);
}

uint64_t sub_247C2B1BC@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D50);
  sub_247D1F928();
  v36 = v71;
  v35 = v72;
  v39 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D70);
  sub_247D1F928();
  v33 = *(&v71 + 1);
  v34 = v71;
  v32 = v72;
  v3 = objc_opt_self();
  v4 = [v3 systemBlueColor];
  v37 = sub_247D1F8C8();
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v88.origin.x = v5;
  v88.origin.y = v6;
  v88.size.width = v7;
  v88.size.height = v8;
  v30 = CGRectGetWidth(v88) * 0.657142857;
  v89.origin.x = v5;
  v89.origin.y = v6;
  v89.size.width = v7;
  v89.size.height = v8;
  v29 = CGRectGetWidth(v89) * 0.657142857;
  sub_247D1F8F8();
  v28 = *(&v71 + 1);
  sub_247D1F8F8();
  sub_247D1F8F8();
  v27 = v71;
  v26 = *(&v71 + 1);
  sub_247D1F928();
  sub_247D1F928();
  v9 = [v3 systemBlueColor];
  v25 = sub_247D1F8C8();
  v90.origin.x = v5;
  v90.origin.y = v6;
  v90.size.width = v7;
  v90.size.height = v8;
  v10 = CGRectGetWidth(v90) * 0.657142857;
  v91.origin.x = v5;
  v91.origin.y = v6;
  v91.size.width = v7;
  v91.size.height = v8;
  v11 = CGRectGetWidth(v91) * 0.657142857;
  sub_247D1F8F8();
  v12 = v71;
  sub_247D1F8F8();
  v13 = v71;
  v39 = v71;
  v40[0] = v72;
  *&v40[8] = v71;
  *&v40[24] = v72;
  v14 = v71;
  v41 = v71;
  v42 = v71;
  v43 = v71;
  v44 = xmmword_247D23430;
  v45 = xmmword_247D23440;
  *&v47 = 0;
  v46 = v37;
  *(&v47 + 1) = v30;
  v48 = v29;
  __src[4] = v71;
  __src[5] = v71;
  __src[2] = *&v40[16];
  __src[3] = v71;
  __src[6] = xmmword_247D23430;
  __src[7] = xmmword_247D23440;
  __src[0] = v71;
  __src[1] = *v40;
  __src[8] = v37;
  __src[9] = v47;
  v17 = v71;
  v15 = v17 >> 64;
  v16 = v17;
  v49 = v71;
  v18 = v72;
  v50[0] = v72;
  v19 = v71;
  *&v50[8] = v71;
  v21 = v72;
  v20 = *(&v71 + 1);
  *&v50[24] = v72;
  v51 = v71;
  v22 = *(&v71 + 1);
  v52 = v71;
  v23 = *(&v71 + 1);
  v53 = v25;
  v54 = 0;
  *&v55 = 0;
  *(&v55 + 1) = v10;
  v56 = v11;
  *(&__src[16] + 8) = v55;
  *(&__src[13] + 8) = v71;
  *(&__src[12] + 8) = *&v50[16];
  *(&__src[11] + 8) = *v50;
  *(&__src[10] + 8) = v71;
  *&__src[10] = v29;
  *(&__src[17] + 1) = v11;
  *(&__src[15] + 8) = v25;
  *(&__src[14] + 8) = v71;
  memcpy(a2, __src, 0x120uLL);
  v57 = __PAIR128__(v15, v16);
  v58 = v18;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = v12;
  v63 = v22;
  v64 = v13;
  v65 = v23;
  v66 = v25;
  v68 = 0;
  v67 = 0;
  v69 = v10;
  v70 = v11;
  sub_247C29ADC(&v39, &v71);
  sub_247C2BD78(&v49, &v71);
  sub_247C2BDD4(&v57);
  v71 = v36;
  LOBYTE(v72) = v35;
  v73 = v34;
  v74 = v33;
  v75 = v32;
  v76 = v14;
  v77 = v28;
  v78 = v27;
  v79 = v27;
  v81 = xmmword_247D23430;
  v82 = xmmword_247D23440;
  v80 = v26;
  v83 = v37;
  v85 = 0;
  v84 = 0;
  v86 = v30;
  v87 = v29;
  sub_247C2BE28(&v71);
}

uint64_t sub_247C2B71C(uint64_t a1)
{
  v2 = sub_247D1F568();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_247D1F5E8();
}

uint64_t sub_247C2B810()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D50);
  sub_247D1F918();
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_247C2B9D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_247C2BA30(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_247C2BB1C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_247C2BBA0()
{
  result = qword_27EE62D20;
  if (!qword_27EE62D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62CF0);
    sub_247C2BC58();
    sub_247C2A7FC(&qword_27EE62D48, &qword_27EE62CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62D20);
  }

  return result;
}

unint64_t sub_247C2BC58()
{
  result = qword_27EE62D28;
  if (!qword_27EE62D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62D30);
    sub_247C2A7FC(&qword_27EE62D38, &qword_27EE62D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62D28);
  }

  return result;
}

uint64_t sub_247C2BD10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C2BE80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_247C2BEC8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247C2BF50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  sub_247D1F7E8();
  v34 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F908();
  v8 = v22;
  v42.origin.x = v4;
  v42.origin.y = v5;
  v42.size.width = v6;
  v42.size.height = v7;
  CGRectGetWidth(v42);
  sub_247D1F4E8();
  v9 = *(v1 + 80);
  v34 = *(v1 + 64);

  sub_247D1F908();
  v23 = v29;
  v22 = v28;
  LOBYTE(v24) = v30;
  *(&v24 + 1) = 0;
  *v25 = v8;
  *&v25[8] = v31;
  *&v25[24] = v32;
  *&v25[40] = v33;
  *&v26 = v9;
  WORD4(v26) = 256;
  v34 = *v1;
  LOBYTE(v35) = *(v1 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C30);
  MEMORY[0x24C1B7800](&v21, v10);
  v11 = swift_allocObject();
  v12 = *(v1 + 80);
  *(v11 + 80) = *(v1 + 64);
  *(v11 + 96) = v12;
  *(v11 + 112) = *(v1 + 96);
  *(v11 + 128) = *(v1 + 112);
  v13 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v13;
  v14 = *(v1 + 48);
  *(v11 + 48) = *(v1 + 32);
  *(v11 + 64) = v14;
  sub_247C2BD78(v1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D78);
  sub_247C2D9C4();
  sub_247D1F868();

  v38 = *&v25[16];
  v39 = *&v25[32];
  v40 = v26;
  v41 = v27;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = *v25;
  sub_247C27100(&v34, &qword_27EE62D78);
  v15 = swift_allocObject();
  v16 = *(v2 + 80);
  *(v15 + 80) = *(v2 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(v2 + 96);
  *(v15 + 128) = *(v2 + 112);
  v17 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v17;
  v18 = *(v2 + 48);
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62D98) + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_247C2DAB4;
  v19[3] = v15;
  return sub_247C2BD78(v2, &v22);
}

void sub_247C2C26C(uint64_t a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247C2C540();
  v13 = *a1;
  LOBYTE(v14) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C30);
  MEMORY[0x24C1B7800](&aBlock, v2);
  if (aBlock == 1)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    v5 = *(a1 + 80);
    *(v4 + 80) = *(a1 + 64);
    *(v4 + 96) = v5;
    *(v4 + 112) = *(a1 + 96);
    *(v4 + 128) = *(a1 + 112);
    v6 = *(a1 + 16);
    *(v4 + 16) = *a1;
    *(v4 + 32) = v6;
    v7 = *(a1 + 48);
    *(v4 + 48) = *(a1 + 32);
    *(v4 + 64) = v7;
    v18 = sub_247C2DABC;
    v19 = v4;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v16 = sub_247C23D60;
    v17 = &block_descriptor_1;
    v8 = _Block_copy(&aBlock);
    sub_247C2BD78(a1, &v13);

    v9 = [v3 scheduledTimerWithTimeInterval:1 repeats:v8 block:3.6];
    _Block_release(v8);
    v13 = *(a1 + 24);
    v14 = *(a1 + 40);
    aBlock = *(a1 + 24);
    v16 = *(a1 + 40);
    v12 = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CA0);
    sub_247D1F958();
    aBlock = v13;
    v16 = v14;
    MEMORY[0x24C1B7800](&v12, v10);
    v11 = v12;
    [v12 fire];
  }

  else
  {
    sub_247C2C540();
    *&aBlock = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
    sub_247D1F918();
    *&aBlock = 0x3FF0000000000000;
    sub_247D1F918();
  }
}

uint64_t sub_247C2C540()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[5];
  v11 = v3;
  v12 = v2;
  v8 = v2;
  v9 = v1;
  v10 = v3;

  sub_247C29E20(&v12, &v7);
  sub_247C2BD10(&v11, &v7, &qword_27EE62F90);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62CA0);
  MEMORY[0x24C1B7800](&v7);
  if (v7)
  {

    v8 = v2;
    v9 = v1;
    v10 = v3;
    MEMORY[0x24C1B7800](&v7, v4);
    v5 = v7;
    [v7 invalidate];

    v8 = v2;
    v9 = v1;
    v10 = v3;
    v7 = 0;
    sub_247D1F958();
  }

  sub_247C29EEC(&v12);

  return sub_247C27100(&v11, &qword_27EE62F90);
}

uint64_t sub_247C2C65C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_247D1FEC8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_247D1FEA8();
  sub_247C2BD78(a2, v15);
  v7 = sub_247D1FE98();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 64);
  *(v8 + 112) = v10;
  *(v8 + 128) = *(a2 + 96);
  *(v8 + 144) = *(a2 + 112);
  v11 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v11;
  v12 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = v12;
  sub_247C2D2D0(0, 0, v5, &unk_247D236E0, v8);
}

uint64_t sub_247C2C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_247D1F6E8();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_247D20368();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = sub_247D1FEA8();
  v4[25] = sub_247D1FE98();

  return MEMORY[0x2822009F8](sub_247C2C8E0, 0, 0);
}

uint64_t sub_247C2C8E0()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_247C2C9BC;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247C2C9BC()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_247C2CB58;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = sub_247D1FE38();
    v10 = v9;
    v5 = sub_247C2CC4C;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_247C2CB58()
{
  v1 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C2CBD0, v1, v0);
}

uint64_t sub_247C2CBD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C2CC4C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  MEMORY[0x24C1B7880](v5, 1.2, 0.85, 0.25);
  *(swift_task_alloc() + 16) = v4;
  v6 = swift_allocObject();
  v7 = *(v4 + 48);
  v9 = *v4;
  v8 = *(v4 + 16);
  *(v6 + 48) = *(v4 + 32);
  *(v6 + 64) = v7;
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  v11 = *(v4 + 80);
  v10 = *(v4 + 96);
  v12 = *(v4 + 64);
  *(v6 + 128) = *(v4 + 112);
  *(v6 + 96) = v11;
  *(v6 + 112) = v10;
  *(v6 + 80) = v12;
  sub_247C2BD78(v4, (v0 + 2));
  sub_247D1F6D8();
  sub_247D1F538();

  (*(v2 + 8))(v1, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_247C2CDF0()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
}

uint64_t sub_247C2CEC8(uint64_t a1)
{
  v2 = sub_247D1F6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x24C1B7880](isCurrentExecutor, 0.6, 0.85, 0.25);
  sub_247D1F9A8();

  MEMORY[0x28223BE20](v7);
  *(&v13 - 2) = a1;
  v8 = swift_allocObject();
  v9 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = *(a1 + 112);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v11;
  sub_247C2BD78(a1, v14);
  sub_247D1F6D8();
  sub_247D1F538();

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_247C2D114()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
}

uint64_t sub_247C2D1E8()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
  sub_247D1F918();
}

uint64_t sub_247C2D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_247C2BD10(a3, v22 - v9, &qword_27EE62FF0);
  v11 = sub_247D1FEC8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_247C27100(v10, &qword_27EE62FF0);
  }

  else
  {
    sub_247D1FEB8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_247D1FE38();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_247D1FC78() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_247C27100(a3, &qword_27EE62FF0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247C27100(a3, &qword_27EE62FF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_247C2D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_247C2BD10(a3, v24 - v11, &qword_27EE62FF0);
  v13 = sub_247D1FEC8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_247C27100(v12, &qword_27EE62FF0);
  }

  else
  {
    sub_247D1FEB8();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_247D1FE38();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_247D1FC78() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_247C27100(a3, &qword_27EE62FF0);

      return v22;
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

  sub_247C27100(a3, &qword_27EE62FF0);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_247C2D874()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247C2C540();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C28);
  sub_247D1F918();
  sub_247D1F918();
}

unint64_t sub_247C2D9C4()
{
  result = qword_27EE62D80;
  if (!qword_27EE62D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62D78);
    sub_247C2DA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62D80);
  }

  return result;
}

unint64_t sub_247C2DA50()
{
  result = qword_27EE62D88;
  if (!qword_27EE62D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62D88);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247C2DADC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_247C2DB54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247C2793C;

  return sub_247C2C7AC(a1, v4, v5, v1 + 32);
}

uint64_t sub_247C2DC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_247D20358();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_247C2DD04, 0, 0);
}

uint64_t sub_247C2DD04()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_247D20368();
  v5 = sub_247C2E174(&qword_27EE62DA0, MEMORY[0x277D85928]);
  sub_247D20588();
  sub_247C2E174(&qword_27EE62DA8, MEMORY[0x277D858F8]);
  sub_247D20378();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_247C2DE94;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_247C2DE94()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247C2E050, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_247C2E050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_247C2E174(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247C2E1C0()
{
  result = qword_27EE62DB0;
  if (!qword_27EE62DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62D78);
    sub_247C2D9C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62DB0);
  }

  return result;
}

uint64_t sub_247C2E2AC()
{
  v1 = sub_247D1FAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_247C30284(&qword_27EE62DF8, MEMORY[0x277CC5290]);
  result = sub_247D1FD88();
  if (result + 0x4000000000000000 >= 0)
  {
    MEMORY[0x24C1B7B50](2 * result);
    (*(v2 + 16))(v4, v0, v1);
    result = sub_247D1FD78();
    v6 = v13;
    v7 = v14;
    v8 = *(v13 + 16);
    if (v14 == v8)
    {
LABEL_3:

      return v15;
    }

    v9 = v14;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(v6 + 32 + v9);
      if (v11 < 0x10)
      {
        MEMORY[0x24C1B7B80](48, 0xE100000000000000);
      }

      ++v9;
      v12[15] = v11;
      sub_247C302CC();
      v10 = sub_247D1FD48();
      MEMORY[0x24C1B7B80](v10);

      if (v8 == v9)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247C2E4A4()
{
  sub_247C30114(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep, type metadata accessor for FlowResponse.Step.CosmeticCapture);

  v1 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 96);
  v6[7] = v1;
  v6[8] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 128);
  v7 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 144);
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata);
  v6[1] = v4;
  sub_247C30050(v6);
  sub_247C27100(v0 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData, &qword_27EE62DE8);
  return swift_deallocClassInstance();
}

void sub_247C2E5C8()
{
  type metadata accessor for FlowResponse.Step.CosmeticCapture(319);
  if (v0 <= 0x3F)
  {
    sub_247C2E6C8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_247C2E6C8()
{
  if (!qword_27EE62DC8)
  {
    type metadata accessor for RecordedImage.UploadRequestData(255);
    v0 = sub_247D20208();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE62DC8);
    }
  }
}

uint64_t sub_247C2E754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_247C2E82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_247C2E8EC()
{
  result = type metadata accessor for FlowResponse.Step.CosmeticCapture(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247C2E988(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_247D1FAC8();
      sub_247C30284(&qword_27EE62DF0, MEMORY[0x277CC5540]);
      return sub_247D1FA88();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_247C2EB68(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_247C2EB68(v4, v5);
  }

  sub_247D1FAC8();
  sub_247C30284(&qword_27EE62DF0, MEMORY[0x277CC5540]);
  return sub_247D1FA88();
}

uint64_t sub_247C2EB68(uint64_t a1, uint64_t a2)
{
  result = sub_247D1EBE8();
  if (!result || (result = sub_247D1EC08(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_247D1EBF8();
      sub_247D1FAC8();
      sub_247C30284(&qword_27EE62DF0, MEMORY[0x277CC5540]);
      return sub_247D1FA88();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

CGImageRef sub_247C2EC48(CGImage *a1, char a2, double a3, double a4, double a5, double a6)
{
  if (!a2)
  {
    return [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  if (a2 == 1)
  {
    result = CGImageCreateWithImageInRect(a1, *&a3);
    if (!result)
    {
      return result;
    }

    v7 = result;
  }

  else
  {
    result = CGImageCreateWithImageInRect(a1, *&a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    sub_247C31AA4(224.0, 224.0);
    v7 = v9;

    if (!v7)
    {
      return 0;
    }
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  return v10;
}

uint64_t sub_247C2ED04(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_247CE8070();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBEB28]);
  v7 = sub_247D1EE28();
  v8 = [v6 initWithData_];

  v9 = sub_247D1EE28();
  v10 = CGImageSourceCreateWithData(v9, 0);

  if (!v10)
  {
LABEL_9:

    goto LABEL_12;
  }

  v11 = CGImageSourceGetType(v10);
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
  if (v13)
  {
    v14 = v13;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_12;
    }

    sub_247D1FB08();
  }

LABEL_12:
  sub_247C30174(a1, a2);
  return a1;
}

uint64_t sub_247C2F0DC(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  LODWORD(v129) = a6;
  v128 = a4;
  v127 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0) - 8;
  MEMORY[0x28223BE20](v127);
  v120 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_247D1FAC8();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_247D1FAB8();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v119 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_247D1F488();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v130 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v112 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v107 - v28;
  v30 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v113 = (&v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v35 = &v107 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE8);
  MEMORY[0x28223BE20](v36 - 8);
  v123 = (&v107 - v37);
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a8;
  *(v11 + 40) = a9;
  *(v11 + 48) = a10;
  *(v11 + 56) = a11;
  sub_247C2FF20(a3, v11 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep);
  v38 = (v11 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
  *v38 = v128;
  v38[1] = a5;
  *(v11 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_shouldAppendMetadata) = v129;
  v121 = v11;
  v39 = v11 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureMetadata;
  v40 = *(a7 + 16);
  *v39 = *a7;
  *(v39 + 16) = v40;
  v41 = *(a7 + 80);
  *(v39 + 64) = *(a7 + 64);
  *(v39 + 80) = v41;
  v42 = *(a7 + 48);
  *(v39 + 32) = *(a7 + 32);
  *(v39 + 48) = v42;
  *(v39 + 144) = *(a7 + 144);
  v43 = *(a7 + 128);
  *(v39 + 112) = *(a7 + 112);
  *(v39 + 128) = v43;
  *(v39 + 96) = *(a7 + 96);
  v126 = a5;

  v44 = a1;
  v45 = a2;
  v46 = a7;
  v47 = sub_247C2FF84(a7, &v132);
  v122 = MEMORY[0x24C1B88B0](v47);
  v48 = *(v127 + 52);
  v127 = a3;
  v108 = v48;
  sub_247C2FFE0(a3 + v48, v29);
  v49 = *(v31 + 48);
  v50 = v49(v29, 1, v30);
  v111 = v30;
  v110 = v31 + 48;
  v109 = v49;
  if (v50 == 1)
  {
    *v35 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v49(v29, 1, v30) != 1)
    {
      sub_247C27100(v29, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C3021C(v29, v35, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v51 = *v35;
  if (*(*v35 + 16) && (v52 = sub_247CCFDA8(0xD00000000000001BLL, 0x8000000247D2DC10), (v53 & 1) != 0))
  {
    v54 = (*(v51 + 56) + 16 * v52);
    v55 = *v54;
    v56 = v54[1];

    v57 = sub_247CECA84(v55, v56);
    v59 = v58;
    v107 = 0;

    if (v59)
    {
      sub_247C30114(v35, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
      LODWORD(v60) = 0;
    }

    else
    {
      sub_247C30114(v35, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
      if (v57 == 2)
      {
        LODWORD(v60) = 2;
      }

      else
      {
        LODWORD(v60) = v57 == 1;
      }
    }
  }

  else
  {
    sub_247C30114(v35, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    LODWORD(v60) = 0;
    v107 = 0;
  }

  sub_247D1F478();
  v61 = v44;
  v62 = v126;

  v63 = sub_247D1F468();
  v64 = sub_247D20058();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = v62;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v131[0] = v67;
    *v66 = 134219266;
    *(v66 + 4) = v60;
    *(v66 + 12) = 2048;
    *(v66 + 14) = CGImageGetWidth(v61);
    *(v66 + 22) = 2048;
    *(v66 + 24) = CGImageGetHeight(v61);

    *(v66 + 32) = 2080;
    v132 = sub_247D1FF98();
    v133 = v68;
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v69 = sub_247D1FF98();
    v70 = v60;
    MEMORY[0x24C1B7B80](v69);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v134.origin.x = a8;
    v134.origin.y = a9;
    v134.size.width = a10;
    v134.size.height = a11;
    CGRectGetWidth(v134);
    v71 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v71);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v135.origin.x = a8;
    v135.origin.y = a9;
    v135.size.width = a10;
    v135.size.height = a11;
    CGRectGetHeight(v135);
    v72 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v72);

    v73 = sub_247CB03B4(v132, v133, v131);

    *(v66 + 34) = v73;
    *(v66 + 42) = 2080;
    if (v65)
    {
      v74 = v128;
    }

    else
    {
      v74 = 1701736302;
    }

    if (v65)
    {
      v60 = v65;
    }

    else
    {
      v60 = 0xE400000000000000;
    }

    v75 = sub_247CB03B4(v74, v60, v131);
    LOBYTE(v60) = v70;

    *(v66 + 44) = v75;
    *(v66 + 52) = 1024;
    *(v66 + 54) = v129 & 1;
    _os_log_impl(&dword_247C1F000, v63, v64, "RequestData: %ld;%ld;%ld;%s;%s;%{BOOL}d", v66, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v67, -1, -1);
    MEMORY[0x24C1B9080](v66, -1, -1);
  }

  else
  {
  }

  v76 = sub_247C2EC48(v61, v60, a8, a9, a10, a11);
  if (v76 && (v77 = v76, v78 = UIImageHEICRepresentation(v76), v77, v78))
  {
    v79 = sub_247D1EE58();
    v81 = v80;

    v82 = v129 & 1;
    v128 = v79;
    v129 = v46;
    v83 = sub_247C2ED04(v79, v81, v82);
    v85 = v84;
    sub_247C30284(&qword_27EE62DF0, MEMORY[0x277CC5540]);
    v86 = v114;
    v87 = v116;
    sub_247D1FAA8();
    sub_247C30174(v83, v85);
    sub_247C2E988(v83, v85);
    sub_247C301C8(v83, v85);
    sub_247D1FA98();
    (*(v115 + 8))(v86, v87);
    v88 = v127;
    sub_247C2FF20(v127, v120);
    v89 = sub_247C2E2AC();
    v91 = v90;
    v92 = v112;
    sub_247C2FFE0(v88 + v108, v112);
    v93 = v111;
    v94 = v109;
    if (v109(v92, 1, v111) == 1)
    {
      v95 = sub_247CD8184(MEMORY[0x277D84F90]);
      v96 = v113;
      *v113 = v95;
      sub_247D1F188();
      if (v94(v92, 1, v93) != 1)
      {
        sub_247C27100(v92, &qword_27EE62DE0);
      }
    }

    else
    {
      v96 = v113;
      sub_247C3021C(v92, v113, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    }

    v99 = sub_247C57F80(0xD000000000000021, 0x8000000247D2DC50, 0);
    sub_247C301C8(v128, v81);
    sub_247C30114(v96, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    (*(v117 + 8))(v119, v118);
    (*(v124 + 8))(v130, v125);
    v100 = v123;
    *v123 = v83;
    v100[1] = v85;
    v101 = type metadata accessor for RecordedImage.UploadRequestData(0);
    sub_247C3021C(v120, v100 + v101[5], type metadata accessor for FlowResponse.Step.CosmeticCapture);
    v102 = (v100 + v101[6]);
    *v102 = 1819047238;
    v102[1] = 0xE400000000000000;
    v103 = (v100 + v101[7]);
    *v103 = v89;
    v103[1] = v91;
    v104 = v99 & 1;
    v98 = v100;
    *(v100 + v101[8]) = v104;
    (*(*(v101 - 1) + 56))(v100, 0, 1, v101);
    v46 = v129;
  }

  else
  {
    (*(v124 + 8))(v130, v125);
    v97 = type metadata accessor for RecordedImage.UploadRequestData(0);
    v98 = v123;
    (*(*(v97 - 8) + 56))(v123, 1, 1, v97);
  }

  sub_247C30050(v46);
  objc_autoreleasePoolPop(v122);
  v105 = v121;
  sub_247C300A4(v98, v121 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData);
  sub_247C30114(v127, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  return v105;
}

BOOL sub_247C2FE84(CGRect *a1, CGRect *a2)
{
  if (sub_247CFC9E0(a1 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep, a2 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep))
  {
    v4 = *(&a1->origin.y + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
    v5 = *(&a2->origin.y + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
    if (v4)
    {
      if (v5)
      {
        v6 = *(&a1->origin.x + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name) == *(&a2->origin.x + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name) && v4 == v5;
        if (v6 || (sub_247D20538() & 1) != 0)
        {
          return CGRectEqualToRect(a1[1], a2[1]);
        }
      }
    }

    else if (!v5)
    {
      return CGRectEqualToRect(a1[1], a2[1]);
    }
  }

  return 0;
}

uint64_t sub_247C2FF20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C2FFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C300A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C30114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C30174(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247C301C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247C3021C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C30284(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247C302CC()
{
  result = qword_27EE62E00;
  if (!qword_27EE62E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62E00);
  }

  return result;
}

_OWORD *sub_247C30320(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_247C30330(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_247C3038C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v14 = a6 + a6 + CGRectGetWidth(*&a2);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v17 = a7 + a7 + CGRectGetHeight(v18);
  [a1 extent];
  if (CGRectGetWidth(v19) <= v14)
  {
    [a1 extent];
    CGRectGetWidth(v20);
    v15 = 0.0;
  }

  else
  {
    v15 = a2 - a6;
  }

  [a1 extent];
  if (CGRectGetHeight(v21) <= v17)
  {
    [a1 extent];
    CGRectGetHeight(v22);
  }

  return v15;
}

uint64_t sub_247C304BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F488();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_247C30590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_247D1F488();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CoreAnalyticsProvider()
{
  result = qword_27EE62E08;
  if (!qword_27EE62E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C30698()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_247C3071C(void *a1)
{
  v3 = (v1 + *(type metadata accessor for CoreAnalyticsProvider() + 20));
  v4 = v3[5];
  v5 = v3[7];
  v38 = v3[6];
  v39 = v5;
  v6 = v3[9];
  v7 = v3[7];
  v40 = v3[8];
  v41 = v6;
  v8 = v3[1];
  v9 = v3[3];
  v34 = v3[2];
  v35 = v9;
  v10 = v3[5];
  v11 = v3[3];
  v36 = v3[4];
  v37 = v10;
  v12 = v3[1];
  v33[0] = *v3;
  v33[1] = v12;
  v32[4] = v36;
  v32[5] = v4;
  v32[2] = v34;
  v32[3] = v11;
  v13 = v3[9];
  v32[8] = v40;
  v32[9] = v13;
  v32[6] = v38;
  v32[7] = v7;
  v32[0] = v33[0];
  v32[1] = v8;
  sub_247C31784(a1, aBlock);
  sub_247C317E0(v33, aBlock);

  v14 = sub_247C30AD4(a1, v32);
  v16 = v15;
  v18 = v17;

  v19 = sub_247D1F468();
  v20 = sub_247D20058();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;

    v23 = sub_247CB03B4(v14, v16, aBlock);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2080;
    sub_247C3194C(0, &qword_27EE62E18);

    v24 = sub_247D1FB28();
    v26 = v25;

    v27 = sub_247CB03B4(v24, v26, aBlock);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_247C1F000, v19, v20, "Event: %s – Payload: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v22, -1, -1);
    MEMORY[0x24C1B9080](v21, -1, -1);
  }

  v28 = sub_247D1FBB8();
  v29 = swift_allocObject();
  v29[2] = v14;
  v29[3] = v16;
  v29[4] = v18;
  aBlock[4] = sub_247C3187C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247C30A34;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v30);
}

id sub_247C30A34(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_247C3194C(0, &qword_27EE62E18);
    v4 = sub_247D1FAF8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_247C30AD4(void *__src, _OWORD *a2)
{
  v3 = a2[7];
  v93[6] = a2[6];
  v93[7] = v3;
  v4 = a2[9];
  v93[8] = a2[8];
  v93[9] = v4;
  v5 = a2[3];
  v93[2] = a2[2];
  v93[3] = v5;
  v6 = a2[5];
  v93[4] = a2[4];
  v93[5] = v6;
  v7 = a2[1];
  v93[0] = *a2;
  v93[1] = v7;
  memcpy(__dst, __src, sizeof(__dst));
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_247C3189C(__dst, v88);
  sub_247D202C8();

  *&v88[0] = 0xD00000000000001DLL;
  *(&v88[0] + 1) = 0x8000000247D2DCA0;
  v8 = *(__src + 49);
  v9 = *(__src + 50);

  MEMORY[0x24C1B7B80](v8, v9);

  v87 = *&v88[0];
  v10 = sub_247CD83C8(MEMORY[0x277D84F90]);
  v11 = sub_247D1FBB8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v10;
  sub_247CD7584(v11, 0x414E5F544E455645, 0xEA0000000000454DLL, isUniquelyReferenced_nonNull_native);
  v13 = *&v88[0];
  v14 = sub_247D1FBB8();

  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v13;
  sub_247CD7584(v14, 0x59545F544E455645, 0xEE005458545F4550, v15);
  sub_247C318F8(__src);
  v16 = *&v88[0];
  v17 = sub_247D1FBB8();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v16;
  sub_247CD7584(v17, 0xD000000000000018, 0x8000000247D2DCC0, v18);
  v19 = *&v88[0];
  sub_247C3194C(0, &qword_27EE62E20);
  v20 = sub_247D20188();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v19;
  sub_247CD7584(v20, 0xD000000000000013, 0x8000000247D2DCE0, v21);
  v22 = *&v88[0];
  v23 = sub_247D1FBB8();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v22;
  sub_247CD7584(v23, 0x6973736553707061, 0xEC00000044496E6FLL, v24);
  v25 = *&v88[0];
  v26 = sub_247D1FBB8();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v88[0] = v25;
  sub_247CD7584(v26, 0x7365735F32747361, 0xEF64695F6E6F6973, v27);
  sub_247C31994(v93);
  v28 = *&v88[0];
  if (*&__dst[12])
  {

    v29 = sub_247D1FBB8();

    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v29, 0x4D414E5F45474150, 0xE900000000000045, v30);
    v28 = *&v88[0];
  }

  if (*&__dst[11])
  {

    v31 = sub_247D1FBB8();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v31, 0x617461646174656DLL, 0xED0000726F6C6F43, v32);
    v28 = *&v88[0];
  }

  if (*(&__dst[16] + 1))
  {

    v33 = sub_247D1FBB8();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v33, 0x614E6E6565726373, 0xEA0000000000656DLL, v34);
    v28 = *&v88[0];
  }

  if (*(&__dst[22] + 1))
  {

    v35 = sub_247D1FBB8();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v35, 0x63736544746C6974, 0xEF6E6F6974706972, v36);
    v28 = *&v88[0];
  }

  if (*(&__dst[3] + 1))
  {

    v37 = sub_247D1FBB8();

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v37, 0xD000000000000010, 0x8000000247D2DF00, v38);
    v28 = *&v88[0];
  }

  if ((BYTE8(__dst[2]) & 1) == 0)
  {
    *&v88[0] = *&__dst[2];
    sub_247D204D8();
    v39 = sub_247D1FBB8();

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v39, 0x646F43726F727265, 0xE900000000000065, v40);
    v28 = *&v88[0];
  }

  if ((BYTE8(__dst[0]) & 1) == 0)
  {
    v41 = sub_247D1F118();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v88[0] = v28;
    sub_247CD7584(v41, 0x6E6F697461727564, 0xE800000000000000, v42);
    v28 = *&v88[0];
  }

  v88[2] = __dst[7];
  v88[3] = __dst[8];
  v89 = *&__dst[9];
  v88[0] = __dst[5];
  v88[1] = __dst[6];
  if (*&__dst[7])
  {

    v43 = sub_247D1FFC8();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v43, 0xD000000000000013, 0x8000000247D2DE40, v44);
    v45 = v90;
    v46 = sub_247D1FFC8();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v45;
    sub_247CD7584(v46, 0xD000000000000012, 0x8000000247D2DE60, v47);
    v48 = v90;
    v49 = sub_247D1FFC8();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v48;
    sub_247CD7584(v49, 0xD000000000000013, 0x8000000247D2DE80, v50);
    v51 = v90;
    v52 = sub_247D1FBB8();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v51;
    sub_247CD7584(v52, 0xD000000000000017, 0x8000000247D2DEA0, v53);
    v54 = v90;
    v55 = sub_247D1FBB8();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v54;
    sub_247CD7584(v55, 0xD000000000000011, 0x8000000247D2DEC0, v56);
    v57 = v90;
    v58 = sub_247D1FBB8();
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v57;
    sub_247CD7584(v58, 0xD000000000000015, 0x8000000247D2DEE0, v59);
    sub_247C31A3C(v88);
    v28 = v90;
  }

  if (*(&__dst[17] + 1))
  {

    v60 = sub_247D1FBB8();

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v60, 0x644970657473, 0xE600000000000000, v61);
    v28 = v90;
  }

  if (*(&__dst[20] + 1))
  {

    v62 = sub_247D1FBB8();

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v62, 0xD000000000000011, 0x8000000247D2DE20, v63);
    v28 = v90;
  }

  if (*(&__dst[21] + 1))
  {

    v64 = sub_247D1FBB8();

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v64, 0xD000000000000010, 0x8000000247D2DE00, v65);
    v28 = v90;
  }

  if (BYTE8(__dst[12]) != 2)
  {
    v66 = sub_247D1FE28();
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v66, 0xD000000000000010, 0x8000000247D2DDE0, v67);
    v28 = v90;
  }

  if (BYTE9(__dst[12]) != 2)
  {
    v68 = sub_247D1FE28();
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v68, 0xD000000000000011, 0x8000000247D2DDC0, v69);
    v28 = v90;
  }

  if (*(&__dst[13] + 1))
  {

    v70 = sub_247D1FBB8();

    v71 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v70, 0xD000000000000014, 0x8000000247D2DDA0, v71);
    v28 = v90;
  }

  if ((BYTE8(__dst[1]) & 1) == 0)
  {
    v72 = sub_247D1FFC8();
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v72, 0x6E6572727563636FLL, 0xEB00000000736563, v73);
    v28 = v90;
  }

  if (*(&__dst[4] + 1))
  {

    v74 = sub_247D1FBB8();

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v74, 1953393000, 0xE400000000000000, v75);
    v28 = v90;
  }

  if ((__dst[10] & 1) == 0)
  {
    v76 = sub_247D1F118();
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v76, 7894380, 0xE300000000000000, v77);
    v28 = v90;
  }

  if (*(&__dst[18] + 1))
  {

    v78 = sub_247D1FBB8();

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v78, 0xD000000000000018, 0x8000000247D2DD80, v79);
    v28 = v90;
  }

  if (*(&__dst[19] + 1))
  {

    v80 = sub_247D1FBB8();

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v80, 0xD000000000000019, 0x8000000247D2DD60, v81);
    v28 = v90;
  }

  if (*(&__dst[14] + 1))
  {

    v82 = sub_247D1FBB8();

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v82, 0xD000000000000020, 0x8000000247D2DD30, v83);
    v28 = v90;
  }

  if (*(&__dst[15] + 1))
  {

    sub_247C319E8(__dst);
    v84 = sub_247D1FBB8();

    v85 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v28;
    sub_247CD7584(v84, 0xD000000000000021, 0x8000000247D2DD00, v85);
  }

  else
  {
    sub_247C319E8(__dst);
  }

  return v87;
}

uint64_t sub_247C3183C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247C3194C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_247C31A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_247C31AA4(double a1, double a2)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v5 = CGImageGetColorSpace(v2);
  if (!v5)
  {
    v5 = CGColorSpaceCreateWithID();
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v6 = v5;
  BitsPerComponent = CGImageGetBitsPerComponent(v2);
  BitmapInfo = CGImageGetBitmapInfo(v2);
  v9 = __CGBitmapContextCreate(a1, a2, BitsPerComponent, v6, BitmapInfo);
  if (v9)
  {
    v10 = v9;
    CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
    sub_247D1FFE8();
    CGBitmapContextCreateImage(v10);
  }

  else
  {

    v11 = v2;
  }
}

uint64_t sub_247C31C14(double a1, double a2, double a3, double a4)
{
  v5 = *&a2;
  v6 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:a1 Y:a2 Z:a3 W:a4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247D23870;
  *(inited + 32) = sub_247D1FBE8();
  *(inited + 40) = v8;
  *(inited + 72) = sub_247C3194C(0, &qword_27EE62E38);
  *(inited + 48) = v4;
  *(inited + 80) = sub_247D1FBE8();
  *(inited + 88) = v9;
  *(inited + 120) = sub_247C3194C(0, &qword_27EE62E40);
  *(inited + 96) = v6;
  v10 = v4;
  v11 = v6;
  sub_247CD8298(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63FF0);
  swift_arrayDestroy();
  v12 = sub_247D1FBB8();
  v13 = sub_247D1FAF8();

  v14 = [objc_opt_self() filterWithName:v12 withInputParameters:v13];

  if (!v14)
  {

LABEL_9:
    *&result = 0.0;
    return result;
  }

  v15 = [v14 outputImage];
  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = v15;
  v17 = sub_247D1FDF8();
  *(v17 + 16) = 4;
  *(v17 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E48);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_247D23880;
  v19 = *MEMORY[0x277CBF948];
  *(v18 + 32) = *MEMORY[0x277CBF948];
  v20 = *MEMORY[0x277CBEEE8];
  *(v18 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E50);
  *(v18 + 40) = v20;
  v21 = v20;
  v22 = v19;
  sub_247CD84CC(v18);
  swift_setDeallocating();
  sub_247C3218C(v18 + 32);
  v23 = objc_allocWithZone(MEMORY[0x277CBF740]);
  type metadata accessor for CIContextOption(0);
  sub_247C321F4();
  v24 = sub_247D1FAF8();

  v25 = [v23 initWithOptions_];

  *&result = COERCE_DOUBLE([v25 render:v16 toBitmap:v17 + 32 rowBytes:4 bounds:*MEMORY[0x277CBF9C8] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}]);
  v28 = *(v17 + 16);
  if (v28)
  {
    if (v28 != 1)
    {
      if (v28 >= 3)
      {
        LOBYTE(v27) = *(v17 + 32);
        v29 = 0x3FD3333333333333;
        LOBYTE(v29) = *(v17 + 33);
        v30 = v27 / 255.0 * 0.3 + v29 / 255.0 * 0.59;
        LOBYTE(v5) = *(v17 + 34);

        *&result = v30 + v5 / 255.0 * 0.11;
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

CGImageRef sub_247C3203C(void *a1)
{
  [v1 extent];
  result = [a1 createCGImage:v1 fromRect:?];
  if (result)
  {
    v4 = result;
    result = [v1 colorSpace];
    if (result || (result = CGColorSpaceCreateWithID()) != 0)
    {
      v5 = result;
      Width = CGImageGetWidth(v4);
      Height = CGImageGetHeight(v4);
      BitsPerComponent = CGImageGetBitsPerComponent(v4);
      BitmapInfo = CGImageGetBitmapInfo(v4);
      v10 = __CGBitmapContextCreate(Width, Height, BitsPerComponent, v5, BitmapInfo);
      if (v10)
      {
        v11 = v10;
        CGImageGetWidth(v4);
        CGImageGetHeight(v4);
        sub_247D1FFE8();
        Image = CGBitmapContextCreateImage(v11);

        return Image;
      }

      else
      {

        return v4;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_247C3218C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247C321F4()
{
  result = qword_27EE62A38;
  if (!qword_27EE62A38)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62A38);
  }

  return result;
}

uint64_t sub_247C32260()
{
  v1 = v0;
  v2 = _s12AmbientLightVMa(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - v7;
  v9 = *(v0 + *(v6 + 20));
  if (*(v9 + 16))
  {
    v10 = sub_247CCFDA8(0xD000000000000015, 0x8000000247D2DF20);
    if (v11)
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = *v12 == 1702195828 && v14 == 0xE400000000000000;
      if (!v15 && (sub_247D20538() & 1) == 0)
      {
        v41 = v13 == 0x65736C6166 && v14 == 0xE500000000000000;
        if (v41 || (sub_247D20538() & 1) != 0)
        {
          return 15;
        }
      }
    }
  }

  v16 = v1 + *(v2 + 24);
  if (*(v16 + 8))
  {
    return 15;
  }

  v18 = *v16;
  sub_247C5804C(0xD000000000000013, 0x8000000247D2DF40);
  if (v18 >= v19)
  {
    sub_247C5804C(0xD000000000000013, 0x8000000247D2DF60);
    if (v30 >= v18)
    {
      return 15;
    }

    sub_247C35058(v1, v5, _s12AmbientLightVMa);
    v31 = sub_247D1F468();
    v32 = sub_247D20028();
    if (!os_log_type_enabled(v31, v32))
    {

      sub_247C350C0(v5, _s12AmbientLightVMa);
      return 11;
    }

    v33 = swift_slowAlloc();
    *v33 = 134218240;
    *(v33 + 4) = v18;
    *(v33 + 12) = 2048;
    v34 = *&v5[*(v2 + 20)];
    if (*(v34 + 16))
    {
      v35 = sub_247CCFDA8(0xD000000000000013, 0x8000000247D2DF60);
      if (v36)
      {
        v37 = (*(v34 + 56) + 16 * v35);
        v39 = *v37;
        v38 = v37[1];
        v43 = 0;

        if (sub_247C58340(v39, v38))
        {
          v40 = v43;

LABEL_34:
          sub_247C350C0(v5, _s12AmbientLightVMa);
          *(v33 + 14) = v40;
          _os_log_impl(&dword_247C1F000, v31, v32, "Ambient light is too bright. Lux: %f – Maximum Lux: %f", v33, 0x16u);
          MEMORY[0x24C1B9080](v33, -1, -1);

          return 11;
        }
      }
    }

    v40 = 0x7FF0000000000000;
    goto LABEL_34;
  }

  sub_247C35058(v1, v8, _s12AmbientLightVMa);
  v20 = sub_247D1F468();
  v21 = sub_247D20028();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = v18;
    *(v22 + 12) = 2048;
    v23 = *&v8[*(v2 + 20)];
    v24 = 0;
    if (*(v23 + 16))
    {
      v25 = sub_247CCFDA8(0xD000000000000013, 0x8000000247D2DF40);
      if (v26)
      {
        v27 = (*(v23 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
        v43 = 0;

        if (sub_247C58340(v29, v28))
        {
          v24 = v43;
        }
      }
    }

    sub_247C350C0(v8, _s12AmbientLightVMa);
    *(v22 + 14) = v24;
    _os_log_impl(&dword_247C1F000, v20, v21, "Ambient light is too dim. Lux: %f – Minimum Lux: %f", v22, 0x16u);
    MEMORY[0x24C1B9080](v22, -1, -1);

    return 10;
  }

  else
  {

    sub_247C350C0(v8, _s12AmbientLightVMa);
    return 10;
  }
}

uint64_t sub_247C326F8()
{
  v1 = v0;
  v2 = _s13RelativeAngleVMa(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v95 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v95 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v95 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v95 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v95 - v19;
  v21 = (v1 + *(v18 + 24));
  v22 = v21[5];
  v102 = v21[4];
  v103 = v22;
  v104[0] = v21[6];
  *(v104 + 9) = *(v21 + 105);
  v23 = v21[1];
  v98 = *v21;
  v99 = v23;
  v24 = v21[3];
  v100 = v21[2];
  v101 = v24;
  if (sub_247C3503C(&v98) == 1)
  {
    return 15;
  }

  v96 = v5;
  v26 = v98;
  v27 = *&v99;
  sub_247C5804C(0xD000000000000018, 0x8000000247D2DFA0);
  if (v28 >= *(&v26 + 1))
  {
    sub_247C5804C(0xD000000000000018, 0x8000000247D2DFC0);
    if (*(&v26 + 1) >= v39)
    {
      sub_247C5804C(0xD00000000000001ALL, 0x8000000247D2DFE0);
      if (v50 >= v27)
      {
        sub_247C5804C(0xD00000000000001ALL, 0x8000000247D2E000);
        if (v27 >= v61)
        {
          sub_247C5804C(0xD000000000000019, 0x8000000247D2E020);
          if (v72 >= *&v26)
          {
            sub_247C5804C(0xD000000000000019, 0x8000000247D2E040);
            if (*&v26 >= v83)
            {
              return 15;
            }

            v84 = v96;
            sub_247C35058(v1, v96, _s13RelativeAngleVMa);
            v85 = sub_247D1F468();
            v86 = sub_247D20028();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              *v87 = 134218240;
              *(v87 + 4) = v26;
              *(v87 + 12) = 2048;
              v88 = *(v84 + *(v2 + 20));
              v89 = -30.0;
              if (*(v88 + 16))
              {
                v90 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2E040);
                if (v91)
                {
                  v92 = (*(v88 + 56) + 16 * v90);
                  v94 = *v92;
                  v93 = v92[1];
                  v97 = 0.0;

                  if (sub_247C58340(v94, v93))
                  {
                    v89 = v97;
                  }
                }
              }

              sub_247C350C0(v84, _s13RelativeAngleVMa);
              *(v87 + 14) = v89;
              _os_log_impl(&dword_247C1F000, v85, v86, "Rotation hint. Tilt: %f – Min: %f", v87, 0x16u);
              MEMORY[0x24C1B9080](v87, -1, -1);
            }

            else
            {

              sub_247C350C0(v84, _s13RelativeAngleVMa);
            }

            return 5;
          }

          else
          {
            sub_247C35058(v1, v8, _s13RelativeAngleVMa);
            v73 = sub_247D1F468();
            v74 = sub_247D20028();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 134218240;
              *(v75 + 4) = v26;
              *(v75 + 12) = 2048;
              v76 = *&v8[*(v2 + 20)];
              v77 = 30.0;
              if (*(v76 + 16))
              {
                v78 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2E020);
                if (v79)
                {
                  v80 = (*(v76 + 56) + 16 * v78);
                  v82 = *v80;
                  v81 = v80[1];
                  v97 = 0.0;

                  if (sub_247C58340(v82, v81))
                  {
                    v77 = v97;
                  }
                }
              }

              sub_247C350C0(v8, _s13RelativeAngleVMa);
              *(v75 + 14) = v77;
              _os_log_impl(&dword_247C1F000, v73, v74, "Rotation hint. Tilt: %f – Max: %f", v75, 0x16u);
              MEMORY[0x24C1B9080](v75, -1, -1);

              return 4;
            }

            else
            {

              sub_247C350C0(v8, _s13RelativeAngleVMa);
              return 4;
            }
          }
        }

        else
        {
          sub_247C35058(v1, v11, _s13RelativeAngleVMa);
          v62 = sub_247D1F468();
          v63 = sub_247D20028();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 134218240;
            *(v64 + 4) = v27;
            *(v64 + 12) = 2048;
            v65 = *&v11[*(v2 + 20)];
            v66 = -30.0;
            if (*(v65 + 16))
            {
              v67 = sub_247CCFDA8(0xD00000000000001ALL, 0x8000000247D2E000);
              if (v68)
              {
                v69 = (*(v65 + 56) + 16 * v67);
                v71 = *v69;
                v70 = v69[1];
                v97 = 0.0;

                if (sub_247C58340(v71, v70))
                {
                  v66 = v97;
                }
              }
            }

            sub_247C350C0(v11, _s13RelativeAngleVMa);
            *(v64 + 14) = v66;
            _os_log_impl(&dword_247C1F000, v62, v63, "Horizontal tilt hint. Tilt: %f – Min: %f", v64, 0x16u);
            MEMORY[0x24C1B9080](v64, -1, -1);

            return 6;
          }

          else
          {

            sub_247C350C0(v11, _s13RelativeAngleVMa);
            return 6;
          }
        }
      }

      else
      {
        sub_247C35058(v1, v14, _s13RelativeAngleVMa);
        v51 = sub_247D1F468();
        v52 = sub_247D20028();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 134218240;
          *(v53 + 4) = v27;
          *(v53 + 12) = 2048;
          v54 = *&v14[*(v2 + 20)];
          v55 = 30.0;
          if (*(v54 + 16))
          {
            v56 = sub_247CCFDA8(0xD00000000000001ALL, 0x8000000247D2DFE0);
            if (v57)
            {
              v58 = (*(v54 + 56) + 16 * v56);
              v60 = *v58;
              v59 = v58[1];
              v97 = 0.0;

              if (sub_247C58340(v60, v59))
              {
                v55 = v97;
              }
            }
          }

          sub_247C350C0(v14, _s13RelativeAngleVMa);
          *(v53 + 14) = v55;
          _os_log_impl(&dword_247C1F000, v51, v52, "Horizontal tilt hint. Tilt: %f – Max: %f", v53, 0x16u);
          MEMORY[0x24C1B9080](v53, -1, -1);

          return 7;
        }

        else
        {

          sub_247C350C0(v14, _s13RelativeAngleVMa);
          return 7;
        }
      }
    }

    else
    {
      sub_247C35058(v1, v17, _s13RelativeAngleVMa);
      v40 = sub_247D1F468();
      v41 = sub_247D20028();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134218240;
        *(v42 + 4) = *(&v26 + 1);
        *(v42 + 12) = 2048;
        v43 = *&v17[*(v2 + 20)];
        v44 = -30.0;
        if (*(v43 + 16))
        {
          v45 = sub_247CCFDA8(0xD000000000000018, 0x8000000247D2DFC0);
          if (v46)
          {
            v47 = (*(v43 + 56) + 16 * v45);
            v49 = *v47;
            v48 = v47[1];
            v97 = 0.0;

            if (sub_247C58340(v49, v48))
            {
              v44 = v97;
            }
          }
        }

        sub_247C350C0(v17, _s13RelativeAngleVMa);
        *(v42 + 14) = v44;
        _os_log_impl(&dword_247C1F000, v40, v41, "Vertical tilt hint. Tilt: %f – Min: %f", v42, 0x16u);
        MEMORY[0x24C1B9080](v42, -1, -1);

        return 9;
      }

      else
      {

        sub_247C350C0(v17, _s13RelativeAngleVMa);
        return 9;
      }
    }
  }

  else
  {
    sub_247C35058(v1, v20, _s13RelativeAngleVMa);
    v29 = sub_247D1F468();
    v30 = sub_247D20028();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = *(&v26 + 1);
      *(v31 + 12) = 2048;
      v32 = *&v20[*(v2 + 20)];
      v33 = 30.0;
      if (*(v32 + 16))
      {
        v34 = sub_247CCFDA8(0xD000000000000018, 0x8000000247D2DFA0);
        if (v35)
        {
          v36 = (*(v32 + 56) + 16 * v34);
          v38 = *v36;
          v37 = v36[1];
          v97 = 0.0;

          if (sub_247C58340(v38, v37))
          {
            v33 = v97;
          }
        }
      }

      sub_247C350C0(v20, _s13RelativeAngleVMa);
      *(v31 + 14) = v33;
      _os_log_impl(&dword_247C1F000, v29, v30, "Vertical tilt hint. Tilt: %f – Max: %f", v31, 0x16u);
      MEMORY[0x24C1B9080](v31, -1, -1);

      return 8;
    }

    else
    {

      sub_247C350C0(v20, _s13RelativeAngleVMa);
      return 8;
    }
  }
}

uint64_t sub_247C331CC()
{
  v1 = v0;
  v2 = *v0;
  if (*(v2 + 16))
  {
    v3 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2E060);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      v8 = *v5 == 1702195828 && v7 == 0xE400000000000000;
      if (!v8 && (sub_247D20538() & 1) == 0)
      {
        v49 = v6 == 0x65736C6166 && v7 == 0xE500000000000000;
        if (v49 || (sub_247D20538() & 1) != 0)
        {
          return 15;
        }
      }
    }
  }

  v9 = _s16RelativePositionVMa(0);
  v10 = *(v9 + 36);
  v11 = (v1 + *(v9 + 40));
  v13 = *v11;
  v12 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  v16 = *(v1 + v10 + 8);
  v57 = *(v1 + v10);
  v18 = *(v1 + v10 + 16);
  v17 = *(v1 + v10 + 24);
  v61.origin.x = *v11;
  v61.origin.y = v12;
  v61.size.width = v15;
  v61.size.height = v14;
  Height = CGRectGetHeight(v61);
  *v60 = v13;
  *&v60[8] = v12;
  v62.origin.x = v13;
  v20 = v57;
  v62.origin.y = v12;
  *&v60[16] = v15;
  *&v60[24] = v14;
  v62.size.width = v15;
  v62.size.height = v14;
  rect1 = v17;
  if (CGRectGetWidth(v62) >= Height || (v63.origin.x = v57, v63.origin.y = v16, v63.size.width = v18, v63.size.height = v17, v21 = CGRectGetHeight(v63), v64.origin.x = v57, v64.origin.y = v16, v64.size.width = v18, v64.size.height = v17, CGRectGetWidth(v64) >= v21))
  {
    v65.origin.x = *v60;
    v65.origin.y = v12;
    v65.size.width = v15;
    v65.size.height = v14;
    Width = CGRectGetWidth(v65);
    v66.origin.x = *v60;
    v66.origin.y = v12;
    v66.size.width = v15;
    v66.size.height = v14;
    if (CGRectGetHeight(v66) >= Width)
    {
      return 12;
    }

    v67.origin.x = v57;
    v67.origin.y = v16;
    v67.size.width = v18;
    v67.size.height = v17;
    v23 = CGRectGetWidth(v67);
    v68.origin.x = v57;
    v68.origin.y = v16;
    v68.size.width = v18;
    v68.size.height = v17;
    if (CGRectGetHeight(v68) >= v23)
    {
      return 12;
    }
  }

  v69.origin.x = v57;
  v69.origin.y = v16;
  v69.size.width = v18;
  v69.size.height = v17;
  MinX = CGRectGetMinX(v69);
  v70.origin.x = v57;
  v70.origin.y = v16;
  v70.size.width = v18;
  v70.size.height = v17;
  MaxX = CGRectGetMaxX(v70);
  v71.origin.x = *v60;
  v71.origin.y = v12;
  v71.size.width = v15;
  v71.size.height = v14;
  v52 = CGRectGetMinX(v71);
  v72.origin.x = *v60;
  v72.origin.y = v12;
  v72.size.width = v15;
  v72.size.height = v14;
  v51 = CGRectGetMaxX(v72);
  sub_247C5804C(0xD000000000000015, 0x8000000247D2E080);
  v58 = v24;
  sub_247C5804C(0xD000000000000015, 0x8000000247D2E080);
  v55 = v25;
  sub_247C7FB94(v20, v16, v18, v17, *v60, v12, v15, v14);
  v27 = v26;
  v28 = sub_247D1F468();
  v29 = sub_247D20028();
  v30 = v20;
  v31 = v16;
  v32 = v18;
  v33 = v17;
  if (os_log_type_enabled(v28, v29))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v27;
    _os_log_impl(&dword_247C1F000, v28, v29, "%f", v34, 0xCu);
    MEMORY[0x24C1B9080](v34, -1, -1);
  }

  v35 = v20 * v58;
  v36 = v16 * v55;
  v37 = v32 * v58;
  v38 = v33 * v55;

  sub_247C5804C(0xD000000000000025, 0x8000000247D2E0A0);
  if (v39 >= v27)
  {
    v41 = CGRectGetHeight(*v60);
    v73.origin.x = v35;
    v73.origin.y = v36;
    v73.size.width = v32 * v58;
    v73.size.height = v38;
    if (v41 < CGRectGetHeight(v73))
    {
      v42 = CGRectGetWidth(*v60);
      v43 = v35;
      v44 = v42;
      v45 = v43;
      v46 = v36;
      goto LABEL_21;
    }

    return 15;
  }

  if (MinX < v52 && MaxX < v51)
  {
    return 3;
  }

  if (v52 < MinX && v51 < MaxX)
  {
    return 2;
  }

  v74.origin.x = v30;
  v74.origin.y = v31;
  v74.size.width = v32;
  v74.size.height = rect1;
  result = CGRectContainsRect(v74, *v60);
  if (result)
  {
    v50 = CGRectGetHeight(*v60);
    v59 = v35;
    v75.origin.x = v35;
    v75.origin.y = v36;
    v75.size.width = v37;
    v75.size.height = v38;
    if (v50 < CGRectGetHeight(v75))
    {
      v44 = CGRectGetWidth(*v60);
      v46 = v36;
      v45 = v59;
LABEL_21:
      v47 = v37;
      v48 = v38;
      if (v44 < CGRectGetWidth(*&v45))
      {
        return 1;
      }

      return 15;
    }

    return 15;
  }

  return result;
}

uint64_t sub_247C336E0()
{
  v1 = sub_247D1F488();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15ObjectOcclusionVMa(0);
  v6 = *(v0 + *(v5 + 28));
  if (!v6)
  {
    return 15;
  }

  v7 = v0 + *(v5 + 20);
  v8 = sub_247D1F478();
  MEMORY[0x28223BE20](v8);
  v34[-2] = v7;
  v34[-1] = v4;
  v9 = sub_247CED6A0(sub_247C35000, &v34[-4], v6);
  result = (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = *(v9 + 2);
  v13 = MEMORY[0x277D84F90];
LABEL_3:
  v14 = &v9[16 * v11 + 32];
  while (v12 != v11)
  {
    if (v11 >= *(v9 + 2))
    {
      __break(1u);
      return result;
    }

    v15 = (v14 + 16);
    ++v11;
    v16 = *v14;
    v14 += 16;
    if (v16)
    {
      v17 = *(v15 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v13;
      if ((result & 1) == 0)
      {
        result = sub_247CE2344(0, *(v13 + 16) + 1, 1);
        v13 = v34[0];
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_247CE2344((v18 > 1), v19 + 1, 1);
        v13 = v34[0];
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = 1;
      *(v20 + 40) = v17;
      goto LABEL_3;
    }
  }

  MEMORY[0x28223BE20](v21);
  v34[-2] = v0;
  sub_247C631CC(sub_247C3501C, &v34[-4], v13);
  v23 = v22;
  v24 = sub_247D1F468();
  v25 = sub_247D20028();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34[0] = v27;
    *v26 = 136315138;
    type metadata accessor for CGRect(0);
    v29 = MEMORY[0x24C1B7C90](v23, v28);
    v31 = v30;

    v32 = sub_247CB03B4(v29, v31, v34);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_247C1F000, v24, v25, "Found contours: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x24C1B9080](v27, -1, -1);
    MEMORY[0x24C1B9080](v26, -1, -1);
  }

  else
  {
  }

  v33 = *(v13 + 16);

  if (v33)
  {
    return 13;
  }

  else
  {
    return 15;
  }
}

void sub_247C33A9C(uint64_t a1@<X0>, uint64_t a2@<X1>, CGRect *a3@<X8>)
{
  v5 = [*(a1 + 8) normalizedPath];
  BoundingBox = CGPathGetBoundingBox(v5);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;

  v10 = (a2 + *(_s15ObjectOcclusionVMa(0) + 24));
  v11 = *v10;
  if ((*v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10[1];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 < 9.22337204e18)
  {
    v13 = v11;
    v14 = v12;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    *a3 = VNImageRectForNormalizedRect(v16, v13, v14);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_247C33BDC()
{
  v1 = v0;
  v2 = _s24ExcessiveGlareEvaluationVMa(0);
  v3 = v2[5];
  if ((sub_247C57F80(0x65746164696C6176, 0xEE006572616C4773, 1) & 1) == 0)
  {
    v29 = sub_247D1F468();
    v30 = sub_247D20028();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_247C1F000, v29, v30, "Skipping glare validation based on shouldValidateGlare configuration.", v31, 2u);
      MEMORY[0x24C1B9080](v31, -1, -1);
    }

    return 15;
  }

  v4 = *(v0 + v2[6]);
  v5 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVImageBuffer_];
  v6 = *(v1 + v2[7]) * 3.14159265;
  v56.a = 1.0;
  v56.b = 0.0;
  v56.c = 0.0;
  v56.d = 1.0;
  v56.tx = 0.0;
  v56.ty = 0.0;
  CGAffineTransformRotate(&v55, &v56, v6 / 180.0);
  v56 = v55;
  v7 = [v5 imageByApplyingTransform_];

  Width = CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  v10 = Width;
  result = [*(v1 + v2[8]) boundingBox];
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = Height;
  if (Height <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v17 = fmin(v14, 1.0);
  v18 = fmin(v15, 1.0);
  v57 = VNImageRectForNormalizedRect(*&v12, v10, v16);
  x = v57.origin.x;
  y = v57.origin.y;
  v21 = v57.size.width;
  v22 = v57.size.height;
  v23 = [v7 imageByCroppingToRect_];
  [v23 extent];
  if (v25 == 0.0 && v24 == 0.0)
  {
    v26 = sub_247D1F468();
    v27 = sub_247D20038();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_247C1F000, v26, v27, "Invalid region of interest.", v28, 2u);
      MEMORY[0x24C1B9080](v28, -1, -1);
    }

    return 15;
  }

  v32 = [v7 imageByCroppingToRect_];
  sub_247C5804C(0x7268546572616C67uLL, 0xEE00646C6F687365);
  v34 = *(v1 + v3);
  if (!*(v34 + 16))
  {
    v44 = 3;
    v45 = 3;
    goto LABEL_34;
  }

  v35 = v33;
  v36 = sub_247CCFDA8(0x6C65436572616C67, 0xED000073776F526CLL);
  if (v37)
  {
    v38 = (*(v34 + 56) + 16 * v36);
    v39 = *v38;
    v40 = v38[1];

    v41 = sub_247CECA84(v39, v40);
    v43 = v42;

    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = v41;
    }

    if (!*(v34 + 16))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v44 = 3;
    if (!*(v34 + 16))
    {
      goto LABEL_32;
    }
  }

  v46 = sub_247CCFDA8(0xD000000000000010, 0x8000000247D2DF80);
  if (v47)
  {
    v48 = (*(v34 + 56) + 16 * v46);
    v49 = *v48;
    v50 = v48[1];

    v51 = sub_247CECA84(v49, v50);
    v53 = v52;

    if (v53)
    {
      v45 = 3;
    }

    else
    {
      v45 = v51;
    }

    goto LABEL_33;
  }

LABEL_32:
  v45 = 3;
LABEL_33:
  v33 = v35;
LABEL_34:
  v54 = sub_247CCB094(v32, v44, v45, v33);

  if (v54)
  {
    return 14;
  }

  else
  {
    return 15;
  }
}

uint64_t sub_247C34204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F488();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_247C34324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_247D1F488();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_247C3444C()
{
  sub_247D1F488();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CVBuffer(319);
      if (v2 <= 0x3F)
      {
        sub_247C3194C(319, &qword_27EE62E88);
        if (v3 <= 0x3F)
        {
          sub_247C3194C(319, &qword_27EE62E90);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_247C34554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F488();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_247C34680(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_247D1F488();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_247C347A8()
{
  sub_247D1F488();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_247C3485C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_247C3485C()
{
  if (!qword_27EE62EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE62EB0);
    v0 = sub_247D20208();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE62EA8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F488();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_247D1F488();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_247C34B08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_247D1F488();
  if (v5 <= 0x3F)
  {
    type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(319);
    if (v6 <= 0x3F)
    {
      sub_247C34BBC(319, a4);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_247C34BBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_247D20208();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_247C34C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_247D1F488();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_247C34D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_247D1F488();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_247C34E98()
{
  type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CVBuffer(319);
    if (v1 <= 0x3F)
    {
      sub_247C3194C(319, &qword_27EE62E88);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIInterfaceOrientation(319);
          if (v4 <= 0x3F)
          {
            sub_247D1F488();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_247C34F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247C3503C(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C35058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C350C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment17PeerDeviceCommandV7ReceiveO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_247C3515C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C351B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_247C35204(void *result, int a2)
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

uint64_t sub_247C35234(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000013;
    v5 = 0x6574616974696E69;
    if (a1 == 8)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000011;
    if (a1 == 5)
    {
      v6 = 0x75737349776F6873;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x4C6E6F6973736573;
    v2 = 0xD000000000000010;
    if (a1 != 2)
    {
      v2 = 0xD000000000000012;
    }

    if (a1)
    {
      v1 = 0x6B726144776F6873;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_247C353BC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  return sub_247D1365C(v2, v3);
}

uint64_t sub_247C35440()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x7365536E69676562;
    }

    if (v1 == 1)
    {
      return 0x7365537972746572;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0xD000000000000010;
      case 3:
        return 0x4365726170657270;
      case 4:
        return 0xD000000000000013;
    }
  }

  return 0x7441656369766564;
}

uint64_t sub_247C35528(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_247C35234(*a1);
  v5 = v4;
  if (v3 == sub_247C35234(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_247D20538();
  }

  return v8 & 1;
}

uint64_t sub_247C355B0()
{
  v1 = *v0;
  sub_247D20618();
  sub_247C35234(v1);
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247C35614()
{
  sub_247C35234(*v0);
  sub_247D1FCB8();
}

uint64_t sub_247C35668()
{
  v1 = *v0;
  sub_247D20618();
  sub_247C35234(v1);
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247C356C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_247C358CC();
  *a1 = result;
  return result;
}

uint64_t sub_247C356F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247C35234(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PeerDeviceCommand.Send(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PeerDeviceCommand.Send(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247C35878()
{
  result = qword_27EE62EE8;
  if (!qword_27EE62EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62EE8);
  }

  return result;
}

uint64_t sub_247C358CC()
{
  v0 = sub_247D20408();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_247C35918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  v4[11] = swift_task_alloc();
  v5 = sub_247D1EB88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_247D1F488();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C35A70, 0, 0);
}

uint64_t sub_247C35A70()
{
  sub_247CCB524(v0[7]);
  sub_247C36700();
  sub_247D206B8();
  sub_247D1F478();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_247C35B58;
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];

  return MEMORY[0x28211ED18](v4, v3, v2, 0);
}

uint64_t sub_247C35B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = v3;
  v5[19] = a3;
  v5[20] = v3;

  if (v3)
  {
    v6 = sub_247C36234;
  }

  else
  {
    v6 = sub_247C35C78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_247C35C78()
{
  v71 = v0;
  v1 = v0[19];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v1;
  if (v2)
  {
    v4 = [v2 statusCode];
    v5 = v0[19];
    if ((v4 - 300) > 0xFFFFFFFFFFFFFF9BLL)
    {
      (*(v0[13] + 16))(v0[14], v0[7], v0[12]);
      v34 = v5;
      v35 = sub_247D1F468();
      v36 = sub_247D20058();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v0[19];
      if (v37)
      {
        v39 = v0[11];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v70 = v41;
        *v40 = 134218242;
        *(v40 + 4) = [v2 statusCode];

        *(v40 + 12) = 2082;
        sub_247D1EB48();
        v42 = sub_247D1EE08();
        v43 = *(v42 - 8);
        v44 = (*(v43 + 48))(v39, 1, v42);
        v45 = v0[11];
        if (v44 == 1)
        {
          sub_247C3674C(v0[11]);
          v46 = 0;
          v47 = 0xE000000000000000;
        }

        else
        {
          v46 = sub_247D1ED98();
          v47 = v57;
          (*(v43 + 8))(v45, v42);
        }

        v58 = v0[19];
        v59 = v0[16];
        v69 = v0[17];
        v60 = v0[15];
        (*(v0[13] + 8))(v0[14], v0[12]);
        v61 = sub_247CB03B4(v46, v47, &v70);

        *(v40 + 14) = v61;
        _os_log_impl(&dword_247C1F000, v35, v36, "Upload complete with status code: %ld for %{public}s", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x24C1B9080](v41, -1, -1);
        MEMORY[0x24C1B9080](v40, -1, -1);

        (*(v59 + 8))(v69, v60);
      }

      else
      {
        v52 = v0[16];
        v51 = v0[17];
        v54 = v0[14];
        v53 = v0[15];
        v55 = v0[12];
        v56 = v0[13];

        (*(v56 + 8))(v54, v55);
        (*(v52 + 8))(v51, v53);
      }

      goto LABEL_16;
    }

    v6 = v5;
    v7 = sub_247D1F468();
    v8 = sub_247D20038();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[19];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[15];
    if (v9)
    {
      v68 = v0[17];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v70 = v15;
      *v14 = 136315138;
      v67 = v13;
      v16 = v10;
      v17 = [v16 description];
      v18 = sub_247D1FBE8();
      v20 = v19;

      v21 = sub_247CB03B4(v18, v20, &v70);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_247C1F000, v7, v8, "Upload failure: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x24C1B9080](v15, -1, -1);
      MEMORY[0x24C1B9080](v14, -1, -1);

LABEL_7:
      (*(v11 + 8))(v68, v67);
      goto LABEL_16;
    }

    (*(v11 + 8))(v12, v13);
  }

  else
  {
    v22 = v0[19];
    v23 = sub_247D1F468();
    v24 = sub_247D20038();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[19];
      v11 = v0[16];
      v67 = v0[15];
      v68 = v0[17];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v70 = v27;
      *v26 = 136315138;
      v28 = v25;
      v29 = [v28 description];
      v30 = sub_247D1FBE8();
      v32 = v31;

      v33 = sub_247CB03B4(v30, v32, &v70);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_247C1F000, v23, v24, "Upload failure. Expected an HTTPURLResponse instead of: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x24C1B9080](v27, -1, -1);
      MEMORY[0x24C1B9080](v26, -1, -1);

      goto LABEL_7;
    }

    v49 = v0[16];
    v48 = v0[17];
    v50 = v0[15];

    (*(v49 + 8))(v48, v50);
  }

LABEL_16:
  v63 = v0[3];
  v62 = v0[4];

  v64 = v0[1];
  v65 = v0[19];

  return v64(v63, v62, v65);
}

uint64_t sub_247C36234()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247C362D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C36380;

  return sub_247C35918(a1, a2, a3);
}

uint64_t sub_247C36380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_247C364AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_247C365EC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_247C365EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

unint64_t sub_247C36700()
{
  result = qword_27EE62EF0;
  if (!qword_27EE62EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE62EF0);
  }

  return result;
}

uint64_t sub_247C3674C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_247C367B4()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController____lazy_storage___loadingIndicator;
  v2 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController____lazy_storage___loadingIndicator];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_247C36824(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_247C3E9A4(v4);
  }

  sub_247C3E9B4(v2);
  return v3;
}

id sub_247C36824(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v3 = [a1 contentView];
  v4 = v2;
  [v3 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 centerXAnchor];

  result = [a1 view];
  if (result)
  {
    v7 = result;
    v8 = [result centerXAnchor];

    v9 = [v5 constraintEqualToAnchor_];
    [v9 setActive_];

    v10 = [v4 centerYAnchor];
    result = [a1 view];
    if (result)
    {
      v11 = result;
      v12 = [result centerYAnchor];

      v13 = [v10 constraintEqualToAnchor_];
      [v13 setActive_];

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247C36A08@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowResponse.Step.Action(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_actions);
  v9 = *(v8 + 16);
  if (v9)
  {
    v14 = v5;
    v15 = a1;
    result = sub_247D1FEA8();
    v11 = 0;
    v12 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v11 < *(v8 + 16))
    {
      sub_247C3EFD8(v12 + *(v4 + 72) * v11, v7, type metadata accessor for FlowResponse.Step.Action);
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (!*(v7 + 4))
      {
        a1 = v15;
        sub_247C3F0A0(v7, v15, type metadata accessor for FlowResponse.Step.Action);
        v13 = 0;
        goto LABEL_11;
      }

      ++v11;
      result = sub_247C3F040(v7, type metadata accessor for FlowResponse.Step.Action);
      if (v9 == v11)
      {
        v13 = 1;
        a1 = v15;
LABEL_11:
        v5 = v14;
        return (*(v4 + 56))(a1, v13, 1, v5);
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v5);
  }

  return result;
}

uint64_t sub_247C36C10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowResponse.Step.Action(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_actions);
  v9 = *(v8 + 16);
  if (v9)
  {
    v14 = v5;
    v15 = a1;
    result = sub_247D1FEA8();
    v11 = 0;
    v12 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v11 < *(v8 + 16))
    {
      sub_247C3EFD8(v12 + *(v4 + 72) * v11, v7, type metadata accessor for FlowResponse.Step.Action);
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v7 + 4) == 1)
      {
        a1 = v15;
        sub_247C3F0A0(v7, v15, type metadata accessor for FlowResponse.Step.Action);
        v13 = 0;
        goto LABEL_11;
      }

      ++v11;
      result = sub_247C3F040(v7, type metadata accessor for FlowResponse.Step.Action);
      if (v9 == v11)
      {
        v13 = 1;
        a1 = v15;
LABEL_11:
        v5 = v14;
        return (*(v4 + 56))(a1, v13, 1, v5);
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v5);
  }

  return result;
}

uint64_t sub_247C36E1C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowResponse.Step.Action(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_actions);
  v9 = *(v8 + 16);
  if (v9)
  {
    v15 = v5;
    v16 = a1;
    result = sub_247D1FEA8();
    v11 = 0;
    v12 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v11 < *(v8 + 16))
    {
      sub_247C3EFD8(v12 + *(v4 + 72) * v11, v7, type metadata accessor for FlowResponse.Step.Action);
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = *(v7 + 4);
      if (v7[40] == 1)
      {
        if (v13 >= 2)
        {
LABEL_10:
          a1 = v16;
          sub_247C3F0A0(v7, v16, type metadata accessor for FlowResponse.Step.Action);
          v14 = 0;
LABEL_13:
          v5 = v15;
          return (*(v4 + 56))(a1, v14, 1, v5);
        }
      }

      else if (v13 == 2)
      {
        goto LABEL_10;
      }

      ++v11;
      result = sub_247C3F040(v7, type metadata accessor for FlowResponse.Step.Action);
      if (v9 == v11)
      {
        v14 = 1;
        a1 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 1;
    return (*(v4 + 56))(a1, v14, 1, v5);
  }

  return result;
}

uint64_t sub_247C37040(void (*a1)(uint64_t))
{
  v2 = sub_247D1FB98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FlowResponse.Step.Action(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_247C27100(v8, &qword_27EE62FA8);
    return 0;
  }

  else
  {
    sub_247C3F0A0(v8, v13, type metadata accessor for FlowResponse.Step.Action);

    sub_247D1FBA8();
    v15 = sub_247C88264(v5);
    (*(v3 + 8))(v5, v2);
    sub_247C3F040(v13, type metadata accessor for FlowResponse.Step.Action);
    return v15;
  }
}

uint64_t sub_247C372A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v86 = type metadata accessor for FlowResponse.Step.Action(0);
  v87 = *(v86 - 8);
  v3 = MEMORY[0x28223BE20](v86);
  v83 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[1] = v4;
  MEMORY[0x28223BE20](v3);
  v84 = v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v98 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = v82 - v9;
  v10 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_247D1FB98();
  v103 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
  v102 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v85 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v82 - v20;
  v110.receiver = v1;
  v110.super_class = ObjectType;
  objc_msgSendSuper2(&v110, sel_viewDidLoad);
  v106 = v1;
  v22 = [v1 navigationController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 navigationBar];

    v25 = [objc_opt_self() tintColor];
    [v24 setTintColor_];
  }

  v26 = v106;
  sub_247C36A08(v21);
  v27 = sub_247C37040(sub_247C36A08);
  v29 = v28;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_247C380F4(v21, v27, v29, 1, sub_247C3F2A8, v30);

  sub_247C27100(v21, &qword_27EE62FA8);

  sub_247C36C10(v21);
  v31 = sub_247C37040(sub_247C36C10);
  v33 = v32;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_247C380F4(v21, v31, v33, 0, sub_247C3E4FC, v34);

  sub_247C27100(v21, &qword_27EE62FA8);

  if (*&v26[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_caption + 8])
  {

    v35 = [v106 buttonTray];
    v36 = sub_247D1FBB8();

    [v35 setCaptionText_];
  }

  v37 = *&v106[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_bulletedListItems];
  if (v37)
  {
    v38 = *(v37 + 16);
    if (v38)
    {
      v94 = sub_247D1FEA8();
      v93 = *(v14 + 36);
      v92 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState;
      v39 = v37 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v88 = *(v102 + 72);
      v91 = (v103 + 8);
      v90 = (v104 + 48);
      v89 = (v104 + 56);
      v82[0] = v37;

      v40 = v39;
      v104 = v38 - 1;
      v95 = v12;
      while (1)
      {
        v100 = v40;
        sub_247C3EFD8(v40, v16, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
        v103 = sub_247D1FE98();
        sub_247D1FE38();
        isCurrentExecutor = swift_task_isCurrentExecutor();
        v42 = v99;
        if ((isCurrentExecutor & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v43 = v16;
        v44 = v96;
        sub_247D1FBA8();
        v101 = sub_247C88264(v44);
        v102 = v45;
        v46 = *v91;
        v47 = v97;
        (*v91)(v44, v97);

        sub_247D1FBA8();
        sub_247C88264(v44);
        v48 = v44;
        v16 = v43;
        v46(v48, v47);
        sub_247C2BD10(&v43[v93], v42, &qword_27EE62F60);
        v49 = *v90;
        v50 = v105;
        if ((*v90)(v42, 1, v105) == 1)
        {
          v51 = v95;
          *v95 = 0;
          v51[1] = 0xE000000000000000;
          v52 = *(v50 + 20);
          v53 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
          v54 = v51 + v52;
          v55 = v99;
          (*(*(v53 - 8) + 56))(v54, 1, 1, v53);
          *(v51 + *(v50 + 24)) = 0;
          sub_247D1F188();
          v56 = v50;
          v57 = v51;
          if (v49(v55, 1, v56) != 1)
          {
            sub_247C27100(v55, &qword_27EE62F60);
          }
        }

        else
        {
          v57 = v95;
          sub_247C3F0A0(v42, v95, type metadata accessor for FlowResponse.SFSymbolConfiguration);
        }

        v58 = v98;
        sub_247C3EFD8(v57, v98, type metadata accessor for FlowResponse.SFSymbolConfiguration);
        (*v89)(v58, 0, 1, v105);
        v59 = sub_247CB7A2C(v58);
        sub_247C27100(v58, &qword_27EE62F60);
        v60 = sub_247D1FBB8();

        v61 = sub_247D1FBB8();

        if (v59)
        {
          [v106 addBulletedListItemWithTitle:v60 description:v61 image:v59];
        }

        else
        {
          v62 = sub_247D1FBB8();
          [v106 addBulletedListItemWithTitle:v60 description:v61 symbolName:v62];
        }

        sub_247C3F040(v57, type metadata accessor for FlowResponse.SFSymbolConfiguration);

        sub_247C3F040(v16, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
        if (!v104)
        {
          break;
        }

        --v104;
        v40 = v100 + v88;
      }
    }
  }

  v109 = MEMORY[0x277D84F90];
  v63 = v85;
  sub_247C36E1C(v85);
  v64 = v87;
  if ((*(v87 + 48))(v63, 1, v86) == 1)
  {
    sub_247C27100(v63, &qword_27EE62FA8);
  }

  else
  {
    v65 = v84;
    sub_247C3F0A0(v63, v84, type metadata accessor for FlowResponse.Step.Action);
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = v83;
    sub_247C3EFD8(v65, v83, type metadata accessor for FlowResponse.Step.Action);
    v68 = (*(v64 + 80) + 24) & ~*(v64 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    sub_247C3F0A0(v67, v69 + v68, type metadata accessor for FlowResponse.Step.Action);

    sub_247CC5F14(1, sub_247C3E660, v69);

    sub_247C3F040(v65, type metadata accessor for FlowResponse.Step.Action);
  }

  v70 = &v106[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState];
  v71 = _s5StateVMa();
  sub_247C2BD10(&v70[*(v71 + 48)], v107, &qword_27EE62FB0);
  sub_247C3D044(v107, v108);
  v72 = *__swift_project_boxed_opaque_existential_1(v108, v108[3]);
  LOBYTE(v70) = sub_247C7A980();

  __swift_destroy_boxed_opaque_existential_1(v108);
  if (v70)
  {
    sub_247C3194C(0, &qword_27EE62FB8);
    v73 = sub_247D20068();
    sub_247C3194C(0, &unk_27EE62FC0);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v73;
    v76 = v73;
    v77 = sub_247D20198();
    [v76 setPrimaryAction_];

    v78 = v76;
    MEMORY[0x24C1B7C60]();
    if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_247D1FDE8();
    }

    sub_247D1FE08();
  }

  v79 = [v106 navigationItem];
  sub_247C3194C(0, &qword_27EE62FB8);
  v80 = sub_247D1FDB8();

  [v79 setRightBarButtonItems_];

  return sub_247C398C8();
}

uint64_t sub_247C380F4(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v62 = a5;
  v59 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63018);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v58 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v57 = v54 - v15;
  MEMORY[0x28223BE20](v14);
  v55 = v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v54 - v18;
  v20 = type metadata accessor for FlowResponse.Step.Action(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v61 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v54 - v24;
  sub_247C2BD10(a1, v19, &qword_27EE62FA8);
  v60 = v21;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_247C27100(v19, &qword_27EE62FA8);
  }

  sub_247C3F0A0(v19, v25, type metadata accessor for FlowResponse.Step.Action);
  if (a3)
  {
    if (a4)
    {
      v27 = &selRef_boldButton;
    }

    else
    {
      v27 = &selRef_linkButton;
    }

    v28 = [objc_opt_self() *v27];
    v29 = sub_247D1FBB8();
    [v28 setTitle:v29 forState:0];

    v30 = *(v25 + 6);
    v31 = *(v25 + 7);
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v54[0] = *(v25 + 7);
      v54[1] = v30;
      v33 = [objc_opt_self() preferredFontForTextStyle_];
      v34 = objc_opt_self();
      v35 = [v34 configurationWithFont_];

      v36 = [v34 configurationWithWeight_];
      v59 = [v35 configurationByApplyingConfiguration_];

      if (a4)
      {

        v37 = v57;
      }

      else
      {
        v38 = v55;
        sub_247D201E8();
        v39 = sub_247D201D8();
        v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
        v37 = v57;
        if (v40)
        {
          sub_247C2BD10(v38, v57, &qword_27EE63018);
          sub_247D201F8();

          sub_247C27100(v38, &qword_27EE63018);
        }

        else
        {
          sub_247D201A8();
          sub_247D201F8();
        }
      }

      v41 = v56;
      sub_247D201E8();
      v42 = sub_247D201D8();
      v43 = *(*(v42 - 8) + 48);
      if (v43(v41, 1, v42))
      {
        sub_247C2BD10(v41, v37, &qword_27EE63018);
        sub_247D201F8();

        sub_247C27100(v41, &qword_27EE63018);
      }

      else
      {
        sub_247D201B8();
        sub_247D201F8();
      }

      v44 = v58;
      sub_247D201E8();
      if (v43(v44, 1, v42))
      {
        sub_247C2BD10(v44, v37, &qword_27EE63018);
        sub_247D201F8();

        sub_247C27100(v44, &qword_27EE63018);
      }

      else
      {
        v45 = v59;
        v46 = sub_247D1FBB8();
        v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

        sub_247D201C8();
        sub_247D201F8();
      }
    }

    else
    {
    }

    sub_247C3194C(0, &unk_27EE62FC0);
    v48 = v61;
    sub_247C3EFD8(v25, v61, type metadata accessor for FlowResponse.Step.Action);
    v49 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v50 = swift_allocObject();
    v51 = v63;
    *(v50 + 16) = v62;
    *(v50 + 24) = v51;
    sub_247C3F0A0(v48, v50 + v49, type metadata accessor for FlowResponse.Step.Action);

    v52 = sub_247D20198();
    [v28 addAction:v52 forControlEvents:64];

    v53 = [v64 buttonTray];
    [v53 addButton_];
  }

  return sub_247C3F040(v25, type metadata accessor for FlowResponse.Step.Action);
}

void sub_247C38884(uint64_t a1, void *a2)
{
  v4 = _s5StateVMa();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowResponse.Step.Action(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    sub_247C3EFD8(a1, v9, type metadata accessor for FlowResponse.Step.Action);
    v12 = v11;
    if ([a2 sender])
    {
      sub_247D20238();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v15[0] = v16;
    v15[1] = v17;
    if (*(&v17 + 1))
    {
      sub_247C3194C(0, &qword_27EE62FF8);
      if (swift_dynamicCast())
      {
        v13 = v14[1];
LABEL_12:
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        sub_247C3EFD8(v12 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState, v6, _s5StateVMa);
        sub_247C58438(v6);

        swift_unknownObjectRelease();
        sub_247C3F040(v6, _s5StateVMa);
        sub_247C3F040(v9, type metadata accessor for FlowResponse.Step.Action);
        return;
      }
    }

    else
    {
      sub_247C27100(v15, &unk_27EE63300);
    }

    v13 = 0;
    goto LABEL_12;
  }
}

void sub_247C38B08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _s5StateVMa();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowResponse.Step.Action(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_247C3EFD8(a3, v10, type metadata accessor for FlowResponse.Step.Action);
      v13 = v12;
      if ([a1 sender])
      {
        sub_247D20238();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      v15[0] = v16;
      v15[1] = v17;
      if (*(&v17 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE62FD0);
        swift_dynamicCast();
      }

      else
      {
        sub_247C27100(v15, &unk_27EE63300);
      }

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_247C3EFD8(v13 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState, v7, _s5StateVMa);
      sub_247C58438(v7);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_247C3F040(v7, _s5StateVMa);
      sub_247C3F040(v10, type metadata accessor for FlowResponse.Step.Action);
    }

    else
    {
    }
  }
}