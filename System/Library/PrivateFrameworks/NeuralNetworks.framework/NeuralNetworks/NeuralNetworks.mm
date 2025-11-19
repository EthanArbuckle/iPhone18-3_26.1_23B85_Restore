double sub_25BA91CB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v82 = a4;
  v95 = sub_25BCB5EBC();
  *&v91 = *(v95 - 8);
  v8 = *(v91 + 64);
  v9 = MEMORY[0x28223BE20](v95);
  v80 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = v72 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v72 - v13;
  v15 = sub_25BCB5EEC();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v79 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v75 = v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v72 - v22;

  v76 = a1;
  v77 = a2;
  sub_25BAD9D50(a1, a2, a3);
  v73 = v4;
  v74 = sub_25BADA120(v24);

  v25 = sub_25BADBDEC();
  v81 = sub_25BADC6B8(v25);
  v90 = v26;

  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v15, qword_28154BEB8);
  v28 = v16[2];
  v87 = v27;
  v88 = v16 + 2;
  v86 = v28;
  (v28)(v23);
  sub_25BCB5EAC();
  v29 = swift_slowAlloc();
  *v29 = 0;
  v30 = sub_25BCB5EDC();
  v31 = sub_25BCB6D5C();
  v32 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v30, v31, v32, "Run Espresso Network", "", v29, 2u);
  [*(a3 + 80) plan];
  v33 = espresso_plan_execute_sync();
  v34 = sub_25BCB6D4C();
  v72[1] = a3;
  v35 = v34;
  v36 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v30, v35, v36, "Run Espresso Network", "", v29, 2u);

  MEMORY[0x25F8797F0](v29, -1, -1);
  v37 = *(v91 + 8);
  *&v91 = v91 + 8;
  v85 = v37;
  v37(v14, v95);
  v38 = v16[1];
  v39 = v15;
  v89 = v16 + 1;
  v84 = v38;
  v38(v23, v15);
  if (v33)
  {
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_25BCB70FC();

    *&v92 = 0xD00000000000001ALL;
    *(&v92 + 1) = 0x800000025BCDCE40;
    v71 = ComputeDevice.description.getter();
    MEMORY[0x25F876C90](v71);

    v93 = v92;
    v94 = 4;
    sub_25BCB617C();
    sub_25BA97890();
  }

  v40 = v75;
  v83 = v39;
  v86(v75, v87, v39);
  v41 = v78;
  sub_25BCB5EAC();
  v42 = swift_slowAlloc();
  *v42 = 0;
  v43 = sub_25BCB5EDC();
  v44 = sub_25BCB6D5C();
  v45 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v43, v44, v45, "Unbind Inputs", "", v42, 2u);
  v46 = v73;
  sub_25BA92528(v74, v76, v77);
  v77 = v46;
  v47 = sub_25BCB6D4C();
  v48 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v43, v47, v48, "Unbind Inputs", "", v42, 2u);

  MEMORY[0x25F8797F0](v42, -1, -1);

  v85(v41, v95);
  v49 = v83;
  v84(v40, v83);
  v50 = v79;
  v86(v79, v87, v49);
  v51 = v80;
  sub_25BCB5EAC();
  v52 = swift_slowAlloc();
  *v52 = 0;
  v53 = sub_25BCB5EDC();
  LOBYTE(v49) = sub_25BCB6D5C();
  v54 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v53, v49, v54, "Unbind Outputs", "", v52, 2u);
  v55 = v81;
  v56 = v77;
  sub_25BA932DC(v81);
  v88 = v56;
  v57 = sub_25BCB6D4C();
  v58 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v53, v57, v58, "Unbind Outputs", "", v52, 2u);

  MEMORY[0x25F8797F0](v52, -1, -1);
  v85(v51, v95);
  v59 = v55;
  v84(v50, v83);
  v60 = *(v55 + 16);
  v61 = MEMORY[0x277D84F90];
  if (v60)
  {
    *&v93 = MEMORY[0x277D84F90];
    sub_25BA93380(0, v60, 0);
    v61 = v93;
    v62 = (v59 + 48);
    do
    {
      v64 = *(v62 - 2);
      v63 = *(v62 - 1);
      v91 = *v62;
      *&v93 = v61;
      v66 = *(v61 + 16);
      v65 = *(v61 + 24);
      sub_25BCB617C();
      swift_unknownObjectRetain();
      if (v66 >= v65 >> 1)
      {
        sub_25BA93380(v65 > 1, v66 + 1, 1);
        v61 = v93;
      }

      *(v61 + 16) = v66 + 1;
      v67 = v61 + 32 * v66;
      *(v67 + 32) = v64;
      *(v67 + 40) = v63;
      *(v67 + 48) = v91;
      v62 = (v62 + 40);
      --v60;
    }

    while (v60);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v93 + 1) = sub_25BCB614C();
  v68 = sub_25BA93BF8(v61);

  *&v93 = v68;
  sub_25BA957C4(v69);

  v91 = v93;

  result = *&v91;
  *v82 = v91;
  return result;
}

