uint64_t sub_242C7CB44(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v67 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v48 = v9;
  for (i = v5; ; v5 = i)
  {
    v15 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = 24 * (__clz(__rbit64(v8)) | (v15 << 6));
    v18 = *(a1 + 48) + v17;
    v19 = *(v18 + 8);
    v20 = *(a1 + 56) + v17;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v18 + 16);
    v55 = *v18;
    v56 = v19;
    v57 = v24;
    v58 = v21;
    v59 = v22;
    v60 = v23;
    sub_242C7CE5C(v55, v19, v24);
    sub_242C7CE74(v21, v22, v23);
    a2(&v61, &v55);
    v25 = v58;
    v26 = v59;
    v27 = v60;
    sub_242C7CEB0(v55, v56, v57);
    sub_242C7FB88(v25, v26, v27);
    v28 = v66;
    if (v66 == 255)
    {
LABEL_22:
      sub_242C6548C();
    }

    v29 = v61;
    v30 = v62;
    v31 = v63;
    v52 = v64;
    v53 = v65;
    v32 = *v67;
    v34 = sub_242CE50F4(v61, v62, v63);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_242D01A20();
      }
    }

    else
    {
      sub_242D0500C(v37, a4 & 1);
      v39 = sub_242CE50F4(v29, v30, v31);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v8 &= v8 - 1;
    v41 = *v67;
    if (v38)
    {
      sub_242C7CEB0(v29, v30, v31);
      v11 = v41[7] + 24 * v34;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      *v11 = v52;
      *(v11 + 8) = v53;
      *(v11 + 16) = v28 & 1;
      sub_242C7FB88(v12, v13, v14);
    }

    else
    {
      v41[(v34 >> 6) + 8] |= 1 << v34;
      v42 = v41[6] + 24 * v34;
      *v42 = v29;
      *(v42 + 8) = v30;
      *(v42 + 16) = v31;
      v43 = v41[7] + 24 * v34;
      *v43 = v52;
      *(v43 + 8) = v53;
      *(v43 + 16) = v28 & 1;
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_25;
      }

      v41[2] = v46;
    }

    a4 = 1;
    v10 = v15;
    v9 = v48;
  }

  v16 = v10;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_22;
    }

    v8 = *(v5 + 8 * v15);
    ++v16;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t sub_242C7CE5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t sub_242C7CE74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_242C7CEB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t sub_242C7CEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C676E6973 && a2 == 0xE600000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4363696D616E7964 && a2 == 0xEC000000726F6C6FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72477261656E696CLL && a2 == 0xEE00746E65696461 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242C7D03C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = 0;
  v4 = 0;
  v7 = a3[8];
  v5 = a3 + 8;
  v6 = v7;
  v8 = 1 << *(v5 - 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v38 = (v8 + 63) >> 6;
  v39 = result;
  v50 = a4 + 56;
  v40 = v5;
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v14 = v11 | (v4 << 6);
    if (!*(a4 + 16))
    {
      continue;
    }

    v47 = v10;
    v41 = v11 | (v4 << 6);
    v15 = 24 * v14;
    v16 = a3[6] + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = a3[7] + v15;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    sub_242F06390();
    v49 = v18;
    v51 = v19;
    sub_242C7CE5C(v18, v17, v19);
    v45 = v22;
    v46 = v21;
    v44 = v23;
    sub_242C7CE74(v21, v22, v23);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();

    v24 = sub_242F063E0();
    v25 = -1 << *(a4 + 32);
    v26 = v24 & ~v25;
    if (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
LABEL_5:
      sub_242C7FB88(v46, v45, v44);
      result = sub_242C7CEB0(v49, v17, v51);
      v5 = v40;
      v10 = v47;
      continue;
    }

    v48 = ~v25;
    while (1)
    {
      v27 = *(a4 + 48) + 24 * v26;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (v30 <= 1)
      {
        v52 = 0;
        v54 = 0xE000000000000000;
        if (*(v27 + 16))
        {
          MEMORY[0x245D26660](0x2E72616C75646F6DLL, 0xE800000000000000);
        }

        else
        {
          MEMORY[0x245D26660](0x2E6C6169646172, 0xE700000000000000);
        }
      }

      else if (v30 == 2)
      {
        v52 = 0;
        v54 = 0xE000000000000000;
        MEMORY[0x245D26660](0x6964654D7370616DLL, 0xEA00000000002E61);
      }

      else
      {
        if (v30 != 3)
        {
          v52 = 0x2E72656E74726170;
          v54 = 0xE800000000000000;
          swift_bridgeObjectRetain_n();
          v31 = sub_242F04F90();
          MEMORY[0x245D26660](v31);

          goto LABEL_26;
        }

        v52 = 0;
        v54 = 0xE000000000000000;
        MEMORY[0x245D26660](0x2E6E6F6D6D6F63, 0xE700000000000000);
      }

      sub_242F05C20();
LABEL_26:
      v33 = v52;
      v32 = v54;
      if (v51 <= 1)
      {
        v53 = 0;
        v55 = 0xE000000000000000;
        if (v51)
        {
          MEMORY[0x245D26660](0x2E72616C75646F6DLL, 0xE800000000000000);
        }

        else
        {
          MEMORY[0x245D26660](0x2E6C6169646172, 0xE700000000000000);
        }

        goto LABEL_35;
      }

      if (v51 == 2)
      {
        v53 = 0;
        v55 = 0xE000000000000000;
        MEMORY[0x245D26660](0x6964654D7370616DLL, 0xEA00000000002E61);
        goto LABEL_35;
      }

      if (v51 == 3)
      {
        v53 = 0;
        v55 = 0xE000000000000000;
        MEMORY[0x245D26660](0x2E6E6F6D6D6F63, 0xE700000000000000);
LABEL_35:
        sub_242F05C20();
        goto LABEL_36;
      }

      v53 = 0x2E72656E74726170;
      v55 = 0xE800000000000000;

      v34 = sub_242F04F90();
      MEMORY[0x245D26660](v34);

LABEL_36:
      if (v33 == v53 && v32 == v55)
      {
        break;
      }

      v35 = sub_242F06110();
      sub_242C7CEB0(v29, v28, v30);

      if (v35)
      {
        goto LABEL_42;
      }

      v26 = (v26 + 1) & v48;
      if (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_242C7CEB0(v29, v28, v30);

LABEL_42:
    sub_242C7FB88(v46, v45, v44);
    result = sub_242C7CEB0(v49, v17, v51);
    v5 = v40;
    *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v36 = __OFADD__(v42++, 1);
    v10 = v47;
    if (v36)
    {
      __break(1u);
      return sub_242D374E0(v39, a2, v42, a3);
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v38)
    {
      return sub_242D374E0(v39, a2, v42, a3);
    }

    v13 = v5[v4];
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v10 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C7D638(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_242C78C30(v12, v7, a1, a2);
      MEMORY[0x245D287D0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_242C7D03C(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

unint64_t sub_242C7D7F8()
{
  result = qword_27ECEFF30;
  if (!qword_27ECEFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF30);
  }

  return result;
}

unint64_t sub_242C7D84C()
{
  result = qword_27ECEFF48;
  if (!qword_27ECEFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF48);
  }

  return result;
}

unint64_t sub_242C7D8A0()
{
  result = qword_27ECEFF50;
  if (!qword_27ECEFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF50);
  }

  return result;
}

uint64_t sub_242C7D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {
  }

  else
  {
    if (a6 == 1)
    {
    }

    else
    {
      if (a6)
      {
        return result;
      }
    }
  }
}

uint64_t sub_242C7D968(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242C7D9A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEFF38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C7DA18()
{
  result = qword_27ECEFF68;
  if (!qword_27ECEFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF68);
  }

  return result;
}

unint64_t sub_242C7DA6C()
{
  result = qword_27ECEFF70;
  if (!qword_27ECEFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF70);
  }

  return result;
}

unint64_t sub_242C7DB28()
{
  result = qword_27ECEFF80;
  if (!qword_27ECEFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF80);
  }

  return result;
}

