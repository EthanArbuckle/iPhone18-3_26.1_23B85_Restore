uint64_t sub_25BE6EB0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (a2)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 24);
        ObjectType = swift_getObjectType();
        v25[3] = type metadata accessor for EngagementEventHandler();
        v25[4] = &protocol witness table for EngagementEventHandler;
        v25[0] = v8;
        v11 = *(v9 + 8);

        v11(v25, a1, ObjectType, v9);

        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0Tm(v25);
      }
    }

    else
    {
      v12 = *(a4 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v25[0] = MEMORY[0x277D84F90];
        sub_25BE75A78(0, v12, 0);
        v13 = v25[0];
        v14 = (a4 + 32);
        v15 = *(v25[0] + 16);
        do
        {
          v17 = *v14;
          v14 += 16;
          v16 = v17;
          v25[0] = v13;
          v18 = *(v13 + 24);
          if (v15 >= v18 >> 1)
          {
            sub_25BE75A78((v18 > 1), v15 + 1, 1);
            v13 = v25[0];
          }

          *(v13 + 16) = v15 + 1;
          *(v13 + v15++ + 32) = v16;
          --v12;
        }

        while (v12);
      }

      v19 = sub_25BE77590(v13);

      v20 = *(a1 + 16);
      if (v20)
      {
        v21 = (a1 + 48);
        do
        {
          v24 = *(v21 - 2);
          v23 = *(v21 - 1);
          LOBYTE(v25[0]) = *v21;
          v22 = v25[0];

          sub_25BE6D6D4(v19, v24, v25);
          LOBYTE(v25[0]) = v22;
          sub_25BE6DBBC(v19, v23, v25);

          v21 += 24;
          --v20;
        }

        while (v20);
      }
    }
  }

  return result;
}

uint64_t EngagementEventHandler.triggerAction(_:for:)(uint64_t a1, char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = v2[5];
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(ObjectType, v6);
  if (result)
  {
    if (((1 << v5) & 0xFFF801FE) == 0 || (result = (*(v6 + 16))(ObjectType, v6), (result & 1) == 0))
    {
      __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
      v10 = v3;
      v11 = v4;
      v9 = v5;
      return sub_25BE86338(&v10, &v9);
    }
  }

  return result;
}

uint64_t sub_25BE6EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for EngagementEventHandler();
  v17[4] = &protocol witness table for EngagementEventHandler;
  v17[0] = a3;
  v15 = a4;
  v16 = a5;
  v14 = a6;
  v12 = *(a2 + 16);

  v12(v17, &v15, &v14, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t EngagementEventHandler.deinit()
{
  sub_25BE77650(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  return v0;
}

uint64_t EngagementEventHandler.__deallocating_deinit()
{
  sub_25BE77650(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 105, 7);
}

uint64_t (*sub_25BE6EF88(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_25BE77C04;
}

void sub_25BE6F020(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_25BE6F134(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *v3;
  v7 = *a3;
  result = sub_25BE6BBA4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
    v9 = v7;
    return sub_25BE86180(a1, a2, &v9);
  }

  return result;
}

void *sub_25BE6F1C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25BE6F1DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BE6F228(a1, a2);
  sub_25BE6F358(&unk_286D7E6D0);
  return v3;
}

uint64_t sub_25BE6F228(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25BE6F444(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25BEB4C04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25BEB48E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BE6F444(v10, 0);
        result = sub_25BEB4BA4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25BE6F358(uint64_t result)
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

  result = sub_25BE6F4D0(result, v11, 1, v3);
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

void *sub_25BE6F444(uint64_t a1, uint64_t a2)
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

  sub_25BE77BA0(0, &unk_280E765C0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BE6F4D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BE77BA0(0, &unk_280E765C0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_25BE6F5DC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v113 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v63 = 0;
  v6 = *(a1 + 56);
  v94 = a1 + 56;
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v93 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v91 = (63 - v8) >> 6;
  v97 = (a2 + 56);
  v90 = 0x800000025BEB9DB0;
  v89 = 0x800000025BEB9D90;
  v88 = 0x800000025BEB9D70;
  v87 = 0x800000025BEB9D40;
  v86 = 0x800000025BEB9D20;
  v85 = 0x800000025BEB9CF0;
  v84 = 0x800000025BEB9CD0;
  v83 = 0x800000025BEB9CB0;
  v82 = 0x800000025BEB9C80;
  v81 = 0x800000025BEB9C60;
  v80 = 0x800000025BEB9C30;
  v79 = 0x800000025BEB9C10;
  v78 = 0x800000025BEB9BF0;
  v77 = 0x800000025BEB9BD0;
  v76 = 0x800000025BEB9BB0;
  v75 = 0x800000025BEB9B90;
  v74 = 0x800000025BEB9B70;
  v73 = 0x800000025BEB9B50;
  v72 = 0x800000025BEB9B20;
  v71 = 0x800000025BEB9B00;
  v70 = 0x800000025BEB9AE0;
  v69 = 0x800000025BEB9A90;
  v68 = 0x800000025BEB9A70;
  v92 = a1;

  v95 = 0;
LABEL_6:
  while (2)
  {
    if (v10)
    {
      v12 = v94;
    }

    else
    {
      v12 = v94;
      v13 = v95;
      do
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_195;
        }

        if (v14 >= v91)
        {
          goto LABEL_192;
        }

        v10 = *(v94 + 8 * v14);
        ++v13;
      }

      while (!v10);
      v95 = v14;
    }

    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(*(v92 + 48) + (v15 | (v95 << 6)));
    v108 = v92;
    v109 = v12;
    v110 = v93;
    v111 = v95;
    v112 = v10;
    sub_25BEB4F04();
    v98 = v16;
    EngagementUIPlacement.rawValue.getter();
    sub_25BEB48C4();

    v17 = sub_25BEB4F24();
    v18 = -1 << *(v5 + 32);
    v2 = v17 & ~v18;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & v97[v2 >> 6]) == 0)
    {
      continue;
    }

    break;
  }

  v96 = ~v18;
  while (1)
  {
    v19 = 0xED00007465656853;
    v20 = 0x6C6576654C707061;
    switch(*(*(v5 + 48) + v2))
    {
      case 1:
        v20 = 0x6C6576654C707061;
        v19 = 0xED00007473616F54;
        break;
      case 2:
        v20 = 0x73756C507377656ELL;
        v19 = 0xEF6D657449626154;
        break;
      case 3:
        v20 = 0xD000000000000010;
        v21 = &v99;
        goto LABEL_48;
      case 4:
        v20 = 0x6261546F69647561;
        v19 = 0xEC0000006D657449;
        break;
      case 5:
        v20 = 0xD000000000000010;
        v21 = &v100;
        goto LABEL_48;
      case 6:
        v22 = 0x686372616573;
        goto LABEL_37;
      case 7:
        v22 = 0x7374726F7073;
LABEL_37:
        v20 = v22 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
        v19 = 0xED00006D65744962;
        break;
      case 8:
        v20 = 0x5473656C7A7A7570;
        v19 = 0xEE006D6574496261;
        break;
      case 9:
        v20 = 0x6C6F46664F706F74;
        v19 = 0xEE00676E69776F6CLL;
        break;
      case 0xA:
        v20 = 0xD000000000000012;
        v21 = &v101;
        goto LABEL_48;
      case 0xB:
        v20 = 0xD00000000000001ALL;
        v21 = &v102;
        goto LABEL_48;
      case 0xC:
        v20 = 0xD00000000000001BLL;
        v21 = &v103;
        goto LABEL_48;
      case 0xD:
        v20 = 0x766153664F706F74;
        v19 = 0xEA00000000006465;
        break;
      case 0xE:
        v20 = 0xD000000000000011;
        v21 = &v104;
        goto LABEL_48;
      case 0xF:
        v20 = 0xD000000000000010;
        v21 = &v105;
        goto LABEL_48;
      case 0x10:
        v20 = 0xD000000000000010;
        v21 = &v106;
        goto LABEL_48;
      case 0x11:
        v20 = 0xD000000000000010;
        v21 = &v107;
        goto LABEL_48;
      case 0x12:
        v20 = 0xD000000000000017;
        v21 = &v108;
        goto LABEL_48;
      case 0x13:
        v20 = 0xD000000000000017;
        v21 = &v109;
        goto LABEL_48;
      case 0x14:
        v20 = 0xD00000000000001CLL;
        v21 = &v110;
        goto LABEL_48;
      case 0x15:
        v20 = 0xD000000000000020;
        v21 = &v111;
        goto LABEL_48;
      case 0x16:
        v20 = 0xD000000000000019;
        v21 = &v112;
        goto LABEL_48;
      case 0x17:
        v20 = 0xD000000000000022;
        v21 = &v113;
        goto LABEL_48;
      case 0x18:
        v20 = 0xD000000000000017;
        v21 = &v114;
        goto LABEL_48;
      case 0x19:
        v20 = 0xD00000000000001CLL;
        v21 = &v115;
        goto LABEL_48;
      case 0x1A:
        v20 = 0xD000000000000020;
        v21 = &v116;
        goto LABEL_48;
      case 0x1B:
        v20 = 0xD00000000000001BLL;
        v21 = &v117;
        goto LABEL_48;
      case 0x1C:
        v20 = 0xD000000000000024;
        v21 = &v118;
        goto LABEL_48;
      case 0x1D:
        v20 = 0xD00000000000001ALL;
        v21 = &v119;
        goto LABEL_48;
      case 0x1E:
        v20 = 0xD00000000000001FLL;
        v21 = &v120;
        goto LABEL_48;
      case 0x1F:
        v20 = 0xD000000000000023;
        v21 = &v121;
LABEL_48:
        v19 = *(v21 - 32);
        break;
      default:
        break;
    }

    v23 = 0x6C6576654C707061;
    v24 = 0xED00007465656853;
    switch(v16)
    {
      case 1:
        v23 = 0x6C6576654C707061;
        v24 = 0xED00007473616F54;
        break;
      case 2:
        v23 = 0x73756C507377656ELL;
        v24 = 0xEF6D657449626154;
        break;
      case 3:
        v23 = 0xD000000000000010;
        v25 = &v99;
        goto LABEL_82;
      case 4:
        v23 = 0x6261546F69647561;
        v24 = 0xEC0000006D657449;
        break;
      case 5:
        v23 = 0xD000000000000010;
        v25 = &v100;
        goto LABEL_82;
      case 6:
        v26 = 0x686372616573;
        goto LABEL_71;
      case 7:
        v26 = 0x7374726F7073;
LABEL_71:
        v23 = v26 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
        v24 = 0xED00006D65744962;
        break;
      case 8:
        v23 = 0x5473656C7A7A7570;
        v24 = 0xEE006D6574496261;
        break;
      case 9:
        v23 = 0x6C6F46664F706F74;
        v24 = 0xEE00676E69776F6CLL;
        break;
      case 10:
        v23 = 0xD000000000000012;
        v25 = &v101;
        goto LABEL_82;
      case 11:
        v23 = 0xD00000000000001ALL;
        v25 = &v102;
        goto LABEL_82;
      case 12:
        v23 = 0xD00000000000001BLL;
        v25 = &v103;
        goto LABEL_82;
      case 13:
        v23 = 0x766153664F706F74;
        v24 = 0xEA00000000006465;
        break;
      case 14:
        v23 = 0xD000000000000011;
        v25 = &v104;
        goto LABEL_82;
      case 15:
        v23 = 0xD000000000000010;
        v25 = &v105;
        goto LABEL_82;
      case 16:
        v23 = 0xD000000000000010;
        v25 = &v106;
        goto LABEL_82;
      case 17:
        v23 = 0xD000000000000010;
        v25 = &v107;
        goto LABEL_82;
      case 18:
        v23 = 0xD000000000000017;
        v25 = &v108;
        goto LABEL_82;
      case 19:
        v23 = 0xD000000000000017;
        v25 = &v109;
        goto LABEL_82;
      case 20:
        v23 = 0xD00000000000001CLL;
        v25 = &v110;
        goto LABEL_82;
      case 21:
        v23 = 0xD000000000000020;
        v25 = &v111;
        goto LABEL_82;
      case 22:
        v23 = 0xD000000000000019;
        v25 = &v112;
        goto LABEL_82;
      case 23:
        v23 = 0xD000000000000022;
        v25 = &v113;
        goto LABEL_82;
      case 24:
        v23 = 0xD000000000000017;
        v25 = &v114;
        goto LABEL_82;
      case 25:
        v23 = 0xD00000000000001CLL;
        v25 = &v115;
        goto LABEL_82;
      case 26:
        v23 = 0xD000000000000020;
        v25 = &v116;
        goto LABEL_82;
      case 27:
        v23 = 0xD00000000000001BLL;
        v25 = &v117;
        goto LABEL_82;
      case 28:
        v23 = 0xD000000000000024;
        v25 = &v118;
        goto LABEL_82;
      case 29:
        v23 = 0xD00000000000001ALL;
        v25 = &v119;
        goto LABEL_82;
      case 30:
        v23 = 0xD00000000000001FLL;
        v25 = &v120;
        goto LABEL_82;
      case 31:
        v23 = 0xD000000000000023;
        v25 = &v121;
LABEL_82:
        v24 = *(v25 - 32);
        break;
      default:
        break;
    }

    v7 = v5;
    if (v20 == v23 && v19 == v24)
    {
      break;
    }

    v27 = sub_25BEB4E64();

    if (v27)
    {
      goto LABEL_91;
    }

    v2 = (v2 + 1) & v96;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    v5 = v7;
    if ((v97[v2 >> 6] & (1 << v2)) == 0)
    {
      v7 = -1;
      goto LABEL_6;
    }
  }

LABEL_91:
  v5 = v7;
  v30 = *(v7 + 32);
  v64 = ((1 << v30) + 63) >> 6;
  v11 = 8 * v64;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_196;
  }

  while (2)
  {
    v65 = &v62;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v62 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v97, v31);
    v32 = *(v2 + 8 * v4) & ~v3;
    v33 = *(v5 + 16);
    v67 = v2;
    *(v2 + 8 * v4) = v32;
    v34 = v33 - 1;
    v35 = 0xED00007465656853;
    v36 = v92;
LABEL_93:
    v66 = v34;
LABEL_94:
    if (v10)
    {
      v37 = v94;
      goto LABEL_101;
    }

    v37 = v94;
    v38 = v95;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v91)
      {
        if (v91 <= v95 + 1)
        {
          v57 = v95 + 1;
        }

        else
        {
          v57 = v91;
        }

        v108 = v36;
        v109 = v94;
        v110 = v93;
        v111 = v57 - 1;
        v112 = 0;
        v5 = sub_25BE8A4F0(v67, v64, v66, v5);
LABEL_192:
        sub_25BE77B70();
        return v5;
      }

      v10 = *(v94 + 8 * v39);
      ++v38;
      if (v10)
      {
        v95 = v39;
LABEL_101:
        v40 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v41 = *(*(v36 + 48) + (v40 | (v95 << 6)));
        v108 = v36;
        v109 = v37;
        v110 = v93;
        v111 = v95;
        v112 = v10;
        v42 = v36;
        sub_25BEB4F04();
        v98 = v41;
        EngagementUIPlacement.rawValue.getter();
        sub_25BEB48C4();

        v2 = &v99;
        v43 = sub_25BEB4F24();
        v36 = v42;
        v44 = -1 << *(v5 + 32);
        v45 = v43 & ~v44;
        v3 = v45 >> 6;
        v4 = 1 << v45;
        if (((1 << v45) & v97[v45 >> 6]) == 0)
        {
          goto LABEL_94;
        }

        v96 = ~v44;
        while (2)
        {
          v2 = 0xED00007465656853;
          v46 = 0x6C6576654C707061;
          switch(*(*(v5 + 48) + v45))
          {
            case 1:
              v46 = 0x6C6576654C707061;
              v2 = 0xED00007473616F54;
              break;
            case 2:
              v46 = 0x73756C507377656ELL;
              v2 = 0xEF6D657449626154;
              break;
            case 3:
              v46 = 0xD000000000000010;
              v47 = &v99;
              goto LABEL_136;
            case 4:
              v46 = 0x6261546F69647561;
              v2 = 0xEC0000006D657449;
              break;
            case 5:
              v46 = 0xD000000000000010;
              v47 = &v100;
              goto LABEL_136;
            case 6:
              v48 = 0x686372616573;
              goto LABEL_125;
            case 7:
              v48 = 0x7374726F7073;
LABEL_125:
              v46 = v48 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
              v2 = 0xED00006D65744962;
              break;
            case 8:
              v46 = 0x5473656C7A7A7570;
              v2 = 0xEE006D6574496261;
              break;
            case 9:
              v46 = 0x6C6F46664F706F74;
              v2 = 0xEE00676E69776F6CLL;
              break;
            case 0xA:
              v46 = 0xD000000000000012;
              v47 = &v101;
              goto LABEL_136;
            case 0xB:
              v46 = 0xD00000000000001ALL;
              v47 = &v102;
              goto LABEL_136;
            case 0xC:
              v46 = 0xD00000000000001BLL;
              v47 = &v103;
              goto LABEL_136;
            case 0xD:
              v46 = 0x766153664F706F74;
              v2 = 0xEA00000000006465;
              break;
            case 0xE:
              v46 = 0xD000000000000011;
              v47 = &v104;
              goto LABEL_136;
            case 0xF:
              v46 = 0xD000000000000010;
              v47 = &v105;
              goto LABEL_136;
            case 0x10:
              v46 = 0xD000000000000010;
              v47 = &v106;
              goto LABEL_136;
            case 0x11:
              v46 = 0xD000000000000010;
              v47 = &v107;
              goto LABEL_136;
            case 0x12:
              v46 = 0xD000000000000017;
              v47 = &v108;
              goto LABEL_136;
            case 0x13:
              v46 = 0xD000000000000017;
              v47 = &v109;
              goto LABEL_136;
            case 0x14:
              v46 = 0xD00000000000001CLL;
              v47 = &v110;
              goto LABEL_136;
            case 0x15:
              v46 = 0xD000000000000020;
              v47 = &v111;
              goto LABEL_136;
            case 0x16:
              v46 = 0xD000000000000019;
              v47 = &v112;
              goto LABEL_136;
            case 0x17:
              v46 = 0xD000000000000022;
              v47 = &v113;
              goto LABEL_136;
            case 0x18:
              v46 = 0xD000000000000017;
              v47 = &v114;
              goto LABEL_136;
            case 0x19:
              v46 = 0xD00000000000001CLL;
              v47 = &v115;
              goto LABEL_136;
            case 0x1A:
              v46 = 0xD000000000000020;
              v47 = &v116;
              goto LABEL_136;
            case 0x1B:
              v46 = 0xD00000000000001BLL;
              v47 = &v117;
              goto LABEL_136;
            case 0x1C:
              v46 = 0xD000000000000024;
              v47 = &v118;
              goto LABEL_136;
            case 0x1D:
              v46 = 0xD00000000000001ALL;
              v47 = &v119;
              goto LABEL_136;
            case 0x1E:
              v46 = 0xD00000000000001FLL;
              v47 = &v120;
              goto LABEL_136;
            case 0x1F:
              v46 = 0xD000000000000023;
              v47 = &v121;
LABEL_136:
              v2 = *(v47 - 32);
              break;
            default:
              break;
          }

          v49 = 0x6C6576654C707061;
          switch(v41)
          {
            case 1:
              v50 = 0x6C6576654C707061;
              v51 = 0x7473616F54;
              goto LABEL_164;
            case 2:
              v35 = 0xEF6D657449626154;
              if (v46 != 0x73756C507377656ELL)
              {
                goto LABEL_180;
              }

              goto LABEL_179;
            case 3:
              v52 = 0xD000000000000010;
              v53 = &v99;
              goto LABEL_178;
            case 4:
              v35 = 0xEC0000006D657449;
              if (v46 != 0x6261546F69647561)
              {
                goto LABEL_180;
              }

              goto LABEL_179;
            case 5:
              v52 = 0xD000000000000010;
              v53 = &v100;
              goto LABEL_178;
            case 6:
              v54 = 0x686372616573;
              goto LABEL_163;
            case 7:
              v54 = 0x7374726F7073;
LABEL_163:
              v50 = v54 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
              v51 = 0x6D65744962;
LABEL_164:
              v35 = v51 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v46 != v50)
              {
                goto LABEL_180;
              }

              goto LABEL_179;
            case 8:
              v49 = 0x5473656C7A7A7570;
              v35 = 0xEE006D6574496261;
              goto LABEL_169;
            case 9:
              v35 = 0xEE00676E69776F6CLL;
              if (v46 != 0x6C6F46664F706F74)
              {
                goto LABEL_180;
              }

              goto LABEL_179;
            case 10:
              v52 = 0xD000000000000012;
              v53 = &v101;
              goto LABEL_178;
            case 11:
              v52 = 0xD00000000000001ALL;
              v53 = &v102;
              goto LABEL_178;
            case 12:
              v52 = 0xD00000000000001BLL;
              v53 = &v103;
              goto LABEL_178;
            case 13:
              v35 = 0xEA00000000006465;
              if (v46 != 0x766153664F706F74)
              {
                goto LABEL_180;
              }

              goto LABEL_179;
            case 14:
              v52 = 0xD000000000000011;
              v53 = &v104;
              goto LABEL_178;
            case 15:
              v52 = 0xD000000000000010;
              v53 = &v105;
              goto LABEL_178;
            case 16:
              v52 = 0xD000000000000010;
              v53 = &v106;
              goto LABEL_178;
            case 17:
              v52 = 0xD000000000000010;
              v53 = &v107;
              goto LABEL_178;
            case 18:
              v52 = 0xD000000000000017;
              v53 = &v108;
              goto LABEL_178;
            case 19:
              v52 = 0xD000000000000017;
              v53 = &v109;
              goto LABEL_178;
            case 20:
              v52 = 0xD00000000000001CLL;
              v53 = &v110;
              goto LABEL_178;
            case 21:
              v52 = 0xD000000000000020;
              v53 = &v111;
              goto LABEL_178;
            case 22:
              v52 = 0xD000000000000019;
              v53 = &v112;
              goto LABEL_178;
            case 23:
              v52 = 0xD000000000000022;
              v53 = &v113;
              goto LABEL_178;
            case 24:
              v52 = 0xD000000000000017;
              v53 = &v114;
              goto LABEL_178;
            case 25:
              v52 = 0xD00000000000001CLL;
              v53 = &v115;
              goto LABEL_178;
            case 26:
              v52 = 0xD000000000000020;
              v53 = &v116;
              goto LABEL_178;
            case 27:
              v52 = 0xD00000000000001BLL;
              v53 = &v117;
              goto LABEL_178;
            case 28:
              v52 = 0xD000000000000024;
              v53 = &v118;
              goto LABEL_178;
            case 29:
              v52 = 0xD00000000000001ALL;
              v53 = &v119;
              goto LABEL_178;
            case 30:
              v52 = 0xD00000000000001FLL;
              v53 = &v120;
              goto LABEL_178;
            case 31:
              v52 = 0xD000000000000023;
              v53 = &v121;
LABEL_178:
              v35 = *(v53 - 32);
              if (v46 == v52)
              {
                goto LABEL_179;
              }

              goto LABEL_180;
            default:
LABEL_169:
              if (v46 != v49)
              {
                goto LABEL_180;
              }

LABEL_179:
              if (v2 != v35)
              {
LABEL_180:
                v55 = sub_25BEB4E64();

                if (v55)
                {
                  goto LABEL_184;
                }

                v45 = (v45 + 1) & v96;
                v3 = v45 >> 6;
                v4 = 1 << v45;
                v35 = 0xED00007465656853;
                v5 = v7;
                if ((v97[v45 >> 6] & (1 << v45)) != 0)
                {
                  continue;
                }

                v36 = v92;
                goto LABEL_94;
              }

LABEL_184:
              v56 = v67[v3];
              v67[v3] = v56 & ~v4;
              v36 = v92;
              v35 = 0xED00007465656853;
              v5 = v7;
              if ((v56 & v4) == 0)
              {
                goto LABEL_94;
              }

              v34 = v66 - 1;
              if (__OFSUB__(v66, 1))
              {
                __break(1u);
              }

              if (v66 == 1)
              {

                v5 = MEMORY[0x277D84FA0];
                goto LABEL_192;
              }

              break;
          }

          goto LABEL_93;
        }
      }
    }

    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    v59 = v11;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v97, v59);
  v61 = v63;
  v5 = sub_25BE72C68(v60, v64, v5, v2, &v108);

  if (!v61)
  {

    MEMORY[0x25F87FD60](v60, -1, -1);
    goto LABEL_192;
  }

  result = MEMORY[0x25F87FD60](v60, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25BE709DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v101 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v3 = a1;
  v99 = a1;
  v63 = *(a1 + 16);
  if (v63)
  {
    v85 = 0x800000025BEB9D90;
    v86 = 0x800000025BEB9DB0;
    v84 = 0x800000025BEB9D70;
    v83 = 0x800000025BEB9D40;
    v82 = 0x800000025BEB9D20;
    v81 = 0x800000025BEB9CF0;
    v80 = 0x800000025BEB9CD0;
    v79 = 0x800000025BEB9CB0;
    v78 = 0x800000025BEB9C80;
    v77 = 0x800000025BEB9C60;
    v76 = 0x800000025BEB9C30;
    v75 = 0x800000025BEB9C10;
    v74 = 0x800000025BEB9BF0;
    v73 = 0x800000025BEB9BD0;
    v72 = 0x800000025BEB9BB0;
    v71 = 0x800000025BEB9B90;
    v70 = 0x800000025BEB9B70;
    v69 = 0x800000025BEB9B50;
    v68 = 0x800000025BEB9B20;
    v67 = 0x800000025BEB9B00;
    v66 = 0x800000025BEB9AE0;
    v65 = 0x800000025BEB9A90;
    v64 = 0x800000025BEB9A70;
    v4 = (a2 + 56);
    v5 = a1 + 32;

    v6 = 0;
    v90 = v4;
    v88 = v5;
    while (1)
    {
      v7 = *(v6 + v5);
      v6 = (v6 + 1);
      sub_25BEB4F04();
      v89 = v7;
      v91 = v7;
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      v8 = sub_25BEB4F24();
      v9 = -1 << *(v2 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v4 + (v10 >> 6))) != 0)
      {
        break;
      }

LABEL_4:
      v4 = v90;
      v5 = v88;
      if (v6 == v63)
      {
        goto LABEL_95;
      }
    }

    v13 = ~v9;
    while (2)
    {
      v14 = 0xED00007465656853;
      v15 = 0x6C6576654C707061;
      switch(*(*(v2 + 48) + v10))
      {
        case 1:
          v14 = 0xED00007473616F54;
          break;
        case 2:
          v15 = 0x73756C507377656ELL;
          v14 = 0xEF6D657449626154;
          break;
        case 3:
          v15 = 0xD000000000000010;
          v16 = &v93;
          goto LABEL_40;
        case 4:
          v15 = 0x6261546F69647561;
          v14 = 0xEC0000006D657449;
          break;
        case 5:
          v15 = 0xD000000000000010;
          v16 = &v94;
          goto LABEL_40;
        case 6:
          v17 = 0x686372616573;
          goto LABEL_29;
        case 7:
          v17 = 0x7374726F7073;
LABEL_29:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
          v14 = 0xED00006D65744962;
          break;
        case 8:
          v15 = 0x5473656C7A7A7570;
          v14 = 0xEE006D6574496261;
          break;
        case 9:
          v15 = 0x6C6F46664F706F74;
          v14 = 0xEE00676E69776F6CLL;
          break;
        case 0xA:
          v15 = 0xD000000000000012;
          v16 = &v95;
          goto LABEL_40;
        case 0xB:
          v15 = 0xD00000000000001ALL;
          v16 = &v96;
          goto LABEL_40;
        case 0xC:
          v15 = 0xD00000000000001BLL;
          v16 = &v97;
          goto LABEL_40;
        case 0xD:
          v15 = 0x766153664F706F74;
          v14 = 0xEA00000000006465;
          break;
        case 0xE:
          v15 = 0xD000000000000011;
          v16 = &v98;
          goto LABEL_40;
        case 0xF:
          v15 = 0xD000000000000010;
          v16 = &v99;
          goto LABEL_40;
        case 0x10:
          v15 = 0xD000000000000010;
          v16 = &v100;
          goto LABEL_40;
        case 0x11:
          v15 = 0xD000000000000010;
          v16 = &v101;
          goto LABEL_40;
        case 0x12:
          v15 = 0xD000000000000017;
          v16 = &v102;
          goto LABEL_40;
        case 0x13:
          v15 = 0xD000000000000017;
          v16 = &v103;
          goto LABEL_40;
        case 0x14:
          v15 = 0xD00000000000001CLL;
          v16 = &v104;
          goto LABEL_40;
        case 0x15:
          v15 = 0xD000000000000020;
          v16 = &v105;
          goto LABEL_40;
        case 0x16:
          v15 = 0xD000000000000019;
          v16 = &v106;
          goto LABEL_40;
        case 0x17:
          v15 = 0xD000000000000022;
          v16 = &v107;
          goto LABEL_40;
        case 0x18:
          v15 = 0xD000000000000017;
          v16 = &v108;
          goto LABEL_40;
        case 0x19:
          v15 = 0xD00000000000001CLL;
          v16 = &v109;
          goto LABEL_40;
        case 0x1A:
          v15 = 0xD000000000000020;
          v16 = &v110;
          goto LABEL_40;
        case 0x1B:
          v15 = 0xD00000000000001BLL;
          v16 = &v111;
          goto LABEL_40;
        case 0x1C:
          v15 = 0xD000000000000024;
          v16 = &v112;
LABEL_40:
          v14 = *(v16 - 32);
          break;
        case 0x1D:
          v15 = 0xD00000000000001ALL;
          v14 = v84;
          break;
        case 0x1E:
          v15 = 0xD00000000000001FLL;
          v14 = v85;
          break;
        case 0x1F:
          v15 = 0xD000000000000023;
          v14 = v86;
          break;
        default:
          break;
      }

      v18 = 0x6C6576654C707061;
      v19 = 0xED00007465656853;
      switch(v89)
      {
        case 1:
          v20 = 0x7473616F54;
          goto LABEL_68;
        case 2:
          v19 = 0xEF6D657449626154;
          if (v15 != 0x73756C507377656ELL)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 3:
          v21 = 0xD000000000000010;
          v22 = &v93;
          goto LABEL_85;
        case 4:
          v19 = 0xEC0000006D657449;
          if (v15 != 0x6261546F69647561)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 5:
          v21 = 0xD000000000000010;
          v22 = &v94;
          goto LABEL_85;
        case 6:
          v25 = 0x686372616573;
          goto LABEL_67;
        case 7:
          v25 = 0x7374726F7073;
LABEL_67:
          v18 = v25 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
          v20 = 0x6D65744962;
LABEL_68:
          v19 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v15 != v18)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 8:
          v23 = 0x5473656C7A7A7570;
          v24 = 0x6D6574496261;
          goto LABEL_73;
        case 9:
          v23 = 0x6C6F46664F706F74;
          v24 = 0x676E69776F6CLL;
LABEL_73:
          v19 = v24 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v15 != v23)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 10:
          v21 = 0xD000000000000012;
          v22 = &v95;
          goto LABEL_85;
        case 11:
          v21 = 0xD00000000000001ALL;
          v22 = &v96;
          goto LABEL_85;
        case 12:
          v21 = 0xD00000000000001BLL;
          v22 = &v97;
          goto LABEL_85;
        case 13:
          v19 = 0xEA00000000006465;
          if (v15 != 0x766153664F706F74)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 14:
          v21 = 0xD000000000000011;
          v22 = &v98;
          goto LABEL_85;
        case 15:
          v21 = 0xD000000000000010;
          v22 = &v99;
          goto LABEL_85;
        case 16:
          v21 = 0xD000000000000010;
          v22 = &v100;
          goto LABEL_85;
        case 17:
          v21 = 0xD000000000000010;
          v22 = &v101;
          goto LABEL_85;
        case 18:
          v21 = 0xD000000000000017;
          v22 = &v102;
          goto LABEL_85;
        case 19:
          v21 = 0xD000000000000017;
          v22 = &v103;
          goto LABEL_85;
        case 20:
          v21 = 0xD00000000000001CLL;
          v22 = &v104;
          goto LABEL_85;
        case 21:
          v21 = 0xD000000000000020;
          v22 = &v105;
          goto LABEL_85;
        case 22:
          v21 = 0xD000000000000019;
          v22 = &v106;
          goto LABEL_85;
        case 23:
          v21 = 0xD000000000000022;
          v22 = &v107;
          goto LABEL_85;
        case 24:
          v21 = 0xD000000000000017;
          v22 = &v108;
          goto LABEL_85;
        case 25:
          v21 = 0xD00000000000001CLL;
          v22 = &v109;
          goto LABEL_85;
        case 26:
          v21 = 0xD000000000000020;
          v22 = &v110;
          goto LABEL_85;
        case 27:
          v21 = 0xD00000000000001BLL;
          v22 = &v111;
          goto LABEL_85;
        case 28:
          v21 = 0xD000000000000024;
          v22 = &v112;