unint64_t sub_25BA92528(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F8779B0](v7, v5);
        }

        else
        {
          v8 = *(v5 + 8 * v7 + 32);
        }

        if (!*(a3 + 16))
        {
          goto LABEL_14;
        }

        v9 = sub_25BA9266C(*(v8 + 16), *(v8 + 24));
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        v11 = *(*(a3 + 56) + 8 * v9);
        if (!*(v11 + 16))
        {
          goto LABEL_14;
        }

        v12 = *(v11 + 32);
        if ((v12 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v12 >= *(a2 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a2 + 32 + 24 * v12 + 16);

        sub_25BA92804(v8);

LABEL_14:

        if (v6 == ++v7)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_25BCB749C();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_25BA92684(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_25BCB79CC();
  OUTLINED_FUNCTION_109();
  sub_25BCB625C();
  v7 = sub_25BCB7A3C();

  return a3(a1, a2, v7);
}

uint64_t OUTLINED_FUNCTION_163()
{

  return sub_25BAFC990();
}

__n128 OUTLINED_FUNCTION_163_0()
{
  v2 = *(v0 + 192);
  *v1 = *(v0 + 176);
  *(v1 + 16) = v2;
  result = *(v0 + 208);
  *(v1 + 32) = result;
  *(v0 + 448) = *(v0 + 224);
  return result;
}

unint64_t sub_25BA92750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_25BCB789C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_25BA92804(uint64_t a1)
{

  v3 = sub_25BA928B4();
  [v3 lock];

  sub_25BA92920(v1, 0, 0, v7);
  [*(v1 + 224) unlock];

  v4 = v7[1];
  ObjectType = swift_getObjectType();
  sub_25BA932A4(a1, ObjectType, v4);

  return swift_unknownObjectRelease();
}

id sub_25BA928B4()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 224);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    v4 = *(v0 + 224);
    *(v0 + 224) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_25BA92920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(a1 + 40, &v22);
  if (v26)
  {
    if (v26 == 1)
    {
      v8 = v22;
      v10 = v23;
      v9 = v24;
      sub_25BA9BE3C(&v25, v21);
      Strong = swift_weakLoadStrong();
      sub_25BA977E0(v21);
      if (Strong)
      {
      }

      else
      {
        v17 = v8;
        v18 = v10;
        v19 = v9;
        v20 = 2;
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_25BCB617C();
        sub_25BA97834(&v17, a1 + 40);
        swift_endAccess();
      }

      *a4 = v8;
    }

    else
    {
      v16 = v22;

      *a4 = v16;
    }
  }

  else
  {
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBB6D0;
    *(v12 + 32) = a1;
    *&v17 = a2;
    *(&v17 + 1) = a3;

    sub_25BC74428(v12, &v17);

    v13 = sub_25BA9BEA8();
    if (v13)
    {
      *a4 = v13;
      *(a4 + 8) = v14;
      return sub_25BA9778C(&v22);
    }

    else
    {
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000012, 0x800000025BCDF4B0);
      v21[0] = a1;
      type metadata accessor for TensorRepresentation();
      sub_25BCB73CC();
      result = sub_25BCB74CC();
      __break(1u);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_2()
{
  v2 = *(v0 - 384);
}

double OUTLINED_FUNCTION_17_5()
{
  result = 0.0;
  *(v0 + 412) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 428) = 22;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1)
{
  v2 = *(a1 + 16);

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return type metadata accessor for TensorHandle();
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_25BCB779C();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_25BB1AB60(0);
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_14(__n128 *a1, __n128 a2)
{
  *(v3 - 384) = a2;
  a1[1] = a2;
  v5 = v2[9];
  *(v3 - 312) = v2[8];
  *(v3 - 320) = v5;
  v6 = v2[11];
  *(v3 - 344) = v2[10];
  *(v3 - 352) = v6;
  v7 = v2[13];
  *(v3 - 328) = v2[12];
  *(v3 - 336) = v7;
  *(v3 - 288) = v2[14];
  v8 = v2[24];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_17_16(uint64_t result, __n128 a2)
{
  *(result + 16) = a2;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

__n128 *OUTLINED_FUNCTION_17_19(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 120;
  result[2].n128_u64[1] = 0xE100000000000000;
  return result;
}

void OUTLINED_FUNCTION_17_21()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_27()
{

  return sub_25BCB76AC();
}

__n128 OUTLINED_FUNCTION_17_29(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  result = a25;
  a1[1] = a25;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_30()
{

  return sub_25BABA62C(v0, v1, v2, v3);
}

void OUTLINED_FUNCTION_17_33()
{

  sub_25BAA21EC();
}

uint64_t OUTLINED_FUNCTION_17_36@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 152);
  v4 = *(*(v1 + 16) + 152);

  return sub_25BAB5C48(v3, v4);
}

uint64_t OUTLINED_FUNCTION_17_37()
{
  result = *(v0 - 144);
  v2 = *(v0 - 160);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_40()
{
  v2 = *(v0 - 304);
}

uint64_t OUTLINED_FUNCTION_17_41()
{
  *(v0 + 76);

  return sub_25BCB7A0C();
}

uint64_t OUTLINED_FUNCTION_17_43()
{

  return sub_25BCB54EC();
}

uint64_t OUTLINED_FUNCTION_17_44(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = *a1;
  v6 = *a2;

  return sub_25BAA51C8(a3, va);
}

__n128 *OUTLINED_FUNCTION_17_45(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_17_46()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_17_50()
{

  return sub_25BCB790C();
}

uint64_t OUTLINED_FUNCTION_17_51(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{

  return sub_25BC7D098(a1, a2, a3, a4, v7, v8, a7);
}

uint64_t OUTLINED_FUNCTION_17_53()
{
  *v0 = *(v1 + 152);
  v3 = *(v1 + 160);

  return sub_25BCB617C();
}

uint64_t sub_25BA932A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 216) == 1)
  {
    return sub_25BA932B8(result, a2, a3);
  }

  return result;
}

uint64_t sub_25BA932B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == 1)
  {
    return sub_25BB72DBC(v3, result, a2, a3);
  }

  return result;
}

uint64_t sub_25BA932DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 64);
    do
    {
      v4 = *(v2 - 3);
      v3 = *(v2 - 2);
      v5 = *(v2 - 1);
      v6 = *v2;
      ObjectType = swift_getObjectType();
      sub_25BCB617C();
      swift_unknownObjectRetain();

      sub_25BA932A4(v8, ObjectType, v5);

      swift_unknownObjectRelease();

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_25BA93380(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB039BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 416);
  *(v3 + 32) = *(v1 - 272);
  *(v3 + 40) = a1;
  v4 = *(v1 - 256);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_73_6(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_25BAA48D4(a1, va, v3, v4);
}

uint64_t OUTLINED_FUNCTION_73_7(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51(unint64_t *a1)
{

  return sub_25BB39A38(a1);
}

void OUTLINED_FUNCTION_9_9()
{

  JUMPOUT(0x25F876C90);
}

id OUTLINED_FUNCTION_9_10(void *a1)
{

  return [a1 lock];
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_25BCB67AC();
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_25BAB2B20(v8, 0, v10, v11, v12, v9, v13, a8);
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_9_22()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_14(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;
  *(v1 - 136) = 122;
  *(v1 - 128) = 2;
}

uint64_t OUTLINED_FUNCTION_9_34()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_9_35()
{
  v1 = *(v0 - 256);
  __swift_project_boxed_opaque_existential_1((v0 - 280), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return sub_25BCB70FC();
}

void OUTLINED_FUNCTION_9_37()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_24_0(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;
  *(v2 - 144) = v1;
  *(v2 - 136) = 2;
}

uint64_t OUTLINED_FUNCTION_9_38()
{
  v3 = v0 + 16 * v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_9_42()
{

  sub_25BADDD28();
}

uint64_t OUTLINED_FUNCTION_9_45@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_9_46@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 32) = a2;
  *(result + 36) = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_47()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_9_52()
{
  v3 = *(v0 + 16);
  v4 = *(v2 - 96);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_53()
{
  sub_25BC7204C(v0, 0);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_9_58(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0x4000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_59()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_9_61()
{

  return sub_25BAB4D78(v0, (v1 & 0xC000000000000001) == 0, v1);
}

uint64_t sub_25BA93BF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_18_3();
    sub_25BA9515C(v5, v6, v7);
    v8 = (a1 + 48);
    v3 = v21;
    do
    {
      v17 = *(v8 - 2);
      v18 = *(v8 - 1);
      v16 = *v8;
      sub_25BCB617C();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3880, &qword_25BCBB840);
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_24_2();
      if (v10)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BA9515C(v12, v13, v14);
        v9 = v16;
      }

      *(v21 + 16) = v1;
      v11 = v21 + 32 * a1;
      *(v11 + 32) = v19;
      *(v11 + 40) = v9;
      *(v11 + 56) = v20;
      v8 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5)
{

  _os_signpost_emit_with_name_impl(a1, v5, a3, a4, a5, v6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_61_4()
{
  *(v1 - 160) = v0;

  return sub_25BAFC990();
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return sub_25BCB749C();
}

uint64_t OUTLINED_FUNCTION_61_7()
{
  v2 = *(*(v0 + 16) + 16);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_61_8()
{

  sub_25BAA21EC();
}

void OUTLINED_FUNCTION_61_9()
{
  *(v1 - 152) = v0;

  sub_25BAA21EC();
}

ValueMetadata *OUTLINED_FUNCTION_61_12()
{

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_61_13()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return sub_25BCB745C();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_25BCB7B6C();
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  result = v0 - 120;
  v3 = *(v0 - 256);
  v2 = *(v0 - 248);
  v4 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_2()
{
  v2 = *(v0 - 344);
  v3 = *(v0 - 312);
  v4 = *(v0 - 336);
}

__n128 OUTLINED_FUNCTION_60_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  a1[1] = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_60_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAA4A5C(va);
}

uint64_t OUTLINED_FUNCTION_60_7()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_60_8()
{
}

uint64_t OUTLINED_FUNCTION_60_11()
{

  return sub_25BAB6FD4();
}

uint64_t OUTLINED_FUNCTION_60_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_arg(va1, void);
  v19 = va_arg(va1, void);
  v18 = v7;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_60_13()
{

  return sub_25BCB7B2C();
}

__n128 OUTLINED_FUNCTION_142(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_69_6()
{
}

uint64_t OUTLINED_FUNCTION_69_8()
{
}

void *OUTLINED_FUNCTION_12_3(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  v11 = (a1 + 16);

  return memcpy(v11, &__src, 0x55uLL);
}

__n128 *OUTLINED_FUNCTION_12_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  v3 = *(v0 + 16) + 168;

  return sub_25BAA51C8(v3, v1 - 200);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_12_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_12_13(uint64_t a1@<X8>)
{
  v5 = *(v4 - 424);
  *(a1 - 128) = *(v4 - 416);
  *(a1 - 120) = v5;
  v6 = *(v4 - 384);
  *(a1 - 112) = *(v4 - 328);
  *(a1 - 104) = v6;
  v7 = *(v4 - 400);
  *(a1 - 96) = *(v4 - 392);
  *(a1 - 88) = v7;
  v8 = *(v4 - 336);
  *(a1 - 80) = *(v4 - 408);
  *(a1 - 72) = v8;
  v9 = *(v4 - 368);
  *(a1 - 64) = *(v4 - 272);
  *(a1 - 56) = v9;
  *(a1 - 48) = v3;
  *(a1 - 40) = *(v4 - 376);
  *(a1 - 32) = v2;
  *(a1 - 24) = v4 - 200;
  *(a1 - 16) = v1;
  v10 = *(v4 - 256);
  *(a1 - 8) = *(v4 - 464);
}

void OUTLINED_FUNCTION_12_14(uint64_t a1@<X8>)
{
  *(a1 - 48) = v3;
  *(a1 - 40) = v1;
  *(a1 - 32) = v5;
  *(a1 - 24) = v2;
  *(a1 - 16) = v4;
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return sub_25BCB7B2C();
}

void OUTLINED_FUNCTION_12_16()
{
  v1 = *(v0 - 3);
  v2 = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_12_19()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_12_20(uint64_t a1, uint64_t a2)
{

  return sub_25BBA0884(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_12_22()
{

  sub_25BAD8238();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return sub_25BCB617C();
}

__n128 OUTLINED_FUNCTION_12_31@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, __n128 a25)
{
  *a1 = a23;
  a1[1] = a24;
  result = a25;
  a1[2] = a25;
  return result;
}

void OUTLINED_FUNCTION_12_32(__n128 a1)
{
  v1[4] = a1;
  v1[5].n128_u8[0] = 0;
  v1[5].n128_u64[1] = v2;
  v1[6].n128_u8[0] = 1;
  v1[9].n128_u8[12] = 3;
}

uint64_t OUTLINED_FUNCTION_12_33@<X0>(__int16 a1@<W8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 88;
  *(v2 - 96) = a1;

  return type metadata accessor for ReductionOperation();
}

void *OUTLINED_FUNCTION_12_35(NSUInteger a1)
{
  *(v5 - 192) = v1;
  *(v5 - 184) = v3;
  *(v5 - 72) = v2;
  *(v5 - 176) = v4;

  return sub_25BBC9A4C(a1, 0);
}

uint64_t OUTLINED_FUNCTION_12_36()
{
  v2 = *(v1 + 8);
  result = *(v0 + 112);
  v4 = *(v0 + 24);
  return result;
}

__n128 OUTLINED_FUNCTION_12_41(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_43(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_25BCB54FC();
}

uint64_t OUTLINED_FUNCTION_12_44()
{
}

uint64_t OUTLINED_FUNCTION_12_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_25BC757DC(a3, v5, v6, va, a1);
}

void OUTLINED_FUNCTION_12_50()
{

  sub_25BB00DE4();
}

uint64_t OUTLINED_FUNCTION_12_53()
{
  v3 = *(v1 + 8 * v0 + 32);
}

void *OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{
  *(a1 + 48) = a2;
  v50 = (a1 + 56);

  return memcpy(v50, &__src, 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_10_2()
{

  sub_25BB00D14();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_25BCB680C();
}

void OUTLINED_FUNCTION_10_15()
{
  *(v1 + 16) = v2;
  v7 = v1 + 32 * v0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  *(v7 + 56) = v3;
}

__n128 OUTLINED_FUNCTION_10_17()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_10_18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_10_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1;
  *(v2 - 152) = a1;
  *(v2 - 184) = v3;
  __swift_project_boxed_opaque_existential_1((v2 - 184), v1);

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_10_22()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_10_23(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{

  return sub_25BABE090(a1, a2, a3, a4, v6, a6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return swift_deallocPartialClassInstance();
}

void OUTLINED_FUNCTION_10_25()
{
  v1 = *(v0 - 368);
  v2 = *(v0 - 376);
  v3 = *(v0 - 360);
}

uint64_t OUTLINED_FUNCTION_10_28(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_10_30(unint64_t result, __n128 a2)
{
  v2[2] = a2;
  v2[3].n128_u8[0] = 0;
  v2[3].n128_u64[1] = result;
  v2[4].n128_u8[0] = 2;
  v2[7].n128_u8[12] = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_28@<X0>(__int16 a1@<W8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return sub_25BC0A13C(sub_25BAB9E04);
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return sub_25BCB745C();
}

void OUTLINED_FUNCTION_10_34(char *a1@<X8>)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[24];
}

void *OUTLINED_FUNCTION_10_35()
{

  return sub_25BC29748(v0, 0, 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_10_41()
{
  v2 = *v0;

  return MEMORY[0x2821FD028](v2);
}

uint64_t OUTLINED_FUNCTION_10_44()
{

  return sub_25BCB680C();
}

uint64_t OUTLINED_FUNCTION_10_45@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_10_48()
{
  *(v5 - 144) = v2;
  *(v5 - 200) = v3;
  v7 = v0;
  v9 = *(v5 - 224);
  v8 = *(v5 - 216);

  return sub_25BA9FCEC((v5 - 144), (v5 - 200), v4, v1, v7);
}

double OUTLINED_FUNCTION_10_50()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_53()
{
  v2 = *(v0 - 440);

  return sub_25BCB762C();
}

uint64_t OUTLINED_FUNCTION_10_56(uint64_t a1)
{
  v2 = *v1;
  *(a1 + 8) = *v1;
  return *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  a33 = 1;

  return sub_25BC0C634(a1, 0, &a17, 0x100000000, v34, v33, v35);
}

uint64_t OUTLINED_FUNCTION_35_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 152) + 16);

  return sub_25BAB74D0(v2, 3, 0, 0);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t *a1)
{
  v3 = *a1;
}

void OUTLINED_FUNCTION_35_4(uint64_t a1@<X8>)
{
  v4 = *(v3 - 280);
  *(a1 - 64) = *(v3 - 256);
  *(a1 - 56) = v4;
  v5 = *(v3 - 296);
  *(a1 - 48) = v1;
  *(a1 - 40) = v5;
  *(a1 - 32) = *(v3 - 304);
  *(a1 - 24) = v2;
}

void OUTLINED_FUNCTION_35_15()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return sub_25BCB79CC();
}

uint64_t OUTLINED_FUNCTION_35_21@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 152) + 16) - 1;

  return TensorShape.subscript.getter(v2);
}

uint64_t OUTLINED_FUNCTION_35_24()
{

  return sub_25BAB74D0(v0, 1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_35_25()
{

  return sub_25BCB681C();
}

uint64_t sub_25BA9515C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB038AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void OUTLINED_FUNCTION_15_0(__n128 a1)
{
  *(v1 + 16) = v3;
  v6 = v1 + v2 * v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = a1;
}

void OUTLINED_FUNCTION_15_1()
{

  JUMPOUT(0x25F876E40);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_25BBF5F44(v0, 0);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v2 = *(v0 - 392);
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  v2 = *(*(v0 + 16) + 16);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0x4000;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_15_15@<Q0>(__n128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  result = a8;
  a1[2] = a8;
  a1[3].n128_u64[0] = v9;
  a1[3].n128_u8[8] = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_15_17()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_15_20()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_25BCB5B5C();
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_15_27@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2;
  result = *(v4 + 48);
  *(v3 + 48) = result;
  *(v3 + 56) = 0;
  *(v3 + 64) = 5;
  return result;
}

void OUTLINED_FUNCTION_15_31(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;

  sub_25BAA21EC();
}

uint64_t OUTLINED_FUNCTION_15_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_37()
{
  v3 = *(v0 - 224);
  v4 = *(v0 - 216);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_15_40()
{

  sub_25BAC944C();
}

void *OUTLINED_FUNCTION_15_41()
{
  v4 = *(v2 - 240);
  v6 = *(v2 - 232);
  v5 = *(v2 - 224);
  v7 = *(v2 - 216);
  *(v0 + 168) = *(v2 - 248);
  *(v0 + 176) = v4;
  *(v0 + 184) = v6;
  *(v0 + 192) = v5;
  *(v0 + 200) = v7;

  return memcpy((v0 + 8), v1, 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_15_42()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_43@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_15_44()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);

  return Tensor.init(shape:coercingScalars:scalarType:on:)(va2, a2, va, va1, va3);
}

void OUTLINED_FUNCTION_15_47()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_15_50(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 - 376) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_51(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u16[0] = 24576;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_15_53(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_25BAB6D38(va, 0x100000000);
}

uint64_t OUTLINED_FUNCTION_15_54()
{

  return sub_25BCB7B6C();
}

uint64_t OUTLINED_FUNCTION_37_3()
{
  *(v0 + 112) = *(v1 + 64);

  return swift_getObjectType();
}

__int16 OUTLINED_FUNCTION_37_5@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, int a10, __int16 a11, __int16 a12)
{
  result = a12;
  *(v13 + 2 * v12) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_8@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_arg(va1, void);
  v14 = v3;
  HIBYTE(v13) = a1;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_37_10(uint64_t a1)
{
  v3 = *(a1 + 40);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 56) = v3;

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_37_12()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_37_13()
{
  v2 = *(v0 - 192);
  *(v0 - 200) = *(v0 - 200);
  *(v0 - 192) = v2;

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_37_15@<X0>(uint64_t a1@<X8>)
{

  return sub_25BA92920(v1, 0, 0, a1);
}

uint64_t OUTLINED_FUNCTION_37_20()
{

  return sub_25BCB65BC();
}

uint64_t OUTLINED_FUNCTION_37_24()
{
  v2 = *(v0 + 32);

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_37_25@<X0>(char a1@<W8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  HIBYTE(v11) = a1;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_37_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 - 280);
  v8 = *(v5 - 296);

  return sub_25BC675C0(a2, a3, a5, v5 - 40);
}

void OUTLINED_FUNCTION_37_28()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_25BCB617C();
}

double OUTLINED_FUNCTION_19_1()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_59_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  result = a23;
  a1[1] = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_25BAA4A5C(v0 + 16);
}

void OUTLINED_FUNCTION_59_7()
{

  sub_25BAA21EC();
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_25BABCD30(v33, 0, &a31, a4, v32, v31);
}

uint64_t OUTLINED_FUNCTION_59_12(uint64_t a1, uint64_t a2)
{

  return sub_25BAB6EC8(v2, a2);
}

uint64_t OUTLINED_FUNCTION_59_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_25BAA51C8(v8 - 224, va);
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_25BCB7B2C();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
  result = *(v0 + 104);
  v2 = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_4()
{
  result = *(v0 - 248);
  v2 = *(*(v0 - 240) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1()
{
}

uint64_t OUTLINED_FUNCTION_44_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_13()
{

  return sub_25BCB745C();
}

void OUTLINED_FUNCTION_44_15()
{
  *(v1 - 168) = v0;

  JUMPOUT(0x25F876DC0);
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return sub_25BCB643C();
}

uint64_t OUTLINED_FUNCTION_44_17()
{

  return sub_25BAB74D0(v0, 3, 0, 0);
}

uint64_t OUTLINED_FUNCTION_44_19@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 344) = a1;

  return sub_25BCB783C();
}

uint64_t sub_25BA95FB0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_13_32();
  result = sub_25BA979FC(v3, v4);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = *(*v1 + 24) >> 1;
  if (v8 != v7)
  {
    if (v8 > v7)
    {
      *(v6 + 8 * v7 + 32) = a1;
      *(v6 + 16) = v7 + 1;
      *v1 = v6;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_136_0()
{

  return sub_25BAC27B0(v0, v1 - 240);
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2)
{

  return sub_25BAB4D78(0, a2, v2);
}

void OUTLINED_FUNCTION_13_3(void *a1@<X8>)
{
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v3;
}

uint64_t OUTLINED_FUNCTION_13_4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *v33 = a1;

  return sub_25BB6B668(&a33);
}

uint64_t OUTLINED_FUNCTION_13_6(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{

  return sub_25BC78738(a1, a2, a3, a4, v11, v14, v12, v13, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_13_7@<X0>(uint64_t a1@<X8>)
{
  result = *(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_56_0(unint64_t *a1)
{

  return sub_25BB39A38(a1);
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_13_9@<X0>(uint64_t a1@<X1>, __int16 a2@<W8>)
{
  *(a1 + 16) = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 24576;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_5_2()
{

  sub_25BADDD28();
}

uint64_t OUTLINED_FUNCTION_11_2(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u16[0] = 0x4000;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_25BAADFB0();
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_13_15(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v6, a4, a5, a6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_17@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 208) = v1;
  *(v3 - 160) = v2;
  *(v3 - 224) = a1 + 16;
  v5 = *(v3 - 152);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return sub_25BAC27B0(v0 - 184, v0 - 224);
}

unint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_25BC1E9E0(v1, v0, v2);
}

void OUTLINED_FUNCTION_13_21()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_13_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v10;
  *(v14 - 49) = v13;

  return sub_25BA9FCEC(&a9, (v14 - 49), v11, v12, v9);
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_25BBA18D8(a1, a2, v11, a10, v13, v14, v10, v12, a9);
}

void OUTLINED_FUNCTION_13_28()
{
  v1 = *(v0 - 456);
  v2 = *(v0 - 448);
  v3 = *(v0 - 440);
}

__n128 OUTLINED_FUNCTION_13_33(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_36()
{

  return sub_25BCB789C();
}

void OUTLINED_FUNCTION_13_42()
{

  sub_25BAC944C();
}

__n128 OUTLINED_FUNCTION_13_47(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u32[0] = v9;
  return result;
}

double OUTLINED_FUNCTION_13_50@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 - 152) = a1;
  result = 0.0;
  *(v2 - 144) = 0u;
  *(v2 - 128) = 0u;
  *(v2 - 112) = 0u;
  *(v2 - 96) = 0;
  *(v2 - 92) = 7;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_51@<X0>(__int16 a1@<W8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = 73;
  *(v2 - 88) = a1;

  return type metadata accessor for BinaryLogicalOperation();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_124_0()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_2_5()
{
  result = v1;
  v4 = *(v0 + 336);
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_2_9(char a1)
{

  return sub_25BC87800(v1, a1 & 1);
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return swift_getObjectType();
}

unint64_t OUTLINED_FUNCTION_2_16()
{
  *(v0 + 16) = v2;
  v4 = *(v3 - 96);
  result = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1;
  v6 = *(v4 + 32);
  return result;
}

void OUTLINED_FUNCTION_2_19()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
}

void OUTLINED_FUNCTION_3_0()
{

  sub_25BADDD28();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(v1[5] + result);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_27(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_25BAB4D78(0, (v2 & 0xC000000000000001) == 0, v2);
}

uint64_t OUTLINED_FUNCTION_2_29@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  return MEMORY[0x2821FEA98](0, 65540, v2 - 112, v1, 0);
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  *(v1 - 144) = *v0;
  v3 = *(v1 - 216);

  return sub_25BC19C08();
}

uint64_t OUTLINED_FUNCTION_2_31()
{

  return swift_dynamicCast();
}

_OWORD *OUTLINED_FUNCTION_2_34()
{
  v2 = v1[1];
  v0[7] = *v1;
  v0[8] = v2;
  v0[9] = v1[2];
  *(v0 + 154) = *(v1 + 42);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_25BCB779C();
}

uint64_t OUTLINED_FUNCTION_2_36()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_2_40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = v4 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
  if (a3)
  {
    v5 |= 0x100uLL;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_44@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 8);
  return result;
}

void OUTLINED_FUNCTION_2_45()
{

  sub_25BADDD28();
}

uint64_t OUTLINED_FUNCTION_2_48()
{
  sub_25BA97060((v0 - 352), v0 - 288);
  v1 = *(v0 - 264);
  v2 = *(v0 - 256);
  __swift_project_boxed_opaque_existential_1((v0 - 288), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_47()
{
  v2 = *(v1 + 16);
  *(v0 + 168) = *v1;
  *(v0 + 184) = v2;
  *(v0 + 200) = *(v1 + 32);
  *(v0 + 216) = *(v1 + 48);
  return v0;
}

void OUTLINED_FUNCTION_2_53()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

uint64_t OUTLINED_FUNCTION_2_56()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_58()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_2_60()
{
  v2 = *(*(v0 + 24) + 16);

  return sub_25BAC48A0(v2);
}

uint64_t OUTLINED_FUNCTION_2_61()
{
  v2 = *(v0 + 16);

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_64()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_2_67()
{
  result = 0.0;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_68(double a1, __n128 a2)
{
  *(v3 + 120) = v5;
  *(v3 + 128) = v4;
  *(v3 + 72) = a2;
  *(v3 + 88) = *(v2 + 32);
  *(v3 + 98) = *(v2 + 42);
  return v3;
}

void OUTLINED_FUNCTION_2_69(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_2_71()
{
  v2 = *(v1 - 96);
  v5 = *(v1 - 104);
  v3 = *(v1 - 128);
  v6 = *(v1 - 120);
  v4 = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_2_77()
{
  v2 = *(v0 - 440);

  return sub_25BCB762C();
}

uint64_t OUTLINED_FUNCTION_2_79()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v0 + 184), v1, (v0 + 143), v0 + 208, (v2 - 240));
}

void OUTLINED_FUNCTION_2_80()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_2_81()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_2_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 16);
  v12 = *(a9 + 16);
  *(v10 - 153) = 0;
}

uint64_t OUTLINED_FUNCTION_2_84()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_85()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v0 + 600), v1, (v0 + 599), v0 + 544, (v0 + 464));
}

uint64_t OUTLINED_FUNCTION_2_86()
{

  return sub_25BCB79CC();
}

uint64_t sub_25BA97060(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

uint64_t OUTLINED_FUNCTION_31_2@<X0>(uint64_t (*a1)(uint64_t)@<X1>, void *a2@<X8>)
{

  return OptimizerStateDictionary.subscript.getter(a1, v2, a2);
}

void OUTLINED_FUNCTION_31_6(uint64_t a1@<X8>)
{
  v4 = *(v3 - 280);
  *(a1 - 64) = *(v3 - 296);
  *(a1 - 56) = v4;
  v5 = *(v3 - 312);
  *(a1 - 48) = v2;
  *(a1 - 40) = v5;
  *(a1 - 32) = *(v3 - 320);
  *(a1 - 24) = v1;
}

id OUTLINED_FUNCTION_31_11(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v2 + 16);
  v6 = *v3;

  return objc_allocWithZone(v6);
}

uint64_t OUTLINED_FUNCTION_31_15(uint64_t a1)
{
  *(a1 + 16) = v1;
}

__n128 *OUTLINED_FUNCTION_31_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1936291937;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_31_19()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void OUTLINED_FUNCTION_31_21()
{

  sub_25BA97890();
}

uint64_t OUTLINED_FUNCTION_31_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;
  *(v1 - 96) = a1;
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 16);
  return *(v1 - 168);
}

uint64_t OUTLINED_FUNCTION_31_25()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_31_26@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(*(a1 + 16) + 152) + 16) - 1;

  return TensorShape.subscript.getter(v2);
}

uint64_t OUTLINED_FUNCTION_31_34()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_31_35()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_71_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

void OUTLINED_FUNCTION_71_2(__n128 a1, __n128 a2)
{
  v3 = (v2 - 160);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_71_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_161()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_161_1()
{

  return swift_allocObject();
}

uint64_t sub_25BA974B0(uint64_t a1, uint64_t a2)
{
  sub_25BA9B780(a2);
  v3 = *(a1 + 152);
  sub_25BCB617C();
  sub_25BCB737C();

  for (i = 0; ; ++i)
  {
    sub_25BCB75DC();
    v5 = v14[0];
    if (!v14[0])
    {
    }

    v6 = v14[1];
    if (v3 >> 62)
    {
      result = sub_25BCB749C();
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i == result)
    {

      return swift_unknownObjectRelease();
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8779B0](i, v3);
      v8 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = sub_25BA928B4();
    [v9 lock];

    swift_beginAccess();
    sub_25BA9323C(v8 + 40, v14);
    if (v16)
    {
      if (v16 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v15);
      }

      else
      {
        sub_25BA9778C(v14);
      }

      v10 = 1;
    }

    else
    {
      sub_25BA9778C(v14);
      v10 = 0;
    }

    [*(v8 + 224) unlock];

    if (v10)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRetain();
      v11 = sub_25BA928B4();
      [v11 lock];

      sub_25BA9323C(v8 + 40, v14);
      if (!v16)
      {
        sub_25BA9323C(v8 + 40, v12);
        sub_25BA9BD18(v5, v6, v13);
        sub_25BA9778C(v12);
        swift_beginAccess();
        sub_25BA97834(v13, v8 + 40);
        swift_endAccess();
      }

      sub_25BA9778C(v14);
      [*(v8 + 224) unlock];
      swift_unknownObjectRelease_n();
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_25BA9776C(void *a1, int64_t a2, char a3)
{
  result = sub_25BB03BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BA97890()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_61();
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0x20646E656B636142, 0xED0000726F727265);
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_27_0();
  v0 = sub_25BB2B338();
  MEMORY[0x25F876C90](v0);

  MEMORY[0x25F876C90](2606, 0xE200000000000000);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](0xD00000000000006DLL, 0x800000025BCD9370);
  OUTLINED_FUNCTION_102();
  __break(1u);
}

uint64_t sub_25BA97978()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_167(char a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{

  return sub_25BBA291C(a1, a2, a3, v10, v12, v11, v9, a8, a9);
}

uint64_t OUTLINED_FUNCTION_167_1()
{

  return sub_25BAAF54C(v0);
}

uint64_t sub_25BA97A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_25BA97A8C()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_12();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_21_1@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v2[2] = v4;

  return sub_25BB06478(v3, v5);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_25BCB745C();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 152) = &a9 - v9;

  return sub_25BCB52EC();
}

void OUTLINED_FUNCTION_21_12()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_21_13@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[2] = a2;
  v3[3].n128_u64[0] = a1;
  v3[3].n128_u8[8] = v2;

  return __swift_destroy_boxed_opaque_existential_1((v4 - 152));
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_15()
{
  *v0 = *(v1 - 144);
}

uint64_t OUTLINED_FUNCTION_21_18()
{
}

uint64_t OUTLINED_FUNCTION_21_19()
{

  return type metadata accessor for Sequential();
}

__n128 OUTLINED_FUNCTION_21_22(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_21_26()
{
  sub_25BAAF550(v0);
}

void *OUTLINED_FUNCTION_21_34()
{

  return memcpy((v0 + 216), (v0 + 8), 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return swift_beginAccess();
}

size_t OUTLINED_FUNCTION_1_5(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_25BAB4D78(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a30, v30, &a24, &a15, &a14);
}

void OUTLINED_FUNCTION_28_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_25BCB73CC();
}

void OUTLINED_FUNCTION_1_15(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;
  *(v2 - 128) = 2;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return sub_25BCB67AC();
}

void OUTLINED_FUNCTION_1_21(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(v1[5] + a1);
}

uint64_t OUTLINED_FUNCTION_1_23@<X0>(char a1@<W8>)
{
  *(v2 + 72) = a1;
  v4 = v1[1];
  *(v2 + 80) = *v1;
  *(v2 + 96) = v4;
  *(v2 + 112) = v1[2];
  *(v2 + 122) = *(v1 + 42);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_1_28()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 65);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_1_29()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_1_30()
{
  v2 = **(v1 - 224);
  *(v1 - 168) = v0;
  v3 = *(v1 - 192);
  return *(v1 - 200);
}

uint64_t OUTLINED_FUNCTION_1_34()
{

  return sub_25BCB76AC();
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return sub_25BAB4D78(1, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_1_38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 152) + 16);

  return sub_25BAB74D0(v2, 2, 0, 2);
}

uint64_t OUTLINED_FUNCTION_1_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  return sub_25BBAC034(&a9);
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_25BABE62C(v0);
}

uint64_t OUTLINED_FUNCTION_1_41()
{
}

uint64_t OUTLINED_FUNCTION_1_44()
{
  *(v1 - 144) = v0;

  return sub_25BC03F70((v1 - 144));
}

uint64_t OUTLINED_FUNCTION_1_45(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 120;
  a1[2].n128_u64[1] = 0xE100000000000000;
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, uint64_t a2)
{
  *(v2 - 352) = a1;
  *(v2 - 344) = a2;
  return 0x363174616F6C46;
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return sub_25BCB74CC();
}

__n128 OUTLINED_FUNCTION_1_55(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  a1[2].n128_u64[0] = v16;
  a1[2].n128_u8[8] = v13;
  a1[3].n128_u64[0] = v14;
  *v11 = v15;
  *(v11 + 4) = 0;
  *(v11 + 8) = v12;
  *(v11 + 16) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_58(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v3 + 24);
  *(v6 + 16) = v4 + 1;

  return sub_25BAC48B8(va, v6 + 8 * v4 + 32);
}

uint64_t OUTLINED_FUNCTION_1_59(uint64_t result, uint64_t a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2;
  return result;
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_1_65()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = *(v1 + 56);
  *(v1 + 32);
}

__n128 OUTLINED_FUNCTION_1_70()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 128);
  return *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_1_71()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_1_73()
{
  v4 = *(v0 + 8);
  *(v3 - 96) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_80()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return sub_25BCB79CC();
}

void OUTLINED_FUNCTION_20(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_20_1@<X0>(char a1@<W8>)
{
  *(v1 - 67) = a1;

  return sub_25BCB777C();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 72) = &a9 - v9;

  return sub_25BCB54EC();
}

void OUTLINED_FUNCTION_20_11(char *a1@<X8>)
{
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{

  return sub_25BB654CC((v14 - 152), a14);
}

unint64_t OUTLINED_FUNCTION_20_17()
{

  return sub_25BC1E9E0(v1, v0, v2);
}

void OUTLINED_FUNCTION_20_22()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1)
{
  v3 = *(a1 + 16 * v1 + 32);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 40) = *(v4 - 72);
  *(a1 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_20_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
  *(v1 - 96) = a1;
  v2 = *(*(v1 - 240) + 16);
  result = *(v1 - 232);
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_39(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v3;
}

uint64_t OUTLINED_FUNCTION_20_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return sub_25BB0EE34(v12, v11, v13 - 40, va1, a5, 0, a7, va, a8, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_20_41(uint64_t a1)
{

  return OptimizerStateDictionary.subscript.getter(v1, a1);
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  v5 = *(v1 + 16);
  v6 = *(v3 + 16);
  *(v0 + 48) = *(v0 + 32);
  *(v0 + 56) = v2;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_0_4(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 48) = v3;
  v7 = v6[1];
  *(v4 + 56) = *v6;
  *(v4 + 72) = v7;
  *(v4 + 88) = v6[2];
  *(v4 + 98) = *(v6 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_0_8()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_0_9(int a1, uint64_t a2, uint64_t a3)
{
  v9 = v3[1];
  *(v4 + 72) = *v3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 88) = v9;
  *(v4 + 104) = v3[2];
  *(v4 + 114) = *(v3 + 42);
  return v4;
}

double OUTLINED_FUNCTION_0_10@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 56) = a1;
  *(v1 - 64) = 0;
  result = 0.0;
  *(v1 - 96) = 0u;
  *(v1 - 80) = 0u;
  *(v1 - 112) = 0u;
  v3 = *(a1 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_0_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a19)
{
  v19[3] = a17;
  v19[4] = a18;
  result = a19;
  v19[5] = a19;
  return result;
}

void OUTLINED_FUNCTION_0_13()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

double OUTLINED_FUNCTION_0_14()
{
  *(v0 + 368) = 0;
  result = 0.0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 320) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_0_21()
{
  result = v0[1];
  v2 = v0[2].n128_u64[0];
  v3 = v0[2].n128_u64[1];
  v4 = v0[3].n128_u64[0];
  v5 = v0[3].n128_u64[1];
  v6 = v0[4].n128_u64[0];
  v7 = v0[4].n128_u64[1];
  v8 = v0[5].n128_u64[0];
  v9 = v0[5].n128_u64[1];
  return result;
}

void OUTLINED_FUNCTION_0_25()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = -1;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 168) = 0;
  *(v0 - 144) = -1;
  *(v0 - 92) = 4;
}

uint64_t OUTLINED_FUNCTION_0_27(unint64_t *a1)
{

  return sub_25BB5F86C(a1);
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_29(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v4;
  *(v3 + 48) = v6;
  *(v3 + 56) = v5 & 1;
  return *(v4 + 152);
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return sub_25BAB4D78(1, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_0_35()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_0_36(uint64_t a1@<X8>)
{
  v4 = *v1;
  *(a1 - 48) = 0x206874615079656BLL;
  *(a1 - 40) = v4;
  strcpy((a1 - 23), "c bitmask ");
  *(a1 - 31) = *(v1 + 9);
  *(v3 - 112) = v2;
}

void OUTLINED_FUNCTION_0_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 200) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 16);
  *(v11 - 152) = v12;
  v13 = *(v12 + 16);
}

uint64_t OUTLINED_FUNCTION_0_38()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

void OUTLINED_FUNCTION_0_42()
{

  sub_25BB9ACC4();
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return sub_25BAB4D78(1, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 16) = v21;
  *(v14 + 24) = v20;
  *(v14 + 32) = v19;
  *(v14 + 40) = a10;
  *(v14 + 48) = a12;
  *(v14 + 56) = a13;
  *(v14 + 64) = a14;
  *(v14 + 72) = v18;
  *(v14 + 80) = v16;
  *(v14 + 88) = v17;
  *(v14 + 96) = v15;
  *(v14 + 104) = a9;
  *(v14 + 112) = a11;
  *(v14 + 120) = 0;
  v24 = *v22;
  v25 = v22[1];
  v26 = v22[2];
  *(v14 + 170) = *(v22 + 42);
  *(v14 + 144) = v25;
  *(v14 + 160) = v26;
  *(v14 + 128) = v24;
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_48(int a1, uint64_t a2, uint64_t a3)
{
  v11 = v7[1];
  *(v4 + 88) = *v7;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  *(v4 + 104) = v11;
  *(v4 + 120) = v7[2];
  *(v4 + 130) = *(v7 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_50()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_0_56()
{
  result = v0[1];
  v3 = v0[2].n128_u64[0];
  v2 = v0[2].n128_u64[1];
  v4 = v0[3].n128_u64[0];
  v5 = v0[3].n128_u64[1];
  v6 = v0[4].n128_u64[0];
  v7 = v0[4].n128_u64[1];
  v8 = v0[5].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_57(uint64_t result, uint64_t a2)
{
  v2 = *(*(*result + 16) + 160);
  v3 = *(*(*a2 + 16) + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_58(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 120;
  a1[2].n128_u64[1] = 0xE100000000000000;
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_0_60(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;
  return 0x363174616F6C46;
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return sub_25BCB749C();
}

uint64_t OUTLINED_FUNCTION_0_63(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BADCA30(v4, v3, v2, v5, va);
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_69()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_70()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_0_76()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  return *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_0_78()
{

  return sub_25BAB4D78(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_0_80()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_86(int a1, uint64_t a2, uint64_t a3)
{
  v9 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 48) = v3 & 1;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 88) = v9;
  *(v4 + 104) = v6[2];
  *(v4 + 114) = *(v6 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, int a13, __int128 a14, __int128 a15, __int128 a16, int a17)
{
  a14 = a10;
  a15 = a11;
  a16 = a12;
  a17 = a13;

  return sub_25BAC27B0(&a14, &a10);
}

uint64_t OUTLINED_FUNCTION_0_89()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_0_90(int a1, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;
  *(v6 + 56) = v9;
  *(v6 + 64) = v10;
  *(v6 + 88) = a5;
  *(v6 + 104) = *(v5 + 32);
  *(v6 + 114) = *(v5 + 42);
  return v6;
}

uint64_t OUTLINED_FUNCTION_0_92@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

double OUTLINED_FUNCTION_0_94()
{
  *(v0 - 128) = 0;
  result = 0.0;
  v2 = (v0 - 176);
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  return result;
}

void OUTLINED_FUNCTION_0_95()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_0_96()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_0_98(int a1, uint64_t a2, uint64_t a3)
{
  v11 = v8[1];
  *(v4 + 88) = *v8;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v7;
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;
  *(v4 + 64) = v3;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  *(v4 + 104) = v11;
  *(v4 + 120) = v8[2];
  *(v4 + 130) = *(v8 + 42);
  return v4;
}

void OUTLINED_FUNCTION_0_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 64);
}

uint64_t OUTLINED_FUNCTION_0_101()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_0_103(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_19_3(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
  *(v1 - 152) = 110;
  *(v1 - 144) = 2;
}

uint64_t OUTLINED_FUNCTION_101()
{
  result = *(v0 - 272);
  v2 = *(v0 - 264);
  return result;
}

void OUTLINED_FUNCTION_19_8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

void OUTLINED_FUNCTION_19_10()
{
  v3 = *(v0 + 64);

  sub_25BBC0130((v1 - 72), (v0 + 167), 0);
}

void OUTLINED_FUNCTION_19_14()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_25BCB7B2C();
}

uint64_t OUTLINED_FUNCTION_19_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = a13;
  a25 = v27;

  return sub_25BAA0E58(&a22, v28 + 40);
}

uint64_t OUTLINED_FUNCTION_19_24(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *a4;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];

  return sub_25BBA9DB8((v4 - 72));
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 - 224) = v8;
  *(v12 - 256) = a8;

  return sub_25BAB5DD8(v11, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_19_28@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_19_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, char a28)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a27, v28, &a26, &a28, &a19);
}

uint64_t OUTLINED_FUNCTION_19_30(unint64_t *a1)
{

  return sub_25BC5B360(a1);
}

uint64_t OUTLINED_FUNCTION_19_31()
{

  return sub_25BAC4018();
}

uint64_t OUTLINED_FUNCTION_19_36()
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_19_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  static ShapeInference.broadcasting(_:_:)(&a9, (v9 - 144), (v9 - 152));
}

uint64_t OUTLINED_FUNCTION_19_39@<X0>(char *a1@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  result = *(a1 + 2);
  v5 = a1[24];
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = result;
  *(v1 + 24) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t result)
{
  *(v3 - 288) = result;
  *(v3 - 432) = v1;
  *(v3 - 360) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BAB5F30(a1, a2, v5, v5, a5, v5, a1);
}

void OUTLINED_FUNCTION_50_11(__n128 a1)
{
  *(v1 + 56) = a1;
  *(v1 + 72) = 6;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_50_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_25BAA51C8(v31 - 216, &a31);
}

void OUTLINED_FUNCTION_50_14()
{
  v2 = *(v1 - 208);
  v3 = *(*(v0 + 56) + 16);
  v4 = *(v1 - 176);
}

void OUTLINED_FUNCTION_50_15()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_50_18()
{
  *(v2 - 144) = v0;
  *(v2 - 200) = v1;

  return type metadata accessor for MPSGraphTensorStorage();
}

uint64_t OUTLINED_FUNCTION_148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_25BB2BAEC(a1, a2 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_148_0(uint64_t a1)
{
  *(v3 - 96) = a1;
  v4 = *(v1 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_148_1@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v3 + 24) = v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_14_3@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v3 - 136) = a2;
  *(v3 - 120) = v2;
  *(v3 - 112) = 47;
  *(v3 - 104) = a1;
  *(v3 - 103) = 0;

  return type metadata accessor for RandomOperation();
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_25BCB76FC();
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return sub_25BAAF074(v0);
}

void OUTLINED_FUNCTION_62_6()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_62_7()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_62_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_3_5(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

void OUTLINED_FUNCTION_3_9(uint64_t a1@<X8>)
{
  v3 = *(v2 - 304);
  *(a1 - 40) = *(v2 - 288);
  *(a1 - 32) = v3;
  *(a1 - 24) = *(v2 - 308);
  *(a1 - 16) = v1;
}

void OUTLINED_FUNCTION_3_10(char a1@<W8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = 1;
  *(v2 + 108) = 3;
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_25BCB76AC();
}

double OUTLINED_FUNCTION_3_12()
{
  *(v0 + 416) = 0;
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 368) = 0u;
  return result;
}

size_t OUTLINED_FUNCTION_3_13()
{
  *(v2 - 72) = v0;

  return sub_25BB00AF4(0, v1, 0);
}

void OUTLINED_FUNCTION_11_5()
{

  sub_25BADDD28();
}

uint64_t OUTLINED_FUNCTION_3_16()
{
  result = v1;
  v4 = v0[1];
  v3 = v0[2];
  v5 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(v1[5] + 8 * result);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return swift_once();
}

_OWORD *OUTLINED_FUNCTION_3_22()
{
  v2 = v1[1];
  v0[7] = *v1;
  v0[8] = v2;
  v0[9] = v1[2];
  *(v0 + 154) = *(v1 + 42);
  return v0;
}

void OUTLINED_FUNCTION_3_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 16) = v17;
  *(v16 + 24) = v20;
  *(v16 + 32) = v19;
  *(v16 + 40) = a12;
  *(v16 + 48) = a13;
  *(v16 + 56) = a14;
  *(v16 + 64) = a15;
  *(v16 + 72) = a16;
  *(v16 + 80) = v18;
}

__n128 *OUTLINED_FUNCTION_3_27(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v5 = *(v3 - 120);
  v4 = *(v3 - 112);
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = v4;
  v6 = *(v3 - 144);
  v7 = *(v3 - 136);
  result[3].n128_u64[0] = v5;
  result[3].n128_u64[1] = v6;
  return result;
}

void OUTLINED_FUNCTION_3_28(__n128 a1)
{
  v1[7] = a1;
  v1[8].n128_u8[0] = v2;
  v1[11].n128_u8[12] = 7;
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
  a2[2] = 0;
  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_3_31(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;
  *(v1 - 104) = 120;
  *(v1 - 96) = 2;
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BAA4A5C(&a9);
}

void OUTLINED_FUNCTION_3_34()
{
  v3 = *(v0 + 16);
  v4 = *(v1 + 16);
  *(v2 - 145) = 0;
}

void OUTLINED_FUNCTION_3_35()
{
  v1 = *(v0 - 304);
  v2 = *(v0 - 272);
  v3 = *(v0 - 256);
  v4 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;
  return 0x74616F6C46;
}

__n128 OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a19)
{
  v19[3] = a17;
  v19[4] = a18;
  result = a19;
  v19[5] = a19;
  return result;
}

void OUTLINED_FUNCTION_3_43(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 144) = 114;
  *(v1 - 136) = 2;
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return sub_25BCB76AC();
}

uint64_t OUTLINED_FUNCTION_3_46@<X0>(char *a1@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a1[24];

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_3_47()
{

  sub_25BA97890();
}

uint64_t OUTLINED_FUNCTION_3_48()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_3_49()
{
  v2 = *(v0 + 16);

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_3_50()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_51()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

double OUTLINED_FUNCTION_3_54()
{
  *(v1 - 128) = 0;
  result = 0.0;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;
  *(v1 - 176) = 0u;
  v3 = *(v0 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_3_55()
{
  v1 = *(v0 - 224);
  v3 = *(v0 - 208);
  v4 = *(v0 - 192);
  return *(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_3_62()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_25BCB770C();
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_3_68@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

void OUTLINED_FUNCTION_3_69(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 2);
  v6 = a3[24];
}

uint64_t OUTLINED_FUNCTION_3_70()
{
  v2 = *(*(v0 + 296) + 24);
  v3 = *(v0 + 224);

  return type metadata accessor for OptimizerStateDictionary();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  *(v2 + 8 * v1 + 32) = v0;
  *(v3 - 104) = v2;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_25BAB524C(a1, a2, a3, a4, a5, a6, 9, 2);
}

uint64_t OUTLINED_FUNCTION_56_4@<X0>(uint64_t a1@<X8>)
{

  return sub_25BB2BAEC(0xD000000000000015, (a1 - 32) | 0x8000000000000000);
}

void OUTLINED_FUNCTION_56_6()
{
  v2 = *(v0 + 16) + 1;

  sub_25BAAE04C();
}

void OUTLINED_FUNCTION_56_9()
{

  static Tensor.- infix(_:_:)();
}

void OUTLINED_FUNCTION_56_11()
{
  v2 = *(v1 - 192);
  v3 = *(*(v0 + 56) + 16);
  v4 = *(v1 - 152);
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_56_13()
{
}

uint64_t OUTLINED_FUNCTION_147()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return type metadata accessor for ContextManager();
}

uint64_t OUTLINED_FUNCTION_67_0@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = v7;
  a1[1] = v9;
  *(*(v8 + 56) + 8 * v10) = v6;
  return a6;
}

void OUTLINED_FUNCTION_67_4()
{
  *(v3 + 24) = v1;
  *(v3 + 152) = v2;
  *(v3 + 160) = v0;
}

void OUTLINED_FUNCTION_67_6()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_67_7()
{
}

uint64_t OUTLINED_FUNCTION_67_8(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = v2;
  return result;
}

__n128 *OUTLINED_FUNCTION_67_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_25BA9ABCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BA9AC08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25BA9AC54(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_25BCB749C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks13ComputeDeviceV4KindO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BA9ACF0(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v46 = a1;
  v45 = sub_25BCB5EBC();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25BCB5EEC();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v50) = (a4 == 0) | a3 & 1;
  v51 = v13;
  sub_25BCB617C();
  sub_25BCB617C();
  if (sub_25BACF298(a2, &v50))
  {
    sub_25BAD6344();
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v40 = v15[2];
  if (!v40)
  {
LABEL_15:
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_25BCB70FC();

    v48 = 0xD00000000000002DLL;
    v49 = 0x800000025BCE5C90;
    v34 = type metadata accessor for TensorRepresentation();
    v35 = MEMORY[0x25F876F80](a2, v34);
    MEMORY[0x25F876C90](v35);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    v50 = v48;
    v51 = v49;
    v52 = 9;
    sub_25BCB617C();
    sub_25BA97890();
  }

  v16 = 0;
  v17 = (v15 + 4);
  v38 = (v7 + 8);
  v39 = (v10 + 16);
  v37 = (v10 + 8);
  v41 = v15;
  v18 = v44;
  v19 = v42;
  do
  {
    if (v16 >= v15[2])
    {
      __break(1u);
      objc_autoreleasePoolPop(v15);
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_25BCB70FC();

      v48 = 0xD00000000000001CLL;
      v49 = 0x800000025BCE5C70;
      swift_getErrorValue();
      v32 = sub_25BCB796C();
      a2 = v33;
      MEMORY[0x25F876C90](v32);

      sub_25BCB74CC();
      __break(1u);
      goto LABEL_15;
    }

    v47 = v17;
    sub_25BAD6FB0(v17, &v50);
    if (qword_28154BE88 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v18, qword_28154BE90);
    v21 = v43;
    (*v39)(v43, v20, v18);
    sub_25BCB5EAC();
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_25BCB5EDC();
    v24 = sub_25BCB6D5C();
    v25 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v23, v24, v25, "Aquire Backend", "", v22, 2u);
    sub_25BAD714C(&v50, &v48);
    v26 = sub_25BCB6D4C();
    v27 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v23, v26, v27, "Aquire Backend", "", v22, 2u);

    v28 = v49;
    MEMORY[0x25F8797F0](v22, -1, -1);
    (*v38)(v19, v45);
    (*v37)(v21, v18);
    v29 = objc_autoreleasePoolPush();
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(&v50, ObjectType, v28);
    ++v16;
    objc_autoreleasePoolPop(v29);
    swift_unknownObjectRelease();
    sub_25BA9AC78(&v50);
    v17 = v47 + 240;
    v15 = v41;
  }

  while (v40 != v16);
}

void *sub_25BA9B248()
{
  v1 = v0[4];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3 = v0[17];

  return v0;
}

uint64_t sub_25BA9B288()
{
  sub_25BA9778C(v0 + 40);
  v1 = *(v0 + 152);

  sub_25BA9C2C8(v0 + 168);

  v2 = *(v0 + 232);

  return v0;
}

uint64_t sub_25BA9B2C8()
{
  sub_25BA9B288();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9B2FC()
{
  MEMORY[0x25F8797F0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25BA9B388()
{
  sub_25BA9B3BC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9B3BC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[16];
  return OUTLINED_FUNCTION_8_47(v0[15]);
}

uint64_t OUTLINED_FUNCTION_102()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1, uint64_t a2)
{

  return sub_25BAA48D4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_102_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 40);
  a1[2].n128_u64[0] = *(v2 + 16);
  a1[2].n128_u64[1] = v4;
}

uint64_t (*sub_25BA9B48C(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  result = (*(a3 + 32))(v5);
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v4;
    return result(v5, 0);
  }

  return result;
}

uint64_t sub_25BA9B4FC()
{
  sub_25BA9B528();
  OUTLINED_FUNCTION_22();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9B528()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_25BAA3168();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_25BA9B56C(uint64_t a1)
{
  sub_25BAD6FB0(a1, v13);
  sub_25BAD7934(v13);
  if (!v1)
  {
    v5 = sub_25BAD8478(v13, v2, v3);

    sub_25BA974B0(v13, v5);

    v6 = v14;
    result = sub_25BA9BEA0(v14);
    v7 = result;
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25F8779B0](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return result;
      }

      v10 = sub_25BA9BEA8();

      if (!v10)
      {
        sub_25BBB3BEC();
        swift_allocError();
        v12 = v11;
        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD000000000000012, 0x800000025BCDF4B0);
        sub_25BCB73CC();
        *v12 = 0;
        *(v12 + 8) = 0xE000000000000000;
        *(v12 + 84) = 5;
        swift_willThrow();
        return sub_25BA9AC78(v13);
      }

      result = swift_unknownObjectRelease();
    }
  }

  return sub_25BA9AC78(v13);
}

uint64_t sub_25BA9B780(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_18_3();
    sub_25BA9776C(v4, v5, v6);
    v2 = v12;
    v7 = (a1 + 48);
    do
    {
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);
      v11 = *v7;
      swift_unknownObjectRetain();
      if (v8 >= v9 >> 1)
      {
        sub_25BA9776C((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      *(v12 + 16 * v8 + 32) = v11;
      v7 += 2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3930, &qword_25BCBB8D0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

double OUTLINED_FUNCTION_14_5()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  v2 = *(v0 - 424);
}

uint64_t OUTLINED_FUNCTION_14_8@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9()
{
  result = *(v0 - 320);
  v2 = *(v0 - 328);
  return result;
}

void OUTLINED_FUNCTION_14_11()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 95);
  *(v0 - 120) = *(v0 - 104);
  *(v0 - 112) = v1;
  *(v0 - 111) = v2;
}

uint64_t OUTLINED_FUNCTION_14_12()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  result = *(*(v0 + 48) + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0x8000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_18()
{

  return sub_25BAA6F5C(v2 - 152, v0, v1);
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_14_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27)
{
  result = a27;
  a1[1] = a27;
  return result;
}

uint64_t OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{

  return sub_25BC87800(a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_14_34()
{

  return sub_25BAC4018();
}

uint64_t OUTLINED_FUNCTION_14_39()
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_14_43()
{
  v1 = *(v0 - 64);
  v2 = *(v0 - 56);
  __swift_project_boxed_opaque_existential_1((v0 - 88), v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_47()
{
  v2 = *(*(v1 - 232) + 8);
  result = v0;
  v4 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_49@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + 152);
  *(v2 - 144) = *(v1 + 152);

  return sub_25BCB617C();
}

uint64_t sub_25BA9BD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_25BA9323C(v4, v15);
  if (v15[105])
  {
    v13[0] = 0xD00000000000002BLL;
    v13[1] = 0x800000025BCDAAA0;
    v14 = 9;
    sub_25BA97890();
  }

  sub_25BA9BE3C(v15, v13);
  v9 = v13[6];
  v8 = v13[7];
  Strong = swift_weakLoadStrong();
  sub_25BCB617C();
  swift_unknownObjectRetain();
  if (Strong)
  {

    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v9;
    *(a3 + 24) = v8;
    result = sub_25BA9BE3C(v13, a3 + 32);
    v12 = 1;
  }

  else
  {
    result = sub_25BA977E0(v13);
    *a3 = a1;
    *(a3 + 8) = a2;
    v12 = 2;
    *(a3 + 16) = v9;
    *(a3 + 24) = v8;
  }

  *(a3 + 105) = v12;
  return result;
}

uint64_t sub_25BA9BEA8()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(v0 + 40, &v3);
  if (v5)
  {
    v1 = v3;
    if (v5 == 1)
    {

      sub_25BA977E0(&v4);
    }

    else
    {
    }
  }

  else
  {
    sub_25BA9778C(&v3);
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks13ComputeDeviceVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BA9BF54()
{
  sub_25BA9B248();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9BF88()
{
  sub_25BA9BFE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9BFE0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25BCB59BC();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14NeuralNetworks19NativeTensorStorage_deallocator;
  (*(v6 + 16))(v10, &v1[OBJC_IVAR____TtC14NeuralNetworks19NativeTensorStorage_deallocator], v3);
  result = (*(v6 + 88))(v10, v3);
  if (result != *MEMORY[0x277CC92B8])
  {
    if (result == *MEMORY[0x277CC9298])
    {
      v14 = *(v1 + 5);
      if (v14)
      {
        MEMORY[0x25F879A80](*MEMORY[0x277D85F48], v14, *(v1 + 6) - v14);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (result == *MEMORY[0x277CC92B0])
    {
      v15 = *(v1 + 5);
      if (v15)
      {
        v16 = *(v1 + 6) - v15;
LABEL_16:
        munmap(v15, v16);
        goto LABEL_17;
      }
    }

    else
    {
      if (result == *MEMORY[0x277CC92A0])
      {
        v17 = *(v1 + 5);
        if (v17)
        {
          MEMORY[0x25F8797F0](v17, -1, -1);
        }

        goto LABEL_17;
      }

      if (result == *MEMORY[0x277CC92A8])
      {
LABEL_17:
        v18 = *(v1 + 2);

        (*(v6 + 8))(&v1[v11], v3);
        return v1;
      }

      v19[2] = 0;
      v19[3] = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000018, 0x800000025BCDFCB0);
      v19[1] = v1;
      sub_25BCB73CC();
      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v15 = sub_25BCB74CC();
      __break(1u);
    }

    v16 = 0;
    goto LABEL_16;
  }

  (*(v6 + 96))(v10, v3);
  result = *(v1 + 5);
  if (result)
  {
    v13 = *(v10 + 1);
    (*v10)(result, *(v1 + 6) - result);

    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25BA9C2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BA9C330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_25BA9C370()
{
  sub_25BA9C3A4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9C3A4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];
  return OUTLINED_FUNCTION_8_47(v0[9]);
}

uint64_t sub_25BA9C3E0()
{
  sub_25BA9C420(MEMORY[0x277D84FB8]);
  OUTLINED_FUNCTION_7_47();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9C420(void (*a1)(void))
{
  v3 = v1[4];

  a1(v1[5]);
  v4 = v1[8];

  v5 = v1[11];
  return OUTLINED_FUNCTION_8_47(v1[10]);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_5(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_8_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 16) = v13;
  v15 = (v10 + 24 * v14);
  v15[4] = v11;
  v15[5] = a10;
  v15[6] = v12;
}

void OUTLINED_FUNCTION_8_11()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_8_13()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_8_19()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 184) = a7;

  return sub_25BCB598C();
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0xE000000000000000;

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_8_25()
{
  v2 = (*(v0 + 48) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

double OUTLINED_FUNCTION_8_31()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 192) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_8_33()
{
  sub_25BA97060((v0 - 344), v0 - 280);
  v1 = *(v0 - 248);
  return __swift_project_boxed_opaque_existential_1((v0 - 280), *(v0 - 256));
}

uint64_t OUTLINED_FUNCTION_8_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 - 68) = a6;

  return sub_25BCB783C();
}

uint64_t OUTLINED_FUNCTION_8_43()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);

  return sub_25BCB624C();
}

void OUTLINED_FUNCTION_8_45()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 104);
  v3 = *(v0 + 120);
}

void OUTLINED_FUNCTION_8_46(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a3 = a1;
  a4 = v4;

  Tensor.reshaped(to:)(&a3, &a2);
}

uint64_t OUTLINED_FUNCTION_8_48()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_52()
{

  return sub_25BCB67AC();
}

void OUTLINED_FUNCTION_8_53(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *(v5 - 136) = v4;
  *(v5 - 128) = a1;
  *(v5 - 112) = a4;
  *(v5 - 104) = a3;
  *(v5 - 120) = a2;
}

uint64_t OUTLINED_FUNCTION_8_54(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_55()
{
  v2 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 200);
  *(v0 - 128) = v2;
  *(v0 - 112) = *(v0 - 168);
  *(v0 - 96) = *(v0 - 152);

  return sub_25BAC27B0(v0 - 144, v0 - 200);
}

void OUTLINED_FUNCTION_8_58()
{

  sub_25BADDD28();
}

uint64_t OUTLINED_FUNCTION_8_60()
{

  return OUTLINED_FUNCTION_53_0();
}

uint64_t OUTLINED_FUNCTION_8_61@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_25BAB74D0(v2, 4, 0, 0);
}

void OUTLINED_FUNCTION_8_63(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 1);
  v6 = *(a3 + 2);
  v7 = a3[24];
}

uint64_t OUTLINED_FUNCTION_8_64()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v2 = *(v0 - 400);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char __src)
{

  return sub_25BC323E4(0, 0, 0, v33, &a17, &__src, (v34 - 160));
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_25BCB77FC();
}

double OUTLINED_FUNCTION_7_17(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  return *(v1[5] + 8 * a1);
}

uint64_t OUTLINED_FUNCTION_7_22()
{
  v3 = *(v0 + 16);
  *(v1 - 144) = *(v3 + 152);
  *(v1 - 68) = *(v3 + 160);

  return type metadata accessor for DataSourceTensorStorage();
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_7_31()
{
  result = *(*(v1 + 16) + 152);
  v3 = *(*(v0 + 16) + 152);
  return result;
}

void *OUTLINED_FUNCTION_7_34()
{
  sub_25BA97060((v0 - 352), v0 - 288);
  v1 = *(v0 - 256);
  return __swift_project_boxed_opaque_existential_1((v0 - 288), *(v0 - 264));
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_7_41()
{
  v4 = *v0;
  *(v1 + 24) = *v2;
  *(v1 + 32) = v4;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);

  return sub_25BCB624C();
}

void OUTLINED_FUNCTION_7_46(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a2 = a1;
  a3 = v4;

  Tensor.reshaped(to:)(&a2, &a4);
}

double OUTLINED_FUNCTION_7_51()
{
  *(v1 - 128) = 0;
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_7_54()
{
}

uint64_t OUTLINED_FUNCTION_7_56()
{
  v2 = v0[17];
  v4 = v0[3];
  v3 = v0[4];

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_7_58()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_7_61@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 208);
  *(a1 - 40) = *(v1 - 224);
  *(a1 - 56) = result;
  v3 = *(v1 - 240);
  *(a1 - 24) = *(v1 - 232);
  *(a1 - 16) = v3;
  *(a1 - 8) = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_63()
{
  result = *(*(v0 + 16) + 152);
  v3 = *(*(v1 + 16) + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_25BB0EE34(v13, v11, v12, a4, a5, va, a7, 0, a8, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_7_66(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 256;
  *(v1 + 10) = v2 != 0;
  return result;
}

uint64_t sub_25BA9D148(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BA9D158()
{
  sub_25BA9D18C();

  return swift_deallocClassInstance();
}

void *sub_25BA9D18C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[11];
  sub_25BA9D148(v0[10]);
  return v0;
}

uint64_t sub_25BA9D1D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BA9D204();
  *a1 = result & 1;
  return result;
}

__n128 OUTLINED_FUNCTION_22_2()
{
  v2 = *(v1 + 48);
  *(v0 + 112) = *(v1 + 32);
  *(v0 + 128) = v2;
  result = *(v1 + 64);
  *(v0 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13()
{
  *(v2 - 88) = v1;
  result = v0;
  v4 = *(v2 - 144);
  v5 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t a1)
{
  *(v2 - 144) = *(*(v1 + 56) + 8 * a1);
}

__n128 OUTLINED_FUNCTION_22_15()
{
  v2 = *(v1 - 128);
  *v0 = *(v1 - 112);
  *(v0 + 16) = v2;
  result = *(v1 - 144);
  *(v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_19()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 136);
  return result;
}

ValueMetadata *OUTLINED_FUNCTION_22_20()
{

  return sub_25BC8FACC();
}

__n128 *OUTLINED_FUNCTION_22_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  n128_f64 = result[2].n128_f64;
  v5.val[0] = *(v3 + 80);
  v5.val[1] = v5.val[0];
  vst2q_f64(n128_f64, v5);
  *(v2 + 128) = result;
  *(v2 + 136) = 0;
  return result;
}

void OUTLINED_FUNCTION_22_23()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_22_24()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

void OUTLINED_FUNCTION_22_26()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t a1)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_22_30()
{
  v3 = *(*(v2 - 160) + 16);
  result = v0;
  *(v2 - 200) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_35@<X0>(uint64_t a1@<X8>)
{
  result = *(*(a1 + 16) + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_41(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  return _s9IOMappingVMa();
}

void *sub_25BA9D5DC()
{
  sub_25BA9D63C();
  v1 = v0[17];

  v2 = v0[19];
  sub_25BA9D148(v0[18]);
  return v0;
}

uint64_t sub_25BA9D608()
{
  sub_25BA9D5DC();

  return swift_deallocClassInstance();
}

void *sub_25BA9D63C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_25BA9D66C()
{
  sub_25BA9D6BC();
  v1 = *(v0 + 144);
  sub_25BA9D148(*(v0 + 136));

  return swift_deallocClassInstance();
}

void *sub_25BA9D6BC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t sub_25BA9D6F4()
{
  v0 = sub_25BA9D740();
  v1 = *(v0 + 120);
  sub_25BA9D148(*(v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9D740()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

void *sub_25BA9D768()
{
  sub_25BA9D7E0();
  v1 = v0[17];

  v2 = v0[18];

  v3 = v0[19];

  v4 = v0[20];

  v5 = v0[21];

  return v0;
}

uint64_t sub_25BA9D7AC()
{
  sub_25BA9D768();

  return swift_deallocClassInstance();
}

void *sub_25BA9D7E0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_25BA9D810()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v1 + 16);
    v5 = *(v1 + 48);
    sub_25BA9D8C4(v2);
    v6 = v4;
    v2();
    sub_25BA9D148(v2);
  }

  v7 = *(v1 + 24);

  v8 = *(v1 + 48);
  sub_25BA9D148(*(v1 + 40));
  return v1;
}

uint64_t sub_25BA9D890()
{
  sub_25BA9D810();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9D8C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*Adam.update(_:with:)(uint64_t a1, void *a2, uint64_t a3))(_BYTE *, void)
{
  v280 = a1;
  v260 = sub_25BCB783C();
  v7 = OUTLINED_FUNCTION_2(v260);
  v287 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v259 = v11;
  OUTLINED_FUNCTION_7();
  v12 = sub_25BCB5EFC();
  v13 = OUTLINED_FUNCTION_2(v12);
  v257 = v14;
  v258 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_4();
  v256 = v17;
  OUTLINED_FUNCTION_7();
  v18 = sub_25BCB5EBC();
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_50();
  v265 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_109_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_72_0();
  WitnessTable = swift_getWitnessTable();
  v284 = v3;
  nullsub_1(a3, WitnessTable);
  v276 = a3;
  v279 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v282 = a2;
  sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BACC03C();
  v286 = v27;
  if (qword_28154BE88 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v28 = sub_25BCB5EEC();
    v29 = __swift_project_value_buffer(v28, qword_28154BE90);
    sub_25BCB5EAC();
    v263 = v29;
    v30 = sub_25BCB5EDC();
    sub_25BCB6D5C();
    if (sub_25BCB6E1C())
    {
      v31 = OUTLINED_FUNCTION_90();
      v32 = OUTLINED_FUNCTION_88_1(v31);
      OUTLINED_FUNCTION_111_0(&dword_25BA90000, v33, v34, v32, "Optimizing", "");
      OUTLINED_FUNCTION_89();
    }

    v35 = OUTLINED_FUNCTION_103_0(v21);
    v36(v35);
    v37 = sub_25BCB5F2C();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v266 = sub_25BCB5F1C();
    v41 = *(v21 + 8);
    v40 = v21 + 8;
    v264 = v41;
    v41(v4, v18);
    OUTLINED_FUNCTION_0_14();
    v42 = OUTLINED_FUNCTION_29_1();
    sub_25BAA51C8(v42, v43);
    v44 = MEMORY[0x277D84F90];
    sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D42C38, v296, v290);
    sub_25BA9C2C8(v288);
    v297 = v290[0];
    v45 = v284;
    v46 = *(v284 + 28);
    OUTLINED_FUNCTION_67_1();
    if (!v50 & v49)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48 == 0x200000000;
    }

    if (v50)
    {
      v51 = *(v45 + 16);
      if ((v51 & 0x100000000) != 0)
      {
        v288[0] = v282;
        MEMORY[0x28223BE20](v47);
        OUTLINED_FUNCTION_71_0();
        v56 = WitnessTable;
        *(v57 - 16) = v276;
        *(v57 - 8) = v56;
        v58 = sub_25BCB68CC();
        OUTLINED_FUNCTION_1_1();
        v59 = swift_getWitnessTable();
        sub_25BAB2B20(sub_25BB28258, v51, v58, &type metadata for Tensor, MEMORY[0x277D84A98], v59, MEMORY[0x277D84AC0], v60);
        v283 = 0;
        OUTLINED_FUNCTION_75_0();
        v288[0] = v296[0];
        v294[0] = &unk_286D42C60;
        Tensor.reshaped(to:)(v294, v290);

        v294[0] = v290[0];
        Tensor.sum(squeezingAxes:)(v288);

        v61 = v288[0];
        OUTLINED_FUNCTION_0_14();
        v62 = *(v61[2] + 160);
        v63 = OUTLINED_FUNCTION_29_1();
        sub_25BAA51C8(v63, v64);
        v289[0] = v44;
        LOBYTE(v295) = v62;
        v65 = OUTLINED_FUNCTION_54_1();
        sub_25BAA51C8(v65, v66);
        Tensor.init(shape:coercingScalars:scalarType:on:)(v289, &unk_286D42CB0, &v295, v290, v294);
        sub_25BA9C2C8(v296);
        sub_25BA9C2C8(v288);
        v288[0] = v61;
        v296[0] = v294[0];
        OUTLINED_FUNCTION_29_1();
        static Tensor.* infix(_:_:)();
        sqrt(_:)(v288, v290);

        v55 = v288[0];
      }

      else
      {
        OUTLINED_FUNCTION_0_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v52 = OUTLINED_FUNCTION_56();
        *(v52 + 16) = xmmword_25BCBAE50;
        *(v52 + 32) = v51;
        v53 = OUTLINED_FUNCTION_29_1();
        sub_25BAA51C8(v53, v54);
        sub_25BACC1B0(MEMORY[0x277D84F90], v52, v296, v290);
        sub_25BA9C2C8(v288);
        v55 = v290[0];

        v283 = 0;
      }

      v297 = v55;
    }

    else
    {
      v283 = 0;
    }

    v67 = sub_25BCB681C();
    OUTLINED_FUNCTION_63_0();
    sub_25BAA1B64();
    v295 = v68;
    if (v67 < 0)
    {
      __break(1u);
LABEL_82:

      __break(1u);
LABEL_83:
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_7_0();
      goto LABEL_85;
    }

    v261 = v40;
    v262 = v18;
    v278 = v67;
    if (!v67)
    {
      break;
    }

    v69 = 0;
    v254 = (v287 + 8);
    v255 = (v287 + 104);
    HIDWORD(v253) = *MEMORY[0x277D84660];
    v277 = xmmword_25BCBAE50;
    v267 = xmmword_25BCBAE70;
    v70 = v276;
    v71 = WitnessTable;
    v72 = v278;
    while (1)
    {
      v285 = v69;
      sub_25BCB690C();
      v18 = v288[0];
      v73 = v288[1];

      MEMORY[0x28223BE20](v74);
      v75 = &v253 - 10;
      *(&v253 - 8) = v70;
      *(&v253 - 7) = v71;
      v287 = v73;
      v76 = v284;
      *(&v253 - 6) = v73;
      *(&v253 - 5) = v76;
      *(&v253 - 4) = &v297;
      *(&v253 - 3) = v18;
      *(&v253 - 2) = &v295;

      v77 = sub_25BCB6FCC();
      if ((v78 & 1) == 0)
      {
        MEMORY[0x28223BE20](v77);
        OUTLINED_FUNCTION_70_1();
        v87 = *(v70 + 24);
        v88 = v279;
        *(v89 - 48) = v279;
        *(v89 - 40) = v87;
        *(v89 - 32) = v90;
        *(v89 - 24) = sub_25BACC670;
        *(v89 - 16) = v75;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v75 = v283;
        sub_25BAB2F30(v280, sub_25BACC6E0, v18, v88, v91);
        if (v75)
        {
          goto LABEL_82;
        }

        v283 = 0;

        v72 = v278;
        goto LABEL_68;
      }

      v79 = swift_modifyAtWritableKeyPath();
      v81 = v79;
      if ((*(v80 + 8) & 1) == 0)
      {
        break;
      }

LABEL_67:
      v81(v294, 0);

LABEL_68:
      v226 = *(v287 + 2);
      v227 = sub_25BAC4018();
      v229 = *(v286 + 16);
      v228 = *(v286 + 24);
      OUTLINED_FUNCTION_95_0();
      if (v49)
      {
        OUTLINED_FUNCTION_13_5(v230);
        sub_25BACC03C();
        v286 = v233;
      }

      v231 = v285 + 1;

      v232 = v286;
      *(v286 + 16) = v75;
      *(v232 + 8 * v229 + 32) = v227;
      v69 = v231;
      if (v72 == v231)
      {
        goto LABEL_73;
      }
    }

    v82 = v80;
    v274 = v79;
    v275 = &v253;
    v83 = v284;
    v84 = *(v284 + 40);
    if (v84 == 1.0)
    {
      v85 = v287;

      v86 = MEMORY[0x277D84F90];
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      v92 = v287;
      v93 = *(*(v287 + 2) + 160);
      v94 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v94, v95);
      v86 = MEMORY[0x277D84F90];
      v292 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v96 = OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_23_4(v96);
      *(v97 + 32) = v84;
      v291 = v93;
      v98 = OUTLINED_FUNCTION_54_1();
      sub_25BAA51C8(v98, v99);
      v100 = OUTLINED_FUNCTION_6_14();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v100, v101, v102, v103, v104);
      sub_25BA9C2C8(v296);
      sub_25BA9C2C8(v288);
      v296[0] = v92;
      v290[0] = v293;

      OUTLINED_FUNCTION_46_1();
      static Tensor.* infix(_:_:)();

      v85 = v288[0];
    }

    v105 = *(v83 + 28);
    OUTLINED_FUNCTION_64_1();
    if (!v50 & v49)
    {
      v288[0] = v85;
    }

    else
    {
      v107 = v82;
      v108 = *(v83 + 16);
      v109 = *(v83 + 24) | (v106 << 32);
      if (HIDWORD(v109))
      {
        v110 = v297;
        OUTLINED_FUNCTION_0_14();
        if (HIDWORD(v109) == 1)
        {
          v111 = *(v85[2] + 160);
          v112 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v112, v113);
          v292 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v114 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_23_4(v114);
          *(v115 + 32) = v108;
          v291 = v111;
          v116 = OUTLINED_FUNCTION_54_1();
          sub_25BAA51C8(v116, v117);

          v118 = OUTLINED_FUNCTION_6_14();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v118, v119, v120, v121, v122);
          sub_25BA9C2C8(v296);
          sub_25BA9C2C8(v288);
          v123 = v293;
          v296[0] = v85;
          OUTLINED_FUNCTION_96_0();
          Tensor.squared()();
          v290[0] = v288[0];
          v293 = &unk_286D42CD8;
          v124 = OUTLINED_FUNCTION_98_1();
          Tensor.reshaped(to:)(v124, v125);

          v290[0] = v296[0];
          Tensor.sum(squeezingAxes:)(&v293);

          v86 = MEMORY[0x277D84F90];

          v126 = OUTLINED_FUNCTION_97_0();
          sqrt(_:)(v127, v126);

          v128 = v288[0];
          v296[0] = v85;
          v288[0] = v123;
          v290[0] = v128;
          v293 = v123;
          max(_:_:)();
          static Tensor./ infix(_:_:)();

          OUTLINED_FUNCTION_46_1();
          static Tensor.* infix(_:_:)();
        }

        else
        {
          v132 = *(v85[2] + 160);
          v133 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v133, v134);
          v292 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v135 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_23_4(v135);
          *(v136 + 32) = v109;
          v291 = v132;
          v137 = OUTLINED_FUNCTION_54_1();
          sub_25BAA51C8(v137, v138);

          v139 = OUTLINED_FUNCTION_6_14();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v139, v140, v141, v142, v143);
          sub_25BA9C2C8(v296);
          sub_25BA9C2C8(v288);
          v288[0] = v85;
          v296[0] = v293;
          OUTLINED_FUNCTION_29_1();
          static Tensor.* infix(_:_:)();
          v288[0] = v110;
          LOBYTE(v293) = *(v85[2] + 160);
          v144 = v259;
          v145 = v260;
          (*v255)(v259, HIDWORD(v253), v260);
          OUTLINED_FUNCTION_98_1();
          Tensor.cast(to:roundingRule:)();
          (*v254)(v144, v145);
          v293 = v296[0];
          static Tensor./ infix(_:_:)();
        }
      }

      else
      {
        v296[0] = v85;
        OUTLINED_FUNCTION_96_0();
        Tensor.clamped(to:)(v129, v130, v131);
      }

      v83 = v284;
      v82 = v107;
    }

    v146 = *(*v82 + 32);
    if ((~v146 & 0xF000000000000007) == 0)
    {
      OUTLINED_FUNCTION_21();
      v253 = 329;
      OUTLINED_FUNCTION_7_0();
LABEL_85:
      sub_25BCB74CC();
      __break(1u);
LABEL_86:
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_52_1();
      sub_25BADDD28();
    }

    if ((v146 & 0x8000000000000000) == 0)
    {
      goto LABEL_83;
    }

    v273 = v82;
    v147 = v288[0];
    sub_25BAB3020(v146);
    v148 = qword_28154E1E0;

    if (v148 != -1)
    {
      swift_once();
    }

    v4 = v146 & 0x7FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v271 = v147;
    v272 = v146;
    if (byte_27FBB3838 == 1)
    {
      v149 = *(v83 + 36);
      OUTLINED_FUNCTION_64_1();
      if (!v50 & v49)
      {

        v156 = v147;
      }

      else
      {
        v153 = *(v83 + 32);
        OUTLINED_FUNCTION_47_3(v150);
        v296[0] = v147;
        v290[0] = v146 & 0x7FFFFFFFFFFFFFFFLL;
        v154 = OUTLINED_FUNCTION_46_1();
        sub_25BB08FF0(v154, v155);
        v156 = v288[0];
      }

      v157 = *v83;
      v158 = *(*((v146 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
      OUTLINED_FUNCTION_0_14();
      v293 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v159 = OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_23_4(v159);
      *(v160 + 32) = v157;
      LOBYTE(v292) = v158;
      v161 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v161, v162);
      v163 = OUTLINED_FUNCTION_77_0();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v163, v164, v165, v166, v167);
      sub_25BA9C2C8(v288);
      v168 = *(v83 + 48);
      v21 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
        goto LABEL_79;
      }

      v268 = v290[0];
      v269 = v156;
      v169 = *(*((v146 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
      OUTLINED_FUNCTION_0_14();
      v293 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v170 = swift_allocObject();
      OUTLINED_FUNCTION_23_4(v170);
      *(v171 + 32) = v21;
      LOBYTE(v292) = v169;
      v172 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v172, v173);
      v174 = OUTLINED_FUNCTION_77_0();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v174, v175, v176, v177, v178);
      sub_25BA9C2C8(v288);
      v179 = v290[0];
      if (*(v83 + 48))
      {
        OUTLINED_FUNCTION_49_3();
        v180 = type metadata accessor for OptimizerStateDictionary();
        OUTLINED_FUNCTION_80_0(v180);
        v181 = v288[0];
        if (!v288[0])
        {
          goto LABEL_86;
        }
      }

      else
      {
        v288[0] = *(v83 + 56);
        OUTLINED_FUNCTION_49_3();
        type metadata accessor for OptimizerStateDictionary();
        OUTLINED_FUNCTION_31_2(sub_25BB28290, v296);
        v181 = v296[0];
      }

      OUTLINED_FUNCTION_113_1();
      v207 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v296);
      v208 = v83;
      v209 = v296[0];
      v210 = *(v208 + 72);
      if (v210)
      {
        v288[0] = v210;
        v207 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v296);
        v211 = v296[0];
      }

      else
      {
        v211 = 0;
      }

      MEMORY[0x28223BE20](v207);
      *(&v253 - 10) = v86;
      *(&v253 - 9) = v4;
      v217 = v268;
      *(&v253 - 8) = v269;
      *(&v253 - 7) = v181;
      *(&v253 - 6) = v209;
      *(&v253 - 5) = v211;
      *(&v253 - 4) = v217;
      *(&v253 - 3) = v179;
      v218 = v283;
      *(&v253 - 2) = v284;
      *(&v253 - 1) = v18;
      sub_25BACDABC(sub_25BB279EC);
      v283 = v218;

      goto LABEL_62;
    }

    v151 = *(v83 + 36);
    OUTLINED_FUNCTION_64_1();
    if (!v50 & v49)
    {

      v185 = v147;
    }

    else
    {
      v182 = *(v83 + 32);
      OUTLINED_FUNCTION_47_3(v152);
      v296[0] = v147;
      v290[0] = v146 & 0x7FFFFFFFFFFFFFFFLL;
      v183 = OUTLINED_FUNCTION_46_1();
      sub_25BB08FF0(v183, v184);
      v185 = v288[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v186 = swift_allocObject();
    *(v186 + 16) = v267;
    *(v186 + 32) = v4;
    *(v186 + 40) = v185;
    sub_25BAB3020(v146);

    sub_25BAB7DE8(v186, v296);
    swift_setDeallocating();
    sub_25BAB3FD0();
    v187 = *v83;
    v188 = *(*((v146 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
    OUTLINED_FUNCTION_0_14();
    v292 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v189 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_23_4(v189);
    *(v190 + 32) = v187;
    v291 = v188;
    sub_25BAA51C8(v288, v290);
    v191 = OUTLINED_FUNCTION_6_14();
    Tensor.init(shape:coercingScalars:scalarType:on:)(v191, v192, v193, v194, v195);
    sub_25BA9C2C8(v288);
    v196 = *(v83 + 48);
    v21 = v196 + 1;
    if (!__OFADD__(v196, 1))
    {
      v268 = v293;
      v269 = v185;
      OUTLINED_FUNCTION_0_14();
      v292 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v197 = swift_allocObject();
      OUTLINED_FUNCTION_23_4(v197);
      *(v198 + 32) = v21;
      v291 = 2;
      sub_25BAA51C8(v288, v290);
      v199 = OUTLINED_FUNCTION_6_14();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v199, v200, v201, v202, v203);
      sub_25BA9C2C8(v288);
      v204 = v293;
      if (*(v83 + 48))
      {
        OUTLINED_FUNCTION_49_3();
        v205 = type metadata accessor for OptimizerStateDictionary();
        OUTLINED_FUNCTION_80_0(v205);
        v206 = v288[0];
        if (!v288[0])
        {
          goto LABEL_86;
        }
      }

      else
      {
        v288[0] = *(v83 + 56);
        OUTLINED_FUNCTION_49_3();
        type metadata accessor for OptimizerStateDictionary();
        OUTLINED_FUNCTION_31_2(sub_25BB28290, v290);
        v206 = v290[0];
      }

      OUTLINED_FUNCTION_113_1();
      v212 = OUTLINED_FUNCTION_31_2(sub_25BB279D0, v290);
      v213 = v83;
      v214 = v290[0];
      v215 = *(v213 + 72);
      if (v215)
      {
        v288[0] = v215;
        v212 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v290);
        v216 = v290[0];
      }

      else
      {
        v216 = 0;
      }

      MEMORY[0x28223BE20](v212);
      *(&v253 - 12) = v86;
      *(&v253 - 11) = v4;
      v219 = v268;
      *(&v253 - 10) = v269;
      *(&v253 - 9) = v206;
      *(&v253 - 8) = v214;
      *(&v253 - 7) = v216;
      *(&v253 - 6) = v219;
      *(&v253 - 5) = v204;
      v220 = v283;
      *(&v253 - 4) = v284;
      *(&v253 - 3) = v296;
      *(&v253 - 2) = v18;
      sub_25BACDABC(sub_25BACE338);
      v283 = v220;

      sub_25BA9C2C8(v296);
LABEL_62:

      v221 = v288[0];
      v222 = v295;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v276;
      v72 = v278;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_45_3();
        v222 = v234;
      }

      v225 = *(v222 + 16);
      v224 = *(v222 + 24);
      v75 = (v225 + 1);
      if (v225 >= v224 >> 1)
      {
        OUTLINED_FUNCTION_13_5(v224);
        sub_25BAA1B64();
        v222 = v235;
      }

      *(v222 + 16) = v75;
      *(v222 + 8 * v225 + 32) = v221;
      v295 = v222;
      v288[0] = v221;

      Parameter.wrappedValue.setter(v288);

      sub_25BAB310C(v272);

      v71 = WitnessTable;
      v81 = v274;
      goto LABEL_67;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_20_2();
  }

  v71 = WitnessTable;
LABEL_73:
  v236 = sub_25BCB5EDC();
  v237 = v265;
  sub_25BCB5F0C();
  v238 = sub_25BCB6D4C();
  v239 = sub_25BCB6E1C();
  v240 = v262;
  v241 = v284;
  if (v239)
  {

    sub_25BCB5F3C();

    v242 = OUTLINED_FUNCTION_48_2();
    if (v243(v242) != *MEMORY[0x277D85B00])
    {
      v244 = OUTLINED_FUNCTION_74_0();
      v245(v244);
    }

    *OUTLINED_FUNCTION_90() = 0;
    v246 = sub_25BCB5E9C();
    OUTLINED_FUNCTION_61_0(&dword_25BA90000, v247, v238, v246, "Optimizing");
    OUTLINED_FUNCTION_89();
    v241 = v284;
    v71 = WitnessTable;
  }

  v264(v237, v240);

  v248 = sub_25BACED8C();
  OUTLINED_FUNCTION_114_0(v248);

  v249 = v276;
  v250 = OUTLINED_FUNCTION_102_0();
  nullsub_1(v250, v251);
  return sub_25BA9B48C(v241, v249, v71);
}

void OUTLINED_FUNCTION_122_1()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_6()
{
  v4 = *(v0 + 168);
  v5 = *(v2 + 16);
  *(v0 + 40) = v1;
  *(v0 + 16) = v3;
  return v3;
}

uint64_t OUTLINED_FUNCTION_24_8(uint64_t a1)
{

  return sub_25BAA6F5C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_25BAAF074(v0);
}

void OUTLINED_FUNCTION_24_12()
{
  v1 = *(v0 - 440);
  v2 = *(v0 - 448);
  v3 = *(v0 - 432);
}

uint64_t OUTLINED_FUNCTION_24_14@<X0>(__int16 a1@<W8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = 73;
  *(v2 - 88) = a1;

  return type metadata accessor for BinaryComparisonOperation();
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_25BAA48D4(v1, va, v2, v3);
}

uint64_t OUTLINED_FUNCTION_24_20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = v6;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_24_22()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);
  v4 = *(v0 - 104);

  sub_25BAB2794();
}

uint64_t OUTLINED_FUNCTION_24_23()
{

  return sub_25BCB625C();
}

void OUTLINED_FUNCTION_24_24()
{
  *(v1 - 176) = v0;

  static Tensor.* infix(_:_:)();
}

void *OUTLINED_FUNCTION_24_25(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v4;
  result[5] = v3;
  return result;
}

double OUTLINED_FUNCTION_24_26()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 a16)
{
  result = a16;
  v18 = *(v16 + 24);
  v19 = *(v16 + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *v14 = a13;
  v14[1] = a14;
  v14[2] = v16;
  return v15;
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_25BAA4A5C(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_16_9@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return sub_25BC87800(&a26, a1 & 1);
}

void OUTLINED_FUNCTION_89()
{

  JUMPOUT(0x25F8797F0);
}

uint64_t OUTLINED_FUNCTION_16_11@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_16_12(uint64_t result)
{
  v2 = (*(v1 + 56) + 24 * result);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_25BCB680C();
}

uint64_t OUTLINED_FUNCTION_16_15()
{
  v1 = *(*(v0 - 248) + 8);
  result = *(v0 - 352);
  v3 = *(v0 - 344);
  return result;
}

void OUTLINED_FUNCTION_16_16(uint64_t a1@<X8>)
{
  v2 = *(v1 - 352);
  *(a1 - 72) = *(v1 - 344);
  *(a1 - 64) = v2;
  v3 = *(v1 - 312);
  *(a1 - 56) = *(v1 - 288);
  *(a1 - 48) = v3;
  v4 = *(v1 - 328);
  *(a1 - 40) = *(v1 - 320);
  *(a1 - 32) = v4;
  v5 = *(v1 - 432);
  *(a1 - 24) = *(v1 - 336);
  *(a1 - 16) = v5;
}

void *OUTLINED_FUNCTION_16_21()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 304), v0);
}

void OUTLINED_FUNCTION_16_22()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *v0;
  v3 = v0[1];
  v5 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_16_23(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = v2[5];
  v5 = v2[6];
  *(v3 + 32) = result;
  *(v3 + 40) = v5;
  v6 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_24()
{
  v2 = *(v0 - 120);

  return sub_25BCB5B3C();
}

uint64_t OUTLINED_FUNCTION_16_25()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_16_26@<X0>(char a1@<W8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_arg(va1, void);
  v14 = va_arg(va1, void);
  v13 = v2;
  HIBYTE(v12) = a1;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_16_27()
{
  v3 = *(v1 - 312);

  return sub_25BB0EA20(v0);
}

BOOL OUTLINED_FUNCTION_16_30@<W0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 152);

  return sub_25BAC863C(0);
}

uint64_t OUTLINED_FUNCTION_16_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, _OWORD *a7)
{

  return sub_25BC323E4(0, 0, 0, v7, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_16_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_25BA92920(v8, 0, 0, va);
}

void OUTLINED_FUNCTION_16_36()
{
  *(v1 - 152) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

double OUTLINED_FUNCTION_16_40()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  v3 = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_16_43()
{

  static Tensor.+ infix(_:_:)();
}

void OUTLINED_FUNCTION_16_45()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_16_47()
{
  *(v2 - 264) = v0;
  *(v2 - 272) = v1;
  *(v2 - 273) = *(v2 - 348);
  v4 = *(v2 - 344);

  return basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)(v2 - 264);
}

uint64_t OUTLINED_FUNCTION_16_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 - 68) = a6;

  return sub_25BCB783C();
}

uint64_t OUTLINED_FUNCTION_16_53()
{

  return sub_25BCB788C();
}

uint64_t sub_25BA9F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = (a2 - a1) / 4;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D83A90], a4, a5);
}

uint64_t sub_25BA9F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v11 = sub_25BCB6E8C();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v32 = &v29 - v13;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v21 = *(v30 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v29 - v22;
  v35 = a4;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a2;
  v31 = a2;
  v41 = a3;
  v24 = v36;
  sub_25BCB658C();
  if (v43 != 1)
  {
    return v42;
  }

  (*(v14 + 16))(v18, v24, a5);
  v25 = sub_25BCB656C();
  swift_getAssociatedConformanceWitness();
  v26 = v32;
  sub_25BCB6EDC();
  (*(v30 + 8))(v23, AssociatedTypeWitness);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v35);
  (*(v33 + 8))(v26, v34);
  if (EnumTagSinglePayload != 1)
  {
    __break(1u);
    return v42;
  }

  return v25;
}

uint64_t sub_25BA9F8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v7 = v3[4];
  v6 = v3[5];
  return sub_25BA9F8C8(a1, a2, v3[6], a3);
}

uint64_t sub_25BA9F8C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a4 = v5;
    return result;
  }

  if (a3 >= a2)
  {
    result = sub_25BCB6E4C();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BA9F928(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v8;
  *(v6 + 32) = a5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  v9 = OBJC_IVAR____TtC14NeuralNetworks19NativeTensorStorage_deallocator;
  v10 = sub_25BCB59BC();
  (*(*(v10 - 8) + 32))(v6 + v9, a6, v10);
  return v6;
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_55_2@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[4] = a2;
  v3[5].n128_u64[0] = a1;
  v3[5].n128_u8[8] = v2;

  return __swift_destroy_boxed_opaque_existential_1((v4 - 152));
}

uint64_t *OUTLINED_FUNCTION_55_3()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v5 = *(v3 + 80);
  *(v2 + 48) = *(v3 + 72);
  *(v2 + 56) = v5;

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_55_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = v15;

  Tensor.reshaped(to:)(&a14, v14);
}

uint64_t OUTLINED_FUNCTION_55_9()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_25BCB70FC();
}

void OUTLINED_FUNCTION_54_2()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 26);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  result = v0;
  v3 = *(v1 - 432);
  v4 = *(v1 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_25BB654CC(&a26, a12);
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return nullsub_1(v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_8()
{
  v2 = *(*(v0 + 16) + 152);

  return sub_25BCB617C();
}

__n128 OUTLINED_FUNCTION_54_9()
{
  v2 = *(v0 + 112);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 64) = v2;
  result = *(v0 + 128);
  *(v1 + 80) = result;
  *(v0 + 272) = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_10@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 152);
  v4 = *(*(v2 + 16) + 152);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_11(uint64_t result)
{
  v2 = *v1;
  v3 = *(result + 16);
  return result;
}

void *OUTLINED_FUNCTION_54_12()
{

  return sub_25BC20C38(v2, v1, v3, v0);
}

void OUTLINED_FUNCTION_54_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(v58 + 48) = a1 / v57;
  a37 = v58;

  Tensor.reshaped(to:)(&a37, &a57);
}

