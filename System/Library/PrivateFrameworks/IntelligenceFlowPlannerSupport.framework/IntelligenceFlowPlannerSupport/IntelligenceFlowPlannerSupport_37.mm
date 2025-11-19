uint64_t sub_22C18EA08()
{
  result = *(v0 - 120);
  v2 = *(*(v0 - 128) + 8);
  v3 = *(v0 - 112);
  return result;
}

uint64_t sub_22C18EA60()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t sub_22C18F078()
{
  *(v1 - 176) = v0;
  result = *(v1 - 88) + *(*(v1 - 168) + 20);
  *(v1 - 184) = *(*(v1 - 144) + 32);
  return result;
}

void sub_22C18F0C8()
{
  *(v0 - 96) = 91;
  *(v0 - 88) = 0xE100000000000000;

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22C18F100()
{
  *(v2 - 72) = v1;
  *(v2 - 120) = v0;

  return sub_22C273ED4();
}

uint64_t sub_22C18F120()
{

  return sub_22C272EE4();
}

uint64_t sub_22C18F14C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22C18F16C()
{
  result = *(v0 - 152);
  v2 = *(*(v0 - 160) + 8);
  return result;
}

uint64_t sub_22C18F1B4()
{
  v1 = *(*(v0 - 184) + 8);
  result = *(v0 - 168);
  v3 = *(v0 - 160);
  return result;
}

uint64_t sub_22C18F204@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

__n128 sub_22C18F234@<Q0>(unint64_t a1@<X8>)
{
  v3->n128_u64[0] = a1;
  v3->n128_u64[1] = v1;
  result = *(v4 - 104);
  v3[1] = result;
  v3[2].n128_u8[0] = v2;
  return result;
}

void sub_22C18F258()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 128);
  v2 = *(v1 - 120);
  *(v1 - 65) = 0;
}

uint64_t sub_22C18F2C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *(v2 + a1);
  v5 = *(v2 + a1 + 8);
  v7 = *(v2 + a1 + 16);
  v6 = *(v2 + a1 + 24);
  v8 = *(v3 + 32);
  v9 = (v1 + a1);
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v14 = *(v9 + 32);
  return result;
}

__n128 sub_22C18F2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v9 = a9;
  v9[1].n128_u64[0] = v10;
  v9[1].n128_u64[1] = v11;
  v9[2].n128_u8[0] = v12;
  return result;
}

uint64_t sub_22C18F320@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_22C18F350()
{
  v1 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v1;
}

uint64_t sub_22C18F380@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_22C18F3BC()
{

  return sub_22C274014();
}

void sub_22C18F3D8()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22C18F40C()
{
  v2 = *(v0 + 616);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C18F428()
{
  v2 = *(v0 - 240);

  return sub_22C273FA4();
}

uint64_t sub_22C18F440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C171FA8(a1, v3);
}

uint64_t sub_22C18F470@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  v5 = *(v3 - 256);
  *v5 = a2;
  *(v5 + 16) = a1;
  *(v5 + 17) = v2;
  *(v5 + 24) = *(v4 - 104);
  return v5;
}

void sub_22C18F490(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *(v2 - 104) = v4;
  *(v2 - 96) = v5;
  *(v2 - 88) = v6;
  *(v2 - 80) = v7;
  *(v2 - 72) = v3;
}

uint64_t sub_22C18F4D4()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

uint64_t sub_22C18F4E0()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

void sub_22C18F504()
{

  JUMPOUT(0x2318AB8D0);
}

void sub_22C18F534()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22C18F564()
{
  v5 = *(v3 - 88);
  *v0 = v2;
  v0[1] = v1;
  v0[2] = v5;
}

uint64_t sub_22C18F584()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t _s30IntelligenceFlowPlannerSupport21RequestPrescribedPlanO11DisplayToolV5query10isExplicit7partnerAESS_SbSSSgtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_22C18F5E0()
{

  return sub_22C273FD4();
}

uint64_t sub_22C18F650()
{
  v2 = *(v0 - 152);
  v4 = *(v0 - 112);
  v3 = *(v0 - 104);
  v5 = *(v0 - 96);

  return sub_22C273EB4();
}

uint64_t sub_22C18F6A0()
{
  v2 = *(v0 - 96);

  return sub_22C273DE4();
}

void sub_22C18F6BC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  v3 = v2[1];
}

uint64_t sub_22C18F6D8()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);

  return sub_22C273EB4();
}

uint64_t sub_22C18F704()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_22C18F71C()
{
  v2 = *(v0 - 88);

  return sub_22C273FA4();
}

uint64_t sub_22C18F734(uint64_t result)
{
  v4 = (v3 + *(result + 20));
  *v4 = v2;
  v4[1] = v1;
  return result;
}

uint64_t sub_22C18F754()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 144);
  return result;
}

uint64_t sub_22C18F764()
{
  v2 = *(v0 + 8);
  result = *(v1 - 160);
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_22C18F7F4@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  return v2[1];
}

void sub_22C18F814()
{
  *(v5 - 144) = v2;
  *(v5 - 136) = v1;
  *(v5 - 128) = v3;
  *(v5 - 120) = v4;
  *(v5 - 112) = v0;
}

void sub_22C18F824()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
}

uint64_t sub_22C18F844()
{

  return sub_22BE22814();
}

uint64_t sub_22C18F85C()
{
  v2 = *(v0 - 240);

  return sub_22C273FA4();
}

double sub_22C18F88C(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

void sub_22C18F8D4()
{
  v1 = *(v0 - 56);
  *(v0 - 64) = *(v0 - 64);
  *(v0 - 56) = v1;
}

void sub_22C18F8F8()
{
  v1 = *(v0 - 144);
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
}

uint64_t sub_22C18F91C()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_22C18F964()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_22C18F970()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_22C18F97C()
{
  result = v0;
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  return result;
}

__n128 sub_22C18F994()
{
  v2 = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 32);
  return *(v0 + 41);
}

uint64_t sub_22C18FA3C@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22C18FA48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void sub_22C18FA60()
{
  *(v2 - 168) = v0;
  *(v2 - 88) = v1;
  v4 = *(v2 - 128);
  v3 = *(v2 - 120);
  *(v2 - 65) = 0;
}

uint64_t sub_22C18FAA8()
{
  result = type metadata accessor for Session.Transcript(0);
  v1 = *(result + 20);
  v2 = *(result + 24);
  return result;
}

void sub_22C18FAC4()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22C18FADC()
{

  return sub_22C274154();
}

uint64_t sub_22C18FAF4()
{

  return sub_22BE1A964(v0, v1 + v2);
}

uint64_t sub_22C18FB10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t _s30IntelligenceFlowPlannerSupport19SpeechPartialResultV6turnId6tokensACSS_Say0aB00E7PackageV5TokenVGtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_22C18FB28()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 152);
  v4 = *(v0 - 88);

  return sub_22C273FA4();
}

uint64_t sub_22C18FB4C()
{

  return sub_22C274214();
}

uint64_t sub_22C18FB68()
{

  return sub_22C273FD4();
}

uint64_t sub_22C18FB84()
{
  v2 = *(v0 - 352);

  return sub_22C273C24();
}

uint64_t sub_22C18FBA8()
{
  v2 = *(v0 - 264);

  return sub_22C273EE4();
}

uint64_t sub_22C18FBD4()
{

  return sub_22C272F44();
}

uint64_t sub_22C18FBF8()
{

  return sub_22C272F44();
}

uint64_t sub_22C18FC14()
{

  return sub_22C272F44();
}

void sub_22C18FC2C()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22C18FC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C171FA8(a1, v3);
}

uint64_t sub_22C18FC5C()
{
  v2 = *(v0 - 72);

  return sub_22C273DE4();
}

uint64_t sub_22C18FC74()
{
  v2 = *(v0 + 616);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C18FC8C()
{
}

uint64_t sub_22C18FCD4()
{
  result = *(v0 - 96);
  v2 = *(v0 - 88);
  return result;
}

uint64_t sub_22C18FCE0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

void sub_22C18FD24()
{
  v2 = *(v1 - 88);
  *v0 = *(v1 - 96);
  v0[1] = v2;
  *(v1 - 96) = 1;
}

uint64_t sub_22C18FD84(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(v1 - 80) = 1;
  return 0;
}

uint64_t sub_22C18FDC4@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

void sub_22C18FE38(void *a1@<X8>)
{
  v2 = *(v1 - 152);
  *a1 = *(v1 - 160);
  a1[1] = v2;
}

uint64_t sub_22C18FE64(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  return 0;
}

uint64_t sub_22C18FE98()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v0;
}

void sub_22C18FEA4()
{
  v2 = *v0;
  v3 = v0[1];
  *(v1 - 72) = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
}

void sub_22C18FEE8()
{
  v2 = v0 + v1[11];
  v3 = v1[13];
  v4 = v0 + v1[14];
}

void sub_22C18FF20(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t sub_22C18FF2C@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_22C18FF54()
{
  v2 = *(v0 + 24);
  *(v1 - 75) = 2;
  return 0;
}

uint64_t sub_22C18FF68@<X0>(uint64_t a1@<X8>)
{
  result = v2 + a1 + *(v1 + 72) * v3;
  v5 = *(v1 + 32);
  return result;
}

uint64_t sub_22C18FFCC()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t sub_22C18FFF0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_22C19005C()
{

  return sub_22BE22814();
}

void sub_22C19007C(uint64_t a1@<X8>)
{
  *(v3 - 128) = v1 - 3;
  *(v3 - 120) = a1;
  v5 = *v2;
  v6 = v2[1];

  JUMPOUT(0x2318AB8D0);
}

void sub_22C19009C()
{

  sub_22BE71084();
}

uint64_t sub_22C1900BC()
{
  v2 = *(v0 - 96);

  return sub_22C273EB4();
}

unint64_t sub_22C1900DC()
{
  *(v1 - 136) = v0;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);
  *(v1 - 65) = 0;

  return sub_22C17A3EC();
}

uint64_t sub_22C1900FC()
{
  *(v1 + *(v2 + 60)) = v0;
  v5 = *(*(v3 - 112) + 8);
}

uint64_t sub_22C19011C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = v1;
  *(v2 - 160) = a1;

  return sub_22C26E684();
}

uint64_t sub_22C19013C()
{

  return sub_22BE22814();
}

uint64_t sub_22C19015C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t sub_22C190174()
{
  v2 = *(v0 - 72);

  return sub_22C273FA4();
}

uint64_t sub_22C19018C()
{

  return sub_22C273DE4();
}

uint64_t sub_22C1901A4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C1901BC()
{

  return sub_22C273EE4();
}

uint64_t sub_22C1901D4()
{

  return sub_22C274214();
}

uint64_t sub_22C1901EC()
{
  v2 = *(v0 - 256);

  return sub_22C273EE4();
}

uint64_t sub_22C190204()
{

  return sub_22C273EB4();
}

uint64_t sub_22C19021C()
{
  v2 = *(v0 - 72);

  return sub_22C273FA4();
}

void TypedValue.programTraceValue.getter()
{
  sub_22BE19460();
  v1 = v0;
  v2 = sub_22C2720A4();
  v3 = sub_22BE179D8(v2);
  v156 = v4;
  v157 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v155 = v7;
  sub_22BE183BC();
  v163 = sub_22C2726B4();
  v8 = sub_22BE179D8(v163);
  v165 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v164 = v12;
  sub_22BE183BC();
  v151 = sub_22C26DD74();
  v13 = sub_22BE179D8(v151);
  v150 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v149 = v17;
  sub_22BE183BC();
  v166 = sub_22C26E0E4();
  v18 = sub_22BE179D8(v166);
  v161 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v159 = v22;
  sub_22BE183BC();
  v162 = sub_22C26E164();
  v23 = sub_22BE179D8(v162);
  v160 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v158 = v27;
  sub_22BE183BC();
  v28 = sub_22C26DF64();
  v29 = sub_22BE179D8(v28);
  v153 = v30;
  v154 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v152 = v33;
  sub_22BE183BC();
  v34 = sub_22C272804();
  v35 = sub_22BE179D8(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  v168 = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  v43 = &v147 - v42;
  v44 = sub_22C272874();
  v45 = sub_22BE179D8(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  v167 = v48;
  sub_22BE1B99C();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (&v147 - v51);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = (&v147 - v54);
  MEMORY[0x28223BE20](v53);
  v57 = &v147 - v56;
  v59 = *(v58 + 16);
  v60 = v1;
  v61 = v58;
  v59(&v147 - v56, v60, v44);
  v62 = (*(v61 + 88))(v57, v44);
  if (v62 == *MEMORY[0x277D72A58])
  {
    v59(v55, v57, v44);
    v63 = v61;
    (*(v61 + 96))(v55, v44);
    v64 = *v55;
    v65 = swift_projectBox();
    v66 = (*(v37 + 88))(v65, v34);
    if (v66 == *MEMORY[0x277D72988])
    {
      (*(v37 + 16))(v43, v65, v34);
      (*(v37 + 96))(v43, v34);
      v67 = *v43;

LABEL_48:
      v61 = v63;
LABEL_49:
      (*(v61 + 8))(v57, v44);
      sub_22BE1AABC();
      return;
    }

    v68 = v66;
    if (v66 == *MEMORY[0x277D729A8])
    {
      v69 = sub_22BE1C070();
      v70(v69);
      v71 = sub_22BE1B4EC();
      v72(v71);
      v73 = *v68;
      sub_22C273664();
      sub_22BE38404();
LABEL_47:

      goto LABEL_48;
    }

    if (v66 == *MEMORY[0x277D729B8])
    {
      v74 = sub_22BE1C070();
      v75(v74);
      v76 = sub_22BE1B4EC();
      v77(v76);
      v78 = *v68;
      v79 = v68[1];
      String.quoted.getter();
      sub_22BE38404();

      goto LABEL_48;
    }

    v167 = v64;
    if (v66 == *MEMORY[0x277D72990])
    {
      v103 = sub_22BE1C070();
      v104(v103);
      v105 = sub_22BE1B4EC();
      v106(v105);
      v107 = v160;
      v108 = v158;
      v109 = v162;
      (*(v160 + 32))(v158, v68, v162);
      v110 = v159;
      sub_22C190EC0(v159);
      sub_22C26E084();
      (*(v161 + 8))(v110, v166);
      sub_22BE19454();
      String.quoted.getter();
      sub_22BE38404();

      (*(v107 + 8))(v108, v109);
      goto LABEL_47;
    }

    if (v66 == *MEMORY[0x277D72958])
    {
      goto LABEL_47;
    }

    if (v66 == *MEMORY[0x277D72980])
    {
      v111 = sub_22BE1C070();
      v112(v111);
      v113 = sub_22BE1B4EC();
      v114(v113);
      v115 = v152;
      v116 = v153;
      v117 = *(v153 + 32);
      v118 = sub_22BE18944();
      v119 = v154;
      v120(v118);
      sub_22C26DEB4();
LABEL_46:
      String.quoted.getter();

      (*(v116 + 8))(v115, v119);
      goto LABEL_47;
    }

    if (v66 == *MEMORY[0x277D72968])
    {
      v135 = sub_22BE1C070();
      v136(v135);
      v137 = sub_22BE1B4EC();
      v138(v137);
      v116 = v150;
      v139 = *(v150 + 32);
      v115 = v149;
      v140 = sub_22BE18944();
      v119 = v151;
      v141(v140);
      sub_22C1933C8(&qword_27D9152D0, MEMORY[0x277CC8C40]);
      sub_22C26DE94();
      goto LABEL_46;
    }

    v142 = *MEMORY[0x277D729A0];

    v61 = v63;
    if (v68 == v142)
    {
      goto LABEL_49;
    }

LABEL_51:
    v143 = v155;
    sub_22C271B24();
    v144 = sub_22C272084();
    v145 = sub_22C2737A4();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_22BE15000, v144, v145, "Unknown default - returning null", v146, 2u);
      sub_22BE183C8();
    }

    (*(v156 + 8))(v143, v157);
    goto LABEL_49;
  }

  v166 = v59;
  v162 = v57;
  v168 = v44;
  if (v62 == *MEMORY[0x277D729E8] || v62 == *MEMORY[0x277D72A38])
  {
LABEL_9:
    v44 = v168;
LABEL_10:
    v57 = v162;
    goto LABEL_49;
  }

  if (v62 != *MEMORY[0x277D729E0])
  {
    if (v62 != *MEMORY[0x277D72A30])
    {
      v44 = v168;
      v57 = v162;
      if (v62 == *MEMORY[0x277D72A60])
      {
        goto LABEL_49;
      }

      goto LABEL_51;
    }

    goto LABEL_9;
  }

  v166(v52, v162, v168);
  v80 = *(v61 + 96);
  v81 = sub_22BE18944();
  v82(v81);
  v83 = *v52;
  v84 = swift_projectBox();
  v85 = v164;
  v86 = v165;
  v87 = v163;
  (*(v165 + 16))(v164, v84, v163);
  v88 = *(sub_22C2726A4() + 16);

  if (!v88)
  {
    (*(v86 + 8))(v85, v87);

    goto LABEL_9;
  }

  v160 = v83;
  v170 = 0x5B7473694C22;
  v171 = 0xE600000000000000;
  v89 = sub_22C2726A4();
  v90 = *(v89 + 16);
  v148 = v61;
  if (v90)
  {
    v169 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v91 = v169;
    v92 = *(v61 + 80);
    v159 = v89;
    v93 = v89 + ((v92 + 32) & ~v92);
    v161 = *(v61 + 72);
    v94 = (v61 + 8);
    do
    {
      v95 = v167;
      v96 = v168;
      v97 = (v166)(v167, v93, v168);
      v98 = TypedValue.programTraceValue.getter(v97);
      v100 = v99;
      (*v94)(v95, v96);
      v169 = v91;
      v101 = *(v91 + 16);
      if (v101 >= *(v91 + 24) >> 1)
      {
        sub_22BE70138();
        v91 = v169;
      }

      *(v91 + 16) = v101 + 1;
      v102 = v91 + 16 * v101;
      *(v102 + 32) = v98;
      *(v102 + 40) = v100;
      v93 += v161;
      --v90;
    }

    while (v90);

    v87 = v163;
  }

  else
  {

    v91 = MEMORY[0x277D84F90];
  }

  v121 = sub_22BF3954C(v91);
  v122 = v121;
  v123 = 0;
  v124 = v121 + 56;
  v125 = 1 << *(v121 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v127 = v126 & *(v121 + 56);
  v128 = (v125 + 63) >> 6;
  v44 = v168;
  while (v127)
  {
    v129 = v123;
LABEL_41:
    v130 = __clz(__rbit64(v127));
    v127 &= v127 - 1;
    v131 = (*(v122 + 48) + ((v129 << 10) | (16 * v130)));
    v132 = *v131;
    v133 = v131[1];

    MEMORY[0x2318AB8D0](v132, v133);

    MEMORY[0x2318AB8D0](124, 0xE100000000000000);
  }

  while (1)
  {
    v129 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v129 >= v128)
    {

      sub_22C1913CC(v134);

      MEMORY[0x2318AB8D0](8797, 0xE200000000000000);
      (*(v165 + 8))(v164, v87);

      v61 = v148;
      goto LABEL_10;
    }

    v127 = *(v124 + 8 * v129);
    ++v123;
    if (v127)
    {
      v123 = v129;
      goto LABEL_41;
    }
  }

  __break(1u);
}

uint64_t sub_22C190EC0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_22BE5CE4C(&qword_27D9152F8, &unk_22C2CC8F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - v3;
  v33 = sub_22C26E2A4();
  v30 = *(v33 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22C26E0D4();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C26E0B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C26E094();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C26E0A4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v33;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CC9480], v32);
  sub_22C26E274();
  result = sub_22BE1AEA8(v4, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v30 + 32))(v29, v4, v26);
    return sub_22C26E0C4();
  }

  return result;
}