unint64_t sub_242C7DB7C()
{
  result = qword_27ECEFF88;
  if (!qword_27ECEFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF88);
  }

  return result;
}

unint64_t sub_242C7DBD0()
{
  result = qword_27ECEFF98;
  if (!qword_27ECEFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF98);
  }

  return result;
}

unint64_t sub_242C7DC24()
{
  result = qword_27ECEFFA8;
  if (!qword_27ECEFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFFA8);
  }

  return result;
}

unint64_t sub_242C7DC78()
{
  result = qword_27ECEFFC0;
  if (!qword_27ECEFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFFC0);
  }

  return result;
}

uint64_t sub_242C7DCCC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEFFB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C7DD44()
{
  result = qword_27ECEFFE8;
  if (!qword_27ECEFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFFE8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_242C7DDE8()
{
  result = qword_27ECF0000;
  if (!qword_27ECF0000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEFFF8);
    sub_242C7DEA0();
    sub_242C7E000(&qword_27ECF0010, &qword_27ECF0018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0000);
  }

  return result;
}

unint64_t sub_242C7DEA0()
{
  result = qword_27ECF0008;
  if (!qword_27ECF0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0008);
  }

  return result;
}

unint64_t sub_242C7DEF4()
{
  result = qword_27ECF0020;
  if (!qword_27ECF0020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEFFF8);
    sub_242C7DFAC();
    sub_242C7E000(&qword_27ECF0030, &qword_27ECF0018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0020);
  }

  return result;
}

unint64_t sub_242C7DFAC()
{
  result = qword_27ECF0028;
  if (!qword_27ECF0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0028);
  }

  return result;
}

uint64_t sub_242C7E000(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_242C7E048()
{
  result = qword_27ECF0040;
  if (!qword_27ECF0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0038);
    sub_242C7DFAC();
    sub_242C7E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0040);
  }

  return result;
}

unint64_t sub_242C7E0D4()
{
  result = qword_27ECF0048;
  if (!qword_27ECF0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0048);
  }

  return result;
}

unint64_t sub_242C7E12C()
{
  result = qword_27ECF0058;
  if (!qword_27ECF0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0058);
  }

  return result;
}

unint64_t sub_242C7E184()
{
  result = qword_27ECF0060;
  if (!qword_27ECF0060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEFF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0060);
  }

  return result;
}

unint64_t sub_242C7E204()
{
  result = qword_27ECF0068;
  if (!qword_27ECF0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0068);
  }

  return result;
}

unint64_t sub_242C7E25C()
{
  result = qword_27ECF0070;
  if (!qword_27ECF0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0070);
  }

  return result;
}

unint64_t sub_242C7E2B4()
{
  result = qword_27ECF0078;
  if (!qword_27ECF0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0078);
  }

  return result;
}

unint64_t sub_242C7E30C()
{
  result = qword_27ECF0080;
  if (!qword_27ECF0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0080);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI5ThemeO7PaletteV22RepresentedColorSchemeO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI22DynamicAppearanceValueVy05SwiftD05ColorVGSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_242C7E3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_242C7E408(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242C7E48C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242C7E4D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_242C7E524(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
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

uint64_t sub_242C7E56C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_242C7E5B4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_242C7E60C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_242C7E654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242C7E6B0(uint64_t *a1, int a2)
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

uint64_t sub_242C7E6F8(uint64_t result, int a2, int a3)
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

uint64_t _s7PaletteV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7PaletteV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7PaletteV22RepresentedColorSchemeO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7PaletteV22RepresentedColorSchemeO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DefaultRedactedColorID(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DefaultRedactedColorID(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_242C7EB20()
{
  result = qword_27ECF0088;
  if (!qword_27ECF0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0088);
  }

  return result;
}

unint64_t sub_242C7EB78()
{
  result = qword_27ECF0090;
  if (!qword_27ECF0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0090);
  }

  return result;
}

unint64_t sub_242C7EBD0()
{
  result = qword_27ECF0098;
  if (!qword_27ECF0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0098);
  }

  return result;
}

unint64_t sub_242C7EC28()
{
  result = qword_27ECF00A0;
  if (!qword_27ECF00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00A0);
  }

  return result;
}

unint64_t sub_242C7EC80()
{
  result = qword_27ECF00A8;
  if (!qword_27ECF00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00A8);
  }

  return result;
}

unint64_t sub_242C7ECD8()
{
  result = qword_27ECF00B0;
  if (!qword_27ECF00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00B0);
  }

  return result;
}

unint64_t sub_242C7ED30()
{
  result = qword_27ECF00B8;
  if (!qword_27ECF00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00B8);
  }

  return result;
}

unint64_t sub_242C7ED88()
{
  result = qword_27ECF00C0;
  if (!qword_27ECF00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00C0);
  }

  return result;
}

unint64_t sub_242C7EDE0()
{
  result = qword_27ECF00C8;
  if (!qword_27ECF00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00C8);
  }

  return result;
}

unint64_t sub_242C7EE38()
{
  result = qword_27ECF00D0;
  if (!qword_27ECF00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00D0);
  }

  return result;
}

unint64_t sub_242C7EE90()
{
  result = qword_27ECF00D8;
  if (!qword_27ECF00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00D8);
  }

  return result;
}

unint64_t sub_242C7EEE8()
{
  result = qword_27ECF00E0;
  if (!qword_27ECF00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00E0);
  }

  return result;
}

unint64_t sub_242C7EF40()
{
  result = qword_27ECF00E8;
  if (!qword_27ECF00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00E8);
  }

  return result;
}

unint64_t sub_242C7EF98()
{
  result = qword_27ECF00F0;
  if (!qword_27ECF00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00F0);
  }

  return result;
}

unint64_t sub_242C7EFF0()
{
  result = qword_27ECF00F8;
  if (!qword_27ECF00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF00F8);
  }

  return result;
}

unint64_t sub_242C7F048()
{
  result = qword_27ECF0100;
  if (!qword_27ECF0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0100);
  }

  return result;
}

unint64_t sub_242C7F0A0()
{
  result = qword_27ECF0108;
  if (!qword_27ECF0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0108);
  }

  return result;
}

unint64_t sub_242C7F0F8()
{
  result = qword_27ECF0110;
  if (!qword_27ECF0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0110);
  }

  return result;
}

unint64_t sub_242C7F150()
{
  result = qword_27ECF0118;
  if (!qword_27ECF0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0118);
  }

  return result;
}

unint64_t sub_242C7F1A8()
{
  result = qword_27ECF0120;
  if (!qword_27ECF0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0120);
  }

  return result;
}

unint64_t sub_242C7F200()
{
  result = qword_27ECF0128;
  if (!qword_27ECF0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0128);
  }

  return result;
}

unint64_t sub_242C7F258()
{
  result = qword_27ECF0130;
  if (!qword_27ECF0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0130);
  }

  return result;
}

unint64_t sub_242C7F2B0()
{
  result = qword_27ECF0138;
  if (!qword_27ECF0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0138);
  }

  return result;
}

uint64_t sub_242C7F304(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F58CA0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F58CC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646E4974726F73 && a2 == 0xE900000000000078 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43746E65636361 && a2 == 0xEB00000000726F6CLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656E696D6F7270 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_242C7F5A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73706F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F507472617473 && a2 == 0xEA0000000000746ELL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F50646E65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242C7F6C4(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    v6 = a1;
  }

  else
  {
    v5 = a3;
  }
}

void sub_242C7F724(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    a3 = a1;
  }
}