uint64_t type metadata accessor for NativeTensorStorage()
{
  result = qword_28154E5B0;
  if (!qword_28154E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BA9FCEC(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_25BCB59BC();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v25 = *a1;
  HIBYTE(v24) = v18;
  (*(v19 + 104))(v17, *MEMORY[0x277CC92A0]);
  v20 = *(v6 + 48);
  v21 = *(v6 + 52);
  v22 = swift_allocObject();
  sub_25BA9F928(&v25, &v24 + 7, a3, a4, a5, v17);
  return v22;
}

void sub_25BA9FE14()
{
  OUTLINED_FUNCTION_9_18();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v45 = v12;
  v14 = *v13;
  v15 = *(*v13 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    v17 = 1;
    while (1)
    {
      v18 = *v16++;
      v19 = v17 * v18;
      if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
      {
        break;
      }

      v17 = v19;
      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_13:
    v46[0] = v14;
    LOBYTE(v47) = v5;
    sub_25BAA4B48(v46, &v47, v51, v0, v7);
    v23 = v22;

    sub_25BAA48D4(v51, v46, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v24 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v47) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v26, v46, v27, v24, ObjectType, v23);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v28);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_78_6(v45);
    OUTLINED_FUNCTION_78_6(v51);
    OUTLINED_FUNCTION_78_6(v53);
    v29 = v43;
    *v44 = v28;
    (*(*(v11 - 8) + 8))(v29, v11);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v19 = 1;
LABEL_7:
  v0 = v2;
  v44 = v3;
  v20 = v1;
  if (v19 == sub_25BCB6ABC())
  {
    v21 = sub_25BAA48D4(v45, v53, &qword_27FBB6730, &qword_25BCBC4B0);
    v42[1] = v42;
    MEMORY[0x28223BE20](v21);
    v7 = v41;
    v41[2] = v11;
    v41[3] = v9;
    v43 = v20;
    v41[4] = v20;
    sub_25BAA48D4(v53, &v47, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v48 + 1))
    {
      v51[0] = v47;
      v51[1] = v48;
      v51[2] = v49;
      v52 = v50;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v46);

      sub_25BAA48D4(v46, v51, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v46);
      if (*(&v48 + 1))
      {
        sub_25BAA6FBC(&v47, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v14 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v30)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v31, v32, v33);
    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v34, v35, v36);

    __break(1u);
  }

LABEL_21:
  v37 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v37);

  v38 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v38);
  sub_25BCB6ABC();
  v39 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v39);

  v40 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v40);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_25_0();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{

  return OptimizerStateDictionary.subscript.getter(v1, a1);
}