void sub_22C1912A8(uint64_t a1@<X8>)
{
  v2 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_22BE19E20();
  if (v8)
  {
    sub_22C193190(v7);
    v9 = type metadata accessor for ProgramStatement(0);
    if (sub_22BE1AEA8(v7, 1, v9) == 1)
    {
      sub_22BE33928(v7, &qword_27D90A8A0, &unk_22C2D1FB0);
      sub_22BE19E20();
      sub_22BEF717C(v10 - 1, a1);
    }

    else
    {
      sub_22BE32CB0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22C191398()
{
  sub_22BE19E20();
  if (v0)
  {
    sub_22C193294();
    if (!v1)
    {
      sub_22BE19E20();
      sub_22C1926E0(v2 - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C1913CC(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_22C273194();

  return MEMORY[0x2821FBE70](a1);
}

void TypedValue.length.getter()
{
  sub_22BE19460();
  v1 = sub_22C2720A4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = sub_22C2726B4();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v15 = v14 - v13;
  v16 = sub_22C272874();
  v17 = sub_22BE179D8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v24 = (v23 - v22);
  (*(v19 + 16))(v23 - v22, v0, v16);
  v25 = *(v19 + 88);
  v26 = sub_22BE1C2A0();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x277D72A58])
  {
    v29 = *(v19 + 96);
    v30 = sub_22BE1C2A0();
    v31(v30);
    v32 = *v24;
    v33 = sub_22C272804();
    v34 = swift_projectBox();
    LOBYTE(v33) = (*(*(v33 - 8) + 88))(v34, v33) != *MEMORY[0x277D729A0];
  }

  else
  {
    if (v28 == *MEMORY[0x277D729E8] || v28 == *MEMORY[0x277D72A38])
    {
      goto LABEL_5;
    }

    if (v28 == *MEMORY[0x277D729E0])
    {
      v38 = *(v19 + 96);
      v39 = sub_22BE1C2A0();
      v40(v39);
      v41 = *v24;
      v42 = swift_projectBox();
      (*(v10 + 16))(v15, v42, v7);
      v43 = sub_22C2726A4();
      (*(v10 + 8))(v15, v7);
      v44 = *(v43 + 16);

      goto LABEL_6;
    }

    if (v28 == *MEMORY[0x277D72A30] || v28 == *MEMORY[0x277D72A60])
    {
LABEL_5:
      v35 = *(v19 + 8);
      v36 = sub_22BE1C2A0();
      v37(v36);
    }

    else
    {
      sub_22C271B24();
      v45 = sub_22C272084();
      v46 = sub_22C2737A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22BE15000, v45, v46, "Unknown default - returning null", v47, 2u);
        sub_22BE183C8();
      }

      v48 = *(v4 + 8);
      v49 = sub_22BE18944();
      v50(v49);
      v51 = *(v19 + 8);
      v52 = sub_22BE1C2A0();
      v53(v52);
    }
  }

LABEL_6:
  sub_22BE1AABC();
}

uint64_t Array<A>.programTraceValue.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 1819047246;
  }

  v1 = sub_22C272874();
  sub_22BE19448(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  TypedValue.programTraceValue.getter();
  MEMORY[0x2318AB8D0]();

  MEMORY[0x2318AB8D0](93, 0xE100000000000000);
  return 0x5B7473694CLL;
}

uint64_t StatementID.asExprId.getter()
{
  sub_22C26E674();
  v0 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v0);

  return 101;
}

void StatementID.init(fromExprId:)()
{
  sub_22BE19460();
  v39 = v0;
  v1 = sub_22BE5CE4C(&qword_27D9152D8, &qword_22C2CB460);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = sub_22BE5CE4C(&qword_27D90B0D8, &qword_22C28B518);
  sub_22BE179D8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_22BE5CE4C(&qword_27D90B0C8, &qword_22C28B510);
  sub_22BE179D8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  sub_22BE5CE4C(&qword_27D9152E0, &qword_22C2CB468);
  sub_22C2702C4();
  sub_22BF055A4();

  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE33928(v6, &qword_27D9152D8, &qword_22C2CB460);
LABEL_11:
    sub_22C26E664();
    goto LABEL_12;
  }

  v38 = v9;
  (*(v9 + 32))(v14, v6, v7);
  sub_22C2702F4();

  if (!((v41 ^ v40) >> 14))
  {

LABEL_10:
    (*(v38 + 8))(v14, v7);
    goto LABEL_11;
  }

  v37 = v15;
  v23 = sub_22BE3C8A0();
  v28 = sub_22C1932F0(v23, v24, v25, v26, v27);
  if ((v28 & 0x10000000000) != 0)
  {
    v29 = sub_22BE3C8A0();
    v28 = sub_22C192C0C(v29, v30, v31, v32, v33);
  }

  v34 = v28;

  v15 = v37;
  if ((v34 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

  v35 = __CFADD__(v34, 1);
  v36 = v38;
  if (!v35)
  {
    sub_22C26E664();
    (*(v36 + 8))(v14, v7);
LABEL_12:
    (*(v17 + 8))(v22, v15);
    sub_22BE1AABC();
    return;
  }

  __break(1u);
}

void Session.Event.Payload.applyingRequestAmendment(transcript:)()
{
  sub_22BE19460();
  v1 = v0;
  v162 = v2;
  v163 = v3;
  v4 = sub_22C2720A4();
  v5 = sub_22BE179D8(v4);
  v160 = v6;
  v161 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v159 = v9;
  v10 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v156 = v14;
  v15 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v155 = v19;
  v20 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A174();
  v152 = v24;
  v25 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  v151 = v29;
  v30 = sub_22BE183BC();
  v150 = type metadata accessor for Request(v30);
  v31 = sub_22BE18000(v150);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v149 = v34;
  v35 = sub_22BE5CE4C(&qword_27D9152E8, &qword_22C2CB470);
  v36 = sub_22BE18000(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  v154 = v39;
  sub_22BE1B99C();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (v146 - v42);
  MEMORY[0x28223BE20](v41);
  v153 = v146 - v44;
  sub_22BE183BC();
  v45 = sub_22C270B14();
  v46 = sub_22BE179D8(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE179EC();
  v53 = v52 - v51;
  v54 = type metadata accessor for Session.Event.Payload(0);
  v55 = sub_22BE18000(v54);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = v146 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v62 = v146 - v61;
  v148 = type metadata accessor for RequestAmendment(0);
  v63 = sub_22BE18000(v148);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  v157 = v66;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v67);
  v69 = v146 - v68;
  sub_22BE18F5C();
  sub_22BE1A9B8();
  v158 = v54;
  if (swift_getEnumCaseMultiPayload() != 35)
  {
    sub_22BE3B120();
    sub_22BE32AD4(v62, v84);
    sub_22BE18F5C();
LABEL_14:
    sub_22BE1A9B8();
    goto LABEL_15;
  }

  v147 = v35;
  sub_22BE32CB0();
  (*(v48 + 104))(v53, *MEMORY[0x277D1EC48], v45);
  v70 = sub_22C270B04();
  (*(v48 + 8))(v53, v45);
  if ((v70 & 1) == 0)
  {
    sub_22BE2322C();
    sub_22BE32AD4(v69, v85);
    sub_22BE18F5C();
    goto LABEL_14;
  }

  v146[2] = v1;
  v71 = v162[4];
  v146[3] = sub_22BE1BD3C(v162, v162[3]);
  v146[1] = *(*(*(v71 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = type metadata accessor for Session.Event(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = sub_22C273844();
  v146[4] = v146;
  sub_22BE179D8(v75);
  v77 = v76;
  v79 = *(v78 + 64);
  sub_22BE179FC();
  v81 = MEMORY[0x28223BE20](v80);
  v83 = v146 - v82;
  v162 = v81;
  TailTranscriptProtocol.event(forId:)();
  if (sub_22BE1AEA8(v83, 1, TupleTypeMetadata2) == 1)
  {
    (*(v77 + 8))(v83, v75);
LABEL_10:
    sub_22C271A94();
    v133 = v162;
    v134 = v157;
    sub_22BE1A9B8();
    v135 = sub_22C272084();
    v136 = sub_22C2737A4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v164 = v138;
      *v137 = 136315138;
      sub_22C26E1D4();
      sub_22C1933C8(&qword_28107F320, MEMORY[0x277CC95F0]);
      v139 = sub_22C273FD4();
      v140 = v134;
      v142 = v141;
      sub_22BE32AD4(v140, type metadata accessor for RequestAmendment);
      v143 = sub_22BE61C88(v139, v142, &v164);

      *(v137 + 4) = v143;
      _os_log_impl(&dword_22BE15000, v135, v136, "Unable to find the original request associated with this amendment: %s", v137, 0xCu);
      sub_22BE26B64(v138);
      sub_22BE183C8();
      sub_22BE183C8();
    }

    else
    {

      sub_22BE32AD4(v134, type metadata accessor for RequestAmendment);
    }

    v144 = sub_22BE2B90C();
    v145(v144);
    sub_22BE32AD4(v133, type metadata accessor for RequestAmendment);
    sub_22BE18F5C();
    goto LABEL_14;
  }

  v86 = *(TupleTypeMetadata2 + 48);
  v87 = v147;
  v88 = *(v147 + 48);
  v43[3] = AssociatedTypeWitness;
  v43[4] = swift_getAssociatedConformanceWitness();
  v89 = sub_22BE62524(v43);
  (*(*(AssociatedTypeWitness - 8) + 32))(v89, v83, AssociatedTypeWitness);
  sub_22BE32CB0();
  v90 = v153;
  sub_22C193410(v43, v153);
  v91 = v154;
  sub_22C193410(v90, v154);
  v92 = v91 + *(v87 + 48);
  v93 = *(v73 + 28);
  sub_22BE18F5C();
  sub_22BE1A9B8();
  sub_22BE32AD4(v92, type metadata accessor for Session.Event);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22BE3B120();
    sub_22BE32AD4(v60, v132);
    sub_22BE26B64(v91);
    goto LABEL_10;
  }

  v94 = v149;
  sub_22BE32CB0();
  sub_22BE26B64(v91);
  v95 = *(v148 + 20);
  v96 = v162;
  v97 = v163;
  sub_22BE1A9B8();
  sub_22BE2322C();
  sub_22BE32AD4(v96, v98);
  v99 = v150;
  LODWORD(v162) = *(v94 + v150[5]);
  v100 = type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE1A140();
  sub_22BE19DC4(v101, v102, v103, v100);
  v104 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v105, v106, v107, v104);
  v108 = v99[9];
  sub_22BE22868();
  v109 = v99[11];
  sub_22BE22868();
  sub_22BE32AD4(v94, type metadata accessor for Request);
  v110 = v99[6];
  sub_22BE1A140();
  sub_22BE19DC4(v111, v112, v113, v100);
  v114 = v99[7];
  sub_22BE1A140();
  sub_22BE19DC4(v115, v116, v117, v104);
  v118 = (v97 + v99[8]);
  *v118 = 0;
  v118[1] = 0;
  v118[2] = 0;
  v119 = v99[9];
  sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v120, v121, v122, v123);
  v124 = (v97 + v99[10]);
  *v124 = 0;
  v124[1] = 0;
  v125 = v99[11];
  type metadata accessor for DateTimeContext();
  sub_22BE1A140();
  sub_22BE19DC4(v126, v127, v128, v129);
  *(v97 + v99[5]) = v162;
  sub_22C193480();
  sub_22C193480();
  v130 = v118[2];
  sub_22BE37808(*v118, v118[1]);
  *v118 = 0;
  v118[1] = 0;
  v118[2] = 0;
  sub_22C193480();
  v131 = v124[1];

  *v124 = 0;
  v124[1] = 0;
  sub_22C193480();
  swift_storeEnumTagMultiPayload();
LABEL_15:
  sub_22BE1AABC();
}

void sub_22C1926E0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C265530(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_22BE67CB0((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void *sub_22C192768(uint64_t a1, uint64_t a2)
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

  sub_22BE5CE4C(&qword_27D9072C0, &unk_22C2752C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_22C1927D8()
{
  v0 = sub_22BF06EE8();
  v4 = sub_22C192840(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22C192840(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22C273134();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22C2738A4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22C192768(v9, 0);
  v12 = sub_22C1929A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22C273134();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22C273B44();
LABEL_4:

  return sub_22C273134();
}

unint64_t sub_22C1929A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_22C192BB0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22C273254();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22C273B44();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_22C192BB0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_22C273224();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22C192BB0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_22C273264();
    sub_22BE237C4(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x2318AB930](15, a1 >> 16);
    sub_22BE237C4(v3);
    return v4 | 8;
  }
}

unsigned __int8 *sub_22C192C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_22C1934D8();

  result = sub_22C2732D4();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22C1927D8();
    v43 = v42;

    v9 = v43;
    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22C273B44();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v25 = v10 - 1;
        if (v10 != 1)
        {
          v26 = a5 + 48;
          v27 = a5 + 55;
          v28 = a5 + 87;
          if (a5 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (result)
          {
            v16 = 0;
            v29 = result + 1;
            v18 = 1;
            do
            {
              v30 = *v29;
              if (v30 < 0x30 || v30 >= v26)
              {
                if (v30 < 0x41 || v30 >= v27)
                {
                  v21 = 0;
                  if (v30 < 0x61 || v30 >= v28)
                  {
                    goto LABEL_129;
                  }

                  v31 = -87;
                }

                else
                {
                  v31 = -55;
                }
              }

              else
              {
                v31 = -48;
              }

              v32 = v16 * a5;
              if ((v32 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v33 = v30 + v31;
              v24 = __CFADD__(v32, v33);
              v16 = v32 + v33;
              if (v24)
              {
                goto LABEL_128;
              }

              ++v29;
              --v25;
            }

            while (v25);
LABEL_47:
            v18 = 0;
            v21 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v21 = 0;
        v18 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v34 = a5 + 48;
        v35 = a5 + 55;
        v36 = a5 + 87;
        if (a5 > 10)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        if (result)
        {
          v37 = 0;
          v18 = 1;
          do
          {
            v38 = *result;
            if (v38 < 0x30 || v38 >= v34)
            {
              if (v38 < 0x41 || v38 >= v35)
              {
                v21 = 0;
                if (v38 < 0x61 || v38 >= v36)
                {
                  goto LABEL_129;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * a5;
            if ((v40 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v41 = v38 + v39;
            v24 = __CFADD__(v40, v41);
            v37 = v40 + v41;
            if (v24)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v18 = 0;
          v21 = v37;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          v18 = 1;
          while (1)
          {
            v19 = *v17;
            if (v19 < 0x30 || v19 >= v13)
            {
              if (v19 < 0x41 || v19 >= v14)
              {
                v21 = 0;
                if (v19 < 0x61 || v19 >= v15)
                {
                  goto LABEL_129;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v22 = v16 * a5;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v23 = v19 + v20;
            v24 = v22 >= v23;
            v16 = v22 - v23;
            if (!v24)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v21 = 0;
        v18 = 0;
LABEL_129:

        LOBYTE(v72) = v18;
        return (v21 | (v18 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v44 = HIBYTE(v9) & 0xF;
  v72 = v8;
  v73 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v44)
      {
        v46 = 0;
        v64 = a5 + 48;
        v65 = a5 + 55;
        v66 = a5 + 87;
        if (a5 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v72;
        v18 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              v21 = 0;
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_129;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v46 * a5;
          if ((v70 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v71 = v68 + v69;
          v24 = __CFADD__(v70, v71);
          v46 = v70 + v71;
          if (v24)
          {
            goto LABEL_128;
          }

          v67 = (v67 + 1);
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v44)
    {
      v45 = v44 - 1;
      if (v45)
      {
        v46 = 0;
        v47 = a5 + 48;
        v48 = a5 + 55;
        v49 = a5 + 87;
        if (a5 > 10)
        {
          v47 = 58;
        }

        else
        {
          v49 = 97;
          v48 = 65;
        }

        v50 = &v72 + 1;
        v18 = 1;
        while (1)
        {
          v51 = *v50;
          if (v51 < 0x30 || v51 >= v47)
          {
            if (v51 < 0x41 || v51 >= v48)
            {
              v21 = 0;
              if (v51 < 0x61 || v51 >= v49)
              {
                goto LABEL_129;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v46 * a5;
          if ((v53 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v54 = v51 + v52;
          v24 = v53 >= v54;
          v46 = v53 - v54;
          if (!v24)
          {
            goto LABEL_128;
          }

          ++v50;
          if (!--v45)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v44)
  {
    v55 = v44 - 1;
    if (v55)
    {
      v46 = 0;
      v56 = a5 + 48;
      v57 = a5 + 55;
      v58 = a5 + 87;
      if (a5 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v72 + 1;
      v18 = 1;
      do
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            v21 = 0;
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_129;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v46 * a5;
        if ((v62 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v63 = v60 + v61;
        v24 = __CFADD__(v62, v63);
        v46 = v62 + v63;
        if (v24)
        {
          goto LABEL_128;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_127:
      v18 = 0;
      v21 = v46;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_22C193190(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116078(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = type metadata accessor for ProgramStatement(0);
    v8 = v3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
    v9 = *(*(v7 - 8) + 72);
    sub_22BE32CB0();
    *(v3 + 16) = v6;
    *v1 = v3;

    sub_22BE19DC4(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C193294()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C265530(v1);
    v1 = v7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C1932F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_22C273B44();
  }

  result = sub_22C19352C(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v16 = BYTE4(result) & 1;
    v14 = result | ((BYTE4(result) & 1) << 32);
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_22C1933C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C193410(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9152E8, &qword_22C2CB470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C193480()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE18000(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE19454();
  v7(v6);
  return v0;
}

unint64_t sub_22C1934D8()
{
  result = qword_27D9152F0;
  if (!qword_27D9152F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9152F0);
  }

  return result;
}

uint64_t sub_22C19352C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_22C192BB0(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_105;
    }

    result = sub_22C273244();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_22C192BB0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_22C192BB0(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_101;
  }

  if (v23 < a4 >> 16)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = sub_22C273244();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v24 < v18)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v40 = a7 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a7 <= 10)
        {
          v41 = a7 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                v36 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v35 | (v36 << 32);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v30 * a7;
            if ((v46 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_97;
            }

            v47 = v44 + v45;
            v30 = v46 + v47;
            if (__CFADD__(v46, v47))
            {
              goto LABEL_97;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_95:
          v36 = 0;
          v35 = v30;
          return v35 | (v36 << 32);
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_104;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 87;
      if (a7 > 10)
      {
        v49 = a7 + 55;
      }

      else
      {
        v48 = 97;
        v49 = 65;
      }

      if (a7 <= 10)
      {
        v50 = a7 + 48;
      }

      else
      {
        v50 = 58;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v50)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              v36 = 1;
              if (v51 < 0x61 || v51 >= v48)
              {
                return v35 | (v36 << 32);
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v30 * a7;
          if ((v53 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_97;
          }

          v54 = v51 + v52;
          v30 = v53 + v54;
          if (__CFADD__(v53, v54))
          {
            goto LABEL_97;
          }

          ++v25;
          if (!--result)
          {
            goto LABEL_95;
          }
        }
      }

      goto LABEL_96;
    }

LABEL_97:
    v35 = 0;
    v36 = 1;
    return v35 | (v36 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 87;
      if (a7 > 10)
      {
        v28 = a7 + 55;
      }

      else
      {
        v27 = 97;
        v28 = 65;
      }

      if (a7 <= 10)
      {
        v29 = a7 + 48;
      }

      else
      {
        v29 = 58;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v29)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              v36 = 1;
              if (v33 < 0x61 || v33 >= v27)
              {
                return v35 | (v36 << 32);
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v37 = v30 * a7;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_97;
          }

          v38 = v33 + v34;
          v30 = v37 - v38;
          if (v37 < v38)
          {
            goto LABEL_97;
          }

          ++v31;
          if (!--v32)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      v35 = 0;
      v36 = 0;
      return v35 | (v36 << 32);
    }

    goto LABEL_97;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

void sub_22C193960()
{
  sub_22BE19460();
  v2 = sub_22C272534();
  v3 = sub_22BE179D8(v2);
  v129 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22BE5CE4C(&qword_27D915308, &qword_22C2CB480);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v126 = v113 - v14;
  sub_22BE183BC();
  v15 = sub_22C272574();
  v16 = sub_22BE179D8(v15);
  v127 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v22 = v21 - v20;
  v123 = sub_22C272594();
  v23 = sub_22BE179D8(v123);
  v131 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  v130 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19E94();
  v122 = v29;
  sub_22BE183BC();
  v30 = sub_22C272514();
  v31 = sub_22BE179D8(v30);
  v125 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE179EC();
  v124 = v36 - v35;
  v37 = sub_22BE5CE4C(&qword_27D915310, &qword_22C2CB488);
  v38 = sub_22BE19448(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE183AC();
  sub_22BE2017C();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = (v113 - v43);
  MEMORY[0x28223BE20](v42);
  v46 = v113 - v45;
  v128 = v0;
  sub_22C272544();
  v47 = sub_22C2725D4();
  if (sub_22BE1AEA8(v46, 1, v47) != 1)
  {
    v118 = v30;
    sub_22BE2B9D0(v46, v44, &qword_27D915310, &qword_22C2CB488);
    v48 = *(v47 - 8);
    v49 = (*(v48 + 88))(v44, v47);
    if (v49 == *MEMORY[0x277D72848])
    {
      v121 = v49;
      v117 = v1;
      v119 = v48;
      v120 = v46;
      v50 = sub_22BE2B920();
      v51 = v47;
      v52(v50, v47);
      v53 = *v44;
      v54 = swift_projectBox();
      v55 = *(v129 + 16);
      v55(v9, v54, v2);
      v56 = sub_22C272524();
      v57 = sub_22C272614();
      if (!sub_22BE22D48(v57))
      {
        v58 = sub_22C2725F4();
        sub_22BE2F260(v58, v59, v60, v58);
        sub_22C272604();
      }

      v56(v132, 0);
      v61 = swift_allocBox();
      v55(v62, v9, v2);
      v63 = v117;
      *v117 = v61;
      (*(v119 + 104))(v63, v121, v51);
      sub_22BE187DC();
      sub_22BE19DC4(v64, v65, v66, v51);
      sub_22C272554();
      (*(v129 + 8))(v9, v2);
LABEL_10:

      v46 = v120;
      goto LABEL_11;
    }

    if (v49 == *MEMORY[0x277D72850])
    {
      v121 = v49;
      v67 = v1;
      v119 = v48;
      v120 = v46;
      v68 = sub_22BE2B920();
      v69 = v47;
      v70(v68, v47);
      v71 = *v44;
      v72 = swift_projectBox();
      v73 = v127;
      v74 = *(v127 + 16);
      v74(v22, v72, v15);
      v75 = sub_22C272564();
      v76 = sub_22C272614();
      if (!sub_22BE22D48(v76))
      {
        v77 = sub_22C2725F4();
        sub_22BE2F260(v77, v78, v79, v77);
        v73 = v127;
        sub_22C272604();
      }

      v75(v132, 0);
      v80 = swift_allocBox();
      v74(v81, v22, v15);
      *v67 = v80;
      (*(v119 + 104))(v67, v121, v69);
      sub_22BE187DC();
      sub_22BE19DC4(v82, v83, v84, v69);
      sub_22C272554();
      (*(v73 + 8))(v22, v15);
      goto LABEL_10;
    }

    if (v49 == *MEMORY[0x277D72840])
    {
      v121 = v49;
      v85 = sub_22BE2B920();
      v116 = v47;
      v86(v85, v47);
      v87 = *v44;
      v88 = swift_projectBox();
      v89 = *(v125 + 16);
      v115 = v125 + 16;
      v114 = v89;
      v89(v124, v88, v118);
      v90 = sub_22C2724F4();
      v91 = *(v90 + 16);
      if (v91)
      {
        v113[2] = v87;
        v119 = v48;
        v120 = v46;
        v117 = v1;
        v132[0] = MEMORY[0x277D84F90];
        sub_22BE702DC(0, v91, 0);
        v92 = v132[0];
        v129 = *(v131 + 16);
        v93 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v113[1] = v90;
        v127 = v93;
        v94 = v90 + v93;
        v126 = *(v131 + 72);
        v95 = (v131 + 8);
        v131 += 16;
        v96 = (v131 + 16);
        v98 = v122;
        v97 = v123;
        do
        {
          v99 = v130;
          v100 = v129;
          (v129)(v130, v94, v97);
          v101 = v100(v98, v99, v97);
          sub_22C193960(v101);
          (*v95)(v99, v97);
          v132[0] = v92;
          v103 = *(v92 + 16);
          v102 = *(v92 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_22BE702DC(v102 > 1, v103 + 1, 1);
            v92 = v132[0];
          }

          *(v92 + 16) = v103 + 1;
          v104 = v126;
          (*v96)(v92 + v127 + v103 * v126, v98, v97);
          v94 += v104;
          --v91;
        }

        while (v91);

        v48 = v119;
        v46 = v120;
        v1 = v117;
      }

      else
      {
      }

      v105 = v124;
      sub_22C272504();
      v106 = v118;
      v107 = swift_allocBox();
      v114(v108, v105, v106);
      *v1 = v107;
      v109 = v116;
      (*(v48 + 104))(v1, v121, v116);
      sub_22BE187DC();
      sub_22BE19DC4(v110, v111, v112, v109);
      sub_22C272554();
      (*(v125 + 8))(v105, v106);
    }

    else
    {
      (*(v48 + 8))(v44, v47);
    }
  }

LABEL_11:
  sub_22BE33928(v46, &qword_27D915310, &qword_22C2CB488);
  sub_22BE1AABC();
}

void sub_22C1941EC()
{
  sub_22BE19460();
  v1 = v0;
  v72 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v2 = sub_22BE18000(v72);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22C272594();
  v16 = sub_22BE179D8(v15);
  v75 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v74 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v69 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for TranscriptProtoParameterDisambiguation(v23);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v30 = v29 - v28;
  v31 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v32 = sub_22BE18000(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE179EC();
  v37 = v36 - v35;
  v38 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v39 = sub_22BE18000(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE179EC();
  v44 = v43 - v42;
  sub_22C194C00(v1, v43 - v42, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      sub_22BE18F74();
      sub_22BE3AD48(v1, v45);
      v46 = sub_22BE1ACF8();
      sub_22C194BA0(v46, v37, v47);
      if (!sub_22BE3744C(v37 + *(v31 + 24)))
      {
        sub_22C193960();
      }

      v48 = sub_22BE19EBC();
      sub_22C194C00(v48, v1, v49);
      sub_22BE194F8();
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for TranscriptProtoParameterConfirmation;
      v51 = v37;
      break;
    case 4u:
      sub_22BE18F74();
      sub_22BE3AD48(v1, v58);
      v59 = sub_22BE1ACF8();
      sub_22C194BA0(v59, v30, v60);
      v61 = *(v30 + 16);
      v62 = *(v61 + 16);
      if (v62)
      {
        v76 = MEMORY[0x277D84F90];
        sub_22BE702DC(0, v62, 0);
        v63 = v76;
        v71 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v73 = *(v75 + 16);
        v64 = v61 + v71;
        v70 = *(v75 + 72);
        do
        {
          v73(v74, v64, v15);
          v73(v69, v74, v15);
          sub_22C193960();
          (*(v75 + 8))(v74, v15);
          v65 = v15;
          v67 = *(v76 + 16);
          v66 = *(v76 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_22BE702DC(v66 > 1, v67 + 1, 1);
          }

          *(v76 + 16) = v67 + 1;
          (*(v75 + 32))(v76 + v71 + v67 * v70, v69, v65);
          v64 += v70;
          --v62;
          v15 = v65;
        }

        while (v62);
      }

      else
      {
        v68 = *(v30 + 16);

        v63 = MEMORY[0x277D84F90];
      }

      *(v30 + 16) = v63;
      sub_22C194C00(v30, v1, type metadata accessor for TranscriptProtoParameterDisambiguation);
      sub_22BE194F8();
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for TranscriptProtoParameterDisambiguation;
      v51 = v30;
      break;
    case 5u:
      sub_22BE18F74();
      sub_22BE3AD48(v1, v52);
      v53 = sub_22BE1ACF8();
      sub_22C194BA0(v53, v14, v54);
      if (!sub_22BE3744C(v14 + *(v8 + 24)))
      {
        sub_22C193960();
      }

      sub_22C194C00(v14, v1, type metadata accessor for TranscriptProtoParameterNotAllowed);
      sub_22BE194F8();
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for TranscriptProtoParameterNotAllowed;
      v51 = v14;
      break;
    case 6u:
      sub_22BE18F74();
      sub_22BE3AD48(v1, v55);
      v56 = sub_22BE1ACF8();
      sub_22C194BA0(v56, v7, v57);
      if (!sub_22BE3744C(v7 + *(v72 + 20)))
      {
        sub_22C193960();
      }

      sub_22C194C00(v7, v1, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      sub_22BE194F8();
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
      v51 = v7;
      break;
    default:
      sub_22BE18F74();
      v51 = v44;
      break;
  }

  sub_22BE3AD48(v51, v50);
  sub_22BE1AABC();
}

Swift::Void __swiftcall Session.RecoverableError.logFailure()()
{
  sub_22BE19460();
  v3 = v0;
  v4 = sub_22C2720A4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  v14 = sub_22BE18000(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = type metadata accessor for Session.PlanGenerationError(0);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BE2558C();
  v29 = type metadata accessor for Session.RecoverableError(v28);
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v35 = v34 - v33;
  sub_22C194C00(v3, v34 - v33, type metadata accessor for Session.RecoverableError);
  sub_22C194BA0(v35, v1, type metadata accessor for Session.PlanGenerationError);
  sub_22C194C00(v1, v26, type metadata accessor for Session.PlanGenerationError);
  sub_22C194BA0(v26, v19, type metadata accessor for Session.PlanGenerationModelOutputError);
  sub_22C271B24();
  sub_22C194C00(v19, v2, type metadata accessor for Session.PlanGenerationModelOutputError);
  v36 = sub_22C272084();
  v37 = sub_22C2737A4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v19;
    v52 = v12;
    v40 = v39;
    *v38 = 138412290;
    v41 = *(v13 + 24);
    v42 = sub_22C26E5D4();
    sub_22C194B48();
    swift_allocError();
    v53 = v7;
    v43 = v4;
    (*(*(v42 - 8) + 16))(v44, v2 + v41, v42);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BE19380();
    sub_22BE3AD48(v2, v46);
    *(v38 + 4) = v45;
    *v40 = v45;
    v4 = v43;
    v7 = v53;
    _os_log_impl(&dword_22BE15000, v36, v37, "ModelOutputError: %@", v38, 0xCu);
    sub_22BE33928(v40, &qword_27D907870, &qword_22C27AB50);
    v47 = v40;
    v19 = v51;
    v12 = v52;
    MEMORY[0x2318AD180](v47, -1, -1);
    MEMORY[0x2318AD180](v38, -1, -1);
  }

  else
  {

    sub_22BE19380();
    sub_22BE3AD48(v2, v48);
  }

  (*(v7 + 8))(v12, v4);
  sub_22BE19380();
  sub_22BE3AD48(v19, v49);
  sub_22BE3AD48(v1, type metadata accessor for Session.PlanGenerationError);
  sub_22BE1AABC();
}

unint64_t sub_22C194B48()
{
  result = qword_27D9078C8;
  if (!qword_27D9078C8)
  {
    sub_22C26E5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9078C8);
  }

  return result;
}

uint64_t sub_22C194BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C194C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_22C194C60()
{
  sub_22BE19130();
  v39 = v2;
  v47 = v1;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  sub_22BE17C68();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v43 = v13;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v45 = v16;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B72C();
  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  sub_22BE46BB4();
  v22 = swift_getAssociatedTypeWitness();
  sub_22BE179D8(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE25CD0();
  sub_22BE25C08();
  v26 = sub_22C2736D4();
  if (v26)
  {
    v44 = v26;
    sub_22C273BC4();
    sub_22C1AE2B0();
    sub_22C273BD4();
    sub_22C273B74();
    sub_22BE25C08();
    sub_22C2736B4();
    if ((v44 & 0x8000000000000000) == 0)
    {
      v38 = v4;
      v27 = 0;
      v40 = (v45 + 16);
      while (!__OFADD__(v27, 1))
      {
        v46 = v27 + 1;
        v28 = sub_22C273764();
        (*v40)(v0);
        v29 = sub_22BE287D4();
        v28(v29);
        v42(v0, v43);
        if (v47)
        {
          v34 = sub_22C1AE370();
          v35(v34, AssociatedTypeWitness);
          v36 = sub_22BE1B5F8();
          v37(v36);

          (*(v9 + 32))(v39, v43, v38);
          goto LABEL_10;
        }

        v47 = 0;
        v30 = sub_22C1AE370();
        v31(v30, AssociatedTypeWitness);
        sub_22C273BB4();
        sub_22C273704();
        ++v27;
        if (v46 == v44)
        {
          v32 = sub_22BE1B5F8();
          v33(v32);
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_22C273524();
LABEL_10:
    sub_22BE18478();
  }
}

uint64_t sub_22C194FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v23[1] = a2;
  v5 = sub_22C26E1D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v23 - v15;
  sub_22BE2B9D0(a1, v23 - v15, &qword_27D9082F0, &qword_22C27AB00);
  if (sub_22BE1AEA8(v16, 1, v5) == 1)
  {
    v17 = sub_22BE5CE4C(&qword_27D915388, &qword_22C2CB4F0);
    v18 = a3;
    v19 = 1;
  }

  else
  {
    (*(v6 + 32))(v12, v16, v5);
    v20 = sub_22BE5CE4C(&qword_27D915388, &qword_22C2CB4F0);
    v21 = *(v20 + 48);
    (*(v6 + 16))(v10, v12, v5);
    *a3 = sub_22C1A8914(&a3[v21], v10);
    (*(v6 + 8))(v12, v5);
    v18 = a3;
    v19 = 0;
    v17 = v20;
  }

  return sub_22BE19DC4(v18, v19, 1, v17);
}

uint64_t sub_22C19522C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if (sub_22BE1AEA8(v24, 1, v15) == 1)
  {
    return sub_22BE19DC4(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

void TailTranscriptProtocol.firstUnusedStatementIdIndex.getter()
{
  sub_22BE19460();
  v25 = v1;
  v3 = sub_22BE37C44(*(v2 + 8));
  sub_22BE18000(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  sub_22BE1AD04();
  WitnessTable = swift_getWitnessTable();
  sub_22C1AE268();
  v7 = sub_22C273CD4();
  sub_22BE179D8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  sub_22BE7431C(&qword_27D915318, &qword_22C2CB490);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22BE25CB4();
  sub_22C273BF4();
  swift_getWitnessTable();
  sub_22C1AE274();
  v13 = sub_22C273CB4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE46BB4();
  v14 = sub_22C273BF4();
  sub_22BE179D8(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E64();
  MEMORY[0x2318ABA30](v25, v0);
  MEMORY[0x2318AB6A0](v3, WitnessTable);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE25BA0();
  swift_getWitnessTable();
  sub_22BE35DC0();
  sub_22C273D64();
  v20 = *(v9 + 8);
  v21 = sub_22BE291B0();
  v22(v21);
  swift_getWitnessTable();
  sub_22C2733A4();
  (*(v16 + 8))(v13, v14);
  v23 = v26;
  if (v27)
  {
    v23 = 0;
  }

  if (v23 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_22BE1AABC();
  }
}

void TailTranscriptProtocol.event(forId:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = type metadata accessor for Session.Event(0);
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v57 = v7;
  sub_22BE3EB10();
  v9 = *(v8 + 8);
  sub_22BE3A540();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22C1AE2B0();
  v59 = sub_22C273844();
  v17 = sub_22BE179D8(v59);
  v56 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_22BE409C8();
  sub_22BE37660();
  v25 = *(*(sub_22C26F7B4() - 8) + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE25CD0();
  sub_22BE35838();
  sub_22C2736C4();
  sub_22BE1C3BC();
  swift_getWitnessTable();
  v27 = AssociatedTypeWitness;
  v28 = sub_22C273394();
  v60 = sub_22C2734A4();
  v58 = (v12 + 32);
  for (i = (v12 + 8); ; (*i)(v0, v27))
  {
    sub_22BE31038();
    if (v60 == sub_22C273564())
    {
      v30 = v23;
      v31 = 1;
      goto LABEL_7;
    }

    v32 = v27;
    sub_22BE31038();
    v33 = sub_22C273544();
    sub_22C2734E4();
    if ((v33 & 1) == 0)
    {
      break;
    }

    v34 = *(TupleTypeMetadata2 - 8);
    v35 = *(v34 + 16);
    v34 += 16;
    v36 = v28 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v38 = sub_22BE28EC0();
    v39(v38);
LABEL_6:
    v27 = v32;
    sub_22C2735A4();
    v30 = v23;
    v31 = 0;
LABEL_7:
    sub_22BE19DC4(v30, v31, 1, TupleTypeMetadata2);
    v40 = *(v56 + 32);
    v41 = sub_22BE41FB4();
    v42(v41);
    sub_22BE3E950(v2);
    if (v43)
    {

      sub_22BE3C664();
      swift_getTupleTypeMetadata2();
      sub_22BE1A140();
LABEL_14:
      sub_22BE19DC4(v50, v51, v52, v53);
      sub_22BE1AABC();
      return;
    }

    v44 = *(TupleTypeMetadata2 + 48);
    v45 = *v58;
    (*v58)(v0, v2, v27);
    sub_22BE18B40();
    sub_22BE3F300();
    if (sub_22C26E1B4())
    {

      sub_22BE3C664();
      v54 = *(swift_getTupleTypeMetadata2() + 48);
      v55 = sub_22BE23108();
      v45(v55);
      sub_22BE18B40();
      sub_22BE3F300();
      sub_22BE25FFC();
      goto LABEL_14;
    }

    sub_22BE18F8C();
    sub_22BE1AE00(v57, v46);
  }

  sub_22BE1804C();
  v47 = sub_22C273AF4();
  if (*(*(TupleTypeMetadata2 - 8) + 64) == 8)
  {
    sub_22BE23F18(v47);
    v48 = sub_22BE28EC0();
    v49(v48);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22C195BC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v52 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Session.Event(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(a1 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = &v46 - v12;
  v55 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = sub_22C273844();
  v46 = *(v54 - 8);
  v14 = *(v46 + 64);
  v15 = MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = sub_22C26F7B4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v57 = sub_22C26F7A4();
  v47 = *(v57 - 8);
  v24 = *(v47 + 64);
  MEMORY[0x28223BE20](v57);
  v26 = &v46 - v25;
  sub_22C2736C4();
  v56 = v26;
  sub_22C26F784();
  (*(v20 + 8))(v23, v19);
  v27 = (v46 + 32);
  v28 = (v10 + 32);
  v29 = (v10 + 8);
  while (1)
  {
    v30 = v53;
    sub_22C26F794();
    (*v27)(v18, v30, v54);
    if (sub_22BE1AEA8(v18, 1, TupleTypeMetadata2) == 1)
    {
      (*(v47 + 8))(v56, v57);
      v39 = swift_getTupleTypeMetadata2();
      v40 = v48;
      v41 = 1;
      return sub_22BE19DC4(v40, v41, 1, v39);
    }

    v31 = AssociatedTypeWitness;
    v32 = TupleTypeMetadata2;
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = *v28;
    v35 = v51;
    (*v28)(v51, v18, v31);
    v36 = v50;
    sub_22BE3F300();
    v37 = *(v55 + 28);
    v38 = v49;
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      break;
    }

    sub_22BE1AE00(v36, type metadata accessor for Session.Event);
    (*v29)(v35, v31);
    sub_22BE1AE00(v38, type metadata accessor for Session.Event.Payload);
    AssociatedTypeWitness = v31;
    TupleTypeMetadata2 = v32;
  }

  (*(v47 + 8))(v56, v57);
  sub_22BE1AE00(v38, type metadata accessor for Session.Event.Payload);
  v42 = swift_getTupleTypeMetadata2();
  v43 = *(v42 + 48);
  v44 = v48;
  v34(v48, v35, v31);
  sub_22BE3F300();
  v40 = v44;
  v41 = 0;
  v39 = v42;
  return sub_22BE19DC4(v40, v41, 1, v39);
}

void TailTranscriptProtocol.requestWithPlannerCommitEvent(plannerCommitEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v139 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v135 = v30;
  v31 = sub_22C26E1D4();
  v32 = sub_22BE179D8(v31);
  v140 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v138 = v36;
  v145 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v145);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  v144 = v40;
  v41 = *(v25 + 8);
  v42 = v29;
  v43 = *(v41 + 8);
  v146 = *(v43 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v137 = v45;
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  v50 = sub_22BE268D0(v49, v130);
  v51 = type metadata accessor for Session.Event(v50);
  v52 = sub_22BE18000(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v151 = v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E94();
  sub_22BE4152C(v57);
  sub_22BE17C68();
  v147 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  sub_22BE18950(v62);
  v63 = sub_22C273CD4();
  sub_22BE19448(v63);
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  sub_22BE18950(v67);
  v149 = v43;
  v134 = sub_22C273CC4();
  sub_22BE179D8(v134);
  v133 = v68;
  v70 = *(v69 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1B01C();
  v72 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v73 = sub_22BE19448(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  v143 = v76;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v77);
  sub_22BE19E94();
  v79 = v78;
  v80 = sub_22BE183BC();
  v81 = type metadata accessor for Session.Event.Payload(v80);
  v82 = sub_22BE18000(v81);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE183AC();
  v87 = v85 - v86;
  MEMORY[0x28223BE20](v88);
  v90 = &v130 - v89;
  v91 = *(v51 + 28);
  sub_22BE1C08C();
  sub_22BE1AA10();
  v148 = v81;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v150 = v51;
  if (EnumCaseMultiPayload != 15)
  {
    sub_22BE17E60();
    sub_22BE1AE00(v90, v127);
    goto LABEL_19;
  }

  v142 = *(v51 + 24);
  sub_22BE2B9D0(v42 + v142, v79, &qword_27D9082F0, &qword_22C27AB00);
  v93 = 1;
  v94 = sub_22BE3C598();
  v131 = sub_22BE1AEA8(v94, v95, v31);
  sub_22BE33928(v79, &qword_27D9082F0, &qword_22C27AB00);
  v96 = v135;
  if (v131 != 1)
  {
    v97 = v147[2];
    v97(v132, v139, v27);
    sub_22BE3C6E0(&a13);
    MEMORY[0x2318AB6A0](v27, v149);
    v98 = sub_22BE25C08();
    (v97)(v98);
    v99 = *(v134 + 36);
    sub_22C2736F4();
    v100 = sub_22BE2399C();
    v101(v100, v27);
    v147 = (v137 + 1);
    v137 = (v140 + 4);
    ++v140;
    v136 = v42;
    v141 = AssociatedTypeWitness;
    while (1)
    {
      while (1)
      {
        sub_22C2736B4();
        v102 = *(swift_getAssociatedConformanceWitness() + 8);
        v103 = sub_22C272FD4();
        v104 = *v147;
        v105 = sub_22BE1BF88();
        v106(v105);
        if (v103)
        {
          sub_22BE1B5D4(&a15);
          v129(v21, v134);
LABEL_19:
          v93 = 1;
          v96 = v135;
          goto LABEL_21;
        }

        sub_22C272F84();
        v107 = sub_22C273764();
        sub_22BE1A7F8();
        sub_22BE1AA10();
        v108 = sub_22BE287D4();
        v107(v108);
        sub_22BE18B40();
        v109 = v151;
        sub_22BE3F300();
        v110 = v150;
        v111 = *(v150 + 28);
        sub_22BE1C08C();
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          break;
        }

        sub_22BE18F8C();
        sub_22BE1AE00(v109, v117);
        sub_22BE17E60();
        sub_22BE1AE00(v87, v118);
      }

      sub_22BE17E60();
      sub_22BE1AE00(v87, v112);
      v113 = *(v110 + 24);
      v114 = v144;
      v115 = *(v145 + 48);
      sub_22BE2B9D0(v109 + v113, v144, &qword_27D9082F0, &qword_22C27AB00);
      sub_22BE2B9D0(v42 + v142, v114 + v115, &qword_27D9082F0, &qword_22C27AB00);
      sub_22BE3E950(v114);
      if (v119)
      {
        break;
      }

      sub_22BE2B9D0(v114, v143, &qword_27D9082F0, &qword_22C27AB00);
      sub_22BE3E950(v114 + v115);
      if (v119)
      {
        sub_22BE3CBEC();
        v120 = sub_22BE354DC();
        v121(v120);
        v116 = v114;
LABEL_15:
        sub_22BE33928(v116, &qword_27D90A8E8, &qword_22C288AF8);
        v122 = v151;
        goto LABEL_17;
      }

      (*v137)(v138, v114 + v115, v31);
      sub_22BE28D14();
      sub_22C1AE190(&qword_27D9071C8, v123);
      LODWORD(v139) = sub_22C272FD4();
      v124 = *v140;
      v125 = sub_22BE354DC();
      v124(v125);
      (v124)(v143, v31);
      v42 = v136;
      sub_22BE33928(v114, &qword_27D9082F0, &qword_22C27AB00);
      v122 = v151;
      if (v139)
      {
        goto LABEL_20;
      }

LABEL_17:
      sub_22BE18F8C();
      sub_22BE1AE00(v122, v126);
    }

    sub_22BE3E950(v114 + v115);
    v116 = v114;
    if (v119)
    {
      sub_22BE33928(v114, &qword_27D9082F0, &qword_22C27AB00);
LABEL_20:
      sub_22BE1B5D4(&a15);
      v128(v21, v134);
      sub_22BE18B40();
      v96 = v135;
      sub_22BE3F300();
      v93 = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_21:
  sub_22BE19DC4(v96, v93, 1, v150);
  sub_22BE1AABC();
}

uint64_t sub_22C196A1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22BE3F300();
    v7 = 0;
  }

  else
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    v7 = 1;
  }

  v8 = type metadata accessor for Request(0);
  return sub_22BE19DC4(a1, v7, 1, v8);
}

void TailTranscriptProtocol.latestTextOrSpeechRequest()()
{
  sub_22BE19460();
  v5 = v4;
  v7 = v6;
  v107[3] = v8;
  v9 = type metadata accessor for RequestContent.SpeechContent(0);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v14 = sub_22BE18950(v13);
  v15 = type metadata accessor for RequestContent.TextContent(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v20 = sub_22BE18950(v19);
  v116 = type metadata accessor for Session.Event.Payload(v20);
  v21 = sub_22BE18000(v116);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  v115 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE409C8();
  v26 = type metadata accessor for Request(0);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v109 = v30;
  v31 = sub_22BE183BC();
  v108 = type metadata accessor for RequestContent(v31);
  v32 = sub_22BE18000(v108);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v111 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  sub_22BE190A8(v37);
  v118 = v5;
  v38 = *(*(*(v5 + 8) + 8) + 8);
  sub_22BE3C664();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v112 = v40;
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE23E58();
  v123 = AssociatedTypeWitness;
  v114 = type metadata accessor for Session.Event(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BE1C0A4();
  v45 = sub_22C273844();
  v46 = sub_22BE179D8(v45);
  v121 = v47;
  v122 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v50);
  v52 = v107 - v51;
  sub_22BE37660();
  v53 = sub_22C26F7B4();
  sub_22BE18000(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1AEF0();
  sub_22BE33560();
  v119 = v1;
  sub_22C2736C4();
  sub_22BE1C3BC();
  swift_getWitnessTable();
  v57 = sub_22C273394();
  v58 = sub_22C2734A4();
  v110 = TupleTypeMetadata2 - 8;
  v125 = v58;
  v120 = (v112 + 32);
  v121 += 32;
  v117 = v7;
  v59 = v7 - 8;
  v60 = v3;
  v112 += 8;
  v113 = v59;
  v61 = v123;
  while (1)
  {
    v62 = sub_22C273564();
    v63 = v125;
    if (v125 == v62)
    {
      v64 = v2;
      v65 = 1;
      goto LABEL_7;
    }

    v66 = sub_22C273544();
    sub_22C2734E4();
    if ((v66 & 1) == 0)
    {
      break;
    }

    (*(*(TupleTypeMetadata2 - 8) + 16))(v2, v57 + ((*(*(TupleTypeMetadata2 - 8) + 80) + 32) & ~*(*(TupleTypeMetadata2 - 8) + 80)) + *(*(TupleTypeMetadata2 - 8) + 72) * v63, TupleTypeMetadata2);
LABEL_6:
    sub_22C2735A4();
    v64 = v2;
    v65 = 0;
LABEL_7:
    sub_22BE19DC4(v64, v65, 1, TupleTypeMetadata2);
    v67 = sub_22C1AE370();
    v68(v67, v2);
    v69 = sub_22BE406A0();
    sub_22BE1AB5C(v69, v70, TupleTypeMetadata2);
    if (v71)
    {

      swift_getTupleTypeMetadata2();
      sub_22BE1A140();
LABEL_19:
      sub_22BE19DC4(v95, v96, v97, v98);
      sub_22BE1AABC();
      return;
    }

    v72 = &v52[*(TupleTypeMetadata2 + 48)];
    v73 = *v120;
    v74 = sub_22BE1AEE4();
    v73(v74);
    v75 = *(v114 + 28);
    sub_22BE1C08C();
    v76 = v60;
    v77 = v0;
    v78 = v115;
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v72, v79);
    v80 = v117;
    v124[3] = v117;
    v124[4] = v118;
    v81 = sub_22BE62524(v124);
    (*(*(v80 - 8) + 16))(v81, v119, v80);
    Session.Event.Payload.applyingRequestAmendment(transcript:)();
    sub_22BE17E60();
    v82 = v78;
    v0 = v77;
    sub_22BE1AE00(v82, v83);
    sub_22BE26B64(v124);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v60 = v76;
      sub_22BE33AD4();
      v84 = v109;
      sub_22BE3F300();
      sub_22BE3C410();
      sub_22BE1AA10();
      sub_22BE23DDC();
      sub_22BE1AE00(v84, v85);
      sub_22BE3CB0C();
      sub_22BE3F300();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:

          sub_22BE255A0();
          v99 = v107[1];
          sub_22BE3F300();
          sub_22BE3A540();
          v100 = swift_getTupleTypeMetadata2();
          v101 = sub_22BE23A68(v100);
          v73(v101);
          v103 = *v99;
          v102 = v99[1];

          v104 = type metadata accessor for RequestContent.TextContent;
          break;
        case 2u:

          sub_22BE37464();
          v99 = v107[2];
          sub_22BE3F300();
          sub_22BE3A540();
          v105 = swift_getTupleTypeMetadata2();
          v106 = sub_22BE23A68(v105);
          v73(v106);
          v103 = *v99;
          v102 = v99[1];

          v104 = type metadata accessor for RequestContent.SpeechContent;
          break;
        case 3u:
          sub_22BE3CBEC();
          v90 = sub_22BE35838();
          v91(v90);
          sub_22BE1A408();
          sub_22BE1AE00(v111, v92);
          continue;
        default:
          sub_22BE3CBEC();
          v86 = sub_22BE35838();
          v87(v86);
          continue;
      }

      sub_22BE1AE00(v99, v104);
      *v57 = v103;
      v57[1] = v102;
      sub_22BE25FFC();
      goto LABEL_19;
    }

    sub_22BE3CBEC();
    v88(v76, v61);
    sub_22BE17E60();
    sub_22BE1AE00(v77, v89);
    v60 = v76;
  }

  sub_22BE18040();
  v93 = sub_22C273AF4();
  v94 = *(TupleTypeMetadata2 - 8);
  if (*(v94 + 64) == 8)
  {
    v124[0] = v93;
    (*(v94 + 16))(v2, v124, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

void TailTranscriptProtocol.collectTextSpeechPromptResolutionRequests()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v23;
  a20 = v24;
  v25 = sub_22BE1B2D4();
  v159 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v25);
  v26 = sub_22BE18000(v159);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v30 = sub_22BE18950(v29);
  v158 = type metadata accessor for RequestContent.SystemPromptResolution(v30);
  v31 = sub_22BE18000(v158);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v35 = sub_22BE18950(v34);
  v36 = type metadata accessor for RequestContent.SpeechContent(v35);
  v37 = sub_22BE19448(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  sub_22BE190A8(v40);
  v177 = v20;
  v41 = *(*(*(v20 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE1B68C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BE18000(TupleTypeMetadata2);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  v167 = v45;
  v46 = sub_22BE183BC();
  v47 = type metadata accessor for RequestContent.TextContent(v46);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17A44();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&qword_27D915320, &qword_22C2CB498);
  sub_22BE19448(v52);
  v54 = *(v53 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  sub_22BE234F4();
  v56 = type metadata accessor for RequestContent(0);
  v57 = sub_22BE18000(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v171 = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  v178 = v62;
  v63 = sub_22BE183BC();
  v64 = type metadata accessor for Session.Event(v63);
  v65 = sub_22BE18000(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BE17A44();
  v172 = v68;
  sub_22BE17C68();
  v173 = v69;
  v71 = *(v70 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v72);
  sub_22BE1A174();
  v180 = v73;
  sub_22BE25CB4();
  v74 = swift_getTupleTypeMetadata2();
  sub_22BE46BB4();
  v75 = sub_22C273844();
  v76 = sub_22BE179D8(v75);
  v179 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v80);
  v82 = &v158 - v81;
  sub_22BE3A540();
  v83 = sub_22C26F7B4();
  sub_22BE18000(v83);
  v85 = *(v84 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE25CD0();
  v184 = sub_22C272E34();
  v176 = v21;
  sub_22BE18944();
  sub_22C2736C4();
  sub_22BE1C3BC();
  swift_getWitnessTable();
  v87 = v160;
  v88 = v172;
  v89 = sub_22C273394();
  v90 = sub_22C2734A4();
  v170 = v74 - 8;
  v183 = v90;
  v179 += 4;
  v175 = (v173 + 32);
  v163 = v173 + 16;
  v173 += 8;
  v174 = v89;
  v168 = v21;
  v165 = v56;
  v166 = v22;
  v164 = v75;
  while (1)
  {
    v91 = sub_22C273564();
    v92 = v183;
    if (v183 != v91)
    {
      break;
    }

    v93 = sub_22BE3C598();
LABEL_7:
    sub_22BE19DC4(v93, v94, 1, v74);
    v96 = *v179;
    v97 = sub_22BE23108();
    v98(v97);
    sub_22BE1AB5C(v82, 1, v74);
    if (v99)
    {

      sub_22BE1AABC();
      return;
    }

    v100 = *(v74 + 48);
    v101 = *v175;
    v102 = v180;
    v103 = sub_22BE37490();
    v104(v103);
    sub_22BE18B40();
    sub_22BE3F300();
    sub_22C197CAC(v176, v177, v22);
    sub_22BE3E950(v22);
    if (v99)
    {
      sub_22BE18F8C();
      sub_22BE1AE00(v88, v105);
      sub_22BE3ACFC();
      v106(v102, AssociatedTypeWitness);
      sub_22BE33928(v22, &qword_27D915320, &qword_22C2CB498);
      v89 = v174;
    }

    else
    {
      sub_22BE3CB0C();
      sub_22BE3F300();
      sub_22BE3C410();
      v107 = v171;
      sub_22BE1AA10();
      sub_22BE31038();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 1:
          sub_22BE255A0();
          sub_22C1AE3FC(&a14);
          v88 = *v102;
          v132 = v102[1];
          v133 = v167;
          v134 = (v167 + *(TupleTypeMetadata2 + 48));
          sub_22BE33554(&a18);
          v136 = v180;
          v135 = AssociatedTypeWitness;
          v137(v133, v180, AssociatedTypeWitness);
          *v134 = v88;
          v134[1] = v132;
          sub_22BE37660();
          v22 = v166;
          sub_22C2735B4();
          sub_22BE3E878();
          sub_22BE2362C();
          sub_22BE29148();
          sub_22BE1AE00(v102, v138);
          sub_22BE1A408();
          sub_22BE1AE00(v178, v139);
          sub_22BE18F8C();
          sub_22BE1AE00(v88, v140);
          sub_22BE3ACFC();
          v112 = v136;
          v131 = v135;
          v87 = v160;
          goto LABEL_21;
        case 2:
          sub_22BE37464();
          v113 = v161;
          sub_22BE3F300();
          v115 = *v113;
          v114 = v113[1];
          v116 = sub_22BE361C0();
          v117 = v180;
          v118(v116, v180, AssociatedTypeWitness);
          *v88 = v115;
          v88[1] = v114;
          sub_22BE37660();
          v22 = v166;
          sub_22C2735B4();
          sub_22BE3E878();
          sub_22BE2362C();
          sub_22BE28A40();
          v120 = v113;
          goto LABEL_17;
        case 3:
          sub_22BE22944(&a16);
          sub_22BE3F300();
          v121 = v107 + *(v158 + 32);
          sub_22BE22944(&a17);
          sub_22BE1AA10();
          v122 = swift_getEnumCaseMultiPayload();
          if (!v122)
          {
            sub_22BE255A0();
            sub_22C1AE3FC(&a14);
            v142 = *v102;
            v141 = v102[1];
            v143 = sub_22BE361C0();
            v144 = AssociatedTypeWitness;
            v145(v143, v180, AssociatedTypeWitness);
            *v88 = v142;
            v88[1] = v141;
            sub_22BE37660();
            v22 = v166;
            sub_22C2735B4();
            sub_22BE3E878();
            sub_22BE2362C();
            sub_22BE29148();
            sub_22BE1AE00(v102, v146);
            v147 = sub_22BE3D224();
            sub_22BE1AE00(v147, v148);
            sub_22BE1A408();
            sub_22BE1AE00(v178, v149);
            sub_22BE18F8C();
            sub_22BE1AE00(v88, v150);
            sub_22BE3ACFC();
            v112 = v180;
            v131 = v144;
LABEL_21:
            v111(v112, v131);
            v89 = v174;
            continue;
          }

          if (v122 == 1)
          {
            sub_22BE37464();
            v123 = v161;
            sub_22BE3F300();
            v125 = *v123;
            v124 = v123[1];
            v126 = sub_22BE361C0();
            v117 = v180;
            v127(v126, v180, AssociatedTypeWitness);
            *v88 = v125;
            v88[1] = v124;
            sub_22BE37660();
            v22 = v166;
            sub_22C2735B4();
            sub_22BE3E878();
            sub_22BE2362C();
            sub_22BE28A40();
            sub_22BE1AE00(v123, v128);
            v120 = sub_22BE3D224();
LABEL_17:
            sub_22BE1AE00(v120, v119);
            sub_22BE1A408();
            sub_22BE1AE00(v178, v129);
            sub_22BE18F8C();
            sub_22BE1AE00(v88, v130);
            sub_22BE3ACFC();
            v112 = v117;
LABEL_18:
            v131 = AssociatedTypeWitness;
            goto LABEL_21;
          }

          v151 = sub_22BE3D224();
          sub_22BE1AE00(v151, v152);
          sub_22BE1A408();
          sub_22BE1AE00(v178, v153);
          sub_22BE18F8C();
          sub_22BE1AE00(v88, v154);
          sub_22BE3ACFC();
          v155(v180, AssociatedTypeWitness);
          sub_22BE1AE00(v162, type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput);
          v89 = v174;
          break;
        default:
          sub_22BE1A408();
          sub_22BE1AE00(v178, v109);
          sub_22BE18F8C();
          sub_22BE1AE00(v88, v110);
          sub_22BE3ACFC();
          v112 = v180;
          goto LABEL_18;
      }
    }
  }

  v95 = sub_22C273544();
  sub_22C2734E4();
  if (v95)
  {
    (*(*(v74 - 8) + 16))(v87, v89 + ((*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80)) + *(*(v74 - 8) + 72) * v92, v74);
LABEL_6:
    v88 = v172;
    sub_22C2735A4();
    v93 = v87;
    v94 = 0;
    goto LABEL_7;
  }

  sub_22BE18944();
  v156 = sub_22C273AF4();
  v157 = *(v74 - 8);
  if (*(v157 + 64) == 8)
  {
    v182 = v156;
    (*(v157 + 16))(v87, &v182, v74);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22C197CAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ExternalAgentRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Request(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Session.Event.Payload(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for Session.Event(0) + 28);
  v28[3] = a1;
  v28[4] = a2;
  v20 = sub_22BE62524(v28);
  (*(*(a1 - 8) + 16))(v20, v3, a1);
  Session.Event.Payload.applyingRequestAmendment(transcript:)();
  sub_22BE26B64(v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 22)
  {
    sub_22BE3F300();
    sub_22BE1AA10();
    v22 = type metadata accessor for ExternalAgentRequest;
    v23 = v10;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22BE3F300();
    sub_22BE1AA10();
    v22 = type metadata accessor for Request;
    v23 = v14;
LABEL_5:
    sub_22BE1AE00(v23, v22);
    v24 = type metadata accessor for RequestContent(0);
    return sub_22BE19DC4(a3, 0, 1, v24);
  }

  v26 = type metadata accessor for RequestContent(0);
  sub_22BE19DC4(a3, 1, 1, v26);
  return sub_22BE1AE00(v18, type metadata accessor for Session.Event.Payload);
}

void TailTranscriptProtocol.allTextOrSpeechRequests()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v142 = v20;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for RequestContent.SpeechContent(0);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  sub_22BE190A8(v32);
  v149 = v25;
  v33 = *(*(*(v25 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE1B68C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BE18000(TupleTypeMetadata2);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  v40 = sub_22BE18950(v39);
  v41 = type metadata accessor for RequestContent.TextContent(v40);
  v42 = sub_22BE19448(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v46 = sub_22BE18950(v45);
  v144 = type metadata accessor for RequestContent(v46);
  v47 = sub_22BE18000(v144);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  v145 = v50;
  v51 = sub_22BE183BC();
  v52 = type metadata accessor for Session.Event.Payload(v51);
  v53 = sub_22BE18000(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE17B98();
  v147 = v56;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v57);
  sub_22BE19E94();
  v146 = v58;
  v59 = sub_22BE183BC();
  v60 = type metadata accessor for Request(v59);
  v61 = sub_22BE19448(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v151 = v64;
  sub_22BE17C68();
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE1A174();
  sub_22BE190A8(v68);
  v154 = AssociatedTypeWitness;
  v69 = type metadata accessor for Session.Event(255);
  v70 = swift_getTupleTypeMetadata2();
  sub_22BE3C50C();
  v71 = sub_22C273844();
  v72 = sub_22BE179D8(v71);
  v152 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE183AC();
  v78 = v76 - v77;
  MEMORY[0x28223BE20](v79);
  sub_22BE181E4();
  sub_22BE1C0A4();
  v80 = sub_22C26F7B4();
  sub_22BE18000(v80);
  v82 = *(v81 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v83);
  sub_22BE1A8B4();
  v157 = sub_22C272E34();
  sub_22C2736C4();
  sub_22BE1C3BC();
  swift_getWitnessTable();
  v84 = v78;
  v85 = sub_22C273394();
  v156 = sub_22C2734A4();
  v153 = (v152 + 32);
  v148 = v27;
  v86 = v142;
  v87 = v139;
  v88 = v85;
  v141 = v69;
  v143 = v84;
  v150 = v85;
  while (1)
  {
    sub_22BE191C0();
    v89 = sub_22C273564();
    v90 = v156;
    if (v156 == v89)
    {
      v91 = sub_22BE406A0();
      goto LABEL_7;
    }

    sub_22BE191C0();
    v93 = sub_22C273544();
    sub_22C2734E4();
    if ((v93 & 1) == 0)
    {
      break;
    }

    (*(*(v70 - 8) + 16))(v84, v88 + ((*(*(v70 - 8) + 80) + 32) & ~*(*(v70 - 8) + 80)) + *(*(v70 - 8) + 72) * v90, v70);
LABEL_6:
    sub_22C2735A4();
    v91 = v84;
    v92 = 0;
LABEL_7:
    sub_22BE19DC4(v91, v92, 1, v70);
    v94 = *v153;
    v95 = sub_22BE36658();
    v96(v95);
    sub_22BE1A940();
    sub_22BE1AB5C(v97, v98, v99);
    if (v100)
    {

      sub_22BE1AABC();
      return;
    }

    v101 = v21 + *(v70 + 48);
    sub_22BE3CBEC();
    v102 = sub_22BE324FC();
    v103(v102);
    v104 = *(v69 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v101, v105);
    v155[3] = v148;
    v155[4] = v149;
    v106 = sub_22BE62524(v155);
    (*(*(v148 - 8) + 16))(v106, v86, v148);
    v107 = v87;
    Session.Event.Payload.applyingRequestAmendment(transcript:)();
    sub_22BE17E60();
    sub_22BE1AE00(v147, v108);
    sub_22BE26B64(v155);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33AD4();
      sub_22BE3F300();
      sub_22BE3C410();
      sub_22BE1AA10();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22BE255A0();
          sub_22BE3F300();
          v129 = *v140;
          v128 = v140[1];
          sub_22BE46DC8();
          v131 = *(v130 - 256);
          v133 = (v131 + v132);
          sub_22BE33554(&a11);
          v134(v131, v107, v154);
          *v133 = v129;
          v133[1] = v128;
          v86 = v142;
          sub_22BE37660();
          sub_22C2735B4();

          v87 = v107;
          v69 = v141;
          sub_22C273574();
          sub_22BE29148();
          sub_22BE1AE00(v140, v135);
          sub_22BE23DDC();
          sub_22BE1AE00(v151, v136);
          sub_22BE3CE5C();
          v123 = v107;
          v124 = v154;
          goto LABEL_16;
        case 2u:
          sub_22BE37464();
          sub_22C1AE3FC(&a10);
          v114 = *v69;
          v113 = *(v69 + 8);
          sub_22BE46DC8();
          v116 = *(v115 - 256);
          v118 = (v116 + v117);
          sub_22BE33554(&a11);
          v119(v116, v87, v154);
          *v118 = v114;
          v118[1] = v113;
          v86 = v142;
          sub_22BE37660();
          sub_22C2735B4();

          sub_22C273574();
          sub_22BE28A40();
          v120 = v69;
          v69 = v141;
          sub_22BE1AE00(v120, v121);
          sub_22BE23DDC();
          sub_22BE1AE00(v151, v122);
          sub_22BE3CE5C();
          goto LABEL_13;
        case 3u:
          sub_22BE23DDC();
          sub_22BE1AE00(v151, v125);
          sub_22BE3CE5C();
          v126(v87, v154);
          sub_22BE1A408();
          sub_22BE1AE00(v145, v127);
          goto LABEL_17;
        default:
          sub_22BE23DDC();
          sub_22BE1AE00(v151, v109);
          sub_22BE3CE5C();
LABEL_13:
          v123 = v87;
          v124 = v154;
LABEL_16:
          v110(v123, v124);
LABEL_17:
          v84 = v143;
          v88 = v150;
          break;
      }
    }

    else
    {
      sub_22BE3CE5C();
      v111(v87, v154);
      sub_22BE17E60();
      sub_22BE1AE00(v146, v112);
      v88 = v150;
    }
  }

  v137 = sub_22C273AF4();
  v138 = *(v70 - 8);
  if (*(v138 + 64) == 8)
  {
    v155[0] = v137;
    (*(v138 + 16))(v84, v155, v70);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22C1987FC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for Session.Event(0) + 52));
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  if (*v1 == 0x746E65696C63 && v2 == 0xE600000000000000)
  {
    return 1;
  }

  return sub_22C274014();
}

void __swiftcall TailTranscriptProtocol.latestPlan()(IntelligenceFlowPlannerSupport::Session::Plan_optional *__return_ptr retstr)
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE29420(v4, v5);
  v7 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BE1C0A4();
  v10 = sub_22C273844();
  sub_22BE179D8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE25CD0();
  sub_22BE392D4();
  TailTranscriptProtocol.latestPlanAndIndex()();
  sub_22BE1AB5C(v1, 1, TupleTypeMetadata2);
  if (v16)
  {
    (*(v12 + 8))(v1, v10);
    *(v3 + 41) = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  else
  {
    v17 = (v1 + *(TupleTypeMetadata2 + 48));
    v18 = v17[1];
    *v3 = *v17;
    v3[1] = v18;
    v3[2] = v17[2];
    *(v3 + 41) = *(v17 + 41);
    sub_22BE1BC24(AssociatedTypeWitness);
    v20 = *(v19 + 8);
    v21 = sub_22BE232C8();
    v22(v21);
  }

  sub_22BE1AABC();
}

void TailTranscriptProtocol.latestPlanAndIndex()()
{
  sub_22BE19460();
  v1 = v0;
  v63 = v2;
  v68 = type metadata accessor for Session.Event.Payload(0);
  v3 = sub_22BE18000(v68);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v67 = v6;
  sub_22BE3EB10();
  v8 = *(v7 + 8);
  sub_22BE3A540();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v66 = type metadata accessor for Session.Event(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22C1AE2B0();
  v70 = sub_22C273844();
  v16 = sub_22BE179D8(v70);
  v64 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  sub_22BE409C8();
  sub_22BE3C50C();
  v24 = sub_22C26F7B4();
  sub_22BE18000(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE234F4();
  sub_22BE25EFC();
  sub_22C2736C4();
  sub_22BE1C3BC();
  swift_getWitnessTable();
  v28 = AssociatedTypeWitness;
  v29 = sub_22C273394();
  v74 = sub_22C2734A4();
  v30 = (v64 + 32);
  v69 = (v11 + 32);
  v65 = (v11 + 8);
  while (1)
  {
    sub_22BE31038();
    if (v74 == sub_22C273564())
    {
      v31 = v22;
      v32 = 1;
      goto LABEL_7;
    }

    v33 = v28;
    sub_22BE31038();
    v34 = sub_22C273544();
    sub_22C2734E4();
    if ((v34 & 1) == 0)
    {
      break;
    }

    v35 = *(TupleTypeMetadata2 - 8);
    v36 = *(v35 + 16);
    v35 += 16;
    v37 = v29 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v39 = sub_22BE28EC0();
    v40(v39);
LABEL_6:
    v28 = v33;
    sub_22C2735A4();
    v31 = v22;
    v32 = 0;
LABEL_7:
    sub_22BE19DC4(v31, v32, 1, TupleTypeMetadata2);
    v41 = *v30;
    v42 = sub_22BE41FB4();
    v43(v42);
    sub_22BE3E950(v1);
    if (v44)
    {

      sub_22BE37660();
      swift_getTupleTypeMetadata2();
      sub_22BE1A140();
LABEL_14:
      sub_22BE19DC4(v57, v58, v59, v60);
      sub_22BE1AABC();
      return;
    }

    v45 = v1 + *(TupleTypeMetadata2 + 48);
    v46 = *v69;
    v47 = sub_22BE1AB74();
    v46(v47);
    v48 = *(v66 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v45, v49);
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      v71 = *v67;
      v72 = v67[1];
      *v73 = v67[2];
      *&v73[9] = *(v67 + 41);
      sub_22BE37660();
      v61 = (v63 + *(swift_getTupleTypeMetadata2() + 48));
      v62 = sub_22BE191CC();
      v46(v62);
      *v61 = v71;
      v61[1] = v72;
      v61[2] = *v73;
      *(v61 + 41) = *&v73[9];
      sub_22BE25FFC();
      goto LABEL_14;
    }

    v50 = *v65;
    v51 = sub_22BE1BF88();
    v52(v51);
    sub_22BE17E60();
    sub_22BE1AE00(v67, v53);
  }

  sub_22BE431C0();
  sub_22C273AF4();
  if (*(*(TupleTypeMetadata2 - 8) + 64) == 8)
  {
    v54 = *(*(TupleTypeMetadata2 - 8) + 16);
    v55 = sub_22BE28EC0();
    v56(v55);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Bool __swiftcall TailTranscriptProtocol.isSafetyModeEnabled()()
{
  sub_22BE19460();
  v5 = v4;
  v7 = v6;
  v62 = type metadata accessor for Request(0);
  v8 = sub_22BE18000(v62);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v61 = v11;
  v12 = sub_22BE183BC();
  v68 = type metadata accessor for Session.Event.Payload(v12);
  v13 = sub_22BE18000(v68);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE35AE8();
  v16 = *(*(*(v5 + 8) + 8) + 8);
  v17 = *(*(v5 + 8) + 8);
  sub_22C1AE2B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v65 = v19;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B72C();
  v67 = type metadata accessor for Session.Event(0);
  v23 = sub_22BE18000(v67);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE1B1C4();
  sub_22BE17C68();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE2379C();
  sub_22BE46BB4();
  v31 = sub_22C273CD4();
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v64 = v35;
  sub_22BE183BC();
  sub_22BE35F50();
  v36 = sub_22C273CC4();
  v66 = sub_22BE179D8(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE25CD0();
  v63 = *(v27 + 16);
  v63(v0, v0, v7);
  MEMORY[0x2318AB6A0](v7, v17);
  v63(v1, v64, v7);
  v40 = *(v66 + 36);
  sub_22BE354DC();
  sub_22C2736F4();
  v41 = sub_22BE28D70();
  v42(v41, v7);
  while (1)
  {
    sub_22BE354DC();
    sub_22C2736B4();
    sub_22BE392D4();
    v43 = *(swift_getAssociatedConformanceWitness() + 8);
    v44 = sub_22C1AE4B4();
    v45 = *(v65 + 8);
    v46 = sub_22BE41FB4();
    v47(v46);
    if (v44)
    {
      goto LABEL_6;
    }

    sub_22C272F84();
    v48 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v49 = sub_22BE1812C();
    v48(v49);
    v50 = *(v67 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v3, v51);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
LABEL_6:
      v54 = sub_22BE1B5F8();
      v55(v54);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      break;
    }

    sub_22BE17E60();
    sub_22BE1AE00(v2, v53);
  }

  v56 = sub_22BE1B5F8();
  v57(v56);
  sub_22BE33AD4();
  sub_22BE3F300();
  v58 = *(v61 + *(v62 + 20));
  sub_22BE23DDC();
  sub_22BE1AE00(v61, v59);
LABEL_8:
  sub_22BE1AABC();
  return result;
}

void TailTranscriptProtocol.clientActionStepExists(id:)()
{
  sub_22BE19460();
  v59 = v0;
  v3 = v2;
  v5 = v4;
  v62 = type metadata accessor for Session.Event.Payload(0);
  v6 = sub_22BE18000(v62);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE4152C(v9);
  v10 = *(*(*(v3 + 8) + 8) + 8);
  v11 = *(*(v3 + 8) + 8);
  sub_22BE37660();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v57 = v13;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v17 = sub_22BE183BC();
  v60 = type metadata accessor for Session.Event(v17);
  v18 = sub_22BE18000(v60);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  sub_22BE17C68();
  v26 = v25;
  v56 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE2379C();
  sub_22BE1B68C();
  v30 = sub_22C273CD4();
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1B01C();
  sub_22BE1B68C();
  v34 = sub_22C273CC4();
  sub_22BE179D8(v34);
  v58 = v35;
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1AEF0();
  v39 = *(v26 + 16);
  v39(v3, v59, v5);
  MEMORY[0x2318AB6A0](v5, v11);
  v39(v11, v1, v5);
  v40 = *(v34 + 36);
  sub_22C2736F4();
  v41 = *(v56 + 8);
  v42 = sub_22BE291B0();
  v43(v42);
  while (1)
  {
    sub_22C2736B4();
    sub_22BE39EAC();
    v44 = *(swift_getAssociatedConformanceWitness() + 8);
    v45 = sub_22C272FD4();
    v46 = *(v57 + 8);
    v47 = sub_22BE191C0();
    v48(v47);
    if (v45)
    {
      break;
    }

    sub_22C272F84();
    v49 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v50 = sub_22BE1812C();
    v49(v50);
    sub_22BE18B40();
    sub_22BE1AEE4();
    sub_22BE3F300();
    if (sub_22C26E1B4())
    {
      v51 = *(v60 + 28);
      sub_22BE1C08C();
      sub_22BE1AA10();
      sub_22BE18F8C();
      sub_22BE1AE00(v23, v52);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        (*(v58 + 8))(v11, v34);
        sub_22BE17E60();
        sub_22BE1AE00(v61, v55);
        goto LABEL_9;
      }

      sub_22BE17E60();
      v54 = v61;
    }

    else
    {
      sub_22BE18F8C();
      v54 = v23;
    }

    sub_22BE1AE00(v54, v53);
  }

  (*(v58 + 8))(v11, v34);
LABEL_9:
  sub_22BE1AABC();
}

void TailTranscriptProtocol.latestToolRetrievalResponse()()
{
  sub_22BE19460();
  sub_22C1AE238(v0, v1);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22BE22ED0();
  v24 = sub_22C273AC4();
  sub_22BE179D8(v24);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE17C68();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  sub_22BE17C68();
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  sub_22BE7431C(&qword_27D915328, &qword_22C2CB4A0);
  sub_22C1AE274();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE1B68C();
  v11 = sub_22C273BF4();
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE1BCD4();
  v16(v15);
  sub_22BE32D9C();
  sub_22BE3AE3C();
  v17 = sub_22C1AE3C0();
  v18(v17);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE272E4();
  sub_22C273D64();
  v19 = sub_22BE1B5F8();
  v20(v19, v24);
  sub_22BE1BB98();
  WitnessTable = swift_getWitnessTable();
  sub_22BE197EC(WitnessTable);
  swift_getWitnessTable();
  sub_22C1AE1F8();
  sub_22BE3CD40();
  sub_22BE3E8FC();
  swift_getWitnessTable();
  sub_22BE3BFD4();
  v22 = sub_22C1AE34C();
  v23(v22, v11);
  sub_22BE1AABC();
}

uint64_t sub_22C199A28@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_22C271A34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v12 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Session.Event.Payload(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  result = swift_getEnumCaseMultiPayload();
  if (result == 30)
  {
    sub_22BE3F300();
    sub_22BE2B9D0(&v14[*(DecorationResult + 20)], v5, &qword_27D912018, &unk_22C2B7810);
    if (sub_22BE1AEA8(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v21 = sub_22C2719E4();
      v22 = v28;
      v23 = sub_22C2719F4();
      v24 = v29;
      sub_22C271A04();
      v31 = v30;
      v32 = sub_22C271A14();
      v35 = v6;
      v33 = v7;
      v26 = v32;
      v27 = sub_22C271A24();
      (*(v33 + 8))(v10, v35);
      result = sub_22BE1AE00(v14, type metadata accessor for QueryDecorationResult);
      v25 = v31;
      goto LABEL_9;
    }

    sub_22BE1AE00(v14, type metadata accessor for QueryDecorationResult);
    result = sub_22BE33928(v5, &qword_27D912018, &unk_22C2B7810);
    goto LABEL_7;
  }

  if (result != 18)
  {
    result = sub_22BE1AE00(v18, type metadata accessor for Session.Event.Payload);
LABEL_7:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_9;
  }

  v21 = *v18;
  v22 = *(v18 + 1);
  v23 = *(v18 + 2);
  v24 = *(v18 + 3);
  v25 = *(v18 + 8);
  v26 = *(v18 + 5);
  v27 = *(v18 + 6);
LABEL_9:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v24;
  a1[4] = v25;
  a1[5] = v26;
  a1[6] = v27;
  return result;
}

uint64_t sub_22C199DE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_22BE3F300();
    v7 = type metadata accessor for ToolResolution(0);
    return sub_22BE19DC4(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for ToolResolution(0);
    sub_22BE19DC4(a1, 1, 1, v9);
    return sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
  }
}

uint64_t sub_22C199F50@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event(0);
  v7 = *(v6 + 28);
  sub_22BE1AA10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0x1E || ((1 << EnumCaseMultiPayload) & 0x42040000) == 0)
  {
    sub_22BE19DC4(a1, 1, 1, v6);
    return sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
  }

  else
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    sub_22BE1AA10();
    return sub_22BE19DC4(a1, 0, 1, v6);
  }
}

IntelligenceFlowPlannerSupport::EntitySpanMatchResult_optional __swiftcall TailTranscriptProtocol.latestEntitySpanMatchResult()()
{
  sub_22BE19460();
  sub_22C1AE238(v0, v1);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22BE22ED0();
  v26 = sub_22C273AC4();
  sub_22BE179D8(v26);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE17C68();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  sub_22BE17C68();
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  sub_22BE7431C(&qword_27D915338, &qword_22C2CB4B8);
  sub_22C1AE274();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE1B68C();
  v11 = sub_22C273BF4();
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE1BCD4();
  v16(v15);
  sub_22BE32D9C();
  sub_22BE3AE3C();
  v17 = sub_22C1AE3C0();
  v18(v17);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE272E4();
  sub_22C273D64();
  v19 = sub_22BE1B5F8();
  v20(v19, v26);
  sub_22BE1BB98();
  WitnessTable = swift_getWitnessTable();
  sub_22BE197EC(WitnessTable);
  swift_getWitnessTable();
  sub_22C1AE1F8();
  sub_22BE3CD40();
  sub_22BE3E8FC();
  swift_getWitnessTable();
  sub_22BE3BFD4();
  v22 = sub_22C1AE34C();
  v23(v22, v11);
  sub_22BE1AABC();
  result.value.entities._rawValue = v24;
  result.is_nil = v25;
  return result;
}

uint64_t sub_22C19A390@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  result = swift_getEnumCaseMultiPayload();
  if (result == 19)
  {
    v8 = *v5;
  }

  else
  {
    result = sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_22C19A4B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event(0);
  v7 = *(v6 + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    sub_22BE1AA10();
    return sub_22BE19DC4(a1, 0, 1, v6);
  }

  else
  {
    sub_22BE19DC4(a1, 1, 1, v6);
    return sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
  }
}

IntelligenceFlowPlannerSupport::ContextRetrieved_optional __swiftcall TailTranscriptProtocol.latestContextRetrieved()()
{
  sub_22BE19460();
  sub_22C1AE238(v0, v1);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22BE22ED0();
  v27 = sub_22C273AC4();
  sub_22BE179D8(v27);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE17C68();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  sub_22BE17C68();
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  sub_22BE7431C(&qword_27D915340, &qword_22C2CB4C0);
  sub_22C1AE274();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE1B68C();
  v11 = sub_22C273BF4();
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE1BCD4();
  v16(v15);
  sub_22BE32D9C();
  sub_22BE3AE3C();
  v17 = sub_22C1AE3C0();
  v18(v17);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE272E4();
  sub_22C273D64();
  v19 = sub_22BE1B5F8();
  v20(v19, v27);
  sub_22BE1BB98();
  WitnessTable = swift_getWitnessTable();
  sub_22BE197EC(WitnessTable);
  swift_getWitnessTable();
  sub_22C1AE1F8();
  sub_22BE3CD40();
  sub_22BE3E8FC();
  swift_getWitnessTable();
  sub_22BE3BFD4();
  v22 = sub_22C1AE34C();
  v23(v22, v11);
  sub_22BE1AABC();
  result.value.utteranceContext._rawValue = v25;
  result.value.requiredContext._rawValue = v24;
  result.is_nil = v26;
  return result;
}

uint64_t sub_22C19A8E0@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  result = swift_getEnumCaseMultiPayload();
  if (result == 17)
  {
    v8 = *v5;
  }

  else
  {
    result = sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    v8 = 0uLL;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_22C19AA04@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event(0);
  v7 = *(v6 + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    sub_22BE1AA10();
    return sub_22BE19DC4(a1, 0, 1, v6);
  }

  else
  {
    sub_22BE19DC4(a1, 1, 1, v6);
    return sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
  }
}

uint64_t sub_22C19AB8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event(0);
  v7 = *(v6 + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_22BE1AA10();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_22BE19DC4(a1, v8, 1, v6);
  return sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
}

void sub_22C19ACE8()
{
  sub_22BE19460();
  v4 = v3;
  v33 = v6;
  v34 = *(*(v5 + 8) + 8);
  v7 = sub_22C273CD4();
  sub_22BE19398();
  WitnessTable = swift_getWitnessTable();
  sub_22C1AE268();
  v32 = WitnessTable;
  v35 = sub_22C273AC4();
  sub_22BE179D8(v35);
  v36 = v9;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  sub_22BE17C68();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE2379C();
  sub_22BE17C68();
  v19 = v18;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE23E58();
  v23 = sub_22BE33560();
  sub_22BE7431C(v23, v24);
  sub_22C1AE274();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  v33(255);
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE37660();
  v25 = sub_22C273BF4();
  sub_22BE179D8(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE234F4();
  (*(v14 + 16))(v0, v0, v4);
  MEMORY[0x2318AB6A0](v4, v34);
  MEMORY[0x2318ABA30](v7, v32);
  (*(v19 + 8))(v2, v7);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE35DC0();
  sub_22C273D64();
  (*(v36 + 8))(v1, v35);
  sub_22BE1BB98();
  v29 = swift_getWitnessTable();
  sub_22BE197EC(v29);
  swift_getWitnessTable();
  sub_22C1AE1F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22C273734();
  v30 = sub_22BE28D70();
  v31(v30, v25);
  sub_22BE1AABC();
}

uint64_t sub_22C19B040@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event(0);
  v7 = *(v6 + 28);
  sub_22BE1AA10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 36 || EnumCaseMultiPayload == 38)
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
  }

  else if (EnumCaseMultiPayload != 37)
  {
    sub_22BE19DC4(a1, 1, 1, v6);
    return sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
  }

  sub_22BE1AA10();
  return sub_22BE19DC4(a1, 0, 1, v6);
}

void TailTranscriptProtocol.latestUserTurnStartedEvent()()
{
  sub_22BE19460();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE1BC40();
  v8 = *(*(v7 + 8) + 8);
  sub_22BE3A540();
  v9 = sub_22C273CD4();
  sub_22BE179D8(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = *(v4 + 16);
  v16 = sub_22BE232C8();
  v17(v16);
  v18 = sub_22BE27A44();
  MEMORY[0x2318AB6A0](v18);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22C273344();
  (*(v11 + 8))(v0, v9);
  sub_22BE1AABC();
}

BOOL sub_22C19B314()
{
  v0 = type metadata accessor for Session.Event.Payload(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  v5 = swift_getEnumCaseMultiPayload() == 1;
  sub_22BE1AE00(v3, type metadata accessor for Session.Event.Payload);
  return v5;
}

void TailTranscriptProtocol.latestQueryDecorationResult()()
{
  sub_22BE19460();
  v1 = type metadata accessor for Session.Event.Payload(0);
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  v12 = type metadata accessor for Session.Event(0);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v18 = v17 - v16;
  sub_22BE1AB1C();
  TailTranscriptProtocol.latestQueryDecorationResultEvent()();
  sub_22BE1A940();
  sub_22BE1AB5C(v19, v20, v21);
  if (v22)
  {
    sub_22BE33928(v0, &qword_27D908310, &qword_22C27A410);
LABEL_7:
    v26 = 1;
    goto LABEL_8;
  }

  sub_22BE18B40();
  sub_22BE1AEE4();
  sub_22BE3F300();
  v23 = *(v12 + 28);
  sub_22BE1C08C();
  sub_22BE1AA10();
  sub_22BE18F8C();
  sub_22BE1AE00(v18, v24);
  sub_22BE191CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 30)
  {
    sub_22BE17E60();
    sub_22BE1AE00(v7, v27);
    goto LABEL_7;
  }

  sub_22BE35898();
  sub_22BE1B5EC();
  sub_22BE3F300();
  v26 = 0;
LABEL_8:
  type metadata accessor for QueryDecorationResult(0);
  v28 = sub_22C1AE414();
  sub_22BE19DC4(v28, v26, 1, v29);
  sub_22BE1AABC();
}

unint64_t sub_22C19B818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v6 = *v4++;
        v5 = v6;
        if (v2 <= v6)
        {
          v2 = v5;
        }

        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

void TailTranscriptProtocol.firstActionProgramStatementId()()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v70 = type metadata accessor for Expression(0);
  v7 = sub_22BE18000(v70);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE1AB80();
  v10 = type metadata accessor for ProgramStatement(0);
  v11 = sub_22BE179D8(v10);
  v71 = v12;
  v72 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  v68 = v16;
  v17 = sub_22BE183BC();
  v18 = type metadata accessor for Session.Event.Payload(v17);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v24 = (v23 - v22);
  v25 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE234F4();
  sub_22BE17C68();
  v69 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE2379C();
  v33 = *(*(*(*(v4 + 8) + 8) + 8) + 8);
  sub_22BE3C664();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE2C64C();
  (*(v69 + 16))(v0, v0, v6);
  sub_22C273304();
  sub_22BE36658();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_22C2738F4();
    v38 = type metadata accessor for Session.Event(0);
    sub_22BE1AB5C(v2, 1, v38);
    if (v39)
    {
LABEL_12:
      sub_22BE37778();
      v66 = sub_22BE191C0();
      v67(v66);
      sub_22C26E684();
      sub_22BE1A140();
LABEL_13:
      sub_22BE19DC4(v62, v63, v64, v65);
      sub_22BE1AABC();
      return;
    }

    v40 = *(v38 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v2, v41);
    sub_22BE1B5EC();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      break;
    }

    sub_22BE17E60();
    sub_22BE1AE00(v24, v42);
  }

  v43 = 0;
  v44 = v24[1];
  v45 = v24[3];
  v46 = v24[4];
  v47 = v24[6];
  v48 = *(v46 + 16);
  while (1)
  {
    if (v48 == v43)
    {

      goto LABEL_12;
    }

    if (v43 >= *(v46 + 16))
    {
      break;
    }

    v49 = *(v71 + 80);
    sub_22BE19E14();
    v51 = *(v50 + 72);
    sub_22BE1AA10();
    v52 = *(v72 + 20);
    sub_22BE1AA10();
    if ((swift_getEnumCaseMultiPayload() | 8) == 0xE)
    {

      sub_22C1AE300();
      sub_22BE37778();
      v54 = sub_22BE191C0();
      v55(v54);
      sub_22BE3F300();
      v56 = sub_22C26E684();
      sub_22BE18000(v56);
      v58 = *(v57 + 16);
      v59 = sub_22BE18040();
      v60(v59);
      sub_22C1AE298();
      sub_22BE1AE00(v68, v61);
      sub_22BE25FFC();
      goto LABEL_13;
    }

    ++v43;
    sub_22C1AE300();
    sub_22C1AE298();
    sub_22BE1AE00(v1, v53);
  }

  __break(1u);
}

void TailTranscriptProtocol.toolForLatestIncompleteAction.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v192 = sub_22C2720A4();
  v28 = sub_22BE179D8(v192);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  sub_22BE190A8(v31);
  v32 = sub_22BE5CE4C(&qword_27D915348, &qword_22C2CB4C8);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  v37 = sub_22BE18950(v36);
  v194 = type metadata accessor for ActionResolverRequest(v37);
  v38 = sub_22BE18000(v194);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v42 = sub_22BE18950(v41);
  v196 = type metadata accessor for Action(v42);
  v43 = sub_22BE18000(v196);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  sub_22BE18950(v46);
  v209 = sub_22C26F894();
  v47 = sub_22BE179D8(v209);
  v203 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19E94();
  sub_22BE190A8(v53);
  v54 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v54);
  v56 = *(v55 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  sub_22BE1A174();
  sub_22BE18950(v58);
  v212 = sub_22C26E1D4();
  v59 = sub_22BE179D8(v212);
  v200 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BE17B98();
  v210 = v63;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v66 = sub_22BE18950(v65);
  v222 = type metadata accessor for Session.Event.Payload(v66);
  v67 = sub_22BE18000(v222);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE17B98();
  v208 = v70;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v71);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE19E94();
  v215 = v73;
  v74 = sub_22BE183BC();
  v202 = type metadata accessor for StatementResult(v74);
  v75 = sub_22BE18000(v202);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE17A44();
  v211 = v78;
  v79 = *(*(v25 + 8) + 8);
  v219[1] = *(v79 + 8);
  v219[0] = swift_getAssociatedTypeWitness();
  sub_22BE179D8(v219[0]);
  v216 = v80;
  v82 = *(v81 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v83);
  sub_22BE1A174();
  v218 = v84;
  v85 = sub_22BE183BC();
  v214 = type metadata accessor for Session.Event(v85);
  v86 = sub_22BE18000(v214);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE17B98();
  v221 = v89;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v90);
  sub_22BE19E94();
  v213[1] = v91;
  sub_22BE17C68();
  v93 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BE2379C();
  sub_22BE37660();
  v97 = sub_22C273CD4();
  sub_22BE19448(v97);
  v99 = *(v98 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v100);
  sub_22BE2C64C();
  sub_22BE37660();
  v101 = sub_22C273CC4();
  sub_22BE179D8(v101);
  v103 = *(v102 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v104);
  sub_22BE25CD0();
  v105 = *(v93 + 16);
  v106 = sub_22BE3E8FC();
  v105(v106);
  v107 = v79;
  MEMORY[0x2318AB6A0](v27, v79);
  v108 = sub_22BE25D0C();
  v105(v108);
  v109 = v208;
  v217 = *(v101 + 36);
  v220 = v20;
  sub_22BE18240();
  sub_22C2736F4();
  (*(v93 + 8))(v21, v27);
  v110 = v207;
  v216 += 8;
  v201 = (v200 + 1);
  v213[0] = MEMORY[0x277D84F98];
  while (1)
  {
    sub_22BE37490();
    sub_22C2736B4();
    sub_22BE291B0();
    v111 = *(swift_getAssociatedConformanceWitness() + 8);
    v112 = sub_22C272FD4();
    sub_22BE3ACFC();
    v113 = sub_22BE1AEE4();
    v114(v113);
    if (v112)
    {
      sub_22C1AE228();
      sub_22BE36D00();
      v191();
      goto LABEL_29;
    }

    v115 = v107;
    sub_22C272F84();
    v116 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v117 = sub_22BE287D4();
    v116(v117);
    sub_22BE18B40();
    v118 = v221;
    sub_22BE3F300();
    v119 = *(v214 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() != 21)
    {
      sub_22BE17E60();
      sub_22BE1AE00(v215, v121);
      goto LABEL_18;
    }

    sub_22BE1A06C();
    sub_22BE3F300();
    sub_22BE2B9D0(v211, v206, &qword_27D9082F0, &qword_22C27AB00);
    sub_22BE1AB5C(v206, 1, v212);
    if (v173)
    {
      sub_22BE23244();
      sub_22BE1AE00(v211, v120);
      sub_22BE33928(v206, &qword_27D9082F0, &qword_22C27AB00);
      v109 = v208;
      v110 = v207;
      v115 = v79;
      goto LABEL_18;
    }

    sub_22BE33554(&a9);
    v122 = sub_22BE191CC();
    v123(v122);
    v124 = v200[2];
    v125 = sub_22BE18040();
    v124(v125);
    (*(v203 + 16))(v205, v211 + *(v202 + 20), v209);
    swift_isUniquelyReferenced_nonNull_native();
    v223 = v213[0];
    sub_22BE60A90();
    if (__OFADD__(*(v213[0] + 16), (v127 & 1) == 0))
    {
      break;
    }

    v128 = v126;
    v129 = v127;
    sub_22BE5CE4C(&qword_27D915350, &unk_22C2CB4D0);
    if (sub_22C273C44())
    {
      sub_22BE60A90();
      v115 = v79;
      if ((v129 & 1) != (v131 & 1))
      {
        goto LABEL_65;
      }

      v128 = v130;
    }

    else
    {
      v115 = v79;
    }

    v132 = v223;
    v213[0] = v223;
    if (v129)
    {
      v133 = sub_22BE41734(*(v223 + 56));
      (*(v134 + 40))(v133, v205, v209);
      v135 = *v201;
      (*v201)(v210, v212);
      v135(v204, v212);
      sub_22BE23244();
      sub_22BE1AE00(v211, v136);
    }

    else
    {
      *(v223 + 8 * (v128 >> 6) + 64) |= 1 << v128;
      (v124)(*(v132 + 48) + v200[9] * v128, v210, v212);
      v137 = sub_22BE41734(*(v213[0] + 56));
      (*(v138 + 32))(v137);
      v139 = v200[1];
      v140 = sub_22BE38970();
      v139(v140);
      (v139)(v204, v212);
      sub_22BE23244();
      sub_22BE1AE00(v211, v141);
      v142 = *(v213[0] + 16);
      v143 = __OFADD__(v142, 1);
      v144 = v142 + 1;
      if (v143)
      {
        goto LABEL_64;
      }

      *(v213[0] + 16) = v144;
    }

    v118 = v221;
    v109 = v208;
    v110 = v207;
LABEL_18:
    sub_22BE1C08C();
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE2F27C();
      v148 = v197;
      sub_22BE3F300();
      v149 = (v197 + *(v196 + 36));
      v151 = *v149;
      v150 = v149[1];

      v152 = type metadata accessor for Action;
      goto LABEL_23;
    }

    sub_22BE17E60();
    sub_22BE1AE00(v110, v145);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE1804C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v148 = v195;
      sub_22BE3F300();
      v153 = (v195 + *(v194 + 40));
      v155 = *v153;
      v154 = v153[1];

      v152 = type metadata accessor for ActionResolverRequest;
LABEL_23:
      sub_22BE1AE00(v148, v152);
      sub_22BE3C6E0(v219);
      sub_22BF16F1C(v213[0], v156);
      sub_22BE1AB5C(v110, 1, v209);
      if (v173)
      {
        sub_22BE18F8C();
        sub_22BE1AE00(v118, v157);
        sub_22C1AE228();
        sub_22BE36D00();
        v158();
        sub_22BE33928(v110, &qword_27D915348, &qword_22C2CB4C8);
      }

      else
      {
        v159 = *(v203 + 32);
        v160 = sub_22BE25C08();
        v161(v160);
        v162 = *(v203 + 16);
        v163 = sub_22BE194F8();
        v164(v163);
        v165 = *(v203 + 88);
        v166 = sub_22BE1BF88();
        v168 = v167(v166);
        if (v168 == *MEMORY[0x277D1CBF0])
        {
LABEL_27:

LABEL_28:
          v169 = *(v203 + 8);
          v169(v198, v209);
          sub_22BE18F8C();
          sub_22BE1AE00(v118, v170);
          sub_22C1AE228();
          sub_22BE36D00();
          v171();
          v169(v199, v209);
LABEL_29:

LABEL_49:
          sub_22BE18944();
          sub_22BE1AABC();
          return;
        }

        v172 = v168;
        v173 = v168 == *MEMORY[0x277D1CB98] || v168 == *MEMORY[0x277D1CBA8];
        if (!v173 && v168 != *MEMORY[0x277D1CBB0] && v168 != *MEMORY[0x277D1CBB8] && v168 != *MEMORY[0x277D1CBD0] && v168 != *MEMORY[0x277D1CBD8])
        {
          if (v168 == *MEMORY[0x277D1CBC0] || v168 == *MEMORY[0x277D1CBE0])
          {
            goto LABEL_27;
          }

          if (v168 != *MEMORY[0x277D1CBA0] && v168 != *MEMORY[0x277D1CBC8])
          {
            v183 = *MEMORY[0x277D1CBE8];

            if (v172 != v183)
            {
              sub_22BE2BD40(&v214);
              sub_22C271B14();
              v184 = sub_22C272084();
              sub_22C2737A4();
              v185 = sub_22BE31268();
              if (os_log_type_enabled(v185, v186))
              {
                sub_22BE36138();
                v187 = swift_slowAlloc();
                sub_22C1AE37C(v187);
                sub_22BE19E74(&dword_22BE15000, v188, v189, "Unknown outcome ignored when finding latest incomplete action");
                sub_22BE1B2A4();
                MEMORY[0x2318AD180]();
              }

              sub_22BE1B5D4(v213);
              v190(v193, v192);
            }

            goto LABEL_28;
          }
        }

        v178 = *(v203 + 8);
        v178(v198, v209);
        sub_22BE18F8C();
        sub_22BE1AE00(v118, v179);
        sub_22C1AE228();
        sub_22BE36D00();
        v180();
        v178(v199, v209);
      }

      goto LABEL_49;
    }

    v107 = v115;
    sub_22BE18F8C();
    sub_22BE1AE00(v118, v146);
    sub_22BE17E60();
    sub_22BE1AE00(v109, v147);
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_22C2740B4();
  __break(1u);
}

void TailTranscriptProtocol.value(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v23;
  a20 = v24;
  v162 = v25;
  v26 = sub_22C2720A4();
  v27 = sub_22BE179D8(v26);
  v153 = v28;
  v154 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE18950(v33);
  v163 = sub_22C272874();
  v34 = sub_22BE179D8(v163);
  v152 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v151 = v38;
  sub_22BE183BC();
  v39 = sub_22C2726B4();
  v148 = sub_22BE179D8(v39);
  v149 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v148);
  sub_22BE17A44();
  v150 = v43;
  sub_22BE183BC();
  v44 = sub_22C26F894();
  v45 = sub_22BE179D8(v44);
  v159 = v46;
  v160 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v158 = v49;
  sub_22BE183BC();
  v50 = sub_22C26E9D4();
  v51 = sub_22BE179D8(v50);
  v156 = v52;
  v157 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  v155 = v55;
  v56 = sub_22BE183BC();
  v57 = type metadata accessor for Session.Event.Payload(v56);
  v58 = sub_22BE18000(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE179EC();
  sub_22BE1BC40();
  v61 = type metadata accessor for StatementResult(0);
  v62 = sub_22BE18000(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v161 = v65;
  sub_22BE183BC();
  v66 = sub_22C26E684();
  v67 = sub_22BE179D8(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE179EC();
  v72 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v72);
  v74 = *(v73 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v75);
  sub_22BE1B72C();
  v76 = type metadata accessor for Session.Event(0);
  v77 = sub_22BE18000(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BE179EC();
  sub_22BE2BB64();
  MEMORY[0x2318A6CF0]();
  TailTranscriptProtocol.latestStatementEvaluatedEvent(for:)();
  v80 = *(v69 + 8);
  v81 = sub_22BE1AEE4();
  v82(v81);
  v83 = sub_22BE391E8();
  sub_22BE1AB5C(v83, v84, v76);
  if (v85)
  {
    sub_22BE33928(v20, &qword_27D908310, &qword_22C27A410);
LABEL_13:
    v108 = 1;
    v105 = v162;
    v95 = v163;
    goto LABEL_14;
  }

  sub_22BE18B40();
  sub_22BE41FB4();
  sub_22BE3F300();
  v86 = *(v76 + 28);
  sub_22BE1C08C();
  sub_22BE1AA10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_22BE18F8C();
    sub_22BE1AE00(v22, v109);
    sub_22BE17E60();
    sub_22BE1AE00(v21, v110);
    goto LABEL_13;
  }

  sub_22BE1A06C();
  sub_22BE3F300();
  (*(v159 + 16))(v158, v161 + *(v61 + 20), v160);
  v88 = *(v159 + 88);
  v89 = sub_22BE1B5EC();
  if (v90(v89) != *MEMORY[0x277D1CBF0])
  {
    sub_22BE23244();
    sub_22BE1AE00(v161, v111);
    sub_22BE18F8C();
    sub_22BE1AE00(v22, v112);
    v113 = *(v159 + 8);
    v114 = sub_22BE1B5EC();
    v115(v114);
    goto LABEL_13;
  }

  v91 = *(v159 + 96);
  v92 = sub_22BE1B5EC();
  v93(v92);
  (*(v156 + 32))(v155, v158, v157);
  v94 = sub_22C26E604();
  v95 = v163;
  if (v96)
  {
    sub_22C271A94();
    v97 = sub_22C272084();
    sub_22C273794();
    v98 = sub_22BE31268();
    if (os_log_type_enabled(v98, v99))
    {
      sub_22BE36138();
      v100 = swift_slowAlloc();
      sub_22C1AE37C(v100);
      sub_22BE19E74(&dword_22BE15000, v101, v102, "The AncestorID's index is nil, so therefore returning the returnValue (the root TypedValue) of ActionSuccess");
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    v103 = sub_22BE2399C();
    v104(v103);
    v105 = v162;
    sub_22C26E984();
    goto LABEL_10;
  }

  v116 = v94;
  sub_22C26E984();
  v117 = *(v152 + 88);
  v118 = sub_22BE324FC();
  if (v119(v118) != *MEMORY[0x277D729E0])
  {
    v129 = *(v152 + 8);
    v130 = sub_22BE324FC();
    v131(v130);
    sub_22BE3C6E0(&a17);
    sub_22C271A94();
    v132 = sub_22C272084();
    sub_22C2737A4();
    v133 = sub_22BE31268();
    if (os_log_type_enabled(v133, v134))
    {
      sub_22BE36138();
      v135 = swift_slowAlloc();
      sub_22C1AE37C(v135);
      sub_22BE19E74(&dword_22BE15000, v136, v137, "The return value of the StatementResult's outcome of ActionSuccess is not a collection");
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    v138 = sub_22BE2399C();
    v139(v138);
    goto LABEL_26;
  }

  v120 = *(v152 + 96);
  v121 = sub_22BE324FC();
  v122(v121);
  v123 = *v151;
  v124 = swift_projectBox();
  v125 = v149;
  (*(v149 + 16))(v150, v124, v148);

  v126 = *(sub_22C2726A4() + 16);

  if (v116 >= v126)
  {
    sub_22BE2BD40(&a18);
    sub_22C271A94();
    v140 = sub_22C272084();
    v141 = sub_22C2737A4();
    v142 = sub_22BE46168();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 134217984;
      *(v144 + 4) = v116;
      v125 = v149;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v153 + 8))(v147, v154);
    (*(v125 + 8))(v150, v148);
LABEL_26:
    (*(v156 + 8))(v155, v157);
    sub_22BE23244();
    sub_22BE1AE00(v161, v145);
    sub_22BE18F8C();
    sub_22BE1AE00(v22, v146);
    v108 = 1;
    v105 = v162;
    goto LABEL_14;
  }

  v127 = sub_22C2726A4();
  if (v116 < 0)
  {
    __break(1u);
  }

  else if (v116 < *(v127 + 16))
  {
    v128 = v127 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v116;
    v105 = v162;
    (*(v152 + 16))(v162, v128, v163);

    (*(v149 + 8))(v150, v148);
LABEL_10:
    (*(v156 + 8))(v155, v157);
    sub_22BE23244();
    sub_22BE1AE00(v161, v106);
    sub_22BE18F8C();
    sub_22BE1AE00(v22, v107);
    v108 = 0;
LABEL_14:
    sub_22BE19DC4(v105, v108, 1, v95);
    sub_22BE1AABC();
    return;
  }

  __break(1u);
}

void TailTranscriptProtocol.latestStatementEvaluatedEvent(for:)()
{
  sub_22BE19460();
  v4 = v3;
  v64 = v5;
  v70 = type metadata accessor for Session.Event.Payload(0);
  v6 = sub_22BE18000(v70);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE35AE8();
  v69 = type metadata accessor for StatementResult(0);
  v9 = sub_22BE18000(v69);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v68 = v12;
  sub_22BE3EB10();
  v14 = *(v13 + 8);
  sub_22BE37660();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v71 = v15;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v20 = sub_22BE268D0(v19, v63);
  v76 = type metadata accessor for Session.Event(v20);
  v21 = sub_22BE18000(v76);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  v77 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  sub_22BE17C68();
  v27 = v26;
  v65 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE2379C();
  sub_22C1AE268();
  v31 = sub_22C273CD4();
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v66 = v35;
  sub_22BE183BC();
  v67 = sub_22C273CC4();
  sub_22BE179D8(v67);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE2C64C();
  v39 = *(v27 + 16);
  v39(v0, v0, v4);
  MEMORY[0x2318AB6A0](v4);
  v39(v2, v66, v4);
  v73 = *(v67 + 36);
  sub_22C2736F4();
  v40 = *(v65 + 8);
  v41 = sub_22BE33FD8();
  v42(v41);
  v72 = (v71 + 8);
  while (1)
  {
    sub_22C2736B4();
    v43 = *(swift_getAssociatedConformanceWitness() + 8);
    v44 = sub_22C272FD4();
    (*v72)(v74, AssociatedTypeWitness);
    if (v44)
    {
      break;
    }

    sub_22C272F84();
    v45 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v46 = sub_22BE287D4();
    v45(v46);
    sub_22BE18B40();
    sub_22BE3F300();
    v47 = *(v76 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22BE1A06C();
      sub_22BE3F300();
      v48 = *(v69 + 28);
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22BE23244();
        sub_22BE1AE00(v68, v55);
LABEL_9:
        v56 = sub_22BE32EB4();
        v57(v56);
        sub_22BE18B40();
        v58 = v64;
        sub_22BE3F300();
        v59 = 0;
        v60 = v76;
        goto LABEL_10;
      }

      v49 = *(v69 + 24);
      v50 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      sub_22BE23244();
      sub_22BE1AE00(v68, v51);
      if (v50)
      {
        goto LABEL_9;
      }

      sub_22BE18F8C();
      sub_22BE1AE00(v77, v52);
    }

    else
    {
      sub_22BE18F8C();
      sub_22BE1AE00(v77, v53);
      sub_22BE17E60();
      sub_22BE1AE00(v1, v54);
    }
  }

  v61 = sub_22BE32EB4();
  v62(v61);
  v59 = 1;
  v58 = v64;
  v60 = v76;
LABEL_10:
  sub_22BE19DC4(v58, v59, 1, v60);
  sub_22BE1AABC();
}

uint64_t TailTranscriptProtocol.latestStatementEvaluated(for:)()
{
  v2 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AEF0();
  v6 = type metadata accessor for Session.Event.Payload(0);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE1AB80();
  TailTranscriptProtocol.latestStatementEvaluatedEvent(for:)();
  v10 = type metadata accessor for Session.Event(0);
  sub_22BE1AB5C(v0, 1, v10);
  if (v11)
  {
    sub_22BE33928(v0, &qword_27D908310, &qword_22C27A410);
LABEL_7:
    v15 = 1;
    goto LABEL_8;
  }

  v12 = *(v10 + 28);
  sub_22BE1C08C();
  sub_22BE1AA10();
  sub_22BE18F8C();
  sub_22BE1AE00(v0, v13);
  sub_22BE2590C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_22BE17E60();
    sub_22BE1AE00(v1, v16);
    goto LABEL_7;
  }

  sub_22BE1A06C();
  sub_22BE1AB74();
  sub_22BE3F300();
  v15 = 0;
LABEL_8:
  type metadata accessor for StatementResult(0);
  v17 = sub_22C1AE414();
  return sub_22BE19DC4(v17, v15, 1, v18);
}

void TailTranscriptProtocol.latestToolCallStmt()()
{
  sub_22BE19460();
  sub_22BE29420(v1, v2);
  v4 = *(*(v3 + 8) + 8);
  sub_22BE3A540();
  v5 = sub_22C273AC4();
  sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23E58();
  v9 = sub_22BE194F8();
  sub_22BE7431C(v9, v10);
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22BEF8A28(&qword_27D915358, &qword_27D912D10, &qword_22C2B7E68);
  sub_22C273BE4();
  WitnessTable = swift_getWitnessTable();
  sub_22BE37660();
  v12 = sub_22C273AC4();
  sub_22BE18000(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2C64C();
  sub_22BE37660();
  v16 = sub_22C273CB4();
  sub_22BE179D8(v16);
  v23 = v17;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1AEF0();
  v21 = sub_22BE18944();
  MEMORY[0x2318ABA30](v21);
  swift_getWitnessTable();
  sub_22C273D94();
  sub_22BE37778();
  v22(v0, v5);
  sub_22BE37490();
  swift_getWitnessTable();
  sub_22C273D84();
  swift_getWitnessTable();
  sub_22BEF8A28(&qword_27D915360, &qword_27D912D10, &qword_22C2B7E68);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22C272F94();
  (*(v23 + 8))(WitnessTable, v16);
  sub_22BE1AABC();
}

uint64_t sub_22C19DEDC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = v5[1];
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[6];
  }

  else
  {
    result = sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    v9 = MEMORY[0x277D84F90];
  }

  *a1 = v9;
  return result;
}

BOOL sub_22C19DFE4(uint64_t a1)
{
  v2 = type metadata accessor for Expression(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProgramStatement(0);
  v7 = *(v6 + 20);
  sub_22BE1AA10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22BE1AE00(v5, type metadata accessor for Expression);
  result = 0;
  if (EnumCaseMultiPayload == 6)
  {
    v9 = *(a1 + *(v6 + 24));
    if (v9 != 2 && (v9 & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void TailTranscriptProtocol.latestActionCreated(for:)()
{
  sub_22BE19460();
  v4 = v3;
  v66 = v5;
  v70 = type metadata accessor for Session.Event.Payload(0);
  v6 = sub_22BE18000(v70);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v11 = v10 - v9;
  v65 = type metadata accessor for Action(0);
  v12 = sub_22BE18000(v65);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v68 = v15;
  sub_22BE3EB10();
  v17 = *(v16 + 8);
  v18 = v16;
  sub_22C1AE468();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v64 = v20;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE25CD0();
  v69 = type metadata accessor for Session.Event(0);
  v24 = sub_22BE18000(v69);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  sub_22BE35AE8();
  sub_22BE17C68();
  v28 = v27;
  v62 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE2379C();
  sub_22BE46BB4();
  v32 = sub_22C273CD4();
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  v63 = v36;
  sub_22BE183BC();
  v67 = sub_22C273CC4();
  sub_22BE179D8(v67);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE23E58();
  v61 = *(v28 + 16);
  v61(v0, v0, v4);
  MEMORY[0x2318AB6A0](v4, v18);
  v61(v2, v63, v4);
  v40 = *(v67 + 36);
  sub_22C2736F4();
  v41 = *(v62 + 8);
  v42 = sub_22BE392D4();
  v43(v42);
  while (1)
  {
    sub_22C2736B4();
    sub_22BE35F50();
    v44 = *(swift_getAssociatedConformanceWitness() + 8);
    v45 = sub_22C272FD4();
    v46 = *(v64 + 8);
    v47 = sub_22BE232C8();
    v48(v47);
    if (v45)
    {
      break;
    }

    sub_22C272F84();
    v49 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v50 = sub_22BE1812C();
    v49(v50);
    v51 = *(v69 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v1, v52);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE2F27C();
      sub_22BE3F300();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        v55 = sub_22BE3408C();
        v56(v55, v67);
        sub_22BE2F27C();
        v57 = v66;
        sub_22BE3F300();
        v58 = 0;
        goto LABEL_8;
      }

      sub_22C1AE280();
      sub_22BE1AE00(v68, v53);
    }

    else
    {
      sub_22BE17E60();
      sub_22BE1AE00(v11, v54);
    }
  }

  v59 = sub_22BE3408C();
  v60(v59, v67);
  v58 = 1;
  v57 = v66;
LABEL_8:
  sub_22BE19DC4(v57, v58, 1, v65);
  sub_22BE1AABC();
}

void TailTranscriptProtocol.inFocusAppBundleIDs(queryEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v24;
  a20 = v25;
  v198 = v26;
  v199 = v20;
  v196 = v27;
  v186 = sub_22C272794();
  v28 = sub_22BE179D8(v186);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v185 = v33;
  v34 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE268D0(v38, v178);
  v193 = sub_22C272804();
  v39 = sub_22BE179D8(v193);
  v182 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17B98();
  v192 = v43;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v191 = v45;
  sub_22BE183BC();
  v195 = sub_22C270A04();
  v46 = sub_22BE179D8(v195);
  v181 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v200 = v50;
  v51 = sub_22BE183BC();
  v201 = type metadata accessor for RetrievedContextStatement(v51);
  v52 = sub_22BE179D8(v201);
  v180 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE17A44();
  v57 = sub_22BE18950(v56);
  v188 = type metadata accessor for Session.Event.Payload(v57);
  v58 = sub_22BE18000(v188);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  v189 = v61;
  v62 = sub_22BE183BC();
  DecorationResult = type metadata accessor for QueryDecorationResult(v62);
  v63 = sub_22BE18000(DecorationResult);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17A44();
  v190 = v66;
  sub_22BE183BC();
  v67 = sub_22C26E1D4();
  v68 = sub_22BE179D8(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17A44();
  v187 = v73;
  v74 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v74);
  v76 = *(v75 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v77);
  sub_22BE1AEF0();
  v78 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v79 = sub_22BE19448(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17B98();
  v194 = v82;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v83);
  v85 = &v178 - v84;
  v86 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v86);
  v88 = *(v87 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v89);
  sub_22BE234F4();
  v90 = type metadata accessor for Session.Event(0);
  v91 = sub_22BE18000(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v202[2] = MEMORY[0x277D84FA0];
  TailTranscriptProtocol.latestQueryDecorationResultEvent()();
  sub_22BE1AB5C(v22, 1, v90);
  if (!v99)
  {
    v198 = v30;
    sub_22BE18B40();
    sub_22BE3F300();
    v94 = *(v90 + 24);
    v199 = v70;
    (*(v70 + 16))(v85, v196, v67);
    sub_22BE187DC();
    sub_22BE19DC4(v95, v96, v97, v67);
    v98 = *(v74 + 48);
    sub_22BE2B9D0(v23 + v94, v21, &qword_27D9082F0, &qword_22C27AB00);
    sub_22BE2B9D0(v85, v21 + v98, &qword_27D9082F0, &qword_22C27AB00);
    sub_22BE23B00(v21);
    if (v99)
    {
      sub_22BE33928(v85, &qword_27D9082F0, &qword_22C27AB00);
      sub_22BE23B00(v21 + v98);
      if (v99)
      {
        sub_22BE33928(v21, &qword_27D9082F0, &qword_22C27AB00);
        goto LABEL_15;
      }
    }

    else
    {
      v100 = v194;
      sub_22BE2B9D0(v21, v194, &qword_27D9082F0, &qword_22C27AB00);
      sub_22BE23B00(v21 + v98);
      if (!v101)
      {
        v106 = v199;
        (*(v199 + 32))(v187, v21 + v98, v67);
        sub_22BE28D14();
        sub_22C1AE190(v107, v108);
        sub_22BE33560();
        LODWORD(v196) = sub_22C1AE4B4();
        v109 = *(v106 + 8);
        v110 = sub_22BE25D0C();
        v109(v110);
        v111 = sub_22BE2590C();
        sub_22BE33928(v111, v112, &qword_22C27AB00);
        (v109)(v100, v67);
        v113 = sub_22BE324FC();
        sub_22BE33928(v113, v114, &qword_22C27AB00);
        if (v196)
        {
LABEL_15:
          v115 = *(v90 + 28);
          sub_22BE1C08C();
          v116 = v189;
          sub_22BE1AA10();
          if (swift_getEnumCaseMultiPayload() == 30)
          {
            v179 = v23;
            sub_22BE35898();
            v117 = v190;
            sub_22BE3F300();
            v118 = *(v117 + *(DecorationResult + 28));
            v119 = *(v118 + 16);
            v120 = v195;
            v121 = v200;
            v122 = v183;
            if (v119)
            {
              v123 = v118 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
              v199 = *(v180 + 72);
              v124 = (v181 + 11);
              v125 = *MEMORY[0x277D1EAB8];
              v126 = (v181 + 1);
              LODWORD(v196) = *MEMORY[0x277D72A58];
              v194 = (v182 + 16);
              v188 = (v182 + 88);
              LODWORD(v187) = *MEMORY[0x277D72970];
              DecorationResult = v182 + 8;
              v182 += 96;
              v181 = v198 + 4;
              ++v198;
              LODWORD(v189) = v125;
              do
              {
                sub_22BE48774();
                sub_22BE1AA10();
                v127 = v122 + *(v201 + 20);
                sub_22C270EF4();
                if ((*v124)(v121, v120) == v125)
                {
                  (*v126)(v121, v120);
                  v128 = v197;
                  sub_22C270EE4();
                  v129 = sub_22C272874();
                  v130 = sub_22BE3C598();
                  sub_22BE1AB5C(v130, v131, v129);
                  if (v99)
                  {
                    sub_22BE18738();
                    sub_22BE1AE00(v122, v132);
                    sub_22BE33928(v128, &qword_27D907400, &unk_22C274F90);
                  }

                  else
                  {
                    sub_22BE17C68();
                    v135 = v134;
                    v137 = *(v136 + 88);
                    v138 = sub_22BE25EFC();
                    v140 = v139(v138);
                    if (v140 == v196)
                    {
                      v141 = *(v135 + 96);
                      v142 = sub_22BE25EFC();
                      v143(v142);
                      v144 = *v128;
                      v145 = swift_projectBox();
                      v146 = v193;
                      v147 = *v194;
                      v148 = v191;
                      (*v194)(v191, v145, v193);

                      v149 = v192;
                      v147(v192, v148, v146);
                      v150 = v146;
                      v151 = *v188;
                      v152 = sub_22BE3E8FC();
                      v154 = v153(v152);
                      if (v154 == v187)
                      {
                        sub_22BE33554(&a17);
                        v155 = sub_22BE27A44();
                        v156(v155);
                        sub_22BE33554(&a16);
                        v157(v185, v149, v186);
                        v158 = sub_22C272784();
                        sub_22C1A7B60(v202, v158, v159, v159, v160, v161, v162, v163, v178, v179);

                        v164 = *v198;
                        v165 = sub_22BE23108();
                        v166(v165);
                        (*DecorationResult)(v148, v146);
                        sub_22BE18738();
                        sub_22BE1AE00(v122, v167);
                      }

                      else
                      {
                        v172 = v149;
                        v173 = *DecorationResult;
                        v174 = sub_22BE18240();
                        (v173)(v174);
                        sub_22BE18738();
                        sub_22BE1AE00(v122, v175);
                        v173(v172, v150);
                      }

                      v120 = v195;
                      v121 = v200;
                      v125 = v189;
                      goto LABEL_30;
                    }

                    sub_22BE18738();
                    sub_22BE1AE00(v122, v168);
                    v169 = *(v135 + 8);
                    v170 = sub_22BE25EFC();
                    v171(v170);
                  }

                  v121 = v200;
                }

                else
                {
                  sub_22BE18738();
                  sub_22BE1AE00(v122, v133);
                  (*v126)(v121, v120);
                }

LABEL_30:
                v123 += v199;
                --v119;
              }

              while (v119);
            }

            sub_22BE48E64();
            sub_22BE1AE00(v190, v176);
            sub_22BE18F8C();
            v105 = v179;
          }

          else
          {
            sub_22BE18F8C();
            sub_22BE1AE00(v23, v177);
            sub_22BE17E60();
            v105 = v116;
          }

          goto LABEL_33;
        }

LABEL_13:
        sub_22BE18F8C();
        v105 = v23;
LABEL_33:
        sub_22BE1AE00(v105, v104);
        goto LABEL_34;
      }

      sub_22BE33928(v85, &qword_27D9082F0, &qword_22C27AB00);
      v102 = sub_22BE28D70();
      v103(v102, v67);
    }

    sub_22BE33928(v21, &qword_27D90A8E8, &qword_22C288AF8);
    goto LABEL_13;
  }

  sub_22BE33928(v22, &qword_27D908310, &qword_22C27A410);
LABEL_34:
  sub_22BE1AABC();
}

CLLocation_optional __swiftcall TailTranscriptProtocol.currentUserLocation()()
{
  v1 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B72C();
  TailTranscriptProtocol.latestSiriRequestContext.getter();
  v5 = sub_22C271394();
  v6 = sub_22BE391E8();
  sub_22BE1AB5C(v6, v7, v5);
  if (v8)
  {
    sub_22BE33928(v0, &qword_27D9120B0, &qword_22C2B5F00);
    v9 = 0;
  }

  else
  {
    v9 = StructuredContext.SiriRequestContext.currentUserLocation()();
    sub_22BE1BC24(v5);
    v11 = *(v10 + 8);
    v12 = sub_22BE33FD8();
    v13(v12);
  }

  v16 = v9;
  result.value._internal = v14;
  result.value.super.isa = v16;
  result.is_nil = v15;
  return result;
}

void TailTranscriptProtocol.latestSiriRequestContext.getter()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v60 = 0;
  v61 = v7;
  sub_22BE29420(v5, v3);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Session.Event(255);
  sub_22BE25CB4();
  swift_getTupleTypeMetadata2();
  sub_22BE3935C();
  v12 = sub_22C273844();
  v13 = sub_22BE179D8(v12);
  v57[1] = v14;
  v57[2] = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v57[0] = v18;
  sub_22BE1BC24(v11);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE2BB64();
  v22 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v26);
  sub_22BE409C8();
  v27 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A8B4();
  v58 = v6;
  v59 = v4;
  sub_22BE2590C();
  TailTranscriptProtocol.latestUserTurnStartedEvent()();
  v31 = sub_22BE37490();
  sub_22BE2B9D0(v31, v32, &qword_27D908310, &qword_22C27A410);
  sub_22BE1A940();
  sub_22BE1AB5C(v33, v34, v35);
  if (v36)
  {
    sub_22BE33928(AssociatedTypeWitness, &qword_27D908310, &qword_22C27A410);
    sub_22C271394();
    sub_22BE1A140();
    sub_22BE19DC4(v37, v38, v39, v40);
  }

  else
  {
    sub_22BE18B40();
    sub_22BE3F300();
    sub_22C1A00FC(v1);
    sub_22BE18F8C();
    sub_22BE1AE00(v2, v41);
    sub_22BE33928(AssociatedTypeWitness, &qword_27D908310, &qword_22C27A410);
  }

  v42 = sub_22C271394();
  v43 = sub_22BE406A0();
  sub_22BE1AB5C(v43, v44, v42);
  if (v36)
  {
    sub_22BE33928(v1, &qword_27D9120B0, &qword_22C2B5F00);
    v46 = v58;
    v45 = v59;
    sub_22BE1B328();
    TailTranscriptProtocol.latestRequestEvent()();
    v48 = MEMORY[0x28223BE20](v47);
    v57[-4] = v46;
    v57[-3] = v45;
    v57[-2] = v0;
    MEMORY[0x28223BE20](v48);
    v57[-4] = v46;
    v57[-3] = v45;
    v57[-2] = sub_22C1ADD40;
    v57[-1] = v49;
    sub_22C19522C(sub_22C1ADD4C, &v57[-6], MEMORY[0x277D84A98], v42, v50, v61);
    sub_22BE37778();
    v51 = sub_22BE25C08();
    v52(v51);
  }

  else
  {
    sub_22BE1BC24(v42);
    (*(v53 + 32))(v61, v1, v42);
    sub_22BE187DC();
    sub_22BE19DC4(v54, v55, v56, v42);
  }

  sub_22BE1AABC();
}

CLLocation_optional __swiftcall StructuredContext.SiriRequestContext.currentUserLocation()()
{
  sub_22BE19460();
  v0 = sub_22C2720A4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22C271104();
  if (v4 >> 60 != 15)
  {
    sub_22BE45D84(0, &qword_27D915368, 0x277CCAAC8);
    sub_22BE45D84(0, &qword_27D915370, 0x277CE41F8);
    sub_22C2737D4();
    v5 = sub_22BE1AB1C();
    sub_22BF158B4(v5, v6);
  }

  sub_22BE1AABC();
  result.value._internal = v8;
  result.value.super.isa = v7;
  result.is_nil = v9;
  return result;
}

void TailTranscriptProtocol.actionCreatedEvents(queryEventId:)()
{
  sub_22BE19460();
  sub_22BE17C68();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE1BC40();
  v6 = *(*(v5 + 8) + 8);
  v7 = sub_22C273CD4();
  sub_22BE179D8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  v13 = *(v1 + 16);
  v14 = sub_22BE1B328();
  v15(v14);
  v16 = sub_22BE27A44();
  MEMORY[0x2318AB6A0](v16);
  type metadata accessor for Action(0);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22C273324();
  v17 = *(v9 + 8);
  v18 = sub_22BE39EAC();
  v19(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C19F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v4 = sub_22C26E1D4();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Session.Event.Payload(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Action(0);
  v21 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Session.Event(0);
  v25 = *(v24 + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v39 = v23;
    sub_22BE3F300();
    v26 = *(v24 + 24);
    (*(v43 + 16))(v16, v42, v4);
    sub_22BE19DC4(v16, 0, 1, v4);
    v27 = *(v7 + 48);
    sub_22BE2B9D0(a1 + v26, v10, &qword_27D9082F0, &qword_22C27AB00);
    sub_22BE2B9D0(v16, &v10[v27], &qword_27D9082F0, &qword_22C27AB00);
    if (sub_22BE1AEA8(v10, 1, v4) == 1)
    {
      sub_22BE33928(v16, &qword_27D9082F0, &qword_22C27AB00);
      if (sub_22BE1AEA8(&v10[v27], 1, v4) == 1)
      {
        sub_22BE33928(v10, &qword_27D9082F0, &qword_22C27AB00);
LABEL_13:
        v32 = v45;
        sub_22BE3F300();
        v31 = 0;
        return sub_22BE19DC4(v32, v31, 1, v44);
      }
    }

    else
    {
      v30 = v41;
      sub_22BE2B9D0(v10, v41, &qword_27D9082F0, &qword_22C27AB00);
      if (sub_22BE1AEA8(&v10[v27], 1, v4) != 1)
      {
        v34 = v43;
        v35 = v40;
        (*(v43 + 32))(v40, &v10[v27], v4);
        sub_22C1AE190(&qword_27D9071C8, MEMORY[0x277CC95F0]);
        v36 = sub_22C272FD4();
        v37 = *(v34 + 8);
        v37(v35, v4);
        sub_22BE33928(v16, &qword_27D9082F0, &qword_22C27AB00);
        v37(v30, v4);
        sub_22BE33928(v10, &qword_27D9082F0, &qword_22C27AB00);
        v29 = v39;
        if (v36)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      sub_22BE33928(v16, &qword_27D9082F0, &qword_22C27AB00);
      (*(v43 + 8))(v30, v4);
    }

    sub_22BE33928(v10, &qword_27D90A8E8, &qword_22C288AF8);
    v29 = v39;
LABEL_9:
    v28 = type metadata accessor for Action;
    goto LABEL_10;
  }

  v28 = type metadata accessor for Session.Event.Payload;
  v29 = v20;
LABEL_10:
  sub_22BE1AE00(v29, v28);
  v31 = 1;
  v32 = v45;
  return sub_22BE19DC4(v32, v31, 1, v44);
}

void sub_22C19FDEC()
{
  sub_22BE19460();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_22BE29420(v9, v7);
  v14 = *(v13 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Session.Event(255);
  swift_getTupleTypeMetadata2();
  sub_22BE3935C();
  v15 = sub_22C273844();
  sub_22BE179D8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE2C64C();
  v21 = sub_22BE18240();
  v6(v21);
  v29[2] = v10;
  v29[3] = v8;
  v28[2] = v10;
  v28[3] = v8;
  v28[4] = v4;
  v28[5] = v29;
  v22 = v2(0);
  sub_22C19522C(v27, v28, MEMORY[0x277D84A98], v22, v23, v12);
  v24 = *(v17 + 8);
  v25 = sub_22BE191C0();
  v26(v25);
  sub_22BE1AABC();
}

uint64_t sub_22C19FF54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Request(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22BE3F300();
    sub_22BE2B9D0(&v9[*(v6 + 44)], a1, &qword_27D911F50, &qword_22C2B5EF0);
    return sub_22BE1AE00(v9, type metadata accessor for Request);
  }

  else
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    v12 = type metadata accessor for DateTimeContext();
    return sub_22BE19DC4(a1, 1, 1, v12);
  }
}

uint64_t sub_22C1A00FC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserTurnStarted(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3F300();
    sub_22BE2B9D0(&v9[*(v6 + 28)], a1, &qword_27D9120B0, &qword_22C2B5F00);
    return sub_22BE1AE00(v9, type metadata accessor for UserTurnStarted);
  }

  else
  {
    sub_22BE1AE00(v5, type metadata accessor for Session.Event.Payload);
    v12 = sub_22C271394();
    return sub_22BE19DC4(a1, 1, 1, v12);
  }
}

uint64_t sub_22C1A02B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Session.Event.Payload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Request(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for Session.Event(0) + 28);
  v21[3] = a2;
  v21[4] = a3;
  v17 = sub_22BE62524(v21);
  (*(*(a2 - 8) + 16))(v17, a1, a2);
  Session.Event.Payload.applyingRequestAmendment(transcript:)();
  sub_22BE26B64(v21);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22BE3F300();
    sub_22BE2B9D0(&v15[*(v12 + 36)], a4, &qword_27D9120B0, &qword_22C2B5F00);
    return sub_22BE1AE00(v15, type metadata accessor for Request);
  }

  else
  {
    sub_22BE1AE00(v11, type metadata accessor for Session.Event.Payload);
    v19 = sub_22C271394();
    return sub_22BE19DC4(a4, 1, 1, v19);
  }
}

uint64_t sub_22C1A04B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a5 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Session.Event(255);
  sub_22BE37660();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void TailTranscriptProtocol.latestContext.getter()
{
  sub_22BE19460();
  v3 = type metadata accessor for Session.Event.Payload(0);
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v9 = v8 - v7;
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v11 = sub_22BE18000(DecorationResult);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE1BC40();
  v14 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A8B4();
  v18 = type metadata accessor for Session.Event(0);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  sub_22BE1B1C4();
  sub_22BE18240();
  TailTranscriptProtocol.latestQueryDecorationResultEvent()();
  sub_22BE23B00(v1);
  if (v22)
  {
    sub_22BE33928(v1, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    sub_22BE18B40();
    sub_22BE3F300();
    v23 = *(v18 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v2, v24);
    sub_22BE33FD8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 30)
    {
      sub_22BE35898();
      sub_22BE3F300();
      v26 = *(v0 + *(DecorationResult + 28));

      sub_22BE48E64();
      sub_22BE1AE00(v0, v27);
    }

    else
    {
      sub_22BE17E60();
      sub_22BE1AE00(v9, v28);
    }
  }

  sub_22BE1AABC();
}

void TailTranscriptProtocol.originatingDeviceWasLocal.getter()
{
  sub_22BE19460();
  v23 = v1;
  v3 = sub_22BE37C44(*(v2 + 8));
  sub_22BE18000(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE2C64C();
  sub_22BE1AD04();
  swift_getWitnessTable();
  sub_22C1AE268();
  v7 = sub_22C273CD4();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v13);
  sub_22BE7431C(&qword_27D9072A8, &qword_22C275110);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22BE25CB4();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE3C50C();
  v14 = sub_22C273BF4();
  sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE25CD0();
  MEMORY[0x2318ABA30](v23, v0);
  sub_22BE4258C();
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE25BA0();
  sub_22BE3CD40();
  sub_22BE33FD8();
  sub_22C273DA4();
  v18 = *(v10 + 8);
  v19 = sub_22BE39EAC();
  v18(v19);
  sub_22BE35DC0();
  sub_22C273D64();
  v20 = sub_22BE1AB74();
  v18(v20);
  sub_22BE1BB98();
  swift_getWitnessTable();
  sub_22BE367D4();
  swift_getWitnessTable();
  sub_22C1AE1F8();
  swift_getWitnessTable();
  sub_22BE37490();
  swift_getWitnessTable();
  sub_22C1AE474();
  v21 = sub_22BE1B5F8();
  v22(v21, v14);
  sub_22BE1AABC();
}

uint64_t sub_22C1A0A04@<X0>(char *a1@<X8>)
{
  v2 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for SessionStart(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Session.Event.Payload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_22BE1AE00(v13, type metadata accessor for Session.Event.Payload);
    v16 = 2;
  }

  else
  {
    sub_22BE3F300();
    sub_22BE2B9D0(&v9[*(v6 + 20)], v5, &qword_27D911F60, &unk_22C2B5CD0);
    sub_22BE1AE00(v9, type metadata accessor for SessionStart);
    v17 = sub_22C26EA84();
    v16 = sub_22BE1AEA8(v5, 1, v17) == 1;
    result = sub_22BE33928(v5, &qword_27D911F60, &unk_22C2B5CD0);
  }

  *a1 = v16;
  return result;
}

void TailTranscriptProtocol.latestSuccessfulResponseEventFromLatestRequest.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v199 = sub_22C26F894();
  v28 = sub_22BE179D8(v199);
  v187 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  sub_22BE183BC();
  v198 = sub_22C2700F4();
  v32 = sub_22BE179D8(v198);
  v200 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  sub_22BE190A8(v36);
  v37 = sub_22BE5CE4C(&qword_27D915378, &qword_22C2CB4E0);
  sub_22BE19448(v37);
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  sub_22BE18950(v41);
  v191 = sub_22C26F754();
  v42 = sub_22BE179D8(v191);
  v190 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  sub_22BE18950(v46);
  v192 = sub_22C2720A4();
  v47 = sub_22BE179D8(v192);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19E94();
  v54 = sub_22BE18950(v53);
  v55 = type metadata accessor for Session.Event.Payload(v54);
  v56 = sub_22BE18000(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  v196 = v59;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v60);
  sub_22BE19490();
  v201 = v61;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v62);
  sub_22BE19490();
  v202 = v63;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v208 = v65;
  v66 = *(*(v25 + 8) + 8);
  v195 = *(v66 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v197 = v67;
  v69 = *(v68 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v70);
  v72 = sub_22BE268D0(v71, v184);
  v203 = type metadata accessor for Session.Event(v72);
  v73 = sub_22BE18000(v203);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  v207 = v76;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v77);
  sub_22BE19E94();
  sub_22BE17C68();
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE2379C();
  sub_22BE37660();
  v83 = sub_22C273CD4();
  sub_22BE19448(v83);
  v85 = *(v84 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE19E64();
  sub_22BE37660();
  v87 = sub_22C273CC4();
  sub_22BE179D8(v87);
  v193 = v88;
  v90 = *(v89 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE1A8B4();
  v92 = *(v79 + 16);
  v92(v20, v20, v27);
  v93 = v66;
  v94 = v195;
  MEMORY[0x2318AB6A0](v27, v93);
  v95 = sub_22BE392D4();
  (v92)(v95);
  v194 = v87;
  v96 = *(v87 + 36);
  v97 = v196;
  sub_22BE18240();
  sub_22C2736F4();
  v98 = *(v79 + 8);
  v99 = sub_22BE1BF88();
  v100(v99);
  while (1)
  {
    v101 = v204;
    sub_22BE18240();
    sub_22C2736B4();
    sub_22BE1B18C();
    v102 = *(swift_getAssociatedConformanceWitness() + 8);
    v103 = sub_22C272FD4();
    v104 = *(v197 + 8);
    v105 = sub_22BE1AB74();
    v106(v105);
    if (v103)
    {
      goto LABEL_24;
    }

    sub_22C272F84();
    v107 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v108 = sub_22BE287D4();
    v107(v108);
    sub_22BE18B40();
    sub_22BE3F300();
    v109 = *(v203 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE25D0C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 43)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_22BE17E60();
        sub_22BE1AE00(v208, v152);
        sub_22BE3C6E0(&v210);
        sub_22C271A94();
        v120 = sub_22C272084();
        sub_22C2737A4();
        v153 = sub_22BE31268();
        if (!os_log_type_enabled(v153, v154))
        {
          goto LABEL_23;
        }

        sub_22BE36138();
        v155 = swift_slowAlloc();
        sub_22C1AE37C(v155);
        v126 = "latestSuccessfulResponseEventFromLatestRequest: No system response following the request";
LABEL_22:
        sub_22BE19E74(&dword_22BE15000, v124, v125, v126);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
LABEL_23:

        sub_22BE1B5D4(&a14);
        v156(v101, v192);
        sub_22BE18F8C();
        sub_22BE1AE00(v207, v157);
LABEL_24:
        sub_22BE1B5D4(&a16);
        v136 = v21;
LABEL_25:
        v135(v136, v194);
        sub_22BE1A140();
        sub_22BE19DC4(v158, v159, v160, v198);
LABEL_31:
        sub_22BE1AABC();
        return;
      }

      sub_22BE17E60();
      sub_22BE1AE00(v208, v111);
    }

    v101 = v94;
    v112 = v27;
    v113 = v97;
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE25D0C();
    v114 = swift_getEnumCaseMultiPayload();
    sub_22BE17E60();
    sub_22BE1AE00(v202, v115);
    if (v114 == 22)
    {
      sub_22BE3C6E0(&a10);
      sub_22C271A94();
      v120 = sub_22C272084();
      sub_22C2737A4();
      v121 = sub_22BE31268();
      if (!os_log_type_enabled(v121, v122))
      {
        goto LABEL_23;
      }

      sub_22BE36138();
      v123 = swift_slowAlloc();
      sub_22C1AE37C(v123);
      v126 = "latestSuccessfulResponseEventFromLatestRequest: No system response following the external agent request";
      goto LABEL_22;
    }

    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE2BA80();
    v116 = swift_getEnumCaseMultiPayload();
    sub_22BE17E60();
    sub_22BE1AE00(v201, v117);
    if (v116 == 23)
    {
      sub_22BE3C6E0(&a9);
      sub_22C271A94();
      v127 = sub_22C272084();
      sub_22C2737A4();
      v128 = sub_22BE31268();
      if (os_log_type_enabled(v128, v129))
      {
        sub_22BE36138();
        v130 = swift_slowAlloc();
        sub_22C1AE37C(v130);
        sub_22BE19E74(&dword_22BE15000, v131, v132, "latestSuccessfulResponseEventFromLatestRequest: Latest system response is an external agent outcome");
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      sub_22BE1B5D4(&a14);
      v133(v101, v192);
      sub_22BE18F8C();
      sub_22BE1AE00(v207, v134);
      sub_22BE1B5D4(&a16);
      v136 = v21;
      goto LABEL_25;
    }

    sub_22BE1C08C();
    v97 = v113;
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      break;
    }

    sub_22BE18F8C();
    sub_22BE1AE00(v207, v118);
    sub_22BE17E60();
    sub_22BE1AE00(v113, v119);
    v27 = v112;
    v94 = v101;
  }

  v137 = *(v190 + 32);
  v138 = sub_22BE3E8FC();
  v139(v138);
  v140 = sub_22C26F734();
  v141 = 0;
  v209 = *(v140 + 16);
  v205 = *MEMORY[0x277D1CBF0];
  v142 = (v187 + 8);
  while (1)
  {
    if (v209 == v141)
    {

      sub_22BE1A140();
      sub_22BE19DC4(v161, v162, v163, v198);
      sub_22C271A94();
      v164 = sub_22C272084();
      sub_22C2737A4();
      v165 = sub_22BE31268();
      if (os_log_type_enabled(v165, v166))
      {
        sub_22BE36138();
        v167 = swift_slowAlloc();
        sub_22C1AE37C(v167);
        sub_22BE19E74(&dword_22BE15000, v168, v169, "latestSuccessfulResponseEventFromLatestRequest: No success outcome in latest system response");
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      sub_22BE1B5D4(&a14);
      v170(v185, v192);
      goto LABEL_30;
    }

    if (v141 >= *(v140 + 16))
    {
      break;
    }

    v143 = *(v200 + 80);
    sub_22BE19E14();
    (*(v145 + 16))(v188, v140 + v144 + *(v145 + 72) * v141, v198);
    sub_22C2700E4();
    v146 = *(v187 + 88);
    v147 = sub_22BE431C0();
    if (v148(v147) == v205)
    {

      v171 = *v142;
      v172 = sub_22BE431C0();
      v173(v172);
      (*(v200 + 32))(v186, v188, v198);
      sub_22BE187DC();
      sub_22BE19DC4(v174, v175, v176, v198);
LABEL_30:
      sub_22BE1B5D4(&a12);
      v177(v189, v191);
      sub_22BE18F8C();
      sub_22BE1AE00(v207, v178);
      v179 = *(v193 + 8);
      v180 = sub_22BE2565C();
      v181(v180);
      v182 = sub_22BE1AB74();
      sub_22C1ADD94(v182, v183);
      goto LABEL_31;
    }

    ++v141;
    v149 = *v142;
    v150 = sub_22BE431C0();
    v151(v150);
    (*(v200 + 8))(v188, v198);
  }

  __break(1u);
}

void TailTranscriptProtocol.isStatementSkipped(id:)()
{
  sub_22BE19460();
  v66 = v0;
  v4 = v3;
  v6 = v5;
  v65 = type metadata accessor for Session.Event.Payload(0);
  v7 = sub_22BE18000(v65);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v64 = v10;
  v11 = sub_22BE183BC();
  v12 = type metadata accessor for SkipStatement(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v61 = v16;
  v17 = *(*(v4 + 8) + 8);
  v18 = *(v17 + 8);
  sub_22BE22ED0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v59 = v20;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A174();
  v24 = sub_22BE183BC();
  v63 = type metadata accessor for Session.Event(v24);
  v25 = sub_22BE18000(v63);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE4152C(v28);
  sub_22BE17C68();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE2379C();
  sub_22BE1B68C();
  v34 = sub_22C273CD4();
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE23E58();
  sub_22BE1B68C();
  v38 = sub_22C273CC4();
  v60 = sub_22BE179D8(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE234F4();
  v42 = *(v30 + 16);
  v42(v4, v66, v6);
  MEMORY[0x2318AB6A0](v6, v17);
  v42(v1, v2, v6);
  v43 = *(v60 + 36);
  sub_22BE33FD8();
  sub_22C2736F4();
  v44 = sub_22BE3408C();
  v45(v44, v6);
  while (1)
  {
    sub_22BE33FD8();
    sub_22C2736B4();
    sub_22BE1B5EC();
    v46 = *(swift_getAssociatedConformanceWitness() + 8);
    v47 = sub_22C1AE4B4();
    v48 = *(v59 + 8);
    v49 = sub_22BE25D0C();
    v50(v49);
    if (v47)
    {
      break;
    }

    sub_22C272F84();
    v51 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v52 = sub_22BE1812C();
    v51(v52);
    v53 = *(v63 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v62, v54);
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_22BE3F300();
      v55 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      sub_22BE1AE00(v61, type metadata accessor for SkipStatement);
      if (v55)
      {
        break;
      }
    }

    else
    {
      sub_22BE17E60();
      sub_22BE1AE00(v64, v56);
    }
  }

  v57 = sub_22BE28D70();
  v58(v57);
  sub_22BE1AABC();
}

void FullTranscriptProtocol.nextValidUnexecutedActionsOrQueries(shouldExecuteEventsWithUnfinishedActionsIfAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v322 = v20;
  v25 = v24;
  v27 = v26;
  LODWORD(v308) = v28;
  v29 = type metadata accessor for TypeConversionResult(0);
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v34 = sub_22BE18950(v33);
  StepResults = type metadata accessor for QueryStepResults(v34);
  v36 = sub_22BE19448(StepResults);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  v40 = sub_22BE18950(v39);
  v41 = type metadata accessor for StatementResult(v40);
  v42 = sub_22BE19448(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v46 = sub_22BE18950(v45);
  v306 = type metadata accessor for UndoRedoRequest(v46);
  v47 = sub_22BE18000(v306);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  v51 = sub_22BE18950(v50);
  v305 = type metadata accessor for TypeConversionRequest(v51);
  v52 = sub_22BE18000(v305);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE17A44();
  v56 = sub_22BE18950(v55);
  Step = type metadata accessor for QueryStep(v56);
  v58 = sub_22BE19448(Step);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  sub_22BE190A8(v61);
  v309 = v25;
  v320 = v25[1];
  v62 = *(*(*(v320 + 1) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = sub_22C26E684();
  v65 = type metadata accessor for Session.Event(255);
  sub_22C1AE468();
  v317 = v64;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_22BE18000(TupleTypeMetadata3);
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A174();
  v316 = v69;
  v70 = sub_22BE183BC();
  v71 = type metadata accessor for Action(v70);
  v72 = sub_22BE19448(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17A44();
  v76 = sub_22BE18950(v75);
  v323 = type metadata accessor for Session.Event.Payload(v76);
  v77 = sub_22BE18000(v323);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE1BC24(v65);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE17A44();
  v329 = v83;
  swift_getTupleTypeMetadata2();
  sub_22BE3935C();
  v319 = v84;
  v325 = sub_22C273844();
  v85 = sub_22BE179D8(v325);
  v295 = v86;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BE17B98();
  v324 = v89;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v90);
  v92 = v283 - v91;
  sub_22C1AE2B0();
  v93 = swift_getAssociatedTypeWitness();
  sub_22BE179D8(v93);
  v293 = v94;
  v96 = *(v95 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v97);
  sub_22BE1A174();
  sub_22BE190A8(v98);
  sub_22BE2565C();
  swift_getAssociatedConformanceWitness();
  sub_22C1AE468();
  v297 = v99;
  v292 = sub_22C273C34();
  sub_22BE179D8(v292);
  v291 = v100;
  v102 = *(v101 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v103);
  sub_22BE1A174();
  sub_22BE190A8(v104);
  sub_22BE2565C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22BE1B68C();
  v290 = sub_22C26F7B4();
  sub_22BE179D8(v290);
  v289 = v106;
  v108 = *(v107 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v109);
  sub_22BE1A174();
  sub_22BE18950(v110);
  v294 = v93;
  v287 = AssociatedConformanceWitness;
  v326 = sub_22C26F7A4();
  sub_22BE179D8(v326);
  v296 = v111;
  v113 = *(v112 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v114);
  sub_22BE268D0(v115, v283[0]);
  v285 = sub_22C2720A4();
  v116 = sub_22BE179D8(v285);
  v284 = v117;
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v116);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v120);
  sub_22BE19E94();
  sub_22BE190A8(v121);
  sub_22BE17C68();
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22BE17B98();
  v328 = v127;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v128);
  sub_22BE19E94();
  sub_22BE190A8(v129);
  v321 = v62;
  v318 = swift_getAssociatedTypeWitness();
  sub_22BE179D8(v318);
  v315 = v130;
  v132 = *(v131 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v133);
  sub_22BE1A174();
  sub_22BE190A8(v134);
  v307 = v65;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BE46BB4();
  v298 = sub_22C273844();
  sub_22BE179D8(v298);
  v137 = v136;
  v139 = *(v138 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v140);
  sub_22BE1A8B4();
  sub_22C1AE468();
  v301 = sub_22C273844();
  v141 = sub_22BE179D8(v301);
  v303 = v142;
  v144 = *(v143 + 64);
  MEMORY[0x28223BE20](v141);
  sub_22BE183AC();
  v147 = v145 - v146;
  v149 = MEMORY[0x28223BE20](v148);
  v151 = v283 - v150;
  MEMORY[0x28223BE20](v149);
  sub_22BE19E94();
  sub_22BE190A8(v152);
  v310 = v27;
  TailTranscriptProtocol.latestRequestEvent()();
  v153 = sub_22BE406A0();
  sub_22BE1AB5C(v153, v154, TupleTypeMetadata2);
  v311 = AssociatedTypeWitness;
  v313 = v123;
  v299 = TupleTypeMetadata2;
  if (v166)
  {
    (*(v137 + 8))(v62, v298);
    sub_22BE1A140();
    sub_22BE19DC4(v155, v156, v157, AssociatedTypeWitness);
  }

  else
  {
    v158 = *(TupleTypeMetadata2 + 48);
    v159 = *(v123 + 32);
    v160 = sub_22BE1AEE4();
    v159(v160);
    sub_22BE187DC();
    sub_22BE19DC4(v161, v162, v163, v311);
    sub_22BE18F8C();
    v164 = v62 + v158;
    AssociatedTypeWitness = v311;
    sub_22BE1AE00(v164, v165);
    sub_22BE23B00(v151);
    if (!v166)
    {
      v171 = v302;
      v172 = sub_22BE1BF88();
      v159(v172);
      sub_22BE187DC();
      sub_22BE19DC4(v173, v174, v175, AssociatedTypeWitness);
      v176 = v310;
      v177 = TupleTypeMetadata3;
      v178 = v301;
      v179 = v303;
      goto LABEL_8;
    }
  }

  v176 = v310;
  sub_22C2736E4();
  sub_22BE1AB74();
  v167 = v318;
  swift_getAssociatedConformanceWitness();
  v168 = v302;
  sub_22C273734();
  v169 = sub_22BE3408C();
  v170(v169, v167);
  v171 = v168;
  sub_22BE23B00(v151);
  v177 = TupleTypeMetadata3;
  v178 = v301;
  v179 = v303;
  if (!v166)
  {
    (*(v303 + 8))(v151, v301);
  }

LABEL_8:
  v180 = *(v179 + 16);
  v181 = sub_22BE191CC();
  v182(v181);
  sub_22BE23B00(v147);
  if (v166)
  {
    v183 = *(v179 + 8);
    v183(v147, v178);
    sub_22C273524();
    v183(v171, v178);
LABEL_48:
    sub_22BE1AABC();
    return;
  }

  v184 = v313;
  v185 = *(v313 + 32);
  v312 = v313 + 32;
  v320 = v185;
  v185(v300, v147, AssociatedTypeWitness);
  if (v308)
  {
    v186.value = FullTranscriptProtocol.shouldExecuteEventsWithUnfinishedActions()().value;
    if (v186.value != 2 && v186.value)
    {
      sub_22BE2BD40(&v310);
      sub_22C271B44();
      v187 = sub_22C272084();
      v188 = sub_22C273784();
      v189 = sub_22BE46168();
      if (os_log_type_enabled(v189, v190))
      {
        sub_22BE36138();
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_22BE15000, v187, v188, "Extracting Previous Events to Stage AppIntent State to Accept User Prompt", v191, 2u);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      v192 = *(v284 + 8);
      v192(v286, v285);
      sub_22C1A3500(v300, v176, v309);
      if (sub_22C273564() >= 1)
      {
        v193 = v283[1];
        sub_22C271B44();

        v194 = sub_22C272084();
        v195 = sub_22C273784();
        v196 = sub_22BE46168();
        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          *v198 = 134217984;
          *(v198 + 4) = sub_22C273564();

          _os_log_impl(&dword_22BE15000, v194, v195, "Number of Events to Execute to Stage AppIntent State: %ld", v198, 0xCu);
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
        }

        else
        {
        }

        v192(v193, v285);
        sub_22BE1B5D4(&a18);
        v281(v300, AssociatedTypeWitness);
        sub_22C1AE228();
        v282(v302, v178);
        goto LABEL_48;
      }

      v184 = v313;
    }
  }

  sub_22C1AE2B0();
  v332 = sub_22C273524();
  v199 = *(v297 + 8);
  if (sub_22C1AE4B4())
  {
    v200 = *(v184 + 16);
    v201 = v288;
    v202 = sub_22BE191CC();
    v308 = v203;
    v203(v202);
    v204 = v292;
    swift_getWitnessTable();
    sub_22BE3C6E0(&v318);
    sub_22BE1B5EC();
    sub_22C273754();
    sub_22BE1B5D4(&v316);
    v205(v201, v204);
    sub_22C2736C4();
    sub_22BE1B5D4(&v319);
    v206 = sub_22BE1AB74();
    v207(v206);
    sub_22C26F784();
    sub_22BE1B5D4(&TupleTypeMetadata3);
    v208 = sub_22BE1B5EC();
    v209(v208);
    v321 = (v295 + 32);
    v313 = v184 + 16;
    v322 = v184 + 8;
    v315 = v317 - 8;
    v210 = v307;
    v318 = v21;
    v211 = v319;
    v212 = v312;
    while (1)
    {
      sub_22C26F794();
      v213 = *v321;
      v214 = sub_22BE291B0();
      v215(v214);
      sub_22BE1AB5C(v92, 1, v211);
      if (v166)
      {
        break;
      }

      v216 = *(v211 + 48);
      v320(v328, v92, AssociatedTypeWitness);
      sub_22BE18B40();
      v217 = v329;
      sub_22BE3F300();
      v218 = *(v210 + 28);
      sub_22BE1C08C();
      sub_22BE1AA10();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 21:
          sub_22BE1A06C();
          sub_22BE22944(&a10);
          sub_22BE3F300();
          sub_22BE27C34();
          MEMORY[0x28223BE20](v220);
          v221 = sub_22BE28FF0();

          sub_22BE195F0();
          swift_getWitnessTable();
          sub_22BE3FE48();

          sub_22C1AE3D0();
          if (v166)
          {
            sub_22BE18F8C();
            sub_22BE1AE00(v329, v222);
            v223 = sub_22BE23968();
            v224(v223);
          }

          else
          {
            sub_22C1AE328();
            sub_22BE20294();
            sub_22BE1AE00(v329, v268);
            v269 = sub_22BE41658();
            (v217)(v269);
            sub_22BE27A98();
            sub_22BE3C5B0();
            (*(v270 + 8))(v177 + v221);
            v271 = sub_22BE2BA80();
            (v217)(v271);
          }

          v177 = v21;
          v211 = v319;
          sub_22BE23244();
          v267 = &a10;
          goto LABEL_46;
        case 22:
        case 23:
        case 24:
        case 25:
        case 27:
          goto LABEL_31;
        case 26:
          sub_22BE29370();
          sub_22C1AE3FC(&v332);
          v237 = *(v306 + 28);
          v231 = *(v177 + 48);
          v177 = *(TupleTypeMetadata3 + 64);
          v21 = v316;
          sub_22BE259C8();
          v238();
          sub_22BE2056C();
          (*(v239 + 16))(v21 + v231, &v217[v237]);
          sub_22BE1A7F8();
          sub_22C1AE494();
          sub_22C1AE2B0();
          sub_22C2735B4();
          sub_22BE38A78();
          v240 = type metadata accessor for UndoRedoRequest;
          goto LABEL_38;
        case 28:
          sub_22BE29370();
          sub_22C1AE3FC(&v331);
          v246 = *(v305 + 24);
          v231 = *(v177 + 48);
          v177 = *(TupleTypeMetadata3 + 64);
          v21 = v316;
          sub_22BE259C8();
          v247();
          sub_22BE2056C();
          (*(v248 + 16))(v21 + v231, &v217[v246]);
          sub_22BE1A7F8();
          sub_22C1AE494();
          sub_22C1AE2B0();
          sub_22C2735B4();
          sub_22BE38A78();
          v240 = type metadata accessor for TypeConversionRequest;
          goto LABEL_38;
        case 29:
          sub_22BE29370();
          sub_22BE22944(&a11);
          sub_22BE3F300();
          sub_22BE27C34();
          MEMORY[0x28223BE20](v241);
          v242 = sub_22BE28FF0();

          sub_22BE195F0();
          swift_getWitnessTable();
          sub_22BE3FE48();

          sub_22C1AE3D0();
          if (v166)
          {
            sub_22BE18F8C();
            sub_22BE1AE00(v329, v243);
            v244 = sub_22BE23968();
            v245(v244);
          }

          else
          {
            sub_22C1AE328();
            sub_22BE20294();
            sub_22BE1AE00(v329, v262);
            v263 = sub_22BE41658();
            (v217)(v263);
            sub_22BE27A98();
            sub_22BE3C5B0();
            (*(v264 + 8))(v177 + v242);
            v265 = sub_22BE2BA80();
            (v217)(v265);
          }

          v177 = v21;
          v211 = v319;
          v266 = type metadata accessor for TypeConversionResult;
          v267 = &a11;
          goto LABEL_46;
        default:
          if (EnumCaseMultiPayload == 12)
          {
            sub_22BE29370();
            sub_22BE22944(&a9);
            sub_22BE3F300();
            sub_22BE27C34();
            MEMORY[0x28223BE20](v257);
            v258 = sub_22BE28FF0();

            sub_22BE195F0();
            swift_getWitnessTable();
            sub_22BE3FE48();

            sub_22C1AE3D0();
            if (v166)
            {
              sub_22BE18F8C();
              sub_22BE1AE00(v329, v259);
              v260 = sub_22BE23968();
              v261(v260);
            }

            else
            {
              sub_22C1AE328();
              sub_22BE20294();
              sub_22BE1AE00(v329, v272);
              v273 = sub_22BE41658();
              (v217)(v273);
              sub_22BE27A98();
              sub_22BE3C5B0();
              (*(v274 + 8))(v177 + v258);
              v275 = sub_22BE2BA80();
              (v217)(v275);
            }

            v177 = v21;
            v211 = v319;
            v266 = type metadata accessor for QueryStepResults;
            v267 = &a9;
LABEL_46:
            sub_22BE1AE00(*(v267 - 32), v266);
            v210 = v307;
            v21 = v318;
          }

          else
          {
            if (EnumCaseMultiPayload == 8)
            {
              sub_22BE29370();
              sub_22C1AE3FC(&v330);
              v249 = *(v177 + 48);
              v250 = *(v177 + 64);
              v21 = v316;
              sub_22BE259C8();
              v251();
              sub_22BE2056C();
              (*(v252 + 16))(v21 + v249, v217);
              sub_22BE1A7F8();
              v231 = v329;
              sub_22BE1AA10();
              sub_22C1AE2B0();
              sub_22C2735B4();
              sub_22BE38A78();
              v240 = type metadata accessor for QueryStep;
LABEL_38:
              v232 = v240;
              v233 = v217;
            }

            else
            {
              if (EnumCaseMultiPayload != 5)
              {
LABEL_31:
                sub_22BE18F8C();
                sub_22BE1AE00(v329, v234);
                sub_22BE3CE5C();
                v235(v328, AssociatedTypeWitness);
                sub_22BE17E60();
                sub_22BE1AE00(v21, v236);
                continue;
              }

              sub_22BE2F27C();
              v225 = v304;
              sub_22BE3F300();
              v226 = *(v177 + 48);
              v227 = *(v177 + 64);
              v228 = v316;
              sub_22BE259C8();
              v229();
              sub_22BE2056C();
              (*(v230 + 16))(v228 + v226, v225);
              sub_22BE1A7F8();
              v231 = v329;
              sub_22BE1AA10();
              sub_22C1AE2B0();
              sub_22C2735B4();
              sub_22C273574();
              sub_22C1AE280();
              v233 = v225;
              v21 = v318;
            }

            sub_22BE1AE00(v233, v232);
            sub_22BE18F8C();
            v253 = v231;
            v211 = v319;
            sub_22BE1AE00(v253, v254);
            sub_22BE3CE5C();
            v255 = v210;
            v210 = v212;
            v212 = v312;
            v256(v255, AssociatedTypeWitness);
          }

          break;
      }
    }

    sub_22BE1B5D4(&v322);
    v277 = v276(v327, v326);
    v330 = v332;
    MEMORY[0x28223BE20](v277);
    v278 = v309;
    v283[-2] = v310;
    v283[-1] = v278;
    sub_22C2735B4();
    sub_22BE195F0();
    swift_getWitnessTable();
    sub_22C194C60();

    sub_22BE3CE5C();
    v279(v300, AssociatedTypeWitness);
    sub_22C1AE228();
    v280(v302, v301);
    goto LABEL_48;
  }

  __break(1u);
}

Swift::Bool_optional __swiftcall FullTranscriptProtocol.shouldExecuteEventsWithUnfinishedActions()()
{
  sub_22BE19460();
  v24 = v0;
  sub_22BE29420(v0, v1);
  v3 = sub_22BE37C44(v2);
  sub_22BE18000(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE2C64C();
  sub_22BE1AD04();
  swift_getWitnessTable();
  sub_22C1AE268();
  v7 = sub_22C273CD4();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v13);
  sub_22BE7431C(&qword_27D9072A8, &qword_22C275110);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22BE25CB4();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE3C50C();
  v14 = sub_22C273BF4();
  sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE25CD0();
  MEMORY[0x2318ABA30](v24);
  sub_22BE4258C();
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE25BA0();
  sub_22BE3CD40();
  sub_22BE33FD8();
  sub_22C273DA4();
  v18 = *(v10 + 8);
  v19 = sub_22BE39EAC();
  v18(v19);
  sub_22BE35DC0();
  sub_22C273D64();
  v20 = sub_22BE1AB74();
  v18(v20);
  sub_22BE1BB98();
  swift_getWitnessTable();
  sub_22BE367D4();
  swift_getWitnessTable();
  sub_22C1AE1F8();
  swift_getWitnessTable();
  sub_22BE37490();
  swift_getWitnessTable();
  sub_22C1AE474();
  v21 = sub_22BE1B5F8();
  v22(v21, v14);
  sub_22BE1AABC();
  return result;
}

uint64_t sub_22C1A3500(void (**a1)(char *, char *, uint64_t), void *a2, void *a3)
{
  v226 = a1;
  v219 = sub_22C26F894();
  v225 = *(v219 - 8);
  v5 = *(v225 + 64);
  MEMORY[0x28223BE20](v219);
  v218 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for StatementResult(0);
  v7 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215);
  v214 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for TypeConversionResult(0);
  v9 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v216 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  StepResults = type metadata accessor for QueryStepResults(0);
  v11 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  v207 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for UndoRedoRequest(0);
  v13 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v186 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for TypeConversionRequest(0);
  v15 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v185 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for QueryStep(0);
  v18 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step - 8);
  v181 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_22C26E684();
  v184 = *(v224 - 8);
  v20 = *(v184 + 64);
  MEMORY[0x28223BE20](v224);
  v177 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = a3;
  v22 = *(*(*(a3[1] + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Session.Event(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(*(TupleTypeMetadata2 - 8) + 64);
  v27 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v179 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v178 = &v171 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v176 = &v171 - v32;
  MEMORY[0x28223BE20](v31);
  v175 = &v171 - v33;
  v34 = type metadata accessor for Action(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v180 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for Session.Event.Payload(0);
  v37 = *(*(v227 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v227);
  v40 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(*(v24 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v38);
  v44 = &v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = *(AssociatedTypeWitness - 8);
  v45 = *(v205 + 64);
  MEMORY[0x28223BE20](v42);
  v220 = &v171 - v46;
  v221 = v24;
  v230 = swift_getTupleTypeMetadata2();
  v229 = sub_22C273844();
  v211 = *(v229 - 8);
  v47 = *(v211 + 64);
  v48 = MEMORY[0x28223BE20](v229);
  v228 = &v171 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v171 - v50;
  v52 = swift_getAssociatedTypeWitness();
  v210 = *(v52 - 8);
  v53 = *(v210 + 64);
  MEMORY[0x28223BE20](v52);
  v209 = (&v171 - v54);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v202 = sub_22C273C34();
  v201 = *(v202 - 8);
  v56 = *(v201 + 64);
  MEMORY[0x28223BE20](v202);
  v197 = &v171 - v57;
  v212 = v22;
  v206 = a2;
  v58 = swift_getAssociatedConformanceWitness();
  v200 = sub_22C26F7B4();
  v199 = *(v200 - 8);
  v59 = *(v199 + 64);
  MEMORY[0x28223BE20](v200);
  v198 = &v171 - v60;
  v231 = sub_22C26F7A4();
  v183 = *(v231 - 1);
  v61 = *(v183 + 64);
  MEMORY[0x28223BE20](v231);
  v232 = &v171 - v62;
  v203 = TupleTypeMetadata2;
  v63 = sub_22C2735B4();
  swift_getTupleTypeMetadata2();
  sub_22C273524();
  v222 = sub_22C1AE190(&qword_28107F2F0, MEMORY[0x277D1C338]);
  v223 = v63;
  v64 = v226;
  v234 = sub_22C272E84();
  v65 = *(AssociatedConformanceWitness + 8);
  if (sub_22C272FD4())
  {
    v196 = v58;
    v66 = v205 + 16;
    v67 = v197;
    v182 = *(v205 + 16);
    v182(v197, v64, AssociatedTypeWitness);
    v68 = v202;
    swift_getWitnessTable();
    v69 = v209;
    sub_22C273754();
    (*(v201 + 8))(v67, v68);
    v70 = v198;
    sub_22C2736C4();
    (*(v210 + 8))(v69, v52);
    v71 = v200;
    sub_22C26F784();
    (*(v199 + 8))(v70, v71);
    v188 = 0;
    v187 = 0;
    v193 = 0;
    v191 = 0;
    v190 = 0;
    v189 = 0;
    v194 = 0;
    v192 = 0;
    v196 = 0;
    v195 = 0;
    v201 = 0;
    v199 = 0;
    v198 = 0;
    v197 = 0;
    v202 = 0;
    v200 = 0;
    v72 = (v211 + 32);
    v226 = (v66 + 16);
    v213 = (v225 + 16);
    v212 = (v225 + 88);
    LODWORD(v211) = *MEMORY[0x277D1CBF0];
    LODWORD(v210) = *MEMORY[0x277D1CBE8];
    v205 = v66;
    v73 = (v66 - 8);
    v209 = (v225 + 8);
    v184 += 16;
    v225 = AssociatedTypeWitness;
    v75 = v220;
    v74 = v221;
    while (1)
    {
      v76 = v228;
      sub_22C26F794();
      (*v72)(v51, v76, v229);
      v77 = v230;
      if (sub_22BE1AEA8(v51, 1, v230) == 1)
      {
        break;
      }

      v78 = *(v77 + 48);
      (*v226)(v75, v51, AssociatedTypeWitness);
      sub_22BE3F300();
      v79 = *(v74 + 28);
      sub_22BE1AA10();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 21:
          v81 = v214;
          sub_22BE3F300();
          v82 = v215;
          v84 = v218;
          v83 = v219;
          (*v213)(v218, v81 + *(v215 + 20), v219);
          v85 = (*v212)(v84, v83);
          if (v85 == v211 || v85 == v210)
          {
            (*v209)(v84, v83);
            v87 = *(v82 + 28);
            sub_22C272EC4();
            sub_22C272E74();

            sub_22BE1AE00(v81, type metadata accessor for StatementResult);
            sub_22BE1AE00(v44, type metadata accessor for Session.Event);
            v75 = v220;
            AssociatedTypeWitness = v225;
            (*v73)(v220, v225);
          }

          else
          {
            sub_22BE1AE00(v81, type metadata accessor for StatementResult);
            sub_22BE1AE00(v44, type metadata accessor for Session.Event);
            v93 = v220;
            AssociatedTypeWitness = v225;
            (*v73)(v220, v225);
            v94 = v84;
            v75 = v93;
            (*v209)(v94, v83);
          }

          v74 = v221;
          continue;
        case 22:
        case 23:
        case 24:
        case 25:
        case 27:
          goto LABEL_14;
        case 26:
          sub_22BE3F300();
          v172 = *(v174 + 28);
          v95 = swift_allocObject();
          v96 = v204;
          *(v95 + 16) = v206;
          *(v95 + 24) = v96;
          sub_22BE5BDA4(v198);
          v198 = *(v203 + 48);
          v182(v179, v75, AssociatedTypeWitness);
          sub_22BE1AA10();
          v97 = swift_allocObject();
          v98 = v204;
          v97[2] = v206;
          v97[3] = v98;
          v97[4] = sub_22C1AE1DC;
          v97[5] = v95;
          v171 = v97;
          v197 = v95;
          sub_22BE5BDA4(v202);
          v99 = v234;
          LODWORD(v200) = swift_isUniquelyReferenced_nonNull_native();
          v233 = v99;
          sub_22BE602B4();
          v202 = v101;
          v102 = *(v99 + 16);
          v103 = (v100 & 1) == 0;
          v104 = __OFADD__(v102, v103);
          v105 = v102 + v103;
          if (v104)
          {
            goto LABEL_50;
          }

          v106 = v100;
          v198 = v105;
          sub_22C273C84();
          v107 = sub_22C273C44();
          v108 = v233;
          if ((v107 & 1) == 0)
          {
            goto LABEL_23;
          }

          LODWORD(v200) = v106;
          sub_22BE602B4();
          v202 = v109;
          if ((v200 & 1) != (v110 & 1))
          {
            goto LABEL_54;
          }

          LOBYTE(v106) = v200;
LABEL_23:
          v234 = v108;
          if ((v106 & 1) == 0)
          {
            v200 = v108;
            v111 = v171[5];
            v233 = (v171[4])();
            (*v184)(v177, v186 + v172, v224);
            v108 = v200;
            sub_22C273C74();
          }

          v112 = *(v108 + 56) + 8 * v202;
          sub_22C273574();
          sub_22BE1AE00(v186, type metadata accessor for UndoRedoRequest);
          sub_22BE1AE00(v44, type metadata accessor for Session.Event);
          (*v73)(v75, AssociatedTypeWitness);
          v202 = sub_22C1AE144;
          v198 = sub_22C1AE1DC;
          v113 = v171;
          v114 = &v232;
          goto LABEL_47;
        case 28:
          sub_22BE3F300();
          v172 = *(v173 + 24);
          v115 = swift_allocObject();
          v116 = v204;
          *(v115 + 16) = v206;
          *(v115 + 24) = v116;
          sub_22BE5BDA4(v196);
          v196 = *(v203 + 48);
          v182(v178, v75, AssociatedTypeWitness);
          sub_22BE1AA10();
          v117 = swift_allocObject();
          v118 = v204;
          v117[2] = v206;
          v117[3] = v118;
          v117[4] = sub_22C1AE1DC;
          v117[5] = v115;
          v171 = v117;
          v195 = v115;
          sub_22BE5BDA4(v201);
          v119 = v234;
          LODWORD(v199) = swift_isUniquelyReferenced_nonNull_native();
          v233 = v119;
          sub_22BE602B4();
          v201 = v121;
          v122 = *(v119 + 16);
          v123 = (v120 & 1) == 0;
          v104 = __OFADD__(v122, v123);
          v124 = v122 + v123;
          if (v104)
          {
            goto LABEL_51;
          }

          v125 = v120;
          v196 = v124;
          sub_22C273C84();
          v126 = sub_22C273C44();
          v127 = v233;
          if ((v126 & 1) == 0)
          {
            goto LABEL_30;
          }

          LODWORD(v199) = v125;
          sub_22BE602B4();
          v201 = v128;
          if ((v199 & 1) != (v129 & 1))
          {
            goto LABEL_54;
          }

          LOBYTE(v125) = v199;
LABEL_30:
          v234 = v127;
          if ((v125 & 1) == 0)
          {
            v199 = v127;
            v130 = v171[5];
            v233 = (v171[4])();
            (*v184)(v177, v185 + v172, v224);
            v127 = v199;
            sub_22C273C74();
          }

          v131 = *(v127 + 56) + 8 * v201;
          sub_22C273574();
          sub_22BE1AE00(v185, type metadata accessor for TypeConversionRequest);
          sub_22BE1AE00(v44, type metadata accessor for Session.Event);
          (*v73)(v75, AssociatedTypeWitness);
          v201 = sub_22C1AE1D8;
          v196 = sub_22C1AE1DC;
          v113 = v171;
          v114 = &v231;
          goto LABEL_47;
        case 29:
          v88 = v216;
          sub_22BE3F300();
          v89 = *(v217 + 24);
          sub_22C272EC4();
          sub_22C272E74();

          v90 = type metadata accessor for TypeConversionResult;
          goto LABEL_17;
        default:
          if (EnumCaseMultiPayload == 12)
          {
            v88 = v207;
            sub_22BE3F300();
            v91 = *(StepResults + 20);
            sub_22C272EC4();
            sub_22C272E74();

            v90 = type metadata accessor for QueryStepResults;
LABEL_17:
            v92 = v88;
            AssociatedTypeWitness = v225;
            sub_22BE1AE00(v92, v90);
            sub_22BE1AE00(v44, type metadata accessor for Session.Event);
            (*v73)(v75, AssociatedTypeWitness);
          }

          else
          {
            if (EnumCaseMultiPayload == 8)
            {
              sub_22BE3F300();
              v148 = swift_allocObject();
              v149 = v204;
              *(v148 + 16) = v206;
              *(v148 + 24) = v149;
              sub_22BE5BDA4(v190);
              v190 = *(v203 + 48);
              v182(v176, v75, AssociatedTypeWitness);
              sub_22BE1AA10();
              v150 = swift_allocObject();
              v151 = v204;
              v150[2] = v206;
              v150[3] = v151;
              v150[4] = sub_22C1AE174;
              v150[5] = v148;
              v172 = v150;
              v189 = v148;
              sub_22BE5BDA4(v194);
              v152 = v234;
              LODWORD(v192) = swift_isUniquelyReferenced_nonNull_native();
              v233 = v152;
              sub_22BE602B4();
              v194 = v154;
              v155 = *(v152 + 16);
              v156 = (v153 & 1) == 0;
              v190 = v155 + v156;
              if (__OFADD__(v155, v156))
              {
                goto LABEL_53;
              }

              v157 = v153;
              sub_22C273C84();
              v158 = sub_22C273C44();
              v159 = v233;
              v192 = v233;
              if (v158)
              {
                sub_22BE602B4();
                v194 = v160;
                if ((v157 & 1) != (v161 & 1))
                {
                  goto LABEL_54;
                }

                v159 = v192;
              }

              v234 = v159;
              if ((v157 & 1) == 0)
              {
                v162 = *(v172 + 40);
                v233 = (*(v172 + 32))();
                (*v184)(v177, v181, v224);
                sub_22C273C74();
                v159 = v192;
              }

              v163 = *(v159 + 56) + 8 * v194;
              sub_22C273574();
              sub_22BE1AE00(v181, type metadata accessor for QueryStep);
              sub_22BE1AE00(v44, type metadata accessor for Session.Event);
              (*v73)(v75, AssociatedTypeWitness);
              v194 = sub_22C1AE1D8;
              v190 = sub_22C1AE174;
              v113 = v172;
              v114 = &v224;
            }

            else
            {
              if (EnumCaseMultiPayload != 5)
              {
LABEL_14:
                sub_22BE1AE00(v44, type metadata accessor for Session.Event);
                (*v73)(v75, AssociatedTypeWitness);
                sub_22BE1AE00(v40, type metadata accessor for Session.Event.Payload);
                continue;
              }

              sub_22BE3F300();
              v132 = swift_allocObject();
              v133 = v204;
              *(v132 + 16) = v206;
              *(v132 + 24) = v133;
              sub_22BE5BDA4(v188);
              v188 = *(v203 + 48);
              v182(v175, v75, AssociatedTypeWitness);
              sub_22BE1AA10();
              v134 = swift_allocObject();
              v135 = v204;
              v134[2] = v206;
              v134[3] = v135;
              v134[4] = sub_22C1AE1DC;
              v134[5] = v132;
              v172 = v134;
              v187 = v132;
              sub_22BE5BDA4(v193);
              v136 = v234;
              LODWORD(v191) = swift_isUniquelyReferenced_nonNull_native();
              v233 = v136;
              sub_22BE602B4();
              v193 = v138;
              v139 = *(v136 + 16);
              v140 = (v137 & 1) == 0;
              v188 = v139 + v140;
              if (__OFADD__(v139, v140))
              {
                goto LABEL_52;
              }

              v141 = v137;
              sub_22C273C84();
              v142 = sub_22C273C44();
              v143 = v233;
              v191 = v233;
              if (v142)
              {
                sub_22BE602B4();
                v193 = v144;
                if ((v141 & 1) != (v145 & 1))
                {
                  goto LABEL_54;
                }

                v143 = v191;
              }

              v234 = v143;
              if ((v141 & 1) == 0)
              {
                v146 = *(v172 + 40);
                v233 = (*(v172 + 32))();
                (*v184)(v177, v180, v224);
                sub_22C273C74();
                v143 = v191;
              }

              v147 = *(v143 + 56) + 8 * v193;
              sub_22C273574();
              sub_22BE1AE00(v180, type metadata accessor for Action);
              sub_22BE1AE00(v44, type metadata accessor for Session.Event);
              (*v73)(v75, AssociatedTypeWitness);
              v193 = sub_22C1AE1D8;
              v188 = sub_22C1AE1DC;
              v113 = v172;
              v114 = &v223;
            }

LABEL_47:
            *(v114 - 32) = v113;
          }

          break;
      }
    }

    (*(v183 + 8))(v232, v231);
    v232 = v234;
    v164 = sub_22C272EA4();
    v231 = &v171;
    v233 = v164;
    MEMORY[0x28223BE20](v164);
    v165 = v206;
    v166 = v204;
    *(&v171 - 2) = v206;
    *(&v171 - 1) = v166;
    sub_22C272E94();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_22C273384();

    swift_getTupleTypeMetadata2();
    v167 = sub_22C273C14();

    v233 = v167;
    MEMORY[0x28223BE20](v168);
    *(&v171 - 2) = v165;
    *(&v171 - 1) = v166;
    sub_22C2735B4();
    swift_getWitnessTable();
    v169 = sub_22C273374();

    sub_22BE5BDA4(v188);
    sub_22BE5BDA4(v193);
    sub_22BE5BDA4(v190);
    sub_22BE5BDA4(v194);
    sub_22BE5BDA4(v196);
    sub_22BE5BDA4(v201);
    sub_22BE5BDA4(v198);
    sub_22BE5BDA4(v202);
    return v169;
  }

  else
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    result = sub_22C2740B4();
    __break(1u);
  }

  return result;
}