double sub_242C7F784(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
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

uint64_t sub_242C7F7A0(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_242C7F7AC(uint64_t a1, uint64_t a2)
{
  if (a2 >> 1 != 0xFFFFFFFF)
  {
    return sub_242C7F7A0(a1, a2);
  }

  return a1;
}

uint64_t sub_242C7F7C0(uint64_t a1, uint64_t a2)
{
  if (a2 >> 1 != 0xFFFFFFFF)
  {
    return sub_242C7F7D4(a1, a2);
  }

  return a1;
}

uint64_t sub_242C7F7D4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_242C7F844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(void), void (*a9)(void))
{
  if (a7)
  {
    a9();

    return (a9)(a4, a5, a6);
  }

  else
  {

    return a8();
  }
}

uint64_t sub_242C7F8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C7FB48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_242C7FB88(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t sub_242C7FC20(uint64_t a1, unint64_t a2)
{
  v4 = sub_242F05000();
  v5 = MEMORY[0x245D26AF0](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_242F05090();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_242CC0B80(v13, v9, v10);

      v9 = sub_242F05090();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_242C7FCE0(uint64_t a1)
{
  result = MEMORY[0x245D26AF0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_242CC0A30(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_242C7FDFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_242CDD790(*(a1 + 16), 0);
  v4 = sub_242CE013C(&v6, v3 + 4, v2, a1);
  sub_242C6548C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t VectorFontManager.init(fonts:cascades:defaultCascade:fontResources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = a1;
  v54 = a4[1];
  v55 = *a4;
  v52 = a4[3];
  v53 = a4[2];
  v50 = a4[5];
  v51 = a4[4];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v66 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v6, 0);
    v7 = v66;
    v8 = (v5 + 56);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v12 = *(v66 + 16);
      v11 = *(v66 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_242E3BC70((v11 > 1), v12 + 1, 1);
      }

      *(v66 + 16) = v12 + 1;
      v13 = v66 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 7;
      --v6;
    }

    while (v6);
  }

  v15 = sub_242C804D0(v14);

  v16 = sub_242C86440(v15);

  v18 = sub_242C86834(v17, v16);

  if ((sub_242C80C50(v7, v18) & 1) == 0)
  {
    goto LABEL_33;
  }

  v60 = *(v5 + 16);
  if (!v60)
  {
    v21 = MEMORY[0x277D84F98];
LABEL_28:

    *a5 = v21;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = v55;
    a5[4] = v54;
    a5[5] = v53;
    a5[6] = v52;
    a5[7] = v51;
    a5[8] = v50;
    return result;
  }

  v19 = 0;
  v20 = (v5 + 80);
  v21 = MEMORY[0x277D84F98];
  v59 = v5;
  while (v19 < *(v5 + 16))
  {
    v22 = *(v20 - 6);
    v23 = *(v20 - 5);
    v7 = *(v20 - 4);
    v24 = *(v20 - 3);
    v65 = *(v20 - 4);
    v25 = *(v20 - 1);
    v64 = *v20;
    v18 = *v20;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v63 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_242CE519C(v7, v24);
    v29 = v21[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_30;
    }

    v18 = v27;
    if (v21[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v62 = v23;
        if (v27)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_242D01BBC();
        v62 = v23;
        if (v18)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_242D05324(v31, isUniquelyReferenced_nonNull_native);
      v32 = sub_242CE519C(v7, v24);
      if ((v18 & 1) != (v33 & 1))
      {
        goto LABEL_32;
      }

      v28 = v32;
      v62 = v23;
      if (v18)
      {
LABEL_17:

        goto LABEL_21;
      }
    }

    v21[(v28 >> 6) + 8] |= 1 << v28;
    v34 = (v21[6] + 16 * v28);
    *v34 = v7;
    v34[1] = v24;
    *(v21[7] + 8 * v28) = MEMORY[0x277D84F90];
    v35 = v21[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_31;
    }

    v21[2] = v37;
LABEL_21:
    v38 = v21[7];
    v39 = *(v38 + 8 * v28);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 8 * v28) = v39;
    v61 = v22;
    if ((v40 & 1) == 0)
    {
      v39 = sub_242C82D34(0, *(v39 + 2) + 1, 1, v39);
      *(v38 + 8 * v28) = v39;
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      *(v38 + 8 * v28) = sub_242C82D34((v41 > 1), v42 + 1, 1, v39);
    }

    ++v19;

    v18 = v62;

    v43 = *(v38 + 8 * v28);
    *(v43 + 16) = v42 + 1;
    v44 = v43 + 56 * v42;
    *(v44 + 32) = v61;
    *(v44 + 40) = v62;
    *(v44 + 48) = v7;
    *(v44 + 56) = v24;
    *(v44 + 64) = v65;
    *(v44 + 72) = v25;
    *(v44 + 80) = v64;
    v20 += 7;
    v5 = v59;
    if (v60 == v19)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_242F06320();
  __break(1u);
LABEL_33:
  sub_242F05A80();

  v46 = sub_242C851EC(v7, v18);
  sub_242C7FDFC(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
  sub_242C7E000(&qword_27ECF0168, &qword_27ECF0160);
  v47 = sub_242F04E40();
  v49 = v48;

  MEMORY[0x245D26660](v47, v49);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t sub_242C80390(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_242C82E5C(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_242C804D0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_10:
    v11 = *(*(a1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = *(v11 + 16);
    v13 = *(v9 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v14 > *(v9 + 3) >> 1)
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_242C82C04(result, v15, 1, v9);
      v9 = result;
    }

    v5 &= v5 - 1;
    if (*(v11 + 16))
    {
      if ((*(v9 + 3) >> 1) - *(v9 + 2) < v12)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = *(v9 + 2);
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_27;
        }

        *(v9 + 2) = v18;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_242C80664(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = MEMORY[0x277D84F90];
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_242C83B18(result, v8, 1, v2, &qword_27ECF0200, &unk_242F0A530, &qword_27ECF0338);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0338);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = v2[2];
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          v2[2] = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_242C807D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 32;
  result = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v5 = result;

    sub_242C82320(v4);
    result = v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_242C80840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v27 = *(a1 + 16);
  while (1)
  {
    v5 = v3;
    v6 = *(v29 + 8 * v2);
    v7 = v6 >> 62;
    if (v6 >> 62)
    {
      v8 = sub_242F059B0();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v3 >> 62;
    if (v5 >> 62)
    {
      v26 = sub_242F059B0();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v5 & 0xFFFFFFFFFFFFFF8;
        v3 = v5;
        if (v11 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_242F059B0();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_242F05AE0();
    v3 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_37;
    }

    v30 = v8;
    v17 = v12 + 8 * v13 + 32;
    v28 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_39;
      }

      sub_242C7E000(&qword_27ECF0268, &qword_27ECF0260);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0260);
        v20 = sub_242ED0FA0(v31, i, v6);
        v22 = *v21;
        (v20)(v31, 0);
        *(v17 + 8 * i) = v22;
      }

      v1 = v27;
      v18 = v30;
    }

    else
    {
      type metadata accessor for WidgetStack();
      v18 = v30;
      swift_arrayInitWithCopy();
    }

    if (v18 > 0)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v18);
      v25 = v23 + v18;
      if (v24)
      {
        goto LABEL_38;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return v3;
    }
  }

  v16 = v12;
  result = sub_242F059B0();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_242C80B30(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v18 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 24 * (v11 | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_242C7CE5C(*v12, v14, v15);
      sub_242CC0D18(v16, v13, v14, v15);
      result = sub_242C7CEB0(v16[0], v16[1], v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v18;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C80C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_242D98A48(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = sub_242E383F8(sub_242C87674, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_242C862C0(a1, a2);
  }

  return result;
}

uint64_t sub_242C80D30()
{
  v1 = 0x46794273746E6F66;
  v2 = 0x43746C7561666564;
  if (*v0 != 2)
  {
    v2 = 0x6F736552746E6F66;
  }

  if (*v0)
  {
    v1 = 0x7365646163736163;
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

uint64_t sub_242C80DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C87288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C80DF8(uint64_t a1)
{
  v2 = sub_242C868B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C80E34(uint64_t a1)
{
  v2 = sub_242C868B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VectorFontManager.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0170);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v34 = v1[2];
  v35 = v8;
  v11 = v1[4];
  v31 = v1[5];
  v13 = v1[6];
  v12 = v1[7];
  v29 = v11;
  v30 = v13;
  v32 = v12;
  v33 = v10;
  v14 = v1[8];
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_2Tm(v16, v15);
  sub_242C868B4();

  sub_242F064C0();
  v36 = v9;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0180);
  sub_242C86908();
  sub_242F05F20();
  if (v2)
  {

    return (*(v5 + 8))(v7, v18);
  }

  else
  {
    v19 = v33;
    v20 = v34;

    v36 = v35;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF01A8);
    sub_242C86A18();
    sub_242F05F20();
    v36 = v20;
    v42 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
    sub_242C86D4C(&qword_27ECF01B8);
    sub_242F05F20();
    v22 = v5;
    v36 = v19;
    v37 = v29;
    v23 = v31;
    v38 = v31;
    v39 = v30;
    v40 = v32;
    v41 = v14;
    v42 = 3;
    sub_242C86AC4();

    v24 = v23;

    v25 = v14;
    sub_242F05F20();
    v26 = v38;
    v27 = v41;

    return (*(v22 + 8))(v7, v18);
  }
}

uint64_t VectorFontManager.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF01C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C868B4();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0180);
  LOBYTE(v25) = 0;
  sub_242C86B18();
  sub_242F05E00();
  v9 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF01A8);
  LOBYTE(v25) = 1;
  sub_242C86CA0();
  sub_242F05E00();
  v24 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
  LOBYTE(v25) = 2;
  sub_242C86D4C(&qword_27ECF01F0);
  sub_242F05E00();
  v23 = v30[0];
  v35 = 3;
  sub_242C86DB8();
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v22 = v31;
  v21 = v32;
  v10 = v33;
  v20 = *(&v32 + 1);
  v12 = *(&v33 + 1);
  v11 = v34;
  *&v25 = v9;
  v13 = v24;
  *(&v25 + 1) = v24;
  v14 = v23;
  *&v26 = v23;
  *(&v26 + 1) = v31;
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v15 = v25;
  v16 = v26;
  v17 = v32;
  v18 = v33;
  *(a2 + 64) = v34;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  *a2 = v15;
  *(a2 + 16) = v16;
  sub_242C86E0C(&v25, v30);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v30[0] = v9;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v22;
  v30[4] = v21;
  v30[5] = v20;
  v30[6] = v10;
  v30[7] = v12;
  v30[8] = v11;
  return sub_242C86E44(v30);
}

char *VectorFontManager.assets.getter()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v29 = v0[3];
  v30 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v27 = v2;

  v26 = v3;
  v10 = v3;
  v28 = v4;

  v25 = v5;
  result = v5;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_10:
    v15 = *(*(v1 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
    v16 = *(v15 + 16);
    v17 = *(v13 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v18 > *(v13 + 24) >> 1)
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      result = sub_242C82D34(result, v19, 1, v13);
      v13 = result;
    }

    v8 &= v8 - 1;
    if (*(v15 + 16))
    {
      if ((*(v13 + 24) >> 1) - *(v13 + 16) < v16)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = *(v13 + 16);
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_27;
        }

        *(v13 + 16) = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      v23 = sub_242C81884(v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_242F0A4E0;
      *(inited + 32) = v29;
      *(inited + 40) = v27;
      *(inited + 48) = v26;
      *(inited + 56) = &type metadata for AssetResource;
      *(inited + 96) = &type metadata for AssetResource;
      *(inited + 104) = &protocol witness table for AssetResource;
      *(inited + 64) = &protocol witness table for AssetResource;
      *(inited + 72) = v30;
      *(inited + 80) = v28;
      *(inited + 88) = v25;
      sub_242C81A20(inited, &qword_27ECF0200, &unk_242F0A530, &qword_27ECF0338);
      return v23;
    }

    v8 = *(v1 + 64 + 8 * v14);
    ++v12;
    if (v8)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_242C81884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_242E3BCB0(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 3);
      v15 = *(v4 - 4);
      v16 = *(v4 - 6);
      v7 = *(v4 - 4);
      v8 = *(v4 - 1);
      v9 = *v4;
      v20 = v2;
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);

      v12 = v9;
      if (v10 >= v11 >> 1)
      {
        sub_242E3BCB0((v11 > 1), v10 + 1, 1);
        v2 = v20;
      }

      v4 += 7;
      v18 = &type metadata for VectorFont.Asset;
      v19 = &protocol witness table for VectorFont.Asset;
      v13 = swift_allocObject();
      *&v17 = v13;
      *(v13 + 16) = v16;
      *(v13 + 24) = v5;
      *(v13 + 32) = v15;
      *(v13 + 40) = v6;
      *(v13 + 48) = v7;
      *(v13 + 56) = v8;
      *(v13 + 64) = v9;
      *(v2 + 16) = v10 + 1;
      sub_242C65564(&v17, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_242C81A20(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_242C83B18(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_242C81B50(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_242C82E5C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_242C81C48(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_242C82C04(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_242C81D3C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242C82FA0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_242C81E28(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_242C83DB0(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27ECF0350, &unk_242F0A828, type metadata accessor for Component);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Component();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_242C81F78(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242C840B4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_242C82064(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_242C82C04(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_242CE013C(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_242C82C04((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_242C6548C();
  *v1 = v4;
  return result;
}

uint64_t sub_242C82320(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_242C82C04(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_242CE3FBC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_242C82C04((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_242C6548C();
  *v1 = v4;
  return result;
}

uint64_t sub_242C825DC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_242C845A4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void VectorFontManager.restoreAssets(from:)(void *a1)
{
  v4 = *v1;
  v21 = a1;
  v5 = sub_242C85AB4(sub_242C86E74, v20, v4);
  if (!v2)
  {
    v6 = v5;

    *v1 = v6;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v7);
    v9 = v1[3];
    v10 = v1[4];
    v19 = v1;
    v22 = 1;
    v11 = *(v8 + 8);

    v12 = v11(v9, v10, &v22, v7, v8);

    v19[5] = v12;
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v13);
    v15 = v19[6];
    v16 = v19[7];
    v22 = 1;
    v17 = *(v14 + 8);

    v18 = v17(v15, v16, &v22, v13, v14);

    v19[8] = v18;
  }
}

uint64_t sub_242C82868@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  v17 = a1[2];
  v16 = *(a1 + 8);
  v7 = a1[5];
  v8 = a1[6];
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_2Tm(a2, v10);
  v21 = 1;
  v11 = *(v9 + 8);
  v12 = v8;
  swift_bridgeObjectRetain_n();

  v13 = v11(v5, v4, &v21, v10, v9);
  if (v20)
  {

    *a3 = v20;
  }

  else
  {
    v15 = v13;

    *a4 = v5;
    *(a4 + 8) = v4;
    *(a4 + 16) = v17;
    *(a4 + 24) = v6;
    *(a4 + 32) = v16;
    *(a4 + 40) = v7;
    *(a4 + 48) = v15;
  }

  return result;
}

char *sub_242C829CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_242C82AD0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C82C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C82D34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C82E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C82FA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_242C830A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 136 * v8);
  }

  return v10;
}

char *sub_242C831C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_242C832C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242C833E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0398);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C83514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242C83648(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242C8377C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C838D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 568);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[568 * v8])
    {
      memmove(v12, v13, 568 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C83A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0348);
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

void *sub_242C83B18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_242C83C60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_242C83DB0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_242C83F8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C840B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0320);
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

char *sub_242C841E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_242C84300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242C84470(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_242C845A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C846DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_242C847D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 592);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[592 * v8])
    {
      memmove(v12, v13, 592 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242C84900(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C84A48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242C84B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_242C84C7C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_242F06390();

    sub_242F04DD0();
    v23 = sub_242F063E0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_242F06110() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_242E62158(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_242F06390();

            sub_242F04DD0();
            v41 = sub_242F063E0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_242F06110() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_242C85698(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x245D287D0](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_242C6548C();
    return v5;
  }

  result = MEMORY[0x245D287D0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_242C851EC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_242F06390();

    sub_242F04DD0();
    v11 = sub_242F063E0();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_242F06110() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_242E62158(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_242F06390();

        sub_242F04DD0();
        v33 = sub_242F063E0();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_242F06110() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_242C858D0(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x245D287D0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x245D287D0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_242C85698(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_242E62158(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_242F06390();

        sub_242F04DD0();
        v19 = sub_242F063E0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_242F06110() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_242C858D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_242E62158(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_242F06390();

        sub_242F04DD0();
        v16 = sub_242F063E0();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_242F06110() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_242C85AB4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03E8);
  result = sub_242F05C90();
  v6 = 0;
  v28 = a3;
  v29 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v31 = *(*(v28 + 56) + 8 * v17);

      a1(&v30, &v31);

      if (v3)
      {
        break;
      }

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v29;
      v21 = v30;
      v22 = (v29[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v29[7] + 8 * v17) = v21;
      v23 = v29[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v29[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v29;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_242C85C78(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0298);
  result = sub_242F05C90();
  v5 = result;
  v6 = 0;
  v29 = a3;
  v30 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v29 + 56);
      v19 = (*(v29 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      memcpy(__dst, (v18 + (v17 << 9)), 0x1F9uLL);
      memcpy(__src, (v18 + (v17 << 9)), 0x1F9uLL);

      sub_242C874B8(__dst, v31);
      v22 = v35;
      a1(v32, __src);
      v35 = v22;
      if (v22)
      {
        break;
      }

      memcpy(v31, __src, 0x1F9uLL);
      sub_242C87514(v31);
      *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5 = v30;
      v23 = (v30[6] + 16 * v17);
      *v23 = v20;
      v23[1] = v21;
      result = memcpy((v30[7] + (v17 << 9)), v32, 0x1F9uLL);
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v5 = v30;

    memcpy(v31, __src, 0x1F9uLL);
    sub_242C87514(v31);
    return v5;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_242C85E8C(void (*a1)(_OWORD *__return_ptr, void **), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02A0);
  result = sub_242F05C90();
  v7 = 0;
  v44 = a3;
  v45 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v42 = result + 64;
  v40 = v9;
  v41 = v14;
  if (v13)
  {
    while (1)
    {
      v58 = v4;
      v15 = __clz(__rbit64(v13));
      v46 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v44 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v44 + 56) + 56 * v18;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      v51 = *v22;
      v24 = v51;
      v52 = v23;
      v53 = v25;
      v54 = v26;
      v55 = *(v22 + 32);
      v29 = v55;
      v56 = v27;
      v57 = v28;

      sub_242C7F6C4(v24, v23, v25, v26, v29);
      v30 = v58;
      a1(v47, &v51);
      v4 = v30;
      if (v30)
      {
        break;
      }

      sub_242C7F724(v51, v52, v53, v54, v55);
      *(v42 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v45;
      v31 = (v45[6] + 16 * v18);
      *v31 = v20;
      v31[1] = v21;
      v32 = v45[7] + 56 * v18;
      v33 = v48;
      v34 = v49;
      v35 = v50;
      v36 = v47[1];
      *v32 = v47[0];
      *(v32 + 16) = v36;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      *(v32 + 48) = v35;
      v37 = v45[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_17;
      }

      v45[2] = v39;
      v14 = v41;
      v13 = v46;
      if (!v46)
      {
        goto LABEL_5;
      }
    }

    sub_242C7F724(v51, v52, v53, v54, v55);
    return v45;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return result;
      }

      v17 = *(v40 + 8 * v7);
      ++v16;
      if (v17)
      {
        v58 = v4;
        v15 = __clz(__rbit64(v17));
        v46 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_242C860DC(void (*a1)(_OWORD *__return_ptr, void **), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0270);
  result = sub_242F05C90();
  v6 = 0;
  v43 = a3;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v31 = result + 64;
  v32 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v43 + 48) + 8 * v17);
      v19 = *(v43 + 56) + 48 * v17;
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *(v19 + 40);
      v37 = *v19;
      v38 = v20;
      v39 = v21;
      v40 = v22;
      v41 = *(v19 + 32);
      v42 = v23;
      sub_242C7F6C4(v37, v20, v21, v22, v41);
      a1(v34, &v37);
      sub_242C7F724(v37, v38, v39, v40, v41);
      if (v3)
      {
        break;
      }

      result = v32;
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v32[6] + 8 * v17) = v18;
      v24 = v32[7] + 48 * v17;
      v25 = v35;
      v26 = v36;
      v27 = v34[1];
      *v24 = v34[0];
      *(v24 + 16) = v27;
      *(v24 + 32) = v25;
      *(v24 + 40) = v26;
      v28 = v32[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      v32[2] = v30;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v32;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_242C862C0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_242C870B0(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_242C87694(v12, &v16);
    v13 = v16;
    MEMORY[0x245D287D0](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_242C86440(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D26AF0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_242CC0A30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_242C864D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_242C87568();
  result = MEMORY[0x245D26AF0](v2, &type metadata for Theme.ColorID, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_242C7CE5C(v7, v6, v8);
      sub_242CC0D18(v9, v7, v6, v8);
      sub_242C7CEB0(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_242C865E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_242C87408();
  result = MEMORY[0x245D26AF0](v2, &type metadata for Theme.LayoutStyle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = *(v5 + 32);
      v10 = *(v5 + 48);
      sub_242C8745C(v9, &v7);
      sub_242CC0F70(&v7, v9);

      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_242C866DC(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_242F059B0())
  {
    v11 = sub_242C8760C(0, j);
    v12 = sub_242C875BC(a4, j);
    result = MEMORY[0x245D26AF0](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x245D270D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_242F059B0();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_242C86834(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_242CC0A30(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_242C868B4()
{
  result = qword_27ECF0178;
  if (!qword_27ECF0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0178);
  }

  return result;
}

unint64_t sub_242C86908()
{
  result = qword_27ECF0188;
  if (!qword_27ECF0188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0180);
    sub_242C86BD4(&qword_27ECF0190, sub_242C869C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0188);
  }

  return result;
}

unint64_t sub_242C869C4()
{
  result = qword_27ECF01A0;
  if (!qword_27ECF01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01A0);
  }

  return result;
}

unint64_t sub_242C86A18()
{
  result = qword_27ECF01B0;
  if (!qword_27ECF01B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF01A8);
    sub_242C86D4C(&qword_27ECF01B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01B0);
  }

  return result;
}

unint64_t sub_242C86AC4()
{
  result = qword_27ECF01C0;
  if (!qword_27ECF01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01C0);
  }

  return result;
}

unint64_t sub_242C86B18()
{
  result = qword_27ECF01D0;
  if (!qword_27ECF01D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0180);
    sub_242C86BD4(&qword_27ECF01D8, sub_242C86C4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01D0);
  }

  return result;
}

uint64_t sub_242C86BD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C86C4C()
{
  result = qword_27ECF01E0;
  if (!qword_27ECF01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01E0);
  }

  return result;
}

unint64_t sub_242C86CA0()
{
  result = qword_27ECF01E8;
  if (!qword_27ECF01E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF01A8);
    sub_242C86D4C(&qword_27ECF01F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01E8);
  }

  return result;
}

uint64_t sub_242C86D4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C86DB8()
{
  result = qword_27ECF01F8;
  if (!qword_27ECF01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01F8);
  }

  return result;
}

uint64_t sub_242C86E74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v7[2] = *(v2 + 16);
  result = sub_242CE8374(sub_242C87654, v7, v5);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_242C86EF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_242C86F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242C86FAC()
{
  result = qword_27ECF0208;
  if (!qword_27ECF0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0208);
  }

  return result;
}

unint64_t sub_242C87004()
{
  result = qword_27ECF0210;
  if (!qword_27ECF0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0210);
  }

  return result;
}

unint64_t sub_242C8705C()
{
  result = qword_27ECF0218;
  if (!qword_27ECF0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0218);
  }

  return result;
}

uint64_t sub_242C870B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v24 = v5;
  v25 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v25 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      sub_242F06390();

      sub_242F04DD0();
      v11 = sub_242F063E0();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v16 = (*(a3 + 48) + 16 * v13);
    v17 = *v16 == v10 && v16[1] == v9;
    if (!v17)
    {
      v18 = ~v12;
      while ((sub_242F06110() & 1) == 0)
      {
        v13 = (v13 + 1) & v18;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
          v5 = v24;
          goto LABEL_5;
        }

        v19 = (*(a3 + 48) + 16 * v13);
        if (*v19 == v10 && v19[1] == v9)
        {
          break;
        }
      }
    }

    v20 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = v20 | v15;
    if ((v20 & v15) != 0)
    {
      v5 = v24;
      goto LABEL_6;
    }

    v21 = v22 + 1;
    v5 = v24;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v17 = v21 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_242C87288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x46794273746E6F66 && a2 == 0xED0000796C696D61;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365646163736163 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43746C7561666564 && a2 == 0xEE00656461637361 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F736552746E6F66 && a2 == 0xED00007365637275)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

unint64_t sub_242C87408()
{
  result = qword_27ECF0278;
  if (!qword_27ECF0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0278);
  }

  return result;
}

unint64_t sub_242C87568()
{
  result = qword_27ECF03A0;
  if (!qword_27ECF03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF03A0);
  }

  return result;
}

uint64_t sub_242C875BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_242C8760C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C8760C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_242C87694@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242C870B0(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

id static NSBundle.carplayAssetUI.getter()
{
  _s12BundleLoaderCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

double static DefaultRedactedColorID.default.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 33;
  *a1 = xmmword_242F0A8C0;
  *(a1 + 16) = 0;
  return result;
}

double sub_242C87784@<D0>(uint64_t a1@<X8>)
{
  *&result = 33;
  *a1 = xmmword_242F0A8C0;
  *(a1 + 16) = 0;
  return result;
}

double sub_242C87878()
{
  *&result = 741157674;
  dword_27ECF03F8 = 741157674;
  return result;
}

double sub_242C878B4()
{
  *&result = 185338377;
  dword_27ECF03FC = 185338377;
  return result;
}

void *sub_242C878F0@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

unint64_t sub_242C87940()
{
  v1 = 0xD000000000000013;
  v2 = 0xD00000000000001FLL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_242C879B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C8C1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C879DC(uint64_t a1)
{
  v2 = sub_242C8ABD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C87A18(uint64_t a1)
{
  v2 = sub_242C8ABD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChargeFuelDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0400);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  HIDWORD(v13) = v1[3];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C8ABD4();
  sub_242F064C0();
  v23 = v8;
  v22 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = BYTE4(v13);
  v11 = v14;
  v21 = v15;
  v20 = 1;
  sub_242F05F20();
  v19 = v11;
  v18 = 2;
  sub_242F05F20();
  v17 = v10;
  v16 = 3;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ChargeFuelDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t ChargeFuelDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t ChargeFuelDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C8ABD4();
  sub_242F06480();
  if (!v2)
  {
    v23 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v24;
    v21 = 1;
    sub_242F05E00();
    v16 = v9;
    v10 = v22;
    v19 = 2;
    sub_242F05E00();
    v15 = v10;
    LOBYTE(v10) = v20;
    v17 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = v10;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C88128()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.remainingRangeTextConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x158uLL);
  memcpy(a1, (v1 + 8), 0x158uLL);
  return sub_242C8ACD0(__dst, v4);
}

void *Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.remainingRangeTextConfiguration.setter(const void *a1)
{
  memcpy(v4, (v1 + 8), 0x158uLL);
  sub_242C6D138(v4, &qword_27ECF0428);
  return memcpy((v1 + 8), a1, 0x158uLL);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.progressColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  v3 = *(v1 + 360);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 368);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.progressColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 352), *(v1 + 360), *(v1 + 368));
  *(v1 + 352) = v2;
  *(v1 + 360) = v3;
  *(v1 + 368) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.trackColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 392);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.trackColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 376), *(v1 + 384), *(v1 + 392));
  *(v1 + 376) = v2;
  *(v1 + 384) = v3;
  *(v1 + 392) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.lowLevelColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 408);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 416);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.lowLevelColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 400), *(v1 + 408), *(v1 + 416));
  *(v1 + 400) = v2;
  *(v1 + 408) = v3;
  *(v1 + 416) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.criticallyLowLevelColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  v3 = *(v1 + 432);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 440);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.criticallyLowLevelColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 424), *(v1 + 432), *(v1 + 440));
  *(v1 + 424) = v2;
  *(v1 + 432) = v3;
  *(v1 + 440) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.normalLevelIndicatorColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 448);
  v3 = *(v1 + 456);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 464);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.normalLevelIndicatorColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 448), *(v1 + 456), *(v1 + 464));
  *(v1 + 448) = v2;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.lowLevelIndicatorColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v3 = *(v1 + 480);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 488);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.lowLevelIndicatorColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 472), *(v1 + 480), *(v1 + 488));
  *(v1 + 472) = v2;
  *(v1 + 480) = v3;
  *(v1 + 488) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.criticallyLowLevelIndicatorColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 504);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 512);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.criticallyLowLevelIndicatorColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 496), *(v1 + 504), *(v1 + 512));
  *(v1 + 496) = v2;
  *(v1 + 504) = v3;
  *(v1 + 512) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.redactedIndicatorColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 520);
  v3 = *(v1 + 528);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 536);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.redactedIndicatorColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 520), *(v1 + 528), *(v1 + 536));
  *(v1 + 520) = v2;
  *(v1 + 528) = v3;
  *(v1 + 536) = v4;
  return result;
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.portSideIndicatorImages.setter(uint64_t a1)
{

  *(v1 + 544) = a1;
  return result;
}