uint64_t *OUTLINED_FUNCTION_80_1(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 9);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_4()
{
  result = v0;
  v3 = *(v1 - 376);
  v4 = *(v1 - 360);
  v5 = *(v1 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_9()
{
}

uint64_t sub_25BAA0600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BAA0648()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 144);
  *(v1 + 32) = *(v0 + 136);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BAA06AC(uint64_t (*a1)(void))
{
  v1 = a1();
  if (v1 >> 62)
  {
    v2 = sub_25BCB749C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

__n128 OUTLINED_FUNCTION_78_0()
{
  v2 = v0[1].n128_u64[0];
  v1 = v0[1].n128_u64[1];
  v3 = v0[2].n128_u64[0];
  v4 = v0[2].n128_u64[1];
  v5 = v0[3].n128_u64[0];
  v6 = v0[3].n128_u64[1];
  v7 = v0[4].n128_u64[0];
  v8 = v0[4].n128_u64[1];
  return v0[5];
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_25BAAF074(v0);
}

uint64_t sub_25BAA07E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBB6D0;
  *(v1 + 32) = *(v0 + 40);

  return v1;
}

void OUTLINED_FUNCTION_83_1()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_83_2()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 200);
  v4 = *(v0 - 328);

  return sub_25BB556A0(v3);
}