LABEL_85:
          v19 = *(v22 - 32);
          if (v15 == v21)
          {
            goto LABEL_86;
          }

          goto LABEL_87;
        case 29:
          v18 = 0xD00000000000001ALL;
          v19 = v84;
          goto LABEL_82;
        case 30:
          v19 = v85;
          if (v15 != 0xD00000000000001FLL)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 31:
          v19 = v86;
          if (v15 != 0xD000000000000023)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        default:
LABEL_82:
          if (v15 != v18)
          {
            goto LABEL_87;
          }

LABEL_86:
          if (v14 == v19)
          {

LABEL_92:
            v100 = v6;
            v29 = *(v2 + 32);
            v61 = ((1 << v29) + 63) >> 6;
            v30 = 8 * v61;
            if ((v29 & 0x3Fu) > 0xD)
            {
              goto LABEL_192;
            }

LABEL_93:
            v62 = &v60;
            MEMORY[0x28223BE20](v27, v28);
            v10 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
            memcpy(v10, v90, v31);
            v32 = *(v2 + 16);
            v33 = *(v10 + 8 * v11) & ~v12;
            v63 = v10;
            *(v10 + 8 * v11) = v33;
            v89 = v32 - 1;
            v34 = *(v3 + 16);
            if (v6 == v34)
            {
LABEL_94:
              v2 = sub_25BE8A4F0(v63, v61, v89, v2);
              goto LABEL_95;
            }

            v12 = v90;
            v87 = v3;
LABEL_99:
            if (v6 >= v34)
            {
              __break(1u);
              goto LABEL_191;
            }

            v36 = *(v6 + v88);
            sub_25BEB4F04();
            v91 = v36;
            EngagementUIPlacement.rawValue.getter();
            sub_25BEB48C4();

            v10 = &v92;
            v37 = sub_25BEB4F24();
            v38 = -1 << *(v2 + 32);
            v39 = v37 & ~v38;
            v40 = v39 >> 6;
            v41 = 1 << v39;
            if (((1 << v39) & *(v12 + 8 * (v39 >> 6))) == 0)
            {
              goto LABEL_98;
            }

            v42 = ~v38;
            while (1)
            {
              v10 = 0xED00007465656853;
              v43 = 0x6C6576654C707061;
              switch(*(*(v2 + 48) + v39))
              {
                case 1:
                  v10 = 0xED00007473616F54;
                  break;
                case 2:
                  v43 = 0x73756C507377656ELL;
                  v10 = 0xEF6D657449626154;
                  break;
                case 3:
                  v43 = 0xD000000000000010;
                  v44 = &v93;
                  goto LABEL_135;
                case 4:
                  v43 = 0x6261546F69647561;
                  v10 = 0xEC0000006D657449;
                  break;
                case 5:
                  v43 = 0xD000000000000010;
                  v44 = &v94;
                  goto LABEL_135;
                case 6:
                  v45 = 0x686372616573;
                  goto LABEL_124;
                case 7:
                  v45 = 0x7374726F7073;
LABEL_124:
                  v43 = v45 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
                  v10 = 0xED00006D65744962;
                  break;
                case 8:
                  v43 = 0x5473656C7A7A7570;
                  v10 = 0xEE006D6574496261;
                  break;
                case 9:
                  v43 = 0x6C6F46664F706F74;
                  v10 = 0xEE00676E69776F6CLL;
                  break;
                case 0xA:
                  v43 = 0xD000000000000012;
                  v44 = &v95;
                  goto LABEL_135;
                case 0xB:
                  v43 = 0xD00000000000001ALL;
                  v44 = &v96;
                  goto LABEL_135;
                case 0xC:
                  v43 = 0xD00000000000001BLL;
                  v44 = &v97;
                  goto LABEL_135;
                case 0xD:
                  v43 = 0x766153664F706F74;
                  v10 = 0xEA00000000006465;
                  break;
                case 0xE:
                  v43 = 0xD000000000000011;
                  v44 = &v98;
                  goto LABEL_135;
                case 0xF:
                  v43 = 0xD000000000000010;
                  v44 = &v99;
                  goto LABEL_135;
                case 0x10:
                  v43 = 0xD000000000000010;
                  v44 = &v100;
                  goto LABEL_135;
                case 0x11:
                  v43 = 0xD000000000000010;
                  v44 = &v101;
                  goto LABEL_135;
                case 0x12:
                  v43 = 0xD000000000000017;
                  v44 = &v102;
                  goto LABEL_135;
                case 0x13:
                  v43 = 0xD000000000000017;
                  v44 = &v103;
                  goto LABEL_135;
                case 0x14:
                  v43 = 0xD00000000000001CLL;
                  v44 = &v104;
                  goto LABEL_135;
                case 0x15:
                  v43 = 0xD000000000000020;
                  v44 = &v105;
                  goto LABEL_135;
                case 0x16:
                  v43 = 0xD000000000000019;
                  v44 = &v106;
                  goto LABEL_135;
                case 0x17:
                  v43 = 0xD000000000000022;
                  v44 = &v107;
                  goto LABEL_135;
                case 0x18:
                  v43 = 0xD000000000000017;
                  v44 = &v108;
                  goto LABEL_135;
                case 0x19:
                  v43 = 0xD00000000000001CLL;
                  v44 = &v109;
                  goto LABEL_135;
                case 0x1A:
                  v43 = 0xD000000000000020;
                  v44 = &v110;
                  goto LABEL_135;
                case 0x1B:
                  v43 = 0xD00000000000001BLL;
                  v44 = &v111;
                  goto LABEL_135;
                case 0x1C:
                  v43 = 0xD000000000000024;
                  v44 = &v112;
LABEL_135:
                  v10 = *(v44 - 32);
                  break;
                case 0x1D:
                  v43 = 0xD00000000000001ALL;
                  v10 = v84;
                  break;
                case 0x1E:
                  v43 = 0xD00000000000001FLL;
                  v10 = v85;
                  break;
                case 0x1F:
                  v43 = 0xD000000000000023;
                  v10 = v86;
                  break;
                default:
                  break;
              }

              v46 = 0x6C6576654C707061;
              v47 = 0xED00007465656853;
              switch(v36)
              {
                case 1:
                  v48 = 0x7473616F54;
                  goto LABEL_163;
                case 2:
                  v47 = 0xEF6D657449626154;
                  if (v43 != 0x73756C507377656ELL)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                case 3:
                  v49 = 0xD000000000000010;
                  v50 = &v93;
                  goto LABEL_180;
                case 4:
                  v47 = 0xEC0000006D657449;
                  if (v43 != 0x6261546F69647561)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                case 5:
                  v49 = 0xD000000000000010;
                  v50 = &v94;
                  goto LABEL_180;
                case 6:
                  v53 = 0x686372616573;
                  goto LABEL_162;
                case 7:
                  v53 = 0x7374726F7073;
LABEL_162:
                  v46 = v53 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
                  v48 = 0x6D65744962;
LABEL_163:
                  v47 = v48 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                  if (v43 != v46)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                case 8:
                  v51 = 0x5473656C7A7A7570;
                  v52 = 0x6D6574496261;
                  goto LABEL_168;
                case 9:
                  v51 = 0x6C6F46664F706F74;
                  v52 = 0x676E69776F6CLL;
LABEL_168:
                  v47 = v52 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  if (v43 != v51)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                case 10:
                  v49 = 0xD000000000000012;
                  v50 = &v95;
                  goto LABEL_180;
                case 11:
                  v49 = 0xD00000000000001ALL;
                  v50 = &v96;
                  goto LABEL_180;
                case 12:
                  v49 = 0xD00000000000001BLL;
                  v50 = &v97;
                  goto LABEL_180;
                case 13:
                  v47 = 0xEA00000000006465;
                  if (v43 != 0x766153664F706F74)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                case 14:
                  v49 = 0xD000000000000011;
                  v50 = &v98;
                  goto LABEL_180;
                case 15:
                  v49 = 0xD000000000000010;
                  v50 = &v99;
                  goto LABEL_180;
                case 16:
                  v49 = 0xD000000000000010;
                  v50 = &v100;
                  goto LABEL_180;
                case 17:
                  v49 = 0xD000000000000010;
                  v50 = &v101;
                  goto LABEL_180;
                case 18:
                  v49 = 0xD000000000000017;
                  v50 = &v102;
                  goto LABEL_180;
                case 19:
                  v49 = 0xD000000000000017;
                  v50 = &v103;
                  goto LABEL_180;
                case 20:
                  v49 = 0xD00000000000001CLL;
                  v50 = &v104;
                  goto LABEL_180;
                case 21:
                  v49 = 0xD000000000000020;
                  v50 = &v105;
                  goto LABEL_180;
                case 22:
                  v49 = 0xD000000000000019;
                  v50 = &v106;
                  goto LABEL_180;
                case 23:
                  v49 = 0xD000000000000022;
                  v50 = &v107;
                  goto LABEL_180;
                case 24:
                  v49 = 0xD000000000000017;
                  v50 = &v108;
                  goto LABEL_180;
                case 25:
                  v49 = 0xD00000000000001CLL;
                  v50 = &v109;
                  goto LABEL_180;
                case 26:
                  v49 = 0xD000000000000020;
                  v50 = &v110;
                  goto LABEL_180;
                case 27:
                  v49 = 0xD00000000000001BLL;
                  v50 = &v111;
                  goto LABEL_180;
                case 28:
                  v49 = 0xD000000000000024;
                  v50 = &v112;
LABEL_180:
                  v47 = *(v50 - 32);
                  if (v43 == v49)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_182;
                case 29:
                  v46 = 0xD00000000000001ALL;
                  v47 = v84;
                  goto LABEL_177;
                case 30:
                  v47 = v85;
                  if (v43 != 0xD00000000000001FLL)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                case 31:
                  v47 = v86;
                  if (v43 != 0xD000000000000023)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_181;
                default:
LABEL_177:
                  if (v43 != v46)
                  {
                    goto LABEL_182;
                  }

LABEL_181:
                  if (v10 == v47)
                  {

LABEL_186:
                    v54 = v63[v40];
                    v63[v40] = v54 & ~v41;
                    v3 = v87;
                    v12 = v90;
                    if ((v54 & v41) == 0)
                    {
                      goto LABEL_98;
                    }

                    v55 = v89 - 1;
                    if (!__OFSUB__(v89, 1))
                    {
                      --v89;
                      if (!v55)
                      {

                        v2 = MEMORY[0x277D84FA0];
LABEL_95:

                        return v2;
                      }

LABEL_98:
                      v6 = (v6 + 1);
                      v34 = *(v3 + 16);
                      if (v6 == v34)
                      {
                        goto LABEL_94;
                      }

                      goto LABEL_99;
                    }

LABEL_191:
                    __break(1u);
LABEL_192:
                    v56 = v30;

                    v57 = v56;
                    if (!swift_stdlib_isStackAllocationSafe())
                    {
                      v58 = swift_slowAlloc();
                      memcpy(v58, v90, v57);
                      v59 = sub_25BE736F4(v58, v61, v2, v10, &v99);

                      MEMORY[0x25F87FD60](v58, -1, -1);

                      return v59;
                    }

                    goto LABEL_93;
                  }

LABEL_182:
                  v11 = sub_25BEB4E64();

                  if (v11)
                  {
                    goto LABEL_186;
                  }

                  v39 = (v39 + 1) & v42;
                  v40 = v39 >> 6;
                  v12 = v90;
                  v41 = 1 << v39;
                  if ((*(v90 + (v39 >> 6)) & (1 << v39)) == 0)
                  {
                    v3 = v87;
                    goto LABEL_98;
                  }

                  break;
              }
            }
          }