void *Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.init(levelDataIdentifier:levelStateDataIdentifier:levelMarkerLowDataIdentifier:portSideIndicatorDataIdentifier:remainingRangeTextConfiguration:trackColorID:progressColorID:lowLevelColorID:criticallyLowLevelColorID:normalLevelIndicatorColorID:lowLevelIndicatorColorID:criticallyLowLevelIndicatorColorID:redactedIndicatorColorID:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, const void *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v15 = *a1;
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v42 = a6[1];
  v43 = *a6;
  v19 = *a7;
  v20 = a7[1];
  v21 = *(a7 + 16);
  v22 = *a8;
  v23 = a8[1];
  v40 = *(a8 + 16);
  v41 = *(a6 + 16);
  v38 = a10[1];
  v39 = *a10;
  v37 = *(a10 + 16);
  v35 = a11[1];
  v36 = *a11;
  v34 = *(a11 + 16);
  v33 = *a12;
  v32 = a12[1];
  v31 = *(a12 + 16);
  v29 = a13[1];
  v30 = *a13;
  v28 = *(a13 + 16);
  v26 = a14[1];
  v27 = *a14;
  v25 = *(a14 + 16);
  sub_242C8AD40(__src);
  memcpy((a9 + 8), __src, 0x158uLL);
  *(a9 + 544) = sub_242CE6D94(MEMORY[0x277D84F90]);
  *a9 = v15;
  *(a9 + 1) = v16;
  *(a9 + 3) = v17;
  *(a9 + 2) = v18;
  memcpy(__dst, (a9 + 8), 0x158uLL);
  sub_242C6D138(__dst, &qword_27ECF0428);
  result = memcpy((a9 + 8), a5, 0x158uLL);
  *(a9 + 376) = v43;
  *(a9 + 384) = v42;
  *(a9 + 392) = v41;
  *(a9 + 352) = v19;
  *(a9 + 360) = v20;
  *(a9 + 368) = v21;
  *(a9 + 400) = v22;
  *(a9 + 408) = v23;
  *(a9 + 416) = v40;
  *(a9 + 424) = v39;
  *(a9 + 432) = v38;
  *(a9 + 440) = v37;
  *(a9 + 448) = v36;
  *(a9 + 456) = v35;
  *(a9 + 464) = v34;
  *(a9 + 472) = v33;
  *(a9 + 480) = v32;
  *(a9 + 488) = v31;
  *(a9 + 496) = v30;
  *(a9 + 504) = v29;
  *(a9 + 512) = v28;
  *(a9 + 520) = v27;
  *(a9 + 528) = v26;
  *(a9 + 536) = v25;
  return result;
}