__n128 OUTLINED_FUNCTION_83_3()
{
  result = *(v0 + 88);
  v2 = *(v0 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_83_4()
{

  return sub_25BCB60DC();
}

void OUTLINED_FUNCTION_83_9(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

unint64_t sub_25BAA0930(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25BAA0954()
{
  OUTLINED_FUNCTION_17_10();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_6_54(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1]);
  if (v13)
  {
    if (v13 == 1)
    {
      OUTLINED_FUNCTION_7_54();
      swift_unknownObjectRelease();
      sub_25BA977E0(&v12);
    }

    else
    {
      sub_25BA9778C(v11);
    }

    return 0;
  }

  else
  {
    sub_25BA9BE3C(v11, v10);
    v8 = v10[3];
    sub_25BA977E0(v10);
  }

  return v8;
}

void OUTLINED_FUNCTION_75_0()
{
  *(v0 + 320) = 13;

  Tensor.init(stacking:alongAxis:scalarType:)();
}

uint64_t OUTLINED_FUNCTION_75_2()
{
  v2 = *(v0 - 296);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_75_5()
{

  return sub_25BAA4A5C(v0 + 224);
}

uint64_t OUTLINED_FUNCTION_75_6()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_75_7()
{

  return sub_25BCB783C();
}

__n128 *OUTLINED_FUNCTION_74_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_2()
{
  v2 = *(*(v0 - 320) + 16);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_6()
{
}

void OUTLINED_FUNCTION_74_7()
{
  *(v2 - 216) = v1;

  Tensor.reshaped(to:)((v2 - 216), v0);
}

uint64_t OUTLINED_FUNCTION_85()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_85_2()
{
  v2 = *(v0 - 248);

  return sub_25BCB54FC();
}

uint64_t OUTLINED_FUNCTION_85_5@<X0>(__int16 a1@<W8>)
{
  *(v2 - 160) = v1;
  *(v2 - 152) = 70;
  *(v2 - 144) = a1;

  return type metadata accessor for SplitOperation();
}

void OUTLINED_FUNCTION_68_0()
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
}

BOOL OUTLINED_FUNCTION_68_9(uint64_t *a1)
{

  return sub_25BAA2CDC(a1, v1);
}

__n128 *OUTLINED_FUNCTION_68_11@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = a3;
  result[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_2()
{
  v2 = *(v0 + 40);

  return sub_25BAC4018();
}

uint64_t OUTLINED_FUNCTION_89_4()
{
  result = v0;
  v3 = *(v1 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_89_5()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_89_6()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_8()
{

  return MultiheadAttention.initializeParameters(for:)((v0 + 168));
}

uint64_t OUTLINED_FUNCTION_89_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAB6D38(va, v2 << 32);
}

_BYTE *sub_25BAA0EB4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x25BAA0F80);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

void Tensor.init(concatenating:alongAxis:scalarType:)()
{
  OUTLINED_FUNCTION_9_18();
  v11 = v10;
  v12 = v7[2];
  if (!v12)
  {
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_7;
  }

  v0 = v8;
  v1 = v7;
  v3 = *v9;
  v6 = *(*(*(v7[4] + 16) + 152) + 16);
  v13 = 4;
  do
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v14 = *(*(*(v7[v13++] + 16) + 152) + 16);
    --v12;
  }

  while (v14 == v6);
  OUTLINED_FUNCTION_122_0();
LABEL_6:
  OUTLINED_FUNCTION_7_0();
  while (1)
  {
LABEL_7:
    sub_25BCB74CC();
    __break(1u);
LABEL_8:
    if (!v6)
    {
      OUTLINED_FUNCTION_122_0();
      goto LABEL_6;
    }

    v15 = sub_25BAAE8D8(0, 0, 255, v3, "init(concatenating:alongAxis:scalarType:)", 41, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorTransformations.swift", 114, 2u, 921, v1);
    if (!*(v15 + 16))
    {
      __break(1u);
LABEL_42:
      LOBYTE(v85) = v2;
      v73 = sub_25BC8FACC();
      v74 = v62;
      v75 = v5;
      v76 = v3;
      LOBYTE(v77) = v4;
      v78 = v1;
      LOBYTE(v79) = 1;
      v81 = 3;

      OUTLINED_FUNCTION_3_40();
LABEL_43:
      sub_25BADDD28();
    }

    v70 = v1;
    v72 = v15;
    v17 = v15 + 32;
    v16 = *(v15 + 32);
    LODWORD(v2) = *(*(v16 + 16) + 160);
    if (v3 == 13)
    {
      v18 = v16;
      v5 = swift_allocObject();
      v16 = v18;
      v3 = 0;
      *(v5 + 16) = xmmword_25BCCB4C0;
      *(v5 + 32) = 0;
      LOBYTE(v4) = 5;
    }

    else
    {
      LOBYTE(v4) = 0;
      v3 = 0xE700000000000000;
      v5 = 0x73726F736E6574;
    }

    v19 = 0;
    v1 = &unk_286D424D8;
    do
    {
      if (v19 == 6)
      {
        goto LABEL_42;
      }

      v20 = &unk_286D424D8 + v19++;
    }

    while (v20[32] != v2);
    v71 = v16;

    sub_25BAA200C(v5, v3, v4);
    v4 = *(v72 + 16);
    if (v4 == 1)
    {

      v21 = v71;
      goto LABEL_40;
    }

    if (-v6 > v0 || v6 <= v0)
    {
      v74 = 0;
      v75 = 0;
      v73 = v0;
      LOBYTE(v76) = -1;
      v78 = 0;
      v79 = 0;
      v77 = v6;
      v80 = -1;
      v81 = 4;
      OUTLINED_FUNCTION_17_4();
      goto LABEL_43;
    }

    v2 = (v6 & (v0 >> 63)) + v0;
    v23 = MEMORY[0x277D84F90];
    v68 = v11;
    v69 = v2;
    if (v4)
    {
      v85 = MEMORY[0x277D84F90];
      sub_25BAAEF84();
      v24 = v85;
      v25 = v17;
      v3 = v4;
      do
      {
        v5 = *(*(*v25 + 16) + 152);
        v85 = v24;
        v26 = *(v24 + 16);
        v11 = *(v24 + 24);
        sub_25BCB617C();
        if (v26 >= v11 >> 1)
        {
          OUTLINED_FUNCTION_52_8();
          sub_25BAAEF84();
          v24 = v85;
        }

        *(v24 + 16) = v26 + 1;
        *(v24 + 8 * v26 + 32) = v5;
        v25 += 8;
        --v3;
      }

      while (v3);
      v2 = v69;
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    sub_25BAB4ED8(v24, v2, &v73);

    v6 = v73;
    if (v73)
    {
      break;
    }

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_25BCB70FC();

    OUTLINED_FUNCTION_86();
    v73 = 0xD00000000000002ELL;
    v74 = v63;
    v85 = v2;
    v64 = sub_25BCB77FC();
    v1 = v65;
    v0 = &v73;
    MEMORY[0x25F876C90](v64);

    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_10_5();
  }

  v28 = *(*(*v17 + 16) + 160);
  MEMORY[0x28223BE20](v27);
  swift_getKeyPath();
  if (v4)
  {
    v66 = v28;
    v67 = v6;
    v73 = v23;
    sub_25BAA21EC();
    v29 = 0;
    v30 = v73;
    do
    {
      v83[0] = *(v17 + 8 * v29);
      swift_retain_n();
      swift_getAtKeyPath();

      v31 = v85;
      v73 = v30;
      Kind = v30[1].Kind;
      Description = v30[1].Description;
      if (Kind >= Description >> 1)
      {
        OUTLINED_FUNCTION_81(Description);
        OUTLINED_FUNCTION_52_8();
        sub_25BAA21EC();
        v30 = v73;
      }

      ++v29;
      v30[1].Kind = Kind + 1;
      *(&v30[2].Kind + Kind) = v31;
    }

    while (v4 != v29);

    v73 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    do
    {
      v34 = *v17;
      v17 += 8;
      v35 = *(v34 + 16);

      sub_25BCB723C();
      v36 = v73[1].Kind;
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v4;
    }

    while (v4);
    v37 = v73;
    v2 = v69;
    v6 = v67;
    v28 = v66;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
    v30 = MEMORY[0x277D84F90];
  }

  v73 = v6;
  LOBYTE(v74) = v28;
  v38 = v70[2];

  OUTLINED_FUNCTION_1_2();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v30;
  v39[4] = v2;
  v40 = sub_25BAAF074(sub_25BC02C14);
  v42 = v41;

  v84 = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v86 = xmmword_25BCCB4D0;
  OUTLINED_FUNCTION_28(v43);
  type metadata accessor for ConcatOperation();
  OUTLINED_FUNCTION_63_3();
  v44 = OUTLINED_FUNCTION_3();
  sub_25BAA2604(v44, v45, v46, v37, v2, 0, v47, v48, v40, v42);

  v49 = OUTLINED_FUNCTION_8_35();
  sub_25BAAF130(v49, v50, v51, v52, 962, v53, 41, 2);

  sub_25BAA51C8(v83, &v82);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(&v73);

  sub_25BAA4AF4(&v73);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v73);

  sub_25BAA4AF4(&v73);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v73) = v54;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_22();
  sub_25BAAF134(v55, v56, v57, v58, v59, v60, v61);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v21);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v83);
  v11 = v68;
LABEL_40:
  *v11 = v21;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAA17AC()
{
  sub_25BAA200C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25BAA1834()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAA1868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25BAB8500(a11, v25);
  if (LOBYTE(v25[0]) == 13)
  {
    v22 = a3;
    v25[0] = MEMORY[0x277D84F90];
    sub_25BB006D4();
    v14 = v25[0];
    v15 = a11 + 32;
    v16 = MEMORY[0x277D84900];
    v17 = MEMORY[0x277D839B0];
    while (1)
    {
      v18 = &protocol witness table for Int8;
      v19 = v16;
      switch(*(*(*v15 + 16) + 160))
      {
        case 1:
          v19 = MEMORY[0x277D84958];
          v18 = &protocol witness table for Int16;
          break;
        case 2:
          v19 = MEMORY[0x277D849A8];
          v18 = &protocol witness table for Int32;
          break;
        case 3:
          v19 = MEMORY[0x277D83B88];
          v18 = &protocol witness table for Int;
          break;
        case 4:
          v19 = MEMORY[0x277D84B78];
          v18 = &protocol witness table for UInt8;
          break;
        case 5:
          v19 = MEMORY[0x277D84C58];
          v18 = &protocol witness table for UInt16;
          break;
        case 6:
          v19 = MEMORY[0x277D84CC0];
          v18 = &protocol witness table for UInt32;
          break;
        case 7:
          v19 = MEMORY[0x277D84D38];
          v18 = &protocol witness table for UInt64;
          break;
        case 8:
          v19 = MEMORY[0x277D84DC8];
          v18 = &protocol witness table for Float16;
          break;
        case 9:
          v18 = sub_25BB18AFC();
          v19 = &type metadata for BFloat16;
          break;
        case 0xA:
          v19 = MEMORY[0x277D83A90];
          v18 = &protocol witness table for Float;
          break;
        case 0xB:
          v19 = MEMORY[0x277D839F8];
          v18 = &protocol witness table for Double;
          break;
        case 0xC:
          v19 = v17;
          v18 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      v25[0] = v14;
      v20 = *(v14 + 16);
      if (v20 >= *(v14 + 24) >> 1)
      {
        sub_25BB006D4();
        v14 = v25[0];
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      v15 += 8;
      if (!--v11)
      {
        v25[0] = v14;
        v25[1] = a1;
        v25[2] = a2;
        v26 = v22;
        v27 = 2;
        sub_25BC02C38(a1, a2, v22);
        sub_25BADDD28();
      }
    }
  }

  return sub_25BAAE8D8(a1, a2, a3);
}

void sub_25BAA1B64()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      v8 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_9_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_4();
        sub_25BAB254C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

__n128 OUTLINED_FUNCTION_48_5@<Q0>(__n128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result = a6;
  a1[2] = a6;
  a1[3].n128_u64[0] = v6;
  a1[3].n128_u8[8] = v7;
  return result;
}

void OUTLINED_FUNCTION_48_10()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_48_12(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *v33 = a1;

  return sub_25BB6B668(&a33);
}

uint64_t OUTLINED_FUNCTION_48_17()
{
  v2 = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;

  return sub_25BAC4018();
}

BOOL OUTLINED_FUNCTION_48_18()
{
  result = sub_25BC6240C(v1 - 248);
  *(v0 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_3()
{
  v3 = *(v0 + 144);

  return sub_25BBF5A38(v1, 0);
}

void OUTLINED_FUNCTION_46_6()
{
  v1 = *(v0 - 3);
  v2 = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;
}

uint64_t OUTLINED_FUNCTION_46_8()
{
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1, uint64_t a2, char a3)
{
  sub_25BBFA138(a1, a2, a3);
}

void OUTLINED_FUNCTION_46_12(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = v1;
  *(v2 - 112) = 2;
}

uint64_t OUTLINED_FUNCTION_46_13(uint64_t a1, uint64_t a2)
{

  return sub_25BAA48D4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_46_14(uint64_t a1, int a2)
{
  *(v2 + 12) = a2;
  *v2 = *(v4 + 104);
  return v3;
}

uint64_t OUTLINED_FUNCTION_46_15()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_46_17(NSUInteger a1)
{
  *(v2 - 72) = v1;

  return sub_25BBC9A4C(a1, 0);
}

void OUTLINED_FUNCTION_46_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 248);

  sub_25BAB1090(v4, v3, a3, v5);
}

uint64_t OUTLINED_FUNCTION_46_21(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t sub_25BAA200C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      break;
    case 3:
    case 4:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

void sub_25BAA2064()
{
  OUTLINED_FUNCTION_75();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_52(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_12();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_54_0();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAA2138()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_12();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAA21EC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_82_0();
  sub_25BAA2138();
  *v0 = v2;
}

uint64_t sub_25BAA2220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = Tensor.shape.getter(v4);
  *a2 = v4[0];
  return result;
}

uint64_t sub_25BAA2264@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = TensorShape.subscript.getter(*a2);
  *a3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v0 + 360), v1, (v0 + 352), v0 + 488, (v2 - 240));
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1)
{
  *(v1 - 368) = a1;
  v2 = *(v1 - 296);
  result = *(v1 - 472);
  v4 = *(v1 - 280);
  v5 = *(v1 - 480);
  v6 = *(v1 - 488);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_14()
{
}

void OUTLINED_FUNCTION_25_15()
{
  v1 = *(v0 - 344);
  v2 = *(v0 - 352);
  v3 = *(v0 - 336);
}

void OUTLINED_FUNCTION_25_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  Tensor.init(coercing:scalarType:on:)(v22 - 128, a3, a5, v22 - 192, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void OUTLINED_FUNCTION_25_19()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_25_23()
{

  return sub_25BCB590C();
}

uint64_t OUTLINED_FUNCTION_25_26()
{

  return sub_25BCB793C();
}

void *OUTLINED_FUNCTION_25_29()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

__n128 OUTLINED_FUNCTION_25_31@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_35()
{

  return sub_25BAA6F5C(v2 - 120, v0, v1);
}

uint64_t sub_25BAA2604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  v15 = *a7;
  v16 = *(a7 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7461636E6F63, 0xE600000000000000);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6 & 1;
  *(v10 + 64) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  v17 = a8[1];
  *(v10 + 96) = *a8;
  *(v10 + 112) = v17;
  *(v10 + 128) = a8[2];
  *(v10 + 138) = *(a8 + 42);
  return v10;
}

double sub_25BAA26AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    if (v3)
    {
      v10 = *(*(a1 + 32) + 16) + 168;

      sub_25BAA51C8(v10, a2);
    }

    else
    {
      *(a2 + 48) = 0;
      result = 0.0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }
  }

  else
  {
    v4 = a1 + 32;
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    do
    {
      sub_25BAA51C8(*(*v4 + 16) + 168, &v15);
      if (*(&v16 + 1))
      {
        v20 = v15;
        v21 = v16;
        v22 = v17;
        v23 = v18;
        if (*(&v25 + 1))
        {
          sub_25BABEF40(&v24, &v15);
          v5 = *(&v16 + 1);
          v6 = v17;
          __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
          v7 = *(v6 + 24);

          LOBYTE(v5) = v7(&v20, v5, v6);
          sub_25BABF0A8(&v15);
          if ((v5 & 1) == 0)
          {
            sub_25BAA51C8(&v24, &v11);
            if (!*(&v12 + 1))
            {
              __break(1u);
            }

            v15 = v11;
            v16 = v12;
            v17 = v13;
            v18 = v14;
            sub_25BABEF40(&v20, v19);
            v19[52] = 18;
            sub_25BADDD28();
          }
        }

        sub_25BA9C2C8(&v24);
        v24 = v20;
        v25 = v21;
        v26 = v22;
        v27 = v23;
      }

      else
      {
        sub_25BA9C2C8(&v15);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
    v8 = v25;
    *a2 = v24;
    *(a2 + 16) = v8;
    result = *&v26;
    *(a2 + 32) = v26;
    *(a2 + 48) = v27;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v3 = *v0;
  v4 = *(*(v1 + 8) + 16);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return dynamic_cast_existential_1_conditional(v0);
}

uint64_t OUTLINED_FUNCTION_70_5()
{
  v3 = *(v1 + 8 * v0 + 32);
}

uint64_t *OUTLINED_FUNCTION_70_7(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *a2;
  v5 = *a3;
  return result;
}

void sub_25BAA29C8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  v31 = *a1;
  v4 = *(a2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v32 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_29_0();
    sub_25BAA21EC();
    v5 = v32;
    v8 = *(v31 + 16);
    v9 = (a2 + 32);
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11 < -v8 || v10 >= v8)
      {
        goto LABEL_36;
      }

      v14 = *(v32 + 16);
      v13 = *(v32 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_81(v13);
        sub_25BAA21EC();
      }

      *(v32 + 16) = v14 + 1;
      *(v32 + 8 * v14 + 32) = (v8 & (v10 >> 63)) + v10;
      --v4;
    }

    while (v4);
    v3 = a3;
  }

  v15 = sub_25BCB617C();
  v16 = *(sub_25BAAF594(v15) + 16);

  if (v16 == *(v31 + 16))
  {
    v17 = *(v5 + 16);
    v18 = 32;
    while (v17)
    {
      v19 = *(v5 + v18);
      v18 += 8;
      --v17;
      if (v19 >= v16)
      {
        goto LABEL_16;
      }
    }

    if (!v16)
    {

      v20 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v30 = v3;
    v33 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_29_0();
    sub_25BAA21EC();
    v21 = v31;
    v22 = 0;
    v20 = v33;
    v23 = *(v31 + 16);
    while (v22 < *(v5 + 16))
    {
      v24 = *(v5 + 8 * v22 + 32);
      if (v24 < -v23 || v24 >= v23)
      {
        OUTLINED_FUNCTION_27_37();
        goto LABEL_36;
      }

      v26 = (v23 & (v24 >> 63)) + v24;
      if (v26 < 0)
      {
        goto LABEL_34;
      }

      if (v26 >= *(v21 + 16))
      {
        goto LABEL_35;
      }

      v27 = *(v31 + 32 + 8 * v26);
      v29 = *(v33 + 16);
      v28 = *(v33 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_81(v28);
        sub_25BAA21EC();
        v21 = v31;
      }

      ++v22;
      *(v33 + 16) = v29 + 1;
      *(v33 + 8 * v29 + 32) = v27;
      if (v16 == v22)
      {

        v3 = v30;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

LABEL_16:

  v20 = 0;
LABEL_17:
  *v3 = v20;
  OUTLINED_FUNCTION_27_34();
}

uint64_t sub_25BAA2C4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v6 = OUTLINED_FUNCTION_48_1(a1);
  v7 = MEMORY[0x25F877220](v6);
  v13 = v7;
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      a4(&v12, *(v4 + v9));
      v9 += 8;
      --v8;
    }

    while (v8);

    return v13;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

BOOL sub_25BAA2CDC(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  v8 = *v2;
  v9 = *(v8 + 40);
  sub_25BCB79BC();
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_10_40();
  while (1)
  {
    OUTLINED_FUNCTION_26_28(v11, v12);
    if (v13)
    {
      break;
    }

    if (*(*(v8 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }

    v11 = v3 + 1;
  }

  v14 = *v5;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_49_17();
  sub_25BAA2D84(a2, v3, v15);
  OUTLINED_FUNCTION_48_16(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

void sub_25BAA2D84(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BAB2570(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25BAB2360(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_25BCB79BC();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_25BC4AD08();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_25BAA3168()
{
  sub_25BAA31C0();
  sub_25BAA3234();
  v1 = *(v0 + 32);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
    sub_25BAA3258();
  }
}

uint64_t sub_25BAA31C0()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v2 = v0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v1 = sub_25BAA6F2C();
    v3 = *(v2 + 232);
    *(v2 + 232) = v1;
  }

  return v1;
}

uint64_t sub_25BAA3278()
{
  sub_25BAA32B8();
  v1 = *(v0 + 192);

  return swift_deallocClassInstance();
}

void *sub_25BAA32B8()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[15];

  return v0;
}

uint64_t sub_25BAA32F8()
{
  v0 = *(sub_25BA9D740() + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA3340()
{
  sub_25BAA3374();

  return swift_deallocClassInstance();
}

void *sub_25BAA3374()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return v0;
}

uint64_t sub_25BAA33BC()
{
  sub_25BAA33F0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA33F0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[17];
  return OUTLINED_FUNCTION_8_47(v0[16]);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_25BAA3468()
{
  sub_25BAA349C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA349C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[16];
  return OUTLINED_FUNCTION_8_47(v0[15]);
}

uint64_t sub_25BAA34C8()
{
  sub_25BA9D6BC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA3500()
{
  v0 = sub_25BA9D740();
  v1 = *(v0 + 120);
  sub_25BA9D148(*(v0 + 112));

  return swift_deallocClassInstance();
}

void *sub_25BAA3558()
{
  sub_25BAA32B8();
  v1 = v0[24];

  v2 = v0[27];
  sub_25BA9D148(v0[26]);
  return v0;
}

uint64_t sub_25BAA3584()
{
  sub_25BAA3558();

  return swift_deallocClassInstance();
}

uint64_t Tensor.scalar<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25BCB783C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *v3;
  if (*(*(*(*v3 + 16) + 152) + 16))
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v20)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    while (v18 != 1);
    if (v19 == 1)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_25BCB70FC();

    v40 = 0xD00000000000002ALL;
    v41 = 0x800000025BCDB850;
    v34 = *(*(v17 + 16) + 152);
    v35 = sub_25BCB617C();
    v36 = MEMORY[0x25F876F80](v35, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v36);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
LABEL_6:
    v37 = v13;
    v21 = *(a3 + 32);
    v22 = OUTLINED_FUNCTION_23_0();
    v21(v22);
    v40 = v17;
    Tensor.scalarType.getter();
    v24 = (*(v23 + 32))(&v39);
    v25 = *(v17 + 16);
    if (v38 == v39)
    {
      MEMORY[0x28223BE20](v24);
      OUTLINED_FUNCTION_20_6();
      *(v26 - 16) = a1;

      sub_25BAA4214(sub_25BAA46C0, v38, a2);
    }

    else
    {
      OUTLINED_FUNCTION_10();
      swift_retain_n();
      v28 = sub_25BA928B4();
      [v28 lock];

      OUTLINED_FUNCTION_6_19();
      sub_25BA92920(v29, v30, v31, v32);
      [*(v25 + 224) unlock];

      swift_unknownObjectRelease();
      v33 = OUTLINED_FUNCTION_23_0();
      v21(v33);
      (*(v10 + 104))(v16, *MEMORY[0x277D84660], v37);
      Tensor.cast(to:roundingRule:)();
      (*(v10 + 8))(v16, v37);
      OUTLINED_FUNCTION_21_7();
      Tensor.scalar<A>(as:)();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_25BAA51C8(a4, v4 - 160);
}

__n128 OUTLINED_FUNCTION_23_4(__n128 *a1)
{
  result = v1[13];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_25BB29534(1986948963, 0xE400000000000000);
}

void OUTLINED_FUNCTION_23_7()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_23_8()
{
  v3 = *(v1 - 320);

  return sub_25BB0EA20(v0);
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v3 = v0[9];
  *(v1 - 384) = v0[8];
  *(v1 - 392) = v3;
  v4 = v0[11];
  *(v1 - 416) = v0[10];
  *(v1 - 424) = v4;
  v5 = v0[13];
  *(v1 - 400) = v0[12];
  *(v1 - 408) = v5;
  *(v1 - 328) = v0[14];

  return sub_25BAB7EC0();
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return swift_getAtKeyPath();
}

void OUTLINED_FUNCTION_23_14(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 144) = 112;
  *(v1 - 136) = 2;
}

void OUTLINED_FUNCTION_23_15()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *v0;
  v3 = v0[1];
  v5 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_23_17()
{
  v1 = *(v0 - 416);
  v2 = *(v0 - 424);
  v3 = *(v0 - 408);
}

uint64_t OUTLINED_FUNCTION_23_19()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_20@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + 152);
  v3 = *(v1 + 152);

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_23_23()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return sub_25BCB745C();
}

uint64_t OUTLINED_FUNCTION_23_27()
{
  v2 = *(v0 - 184);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_25BCB68CC();
}

uint64_t OUTLINED_FUNCTION_23_33()
{
}

uint64_t OUTLINED_FUNCTION_23_34()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_23_38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_23_40(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_27_4()
{

  JUMPOUT(0x25F8779B0);
}

id OUTLINED_FUNCTION_27_6()
{
  v3 = *(v0 + 224);

  return [v3 (v1 + 376)];
}

uint64_t OUTLINED_FUNCTION_27_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v6 - 296) = v5;
  *(v6 - 472) = v2;
  result = v2;
  *(v6 - 480) = v3;
  *(v6 - 488) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_13@<X0>(__int16 a1@<W8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 103;
  *(v2 - 96) = a1;

  return type metadata accessor for Average2DPoolOperation();
}

ValueMetadata *OUTLINED_FUNCTION_27_15()
{
  *(v1 - 112) = v0;

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1, uint64_t a2)
{
  *(v2 - 304) = a1;
  *(v2 - 296) = a2;

  return sub_25BCB7C1C();
}

uint64_t OUTLINED_FUNCTION_27_21()
{

  return sub_25BCB77FC();
}

void OUTLINED_FUNCTION_27_23()
{
  *(v3 + 24) = v2;
  *(v3 + 152) = v1;
  *(v3 + 160) = v0;
}