LABEL_87:
          v26 = sub_25BEB4E64();

          if (v26)
          {
            goto LABEL_92;
          }

          v10 = (v10 + 1) & v13;
          v11 = v10 >> 6;
          v12 = 1 << v10;
          if ((*(v90 + (v10 >> 6)) & (1 << v10)) == 0)
          {
            goto LABEL_4;
          }

          continue;
      }
    }
  }

  return v2;
}

uint64_t sub_25BE71CE0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_25BE71DE4(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t sub_25BE71DE4@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_25BEB4F04();
  EngagementUIPlacement.rawValue.getter();
  sub_25BEB48C4();

  result = sub_25BEB4F24();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_103:
    *a2 = 32;
    return result;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED00007465656853;
    v10 = 0x6C6576654C707061;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xED00007473616F54;
        v10 = 0x6C6576654C707061;
        break;
      case 2:
        v10 = 0x73756C507377656ELL;
        v9 = 0xEF6D657449626154;
        break;
      case 3:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9A70;
        break;
      case 4:
        v10 = 0x6261546F69647561;
        v9 = 0xEC0000006D657449;
        break;
      case 5:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9A90;
        break;
      case 6:
        v11 = 0x686372616573;
        goto LABEL_25;
      case 7:
        v11 = 0x7374726F7073;
LABEL_25:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
        v9 = 0xED00006D65744962;
        break;
      case 8:
        v10 = 0x5473656C7A7A7570;
        v9 = 0xEE006D6574496261;
        break;
      case 9:
        v10 = 0x6C6F46664F706F74;
        v9 = 0xEE00676E69776F6CLL;
        break;
      case 0xA:
        v10 = 0xD000000000000012;
        v9 = 0x800000025BEB9AE0;
        break;
      case 0xB:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000025BEB9B00;
        break;
      case 0xC:
        v10 = 0xD00000000000001BLL;
        v9 = 0x800000025BEB9B20;
        break;
      case 0xD:
        v10 = 0x766153664F706F74;
        v9 = 0xEA00000000006465;
        break;
      case 0xE:
        v10 = 0xD000000000000011;
        v9 = 0x800000025BEB9B50;
        break;
      case 0xF:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9B70;
        break;
      case 0x10:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9B90;
        break;
      case 0x11:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9BB0;
        break;
      case 0x12:
        v10 = 0xD000000000000017;
        v9 = 0x800000025BEB9BD0;
        break;
      case 0x13:
        v10 = 0xD000000000000017;
        v9 = 0x800000025BEB9BF0;
        break;
      case 0x14:
        v10 = 0xD00000000000001CLL;
        v9 = 0x800000025BEB9C10;
        break;
      case 0x15:
        v10 = 0xD000000000000020;
        v9 = 0x800000025BEB9C30;
        break;
      case 0x16:
        v10 = 0xD000000000000019;
        v9 = 0x800000025BEB9C60;
        break;
      case 0x17:
        v10 = 0xD000000000000022;
        v9 = 0x800000025BEB9C80;
        break;
      case 0x18:
        v10 = 0xD000000000000017;
        v9 = 0x800000025BEB9CB0;
        break;
      case 0x19:
        v10 = 0xD00000000000001CLL;
        v9 = 0x800000025BEB9CD0;
        break;
      case 0x1A:
        v10 = 0xD000000000000020;
        v9 = 0x800000025BEB9CF0;
        break;
      case 0x1B:
        v10 = 0xD00000000000001BLL;
        v9 = 0x800000025BEB9D20;
        break;
      case 0x1C:
        v10 = 0xD000000000000024;
        v9 = 0x800000025BEB9D40;
        break;
      case 0x1D:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000025BEB9D70;
        break;
      case 0x1E:
        v10 = 0xD00000000000001FLL;
        v9 = 0x800000025BEB9D90;
        break;
      case 0x1F:
        v10 = 0xD000000000000023;
        v9 = 0x800000025BEB9DB0;
        break;
      default:
        break;
    }

    v12 = 0x6C6576654C707061;
    v13 = 0xED00007465656853;
    switch(a1)
    {
      case 1:
        v13 = 0xED00007473616F54;
        if (v10 == 0x6C6576654C707061)
        {
          goto LABEL_97;
        }

        goto LABEL_98;
      case 2:
        v13 = 0xEF6D657449626154;
        if (v10 != 0x73756C507377656ELL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 3:
        v13 = 0x800000025BEB9A70;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 4:
        v13 = 0xEC0000006D657449;
        if (v10 != 0x6261546F69647561)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 5:
        v13 = 0x800000025BEB9A90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 6:
        v16 = 0x686372616573;
        goto LABEL_76;
      case 7:
        v16 = 0x7374726F7073;
LABEL_76:
        v13 = 0xED00006D65744962;
        if (v10 != (v16 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 8:
        v14 = 0x5473656C7A7A7570;
        v15 = 0x6D6574496261;
        goto LABEL_83;
      case 9:
        v14 = 0x6C6F46664F706F74;
        v15 = 0x676E69776F6CLL;
LABEL_83:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v14)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 10:
        v13 = 0x800000025BEB9AE0;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 11:
        v13 = 0x800000025BEB9B00;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 12:
        v13 = 0x800000025BEB9B20;
        if (v10 != 0xD00000000000001BLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 13:
        v13 = 0xEA00000000006465;
        if (v10 != 0x766153664F706F74)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 14:
        v13 = 0x800000025BEB9B50;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 15:
        v13 = 0x800000025BEB9B70;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 16:
        v13 = 0x800000025BEB9B90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 17:
        v13 = 0x800000025BEB9BB0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 18:
        v13 = 0x800000025BEB9BD0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 19:
        v13 = 0x800000025BEB9BF0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 20:
        v13 = 0x800000025BEB9C10;
        if (v10 != 0xD00000000000001CLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 21:
        v13 = 0x800000025BEB9C30;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 22:
        v13 = 0x800000025BEB9C60;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 23:
        v13 = 0x800000025BEB9C80;
        if (v10 != 0xD000000000000022)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 24:
        v13 = 0x800000025BEB9CB0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 25:
        v13 = 0x800000025BEB9CD0;
        if (v10 != 0xD00000000000001CLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 26:
        v13 = 0x800000025BEB9CF0;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 27:
        v13 = 0x800000025BEB9D20;
        if (v10 != 0xD00000000000001BLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 28:
        v13 = 0x800000025BEB9D40;
        if (v10 != 0xD000000000000024)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 29:
        v12 = 0xD00000000000001ALL;
        v13 = 0x800000025BEB9D70;
        goto LABEL_96;
      case 30:
        v13 = 0x800000025BEB9D90;
        if (v10 != 0xD00000000000001FLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 31:
        v13 = 0x800000025BEB9DB0;
        if (v10 != 0xD000000000000023)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      default:
LABEL_96:
        if (v10 != v12)
        {
          goto LABEL_98;
        }

LABEL_97:
        if (v9 != v13)
        {
LABEL_98:
          v17 = sub_25BEB4E64();

          if (v17)
          {
            goto LABEL_105;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_103;
          }

          continue;
        }

LABEL_105:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v20;
        v22 = *v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BE740E4();
          v19 = v22;
        }

        *a2 = *(*(v19 + 48) + v7);
        result = sub_25BE747C8(v7);
        *v20 = v22;
        return result;
    }
  }
}

uint64_t sub_25BE727B0()
{
  v1 = v0;
  v2 = *v0;
  sub_25BE77A9C();
  result = sub_25BEB4B74();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_25BEB4F04();
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25BE72A14()
{
  v1 = v0;
  v2 = *v0;
  sub_25BE77958();
  result = sub_25BEB4B74();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25BEB4F04();
      sub_25BEB48C4();
      result = sub_25BEB4F24();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25BE72C68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v34 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v7 = 0xED00007465656853;
  v36 = a3 + 56;
LABEL_2:
  v33 = v6;
  while (1)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (!v9)
    {
      break;
    }

    v10 = a5[3];
LABEL_9:
    v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
    a5[3] = v10;
    a5[4] = (v9 - 1) & v9;
    sub_25BEB4F04();
    EngagementUIPlacement.rawValue.getter();
    sub_25BEB48C4();

    result = sub_25BEB4F24();
    v14 = -1 << *(a3 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v36 + 8 * (v15 >> 6))) != 0)
    {
      v18 = ~v14;
LABEL_11:
      v19 = v7;
      v20 = 0x6C6576654C707061;
      switch(*(*(a3 + 48) + v15))
      {
        case 1:
          v20 = 0x6C6576654C707061;
          v19 = 0xED00007473616F54;
          break;
        case 2:
          v20 = 0x73756C507377656ELL;
          v19 = 0xEF6D657449626154;
          break;
        case 3:
          v20 = 0xD000000000000010;
          v19 = 0x800000025BEB9A70;
          break;
        case 4:
          v20 = 0x6261546F69647561;
          v19 = 0xEC0000006D657449;
          break;
        case 5:
          v20 = 0xD000000000000010;
          v19 = 0x800000025BEB9A90;
          break;
        case 6:
          v21 = 0x686372616573;
          goto LABEL_33;
        case 7:
          v21 = 0x7374726F7073;
LABEL_33:
          v20 = v21 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
          v19 = 0xED00006D65744962;
          break;
        case 8:
          v20 = 0x5473656C7A7A7570;
          v19 = 0xEE006D6574496261;
          break;
        case 9:
          v20 = 0x6C6F46664F706F74;
          v19 = 0xEE00676E69776F6CLL;
          break;
        case 0xA:
          v20 = 0xD000000000000012;
          v19 = 0x800000025BEB9AE0;
          break;
        case 0xB:
          v20 = 0xD00000000000001ALL;
          v19 = 0x800000025BEB9B00;
          break;
        case 0xC:
          v20 = 0xD00000000000001BLL;
          v19 = 0x800000025BEB9B20;
          break;
        case 0xD:
          v20 = 0x766153664F706F74;
          v19 = 0xEA00000000006465;
          break;
        case 0xE:
          v20 = 0xD000000000000011;
          v19 = 0x800000025BEB9B50;
          break;
        case 0xF:
          v20 = 0xD000000000000010;
          v19 = 0x800000025BEB9B70;
          break;
        case 0x10:
          v20 = 0xD000000000000010;
          v19 = 0x800000025BEB9B90;
          break;
        case 0x11:
          v20 = 0xD000000000000010;
          v19 = 0x800000025BEB9BB0;
          break;
        case 0x12:
          v20 = 0xD000000000000017;
          v19 = 0x800000025BEB9BD0;
          break;
        case 0x13:
          v20 = 0xD000000000000017;
          v19 = 0x800000025BEB9BF0;
          break;
        case 0x14:
          v20 = 0xD00000000000001CLL;
          v19 = 0x800000025BEB9C10;
          break;
        case 0x15:
          v20 = 0xD000000000000020;
          v19 = 0x800000025BEB9C30;
          break;
        case 0x16:
          v20 = 0xD000000000000019;
          v19 = 0x800000025BEB9C60;
          break;
        case 0x17:
          v20 = 0xD000000000000022;
          v19 = 0x800000025BEB9C80;
          break;
        case 0x18:
          v20 = 0xD000000000000017;
          v19 = 0x800000025BEB9CB0;
          break;
        case 0x19:
          v20 = 0xD00000000000001CLL;
          v19 = 0x800000025BEB9CD0;
          break;
        case 0x1A:
          v20 = 0xD000000000000020;
          v19 = 0x800000025BEB9CF0;
          break;
        case 0x1B:
          v20 = 0xD00000000000001BLL;
          v19 = 0x800000025BEB9D20;
          break;
        case 0x1C:
          v20 = 0xD000000000000024;
          v19 = 0x800000025BEB9D40;
          break;
        case 0x1D:
          v20 = 0xD00000000000001ALL;
          v19 = 0x800000025BEB9D70;
          break;
        case 0x1E:
          v20 = 0xD00000000000001FLL;
          v19 = 0x800000025BEB9D90;
          break;
        case 0x1F:
          v20 = 0xD000000000000023;
          v19 = 0x800000025BEB9DB0;
          break;
        default:
          break;
      }

      v22 = 0x6C6576654C707061;
      v23 = v7;
      switch(v13)
      {
        case 1:
          v24 = 0x6C6576654C707061;
          v25 = 0x7473616F54;
          goto LABEL_84;
        case 2:
          v7 = 0xEF6D657449626154;
          if (v20 != 0x73756C507377656ELL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 3:
          v7 = 0x800000025BEB9A70;
          if (v20 != 0xD000000000000010)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 4:
          v7 = 0xEC0000006D657449;
          if (v20 != 0x6261546F69647561)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 5:
          v7 = 0x800000025BEB9A90;
          if (v20 != 0xD000000000000010)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 6:
          v28 = 0x686372616573;
          goto LABEL_83;
        case 7:
          v28 = 0x7374726F7073;
LABEL_83:
          v24 = v28 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
          v25 = 0x6D65744962;
LABEL_84:
          v7 = v25 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v20 != v24)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 8:
          v26 = 0x5473656C7A7A7570;
          v27 = 0x6D6574496261;
          goto LABEL_91;
        case 9:
          v26 = 0x6C6F46664F706F74;
          v27 = 0x676E69776F6CLL;
LABEL_91:
          v7 = v27 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v20 != v26)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 10:
          v7 = 0x800000025BEB9AE0;
          if (v20 != 0xD000000000000012)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 11:
          v7 = 0x800000025BEB9B00;
          if (v20 != 0xD00000000000001ALL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 12:
          v7 = 0x800000025BEB9B20;
          if (v20 != 0xD00000000000001BLL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 13:
          v7 = 0xEA00000000006465;
          if (v20 != 0x766153664F706F74)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 14:
          v7 = 0x800000025BEB9B50;
          if (v20 != 0xD000000000000011)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 15:
          v7 = 0x800000025BEB9B70;
          if (v20 != 0xD000000000000010)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 16:
          v7 = 0x800000025BEB9B90;
          if (v20 != 0xD000000000000010)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 17:
          v7 = 0x800000025BEB9BB0;
          if (v20 != 0xD000000000000010)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 18:
          v7 = 0x800000025BEB9BD0;
          if (v20 != 0xD000000000000017)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 19:
          v7 = 0x800000025BEB9BF0;
          if (v20 != 0xD000000000000017)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 20:
          v7 = 0x800000025BEB9C10;
          if (v20 != 0xD00000000000001CLL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 21:
          v7 = 0x800000025BEB9C30;
          if (v20 != 0xD000000000000020)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 22:
          v7 = 0x800000025BEB9C60;
          if (v20 != 0xD000000000000019)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 23:
          v7 = 0x800000025BEB9C80;
          if (v20 != 0xD000000000000022)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 24:
          v7 = 0x800000025BEB9CB0;
          if (v20 != 0xD000000000000017)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 25:
          v7 = 0x800000025BEB9CD0;
          if (v20 != 0xD00000000000001CLL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 26:
          v7 = 0x800000025BEB9CF0;
          if (v20 != 0xD000000000000020)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 27:
          v7 = 0x800000025BEB9D20;
          if (v20 != 0xD00000000000001BLL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 28:
          v7 = 0x800000025BEB9D40;
          if (v20 != 0xD000000000000024)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 29:
          v22 = 0xD00000000000001ALL;
          v7 = 0x800000025BEB9D70;
          goto LABEL_104;
        case 30:
          v7 = 0x800000025BEB9D90;
          if (v20 != 0xD00000000000001FLL)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        case 31:
          v7 = 0x800000025BEB9DB0;
          if (v20 != 0xD000000000000023)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        default:
LABEL_104:
          if (v20 != v22)
          {
            goto LABEL_106;
          }

LABEL_105:
          if (v19 != v7)
          {
LABEL_106:
            v29 = sub_25BEB4E64();

            if (v29)
            {
              goto LABEL_112;
            }

            v15 = (v15 + 1) & v18;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            v7 = v23;
            if ((*(v36 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
            {
              continue;
            }

            goto LABEL_11;
          }

LABEL_112:
          v30 = v34[v16];
          v34[v16] = v30 & ~v17;
          v7 = v23;
          if ((v30 & v17) == 0)
          {
            continue;
          }

          v6 = v33 - 1;
          if (__OFSUB__(v33, 1))
          {
LABEL_121:
            __break(1u);
            return result;
          }

          if (v33 == 1)
          {
            return MEMORY[0x277D84FA0];
          }

          break;
      }

      goto LABEL_2;
    }
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_121;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v31 = v8 + 1;
  }

  else
  {
    v31 = (a5[2] + 64) >> 6;
  }

  a5[3] = v31 - 1;
  a5[4] = 0;

  return sub_25BE8A4F0(v34, a2, v33, a3);
}

uint64_t sub_25BE736F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v30 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v32 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_25BE8A4F0(v30, a2, v32, v5);
  }

  else
  {
    v10 = a5;
    v11 = 0xED00007465656853;
    v12 = 0x6C6576654C707061;
    v34 = a3 + 56;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= v9)
      {
        goto LABEL_87;
      }

      v13 = *(v7 + v8 + 32);
      v10[1] = v8 + 1;
      sub_25BEB4F04();
      v35 = v13;
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v14 = -1 << *(v5 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v34 + 8 * (v15 >> 6))) != 0)
      {
        v33 = ~v14;
        while (1)
        {
          v18 = v11;
          v19 = v12;
          switch(*(*(v5 + 48) + v15))
          {
            case 1:
              v19 = v12;
              v18 = 0xED00007473616F54;
              break;
            case 2:
              v19 = 0x73756C507377656ELL;
              v18 = 0xEF6D657449626154;
              break;
            case 3:
              v19 = 0xD000000000000010;
              v18 = 0x800000025BEB9A70;
              break;
            case 4:
              v19 = 0x6261546F69647561;
              v18 = 0xEC0000006D657449;
              break;
            case 5:
              v19 = 0xD000000000000010;
              v18 = 0x800000025BEB9A90;
              break;
            case 6:
              v20 = 0x686372616573;
              goto LABEL_32;
            case 7:
              v20 = 0x7374726F7073;
LABEL_32:
              v19 = v20 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
              v18 = 0xED00006D65744962;
              break;
            case 8:
              v19 = 0x5473656C7A7A7570;
              v18 = 0xEE006D6574496261;
              break;
            case 9:
              v19 = 0x6C6F46664F706F74;
              v18 = 0xEE00676E69776F6CLL;
              break;
            case 0xA:
              v19 = 0xD000000000000012;
              v18 = 0x800000025BEB9AE0;
              break;
            case 0xB:
              v19 = 0xD00000000000001ALL;
              v18 = 0x800000025BEB9B00;
              break;
            case 0xC:
              v19 = 0xD00000000000001BLL;
              v18 = 0x800000025BEB9B20;
              break;
            case 0xD:
              v19 = 0x766153664F706F74;
              v18 = 0xEA00000000006465;
              break;
            case 0xE:
              v19 = 0xD000000000000011;
              v18 = 0x800000025BEB9B50;
              break;
            case 0xF:
              v19 = 0xD000000000000010;
              v18 = 0x800000025BEB9B70;
              break;
            case 0x10:
              v19 = 0xD000000000000010;
              v18 = 0x800000025BEB9B90;
              break;
            case 0x11:
              v19 = 0xD000000000000010;
              v18 = 0x800000025BEB9BB0;
              break;
            case 0x12:
              v19 = 0xD000000000000017;
              v18 = 0x800000025BEB9BD0;
              break;
            case 0x13:
              v19 = 0xD000000000000017;
              v18 = 0x800000025BEB9BF0;
              break;
            case 0x14:
              v19 = 0xD00000000000001CLL;
              v18 = 0x800000025BEB9C10;
              break;
            case 0x15:
              v19 = 0xD000000000000020;
              v18 = 0x800000025BEB9C30;
              break;
            case 0x16:
              v19 = 0xD000000000000019;
              v18 = 0x800000025BEB9C60;
              break;
            case 0x17:
              v19 = 0xD000000000000022;
              v18 = 0x800000025BEB9C80;
              break;
            case 0x18:
              v19 = 0xD000000000000017;
              v18 = 0x800000025BEB9CB0;
              break;
            case 0x19:
              v19 = 0xD00000000000001CLL;
              v18 = 0x800000025BEB9CD0;
              break;
            case 0x1A:
              v19 = 0xD000000000000020;
              v18 = 0x800000025BEB9CF0;
              break;
            case 0x1B:
              v19 = 0xD00000000000001BLL;
              v18 = 0x800000025BEB9D20;
              break;
            case 0x1C:
              v19 = 0xD000000000000024;
              v18 = 0x800000025BEB9D40;
              break;
            case 0x1D:
              v19 = 0xD00000000000001ALL;
              v18 = 0x800000025BEB9D70;
              break;
            case 0x1E:
              v19 = 0xD00000000000001FLL;
              v18 = 0x800000025BEB9D90;
              break;
            case 0x1F:
              v19 = 0xD000000000000023;
              v18 = 0x800000025BEB9DB0;
              break;
            default:
              break;
          }

          v21 = v12;
          v22 = v11;
          switch(v35)
          {
            case 1:
              v21 = v12;
              v11 = 0xED00007473616F54;
              break;
            case 2:
              v21 = 0x73756C507377656ELL;
              v11 = 0xEF6D657449626154;
              break;
            case 3:
              v21 = 0xD000000000000010;
              v11 = 0x800000025BEB9A70;
              break;
            case 4:
              v21 = 0x6261546F69647561;
              v11 = 0xEC0000006D657449;
              break;
            case 5:
              v21 = 0xD000000000000010;
              v11 = 0x800000025BEB9A90;
              break;
            case 6:
              v23 = 0x686372616573;
              goto LABEL_65;
            case 7:
              v23 = 0x7374726F7073;
LABEL_65:
              v21 = v23 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
              v11 = 0xED00006D65744962;
              break;
            case 8:
              v21 = 0x5473656C7A7A7570;
              v11 = 0xEE006D6574496261;
              break;
            case 9:
              v21 = 0x6C6F46664F706F74;
              v11 = 0xEE00676E69776F6CLL;
              break;
            case 10:
              v21 = 0xD000000000000012;
              v11 = 0x800000025BEB9AE0;
              break;
            case 11:
              v21 = 0xD00000000000001ALL;
              v11 = 0x800000025BEB9B00;
              break;
            case 12:
              v21 = 0xD00000000000001BLL;
              v11 = 0x800000025BEB9B20;
              break;
            case 13:
              v21 = 0x766153664F706F74;
              v11 = 0xEA00000000006465;
              break;
            case 14:
              v21 = 0xD000000000000011;
              v11 = 0x800000025BEB9B50;
              break;
            case 15:
              v21 = 0xD000000000000010;
              v11 = 0x800000025BEB9B70;
              break;
            case 16:
              v21 = 0xD000000000000010;
              v11 = 0x800000025BEB9B90;
              break;
            case 17:
              v21 = 0xD000000000000010;
              v11 = 0x800000025BEB9BB0;
              break;
            case 18:
              v21 = 0xD000000000000017;
              v11 = 0x800000025BEB9BD0;
              break;
            case 19:
              v21 = 0xD000000000000017;
              v11 = 0x800000025BEB9BF0;
              break;
            case 20:
              v21 = 0xD00000000000001CLL;
              v11 = 0x800000025BEB9C10;
              break;
            case 21:
              v21 = 0xD000000000000020;
              v11 = 0x800000025BEB9C30;
              break;
            case 22:
              v21 = 0xD000000000000019;
              v11 = 0x800000025BEB9C60;
              break;
            case 23:
              v21 = 0xD000000000000022;
              v11 = 0x800000025BEB9C80;
              break;
            case 24:
              v21 = 0xD000000000000017;
              v11 = 0x800000025BEB9CB0;
              break;
            case 25:
              v21 = 0xD00000000000001CLL;
              v11 = 0x800000025BEB9CD0;
              break;
            case 26:
              v21 = 0xD000000000000020;
              v11 = 0x800000025BEB9CF0;
              break;
            case 27:
              v21 = 0xD00000000000001BLL;
              v11 = 0x800000025BEB9D20;
              break;
            case 28:
              v21 = 0xD000000000000024;
              v11 = 0x800000025BEB9D40;
              break;
            case 29:
              v21 = 0xD00000000000001ALL;
              v11 = 0x800000025BEB9D70;
              break;
            case 30:
              v21 = 0xD00000000000001FLL;
              v11 = 0x800000025BEB9D90;
              break;
            case 31:
              v21 = 0xD000000000000023;
              v11 = 0x800000025BEB9DB0;
              break;
            default:
              break;
          }

          v24 = v12;
          v25 = v5;
          if (v19 == v21 && v18 == v11)
          {
            break;
          }

          v26 = sub_25BEB4E64();

          if (v26)
          {
            goto LABEL_82;
          }

          v15 = (v15 + 1) & v33;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          v5 = v25;
          v11 = v22;
          v12 = v24;
          if ((*(v34 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
          {
            v10 = a5;
            goto LABEL_5;
          }
        }

LABEL_82:
        v27 = v30[v16];
        v30[v16] = v27 & ~v17;
        if ((v27 & v17) == 0)
        {
          v5 = v25;
          v11 = v22;
          v12 = v24;
          v10 = a5;
          goto LABEL_5;
        }

        v28 = v32 - 1;
        if (__OFSUB__(v32, 1))
        {
          goto LABEL_88;
        }

        v5 = v25;
        --v32;
        v11 = v22;
        v12 = v24;
        v10 = a5;
        if (!v28)
        {
          return MEMORY[0x277D84FA0];
        }
      }

LABEL_5:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

  return result;
}

void *sub_25BE740E4()
{
  v1 = v0;
  sub_25BE77A9C();
  v2 = *v0;
  v3 = sub_25BEB4B64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25BE74218()
{
  v1 = v0;
  sub_25BE77958();
  v2 = *v0;
  v3 = sub_25BEB4B64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25BE74368()
{
  v1 = v0;
  v2 = *v0;
  sub_25BE77A9C();
  result = sub_25BEB4B74();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_25BEB4F04();
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25BE7459C()
{
  v1 = v0;
  v2 = *v0;
  sub_25BE77958();
  result = sub_25BEB4B74();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_25BEB4F04();

      sub_25BEB48C4();
      result = sub_25BEB4F24();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_25BE747C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25BEB4B24();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25BEB4F04();
        sub_25BEB48C4();

        v10 = sub_25BEB4F24() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_25BE74E14(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_25BE76E34(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_25BE74EB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_25BE769C8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25BE74F4C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_25BEB4F04();
  EngagementUIPlacement.rawValue.getter();
  sub_25BEB48C4();

  v5 = sub_25BEB4F24();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_103:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_25BE75E0C(a2, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
    goto LABEL_106;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED00007465656853;
    v10 = 0x6C6576654C707061;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xED00007473616F54;
        v10 = 0x6C6576654C707061;
        break;
      case 2:
        v10 = 0x73756C507377656ELL;
        v9 = 0xEF6D657449626154;
        break;
      case 3:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9A70;
        break;
      case 4:
        v10 = 0x6261546F69647561;
        v9 = 0xEC0000006D657449;
        break;
      case 5:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9A90;
        break;
      case 6:
        v11 = 0x686372616573;
        goto LABEL_25;
      case 7:
        v11 = 0x7374726F7073;
LABEL_25:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
        v9 = 0xED00006D65744962;
        break;
      case 8:
        v10 = 0x5473656C7A7A7570;
        v9 = 0xEE006D6574496261;
        break;
      case 9:
        v10 = 0x6C6F46664F706F74;
        v9 = 0xEE00676E69776F6CLL;
        break;
      case 0xA:
        v10 = 0xD000000000000012;
        v9 = 0x800000025BEB9AE0;
        break;
      case 0xB:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000025BEB9B00;
        break;
      case 0xC:
        v10 = 0xD00000000000001BLL;
        v9 = 0x800000025BEB9B20;
        break;
      case 0xD:
        v10 = 0x766153664F706F74;
        v9 = 0xEA00000000006465;
        break;
      case 0xE:
        v10 = 0xD000000000000011;
        v9 = 0x800000025BEB9B50;
        break;
      case 0xF:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9B70;
        break;
      case 0x10:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9B90;
        break;
      case 0x11:
        v10 = 0xD000000000000010;
        v9 = 0x800000025BEB9BB0;
        break;
      case 0x12:
        v10 = 0xD000000000000017;
        v9 = 0x800000025BEB9BD0;
        break;
      case 0x13:
        v10 = 0xD000000000000017;
        v9 = 0x800000025BEB9BF0;
        break;
      case 0x14:
        v10 = 0xD00000000000001CLL;
        v9 = 0x800000025BEB9C10;
        break;
      case 0x15:
        v10 = 0xD000000000000020;
        v9 = 0x800000025BEB9C30;
        break;
      case 0x16:
        v10 = 0xD000000000000019;
        v9 = 0x800000025BEB9C60;
        break;
      case 0x17:
        v10 = 0xD000000000000022;
        v9 = 0x800000025BEB9C80;
        break;
      case 0x18:
        v10 = 0xD000000000000017;
        v9 = 0x800000025BEB9CB0;
        break;
      case 0x19:
        v10 = 0xD00000000000001CLL;
        v9 = 0x800000025BEB9CD0;
        break;
      case 0x1A:
        v10 = 0xD000000000000020;
        v9 = 0x800000025BEB9CF0;
        break;
      case 0x1B:
        v10 = 0xD00000000000001BLL;
        v9 = 0x800000025BEB9D20;
        break;
      case 0x1C:
        v10 = 0xD000000000000024;
        v9 = 0x800000025BEB9D40;
        break;
      case 0x1D:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000025BEB9D70;
        break;
      case 0x1E:
        v10 = 0xD00000000000001FLL;
        v9 = 0x800000025BEB9D90;
        break;
      case 0x1F:
        v10 = 0xD000000000000023;
        v9 = 0x800000025BEB9DB0;
        break;
      default:
        break;
    }

    v12 = 0x6C6576654C707061;
    v13 = 0xED00007465656853;
    switch(a2)
    {
      case 1:
        v13 = 0xED00007473616F54;
        if (v10 == 0x6C6576654C707061)
        {
          goto LABEL_97;
        }

        goto LABEL_98;
      case 2:
        v13 = 0xEF6D657449626154;
        if (v10 != 0x73756C507377656ELL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 3:
        v13 = 0x800000025BEB9A70;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 4:
        v13 = 0xEC0000006D657449;
        if (v10 != 0x6261546F69647561)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 5:
        v13 = 0x800000025BEB9A90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 6:
        v16 = 0x686372616573;
        goto LABEL_76;
      case 7:
        v16 = 0x7374726F7073;
LABEL_76:
        v13 = 0xED00006D65744962;
        if (v10 != (v16 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 8:
        v14 = 0x5473656C7A7A7570;
        v15 = 0x6D6574496261;
        goto LABEL_83;
      case 9:
        v14 = 0x6C6F46664F706F74;
        v15 = 0x676E69776F6CLL;
LABEL_83:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v14)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 10:
        v13 = 0x800000025BEB9AE0;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 11:
        v13 = 0x800000025BEB9B00;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 12:
        v13 = 0x800000025BEB9B20;
        if (v10 != 0xD00000000000001BLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 13:
        v13 = 0xEA00000000006465;
        if (v10 != 0x766153664F706F74)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 14:
        v13 = 0x800000025BEB9B50;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 15:
        v13 = 0x800000025BEB9B70;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 16:
        v13 = 0x800000025BEB9B90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 17:
        v13 = 0x800000025BEB9BB0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 18:
        v13 = 0x800000025BEB9BD0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 19:
        v13 = 0x800000025BEB9BF0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 20:
        v13 = 0x800000025BEB9C10;
        if (v10 != 0xD00000000000001CLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 21:
        v13 = 0x800000025BEB9C30;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 22:
        v13 = 0x800000025BEB9C60;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 23:
        v13 = 0x800000025BEB9C80;
        if (v10 != 0xD000000000000022)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 24:
        v13 = 0x800000025BEB9CB0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 25:
        v13 = 0x800000025BEB9CD0;
        if (v10 != 0xD00000000000001CLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 26:
        v13 = 0x800000025BEB9CF0;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 27:
        v13 = 0x800000025BEB9D20;
        if (v10 != 0xD00000000000001BLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 28:
        v13 = 0x800000025BEB9D40;
        if (v10 != 0xD000000000000024)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 29:
        v12 = 0xD00000000000001ALL;
        v13 = 0x800000025BEB9D70;
        goto LABEL_96;
      case 30:
        v13 = 0x800000025BEB9D90;
        if (v10 != 0xD00000000000001FLL)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 31:
        v13 = 0x800000025BEB9DB0;
        if (v10 != 0xD000000000000023)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      default:
LABEL_96:
        if (v10 != v12)
        {
          goto LABEL_98;
        }

LABEL_97:
        if (v9 != v13)
        {
LABEL_98:
          v17 = sub_25BEB4E64();

          if (v17)
          {
            goto LABEL_105;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_103;
          }

          continue;
        }

LABEL_105:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_106:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_25BE75908(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25BEB4F04();
  sub_25BEB48C4();
  v8 = sub_25BEB4F24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25BEB4E64() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25BE767FC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

char *sub_25BE75A58(char *a1, int64_t a2, char a3)
{
  result = sub_25BE75AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25BE75A78(char *a1, int64_t a2, char a3)
{
  result = sub_25BE75BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25BE75A98(char *a1, int64_t a2, char a3)
{
  result = sub_25BE75CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25BE75AB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BE77BA0(0, &qword_280E76608, &type metadata for EngagementPlacementInfo, MEMORY[0x277D84560]);
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

char *sub_25BE75BDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BE77BA0(0, &unk_280E76ED0, &type metadata for EngagementUIPlacement, MEMORY[0x277D84560]);
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

char *sub_25BE75CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BE77BA0(0, &qword_280E765D0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

uint64_t sub_25BE75E0C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BE727B0();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_25BE740E4();
        goto LABEL_110;
      }

      sub_25BE74368();
    }

    v8 = *v3;
    sub_25BEB4F04();
    EngagementUIPlacement.rawValue.getter();
    sub_25BEB48C4();

    result = sub_25BEB4F24();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xED00007465656853;
        v12 = 0x6C6576654C707061;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0x6C6576654C707061;
            v11 = 0xED00007473616F54;
            break;
          case 2:
            v12 = 0x73756C507377656ELL;
            v11 = 0xEF6D657449626154;
            break;
          case 3:
            v12 = 0xD000000000000010;
            v11 = 0x800000025BEB9A70;
            break;
          case 4:
            v12 = 0x6261546F69647561;
            v11 = 0xEC0000006D657449;
            break;
          case 5:
            v12 = 0xD000000000000010;
            v11 = 0x800000025BEB9A90;
            break;
          case 6:
            v13 = 0x686372616573;
            goto LABEL_32;
          case 7:
            v13 = 0x7374726F7073;
LABEL_32:
            v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v11 = 0xED00006D65744962;
            break;
          case 8:
            v12 = 0x5473656C7A7A7570;
            v11 = 0xEE006D6574496261;
            break;
          case 9:
            v12 = 0x6C6F46664F706F74;
            v11 = 0xEE00676E69776F6CLL;
            break;
          case 0xA:
            v12 = 0xD000000000000012;
            v11 = 0x800000025BEB9AE0;
            break;
          case 0xB:
            v12 = 0xD00000000000001ALL;
            v11 = 0x800000025BEB9B00;
            break;
          case 0xC:
            v12 = 0xD00000000000001BLL;
            v11 = 0x800000025BEB9B20;
            break;
          case 0xD:
            v12 = 0x766153664F706F74;
            v11 = 0xEA00000000006465;
            break;
          case 0xE:
            v12 = 0xD000000000000011;
            v11 = 0x800000025BEB9B50;
            break;
          case 0xF:
            v12 = 0xD000000000000010;
            v11 = 0x800000025BEB9B70;
            break;
          case 0x10:
            v12 = 0xD000000000000010;
            v11 = 0x800000025BEB9B90;
            break;
          case 0x11:
            v12 = 0xD000000000000010;
            v11 = 0x800000025BEB9BB0;
            break;
          case 0x12:
            v12 = 0xD000000000000017;
            v11 = 0x800000025BEB9BD0;
            break;
          case 0x13:
            v12 = 0xD000000000000017;
            v11 = 0x800000025BEB9BF0;
            break;
          case 0x14:
            v12 = 0xD00000000000001CLL;
            v11 = 0x800000025BEB9C10;
            break;
          case 0x15:
            v12 = 0xD000000000000020;
            v11 = 0x800000025BEB9C30;
            break;
          case 0x16:
            v12 = 0xD000000000000019;
            v11 = 0x800000025BEB9C60;
            break;
          case 0x17:
            v12 = 0xD000000000000022;
            v11 = 0x800000025BEB9C80;
            break;
          case 0x18:
            v12 = 0xD000000000000017;
            v11 = 0x800000025BEB9CB0;
            break;
          case 0x19:
            v12 = 0xD00000000000001CLL;
            v11 = 0x800000025BEB9CD0;
            break;
          case 0x1A:
            v12 = 0xD000000000000020;
            v11 = 0x800000025BEB9CF0;
            break;
          case 0x1B:
            v12 = 0xD00000000000001BLL;
            v11 = 0x800000025BEB9D20;
            break;
          case 0x1C:
            v12 = 0xD000000000000024;
            v11 = 0x800000025BEB9D40;
            break;
          case 0x1D:
            v12 = 0xD00000000000001ALL;
            v11 = 0x800000025BEB9D70;
            break;
          case 0x1E:
            v12 = 0xD00000000000001FLL;
            v11 = 0x800000025BEB9D90;
            break;
          case 0x1F:
            v12 = 0xD000000000000023;
            v11 = 0x800000025BEB9DB0;
            break;
          default:
            break;
        }

        v14 = 0x6C6576654C707061;
        v15 = 0xED00007465656853;
        switch(v5)
        {
          case 1:
            v16 = 0x6C6576654C707061;
            v17 = 0x7473616F54;
            goto LABEL_83;
          case 2:
            v15 = 0xEF6D657449626154;
            if (v12 != 0x73756C507377656ELL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 3:
            v15 = 0x800000025BEB9A70;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 4:
            v15 = 0xEC0000006D657449;
            if (v12 != 0x6261546F69647561)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 5:
            v15 = 0x800000025BEB9A90;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 6:
            v20 = 0x686372616573;
            goto LABEL_82;
          case 7:
            v20 = 0x7374726F7073;
LABEL_82:
            v16 = v20 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v17 = 0x6D65744962;
LABEL_83:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v12 != v16)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 8:
            v18 = 0x5473656C7A7A7570;
            v19 = 0x6D6574496261;
            goto LABEL_90;
          case 9:
            v18 = 0x6C6F46664F706F74;
            v19 = 0x676E69776F6CLL;
LABEL_90:
            v15 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v12 != v18)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 10:
            v15 = 0x800000025BEB9AE0;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 11:
            v15 = 0x800000025BEB9B00;
            if (v12 != 0xD00000000000001ALL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 12:
            v15 = 0x800000025BEB9B20;
            if (v12 != 0xD00000000000001BLL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 13:
            v15 = 0xEA00000000006465;
            if (v12 != 0x766153664F706F74)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 14:
            v15 = 0x800000025BEB9B50;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 15:
            v15 = 0x800000025BEB9B70;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 16:
            v15 = 0x800000025BEB9B90;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 17:
            v15 = 0x800000025BEB9BB0;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 18:
            v15 = 0x800000025BEB9BD0;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 19:
            v15 = 0x800000025BEB9BF0;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 20:
            v15 = 0x800000025BEB9C10;
            if (v12 != 0xD00000000000001CLL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 21:
            v15 = 0x800000025BEB9C30;
            if (v12 != 0xD000000000000020)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 22:
            v15 = 0x800000025BEB9C60;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 23:
            v15 = 0x800000025BEB9C80;
            if (v12 != 0xD000000000000022)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 24:
            v15 = 0x800000025BEB9CB0;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 25:
            v15 = 0x800000025BEB9CD0;
            if (v12 != 0xD00000000000001CLL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 26:
            v15 = 0x800000025BEB9CF0;
            if (v12 != 0xD000000000000020)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 27:
            v15 = 0x800000025BEB9D20;
            if (v12 != 0xD00000000000001BLL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 28:
            v15 = 0x800000025BEB9D40;
            if (v12 != 0xD000000000000024)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 29:
            v14 = 0xD00000000000001ALL;
            v15 = 0x800000025BEB9D70;
            goto LABEL_103;
          case 30:
            v15 = 0x800000025BEB9D90;
            if (v12 != 0xD00000000000001FLL)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 31:
            v15 = 0x800000025BEB9DB0;
            if (v12 != 0xD000000000000023)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          default:
LABEL_103:
            if (v12 != v14)
            {
              goto LABEL_105;
            }

LABEL_104:
            if (v11 == v15)
            {
              goto LABEL_113;
            }

LABEL_105:
            v21 = sub_25BEB4E64();

            if (v21)
            {
              goto LABEL_114;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_110:
  v22 = *v26;
  *(v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v5;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_113:

LABEL_114:
    result = sub_25BEB4E84();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

uint64_t sub_25BE767FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25BE72A14();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25BE74218();
      goto LABEL_16;
    }

    sub_25BE7459C();
  }

  v10 = *v4;
  sub_25BEB4F04();
  sub_25BEB48C4();
  result = sub_25BEB4F24();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25BEB4E64();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25BEB4E84();
  __break(1u);
  return result;
}

unint64_t sub_25BE7697C()
{
  result = qword_280E766B0;
  if (!qword_280E766B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E766B0);
  }

  return result;
}

uint64_t sub_25BE769C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + v13);
    v15 = *(a4 + 40);
    ObjectType = swift_getObjectType();
    result = (*(v15 + 8))(ObjectType, v15);
    if (result)
    {
      if (((1 << v14) & 0xFFF801FE) == 0 || (result = (*(v15 + 16))(ObjectType, v15), (result & 1) == 0))
      {
        *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
LABEL_17:

          return sub_25BE8A4F0(v19, a2, v20, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE76B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = 1;
  v8 = ((1 << v5) + 63) >> 6;
  v9 = 8 * v8;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v8;
    v30 = v3;
    v28 = &v28;
    MEMORY[0x28223BE20](v10, v11);
    v31 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v9);
    v32 = 0;
    v33 = v4;
    v8 = 0;
    v13 = *(v4 + 56);
    v4 += 56;
    v12 = v13;
    v14 = v7 << *(v4 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v3 = v18 | (v8 << 6);
      v7 = *(*(v33 + 48) + v3);
      v9 = *(v34 + 32);
      v21 = *(v34 + 40);
      ObjectType = swift_getObjectType();
      if (((*(v21 + 8))(ObjectType, v21) & 1) != 0 && (((1 << v7) & 0xFFF801FE) == 0 || ((*(v21 + 16))(ObjectType, v21) & 1) == 0))
      {
        *&v31[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_18:
          v24 = sub_25BE8A4F0(v31, v29, v32, v33);

          return v24;
        }
      }
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v8 >= v17)
      {
        goto LABEL_18;
      }

      v20 = *(v4 + 8 * v8);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v34;

  v24 = sub_25BE74EB0(v26, v8, v4, v27);

  MEMORY[0x25F87FD60](v26, -1, -1);

  return v24;
}

uint64_t sub_25BE76E34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v46 = a4;
  v39 = a1;
  v45 = sub_25BEB43C4();
  v5 = *(v45 - 8);
  v7 = MEMORY[0x28223BE20](v45, v6);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7, v9);
  v12 = &v37 - v11;
  v13 = 0;
  v47 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v43 = v5 + 16;
  v40 = 0;
  v41 = v5 + 8;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = *(*(v47 + 48) + v24);
    v26 = v46;
    swift_beginAccess();
    v27 = *(v26 + 88);
    if (*(v27 + 16) && (v28 = sub_25BE65758(v25), (v29 & 1) != 0))
    {
      v30 = *(v27 + 56) + *(v5 + 72) * v28;
      v31 = v44;
      v32 = v45;
      (*(v5 + 16))(v44, v30, v45);
      (*(v5 + 32))(v12, v31, v32);
      swift_endAccess();
      sub_25BEB4394();
      v34 = fabs(v33);
      result = (*(v5 + 8))(v12, v32);
      if (v34 > 2.0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = swift_endAccess();
LABEL_16:
      *(v39 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_19:
        v36 = v47;

        return sub_25BE8A4F0(v39, v38, v40, v36);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_19;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE770E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = *MEMORY[0x277D85DE8];
  v59 = sub_25BEB43C4();
  v6 = *(v59 - 8);
  v8 = MEMORY[0x28223BE20](v59, v7);
  v58 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v57 = v48 - v11;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;
  v60 = a2;

  if (v13 > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v49 = v14;
    v50 = v3;
    v48[1] = v48;
    MEMORY[0x28223BE20](v16, v17);
    v51 = v48 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v51, v15);
    v52 = 0;
    v3 = 0;
    v14 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v55 = v6 + 32;
    v56 = v6 + 16;
    v54 = v6 + 8;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_12:
      v25 = v22 | (v3 << 6);
      v26 = a1;
      v27 = *(a1 + 48);
      v53 = v25;
      v28 = *(v27 + v25);
      v29 = v60;
      swift_beginAccess();
      v15 = *(v29 + 88);
      if (*(v15 + 16) && (v30 = sub_25BE65758(v28), (v31 & 1) != 0))
      {
        v32 = *(v15 + 56) + *(v6 + 72) * v30;
        v33 = *(v6 + 16);
        v34 = v20;
        v35 = v6;
        v36 = v58;
        v37 = v59;
        v33(v58, v32, v59);
        v38 = *(v35 + 32);
        v15 = v57;
        v39 = v36;
        v6 = v35;
        v20 = v34;
        v38(v57, v39, v37);
        swift_endAccess();
        sub_25BEB4394();
        v41 = fabs(v40);
        (*(v6 + 8))(v15, v37);
        a1 = v26;
        if (v41 > 2.0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        swift_endAccess();
        a1 = v26;
LABEL_17:
        *&v51[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_20:
          v43 = sub_25BE8A4F0(v51, v49, v52, a1);

          return v43;
        }
      }
    }

    v23 = v3;
    while (1)
    {
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v3 >= v21)
      {
        goto LABEL_20;
      }

      v24 = *(v14 + 8 * v3);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = swift_slowAlloc();
  v46 = v14;
  v47 = v60;

  v43 = sub_25BE74E14(v45, v46, a1, v47);

  MEMORY[0x25F87FD60](v45, -1, -1);

  return v43;
}

uint64_t sub_25BE774F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F87F240](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25BE75908(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25BE77590(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25BE5CD58();
  result = MEMORY[0x25F87F240](v2, &type metadata for EngagementUIPlacement, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_25BE74F4C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25BE77698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25BE776E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of EngagementEventHandlerType.addObserver(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 48))();
}

{
  return (*(a5 + 56))();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BE77884(uint64_t a1, int a2)
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

uint64_t sub_25BE778A4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_25BE77958()
{
  if (!qword_27FBE3EB8)
  {
    v0 = sub_25BEB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE3EB8);
    }
  }
}

void sub_25BE779B0(id a1, unsigned __int8 a2)
{
  if ((a2 >> 6) - 1 <= 1)
  {
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25BE779E4(id result, unsigned __int8 a2)
{
  if ((a2 >> 6) - 1 <= 1)
  {
    return result;
  }

  return result;
}

void sub_25BE779FC()
{
  if (!qword_280E76700)
  {
    sub_25BEB47A4();
    v0 = sub_25BEB49E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76700);
    }
  }
}

uint64_t sub_25BE77A54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25BE77A9C()
{
  if (!qword_280E76658)
  {
    sub_25BE5CD58();
    v0 = sub_25BEB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76658);
    }
  }
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  sub_25BE779B0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

id sub_25BE77B58(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_25BE77B64(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_25BE77BA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t EngagementBannerLayoutStore.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_25BE5C9CC();
  swift_allocObject();
  *(v0 + 16) = sub_25BEB4694();
  return v0;
}

uint64_t EngagementBannerLayoutStore.init()()
{
  sub_25BE5C9CC();
  swift_allocObject();
  *(v0 + 16) = sub_25BEB4694();
  return v0;
}

NewsEngagement::EngagementBannerLayout_optional __swiftcall EngagementBannerLayoutStore.layout(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  v2 = v1;
  v3 = *a1;

  sub_25BEB46B4();

  v7 = v20;
  v8 = v21;
  v9 = v22;
  if ((v22 & 1) == 0)
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v10 = sub_25BEB4764();
    __swift_project_value_buffer(v10, qword_280E77F40);
    v11 = sub_25BEB4744();
    v12 = sub_25BEB4A64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      LOBYTE(v20) = v3;
      v15 = EngagementUIPlacement.rawValue.getter();
      v17 = sub_25BE60F30(v15, v16, &v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v20 = 0;
      v21 = 0xE000000000000000;
      MEMORY[0x25F87F0E0](0x203A657A6973, 0xE600000000000000);
      type metadata accessor for CGSize(0);
      sub_25BEB4C64();
      v18 = sub_25BE60F30(v20, v21, &v19);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_25BE5A000, v11, v12, "Retrieving layout for placement=%s, layout=%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v14, -1, -1);
      MEMORY[0x25F87FD60](v13, -1, -1);
    }
  }

  *v2 = v7;
  *(v2 + 8) = v8;
  *(v2 + 16) = v9;
  result.value.size.height = v6;
  result.value.size.width = v5;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall EngagementBannerLayoutStore.storeLayout(_:for:)(NewsEngagement::EngagementBannerLayout _, NewsEngagement::EngagementUIPlacement a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *v2;
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v6 = sub_25BEB4764();
  __swift_project_value_buffer(v6, qword_280E77F40);
  v7 = sub_25BEB4744();
  v8 = sub_25BEB4A64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    LOBYTE(v16) = v5;
    v11 = EngagementUIPlacement.rawValue.getter();
    v13 = sub_25BE60F30(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v16 = 0;
    v17 = 0xE000000000000000;
    MEMORY[0x25F87F0E0](0x203A657A6973, 0xE600000000000000);
    type metadata accessor for CGSize(0);
    sub_25BEB4C64();
    v14 = sub_25BE60F30(v16, v17, &v15);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_25BE5A000, v7, v8, "Storing layout for placement=%s, layout=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F87FD60](v10, -1, -1);
    MEMORY[0x25F87FD60](v9, -1, -1);
  }

  v16 = v3;
  v17 = v4;
  v18 = 0;

  sub_25BEB46C4();
}

Swift::Void __swiftcall EngagementBannerLayoutStore.removeLayout(for:)(NewsEngagement::EngagementUIPlacement a1)
{
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v1 = sub_25BEB4764();
  __swift_project_value_buffer(v1, qword_280E77F40);
  v2 = sub_25BEB4744();
  v3 = sub_25BEB4A64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    *v4 = 136315138;
    v6 = EngagementUIPlacement.rawValue.getter();
    v8 = sub_25BE60F30(v6, v7, v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25BE5A000, v2, v3, "Removing layout for placement=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F87FD60](v5, -1, -1);
    MEMORY[0x25F87FD60](v4, -1, -1);
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 1;

  sub_25BEB46C4();
}

Swift::Void __swiftcall EngagementBannerLayoutStore.reset()()
{
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v0 = sub_25BEB4764();
  __swift_project_value_buffer(v0, qword_280E77F40);
  v1 = sub_25BEB4744();
  v2 = sub_25BEB4A64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25BE5A000, v1, v2, "Removing all layouts from store", v3, 2u);
    MEMORY[0x25F87FD60](v3, -1, -1);
  }

  sub_25BEB4684();
}

uint64_t EngagementBannerLayoutStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void __swiftcall EngagementUpsellBanner.init(title:titleTrialEligible:titleTrialNotEligible:titleSubscribed:body:bodyTrialEligible:bodyTrialNotEligible:bodySubscribed:footer:footerTrialEligible:footerTrialNotEligible:footerSubscribed:iconUrl:appearanceInfo:actionUrl:actionUrlSubscribed:footerActionUrl:footerActionUrlSubscribed:showCloseButton:bannerStyle:)(NewsEngagement::EngagementUpsellBanner *__return_ptr retstr, Swift::String_optional title, Swift::String_optional titleTrialEligible, Swift::String_optional titleTrialNotEligible, Swift::String_optional titleSubscribed, Swift::String_optional body, Swift::String_optional bodyTrialEligible, Swift::String_optional bodyTrialNotEligible, Swift::String_optional bodySubscribed, Swift::String_optional footer, Swift::String_optional footerTrialEligible, Swift::String_optional footerTrialNotEligible, Swift::String_optional footerSubscribed, Swift::String_optional iconUrl, Swift::String_optional appearanceInfo, Swift::String_optional actionUrl, Swift::String_optional actionUrlSubscribed, Swift::String_optional footerActionUrl, Swift::String_optional footerActionUrlSubscribed, Swift::Bool_optional showCloseButton, Swift::String_optional bannerStyle)
{
  retstr->title = title;
  retstr->titleTrialEligible = titleTrialEligible;
  retstr->titleTrialNotEligible = titleTrialNotEligible;
  retstr->titleSubscribed = titleSubscribed;
  retstr->body = body;
  retstr->bodyTrialEligible = bodyTrialEligible;
  retstr->bodyTrialNotEligible = bodyTrialNotEligible;
  retstr->bodySubscribed = bodySubscribed;
  retstr->footer = footer;
  retstr->footerTrialEligible = footerTrialEligible;
  retstr->footerTrialNotEligible = footerTrialNotEligible;
  retstr->footerSubscribed = footerSubscribed;
  retstr->iconUrl = iconUrl;
  retstr->appearanceInfo = appearanceInfo;
  retstr->actionUrl = actionUrl;
  retstr->actionUrlSubscribed = actionUrlSubscribed;
  retstr->footerActionUrl = footerActionUrl;
  retstr->footerActionUrlSubscribed = footerActionUrlSubscribed;
  retstr->showCloseButton = showCloseButton;
  retstr->bannerStyle = bannerStyle;
}

uint64_t EngagementUpsellBanner.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EngagementUpsellBanner.titleTrialEligible.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EngagementUpsellBanner.titleTrialNotEligible.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EngagementUpsellBanner.titleSubscribed.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EngagementUpsellBanner.body.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t EngagementUpsellBanner.bodyTrialEligible.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t EngagementUpsellBanner.bodyTrialNotEligible.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t EngagementUpsellBanner.bodySubscribed.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t EngagementUpsellBanner.footer.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t EngagementUpsellBanner.footerTrialEligible.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t EngagementUpsellBanner.footerTrialNotEligible.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t EngagementUpsellBanner.footerSubscribed.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t EngagementUpsellBanner.iconUrl.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t EngagementUpsellBanner.appearanceInfo.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t EngagementUpsellBanner.actionUrl.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t EngagementUpsellBanner.actionUrlSubscribed.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t EngagementUpsellBanner.footerActionUrl.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t EngagementUpsellBanner.footerActionUrlSubscribed.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t EngagementUpsellBanner.bannerStyle.getter()
{
  v1 = *(v0 + 296);

  return v1;
}

unint64_t sub_25BE788AC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x627553656C746974;
      break;
    case 4:
      result = 2036625250;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x7362755379646F62;
      break;
    case 8:
      result = 0x7265746F6F66;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6C72556E6F6369;
      break;
    case 13:
      result = 0x6E61726165707061;
      break;
    case 14:
      result = 0x72556E6F69746361;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x63417265746F6F66;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0x736F6C43776F6873;
      break;
    case 19:
      result = 0x745372656E6E6162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s14NewsEngagement0B15UIPlacementKindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25BEB4F04();
  MEMORY[0x25F87F720](v1);
  return sub_25BEB4F24();
}

uint64_t sub_25BE78B68()
{
  v1 = *v0;
  sub_25BEB4F04();
  MEMORY[0x25F87F720](v1);
  return sub_25BEB4F24();
}

uint64_t sub_25BE78BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BE7AA68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BE78BF4(uint64_t a1)
{
  v2 = sub_25BE79200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE78C30(uint64_t a1)
{
  v2 = sub_25BE79200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellBanner.encode(to:)(void *a1)
{
  sub_25BE7A06C(0, &qword_27FBE3F30, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v29 - v7;
  v9 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = v9;
  v10 = *(v1 + 32);
  v29[32] = *(v1 + 40);
  v29[33] = v10;
  v11 = *(v1 + 48);
  v29[30] = *(v1 + 56);
  v29[31] = v11;
  v12 = *(v1 + 64);
  v29[28] = *(v1 + 72);
  v29[29] = v12;
  v13 = *(v1 + 88);
  v29[26] = *(v1 + 80);
  v29[27] = v13;
  v14 = *(v1 + 104);
  v29[24] = *(v1 + 96);
  v29[25] = v14;
  v15 = *(v1 + 120);
  v29[22] = *(v1 + 112);
  v29[23] = v15;
  v16 = *(v1 + 136);
  v29[20] = *(v1 + 128);
  v29[21] = v16;
  v17 = *(v1 + 152);
  v29[18] = *(v1 + 144);
  v29[19] = v17;
  v18 = *(v1 + 168);
  v29[16] = *(v1 + 160);
  v29[15] = v18;
  v19 = *(v1 + 184);
  v29[17] = *(v1 + 176);
  v29[14] = v19;
  v20 = *(v1 + 200);
  v29[12] = *(v1 + 192);
  v29[13] = v20;
  v21 = *(v1 + 216);
  v29[10] = *(v1 + 208);
  v29[11] = v21;
  v22 = *(v1 + 232);
  v29[8] = *(v1 + 224);
  v29[9] = v22;
  v23 = *(v1 + 248);
  v29[6] = *(v1 + 240);
  v29[7] = v23;
  v24 = *(v1 + 264);
  v29[4] = *(v1 + 256);
  v29[5] = v24;
  v25 = *(v1 + 280);
  v29[2] = *(v1 + 272);
  v29[3] = v25;
  v33 = *(v1 + 288);
  v26 = *(v1 + 304);
  v29[0] = *(v1 + 296);
  v29[1] = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE79200();
  sub_25BEB4F44();
  v34 = 0;
  v27 = v32;
  sub_25BEB4DB4();
  if (v27)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v32 = v5;
  v34 = 1;
  sub_25BEB4DB4();
  v34 = 2;
  sub_25BEB4DB4();
  v34 = 3;
  sub_25BEB4DB4();
  v34 = 4;
  sub_25BEB4DB4();
  v34 = 5;
  sub_25BEB4DB4();
  v34 = 6;
  sub_25BEB4DB4();
  v34 = 7;
  sub_25BEB4DB4();
  v34 = 8;
  sub_25BEB4DB4();
  v34 = 9;
  v30 = v8;
  v31 = v4;
  sub_25BEB4DB4();
  v34 = 10;
  sub_25BEB4DB4();
  v34 = 11;
  sub_25BEB4DB4();
  v34 = 12;
  sub_25BEB4DB4();
  v34 = 13;
  sub_25BEB4DB4();
  v34 = 14;
  sub_25BEB4DB4();
  v34 = 15;
  sub_25BEB4DB4();
  v34 = 16;
  sub_25BEB4DB4();
  v34 = 17;
  sub_25BEB4DB4();
  v34 = 18;
  sub_25BEB4DC4();
  v34 = 19;
  sub_25BEB4DB4();
  return (*(v32 + 8))(v30, v31);
}

unint64_t sub_25BE79200()
{
  result = qword_27FBE3F38;
  if (!qword_27FBE3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE3F38);
  }

  return result;
}

uint64_t EngagementUpsellBanner.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_25BE7A06C(0, &qword_27FBE3F40, MEMORY[0x277D844C8]);
  v6 = v5;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - v8;
  v10 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_25BE79200();
  sub_25BEB4F34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v88);
  }

  v11 = a2;
  LOBYTE(v81[0]) = 0;
  v12 = sub_25BEB4D04();
  v78 = v13;
  LOBYTE(v81[0]) = 1;
  v14 = sub_25BEB4D04();
  v71 = v15;
  v77 = v14;
  LOBYTE(v81[0]) = 2;
  v76 = sub_25BEB4D04();
  v70 = v16;
  LOBYTE(v81[0]) = 3;
  v75 = sub_25BEB4D04();
  v69 = v17;
  LOBYTE(v81[0]) = 4;
  v74 = sub_25BEB4D04();
  v68 = v18;
  LOBYTE(v81[0]) = 5;
  v73 = sub_25BEB4D04();
  v67 = v19;
  LOBYTE(v81[0]) = 6;
  v72 = sub_25BEB4D04();
  v66 = v20;
  LOBYTE(v81[0]) = 7;
  v57 = sub_25BEB4D04();
  v65 = v21;
  LOBYTE(v81[0]) = 8;
  v56 = sub_25BEB4D04();
  v64 = v22;
  v79 = 0;
  LOBYTE(v81[0]) = 9;
  v23 = sub_25BEB4D04();
  v63 = v24;
  v79 = 0;
  v25 = v23;
  LOBYTE(v81[0]) = 10;
  v55 = sub_25BEB4D04();
  v62 = v26;
  v79 = 0;
  LOBYTE(v81[0]) = 11;
  v54 = sub_25BEB4D04();
  v61 = v27;
  v79 = 0;
  LOBYTE(v81[0]) = 12;
  v53 = sub_25BEB4D04();
  v60 = v28;
  v79 = 0;
  LOBYTE(v81[0]) = 13;
  v52 = sub_25BEB4D04();
  v59 = v29;
  v79 = 0;
  LOBYTE(v81[0]) = 14;
  v51 = sub_25BEB4D04();
  v58 = v30;
  v79 = 0;
  LOBYTE(v81[0]) = 15;
  v49 = sub_25BEB4D04();
  v50 = v31;
  v79 = 0;
  LOBYTE(v81[0]) = 16;
  v47 = sub_25BEB4D04();
  v48 = v32;
  LOBYTE(v81[0]) = 17;
  v45 = sub_25BEB4D04();
  v46 = v33;
  v79 = 0;
  LOBYTE(v81[0]) = 18;
  v44 = sub_25BEB4D14();
  v79 = 0;
  v86 = 19;
  v34 = sub_25BEB4D04();
  v42 = v35;
  v43 = v34;
  v79 = 0;
  MEMORY[8](v9, v6);
  *(&v80[36] + 1) = v87[0];
  HIDWORD(v80[36]) = *(v87 + 3);
  v36 = v78;
  v80[0] = v12;
  v80[1] = v78;
  v38 = v70;
  v37 = v71;
  v80[2] = v77;
  v80[3] = v71;
  v80[4] = v76;
  v80[5] = v70;
  v39 = v68;
  v80[6] = v75;
  v80[7] = v69;
  v80[8] = v74;
  v80[9] = v68;
  v80[10] = v73;
  v80[11] = v67;
  v80[12] = v72;
  v80[13] = v66;
  v80[14] = v57;
  v80[15] = v65;
  v80[16] = v56;
  v80[17] = v64;
  v80[18] = v25;
  v80[19] = v63;
  v80[20] = v55;
  v80[21] = v62;
  v80[22] = v54;
  v80[23] = v61;
  v80[24] = v53;
  v80[25] = v60;
  v80[26] = v52;
  v80[27] = v59;
  v80[28] = v51;
  v80[29] = v58;
  v80[30] = v49;
  v80[31] = v50;
  v40 = v48;
  v80[32] = v47;
  v80[33] = v48;
  v80[34] = v45;
  v80[35] = v46;
  LOBYTE(v80[36]) = v44;
  v80[37] = v43;
  v80[38] = v42;
  memcpy(v11, v80, 0x138uLL);
  sub_25BE7A0D0(v80, v81);
  __swift_destroy_boxed_opaque_existential_0Tm(v88);
  v81[0] = v12;
  v81[1] = v36;
  v81[2] = v77;
  v81[3] = v37;
  v81[4] = v76;
  v81[5] = v38;
  v81[6] = v75;
  v81[7] = v69;
  v81[8] = v74;
  v81[9] = v39;
  v81[10] = v73;
  v81[11] = v67;
  v81[12] = v72;
  v81[13] = v66;
  v81[14] = v57;
  v81[15] = v65;
  v81[16] = v56;
  v81[17] = v64;
  v81[18] = v25;
  v81[19] = v63;
  v81[20] = v55;
  v81[21] = v62;
  v81[22] = v54;
  v81[23] = v61;
  v81[24] = v53;
  v81[25] = v60;
  v81[26] = v52;
  v81[27] = v59;
  v81[28] = v51;
  v81[29] = v58;
  v81[30] = v49;
  v81[31] = v50;
  v81[32] = v47;
  v81[33] = v40;
  v81[34] = v45;
  v81[35] = v46;
  v82 = v44;
  *v83 = v87[0];
  *&v83[3] = *(v87 + 3);
  v84 = v43;
  v85 = v42;
  return sub_25BE7A108(v81);
}

void sub_25BE7A06C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BE79200();
    v7 = a3(a1, &type metadata for EngagementUpsellBanner.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void __swiftcall EngagementUpsellBanner.banner(withParent:)(NewsEngagement::EngagementUpsellBanner *__return_ptr retstr, NewsEngagement::EngagementUpsellBanner_optional *withParent)
{
  v19 = *v2;
  v20 = *(v2 + 24);
  v21 = *(v2 + 8);
  v22 = *(v2 + 56);
  v23 = *(v2 + 40);
  v24 = *(v2 + 88);
  v25 = *(v2 + 72);
  v29 = *(v2 + 120);
  v30 = *(v2 + 104);
  v27 = *(v2 + 152);
  v28 = *(v2 + 136);
  v26 = *(v2 + 168);
  v5 = *(v2 + 216);
  v6 = *(v2 + 224);
  v7 = *(v2 + 232);
  v32 = *(v2 + 240);
  v33 = *(v2 + 208);
  v36 = *(v2 + 184);
  v37 = *(v2 + 248);
  v31 = *(v2 + 256);
  v8 = *(v2 + 264);
  v38 = *(v2 + 280);
  v9 = *(v2 + 288);
  v10 = *(v2 + 304);
  v34 = *(v2 + 272);
  v35 = *(v2 + 296);
  if (*(v2 + 200))
  {
    v17 = *(v2 + 200);
    v18 = *(v2 + 192);
    v11 = *(v2 + 216);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    memcpy(__dst, withParent, 0x138uLL);
    if (sub_25BE65710(__dst) == 1)
    {
      v17 = 0;
      v18 = 0;
      v11 = v5;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = __dst[25];
      v18 = __dst[24];

      v11 = v5;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  memcpy(__dst, withParent, 0x138uLL);
  if (sub_25BE65710(__dst) == 1)
  {
    v33 = 0;
    v11 = 0;
  }

  else
  {
    v33 = __dst[26];
    v11 = __dst[27];
  }

LABEL_11:
  v12 = v7;
  if (!v7)
  {
    memcpy(__dst, withParent, 0x138uLL);
    if (sub_25BE65710(__dst) == 1)
    {
      v6 = 0;
      v12 = 0;
    }

    else
    {
      v6 = __dst[28];
      v12 = __dst[29];
    }
  }

  v13 = v37;
  if (!v37)
  {
    memcpy(__dst, withParent, 0x138uLL);
    if (sub_25BE65710(__dst) != 1)
    {
      v32 = __dst[30];
      v13 = __dst[31];

      v14 = v8;
      if (v8)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v32 = 0;
    v13 = 0;
  }

  v14 = v8;
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_19:
  memcpy(__dst, withParent, 0x138uLL);
  if (sub_25BE65710(__dst) == 1)
  {
    v31 = 0;
    v14 = 0;
  }

  else
  {
    v31 = __dst[32];
    v14 = __dst[33];
  }

LABEL_24:
  v15 = v38;
  if (!v38)
  {
    memcpy(__dst, withParent, 0x138uLL);
    if (sub_25BE65710(__dst) != 1)
    {
      v34 = __dst[34];
      v15 = __dst[35];

      if (v9 != 2)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v34 = 0;
    v15 = 0;
  }

  if (v9 != 2)
  {
    goto LABEL_32;
  }

LABEL_28:
  memcpy(__dst, withParent, 0x138uLL);
  if (sub_25BE65710(__dst) == 1)
  {
    LOBYTE(v9) = 2;
  }

  else
  {
    LOBYTE(v9) = __dst[36];
  }

LABEL_32:
  v16 = v10;
  if (!v10)
  {
    memcpy(__dst, withParent, 0x138uLL);
    if (sub_25BE65710(__dst) == 1)
    {
      v35 = 0;
      v16 = 0;
    }

    else
    {
      v35 = __dst[37];
    }
  }

  retstr->title.value._countAndFlagsBits = v19;
  *&retstr->title.value._object = v21;
  *&retstr->titleTrialEligible.value._object = v20;
  *&retstr->titleTrialNotEligible.value._object = v23;
  *&retstr->titleSubscribed.value._object = v22;
  *&retstr->body.value._object = v25;
  *&retstr->bodyTrialEligible.value._object = v24;
  *&retstr->bodyTrialNotEligible.value._object = v30;
  *&retstr->bodySubscribed.value._object = v29;
  *&retstr->footer.value._object = v28;
  *&retstr->footerTrialEligible.value._object = v27;
  *&retstr->footerTrialNotEligible.value._object = v26;
  retstr->footerSubscribed.value._object = v36;
  retstr->iconUrl.value._countAndFlagsBits = v18;
  retstr->iconUrl.value._object = v17;
  retstr->appearanceInfo.value._countAndFlagsBits = v33;
  retstr->appearanceInfo.value._object = v11;
  retstr->actionUrl.value._countAndFlagsBits = v6;
  retstr->actionUrl.value._object = v12;
  retstr->actionUrlSubscribed.value._countAndFlagsBits = v32;
  retstr->actionUrlSubscribed.value._object = v13;
  retstr->footerActionUrl.value._countAndFlagsBits = v31;
  retstr->footerActionUrl.value._object = v14;
  retstr->footerActionUrlSubscribed.value._countAndFlagsBits = v34;
  retstr->footerActionUrlSubscribed.value._object = v15;
  retstr->showCloseButton.value = v9;
  retstr->bannerStyle.value._countAndFlagsBits = v35;
  retstr->bannerStyle.value._object = v16;
}

uint64_t sub_25BE7A5F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 312))
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

uint64_t sub_25BE7A650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUpsellBanner.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementUpsellBanner.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BE7A858()
{
  result = qword_27FBE3F48;
  if (!qword_27FBE3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE3F48);
  }

  return result;
}

unint64_t sub_25BE7A8B0()
{
  result = qword_27FBE3F50;
  if (!qword_27FBE3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE3F50);
  }

  return result;
}

unint64_t sub_25BE7A908()
{
  result = qword_27FBE3F58;
  if (!qword_27FBE3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE3F58);
  }

  return result;
}

unint64_t sub_25BE7A95C(uint64_t a1)
{
  v2 = sub_25BEB4B34();

  return sub_25BE7A9A0(a1, v2);
}

unint64_t sub_25BE7A9A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25BE7B0AC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F87F350](v9, a1);
      sub_25BE7B108(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25BE7AA68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BEB4E64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BEBA1C0 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BEBA1E0 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x627553656C746974 && a2 == 0xEF64656269726373 || (sub_25BEB4E64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_25BEB4E64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BEBA200 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BEBA220 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7362755379646F62 && a2 == 0xEE00646562697263 || (sub_25BEB4E64() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25BEB4E64() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BEBA240 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BEBA260 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BEBA280 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000 || (sub_25BEB4E64() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEE006F666E496563 || (sub_25BEB4E64() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_25BEB4E64() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BEBA2A0 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x63417265746F6F66 && a2 == 0xEF6C72556E6F6974 || (sub_25BEB4E64() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025BEBA2C0 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x736F6C43776F6873 && a2 == 0xEF6E6F7474754265 || (sub_25BEB4E64() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x745372656E6E6162 && a2 == 0xEB00000000656C79)
  {

    return 19;
  }

  else
  {
    v6 = sub_25BEB4E64();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_25BE7B15C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_25BE75A98(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_25BEB4B14();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    result = EngagementUIPlacement.rawValue.getter();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_25BE75A98((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_25BE80A2C(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_25BE80A2C(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
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
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BE7B3B0(uint64_t a1, char a2)
{
  v3 = v2;
  sub_25BE80A9C(0, &qword_280E76E58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = sub_25BEB43C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25BE80B00(a1);
    v15 = sub_25BE65758(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25BEABEE8();
        v19 = v23;
      }

      (*(v11 + 32))(v9, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_25BE7E7EC(v17, v19);
      *v3 = v19;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_25BE80B00(v9);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_25BE8555C(v14, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_25BE7B604(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25BE5F500(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_25BE85804(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25BE7B108(a2);
    *v2 = v7;
  }

  else
  {
    v6 = MEMORY[0x277D84F70];
    sub_25BE692E4(a1, &qword_280E76598, MEMORY[0x277D84F70] + 8);
    sub_25BE7E748(a2, v8);
    sub_25BE7B108(a2);
    return sub_25BE692E4(v8, &qword_280E76598, v6 + 8);
  }

  return result;
}

unint64_t sub_25BE7B6C0(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_25BE85950(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_25BE65758(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_25BEAC488();
        v11 = v13;
      }

      result = sub_25BE7F640(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

void sub_25BE7B780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  swift_getObjectType();
  v59 = sub_25BEB47A4();
  v64 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BEB47C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25BEB47E4();
  v63 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v20 = &v51 - v19;
  if (qword_280E76E48 != -1)
  {
    swift_once();
  }

  sub_25BE804B8(&unk_280E76898, v18, type metadata accessor for EngagementUpsellEventProvider);
  sub_25BEB4424();
  if ((aBlock[0] & 1) == 0)
  {
    v58 = v3;
    v53 = v13;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v57 = v8;
    v21 = sub_25BEB4764();
    __swift_project_value_buffer(v21, qword_280E77F40);

    v22 = sub_25BEB4744();
    v23 = sub_25BEB4A64();

    v24 = os_log_type_enabled(v22, v23);
    v55 = v9;
    v56 = v7;
    v54 = v12;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      v52 = a1;
      sub_25BE7B15C(a1);
      v27 = v20;
      v28 = MEMORY[0x25F87F1C0]();
      v30 = v29;

      v31 = v28;
      v20 = v27;
      v32 = sub_25BE60F30(v31, v30, aBlock);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_25BE5A000, v22, v23, "Fetching upsell response(s) for: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      v33 = v26;
      v34 = v52;
      MEMORY[0x25F87FD60](v33, -1, -1);
      MEMORY[0x25F87FD60](v25, -1, -1);
    }

    else
    {

      v34 = a1;
    }

    aBlock[0] = MEMORY[0x277D84F98];
    v35 = v58;
    sub_25BE80670(v34, v35, aBlock);

    if (*(aBlock[0] + 16))
    {
      sub_25BE80458(0, &qword_280E766D0);
      sub_25BE5CD58();
      v36 = sub_25BEB4844();
      sub_25BE80458(0, &unk_280E766A0);
      v37 = sub_25BEB4844();

      v38 = sub_25BE7BF30(v36);

      sub_25BE80458(0, &qword_280E766B0);
      v39 = sub_25BEB4AA4();
      v40 = v60;
      sub_25BEB47D4();
      sub_25BEB4804();
      v63 = *(v63 + 8);
      v41 = v53;
      (v63)(v40, v53);
      v42 = swift_allocObject();
      v43 = v62;
      *(v42 + 16) = v61;
      *(v42 + 24) = v43;
      *(v42 + 32) = v38;
      *(v42 + 40) = v37;
      *(v42 + 48) = 3;
      aBlock[4] = sub_25BE80A04;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BEAE488;
      aBlock[3] = &block_descriptor_7;
      v44 = _Block_copy(aBlock);

      v45 = v54;
      sub_25BEB47B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BE804B8(&qword_280E76720, 255, MEMORY[0x277D85198]);
      sub_25BE80A9C(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_25BE80500();
      v46 = v56;
      v47 = v59;
      sub_25BEB4B04();
      MEMORY[0x25F87F2A0](v20, v45, v46, v44);
      _Block_release(v44);

      (*(v64 + 8))(v46, v47);
      (*(v55 + 8))(v45, v57);
      (v63)(v20, v41);
    }

    else
    {

      v48 = sub_25BEB4744();
      v49 = sub_25BEB4A64();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_25BE5A000, v48, v49, "Fetch returned empty response", v50, 2u);
        MEMORY[0x25F87FD60](v50, -1, -1);
      }
    }
  }
}

uint64_t sub_25BE7BF30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25BE80588();
    v2 = sub_25BEB4CB4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    v22 = *(*(a1 + 48) + v12);
    sub_25BE80458(0, &qword_280E766D0);
    sub_25BE805F4();
    v14 = v13;
    swift_dynamicCast();
    sub_25BEB4F04();
    EngagementUIPlacement.rawValue.getter();
    sub_25BEB48C4();

    result = sub_25BEB4F24();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + v10) = v22;
    *(*(v2 + 56) + 8 * v10) = v23;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25BE7C1B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25BE80A38();
    v2 = sub_25BEB4CB4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25BE60ED4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_25BE5F500(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_25BE5F500(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_25BE5F500(v31, v32);
    result = sub_25BEB4B34();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_25BE5F500(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25BE7C46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v71 = a1;
  swift_getObjectType();
  v3 = sub_25BEB47A4();
  v70 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25BEB47C4();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BEB47E4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v66 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v19 = &v56 - v18;
  if (qword_280E76E48 != -1)
  {
    swift_once();
  }

  sub_25BE804B8(&unk_280E76898, v17, type metadata accessor for EngagementUpsellEventProvider);
  result = sub_25BEB4424();
  if ((aBlock[0] & 1) == 0)
  {
    v63 = v7;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v21 = sub_25BEB4764();
    __swift_project_value_buffer(v21, qword_280E77F40);
    v22 = v71;

    v23 = sub_25BEB4744();
    v24 = sub_25BEB4A64();

    v25 = os_log_type_enabled(v23, v24);
    v64 = v3;
    v65 = v19;
    v62 = v10;
    if (v25)
    {
      v58 = v24;
      v59 = v12;
      v60 = v11;
      v61 = v6;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      aBlock[0] = v27;
      *v26 = 136315138;
      v29 = *(v22 + 16);
      v30 = MEMORY[0x277D84F90];
      if (v29)
      {
        v56 = v27;
        v57 = v26;
        v73 = MEMORY[0x277D84F90];
        sub_25BE75A98(0, v29, 0);
        v30 = v73;
        v31 = (v22 + 32);
        do
        {
          v32 = *v31;
          v31 += 16;
          v72 = v32;
          v33 = EngagementUIPlacement.rawValue.getter();
          v35 = v34;
          v73 = v30;
          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_25BE75A98((v36 > 1), v37 + 1, 1);
            v30 = v73;
          }

          *(v30 + 16) = v37 + 1;
          v38 = v30 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          --v29;
        }

        while (v29);
        v22 = v71;
        v26 = v57;
        v28 = v56;
      }

      v39 = MEMORY[0x25F87F1C0](v30, MEMORY[0x277D837D0]);
      v41 = v40;

      v42 = sub_25BE60F30(v39, v41, aBlock);

      *(v26 + 4) = v42;
      _os_log_impl(&dword_25BE5A000, v23, v58, "Fetching upsell response(s) for: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x25F87FD60](v28, -1, -1);
      MEMORY[0x25F87FD60](v26, -1, -1);

      v11 = v60;
      v6 = v61;
      v12 = v59;
    }

    else
    {
    }

    if (sub_25BE7CC4C(v22)[2])
    {
      sub_25BE80458(0, &qword_280E766D0);
      sub_25BE5CD58();
      v43 = sub_25BEB4844();
      sub_25BE80458(0, &unk_280E766A0);
      v44 = sub_25BEB4844();

      v45 = sub_25BE7BF30(v43);

      sub_25BE80458(0, &qword_280E766B0);
      v46 = sub_25BEB4AA4();
      v47 = v66;
      sub_25BEB47D4();
      sub_25BEB4804();
      v48 = *(v12 + 8);
      v49 = v11;
      v48(v47, v11);
      v50 = swift_allocObject();
      v51 = v68;
      *(v50 + 16) = v67;
      *(v50 + 24) = v51;
      *(v50 + 32) = v45;
      *(v50 + 40) = v44;
      *(v50 + 48) = 3;
      aBlock[4] = sub_25BE80BE0;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BEAE488;
      aBlock[3] = &block_descriptor_0;
      v52 = _Block_copy(aBlock);

      v53 = v62;
      sub_25BEB47B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BE804B8(&qword_280E76720, 255, MEMORY[0x277D85198]);
      sub_25BE80A9C(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_25BE80500();
      v54 = v64;
      sub_25BEB4B04();
      v55 = v65;
      MEMORY[0x25F87F2A0](v65, v53, v6, v52);
      _Block_release(v52);

      (*(v70 + 8))(v6, v54);
      (*(v63 + 8))(v53, v69);
      return (v48)(v55, v49);
    }

    else
    {
    }
  }

  return result;
}

void *sub_25BE7CC4C(uint64_t a1)
{
  v46 = MEMORY[0x277D84F98];
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  v41 = v3;
  if (v3)
  {
    v43 = MEMORY[0x277D84F90];
    sub_25BE75A78(0, v3, 0);
    result = v43;
    v5 = (a1 + 32);
    v6 = v43[2];
    v7 = v3;
    do
    {
      v9 = *v5;
      v5 += 16;
      v8 = v9;
      v43 = result;
      v10 = result[3];
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        sub_25BE75A78((v10 > 1), v6 + 1, 1);
        result = v43;
      }

      result[2] = v11;
      *(result + v6++ + 32) = v8;
      --v7;
    }

    while (v7);
    v3 = v41;
  }

  else
  {
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
LABEL_117:

      return v46;
    }
  }

  v12 = 0;
  v38 = (v1 + OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_requestFactory);
  v36 = (a1 + 40);
  v37 = result + 4;
  v39 = v11;
  v40 = result;
  while (v12 < result[2])
  {
    v21 = *(v37 + v12);
    if (v3)
    {
      v22 = v36;
      v23 = v3;
      while (2)
      {
        v3 = *v22;
        v24 = *(v22 - 8);
        v22 += 2;
        v25 = 0xED00007465656853;
        v26 = 0x6C6576654C707061;
        switch(v24)
        {
          case 1:
            v26 = 0x6C6576654C707061;
            v25 = 0xED00007473616F54;
            break;
          case 2:
            v26 = 0x73756C507377656ELL;
            v25 = 0xEF6D657449626154;
            break;
          case 3:
            v26 = 0xD000000000000010;
            v25 = 0x800000025BEB9A70;
            break;
          case 4:
            v26 = 0x6261546F69647561;
            v25 = 0xEC0000006D657449;
            break;
          case 5:
            v26 = 0xD000000000000010;
            v25 = 0x800000025BEB9A90;
            break;
          case 6:
            v27 = 0x686372616573;
            goto LABEL_38;
          case 7:
            v27 = 0x7374726F7073;
LABEL_38:
            v26 = v27 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v25 = 0xED00006D65744962;
            break;
          case 8:
            v26 = 0x5473656C7A7A7570;
            v25 = 0xEE006D6574496261;
            break;
          case 9:
            v26 = 0x6C6F46664F706F74;
            v25 = 0xEE00676E69776F6CLL;
            break;
          case 10:
            v26 = 0xD000000000000012;
            v25 = 0x800000025BEB9AE0;
            break;
          case 11:
            v26 = 0xD00000000000001ALL;
            v25 = 0x800000025BEB9B00;
            break;
          case 12:
            v26 = 0xD00000000000001BLL;
            v25 = 0x800000025BEB9B20;
            break;
          case 13:
            v26 = 0x766153664F706F74;
            v25 = 0xEA00000000006465;
            break;
          case 14:
            v26 = 0xD000000000000011;
            v25 = 0x800000025BEB9B50;
            break;
          case 15:
            v26 = 0xD000000000000010;
            v25 = 0x800000025BEB9B70;
            break;
          case 16:
            v26 = 0xD000000000000010;
            v25 = 0x800000025BEB9B90;
            break;
          case 17:
            v26 = 0xD000000000000010;
            v25 = 0x800000025BEB9BB0;
            break;
          case 18:
            v26 = 0xD000000000000017;
            v25 = 0x800000025BEB9BD0;
            break;
          case 19:
            v26 = 0xD000000000000017;
            v25 = 0x800000025BEB9BF0;
            break;
          case 20:
            v26 = 0xD00000000000001CLL;
            v25 = 0x800000025BEB9C10;
            break;
          case 21:
            v26 = 0xD000000000000020;
            v25 = 0x800000025BEB9C30;
            break;
          case 22:
            v26 = 0xD000000000000019;
            v25 = 0x800000025BEB9C60;
            break;
          case 23:
            v26 = 0xD000000000000022;
            v25 = 0x800000025BEB9C80;
            break;
          case 24:
            v26 = 0xD000000000000017;
            v25 = 0x800000025BEB9CB0;
            break;
          case 25:
            v26 = 0xD00000000000001CLL;
            v25 = 0x800000025BEB9CD0;
            break;
          case 26:
            v26 = 0xD000000000000020;
            v25 = 0x800000025BEB9CF0;
            break;
          case 27:
            v26 = 0xD00000000000001BLL;
            v25 = 0x800000025BEB9D20;
            break;
          case 28:
            v26 = 0xD000000000000024;
            v25 = 0x800000025BEB9D40;
            break;
          case 29:
            v26 = 0xD00000000000001ALL;
            v25 = 0x800000025BEB9D70;
            break;
          case 30:
            v26 = 0xD00000000000001FLL;
            v25 = 0x800000025BEB9D90;
            break;
          case 31:
            v26 = 0xD000000000000023;
            v25 = 0x800000025BEB9DB0;
            break;
          default:
            break;
        }

        v28 = 0x6C6576654C707061;
        v29 = 0xED00007465656853;
        switch(v21)
        {
          case 1:
            v30 = 0x6C6576654C707061;
            v31 = 0x7473616F54;
            goto LABEL_89;
          case 2:
            v29 = 0xEF6D657449626154;
            if (v26 != 0x73756C507377656ELL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 3:
            v29 = 0x800000025BEB9A70;
            if (v26 != 0xD000000000000010)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 4:
            v29 = 0xEC0000006D657449;
            if (v26 != 0x6261546F69647561)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 5:
            v29 = 0x800000025BEB9A90;
            if (v26 != 0xD000000000000010)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 6:
            v34 = 0x686372616573;
            goto LABEL_88;
          case 7:
            v34 = 0x7374726F7073;
LABEL_88:
            v30 = v34 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v31 = 0x6D65744962;
LABEL_89:
            v29 = v31 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v26 != v30)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 8:
            v32 = 0x5473656C7A7A7570;
            v33 = 0x6D6574496261;
            goto LABEL_96;
          case 9:
            v32 = 0x6C6F46664F706F74;
            v33 = 0x676E69776F6CLL;
LABEL_96:
            v29 = v33 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v26 != v32)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 10:
            v29 = 0x800000025BEB9AE0;
            if (v26 != 0xD000000000000012)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 11:
            v29 = 0x800000025BEB9B00;
            if (v26 != 0xD00000000000001ALL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 12:
            v29 = 0x800000025BEB9B20;
            if (v26 != 0xD00000000000001BLL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 13:
            v29 = 0xEA00000000006465;
            if (v26 != 0x766153664F706F74)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 14:
            v29 = 0x800000025BEB9B50;
            if (v26 != 0xD000000000000011)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 15:
            v29 = 0x800000025BEB9B70;
            if (v26 != 0xD000000000000010)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 16:
            v29 = 0x800000025BEB9B90;
            if (v26 != 0xD000000000000010)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 17:
            v29 = 0x800000025BEB9BB0;
            if (v26 != 0xD000000000000010)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 18:
            v29 = 0x800000025BEB9BD0;
            if (v26 != 0xD000000000000017)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 19:
            v29 = 0x800000025BEB9BF0;
            if (v26 != 0xD000000000000017)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 20:
            v29 = 0x800000025BEB9C10;
            if (v26 != 0xD00000000000001CLL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 21:
            v29 = 0x800000025BEB9C30;
            if (v26 != 0xD000000000000020)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 22:
            v29 = 0x800000025BEB9C60;
            if (v26 != 0xD000000000000019)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 23:
            v29 = 0x800000025BEB9C80;
            if (v26 != 0xD000000000000022)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 24:
            v29 = 0x800000025BEB9CB0;
            if (v26 != 0xD000000000000017)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 25:
            v29 = 0x800000025BEB9CD0;
            if (v26 != 0xD00000000000001CLL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 26:
            v29 = 0x800000025BEB9CF0;
            if (v26 != 0xD000000000000020)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 27:
            v29 = 0x800000025BEB9D20;
            if (v26 != 0xD00000000000001BLL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 28:
            v29 = 0x800000025BEB9D40;
            if (v26 != 0xD000000000000024)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 29:
            v28 = 0xD00000000000001ALL;
            v29 = 0x800000025BEB9D70;
            goto LABEL_109;
          case 30:
            v29 = 0x800000025BEB9D90;
            if (v26 != 0xD00000000000001FLL)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          case 31:
            v29 = 0x800000025BEB9DB0;
            if (v26 != 0xD000000000000023)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          default:
LABEL_109:
            if (v26 != v28)
            {
              goto LABEL_111;
            }

LABEL_110:
            if (v25 == v29)
            {

              break;
            }

LABEL_111:
            v35 = sub_25BEB4E64();

            if (v35)
            {
              break;
            }

            if (--v23)
            {
              continue;
            }

            v3 = 0;
            break;
        }

        break;
      }
    }

    v13 = v38[3];
    v14 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v13);
    v42 = v21;
    EngagementRequestFactoryType.createRequest(for:context:)(&v42, v3, v13, *(v14 + 8));

    v15 = v43;
    v16 = v44;
    v17 = v45;
    if (v44 == 255)
    {
      sub_25BE7E6A8(v21, &v43);
      sub_25BE8065C(v15, 255);
      sub_25BE5FDE0(v17);

      sub_25BE8065C(v43, v44);
    }

    else
    {
      v18 = v43;
      v19 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v19;
      sub_25BE856C4(v15, v16 & 1, v21, isUniquelyReferenced_nonNull_native);
      sub_25BE8065C(v15, v16);
      sub_25BE5FDE0(v17);

      v46 = v43;
    }

    ++v12;
    result = v40;
    v3 = v41;
    if (v12 == v39)
    {
      goto LABEL_117;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE7D740(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_25BE80B8C(0, &qword_280E76600, &type metadata for EngagementPlacementRequest, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BEB60E0;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;

  a1(v9, 0);
}

uint64_t sub_25BE7D808(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v5 = v3;
  v32 = a1;
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v13) = *a3;
  sub_25BE80458(0, &qword_280E766B0);
  *v12 = sub_25BEB4AA4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = sub_25BEB4814();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    v4 = OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_observersStore;
    swift_beginAccess();
    v15 = *(v5 + v4);
    if (!*(v15 + 16) || (v16 = sub_25BE65758(v13), (v17 & 1) == 0))
    {
LABEL_18:
      swift_endAccess();
LABEL_19:
      sub_25BE80B8C(0, &qword_280E765B0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_25BEB60F0;
      type metadata accessor for WeakEngagementUIEventObserver();
      v22 = swift_allocObject();
      *(v22 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v22 + 24) = a2;
      swift_unknownObjectWeakAssign();
      *(v21 + 32) = v22;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v5 + v4);
      *(v5 + v4) = 0x8000000000000000;
      sub_25BE85950(v21, v13, isUniquelyReferenced_nonNull_native);
      v24 = v34;
      goto LABEL_20;
    }

    v14 = *(*(v15 + 56) + 8 * v16);
    v34 = v14;
    swift_endAccess();
    if (!(v14 >> 62))
    {
      v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        v30 = a2;
        v31 = v13;

LABEL_7:
        v19 = 0;
        a2 = v14 & 0xC000000000000001;
        while (1)
        {
          if (a2)
          {
            MEMORY[0x25F87F3D0](v19, v14);
            v13 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          else
          {
            if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            v13 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_17;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();

          if (Strong)
          {
            swift_unknownObjectRelease();
            if (Strong == v32)
            {
            }
          }

          ++v19;
          if (v13 == v18)
          {
            goto LABEL_25;
          }
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  if (!sub_25BEB4C84())
  {
    goto LABEL_19;
  }

  v30 = a2;
  v31 = v13;
  v18 = sub_25BEB4C84();

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_25:
  type metadata accessor for WeakEngagementUIEventObserver();
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + 24) = v30;
  v27 = swift_unknownObjectWeakAssign();
  MEMORY[0x25F87F190](v27);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BEB49C4();
  }

  sub_25BEB49D4();
  v28 = v34;
  swift_beginAccess();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v5 + v4);
  *(v5 + v4) = 0x8000000000000000;
  sub_25BE85950(v28, v31, v29);
  v24 = v33;
LABEL_20:
  *(v5 + v4) = v24;
  return swift_endAccess();
}

void sub_25BE7DC44(unint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = sub_25BEB47F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(a3) = *a3;
  sub_25BE80458(0, &qword_280E766B0);
  *v10 = sub_25BEB4AA4();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = sub_25BEB4814();
  (*(v7 + 8))(v10, v6);
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v13 = OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_observersStore;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (!*(v14 + 16) || (v15 = sub_25BE65758(a3), (v16 & 1) == 0))
  {
LABEL_18:
    swift_endAccess();
    goto LABEL_20;
  }

  v42 = v4;
  v17 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  v43 = a3;
  v41 = v13;
  if (v17 >> 62)
  {
LABEL_43:
    v18 = sub_25BEB4C84();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
LABEL_19:

    LOBYTE(a3) = v43;
LABEL_20:
    if (qword_280E76F20 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v19 = 0;
  a3 = (v17 & 0xC000000000000001);
  while (a3)
  {
    v20 = MEMORY[0x25F87F3D0](v19, v17);
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_12:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      swift_unknownObjectRelease();
      if (v23 == a1)
      {
        a1 = 0;
        v45[0] = MEMORY[0x277D84F90];
        do
        {
          if (a3)
          {
            v32 = MEMORY[0x25F87F3D0](a1, v17);
            v33 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (a1 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_43;
            }

            v32 = *(v17 + 8 * a1 + 32);

            v33 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_39;
            }
          }

          if (v32 == v20)
          {
          }

          else
          {
            sub_25BEB4C14();
            sub_25BEB4C44();
            sub_25BEB4C54();
            sub_25BEB4C24();
          }

          ++a1;
        }

        while (v33 != v18);

        v34 = v45[0];
        if (v45[0] < 0 || (v45[0] & 0x4000000000000000) != 0)
        {
          v39 = sub_25BEB4C84();
          v35 = v43;
          v36 = v42;
          if (!v39)
          {
            goto LABEL_45;
          }

LABEL_37:
          v37 = v41;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v36 + v37);
          *(v36 + v37) = 0x8000000000000000;
          sub_25BE85950(v34, v35, isUniquelyReferenced_nonNull_native);
          *(v36 + v37) = v44;
        }

        else
        {
          v35 = v43;
          v36 = v42;
          if (*(v45[0] + 16))
          {
            goto LABEL_37;
          }

LABEL_45:

          swift_beginAccess();
          sub_25BE7B6C0(0, v35);
        }

        swift_endAccess();

        return;
      }
    }

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_19;
    }
  }

  if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_21:
  v24 = sub_25BEB4764();
  __swift_project_value_buffer(v24, qword_280E77F40);
  v25 = sub_25BEB4744();
  v26 = sub_25BEB4A54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45[0] = v28;
    *v27 = 136315138;
    LOBYTE(v44) = a3;
    v29 = EngagementUIPlacement.rawValue.getter();
    v31 = sub_25BE60F30(v29, v30, v45);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_25BE5A000, v25, v26, "Cannot remove observer for placement: [%s]", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x25F87FD60](v28, -1, -1);
    MEMORY[0x25F87FD60](v27, -1, -1);
  }
}

uint64_t sub_25BE7E134(uint64_t *a1, char *a2)
{
  v3 = *(a1 + 8);
  v19 = *a2;
  v18 = *a1;
  if (v3 >> 6)
  {
    v4 = v3 & 0x3F;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 > 2u)
  {
  }

  else
  {
    v5 = sub_25BEB4E64();

    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v7 = OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_observersStore;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = sub_25BE65758(v19);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25F87F3D0](v13, v11);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_22:
          __break(1u);
          return swift_endAccess();
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_26:
          v12 = sub_25BEB4C84();
          goto LABEL_12;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_22;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v14 + 24);
        ObjectType = swift_getObjectType();
        v21 = v18;
        v22 = v3;
        v20 = v19;
        (*(v16 + 8))(&v21, &v20, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      ++v13;
    }

    while (v15 != v12);
  }
}

id sub_25BE7E3C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BE7E4F8()
{
  swift_getObjectType();

  return sub_25BEB4424();
}

uint64_t sub_25BE7E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2860](a1, a2, ObjectType, a6);
}

uint64_t sub_25BE7E5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_25BE7E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

unint64_t sub_25BE7E6A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_25BE65758(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25BEAC144();
      v9 = v12;
    }

    v10 = *(v9 + 56) + 16 * v7;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *a2 = v11;
    *(a2 + 8) = v10;
    result = sub_25BE7EE5C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

double sub_25BE7E748@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_25BE7A95C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25BEAC2CC();
      v9 = v11;
    }

    sub_25BE7B108(*(v9 + 48) + 40 * v7);
    sub_25BE5F500((*(v9 + 56) + 32 * v7), a2);
    sub_25BE7F49C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_25BE7E7EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BEB4B24() + 1) & ~v5;
    while (1)
    {
      sub_25BEB4F04();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_25BEB43C4() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BE7EE5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BEB4B24() + 1) & ~v5;
    do
    {
      sub_25BEB4F04();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v14 >= v15 + 1))
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}