void *Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.assets.getter()
{
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  if (sub_242C8B80C(__dst) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  memcpy(v2, &__dst[8], sizeof(v2));
  return MeasurementLabelConfiguration.assets.getter();
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.restoreAssets(from:)(uint64_t a1)
{
  memcpy(v11, (v1 + 8), sizeof(v11));
  result = sub_242C8B80C(v11);
  if (result != 1)
  {
    v5 = *(v1 + 304);
    v6 = sub_242CE6D94(MEMORY[0x277D84F90]);
    v7 = MEMORY[0x28223BE20](v6);
    v10[2] = a1;
    v8 = sub_242C8A810(v7, sub_242C8B824, v10, v5);
    if (v2)
    {
    }

    else
    {
      v9 = v8;

      *(v1 + 304) = v9;
    }
  }

  return result;
}

unint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.description.getter()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = sub_242EFCF00(v0, v1);

  return v2;
}

unint64_t sub_242C88B78(char a1)
{
  result = 0x73736572676F7270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      return result;
    case 6:
      result = 0x6C6F436B63617274;
      break;
    case 7:
      result = 0x6C6576654C776F6CLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_242C88D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C8C334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C88D60(uint64_t a1)
{
  v2 = sub_242C8B840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C88D9C(uint64_t a1)
{
  v2 = sub_242C8B840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0430);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = *v1;
  LODWORD(v58) = v1[1];
  v66 = v1[2];
  v57 = v1[3];
  memcpy(v65, v1 + 8, 0x158uLL);
  v8 = *(v1 + 45);
  v56 = *(v1 + 44);
  v54 = v8;
  v55 = v1[368];
  v9 = *(v1 + 48);
  v51 = *(v1 + 47);
  v52 = v9;
  v53 = v1[392];
  v10 = *(v1 + 51);
  v48 = *(v1 + 50);
  v49 = v10;
  v50 = v1[416];
  v11 = *(v1 + 54);
  v45 = *(v1 + 53);
  v46 = v11;
  v47 = v1[440];
  v12 = *(v1 + 57);
  v42 = *(v1 + 56);
  v43 = v12;
  v44 = v1[464];
  v13 = *(v1 + 60);
  v39 = *(v1 + 59);
  v40 = v13;
  v41 = v1[488];
  v14 = *(v1 + 63);
  v36 = *(v1 + 62);
  v37 = v14;
  v38 = v1[512];
  v15 = *(v1 + 66);
  v33 = *(v1 + 65);
  v34 = v15;
  v35 = v1[536];
  v32 = *(v1 + 68);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C8B840();
  v16 = v3;
  sub_242F064C0();
  v64[0] = v7;
  v63[0] = 0;
  sub_242C8AC28();
  v17 = v59;
  sub_242F05F20();
  if (v17)
  {
    v59 = v17;
    return (*(v4 + 8))(v6, v3);
  }

  v18 = v66;
  v19 = v57;
  v20 = v56;
  v64[0] = v58;
  v63[0] = 1;
  sub_242F05F20();
  v64[0] = v18;
  v63[0] = 2;
  sub_242F05F20();
  v64[0] = v19;
  v63[0] = 3;
  sub_242F05F20();
  v59 = 0;
  memcpy(v64, v65, sizeof(v64));
  v68 = 4;
  sub_242C8ACD0(v65, v63);
  sub_242C8B894();
  v22 = v59;
  sub_242F05EB0();
  v59 = v22;
  if (v22)
  {
    memcpy(v63, v64, sizeof(v63));
    sub_242C6D138(v63, &qword_27ECF0428);
    return (*(v4 + 8))(v6, v16);
  }

  memcpy(v63, v64, sizeof(v63));
  sub_242C6D138(v63, &qword_27ECF0428);
  v60 = v20;
  v61 = v54;
  v62 = v55;
  v67 = 5;
  sub_242C7CE5C(v20, v54, v55);
  v58 = sub_242C7DEA0();
  v23 = v59;
  sub_242F05F20();
  v59 = v23;
  if (v23 || (sub_242C7CEB0(v60, v61, v62), v60 = v51, v61 = v52, v62 = v53, v67 = 6, sub_242C7CE5C(v51, v52, v53), v24 = v59, sub_242F05F20(), (v59 = v24) != 0) || (sub_242C7CEB0(v60, v61, v62), v60 = v48, v61 = v49, v62 = v50, v67 = 7, sub_242C7CE5C(v48, v49, v50), v25 = v59, sub_242F05F20(), (v59 = v25) != 0) || (sub_242C7CEB0(v60, v61, v62), v60 = v45, v61 = v46, v62 = v47, v67 = 8, sub_242C7CE5C(v45, v46, v47), v26 = v59, sub_242F05F20(), (v59 = v26) != 0) || (sub_242C7CEB0(v60, v61, v62), v60 = v42, v61 = v43, v62 = v44, v67 = 9, sub_242C7CE5C(v42, v43, v44), v27 = v59, sub_242F05F20(), (v59 = v27) != 0))
  {
    sub_242C7CEB0(v60, v61, v62);
    return (*(v4 + 8))(v6, v16);
  }

  sub_242C7CEB0(v60, v61, v62);
  v60 = v39;
  v61 = v40;
  v62 = v41;
  v67 = 10;
  sub_242C7CE5C(v39, v40, v41);
  v28 = v59;
  sub_242F05F20();
  v59 = v28;
  if (v28 || (sub_242C7CEB0(v60, v61, v62), v60 = v36, v61 = v37, v62 = v38, v67 = 11, sub_242C7CE5C(v36, v37, v38), v29 = v59, sub_242F05F20(), (v59 = v29) != 0))
  {
    sub_242C7CEB0(v60, v61, v62);
    return (*(v4 + 8))(v6, v16);
  }

  sub_242C7CEB0(v60, v61, v62);
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v67 = 12;
  sub_242C7CE5C(v33, v34, v35);
  v30 = v59;
  sub_242F05F20();
  sub_242C7CEB0(v60, v61, v62);
  v59 = v30;
  if (v30)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v60 = v32;
  v67 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448);
  sub_242C8B9EC(&qword_27ECF0450, sub_242C8B8E8);
  sub_242F05F20();
  return (*(v4 + 8))(v6, v16);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  memcpy(__dst, v1 + 8, sizeof(__dst));
  v8 = *(v1 + 44);
  v7 = *(v1 + 45);
  v9 = v1[368];
  v10 = *(v1 + 47);
  v15 = *(v1 + 48);
  v14 = v1[392];
  v17 = *(v1 + 51);
  v18 = *(v1 + 50);
  v16 = v1[416];
  v20 = *(v1 + 54);
  v21 = *(v1 + 53);
  v19 = v1[440];
  v23 = *(v1 + 57);
  v24 = *(v1 + 56);
  v22 = v1[464];
  v26 = *(v1 + 60);
  v27 = *(v1 + 59);
  v25 = v1[488];
  v29 = *(v1 + 63);
  v30 = *(v1 + 62);
  v28 = v1[512];
  v32 = *(v1 + 66);
  v33 = *(v1 + 65);
  v31 = v1[536];
  v34 = *(v1 + 68);
  v39[0] = v3;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v39[0] = v4;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v39[0] = v5;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v39[0] = v6;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  memcpy(v39, __dst, 0x158uLL);
  if (sub_242C8B80C(v39) == 1)
  {
    sub_242F063B0();
  }

  else
  {
    v11 = __dst[0];
    v12 = __dst[1];
    memcpy(v36, &__dst[2], sizeof(v36));
    sub_242F063B0();
    v35[345] = v11;
    InstrumentDataIdentifier.rawValue.getter();
    memcpy(v37, __dst, sizeof(v37));
    sub_242C8B93C(v37, v35);
    sub_242F04DD0();

    v35[0] = v12;
    InstrumentDataIdentifier.rawValue.getter();
    sub_242F04DD0();

    memcpy(v35, &v36[6], 0x150uLL);
    MeasurementLabelConfiguration.hash(into:)(a1);
    sub_242C6D138(__dst, &qword_27ECF0428);
  }

  v37[0] = v8;
  v37[1] = v7;
  LOBYTE(v37[2]) = v9;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v10;
  v37[1] = v15;
  LOBYTE(v37[2]) = v14;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v18;
  v37[1] = v17;
  LOBYTE(v37[2]) = v16;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v21;
  v37[1] = v20;
  LOBYTE(v37[2]) = v19;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v24;
  v37[1] = v23;
  LOBYTE(v37[2]) = v22;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v27;
  v37[1] = v26;
  LOBYTE(v37[2]) = v25;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v30;
  v37[1] = v29;
  LOBYTE(v37[2]) = v28;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v37[0] = v33;
  v37[1] = v32;
  LOBYTE(v37[2]) = v31;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242C799A8(a1, v34);
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  sub_242C8AD40(v94);
  memcpy(&v93[4], v94, 0x158uLL);
  v95 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242C8B840();
  sub_242F06480();
  if (!v2)
  {
    v10 = v6;
    LOBYTE(v47[0]) = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v11 = LOBYTE(v48[0]);
    LOBYTE(v47[0]) = 1;
    sub_242F05E00();
    HIDWORD(v45) = v11;
    v12 = LOBYTE(v48[0]);
    LOBYTE(v47[0]) = 2;
    sub_242F05E00();
    LODWORD(v45) = v12;
    v13 = LOBYTE(v48[0]);
    LOBYTE(v47[0]) = 3;
    sub_242F05E00();
    v14 = LOBYTE(v48[0]);
    v83[351] = 4;
    sub_242C8B998();
    sub_242F05D90();
    v21 = v14;
    memcpy(v82, v84, sizeof(v82));
    memcpy(v83, &v93[4], 0x158uLL);
    sub_242C6D138(v83, &qword_27ECF0428);
    memcpy(&v93[4], v82, 0x158uLL);
    LOBYTE(v47[0]) = 5;
    sub_242C7DFAC();
    sub_242F05E00();
    v44 = v48[0];
    v42 = v48[1];
    v43 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 6;
    sub_242F05E00();
    v39 = v48[0];
    v40 = v48[1];
    v41 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 7;
    sub_242F05E00();
    v36 = v48[0];
    v37 = v48[1];
    v38 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 8;
    sub_242F05E00();
    v20 = v13;
    v33 = v48[0];
    v34 = v48[1];
    v35 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 9;
    sub_242F05E00();
    v30 = v48[0];
    v31 = v48[1];
    v32 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 10;
    sub_242F05E00();
    v27 = v48[0];
    v28 = v48[1];
    v29 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 11;
    sub_242F05E00();
    v25 = v48[0];
    v26 = v48[1];
    v24 = LOBYTE(v48[2]);
    LOBYTE(v47[0]) = 12;
    sub_242F05E00();
    v22 = v48[1];
    v23 = v48[0];
    LOBYTE(v13) = v48[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448);
    v80 = 13;
    sub_242C8B9EC(&qword_27ECF0470, sub_242C8BA70);
    sub_242F05E00();
    (*(v10 + 8))(v8, v5);

    LOBYTE(v47[0]) = BYTE4(v45);
    BYTE1(v47[0]) = v45;
    BYTE2(v47[0]) = v20;
    BYTE3(v47[0]) = v21;
    memcpy(v47 + 4, v93, 0x15CuLL);
    v47[44] = v44;
    v15 = v42;
    v47[45] = v42;
    v16 = v43;
    LOBYTE(v47[46]) = v43;
    *(&v47[46] + 1) = *v92;
    HIDWORD(v47[46]) = *&v92[3];
    v47[47] = v39;
    v47[48] = v40;
    LOBYTE(v47[49]) = v41;
    *(&v47[49] + 1) = *v91;
    HIDWORD(v47[49]) = *&v91[3];
    v47[50] = v36;
    v47[51] = v37;
    LOBYTE(v47[52]) = v38;
    *(&v47[52] + 1) = *v90;
    HIDWORD(v47[52]) = *&v90[3];
    v47[53] = v33;
    v47[54] = v34;
    LOBYTE(v47[55]) = v35;
    *(&v47[55] + 1) = *v89;
    HIDWORD(v47[55]) = *&v89[3];
    v47[56] = v30;
    v47[57] = v31;
    LOBYTE(v47[58]) = v32;
    *(&v47[58] + 1) = *v88;
    HIDWORD(v47[58]) = *&v88[3];
    v47[59] = v27;
    v47[60] = v28;
    LOBYTE(v47[61]) = v29;
    *(&v47[61] + 1) = *v87;
    HIDWORD(v47[61]) = *&v87[3];
    v47[62] = v25;
    v47[63] = v26;
    LOBYTE(v47[64]) = v24;
    *(&v47[64] + 1) = *v86;
    HIDWORD(v47[64]) = *&v86[3];
    v47[65] = v23;
    v47[66] = v22;
    LOBYTE(v47[67]) = v13;
    *(&v47[67] + 1) = *v85;
    HIDWORD(v47[67]) = *&v85[3];
    v47[68] = v81;
    v17 = v81;
    memcpy(a2, v47, 0x228uLL);
    sub_242C8BAC4(v47, v48);
    __swift_destroy_boxed_opaque_existential_2Tm(v46);
    LOBYTE(v48[0]) = BYTE4(v45);
    BYTE1(v48[0]) = v45;
    BYTE2(v48[0]) = v20;
    BYTE3(v48[0]) = v21;
    memcpy(v48 + 4, v93, 0x15CuLL);
    v48[44] = v44;
    v48[45] = v15;
    v49 = v16;
    *v50 = *v92;
    *&v50[3] = *&v92[3];
    v51 = v39;
    v52 = v40;
    v53 = v41;
    *v54 = *v91;
    *&v54[3] = *&v91[3];
    v55 = v36;
    v56 = v37;
    v57 = v38;
    *v58 = *v90;
    *&v58[3] = *&v90[3];
    v59 = v33;
    v60 = v34;
    v61 = v35;
    *v62 = *v89;
    *&v62[3] = *&v89[3];
    v63 = v30;
    v64 = v31;
    v65 = v32;
    *v66 = *v88;
    *&v66[3] = *&v88[3];
    v67 = v27;
    v68 = v28;
    v69 = v29;
    *v70 = *v87;
    *&v70[3] = *&v87[3];
    v71 = v25;
    v72 = v26;
    v73 = v24;
    *v74 = *v86;
    *&v74[3] = *&v86[3];
    v75 = v23;
    v76 = v22;
    v77 = v13;
    *v78 = *v85;
    *&v78[3] = *&v85[3];
    v79 = v17;
    return sub_242C8BAFC(v48);
  }

  v45 = 0;
  __swift_destroy_boxed_opaque_existential_2Tm(v46);
  memcpy(v48, &v93[4], 0x158uLL);
  sub_242C6D138(v48, &qword_27ECF0428);
  if (v45)
  {
    sub_242C7CEB0(v25, v26, v24);
    if (!HIDWORD(v45))
    {
    }

    goto LABEL_5;
  }

  if (HIDWORD(v45))
  {
LABEL_5:
    sub_242C7CEB0(v23, v22, v6);
  }
}

void *sub_242C8A590()
{
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  if (sub_242C8B80C(__dst) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  memcpy(v2, &__dst[8], sizeof(v2));
  return MeasurementLabelConfiguration.assets.getter();
}

uint64_t sub_242C8A604(uint64_t a1)
{
  memcpy(v11, (v1 + 8), sizeof(v11));
  result = sub_242C8B80C(v11);
  if (result != 1)
  {
    v5 = *(v1 + 304);
    v6 = sub_242CE6D94(MEMORY[0x277D84F90]);
    v7 = MEMORY[0x28223BE20](v6);
    v10[2] = a1;
    v8 = sub_242C8A810(v7, sub_242C8C7E4, v10, v5);
    if (v2)
    {
    }

    else
    {
      v9 = v8;

      *(v1 + 304) = v9;
    }
  }

  return result;
}

uint64_t sub_242C8A730()
{
  sub_242F06390();
  Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}