uint64_t sub_25BC1BA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = sub_25BC60380(ObjectType, a2);
  v16 = v15;
  v77 = v14;
  __src[0] = v14;
  __src[1] = v15;
  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4 & 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  LOWORD(__src[8]) = 257;
  BYTE2(__src[8]) = 0;
  __src[9] = 0x636170736F6E6F6DLL;
  __src[10] = 0xE900000000000065;
  __src[11] = 10;
  LOBYTE(__src[12]) = 3;
  swift_beginAccess();
  sub_25BCB617C();
  swift_unknownObjectRetain();
  sub_25BC1D49C(__src, v85);
  sub_25BAFD100();
  v17 = *(*(a6 + 16) + 16);
  sub_25BAFD240(v17);
  v18 = *(a6 + 16);
  *(v18 + 16) = v17 + 1;
  memcpy((v18 + 104 * v17 + 32), __src, 0x61uLL);
  *(a6 + 16) = v18;
  swift_endAccess();
  v80 = (*(a2 + 32))(ObjectType, a2);
  v79 = sub_25BA9BEA0(v80);
  if (!v79)
  {
LABEL_54:

    sub_25BC1D4D4(__src);
  }

  v19 = 0;
  v76 = v16;
  while (1)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x25F8779B0](v19, v80);
    }

    else
    {
      if (v19 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v20 = *(v80 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    v81 = v19 + 1;
    v82 = v20;
    if (sub_25BAB3058())
    {
      v22 = v21;
      v23 = swift_getObjectType();
      v24 = sub_25BC60380(v23, v22);
      v26 = v25;
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    v28 = a5[13];
    v27 = a5[14];
    v29 = sub_25BAC44E4();
    if (*(v27 + 16))
    {
      v31 = sub_25BA9266C(v29, v30);
      v33 = v32;

      if (v33)
      {
        v34 = *(*(v27 + 56) + 8 * v31);
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v34 >= *(v28 + 16))
        {
          goto LABEL_60;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v28 = a5[17];
    v35 = a5[18];
    v36 = sub_25BAC44E4();
    if (*(v35 + 16))
    {
      v38 = sub_25BA9266C(v36, v37);
      v40 = v39;

      if (v40)
      {
        v34 = *(*(v35 + 56) + 8 * v38);
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v34 >= *(v28 + 16))
        {
          goto LABEL_62;
        }

LABEL_20:
        v41 = v28 + 16 * v34;
        v24 = *(v41 + 32);
        v26 = *(v41 + 40);
        sub_25BCB617C();
        v20 = v82;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v20 = v82;
    v24 = sub_25BAC44E4();
    v26 = v42;
LABEL_23:
    sub_25BCB617C();
    swift_beginAccess();
    if (*(*(a7 + 16) + 16))
    {
      sub_25BA9266C(v24, v26);
      v44 = v43;

      if (v44)
      {
        swift_endAccess();
        goto LABEL_36;
      }
    }

    else
    {
    }

    swift_endAccess();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v45 = *(a7 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v86 = *(a7 + 16);
    v46 = v86;
    *(a7 + 16) = 0x8000000000000000;
    v47 = sub_25BA9266C(v24, v26);
    if (__OFADD__(v46[2], (v48 & 1) == 0))
    {
      goto LABEL_56;
    }

    v49 = v47;
    v50 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4850, &qword_25BCCBF10);
    if (sub_25BCB745C())
    {
      v51 = sub_25BA9266C(v24, v26);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_64;
      }

      v49 = v51;
    }

    v53 = v86;
    if (v50)
    {
      v54 = (v86[7] + 24 * v49);
      v55 = v54[1];
      v56 = v54[2];
      *v54 = v24;
      v54[1] = v26;
      v54[2] = MEMORY[0x277D84F90];
    }

    else
    {
      v86[(v49 >> 6) + 8] |= 1 << v49;
      v57 = (v53[6] + 16 * v49);
      *v57 = v24;
      v57[1] = v26;
      v58 = (v53[7] + 24 * v49);
      *v58 = v24;
      v58[1] = v26;
      v58[2] = MEMORY[0x277D84F90];
      v59 = v53[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_58;
      }

      v53[2] = v61;
    }

    *(a7 + 16) = v53;
    swift_endAccess();
    v20 = v82;
LABEL_36:
    swift_beginAccess();
    v63 = sub_25BB3A5A4();
    if (*(v62 + 8))
    {
      v64 = v62;
      v65 = 909209702;
      v66 = 0xE400000000000000;
      switch(*(v20 + 160))
      {
        case 0:
          v65 = 947154537;
          break;
        case 1:
          v66 = 0xE500000000000000;
          v65 = 0x3631746E69;
          break;
        case 2:
          v66 = 0xE500000000000000;
          v65 = 0x3233746E69;
          break;
        case 3:
          v66 = 0xE500000000000000;
          v65 = 0x3436746E69;
          break;
        case 4:
          v66 = 0xE500000000000000;
          v65 = 0x38746E6975;
          break;
        case 5:
          v66 = 0xE600000000000000;
          v65 = 0x3631746E6975;
          break;
        case 8:
          break;
        case 9:
          v65 = 909207138;
          break;
        case 0xA:
          v65 = 842231910;
          break;
        case 0xC:
          v65 = 1819242338;
          break;
        default:
          goto LABEL_63;
      }

      v83 = v65;
      v84 = v66;
      v67 = MEMORY[0x25F876F80](*(v20 + 152), MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v67);

      v68 = *(v64 + 16);
      sub_25BCB617C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v64 + 16) = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = *(v68 + 16);
        sub_25BAFE71C();
        v68 = v73;
        *(v64 + 16) = v73;
      }

      v70 = *(v68 + 16);
      if (v70 >= *(v68 + 24) >> 1)
      {
        sub_25BAFE71C();
        v68 = v74;
        *(v64 + 16) = v74;
      }

      *(v68 + 16) = v70 + 1;
      v71 = (v68 + 32 * v70);
      v71[4] = v77;
      v71[5] = v76;
      v71[6] = v83;
      v71[7] = v84;
      (v63)(v85, 0);
      swift_endAccess();
    }

    else
    {
      (v63)(v85, 0);
      swift_endAccess();
    }

    ++v19;
    if (v81 == v79)
    {
      goto LABEL_54;
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
  __break(1u);
LABEL_63:
  sub_25BCB74CC();
  __break(1u);
LABEL_64:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BC1C210(uint64_t a1)
{
  v4 = *(a1 + 160);
  v5 = sub_25BB9FC3C();
  v2 = MEMORY[0x25F876F80](*(a1 + 152), MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v2);

  return v5;
}

uint64_t sub_25BC1C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25BC458D0();
  v9 = v8;
  v10 = *(a1 + 152);
  __src[0] = v7;
  __src[1] = v8;
  __src[2] = v10;
  __src[3] = v7;
  __src[5] = 0;
  __src[6] = 0;
  __src[4] = v8;
  LOBYTE(__src[7]) = 2;
  LOWORD(__src[8]) = 257;
  BYTE2(__src[8]) = 1;
  __src[9] = 0x636170736F6E6F6DLL;
  __src[10] = 0xE900000000000065;
  __src[11] = 10;
  LOBYTE(__src[12]) = 3;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_25BCB617C();
  sub_25BC1D49C(__src, v35);
  sub_25BAFD100();
  v11 = *(*(a3 + 16) + 16);
  sub_25BAFD240(v11);
  v12 = *(a3 + 16);
  *(v12 + 16) = v11 + 1;
  memcpy((v12 + 104 * v11 + 32), __src, 0x61uLL);
  *(a3 + 16) = v12;
  swift_endAccess();
  if (!sub_25BAB3058())
  {
    sub_25BC1D4D4(__src);
  }

  v14 = v13;
  ObjectType = swift_getObjectType();
  v16 = sub_25BC60380(ObjectType, v14);
  v18 = v17;
  if (v16 != v7 || v17 != v9)
  {
    v20 = v16;
    if ((sub_25BCB789C() & 1) == 0)
    {
      swift_beginAccess();
      v34 = sub_25BB3F070(v20, v18, *(a4 + 16));
      v22 = v21;
      swift_endAccess();
      if (v22)
      {
        sub_25BB3D6B4(v34, v22);
      }

      else
      {
        swift_beginAccess();
        sub_25BCB617C();
        v23 = *(a4 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v36 = *(a4 + 16);
        sub_25BC1A934();
        *(a4 + 16) = v36;
        swift_endAccess();
      }

      swift_beginAccess();
      v25 = sub_25BB3A5A4();
      if (*(v24 + 8))
      {
        v26 = v24;
        v27 = sub_25BC1C210(a1);
        v29 = v28;
        sub_25BAFD0E8();
        v30 = *(*(v26 + 16) + 16);
        sub_25BAFD228(v30);
        v31 = *(v26 + 16);
        *(v31 + 16) = v30 + 1;
        v32 = (v31 + 32 * v30);
        v32[4] = v7;
        v32[5] = v9;
        v32[6] = v27;
        v32[7] = v29;
        (v25)(v35, 0);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_25BC1D4D4(__src);
      }

      (v25)(v35, 0);
      swift_endAccess();
    }
  }

  sub_25BC1D4D4(__src);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BC1C5BC()
{
  v1 = v0[1];
  v12 = *(v0 + 1);
  v13 = *(v0 + 2);
  v14 = *(v0 + 3);
  v2 = *(v0 + 64);
  v3 = *(v0 + 65);
  v4 = *(v0 + 66);
  v15 = *(v0 + 67);
  v16 = *(v0 + 71);
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v8 = *(v0 + 96);
  v17 = *v0;
  sub_25BCB617C();
  MEMORY[0x25F876C90](23328, 0xE200000000000000);
  v9 = sub_25BC1CA08();
  MEMORY[0x25F876C90](v9);

  MEMORY[0x25F876C90](0x3D6C6562616C20, 0xE700000000000000);

  v10 = sub_25BC1CD8C();
  MEMORY[0x25F876C90](v10);

  MEMORY[0x25F876C90](32, 0xE100000000000000);

  MEMORY[0x25F876C90](93, 0xE100000000000000);
  return v17;
}

uint64_t sub_25BC1C730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = (a3 + 56);
  while (v5 != v4)
  {
    v8 = *(v6 - 3);
    v7 = *(v6 - 2);
    v10 = *(v6 - 1);
    v9 = *v6;
    sub_25BCB617C();
    sub_25BCB617C();
    if (v4)
    {
      MEMORY[0x25F876C90](10, 0xE100000000000000);
    }

    sub_25BCB617C();
    MEMORY[0x25F876C90](540945696, 0xE400000000000000);
    MEMORY[0x25F876C90](v8, v7);
    MEMORY[0x25F876C90](a1, a2);

    if (v9)
    {
      MEMORY[0x25F876C90](v10, v9);

      MEMORY[0x25F876C90](23842, 0xE200000000000000);
      MEMORY[0x25F876C90](0x3D206C6562616C5BLL, 0xEA00000000002220);
    }

    MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE3470);
    MEMORY[0x25F876C90](32, 0xE100000000000000);
    v6 += 4;
    ++v4;
  }

  return 0;
}

uint64_t sub_25BC1C8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = sub_25BC5F0F4();
  type metadata accessor for TensorHandle();
  *(swift_allocObject() + 16) = a2;

  sub_25BAA6EB0();
  if (v9 == 1)
  {
    Tensor.scalar<A>(as:)(a1, a3, a4);

    return sub_25BCB63AC();
  }

  else
  {
    v11 = Tensor.scalars<A>(as:)(a1, a3, a4);

    v12 = MEMORY[0x25F876F80](v11, a3);

    return v12;
  }
}

uint64_t sub_25BC1CA08()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);
  v4 = *(v0 + 5);
  v3 = *(v0 + 6);
  if (!*(v0 + 56))
  {
    if (v1)
    {
      v8 = *(v0 + 4);
    }

    else
    {
      v2 = 0x7475706E49;
      v8 = 0xE500000000000000;
    }

    v9 = *(v0 + 4);
    sub_25BCB617C();
    sub_25BCB617C();
    if (v3)
    {
      MEMORY[0x25F876C90](v2, v8);

      MEMORY[0x25F876C90](32, 0xE100000000000000);
      MEMORY[0x25F876C90](v4, v3);
LABEL_18:

      MEMORY[0x25F876C90](62, 0xE100000000000000);
      return 60;
    }

    v13 = v2;
LABEL_17:
    MEMORY[0x25F876C90](v13, v8);
    goto LABEL_18;
  }

  v5 = *(v0 + 2);
  if (*(v0 + 56) != 1)
  {
    if (v1)
    {
      v10 = *(v0 + 3);
    }

    else
    {
      v10 = 0x74757074754FLL;
    }

    if (v1)
    {
      v11 = *(v0 + 4);
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    sub_25BC1D504(v5, v2, v1, v4, v3, 2);
    MEMORY[0x25F876C90](v10, v11);

    MEMORY[0x25F876C90](32, 0xE100000000000000);
    sub_25BCB70FC();

    v12 = MEMORY[0x25F876F80](v5, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v12);

    MEMORY[0x25F876C90](0x3E544E4F462F3CLL, 0xE700000000000000);

    v13 = 0xD000000000000015;
    v8 = 0x800000025BCE3490;
    goto LABEL_17;
  }

  v15 = *v0;
  v16 = *(v0 + 2);
  v17 = *(v0 + 3);
  v18 = *(v0 + 4);
  v19 = *(v0 + 5);
  v20 = *(v0 + 6);
  v21 = *(v0 + 57);
  v22 = *(v0 + 73);
  v23 = *(v0 + 89);
  v6 = swift_unknownObjectRetain();
  v7 = sub_25BC1CC78(v6, v2, v1, v4 & 1);
  sub_25BC1D5A0(v5, v2, v1, v4, v3, 1);
  return v7;
}

uint64_t sub_25BC1CC78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  MEMORY[0x25F876C90](v7);

  MEMORY[0x25F876C90](32, 0xE100000000000000);
  if ((a4 & 1) == 0)
  {
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](41, 0xE100000000000000);
    MEMORY[0x25F876C90](40, 0xE100000000000000);
  }

  MEMORY[0x25F876C90](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_25BC1CD8C()
{
  v8 = 0x223D657061687320;
  v9 = 0xE800000000000000;
  v1 = sub_25BC1CF34(*v0);
  MEMORY[0x25F876C90](v1);

  MEMORY[0x25F876C90](34, 0xE100000000000000);
  strcpy(v7, " style=");
  BYTE1(v7[1]) = 0;
  WORD1(v7[1]) = 0;
  HIDWORD(v7[1]) = -402653184;
  if (*(v0 + 1))
  {
    v2 = 0x64656C6C6966;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 1))
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x25F876C90](v2, v3);

  MEMORY[0x25F876C90](34, 0xE100000000000000);
  MEMORY[0x25F876C90](v7[0], v7[1]);

  strcpy(v7, " fillcolor=");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v4 = sub_25BC1D018(*(v0 + 2));
  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](34, 0xE100000000000000);
  MEMORY[0x25F876C90](v7[0], v7[1]);

  v7[0] = 32;
  v7[1] = 0xE100000000000000;
  v5 = sub_25BC1D360(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](32, 0xE100000000000000);

  return v8;
}

uint64_t sub_25BC1CF34(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1818326639;
      break;
    case 2:
      result = 0x657261757173;
      break;
    case 3:
      result = 7892834;
      break;
    case 4:
      result = 0x656C63726963;
      break;
    case 5:
      result = 0x6E6F67796C6F70;
      break;
    case 6:
      result = 0x657370696C6C65;
      break;
    case 7:
      result = 0x656C676E61697274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC1CFF4(char a1)
{
  if (a1)
  {
    return 0x64656C6C6966;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC1D018(char a1)
{
  result = 0x617267746867696CLL;
  switch(a1)
  {
    case 1:
      result = 0x756C62746867696CLL;
      break;
    case 2:
      result = 0x657267746867696CLL;
      break;
    case 3:
      result = 0x6B63616C62;
      break;
    case 4:
      result = 0x6574696877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC1D0B8()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC1D10C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC1D158()
{
  v0 = sub_25BCB761C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC1D1A4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_25BC1CD8C();
}

uint64_t sub_25BC1D204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC1D0B8();
  *a2 = result;
  return result;
}

uint64_t sub_25BC1D234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC1CFF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC1D284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC1D10C();
  *a2 = result;
  return result;
}

uint64_t sub_25BC1D2B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC1CF34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC1D304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC1D158();
  *a2 = result;
  return result;
}

uint64_t sub_25BC1D334@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC1D018(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC1D360(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_25BCB70FC();

  strcpy(v10, " fontcolor=");
  v7 = sub_25BC1D018(a4);
  MEMORY[0x25F876C90](v7);

  MEMORY[0x25F876C90](0x6973746E6F662022, 0xEC000000223D657ALL);
  v8 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v8);

  MEMORY[0x25F876C90](0x616E746E6F662022, 0xEC000000223D656DLL);
  MEMORY[0x25F876C90](a1, a2);
  MEMORY[0x25F876C90](34, 0xE100000000000000);
  return v10[0];
}

uint64_t sub_25BC1D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {
    sub_25BCB617C();
LABEL_9:

    return sub_25BCB617C();
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    goto LABEL_9;
  }

  return swift_unknownObjectRetain();
}

uint64_t sub_25BC1D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

LABEL_9:
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }

    goto LABEL_9;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_25BC1D654(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25BC1D694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC1D700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_25BC1D740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
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

uint64_t sub_25BC1D7A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC1D7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25BC1D850(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25BC1D890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DotColor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DotNodeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DotNodeShape(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC1DB7C()
{
  result = qword_27FBB6738;
  if (!qword_27FBB6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6738);
  }

  return result;
}

unint64_t sub_25BC1DBD4()
{
  result = qword_27FBB6740;
  if (!qword_27FBB6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6740);
  }

  return result;
}

unint64_t sub_25BC1DC2C()
{
  result = qword_27FBB6748;
  if (!qword_27FBB6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6748);
  }

  return result;
}

uint64_t sub_25BC1DC98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC1DD0C()
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC1DD68()
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC1DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC1DC98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC1DDD8(uint64_t a1)
{
  v2 = sub_25BC1DFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC1DE14(uint64_t a1)
{
  v2 = sub_25BC1DFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Reshape.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6750, &qword_25BCCC3E0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC1DFA4();
  sub_25BCB617C();
  sub_25BCB7B6C();
  v14[1] = v11;
  sub_25BB417AC();
  sub_25BCB779C();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_25BC1DFA4()
{
  result = qword_28154C050;
  if (!qword_28154C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C050);
  }

  return result;
}

uint64_t Reshape.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6758, &qword_25BCCC3E8);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC1DFA4();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BB41870();
    sub_25BCB76AC();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Reshape.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_25BC1E248()
{
  result = qword_27FBB6760;
  if (!qword_27FBB6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6760);
  }

  return result;
}

unint64_t sub_25BC1E2A0()
{
  result = qword_28154C040;
  if (!qword_28154C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C040);
  }

  return result;
}

unint64_t sub_25BC1E2F8()
{
  result = qword_28154C048;
  if (!qword_28154C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C048);
  }

  return result;
}

uint64_t sub_25BC1E34C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  sub_25BAF99E8(v2[6]);
  sub_25BB50DF0();
  v8 = sub_25BCB672C();

  sub_25BAF99E8(v2[7]);
  v9 = sub_25BCB672C();

  sub_25BAF99E8(v2[8]);
  v10 = sub_25BCB672C();

  v12 = v2[3];
  v11 = v2[4];
  sub_25BCB617C();
  v13 = sub_25BC1E8A0(v7, v8, v9, v10, v12, v11, a1);

  *(v5 + 32) = v13;
  return v5;
}

uint64_t sub_25BC1E4CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(v2[5] + 152);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v29 = MEMORY[0x277D84F90];
    sub_25BCB617C();
    sub_25BB005F0();
    v8 = v29;
    v9 = v29[2];
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      if (v9 >= v29[3] >> 1)
      {
        sub_25BB005F0();
      }

      v29[2] = v9 + 1;
      *(v29 + v9 + 8) = v11;
      v10 += 8;
      ++v9;
      --v7;
    }

    while (v7);

    v5 = a1;
  }

  v12 = v8[2];
  if (v12 >> 61)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = MEMORY[0x25F876250](v8 + 4, 4 * v12);
  v15 = v14;

  v16 = sub_25BCB59FC();
  sub_25BB0D160(v13, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBB6D0;
  *(v17 + 32) = sub_25BCB6A6C();
  sub_25BB50DF0();
  v18 = sub_25BCB672C();

  v8 = [v5 constantWithData:v16 shape:v18 dataType:536870944];

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v19 = MEMORY[0x25F8779B0](0, a2);
    goto LABEL_10;
  }

  v19 = *(a2 + 32);
LABEL_10:
  v20 = v19;
  sub_25BAF99E8(v3[6]);
  v21 = sub_25BCB672C();

  sub_25BAF99E8(v3[7]);
  v22 = sub_25BCB672C();

  sub_25BAF99E8(v3[8]);
  v23 = sub_25BCB672C();

  v24 = v3[3];
  v25 = v3[4];
  sub_25BCB617C();
  v26 = sub_25BC1E93C(v20, v8, v21, v22, v23, v24, v25, v5);

  *(v6 + 32) = v26;
  return v6;
}

uint64_t sub_25BC1E7C4(uint64_t a1)
{
  result = sub_25BC1E84C(&qword_27FBB6168, type metadata accessor for SliceGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC1E808(uint64_t a1)
{
  result = sub_25BC1E84C(&qword_27FBB6170, type metadata accessor for SliceOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC1E84C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC1E8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a7 sliceTensor:a1 starts:a2 ends:a3 strides:a4 name:v12];

  return v13;
}

id sub_25BC1E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 sliceGradientTensor:a1 fwdInShapeTensor:a2 starts:a3 ends:a4 strides:a5 name:v14];

  return v15;
}

unint64_t sub_25BC1E9E0(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {

      return sub_25BCB647C();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return sub_25BCB647C();
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_25BCB647C();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t Collection.contiguousMap<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a5;
  v55 = a1;
  v56 = a2;
  OUTLINED_FUNCTION_9();
  i = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v52 = *(v16 + 8);
  v18 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v50 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = *(*(sub_25BCB6E8C() - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  v60 = &v48 - v28;
  OUTLINED_FUNCTION_9();
  AssociatedConformanceWitness = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v49 = &v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v18;
  v62 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v51 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  v39 = &v48 - v38;
  v64 = sub_25BCB731C();
  v40 = v61;
  sub_25BCB6ABC();
  v58 = a4;
  v57 = sub_25BCB732C();
  sub_25BCB726C();
  (*(AssociatedConformanceWitness + 16))(v49, v40, v48);
  v61 = v39;
  sub_25BCB655C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = (v50 + 32);
  v52 = (i + 2);
  v42 = i + 1;
  for (i = (v50 + 8); ; (*i)(v44, AssociatedTypeWitness))
  {
    v43 = v60;
    sub_25BCB6EDC();
    if (__swift_getEnumTagSinglePayload(v43, 1, AssociatedTypeWitness) == 1)
    {
      (*(v51 + 8))(v61, v62);
      v63 = v64;
      swift_getWitnessTable();
      return sub_25BCB68DC();
    }

    (*v41)(v25, v43, AssociatedTypeWitness);
    v55(v25);
    if (v6)
    {
      break;
    }

    v44 = v25;
    v45 = v58;
    (*v52)(v53, v15, v58);
    v6 = 0;
    sub_25BCB72FC();
    v46 = v45;
    v25 = v44;
    (*v42)(v15, v46);
  }

  (*i)(v25, AssociatedTypeWitness);
  (*(v51 + 8))(v61, v62);
}

uint64_t sub_25BC1EFDC()
{
  OUTLINED_FUNCTION_2_57();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_25BCB6AAC();
  sub_25BCB6ACC();
  return (*(v2 + 8))(v7, AssociatedTypeWitness);
}

uint64_t Comparable.clamped(to:)()
{
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + *(sub_25BCB62FC() + 36);
  sub_25BCB792C();
  sub_25BCB791C();
  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_25BC1F1CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v42 = MEMORY[0x277D84F90];
  sub_25BB00D58(0, v6, 0);
  v7 = v42;
  v33 = v5;
  v34 = v4;
  v31 = a2;
  v32 = a1;
  v35 = v6;
  if (v6)
  {
    sub_25BCB617C();
    result = sub_25BCB617C();
    v9 = (a1 + 48);
    v10 = (a2 + 48);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_24;
      }

      v37 = *(v9 - 1);
      v38 = *(v9 - 2);
      v11 = *v9;
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = v7;
      v15 = *v10;
      sub_25BCB617C();

      v40 = v13;
      v39 = v15;
      v16 = v15;
      v7 = v14;
      sub_25BB06178(v12, v13, v16);

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_25BB00D58((v17 > 1), v18 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v18 + 1;
      v19 = (v7 + 40 * v18);
      v19[4] = v38;
      v19[5] = v37;
      --v5;
      v19[6] = v12;
      v19[7] = v40;
      v19[8] = v39;
      --v4;
      v9 += 3;
      v10 += 3;
      if (!--v6)
      {
        goto LABEL_13;
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
  }

  else
  {
    sub_25BCB617C();
    result = sub_25BCB617C();
LABEL_13:
    v41 = v31 + 32;
    v20 = v35;
    for (i = 24 * v35; v34 != v20; i += 24)
    {
      if (v20 >= v34)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (v33 == v20)
      {
        break;
      }

      if (v20 >= v33)
      {
        goto LABEL_27;
      }

      v36 = v20;
      v22 = *(v32 + i + 32);
      v23 = *(v32 + i + 40);
      v24 = *(v32 + i + 48);
      v25 = *(v41 + i);
      v26 = *(v41 + i + 8);
      v27 = *(v41 + i + 16);
      sub_25BCB617C();

      sub_25BB06178(v25, v26, v27);

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_25BB00D58((v28 > 1), v29 + 1, 1);
      }

      *(v7 + 16) = v29 + 1;
      v30 = (v7 + 40 * v29);
      v30[4] = v22;
      v30[5] = v23;
      v30[6] = v25;
      v30[7] = v26;
      v30[8] = v27;
      v20 = v36 + 1;
    }

    return v7;
  }

  return result;
}

uint64_t sub_25BC1F464(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_25BB00DC4(0, v6, 0);
  v25 = v5;
  v26 = v4;
  v23 = a1;
  v24 = v6;
  v22 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v28 = *(v9 - 1);
      v27 = *v8;
      v12 = *(v29 + 16);
      v11 = *(v29 + 24);
      result = sub_25BCB617C();
      if (v12 >= v11 >> 1)
      {
        result = sub_25BB00DC4(v11 > 1, v12 + 1, 1);
      }

      *(v29 + 16) = v12 + 1;
      v13 = v29 + 24 * v12;
      --v5;
      *(v13 + 32) = v28;
      *(v13 + 40) = v10;
      *(v13 + 48) = v27;
      --v4;
      ++v8;
      v9 += 3;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = v24;
    for (i = (v23 + 24 * v24 + 40); v26 != v14; i += 3)
    {
      if (v14 >= v26)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v25 == v14)
      {
        break;
      }

      if (v14 >= v25)
      {
        goto LABEL_25;
      }

      v17 = *(i - 1);
      v16 = *i;
      v18 = *(v22 + 32 + 2 * v14);
      v20 = *(v29 + 16);
      v19 = *(v29 + 24);
      result = sub_25BCB617C();
      if (v20 >= v19 >> 1)
      {
        result = sub_25BB00DC4(v19 > 1, v20 + 1, 1);
      }

      *(v29 + 16) = v20 + 1;
      v21 = v29 + 24 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v16;
      *(v21 + 48) = v18;
      ++v14;
    }

    return v29;
  }

  return result;
}

uint64_t sub_25BC1F650(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v50 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v2 = v50;
    v4 = (a1 + 48);
    while (1)
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      if ((*v4 & 0x2000000000000000) != 0)
      {
        break;
      }

      if (!(v7 >> 62))
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        sub_25BAA51C8(&v45, &v37);
        if (*(&v38 + 1))
        {
          v41 = v37;
          v42 = v38;
          v43 = v39;
          v44 = v40;
          sub_25BB06178(v6, v5, v7);
          sub_25BB06184(v6, v5, v7);
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BB06178(v6, v5, v7);
          sub_25BB06184(v6, v5, v7);
          sub_25BAA49B8();
          sub_25BAA4A5C(v36);

          sub_25BAA51C8(v36, &v41);
          sub_25BAA4AF4(v36);
          if (*(&v38 + 1))
          {
            sub_25BAA6F5C(&v37, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        v35 = v2;
        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v36[0] = v6;
        LOBYTE(v37) = v5;
        sub_25BC72C64(v36, &v37, &v41, qword_281557400);
        v23 = v29;
        sub_25BB0D1B8(v6, v5, v7);
        v30 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v41, v36);
        ObjectType = swift_getObjectType();
        v26 = swift_unknownObjectRetain();
        LOBYTE(v37) = 1;
        v27 = v30;
        v28 = ObjectType;
LABEL_35:
        v32 = sub_25BC5FAD0(v26, v36, 0x100000000uLL, v27, v28, v23);
        type metadata accessor for TensorHandle();
        v21 = swift_allocObject();
        *(v21 + 16) = v32;

        sub_25BAA6EB0();
        swift_unknownObjectRelease();

        sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA6F5C(&v41, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BB0D1B8(v6, v5, v7);
LABEL_36:
        v2 = v35;
        goto LABEL_37;
      }

      if (v7 >> 62 == 1)
      {
        v35 = v2;
        v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        sub_25BB06184(v6, v5, v7);
        sub_25BB06184(v6, v5, v7);
        v8(&v49, v5, v7 & 0x1FFFFFFFFFFFFFFFLL);
        v9 = v49;
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        sub_25BAA51C8(&v45, &v37);
        if (*(&v38 + 1))
        {
          v41 = v37;
          v42 = v38;
          v43 = v39;
          v44 = v40;
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BAA49B8();
          sub_25BAA4A5C(v36);

          sub_25BAA51C8(v36, &v41);
          sub_25BAA4AF4(v36);
          if (*(&v38 + 1))
          {
            sub_25BAA6F5C(&v37, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v36[0] = v6;
        LOBYTE(v37) = v9;
        sub_25BC72C64(v36, &v37, &v41, qword_281557400);
        v23 = v22;
        sub_25BB0D1B8(v6, v5, v7);
        v24 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v41, v36);
        v25 = swift_getObjectType();
        v26 = swift_unknownObjectRetain();
        LOBYTE(v37) = 1;
        v27 = v24;
        v28 = v25;
        goto LABEL_35;
      }

      sub_25BB06184(*(v4 - 2), *(v4 - 1), *v4);
      v21 = v6;
LABEL_37:
      v50 = v2;
      v33 = *(v2 + 16);
      if (v33 >= *(v2 + 24) >> 1)
      {
        sub_25BAC5590();
        v2 = v50;
      }

      v4 += 3;
      *(v2 + 16) = v33 + 1;
      *(v2 + 8 * v33 + 32) = v21;
      if (!--v1)
      {
        return v2;
      }
    }

    v35 = v2;
    v10 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v11 = swift_allocObject();
    v12 = v11;
    *(v11 + 16) = xmmword_25BCBDF80;
    *(v11 + 32) = 1;
    if ((v7 & 0x100) != 0)
    {
      v14 = 3;
      if (v10 >= 2)
      {
        v14 = 1;
      }

      *(v11 + 40) = v14;
      *(v11 + 48) = v6;
      *(v11 + 56) = v5;
    }

    else
    {
      *(v11 + 40) = v6;
      *(v11 + 48) = v5;
      v13 = 3;
      if (v10 >= 2)
      {
        v13 = 1;
      }

      *(v11 + 56) = v13;
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    sub_25BAA51C8(&v45, &v37);
    if (*(&v38 + 1))
    {
      v41 = v37;
      v42 = v38;
      v43 = v39;
      v44 = v40;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v36);

      sub_25BAA51C8(v36, &v41);
      sub_25BAA4AF4(v36);
      if (*(&v38 + 1))
      {
        sub_25BAA6F5C(&v37, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v36[0] = v12;
    LOBYTE(v37) = 10;
    sub_25BC72C64(v36, &v37, &v41, qword_281557400);
    v16 = v15;

    v17 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(&v41, v36);
    v18 = swift_getObjectType();
    v19 = swift_unknownObjectRetain();
    LOBYTE(v37) = 1;
    v20 = sub_25BC5FAD0(v19, v36, 0x100000000uLL, v17, v18, v16);
    type metadata accessor for TensorHandle();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA6F5C(&v41, &qword_27FBB6730, &qword_25BCBC4B0);
    goto LABEL_36;
  }

  return v2;
}

uint64_t sub_25BC1FD58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E60, &qword_25BCC7190);
  result = sub_25BCB758C();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v65 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v64 = result + 64;
  v63 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v14 = (v11 - 1) & v11;
LABEL_10:
      v17 = v13 | (v4 << 6);
      v18 = (*(v65 + 48) + 16 * v17);
      v19 = *v18;
      v69 = v18[1];
      v20 = (*(v65 + 56) + 24 * v17);
      v21 = v20[1];
      v67 = v19;
      v68 = *v20;
      v22 = v20[2];
      v66 = v14;
      if ((v22 & 0x2000000000000000) != 0)
      {
        v25 = v5;
        v26 = v20[1];
        v27 = v20[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
        v28 = swift_allocObject();
        v29 = v28;
        *(v28 + 16) = xmmword_25BCBDF80;
        *(v28 + 32) = 1;
        if ((v22 & 0x100) != 0)
        {
          if (v27 >= 2)
          {
            v31 = 1;
          }

          else
          {
            v31 = 3;
          }

          *(v28 + 40) = v31;
          *(v28 + 48) = v68;
          *(v28 + 56) = v26;
        }

        else
        {
          *(v28 + 40) = v68;
          *(v28 + 48) = v26;
          v30 = 3;
          if (v27 >= 2)
          {
            v30 = 1;
          }

          *(v28 + 56) = v30;
        }

        v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        sub_25BAA51C8(&v79, &v71);
        v32 = v69;
        if (*(&v72 + 1))
        {
          v75 = v71;
          v76 = v72;
          v77 = v73;
          v78 = v74;
          sub_25BCB617C();
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BCB617C();
          sub_25BAA49B8();
          sub_25BAA4A5C(v70);

          sub_25BAA51C8(v70, &v75);
          sub_25BAA4AF4(v70);
          if (*(&v72 + 1))
          {
            sub_25BAA6F5C(&v71, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v70[0] = v29;
        LOBYTE(v71) = 10;
        v5 = v25;
        sub_25BC72C64(v70, &v71, &v75, qword_281557400);
        v34 = v33;

        v35 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v75, v70);
        ObjectType = swift_getObjectType();
        v37 = swift_unknownObjectRetain();
        LOBYTE(v71) = 1;
        v38 = sub_25BC5FAD0(v37, v70, 0x100000000uLL, v35, ObjectType, v34);
        type metadata accessor for TensorHandle();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;

        sub_25BAA6EB0();
        swift_unknownObjectRelease();

        sub_25BAA6F5C(&v75, &qword_27FBB6730, &qword_25BCBC4B0);
        result = sub_25BAA6F5C(&v79, &qword_27FBB6730, &qword_25BCBC4B0);
        v3 = v63;
        goto LABEL_44;
      }

      if (!(v22 >> 62))
      {
        break;
      }

      v61 = v20[1];
      if (v22 >> 62 == 1)
      {
        v58 = v5;
        v23 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        sub_25BCB617C();
        sub_25BB06178(v68, v21, v22);
        v23(&v83, v21, v22 & 0x1FFFFFFFFFFFFFFFLL);
        v24 = v83;
        v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        sub_25BAA51C8(&v79, &v71);
        if (*(&v72 + 1))
        {
          v75 = v71;
          v76 = v72;
          v77 = v73;
          v78 = v74;
          v5 = v58;
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BAA49B8();
          sub_25BAA4A5C(v70);

          sub_25BAA51C8(v70, &v75);
          sub_25BAA4AF4(v70);
          v5 = v58;
          if (*(&v72 + 1))
          {
            sub_25BAA6F5C(&v71, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v70[0] = v68;
        LOBYTE(v71) = v24;
        sub_25BC72C64(v70, &v71, &v75, qword_281557400);
        v59 = v41;
        v42 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v75, v70);
        v43 = swift_getObjectType();
        v44 = swift_unknownObjectRetain();
        LOBYTE(v71) = 1;
        v45 = sub_25BC5FAD0(v44, v70, 0x100000000uLL, v42, v43, v59);
        type metadata accessor for TensorHandle();
        v39 = swift_allocObject();
        *(v39 + 16) = v45;

        sub_25BAA6EB0();

        v46 = v68;
        v47 = v61;
LABEL_43:
        sub_25BB0D1B8(v46, v47, v22);
        swift_unknownObjectRelease();
        sub_25BAA6F5C(&v75, &qword_27FBB6730, &qword_25BCBC4B0);
        result = sub_25BAA6F5C(&v79, &qword_27FBB6730, &qword_25BCBC4B0);
        v3 = v63;
        v32 = v69;
        goto LABEL_44;
      }

      sub_25BCB617C();
      v40 = v22;
      v32 = v69;
      result = sub_25BB06178(v68, v21, v40);
      v39 = v68;
LABEL_44:
      *(v64 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v54 = (v3[6] + 16 * v17);
      *v54 = v67;
      v54[1] = v32;
      *(v3[7] + 8 * v17) = v39;
      v55 = v3[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_49;
      }

      v3[2] = v57;
      v11 = v66;
      if (!v66)
      {
        goto LABEL_5;
      }
    }

    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    sub_25BAA51C8(&v79, &v71);
    if (*(&v72 + 1))
    {
      v75 = v71;
      v76 = v72;
      v77 = v73;
      v78 = v74;
      sub_25BCB617C();
      sub_25BB06178(v68, v21, v22);
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BCB617C();
      sub_25BB06178(v68, v21, v22);
      sub_25BAA49B8();
      sub_25BAA4A5C(v70);

      sub_25BAA51C8(v70, &v75);
      sub_25BAA4AF4(v70);
      if (*(&v72 + 1))
      {
        sub_25BAA6F5C(&v71, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v70[0] = v68;
    LOBYTE(v71) = v21;
    sub_25BC72C64(v70, &v71, &v75, qword_281557400);
    v62 = v48;
    v60 = v5;
    v49 = v21;
    v50 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(&v75, v70);
    v51 = swift_getObjectType();
    v52 = swift_unknownObjectRetain();
    LOBYTE(v71) = 1;
    v53 = sub_25BC5FAD0(v52, v70, 0x100000000uLL, v50, v51, v62);
    type metadata accessor for TensorHandle();
    v39 = swift_allocObject();
    *(v39 + 16) = v53;

    sub_25BAA6EB0();

    v46 = v68;
    v47 = v49;
    v5 = v60;
    goto LABEL_43;
  }

LABEL_5:
  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v4 >= v12)
    {
      return v3;
    }

    v16 = *(v7 + 8 * v4);
    ++v15;
    if (v16)
    {
      v13 = __clz(__rbit64(v16));
      v14 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_25BC20588(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25BB00D78();
    v2 = v11;
    v4 = (a1 + 32);
    v5 = *(v11 + 16);
    v6 = 24 * v5;
    do
    {
      v7 = *v4;
      v8 = *(v11 + 24);

      if (v5 >= v8 >> 1)
      {
        sub_25BB00D78();
      }

      *(v11 + 16) = v5 + 1;
      v9 = v11 + v6;
      *(v9 + 32) = v7;
      *(v9 + 40) = xmmword_25BCC4310;
      v6 += 24;
      ++v4;
      ++v5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25BC20680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6790, &qword_25BCCC708);
  result = sub_25BCB758C();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = *(*(a1 + 56) + 8 * v13);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v15;
      v17[1] = result;
      v18 = v3[7] + 24 * v13;
      *v18 = v16;
      *(v18 + 8) = xmmword_25BCC4310;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;
      sub_25BCB617C();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MLPackageWritingOptions.ParameterStorageMode.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t *a1, __int16 *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = *a4;
  v15 = *a1;
  v9 = v15;
  v16 = xmmword_25BCC4310;
  v14 = v10;
  v13 = v11;

  Layer<>.writeMLPackage(withInput:output:to:options:)(&v15, &v14, a3, &v13, a5, a6);
  return OUTLINED_FUNCTION_65_5(v9);
}

void *sub_25BC20C38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v9 = *(a4() + 16);

  if (v9 != 1)
  {
    OUTLINED_FUNCTION_0_16();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_3_3();
    v13 = MEMORY[0x25F876C90](0xD00000000000001ALL);
    v14 = *((a4)(v13) + 16);

    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_67_6();

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_40_18();
    sub_25BB0A3A4();
    v15 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_30_21(v15, v16);
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E78, &qword_25BCCC700);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE50;
  result = a4();
  if (result[2])
  {
    v12 = result[4];
    v11 = result[5];
    sub_25BCB617C();

    *(v4 + 32) = v12;
    *(v4 + 40) = v11;
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    sub_25BB06178(a1, a2, a3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BC20DF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = sub_25BC4F5E4()[2];

  if (v5 != 1)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000001ALL, 0x800000025BCE3520);
    v9 = sub_25BC4F5E4()[2];

    v10 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v10);

    MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3540);
    v11 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v11);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BB0A3A4();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    swift_willThrow();
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E78, &qword_25BCCC700);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  result = sub_25BC4F5E4();
  if (result[2])
  {
    v8 = result[4];
    v7 = result[5];
    sub_25BCB617C();

    *(v1 + 32) = v8;
    *(v1 + 40) = v7;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    sub_25BB06178(v2, v3, v4);
    return v1;
  }

  __break(1u);
  return result;
}

void *sub_25BC20FF0(__int16 a1, uint64_t (*a2)(void), uint64_t a3)
{
  if ((a1 & 0xFF00) == 0x300)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25BCBAE50;
    result = a2();
    if (result[2])
    {
      v7 = result[4];
      v6 = result[5];
      sub_25BCB617C();

      *(v4 + 32) = v7;
      *(v4 + 40) = v6;
      *(v4 + 48) = 512;
      return v4;
    }

    __break(1u);
  }

  else
  {
    v4 = a3;
    v9 = *(a2() + 16);

    if (v9 != 1)
    {
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_59_9();
      OUTLINED_FUNCTION_3_3();
      v12 = MEMORY[0x25F876C90](0xD00000000000001BLL);
      v13 = *((v4)(v12) + 16);

      OUTLINED_FUNCTION_23_0();
      sub_25BCB77FC();
      OUTLINED_FUNCTION_67_6();

      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90]();
      OUTLINED_FUNCTION_23_0();
      sub_25BCB77FC();
      OUTLINED_FUNCTION_28_0();

      OUTLINED_FUNCTION_40_18();
      sub_25BB0A3A4();
      v14 = OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_30_21(v14, v15);
      return v4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25BCBAE50;
    result = a2();
    if (result[2])
    {
      v11 = result[4];
      v10 = result[5];
      sub_25BCB617C();

      *(v4 + 32) = v11;
      *(v4 + 40) = v10;
      *(v4 + 48) = a1;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BC21214(__int16 *a1)
{
  v1 = *a1;
  if ((*a1 & 0xFF00) == 0x300)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25BCBAE50;
    result = sub_25BC4F508();
    if (result[2])
    {
      v5 = result[4];
      v4 = result[5];
      sub_25BCB617C();

      *(v2 + 32) = v5;
      *(v2 + 40) = v4;
      *(v2 + 48) = 512;
      return v2;
    }

    __break(1u);
  }

  else
  {
    v6 = sub_25BC4F508()[2];

    if (v6 != 1)
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
      v9 = sub_25BC4F5E4()[2];

      v10 = sub_25BCB77FC();
      v2 = v11;
      MEMORY[0x25F876C90](v10);

      MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3580);
      v12 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v12);

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BB0A3A4();
      swift_allocError();
      *v13 = 0;
      v13[1] = 0xE000000000000000;
      swift_willThrow();
      return v2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25BCBAE50;
    result = sub_25BC4F508();
    if (result[2])
    {
      v8 = result[4];
      v7 = result[5];
      sub_25BCB617C();

      *(v2 + 32) = v8;
      *(v2 + 40) = v7;
      *(v2 + 48) = v1;
      return v2;
    }
  }

  __break(1u);
  return result;
}

void sub_25BC21468()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v19 = v3;
  v20 = *v4;
  v6 = *v0;
  v5 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  sub_25BCB590C();
  v9 = sub_25BCB63BC();
  v11 = v10;

  if (v9 == 0x67616B6361706C6DLL && v11 == 0xE900000000000065)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_13_36();
  OUTLINED_FUNCTION_63_7();
  if (v9)
  {
LABEL_8:
    v17 = sub_25BC25D54(v19);
    MEMORY[0x28223BE20](v17);
    v18 = *(v2 + 16);
    sub_25BC7501C();

    goto LABEL_9;
  }

  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE34B0);
  v13 = sub_25BCB595C();
  MEMORY[0x25F876C90](v13);

  v14 = OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F876C90](v14);
  sub_25BB0A3A4();
  v15 = OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_30_21(v15, v16);
LABEL_9:
  OUTLINED_FUNCTION_16();
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_25BC225EC(a1, a2, a3, a4, a5, a6, sub_25BC20588, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  return sub_25BC225EC(a1, a2, a3, a4, a5, a6, sub_25BC20680, Layer<>.writeMLPackage(withInput:output:to:options:));
}

uint64_t sub_25BC21988(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2() + 16);

  if (v4 == *(a1 + 16))
  {
    (a2)(v5);
    sub_25BCB617C();
    v6 = OUTLINED_FUNCTION_58();
    v8 = sub_25BC1F1CC(v6, v7);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_3_3();
    v10 = MEMORY[0x25F876C90](0xD00000000000001ALL);
    v11 = *((a2)(v10) + 16);

    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_67_6();

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_40_18();
    sub_25BB0A3A4();
    v12 = OUTLINED_FUNCTION_14_0();
    return OUTLINED_FUNCTION_30_21(v12, v13);
  }
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  return sub_25BC2332C(a1, a2, a3, a4, a5, a6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  return sub_25BC2332C(a1, a2, a3, a4, a5, a6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

uint64_t sub_25BC21D90(uint64_t a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = *(a2() + 16);

    if (v4 == *(a1 + 16))
    {
      v6 = (a2)(v5);
      sub_25BCB617C();
      v7 = sub_25BC1F464(v6, a1);

      return v7;
    }

    OUTLINED_FUNCTION_0_16();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_3_3();
    v18 = MEMORY[0x25F876C90](0xD00000000000001BLL);
    v19 = *((a2)(v18) + 16);

    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_67_6();

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_40_18();
    v11 = v23;
    sub_25BB0A3A4();
    v20 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_42_16(v20, v21);
  }

  else
  {
    v9 = a2();
    v10 = *(v9 + 16);
    if (v10)
    {
      v22 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v10, 0);
      v11 = v22;
      v12 = (v9 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = *(v22 + 16);
        v16 = *(v22 + 24);
        sub_25BCB617C();
        if (v15 >= v16 >> 1)
        {
          sub_25BB00DC4(v16 > 1, v15 + 1, 1);
        }

        *(v22 + 16) = v15 + 1;
        v17 = v22 + 24 * v15;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        *(v17 + 48) = 512;
        v12 += 3;
        --v10;
      }

      while (v10);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v11;
}

unint64_t sub_25BC21FFC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_25BC4F508()[2];

    if (v2 == *(a1 + 16))
    {
      v3 = sub_25BC4F508();
      sub_25BCB617C();
      v4 = sub_25BC1F464(v3, a1);

      return v4;
    }

    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
    v15 = sub_25BC4F508()[2];

    v16 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v16);

    MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCE35A0);
    v17 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v17);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    v8 = 0xE000000000000000;
    sub_25BB0A3A4();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v6 = sub_25BC4F508();
    v7 = v6[2];
    if (v7)
    {
      v19 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v7, 0);
      v8 = v19;
      v9 = v6 + 5;
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = *(v19 + 16);
        v13 = *(v19 + 24);
        sub_25BCB617C();
        if (v12 >= v13 >> 1)
        {
          sub_25BB00DC4(v13 > 1, v12 + 1, 1);
        }

        *(v19 + 16) = v12 + 1;
        v14 = v19 + 24 * v12;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        *(v14 + 48) = 512;
        v9 += 3;
        --v7;
      }

      while (v7);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v8;
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)()
{
  OUTLINED_FUNCTION_18_33();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_17_34();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_18_33();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_17_34();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_37_18();
  v2 = *v1;
  v4 = *v3;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25BBAA234(AssociatedTypeWitness, v0);
  OUTLINED_FUNCTION_41_18();
  Layer<>.writeMLPackage(withInput:output:to:options:)();
}

{
  OUTLINED_FUNCTION_37_18();
  v2 = *v1;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25BBAA234(AssociatedTypeWitness, v0);
  OUTLINED_FUNCTION_41_18();
  Layer<>.writeMLPackage(withInput:output:to:options:)();
}

uint64_t sub_25BC225EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  OUTLINED_FUNCTION_48_15();
  v10 = *v9;
  v12 = *v11;
  v13();
  OUTLINED_FUNCTION_46_16();
  a8();
}

void sub_25BC229F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = 0;
  v45 = *(v3 + 16);
  v5 = v3 + 48;
  v44 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v5 + 24 * v4);
  while (v45 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    if (*(a1 + 16))
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 2);
      swift_bridgeObjectRetain_n();

      v10 = sub_25BA9266C(v9, v8);
      v12 = v11;

      if (v12)
      {
        v13 = (*(a1 + 56) + 24 * v10);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        sub_25BB06178(*v13, v15, v16);

        v40 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v44 + 16);
          sub_25BAFEA74();
          v44 = v20;
        }

        v17 = *(v44 + 16);
        if (v17 >= *(v44 + 24) >> 1)
        {
          sub_25BAFEA74();
          v44 = v21;
        }

        ++v4;
        *(v44 + 16) = v17 + 1;
        v18 = (v44 + 40 * v17);
        v18[4] = v9;
        v18[5] = v8;
        v18[6] = v14;
        v18[7] = v40;
        v18[8] = v16;
        v5 = v3 + 48;
        goto LABEL_2;
      }
    }

    v6 += 3;
    ++v4;
  }

  v23 = *(v44 + 16);
  v24 = *((a2)(v22) + 16);

  if (v23 == v24)
  {
    sub_25BAFA2E0(v44, v25, v26, v27, v28, v29, v30, v31, v32, v39, v40, v41, v3 + 48, v42, a2, v44, v45, v46, v47, v48);
  }

  else
  {

    sub_25BCB70FC();
    v33 = MEMORY[0x25F876C90](0xD00000000000001ALL, 0x800000025BCE3520);
    v34 = *((a2)(v33) + 16);

    OUTLINED_FUNCTION_23_0();
    v35 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v35);

    MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE35C0);
    OUTLINED_FUNCTION_23_0();
    v36 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v36);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BB0A3A4();
    v37 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_30_21(v37, v38);
  }
}

void sub_25BC22D04(uint64_t a1)
{
  v2 = sub_25BC4F5E4();
  v3 = 0;
  v40 = v2[2];
  v4 = v2 + 6;
  v39 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = &v4[3 * v3];
  while (v40 != v3)
  {
    if (v3 >= v2[2])
    {
      __break(1u);
      return;
    }

    if (*(a1 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);
      swift_bridgeObjectRetain_n();

      v9 = sub_25BA9266C(v8, v7);
      v11 = v10;

      if (v11)
      {
        v12 = (*(a1 + 56) + 24 * v9);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        sub_25BB06178(*v12, v14, v15);

        v16 = v39;
        v36 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v39 + 16);
          sub_25BAFEA74();
          v16 = v20;
        }

        v17 = *(v16 + 16);
        v39 = v16;
        if (v17 >= *(v16 + 24) >> 1)
        {
          sub_25BAFEA74();
          v39 = v21;
        }

        ++v3;
        *(v39 + 16) = v17 + 1;
        v18 = (v39 + 40 * v17);
        v18[4] = v8;
        v18[5] = v7;
        v18[6] = v13;
        v18[7] = v36;
        v18[8] = v15;
        v4 = v2 + 6;
        goto LABEL_2;
      }
    }

    v5 += 3;
    ++v3;
  }

  v22 = *(v39 + 16);
  v23 = sub_25BC4F5E4()[2];

  if (v22 == v23)
  {
    sub_25BAFA2E0(v39, v24, v25, v26, v27, v28, v29, v30, v31, v36, v37, (v2 + 6), v38, v39, v40, v41, v42, v43, v44, v45);
  }

  else
  {

    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000001ALL, 0x800000025BCE3520);
    v32 = sub_25BC4F5E4()[2];

    v33 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v33);

    MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE35C0);
    v34 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v34);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BB0A3A4();
    swift_allocError();
    *v35 = 0;
    v35[1] = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_25BC2332C(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v13 = *a4;
  v16 = *a1;
  v12 = v16;
  v17 = xmmword_25BCC4310;
  v15 = v13;

  a7(&v16, a2, a3, &v15, a5, a6);
  return OUTLINED_FUNCTION_65_5(v12);
}

void sub_25BC2362C(uint64_t a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v3 = a2();
    v4 = 0;
    v39 = *(v3 + 16);
    v5 = v3 + 48;
    v38 = MEMORY[0x277D84F90];
LABEL_3:
    v6 = (v5 + 24 * v4);
    while (v39 != v4)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      if (*(a1 + 16))
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(v6 - 2);
        swift_bridgeObjectRetain_n();

        v10 = sub_25BA9266C(v9, v8);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(a1 + 56) + 2 * v10);

          v14 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v38 + 16);
            sub_25BAFEB34();
            v14 = v18;
          }

          v15 = *(v14 + 16);
          if (v15 >= *(v14 + 24) >> 1)
          {
            sub_25BAFEB34();
            v14 = v19;
          }

          ++v4;
          *(v14 + 16) = v15 + 1;
          v38 = v14;
          v16 = v14 + 24 * v15;
          *(v16 + 32) = v9;
          *(v16 + 40) = v8;
          *(v16 + 48) = v13;
          v5 = v3 + 48;
          goto LABEL_3;
        }
      }

      v6 += 3;
      ++v4;
    }

    v21 = *(v38 + 16);
    v22 = *((a2)(v20) + 16);

    if (v21 == v22)
    {
      sub_25BAFA3E8(v38);
    }

    else
    {

      sub_25BCB70FC();
      v31 = MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
      v32 = *((a2)(v31) + 16);

      OUTLINED_FUNCTION_23_0();
      v33 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v33);

      MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3580);
      OUTLINED_FUNCTION_23_0();
      v34 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v34);

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BB0A3A4();
      v35 = OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_42_16(v35, v36);
    }
  }

  else
  {
    v23 = a2();
    v24 = *(v23 + 16);
    if (v24)
    {
      v40 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v24, 0);
      v25 = (v23 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        v29 = *(v40 + 16);
        v28 = *(v40 + 24);
        sub_25BCB617C();
        if (v29 >= v28 >> 1)
        {
          sub_25BB00DC4(v28 > 1, v29 + 1, 1);
        }

        *(v40 + 16) = v29 + 1;
        v30 = v40 + 24 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v26;
        *(v30 + 48) = 512;
        v25 += 3;
        --v24;
      }

      while (v24);
    }
  }
}

void sub_25BC239F8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_25BC4F508();
    v3 = 0;
    v34 = v2[2];
    v4 = v2 + 6;
    v33 = MEMORY[0x277D84F90];
LABEL_3:
    v5 = &v4[3 * v3];
    while (v34 != v3)
    {
      if (v3 >= v2[2])
      {
        __break(1u);
        return;
      }

      if (*(a1 + 16))
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        v8 = *(v5 - 2);
        swift_bridgeObjectRetain_n();

        v9 = sub_25BA9266C(v8, v6);
        v11 = v10;

        if (v11)
        {
          v12 = *(*(a1 + 56) + 2 * v9);

          v13 = v33;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = *(v33 + 16);
            sub_25BAFEB34();
            v13 = v17;
          }

          v14 = *(v13 + 16);
          v33 = v13;
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_25BAFEB34();
            v33 = v18;
          }

          ++v3;
          *(v33 + 16) = v14 + 1;
          v15 = v33 + 24 * v14;
          *(v15 + 32) = v8;
          *(v15 + 40) = v6;
          *(v15 + 48) = v12;
          v4 = v2 + 6;
          goto LABEL_3;
        }
      }

      v5 += 3;
      ++v3;
    }

    v19 = *(v33 + 16);
    v20 = sub_25BC4F508()[2];

    if (v19 == v20)
    {
      sub_25BAFA3E8(v33);
    }

    else
    {

      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
      v29 = sub_25BC4F508()[2];

      v30 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v30);

      MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3580);
      v31 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v31);

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BB0A3A4();
      swift_allocError();
      *v32 = 0;
      v32[1] = 0xE000000000000000;
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_25BC4F508();
    v22 = v21[2];
    if (v22)
    {
      v35 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v22, 0);
      v23 = v21 + 5;
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v27 = *(v35 + 16);
        v26 = *(v35 + 24);
        sub_25BCB617C();
        if (v27 >= v26 >> 1)
        {
          sub_25BB00DC4(v26 > 1, v27 + 1, 1);
        }

        *(v35 + 16) = v27 + 1;
        v28 = v35 + 24 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        *(v28 + 48) = 512;
        v23 += 3;
        --v22;
      }

      while (v22);
    }
  }
}

uint64_t sub_25BC240D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  OUTLINED_FUNCTION_48_15();
  v10 = *v9;
  v11();
  OUTLINED_FUNCTION_46_16();
  a8();
  OUTLINED_FUNCTION_57_8();
}

void Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_33();
  OUTLINED_FUNCTION_8_40(v26, v27, v28, v29);
  sub_25BC1FD58(v30);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  OUTLINED_FUNCTION_3_46(&byte_27FBB7DF8);
  Layer<>.compiled(forInput:options:)();
  if (!v24)
  {

    v31 = OUTLINED_FUNCTION_29_23();
    sub_25BC229F0(v31, v32);
    v33 = OUTLINED_FUNCTION_50_13();
    sub_25BC2362C(v33, v34);
    OUTLINED_FUNCTION_24_19();
    sub_25BCB590C();
    v36 = v35;
    sub_25BCB63BC();
    OUTLINED_FUNCTION_36_16();

    if (a24 == a22 && v25 == 0xE900000000000065)
    {
    }

    else
    {
      OUTLINED_FUNCTION_35_19();
      OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_66_9();
      if ((v36 & 1) == 0)
      {

        OUTLINED_FUNCTION_7_40();
        OUTLINED_FUNCTION_22_27();
        OUTLINED_FUNCTION_6_46();
        sub_25BCB595C();
        OUTLINED_FUNCTION_47_16();

        OUTLINED_FUNCTION_21_28();
        OUTLINED_FUNCTION_11_37();
        MEMORY[0x25F876C90]();
        sub_25BB0A3A4();
        v38 = OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_33_22(v38, v39);

        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_45_13();
    sub_25BC25B04(v40);
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_9_39();
    sub_25BB0A4A8();
    goto LABEL_6;
  }

LABEL_6:
  OUTLINED_FUNCTION_16_38();
}

void Layer<>.writeMLPackage(withInput:output:to:options:)()
{
  OUTLINED_FUNCTION_17_1();
  v37 = v0;
  v38 = v1;
  v36 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v34[1] = v12;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = OUTLINED_FUNCTION_53(AssociatedTypeWitness);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = v34 - v23;
  v35 = *v14;
  v41 = *v11;
  v25 = sub_25BCB617C();
  sub_25BBA9F24(v25, v2, v5);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v26 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  OUTLINED_FUNCTION_52_12(v26, v27);
  v28 = v38;
  v29 = Layer<>.compiled(forInput:options:)(v40, v24, v39, v9, v7, v5);
  if (v28)
  {

    (*(v20 + 8))(v24, v2);
  }

  else
  {
    v34[0] = v30;
    v38 = v29;

    (*(v20 + 8))(v24, v2);
    v37 = v40[1];
    v31 = OUTLINED_FUNCTION_62_7();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = sub_25BC247F0(v16, v31, &type metadata for FeatureInputType, v36, AssociatedConformanceWitness);
    sub_25BC22D04(v33);

    v39[0] = v35;
    sub_25BC21214(v39);
    type metadata accessor for Function();
    sub_25BC21468();
    OUTLINED_FUNCTION_57_8();
  }

  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_17_1();
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v30[3] = v12;
  v31 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = OUTLINED_FUNCTION_53(AssociatedTypeWitness);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v30 - v21;
  v32 = *v10;
  v23 = sub_25BCB617C();
  v33 = v4;
  sub_25BBA9F24(v23, v1, v4);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v24 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  OUTLINED_FUNCTION_52_12(v24, v25);
  Layer.compiled(forInput:options:)(v36, v22, &v35, v8, v6);
  if (v0)
  {

    (*(v18 + 8))(v22, v1);
  }

  else
  {
    v30[1] = v26;

    (*(v18 + 8))(v22, v1);
    v30[2] = v36[1];
    v35 = v32;
    v27 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = sub_25BC247F0(v14, v27, &type metadata for FeatureInputType, v34, AssociatedConformanceWitness);
    sub_25BC22D04(v29);

    sub_25BC21FFC(v31);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    type metadata accessor for Function();
    sub_25BC21468();
    OUTLINED_FUNCTION_57_8();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC247F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v5 = sub_25BCB61AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25BAB2B20(sub_25BC28DE8, v10, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  sub_25BCB68CC();
  swift_getWitnessTable();
  return sub_25BCB615C();
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_48_15();
  v20 = *v10;
  v21 = *v11;

  OUTLINED_FUNCTION_46_16();
  Layer<>.writeMLPackage(withInput:output:to:options:)(v12, v13, v14, v15, v16, v17, a7, a8);
  v18 = OUTLINED_FUNCTION_57_8();
  return OUTLINED_FUNCTION_65_5(v18);
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  LODWORD(v39) = *a4;
  v41 = *a1;
  v42 = v9;
  v43 = v11;
  sub_25BBA9DB8(&v46);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v12 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  LOBYTE(v41) = v13;
  v42 = v14;
  v43 = v12;
  LOBYTE(v44) = v15;
  v16 = sub_25BCB617C();
  OUTLINED_FUNCTION_56_10(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, v30, v31, v32, v33, a3, a8, a2, v39, v41, v42, v43, v44, v45);
  Layer<>.compiled(forInput:options:)();
  if (v8)
  {
  }

  else
  {

    LOBYTE(v46) = v40;
    v41 = v10;
    v42 = v9;
    v43 = v11;
    sub_25BC20DF8(&v41);
    if (v38)
    {
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v27 = sub_25BC247F0(v38, AssociatedTypeWitness, &type metadata for FeatureOutputType, v36, AssociatedConformanceWitness);
    }

    else
    {
      v27 = 0;
    }

    sub_25BC239F8(v27);

    swift_getAssociatedTypeWitness();
    type metadata accessor for Function();
    sub_25BC21468();
  }
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a4;
  v15 = sub_25BC20588(a1);
  v17 = v14;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v15, a2, a3, &v17, a5, a6, a7, a8);
}

{
  v12 = *a4;
  sub_25BC1F650(a1);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v13 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  LOBYTE(v46) = v14;
  v47 = v15;
  v48 = v13;
  LOBYTE(v49) = v16;
  v17 = sub_25BCB617C();
  v25 = OUTLINED_FUNCTION_56_10(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, v37, v38, v39, v41, v42, v43, a3, a7, v46, v47, v48, v49, v50);
  Layer.compiled(forInput:options:)(v25, v26, v27, v28, a6);
  if (v8)
  {
  }

  else
  {
    v40 = a8;

    v30 = OUTLINED_FUNCTION_29_23();
    sub_25BC21988(v30, v31);
    v32 = a2;
    if (a2)
    {
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v32 = sub_25BC247F0(a2, AssociatedTypeWitness, &type metadata for FeatureOutputType, v40, AssociatedConformanceWitness);
    }

    sub_25BC239F8(v32);

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Function();
    sub_25BC21468();
  }
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a4;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_25BBAA234(AssociatedTypeWitness, a7);
  HIBYTE(v23[0]) = v14;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v16, a2, a3, v23 + 7, a5, a6, a7, a8, a9, a10, a3, a8, v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6]);
}

void Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17_1();
  v73 = v22;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v69 = v36;
  v70 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = OUTLINED_FUNCTION_53(AssociatedTypeWitness);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  v46 = &v62 - v45;
  LODWORD(v71) = *v34;
  v47 = sub_25BCB617C();
  v72 = v38;
  sub_25BBA9F24(v47, v24, v28);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v48 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  OUTLINED_FUNCTION_52_12(v48, v49);
  v50 = Layer<>.compiled(forInput:options:)(v75, v46, &v74, v32, v30);
  if (v23)
  {

    (*(v42 + 8))(v46, v24);
  }

  else
  {
    v65 = v26;
    v66 = v32;
    v67 = v30;
    v68 = v51;
    v73 = v50;

    (*(v42 + 8))(v46, v24);
    v52 = v75[2];
    v53 = v75[3];
    v74 = v71;
    v54 = OUTLINED_FUNCTION_62_7();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = sub_25BC247F0(v72, v54, &type metadata for FeatureInputType, a21, AssociatedConformanceWitness);
    sub_25BC22D04(v56);
    v64 = v57;
    v71 = v53;
    v72 = v52;

    v58 = v70;
    if (v70)
    {
      v63 = a22;
      swift_getAssociatedTypeWitness();
      v59 = swift_getAssociatedTypeWitness();
      v60 = swift_getAssociatedConformanceWitness();
      v61 = sub_25BC247F0(v58, v59, &type metadata for FeatureOutputType, v63, v60);
    }

    else
    {
      v61 = 0;
    }

    sub_25BC239F8(v61);

    swift_getAssociatedTypeWitness();
    type metadata accessor for Function();
    sub_25BC21468();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC25974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v16 - v11;
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  *a4 = sub_25BCB77FC();
  a4[1] = v14;
  (*(v9 + 16))(v12, a1, TupleTypeMetadata2);
  (*(*(a3 - 8) + 32))(a4 + v13, &v12[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v12, a2);
}

uint64_t sub_25BC25B04(uint64_t a1)
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
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v17 = a1;
  v18 = a1;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v18 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v18 + 56) + 8 * v11);
    sub_25BCB63BC();
    sub_25BB0CFFC();
    sub_25BCB617C();

    v16 = sub_25BCB6F4C();

    if (v16 & 1) != 0 && ((sub_25BCB64FC() & 1) != 0 || (sub_25BCB64FC()))
    {
      Tensor.split(count:alongAxis:)();
      sub_25BB3C310(2uLL, 3uLL);
      Tensor.init(concatenating:alongAxis:scalarType:)();
      swift_isUniquelyReferenced_nonNull_native();
      sub_25BC19C08();
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v17;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC25D54(uint64_t a1)
{
  v36 = *v1;
  v3 = v1[3];
  v34 = v1[2];
  v35 = v1[1];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v32 = a1;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    v7 &= v7 - 1;
    v38 = v36;
    v39 = v35;
    v40 = v34;
    v41 = v3;
    sub_25BCB617C();

    if (sub_25BC27B50())
    {
      v38 = v36;
      v39 = v35;
      v40 = v34;
      v41 = v3;
      v37[0] = v15;
      sub_25BC27C40(v37);
      v31 = v37[1];
      swift_isUniquelyReferenced_nonNull_native();
      v38 = v32;
      v16 = sub_25BA9266C(v14, v13);
      v17 = v32[2];
      v33 = v18;
      v30 = v16;
      if (__OFADD__(v17, (v18 & 1) == 0))
      {
        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F0, &unk_25BCCBEE0);
      if (sub_25BCB745C())
      {
        v19 = sub_25BA9266C(v14, v13);
        v21 = v33;
        if ((v33 & 1) != (v20 & 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v19 = v30;
        v21 = v33;
      }

      v22 = v38;
      v32 = v38;
      if (v21)
      {
        v23 = v38[7];
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v31;
      }

      else
      {
        v38[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v22[6] + 16 * v19);
        *v25 = v14;
        v25[1] = v13;
        *(v22[7] + 8 * v19) = v31;
        v26 = v22[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_23;
        }

        v22[2] = v28;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v32;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BC25FF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a8;
  v68 = a7;
  v67 = a6;
  v66 = a5;
  v64 = a4;
  v62 = a3;
  v61 = a2;
  v58 = a1;
  v65 = a10;
  v63 = a9;
  v60 = a12;
  v59 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v53 - v14;
  v57 = sub_25BCB57CC();
  v55 = *(v57 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_25BCB58FC();
  v17 = *(v71 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v71);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_25BCB598C();
  v95 = *(v72 - 8);
  v21 = *(v95 + 64);
  MEMORY[0x28223BE20](v72);
  v54 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v26 = sub_25BCB5A8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25BCB614C();
  sub_25BCB5A7C();
  v32 = sub_25BCB5A6C();
  v34 = v33;
  (*(v27 + 8))(v30, v26);
  v90 = 0x302E302E31;
  v91 = 0xE500000000000000;
  v92 = v31;
  v93 = v32;
  v94 = v34;
  v35 = v20;
  v36 = v71;
  v85 = 0xD000000000000015;
  v86 = 0x800000025BCD96E0;
  v37 = *MEMORY[0x277CC91D8];
  v38 = *(v17 + 104);
  v38(v35, *MEMORY[0x277CC91D8], v71);
  sub_25BB0CFFC();
  sub_25BCB597C();
  (*(v17 + 8))(v35, v36);
  v73 = v59;
  v74 = v60;
  v75 = v61 & 1;
  v76 = v62;
  v77 = v64;
  v78 = v66;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v82 = v63;
  v83 = v65;
  v84 = &v90;
  v39 = v70;
  sub_25BC7501C();
  if (v39)
  {
    (*(v95 + 8))(v25, v72);
  }

  else
  {
    LODWORD(v68) = v37;
    v69 = v35;
    v40 = *(v95 + 8);
    v95 += 8;
    v40(v25, v72);
    v41 = sub_25BCB580C();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = sub_25BCB57FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4048, &qword_25BCBC5C0);
    v45 = *(v55 + 72);
    v46 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_25BCBAE70;
    sub_25BCB57AC();
    sub_25BCB57BC();
    v85 = v47;
    sub_25BB0D050();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4058, &unk_25BCBC5C8);
    sub_25BB30E7C(&qword_27FBB4060, &qword_27FBB4058, &unk_25BCBC5C8);
    sub_25BCB702C();
    sub_25BCB57DC();
    v85 = v90;
    v86 = v91;
    v87 = v92;
    v88 = v93;
    v89 = v94;
    sub_25BB0D10C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    v48 = sub_25BCB57EC();
    v70 = v49;
    v50 = v48;
    v66 = v40;
    v67 = v44;

    __swift_storeEnumTagSinglePayload(v53, 1, 1, v72);
    v38(v69, v68, v71);
    v51 = v54;
    sub_25BCB596C();
    sub_25BCB5A5C();
    v66(v51, v72);
    sub_25BB0D160(v50, v70);
  }
}

void sub_25BC26844(uint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unint64_t a12, unint64_t a13)
{
  v169 = a8;
  v168 = a7;
  v180 = a5;
  v203 = a4;
  v178 = a3;
  v167 = a13;
  v166 = a12;
  v15 = sub_25BCB5A8C();
  v153 = *(v15 - 8);
  v154 = v15;
  v16 = *(v153 + 64);
  MEMORY[0x28223BE20](v15);
  v152 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_25BCB598C();
  v155 = *(v179 - 8);
  v18 = *(v155 + 64);
  MEMORY[0x28223BE20](v179);
  v172 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_25BCB5B9C();
  v160 = *(v171 - 8);
  v20 = *(v160 + 64);
  MEMORY[0x28223BE20](v171);
  v162 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v163 = &v138 - v23;
  MEMORY[0x28223BE20](v24);
  v165 = &v138 - v25;
  v26 = sub_25BCB5BCC();
  v176 = *(v26 - 8);
  v177 = v26;
  v27 = v176[8];
  MEMORY[0x28223BE20](v26);
  v161 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v164 = &v138 - v30;
  MEMORY[0x28223BE20](v31);
  v173 = &v138 - v32;
  v33 = sub_25BCB5C8C();
  v158 = *(v33 - 8);
  v159 = v33;
  v34 = *(v158 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_25BCB58FC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v138 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v138 - v47;
  v174 = v37;
  v175 = v38;
  v156 = v45;
  if (a2)
  {
    v49 = MEMORY[0x277CC91D8];
    v157 = "CoreML Model Weights";
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v179);
    (*(v38 + 104))(v41, *v49, v37);
    sub_25BCB596C();
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  __swift_storeEnumTagSinglePayload(v48, v50, 1, v179);
  v185[0] = v178;
  v185[1] = v203;
  v51 = v180;
  v185[2] = v180;
  v185[3] = a6;
  v52 = type metadata accessor for Function();
  v53 = v170;
  sub_25BB09180(v168, v169, v48, v52, v54, v55, v56, v57, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  if (v53)
  {
    v60 = v48;
LABEL_7:
    sub_25BAA6F5C(v60, &qword_27FBB4030, &qword_25BCBC5B8);
    return;
  }

  v58 = a6;
  v145 = v41;
  sub_25BAD6FB0(v186, v185);
  sub_25BC46E18(v187);
  type metadata accessor for MILProgramBuilder();
  swift_allocObject();
  v59 = sub_25BBA35C4(v185, 1, 1, v187);
  sub_25BBA003C();
  v141 = v48;
  v181 = v178;
  v182 = v203;
  v183 = v51;
  v184 = v58;
  v61 = *(v59 + 316);
  v63 = v62;
  sub_25BC27920(v186, v61);
  sub_25BB319C0(v63, 1852399981, 0xE400000000000000, v36);
  v139 = v63;
  v140 = v59;
  v168 = 0;
  v64 = *(sub_25BCB5C2C() + 16);

  v169 = v36;
  v150 = v64;
  if (v64)
  {
    v65 = 0;
    v148 = (v176 + 1);
    v149 = (v176 + 2);
    v144 = (v160 + 16);
    v66 = *(a9 + 16);
    v143 = (v176 + 5);
    v142 = (v160 + 8);
    v146 = v66 + 1;
    v147 = (a9 + 64);
    v67 = v179;
    while (2)
    {
      v68 = v65;
      v69 = sub_25BCB5C2C();
      if (v68 >= *(v69 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v170 = v68 + 1;
      v70 = v176;
      v166 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v167 = v68;
      v71 = v176[2];
      v157 = v176[9] * v68;
      v72 = v173;
      v73 = v177;
      v71(v173, v69 + v166 + v157, v177);

      v74 = sub_25BCB5BBC();
      v76 = v75;
      (v70[1])(v72, v73);
      v77 = v146;
      v78 = v147;
      while (--v77)
      {
        v79 = *(v78 - 4);
        v80 = *(v78 - 3);
        v81 = *(v78 - 2);
        v180 = *(v78 - 1);
        v203 = *v78;
        if (v79 != v74 || v80 != v76)
        {
          v78 += 5;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        sub_25BCB617C();
        sub_25BB06178(v81, v180, v203);
        v83 = sub_25BC4F5E4();
        v84 = v83[2];
        v151 = v83;
        v85 = v83 + 6;
        v86 = v84 + 1;
        do
        {
          if (!--v86)
          {

            sub_25BB0D1B8(v81, v180, v203);

            v36 = v169;
            v67 = v179;
            goto LABEL_32;
          }

          v87 = *v85;
          if (*(v85 - 2) == v74 && *(v85 - 1) == v76)
          {
            break;
          }

          v85 += 3;
        }

        while ((sub_25BCB789C() & 1) == 0);
        sub_25BCB617C();

        v181 = v81;
        v182 = v180;
        v183 = v203;
        v89 = v165;
        v90 = v168;
        sub_25BBAA588(v87, v74, v76, v165);
        if (v90)
        {

          (*(v158 + 8))(v169, v159);
          sub_25BA9AC78(v186);
          sub_25BAA6F5C(v141, &qword_27FBB4030, &qword_25BCBC5B8);

          sub_25BB0D1B8(v81, v180, v203);
          return;
        }

        v168 = 0;
        (*v144)(v163, v89, v171);
        sub_25BCB5BAC();
        v91 = sub_25BCB5C1C();
        v93 = v92;
        v94 = *v92;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v93 = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF1514(v94);
          v94 = v99;
          *v93 = v99;
        }

        v67 = v179;
        v96 = v175;
        if (v167 < *(v94 + 16))
        {
          (*v143)((v94 + v166 + v157), v164, v177);
          v91(&v181, 0);

          sub_25BB0D1B8(v81, v180, v203);
          (*v142)(v165, v171);
          v36 = v169;
          goto LABEL_33;
        }

        goto LABEL_73;
      }

LABEL_32:
      v96 = v175;
LABEL_33:
      v65 = v170;
      v97 = v172;
      v98 = v174;
      if (v170 != v150)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v67 = v179;
    v97 = v172;
    v98 = v174;
    v96 = v175;
  }

  v100 = *(sub_25BCB5C5C() + 16);

  v165 = v100;
  if (v100)
  {
    v101 = 0;
    v164 = (v176 + 2);
    v157 = (v176 + 1);
    v150 = (v160 + 16);
    v102 = *(a10 + 16);
    v149 = (v176 + 5);
    v148 = (v160 + 8);
    v160 = a10 + 48;
    v151 = (v102 + 1);
    while (2)
    {
      v103 = v101;
      v104 = sub_25BCB5C5C();
      if (v103 < *(v104 + 16))
      {
        v203 = v103 + 1;
        v106 = v176;
        v105 = v177;
        v170 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v107 = v176[9];
        v180 = v103;
        v108 = v107 * v103;
        v109 = v176[2];
        v167 = v108;
        v110 = v173;
        v109(v173, v104 + v170 + v108, v177);

        v111 = sub_25BCB5BBC();
        v113 = v112;
        (v106[1])(v110, v105);
        v114 = v151;
        v115 = v160;
        while (1)
        {
          v114 = (v114 - 1);
          if (!v114)
          {
            break;
          }

          v116 = *v115;
          if (*(v115 - 2) != v111 || *(v115 - 1) != v113)
          {
            v115 += 12;
            if ((sub_25BCB789C() & 1) == 0)
            {
              continue;
            }
          }

          sub_25BCB617C();
          v118 = sub_25BC4F508();
          v119 = v118[2];
          v166 = v118;
          v120 = v118 + 6;
          v121 = v119 + 1;
          do
          {
            if (!--v121)
            {

              v36 = v169;
              v67 = v179;
              v97 = v172;
              goto LABEL_60;
            }

            v122 = *v120;
            if (*(v120 - 2) == v111 && *(v120 - 1) == v113)
            {
              break;
            }

            v120 += 3;
          }

          while ((sub_25BCB789C() & 1) == 0);
          sub_25BCB617C();

          LOWORD(v181) = v116;
          v124 = v162;
          v125 = v168;
          sub_25BBAB404(v122, v111, v113, v162);
          if (v125)
          {

            (*(v158 + 8))(v169, v159);
            goto LABEL_68;
          }

          v168 = 0;

          (*v150)(v163, v124, v171);
          sub_25BCB5BAC();
          v36 = v169;
          v126 = sub_25BCB5C4C();
          v128 = v127;
          v129 = *v127;
          v130 = swift_isUniquelyReferenced_nonNull_native();
          *v128 = v129;
          if ((v130 & 1) == 0)
          {
            sub_25BBF1514(v129);
            v129 = v131;
            *v128 = v131;
          }

          v67 = v179;
          v97 = v172;
          v98 = v174;
          if (v180 < *(v129 + 16))
          {
            (*v149)(v129 + v170 + v167, v161, v177);
            v126(&v181, 0);

            (*v148)(v162, v171);
            goto LABEL_61;
          }

          goto LABEL_74;
        }

        v36 = v169;
        v67 = v179;
LABEL_60:
        v98 = v174;
LABEL_61:
        v96 = v175;
        v101 = v203;
        if (v203 != v165)
        {
          continue;
        }

        goto LABEL_62;
      }

      break;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

LABEL_62:
  __swift_storeEnumTagSinglePayload(v156, 1, 1, v67);
  (*(v96 + 104))(v145, *MEMORY[0x277CC91D8], v98);
  sub_25BCB596C();
  v132 = v168;
  sub_25BCB5C0C();
  if (v132)
  {

    (*(v155 + 8))(v97, v67);
    (*(v158 + 8))(v36, v159);
LABEL_68:
    sub_25BA9AC78(v186);
    v60 = v141;
    goto LABEL_7;
  }

  v168 = 0;
  (*(v155 + 8))(v97, v67);
  if (__swift_getEnumTagSinglePayload(v141, 1, v67) != 1)
  {
    v133 = v152;
    sub_25BCB5A7C();
    sub_25BCB5A6C();
    (*(v153 + 8))(v133, v154);
    v195 = 0xD000000000000010;
    v196 = 0x800000025BCD9740;
    v197 = 0xD000000000000014;
    v198 = 0x800000025BCD9780;
    v199 = 0x73746867696577;
    v200 = 0xE700000000000000;
    v201 = 0xD000000000000018;
    v202 = 0x800000025BCD9760;
    v134 = a11[2];
    swift_isUniquelyReferenced_nonNull_native();
    v181 = a11[2];
    sub_25BC1AA6C();
    a11[2] = v181;
  }

  v135 = a11[3];
  v136 = a11[4];
  v188 = 0xD000000000000010;
  v189 = 0x800000025BCD9740;
  v190 = 0xD00000000000001ALL;
  v191 = 0x800000025BCD9720;
  strcpy(v192, "model.mlmodel");
  v192[7] = -4864;
  v193 = 0xD00000000000001ELL;
  v194 = 0x800000025BCD9700;
  sub_25BCB617C();
  v137 = a11[2];
  swift_isUniquelyReferenced_nonNull_native();
  v181 = a11[2];
  sub_25BC1AA6C();
  a11[2] = v181;

  (*(v158 + 8))(v169, v159);
  sub_25BA9AC78(v186);
  sub_25BAA6F5C(v141, &qword_27FBB4030, &qword_25BCBC5B8);
}

void sub_25BC27920(uint64_t a1, char a2)
{
  if ((a2 - 2) <= 3u)
  {
    v3 = qword_25BCCCA88[(a2 - 2)];
  }

  sub_25BC46FA0(a1);
  v4 = *(a1 + 88);
  v5 = sub_25BAAF54C(v4);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    OUTLINED_FUNCTION_10_2();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    v8 = 0;
    v6 = v23;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25F8779B0](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = *(v9 + 160);

      v23 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_25BB00D14();
      }

      ++v8;
      *(v6 + 16) = v12 + 1;
      *(v6 + v12 + 32) = v11;
    }

    while (v7 != v8);
  }

  v13 = sub_25BAA80BC(0, v6);

  if (v13)
  {
    return;
  }

  v14 = *(a1 + 152);
  v15 = sub_25BAAF54C(v14);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_22;
  }

  v17 = v15;
  OUTLINED_FUNCTION_10_2();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v16 = v23;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](v18, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v18 + 32);
      }

      v21 = *(v19 + 160);

      v22 = *(v23 + 16);
      if (v22 >= *(v23 + 24) >> 1)
      {
        sub_25BB00D14();
      }

      ++v18;
      *(v23 + 16) = v22 + 1;
      *(v23 + v22 + 32) = v21;
    }

    while (v17 != v18);
LABEL_22:
    sub_25BAA80BC(0, v16);

    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_25BC27B50()
{
  sub_25BCB63BC();
  sub_25BB0CFFC();
  v0 = sub_25BCB6F4C();

  if (v0)
  {
    if (sub_25BCB64FC())
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_25BCB64FC();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_25BC27C40(uint64_t *a1)
{
  v1 = *a1;
  Tensor.split(count:alongAxis:)();
  sub_25BB3C310(2uLL, 3uLL);
  Tensor.init(concatenating:alongAxis:scalarType:)();
}

uint64_t sub_25BC27CB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000025BCE35E0 == a2;
  if (v3 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F666E496D657469 && a2 == 0xEF73656972746E45;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000025BCE3600 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_25BCB789C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_25BC27DD4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6F666E496D657469;
  }

  return 0xD000000000000013;
}

uint64_t sub_25BC27E44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6798, &qword_25BCCC840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC28F58();
  sub_25BCB7B6C();
  v11 = *v3;
  v12 = v3[1];
  v18 = 0;
  sub_25BCB775C();
  if (!v2)
  {
    v17 = v3[2];
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67A8, &qword_25BCCC848);
    sub_25BC29000(&qword_27FBB67B0, sub_25BC28FAC);
    sub_25BCB779C();
    v13 = v3[3];
    v14 = v3[4];
    v16[14] = 2;
    sub_25BCB775C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BC28034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67C0, &qword_25BCCC850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC28F58();
  sub_25BCB7B2C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = 0;
    v11 = sub_25BCB766C();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67A8, &qword_25BCCC848);
    v22 = 1;
    sub_25BC29000(&qword_27FBB67C8, sub_25BC29084);
    sub_25BCB76AC();
    v20[0] = v11;
    v14 = v20[1];
    v21 = 2;
    v15 = sub_25BCB766C();
    v16 = v9;
    v18 = v17;
    (*(v6 + 8))(v16, v5);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v20[0];
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v18;
  }

  return result;
}

uint64_t sub_25BC28300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC27CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC28328(uint64_t a1)
{
  v2 = sub_25BC28F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC28364(uint64_t a1)
{
  v2 = sub_25BC28F58();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BC283A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25BC28034(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25BC283E8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_25BC27E44(a1);
}

uint64_t sub_25BC28424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1752457584 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_25BCB789C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_25BC28584(char a1)
{
  result = 0x726F68747561;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1752457584;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC285FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67E8, &qword_25BCCC860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC290D8();
  sub_25BCB7B6C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_25BCB775C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20[14] = 1;
    sub_25BCB775C();
    v15 = v3[4];
    v16 = v3[5];
    v20[13] = 2;
    sub_25BCB775C();
    v17 = v3[6];
    v18 = v3[7];
    v20[12] = 3;
    sub_25BCB775C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BC287B0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67D8, &qword_25BCCC858);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC290D8();
  sub_25BCB7B2C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v5;
    v33 = a2;
    LOBYTE(v40[0]) = 0;
    v11 = v35;
    v12 = sub_25BCB766C();
    v14 = v13;
    LOBYTE(v40[0]) = 1;
    v32 = sub_25BCB766C();
    v15 = v12;
    v34 = v16;
    LOBYTE(v40[0]) = 2;
    v17 = sub_25BCB766C();
    v19 = v18;
    v31 = v17;
    v41 = 3;
    v20 = sub_25BCB766C();
    v21 = v8;
    v23 = v22;
    (*(v10 + 8))(v21, v11);
    v24 = v15;
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v25 = v32;
    v26 = v34;
    *&v37 = v32;
    *(&v37 + 1) = v34;
    *&v38 = v31;
    *(&v38 + 1) = v19;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    sub_25BC2912C(&v36, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v24;
    v40[1] = v14;
    v40[2] = v25;
    v40[3] = v26;
    v40[4] = v31;
    v40[5] = v19;
    v40[6] = v20;
    v40[7] = v23;
    result = sub_25BC29164(v40);
    v28 = v37;
    v29 = v33;
    *v33 = v36;
    v29[1] = v28;
    v30 = v39;
    v29[2] = v38;
    v29[3] = v30;
  }

  return result;
}

uint64_t sub_25BC28AD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC28B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC28424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC28B4C(uint64_t a1)
{
  v2 = sub_25BC290D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC28B88(uint64_t a1)
{
  v2 = sub_25BC290D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BC28BC4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25BC287B0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_25BC28C08(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_25BC285FC(a1);
}

unint64_t sub_25BC28C48()
{
  result = qword_27FBB6788;
  if (!qword_27FBB6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6788);
  }

  return result;
}

_BYTE *sub_25BC28CAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BC28DE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_25BC25974(a1, v2[2], v2[3], a2);
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

uint64_t sub_25BC28E20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25BC28E60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25BC28EB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25BC28EF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25BC28F58()
{
  result = qword_27FBB67A0;
  if (!qword_27FBB67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67A0);
  }

  return result;
}

unint64_t sub_25BC28FAC()
{
  result = qword_27FBB67B8;
  if (!qword_27FBB67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67B8);
  }

  return result;
}

uint64_t sub_25BC29000(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB67A8, &qword_25BCCC848);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BC29084()
{
  result = qword_27FBB67D0;
  if (!qword_27FBB67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67D0);
  }

  return result;
}

unint64_t sub_25BC290D8()
{
  result = qword_27FBB67E0;
  if (!qword_27FBB67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MLPackageManifest.InfoEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MLPackageManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC29350()
{
  result = qword_27FBB67F0;
  if (!qword_27FBB67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67F0);
  }

  return result;
}

unint64_t sub_25BC293A8()
{
  result = qword_27FBB67F8;
  if (!qword_27FBB67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67F8);
  }

  return result;
}

unint64_t sub_25BC29400()
{
  result = qword_27FBB6800;
  if (!qword_27FBB6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6800);
  }

  return result;
}

unint64_t sub_25BC29458()
{
  result = qword_27FBB6808;
  if (!qword_27FBB6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6808);
  }

  return result;
}

unint64_t sub_25BC294B0()
{
  result = qword_27FBB6810;
  if (!qword_27FBB6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6810);
  }

  return result;
}

unint64_t sub_25BC29508()
{
  result = qword_27FBB6818;
  if (!qword_27FBB6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6818);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_12()
{

  return sub_25BCB590C();
}

uint64_t sub_25BC29598()
{
  OUTLINED_FUNCTION_36_17();
  sub_25BC2B4B4();
  v1 = v0;
  swift_getObjectType();
  v2 = *(v1 + 64);
  v3 = OUTLINED_FUNCTION_31_23();
  v4(v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC29614()
{
  v0 = sub_25BC296A0();
  v3 = v0;
  v4 = v2;
  if (v2 >> 62)
  {
    v5 = v1;
    if (v2 >> 62 == 1)
    {
      sub_25BBB9C64(v0, v1, v2);
      return 0;
    }

    else
    {
      v6 = *(v0 + 24);
      swift_unknownObjectRetain();
      sub_25BBB9C64(v3, v5, v4);
      return v6;
    }
  }

  else
  {
  }

  return v3;
}

uint64_t sub_25BC296A0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1[2];
  swift_retain_n();
  sub_25BAA3234();
  swift_beginAccess();
  v3 = v1[3];
  sub_25BC2BE34(v3, v1[4], v1[5]);
  sub_25BAA3258();

  return v3;
}

void *sub_25BC29748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3[2] = sub_25BAA6F2C();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_25BC297AC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  *(v6 + 24) = *a1;
  *(v6 + 32) = v9;
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();

  v10 = swift_unknownObjectRetain();
  *(v6 + 16) = sub_25BC29748(v10, a4, a5);
  swift_endAccess();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_25BC2986C(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_9_40(a1);
  OUTLINED_FUNCTION_24_20(v4, v5, v6, v7);
  v8 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v9)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v11 = 1;
LABEL_9:
  if ((v3 - 1) <= 0xA)
  {
    v12 = qword_25BCCCC48[(v3 - 1)];
  }

  v13 = OUTLINED_FUNCTION_5_48(v11);
  if (!v10)
  {
    goto LABEL_15;
  }

  if (!OUTLINED_FUNCTION_41_19(v13))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24();

  [v1 contents];
  [v1 length];
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_22_28(v14);
  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v15);

  return OUTLINED_FUNCTION_37_19();
}

uint64_t sub_25BC299C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6);
  v9 = OUTLINED_FUNCTION_16_39(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_41();
  v12 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v13)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_28_22(v32);
    OUTLINED_FUNCTION_4_52();
  }

  v15 = 1;
LABEL_9:
  if ((v6 - 1) <= 0xA)
  {
    v16 = qword_25BCCCC48[(v6 - 1)];
  }

  v17 = OUTLINED_FUNCTION_5_48(v15);
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!OUTLINED_FUNCTION_12_35(v17))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24();

  [v6 contents];
  [OUTLINED_FUNCTION_42_17() length];
  OUTLINED_FUNCTION_34_19();
  v18 = *MEMORY[0x277D84660];
  v19 = OUTLINED_FUNCTION_25_24();
  v20(v19);
  v21 = OUTLINED_FUNCTION_17_35();
  sub_25BAC0838(v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_35_20();
  v26(v25);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_20_27(v27);
  objc_autoreleasePoolPop(v33);
  OUTLINED_FUNCTION_23_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v7 + 16) = sub_25BC29748(v28, v29, v30);
  swift_endAccess();

  return OUTLINED_FUNCTION_33_23();
}

uint64_t sub_25BC29BC0(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_9_40(a1);
  OUTLINED_FUNCTION_24_20(v5, v6, v7, v8);
  v9 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v10)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v12 = 1;
LABEL_9:
  if ((v4 - 1) <= 0xA)
  {
    v13 = qword_25BCCCC48[(v4 - 1)];
  }

  v14 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
    goto LABEL_17;
  }

  if (!OUTLINED_FUNCTION_41_19(v14))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_29_24();

  [v1 contents];
  v15 = [OUTLINED_FUNCTION_43_13() length];
  if (v15)
  {
    bzero(v3, v15);
  }

  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_22_28(v16);
  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v17);

  return OUTLINED_FUNCTION_37_19();
}

uint64_t sub_25BC29D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6);
  v9 = OUTLINED_FUNCTION_16_39(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_41();
  v12 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v13)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_28_22(v32);
    OUTLINED_FUNCTION_4_52();
  }

  v15 = 1;
LABEL_9:
  if ((v6 - 1) <= 0xA)
  {
    v16 = qword_25BCCCC48[(v6 - 1)];
  }

  v17 = OUTLINED_FUNCTION_5_48(v15);
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!OUTLINED_FUNCTION_12_35(v17))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24();

  [v6 contents];
  [OUTLINED_FUNCTION_42_17() length];
  OUTLINED_FUNCTION_34_19();
  v18 = *MEMORY[0x277D84660];
  v19 = OUTLINED_FUNCTION_25_24();
  v20(v19);
  v21 = OUTLINED_FUNCTION_17_35();
  sub_25BAC5EF8(v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_35_20();
  v26(v25);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_20_27(v27);
  objc_autoreleasePoolPop(v33);
  OUTLINED_FUNCTION_23_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v7 + 16) = sub_25BC29748(v28, v29, v30);
  swift_endAccess();

  return OUTLINED_FUNCTION_33_23();
}

void sub_25BC2A104()
{
  OUTLINED_FUNCTION_18_34();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  v13 = *v12;
  *(v6 + 24) = *v10;
  *(v6 + 32) = v13;
  swift_bridgeObjectRetain_n();
  v14 = objc_autoreleasePoolPush();
  if (*(v11 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v15)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v16 = 1;
LABEL_8:
  if ((v13 - 1) <= 0xA)
  {
    v17 = qword_25BCCCC48[(v13 - 1)];
  }

  v18 = OUTLINED_FUNCTION_5_48(v16);
  if (!v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_0_68();
    sub_25BB0D160(v5, v1);
    OUTLINED_FUNCTION_3_47();
  }

  v28 = v14;
  v1 = v3;
  v19 = v9;
  v20 = v9;
  if (!sub_25BBC9A4C(v18, 0))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_29_24();

  v21 = [v9 contents];
  sub_25BC05C00(v21, [v20 length] + v21, v5, v1);
  if (v0)
  {

    swift_unknownObjectRelease_n();
    objc_autoreleasePoolPop(v28);

    v22 = *(v7 + 24);

    type metadata accessor for MPSGraphTensorStorage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_unknownObjectRelease();
    type metadata accessor for SharedMTLBufferTensorStorage();
    OUTLINED_FUNCTION_11_38();
    v23 = swift_allocObject();
    *(v23 + 24) = v20;
    *(v23 + 32) = v11;
    *(v23 + 40) = v13;
    *(v23 + 16) = v19;

    objc_autoreleasePoolPop(v28);
    OUTLINED_FUNCTION_6_47();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
    OUTLINED_FUNCTION_54();
    swift_allocObject();
    OUTLINED_FUNCTION_45_14();
    OUTLINED_FUNCTION_15_34();
    v27 = sub_25BC29748(v24, v25, v26);
    OUTLINED_FUNCTION_39_20(v27);
  }

  sub_25BB0D160(v5, v1);
  OUTLINED_FUNCTION_19_25();
}

void sub_25BC2A334()
{
  OUTLINED_FUNCTION_18_34();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_40(v6);
  v8 = *v7;
  *(v9 + 24) = v1;
  *(v9 + 32) = v8;
  OUTLINED_FUNCTION_27_25();
  swift_bridgeObjectRetain_n();
  v10 = objc_autoreleasePoolPush();
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v12 = 1;
LABEL_9:
  if ((v8 - 1) <= 0xA)
  {
    v13 = qword_25BCCCC48[(v8 - 1)];
  }

  v14 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
    goto LABEL_17;
  }

  v19 = v15;
  if (!OUTLINED_FUNCTION_41_19(v14))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_29_24();

  v16 = [v0 contents];
  [v0 length];
  if (v5)
  {
    memmove(v16, v5, v3 - v5);
  }

  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v17 = swift_allocObject();
  *(v17 + 24) = v0;
  *(v17 + 32) = v1;
  *(v17 + 40) = v8;
  OUTLINED_FUNCTION_40_19(v17);
  objc_autoreleasePoolPop(v19);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v18);

  OUTLINED_FUNCTION_19_25();
}

void sub_25BC2A4C8()
{
  OUTLINED_FUNCTION_18_34();
  v5 = v4;
  OUTLINED_FUNCTION_9_40(v6);
  v8 = *v7;
  *(v9 + 24) = v1;
  *(v9 + 32) = v8;
  OUTLINED_FUNCTION_27_25();
  swift_bridgeObjectRetain_n();
  v10 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v11)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v13 = 1;
LABEL_9:
  if ((v8 - 1) <= 0xA)
  {
    v14 = qword_25BCCCC48[(v8 - 1)];
  }

  v15 = OUTLINED_FUNCTION_5_48(v13);
  if (!v12)
  {
    goto LABEL_15;
  }

  if (!OUTLINED_FUNCTION_41_19(v15))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24();

  [v0 contents];
  [OUTLINED_FUNCTION_42_17() length];
  *v3 = v5 & 1;
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v16 = swift_allocObject();
  *(v16 + 24) = v0;
  *(v16 + 32) = v1;
  *(v16 + 40) = v8;
  OUTLINED_FUNCTION_40_19(v16);
  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v17);

  OUTLINED_FUNCTION_37_19();
  OUTLINED_FUNCTION_19_25();
}

void sub_25BC2A638()
{
  OUTLINED_FUNCTION_18_34();
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25 = v8;
  v10 = *v9;
  v12 = *v11;
  *(v6 + 24) = *v9;
  *(v6 + 32) = v12;
  OUTLINED_FUNCTION_12_28();
  swift_bridgeObjectRetain_n();
  v13 = objc_autoreleasePoolPush();
  if (*(v10 + 16))
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_0_68();

    OUTLINED_FUNCTION_3_47();
  }

  v15 = 1;
LABEL_9:
  if ((v12 - 1) <= 0xA)
  {
    v16 = qword_25BCCCC48[(v12 - 1)];
  }

  v17 = OUTLINED_FUNCTION_5_48(v15);
  if (!v14)
  {
    goto LABEL_18;
  }

  if (!sub_25BBC9A4C(v17, 0))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_29_24();

  v18 = [v25 contents];
  sub_25BBE1C64(v18, [v25 length] + v18, v5, v3, v24);
  if (v0)
  {

    swift_unknownObjectRelease_n();
    objc_autoreleasePoolPop(v13);

    v19 = *(v7 + 24);

    type metadata accessor for MPSGraphTensorStorage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_unknownObjectRelease();
    type metadata accessor for SharedMTLBufferTensorStorage();
    OUTLINED_FUNCTION_11_38();
    v20 = swift_allocObject();
    *(v20 + 24) = v25;
    *(v20 + 32) = v10;
    *(v20 + 40) = v12;
    OUTLINED_FUNCTION_40_19(v20);
    objc_autoreleasePoolPop(v13);
    OUTLINED_FUNCTION_6_47();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
    OUTLINED_FUNCTION_54();
    swift_allocObject();
    OUTLINED_FUNCTION_15_34();
    *(v7 + 16) = sub_25BC29748(v21, v22, v23);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_19_25();
}

uint64_t sub_25BC2A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6);
  v9 = OUTLINED_FUNCTION_16_39(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_41();
  v12 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v13)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_28_22(v32);
    OUTLINED_FUNCTION_4_52();
  }

  v15 = 1;
LABEL_9:
  if ((v6 - 1) <= 0xA)
  {
    v16 = qword_25BCCCC48[(v6 - 1)];
  }

  v17 = OUTLINED_FUNCTION_5_48(v15);
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!OUTLINED_FUNCTION_12_35(v17))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24();

  [v6 contents];
  [OUTLINED_FUNCTION_42_17() length];
  OUTLINED_FUNCTION_34_19();
  v18 = *MEMORY[0x277D84660];
  v19 = OUTLINED_FUNCTION_25_24();
  v20(v19);
  v21 = OUTLINED_FUNCTION_17_35();
  sub_25BB581C4(v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_35_20();
  v26(v25);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_20_27(v27);
  objc_autoreleasePoolPop(v33);
  OUTLINED_FUNCTION_23_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v7 + 16) = sub_25BC29748(v28, v29, v30);
  swift_endAccess();

  return OUTLINED_FUNCTION_33_23();
}

uint64_t sub_25BC2AA5C(uint64_t *a1, float a2)
{
  v7 = OUTLINED_FUNCTION_9_40(a1);
  OUTLINED_FUNCTION_24_20(v7, v8, v9, v10);
  v11 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v12)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v13)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v14 = 1;
LABEL_9:
  if ((v5 - 1) <= 0xA)
  {
    v15 = qword_25BCCCC48[(v5 - 1)];
  }

  v16 = OUTLINED_FUNCTION_5_48(v14);
  if (!v13)
  {
    goto LABEL_24;
  }

  if (!OUTLINED_FUNCTION_41_19(v16))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_29_24();

  [v2 contents];
  v17 = [OUTLINED_FUNCTION_43_13() length];
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = vdupq_n_s64((v17 >> 2) - 1);
    v20 = (v4 + 8);
    do
    {
      v21 = vdupq_n_s64(v18);
      v22 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_25BCCB570)));
      if (vuzp1_s16(v22, *v19.i8).u8[0])
      {
        *(v20 - 2) = a2;
      }

      if (vuzp1_s16(v22, *&v19).i8[2])
      {
        *(v20 - 1) = a2;
      }

      if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_25BCCB560)))).i32[1])
      {
        *v20 = a2;
        v20[1] = a2;
      }

      v18 += 4;
      v20 += 4;
    }

    while ((((v17 >> 2) + 3) & 0x3FFFFFFFFFFFFFFCLL) != v18);
  }

  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_22_28(v23);
  objc_autoreleasePoolPop(v3);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v24);

  return OUTLINED_FUNCTION_37_19();
}

void sub_25BC2AC64()
{
  OUTLINED_FUNCTION_18_34();
  v5 = v4;
  OUTLINED_FUNCTION_9_40(v6);
  v8 = *v7;
  *(v9 + 24) = v1;
  *(v9 + 32) = v8;
  OUTLINED_FUNCTION_27_25();
  swift_bridgeObjectRetain_n();
  v10 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v11)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v13 = 1;
LABEL_9:
  if ((v8 - 1) <= 0xA)
  {
    v14 = qword_25BCCCC48[(v8 - 1)];
  }

  v15 = OUTLINED_FUNCTION_5_48(v13);
  if (!v12)
  {
    goto LABEL_22;
  }

  if (!OUTLINED_FUNCTION_41_19(v15))
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_29_24();

  [v0 contents];
  v16 = [OUTLINED_FUNCTION_42_17() length];
  if (v16 >= 8)
  {
    v17 = 0;
    v18 = vdupq_n_s64((v16 >> 3) - 1);
    v19 = (v3 + 8);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v17), xmmword_25BCCB570)));
      if (v20.i8[0])
      {
        *(v19 - 1) = v5;
      }

      if (v20.i8[4])
      {
        *v19 = v5;
      }

      v17 += 2;
      v19 += 2;
    }

    while ((((v16 >> 3) + 1) & 0x1FFFFFFFFFFFFFFELL) != v17);
  }

  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v21 = swift_allocObject();
  *(v21 + 24) = v0;
  *(v21 + 32) = v1;
  *(v21 + 40) = v8;
  OUTLINED_FUNCTION_40_19(v21);
  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v22);

  OUTLINED_FUNCTION_37_19();
  OUTLINED_FUNCTION_19_25();
}

void sub_25BC2AE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_18_34();
  v15 = v10;
  OUTLINED_FUNCTION_44_14(v16);
  v18 = *v17;
  *(v19 + 24) = v13;
  *(v19 + 32) = v18;
  OUTLINED_FUNCTION_12_28();
  swift_bridgeObjectRetain_n();
  v20 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v21)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v22)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_68();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_3_47();
  }

  v23 = 1;
LABEL_9:
  if ((v18 - 1) <= 0xA)
  {
    v24 = qword_25BCCCC48[(v18 - 1)];
  }

  v25 = OUTLINED_FUNCTION_5_48(v23);
  if (!v22)
  {
    goto LABEL_15;
  }

  if (!OUTLINED_FUNCTION_46_17(v25))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24();

  [v10 contents];
  v26 = [OUTLINED_FUNCTION_42_17() length];
  v27 = [swift_unknownObjectRetain() contents];
  v28 = v9;
  memmove(v14, v27, v26);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v29 = swift_allocObject();
  *(v29 + 24) = v15;
  *(v29 + 32) = v13;
  *(v29 + 40) = v18;
  *(v29 + 16) = v12;

  objc_autoreleasePoolPop(a9);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v11 + 16) = sub_25BC29748(v30, v31, v32);
  swift_endAccess();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19_25();
}

void sub_25BC2AFF4()
{
  OUTLINED_FUNCTION_18_34();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v9 = *v8;
  *(v2 + 24) = *v6;
  *(v2 + 32) = v9;
  swift_bridgeObjectRetain_n();
  v10 = objc_autoreleasePoolPush();
  if (*(v7 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v12 = 1;
LABEL_8:
  if ((v9 - 1) <= 0xA)
  {
    v13 = qword_25BCCCC48[(v9 - 1)];
  }

  v14 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_68();

    OUTLINED_FUNCTION_3_47();
  }

  v15 = sub_25BBC9A4C(v14, 0);
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  swift_unknownObjectRetain_n();

  [v16 contents];
  [OUTLINED_FUNCTION_45_14() length];
  v21 = *(v1 + 24);
  sub_25BB71B64();
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v17 = swift_allocObject();
  *(v17 + 24) = v16;
  *(v17 + 32) = v7;
  *(v17 + 40) = v9;
  *(v17 + 16) = v5;

  objc_autoreleasePoolPop(v10);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v3 + 16) = sub_25BC29748(v18, v19, v20);
  swift_endAccess();

  OUTLINED_FUNCTION_19_25();
}

void sub_25BC2B1EC()
{
  OUTLINED_FUNCTION_18_34();
  v2 = v0;
  v4 = v3;
  v26 = v5;
  v6 = *v2;
  v8 = *v7;
  v10 = *v9;
  v2[3] = *v7;
  *(v2 + 32) = v10;
  OUTLINED_FUNCTION_12_28();
  swift_bridgeObjectRetain_n();
  v11 = objc_autoreleasePoolPush();
  if (*(v8 + 16))
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47();
  }

  v13 = 1;
LABEL_9:
  if ((v10 - 1) <= 0xA)
  {
    v14 = qword_25BCCCC48[(v10 - 1)];
  }

  v15 = OUTLINED_FUNCTION_5_48(v13);
  if (!v12)
  {
    goto LABEL_18;
  }

  v25 = v10;
  v16 = v4;
  v17 = sub_25BBC9A4C(v15, 0);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  swift_unknownObjectRetain_n();

  v19 = [v18 contents];
  v16(v19, [v18 length] + v19);
  if (v1)
  {

    OUTLINED_FUNCTION_27_25();
    swift_unknownObjectRelease_n();
    objc_autoreleasePoolPop(v11);

    v20 = v2[3];

    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_unknownObjectRelease();
    type metadata accessor for SharedMTLBufferTensorStorage();
    OUTLINED_FUNCTION_11_38();
    v21 = swift_allocObject();
    *(v21 + 24) = v18;
    *(v21 + 32) = v8;
    *(v21 + 40) = v25;
    *(v21 + 16) = v26;

    objc_autoreleasePoolPop(v11);
    OUTLINED_FUNCTION_6_47();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
    OUTLINED_FUNCTION_54();
    swift_allocObject();
    OUTLINED_FUNCTION_15_34();
    v2[2] = sub_25BC29748(v22, v23, v24);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_19_25();
}

uint64_t sub_25BC2B438()
{
  OUTLINED_FUNCTION_36_17();
  sub_25BC2B4B4();
  v1 = v0;
  swift_getObjectType();
  v2 = *(v1 + 56);
  v3 = OUTLINED_FUNCTION_31_23();
  v4(v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC2B4B4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = sub_25BBFA86C(v2, v0);

  return v3;
}

uint64_t sub_25BC2B52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (!(v8 >> 62))
  {
    v12 = *(v8 + 24);
    sub_25BC2BE34(v7, v6, v8);
    if ([swift_unknownObjectRetain() commandBuffer])
    {
      OUTLINED_FUNCTION_43_13();
      swift_unknownObjectRelease();
      swift_getObjectType();

      v13 = sub_25BBC99EC();

      [v3 encodeWaitForEvent:v13 value:v6];
      swift_unknownObjectRelease();
      if (![v7 storageMode])
      {
        sub_25BC671A0();
        swift_unknownObjectRelease();
        v22 = *(a2 + 24);
        v23 = *(a2 + 32);
        type metadata accessor for SharedMTLBufferTensorStorage();
        OUTLINED_FUNCTION_11_38();
        v24 = swift_allocObject();
        *(v24 + 24) = v7;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
        *(v24 + 16) = v8;
        v25 = *a1;
        v26 = *(a1 + 8);
        v27 = *(a1 + 16);
        *a1 = v24;
        *(a1 + 8) = &off_286D50200;
        *(a1 + 16) = 0x4000000000000000;
        sub_25BCB617C();

        result = sub_25BBB9C64(v25, v26, v27);
        *a3 = v24;
        a3[1] = &off_286D50200;
        return result;
      }

      v14 = *(a2 + 32);
      *&v50[0] = *(a2 + 24);
      BYTE8(v50[0]) = v14;
      sub_25BCB1730();
      v4 = *(a2 + 24);
      v15 = *(a2 + 32);
      if (v16)
      {
        v17 = type metadata accessor for IOSurfaceTensorStorage();
        *&v50[0] = v4;
        LOBYTE(v49) = v15;
        OUTLINED_FUNCTION_12_28();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v18 = sub_25BB99A40(v50, &v49, v17, v8, v4, v15, v7);

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_12_28();

        swift_unknownObjectRelease();
        v20 = *a1;
        v19 = *(a1 + 8);
        v21 = *(a1 + 16);
        *a1 = v18;
        *(a1 + 8) = &off_286D4C100;
        *(a1 + 16) = 0x4000000000000000;

        result = sub_25BBB9C64(v20, v19, v21);
        *a3 = v18;
        a3[1] = &off_286D4C100;
        return result;
      }

      if (*(v4 + 16))
      {
        while (1)
        {
          OUTLINED_FUNCTION_92_0();
          if (!v28)
          {
            break;
          }

          OUTLINED_FUNCTION_14_32();
          if (v28)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

      v29 = 1;
LABEL_17:
      if ((v15 - 1) > 0xA)
      {
        v30 = 1;
      }

      else
      {
        v30 = qword_25BCCCC48[(v15 - 1)];
      }

      v31 = v29 * v30;
      v47 = v30;
      if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_25BCB617C();
      v32 = sub_25BBCA208(v31, 1);
      if (v32)
      {
        v33 = v32;
        if ([*(v8 + 24) commandBuffer])
        {
          OUTLINED_FUNCTION_45_14();

          swift_getObjectType();
          sub_25BC671E0(v7, 0, v33, 0, [v33 length]);
          sub_25BC671A0();
          if (qword_28154F2C8 == -1)
          {
LABEL_24:
            v35 = qword_281557400;
            *&v49 = *(a2 + 24);
            v53 = *(a2 + 32);
            v51 = 0;
            memset(v50, 0, sizeof(v50));
            swift_unknownObjectRetain();
            sub_25BCB617C();
            sub_25BC73ED8(&v49, &v53, v50, v35);
            v37 = v36;
            v48 = v38;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_12_28();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_25BA9C2C8(v50);

            v40 = *a1;
            v39 = *(a1 + 8);
            v41 = *(a1 + 16);
            *a1 = v37;
            *(a1 + 8) = v48;
            *(a1 + 16) = 0x4000000000000000;
            swift_unknownObjectRetain();
            result = sub_25BBB9C64(v40, v39, v41);
            *a3 = v37;
            a3[1] = v48;
            return result;
          }

LABEL_26:
          swift_once();
          goto LABEL_24;
        }

        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    *&v50[0] = 0;
    *(&v50[0] + 1) = 0xE000000000000000;
    sub_25BCB70FC();

    *&v49 = 0xD000000000000027;
    *(&v49 + 1) = 0x800000025BCDDC80;
    v34 = *(v4 + 16);
    if (v34)
    {
      goto LABEL_33;
    }

    v42 = 1;
LABEL_30:
    v34 = v42 * v47;
    if ((v42 * v47) >> 64 == (v42 * v47) >> 63)
    {
LABEL_38:
      v46 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v46);

      MEMORY[0x25F876C90](24622, 0xE200000000000000);
      v50[0] = v49;
      v52 = 9;
      sub_25BCB617C();
      sub_25BA97890();
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v43 = (v4 + 32);
    v44 = 1;
    while (1)
    {
      v45 = *v43++;
      v42 = v44 * v45;
      if ((v44 * v45) >> 64 != (v44 * v45) >> 63)
      {
        break;
      }

      v44 = v42;
      if (!--v34)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  *a3 = v7;
  if (v8 >> 62 == 1)
  {
    a3[1] = v6;
    return swift_unknownObjectRetain();
  }

  else
  {
    a3[1] = &off_286D50200;
  }
}

uint64_t sub_25BC2BAC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_25BC2BAE8()
{
  sub_25BC2BAC0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC2BB70(uint64_t a1)
{
  v1 = *(a1 + 24);
  [swift_unknownObjectRetain() contents];
  [v1 length];
  sub_25BB5C3B0();
  return sub_25BCB582C();
}

uint64_t sub_25BC2BC0C()
{
  OUTLINED_FUNCTION_36_17();
  v3 = *(v0 + 24);
  [swift_unknownObjectRetain() contents];
  v4 = [OUTLINED_FUNCTION_43_13() length];
  return v1(v2, &v4[v2]);
}

void *sub_25BC2BC90()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return v0;
}

uint64_t sub_25BC2BCC0()
{
  sub_25BC2BC90();
  OUTLINED_FUNCTION_11_38();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC2BD20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25BC2BD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BC2BE34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:

      result = swift_unknownObjectRetain();
      break;
    case 2uLL:
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
      swift_unknownObjectRetain();
LABEL_3:

      break;
  }

  return result;
}

uint64_t sub_25BC2BEDC()
{
  OUTLINED_FUNCTION_3_48();
  swift_weakAssign();
  OUTLINED_FUNCTION_0_69();
  sub_25BAC4888();
  v1 = OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_1_58(v1, v2, v3);
  *(v0 + 24) = v0 + 24;
  return swift_endAccess();
}

unint64_t sub_25BC2BF48()
{
  result = qword_27FBB6828;
  if (!qword_27FBB6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6828);
  }

  return result;
}

uint64_t sub_25BC2BF9C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  return sub_25BCB617C();
}

void sub_25BC2BFD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  if (v1 < v3)
  {
    v4 = v0;
    for (i = v2 + 8 * v1 + 32; ; i += 8)
    {
      if (v1 >= v3)
      {
        __break(1u);
        return;
      }

      sub_25BC2C250(i, v16);
      v4[1] = ++v1;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      sub_25BC2C2C0(v16);
LABEL_16:
      v3 = *(v2 + 16);
      if (v1 >= v3)
      {
        return;
      }
    }

    v7 = Strong;
    if (*(Strong + 32) > 0)
    {

      v8 = sub_25BA928B4();
      [v8 lock];

      swift_beginAccess();
      sub_25BA9323C(v7 + 40, v13);
      if (!v15)
      {
        sub_25BA9BE3C(v13, v12);
        v9 = v12[1];
        ObjectType = swift_getObjectType();
        v11 = (*(v9 + 56))(ObjectType, v9);
        sub_25BA977E0(v12);
        [*(v7 + 224) unlock];

        sub_25BC2C2C0(v16);
        if ((v11 & 1) == 0)
        {
          return;
        }

        goto LABEL_15;
      }

      if (v15 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v14);
      }

      else
      {
        sub_25BA9778C(v13);
      }

      [*(v7 + 224) unlock];
    }

    sub_25BC2C2C0(v16);
LABEL_15:

    goto LABEL_16;
  }
}

uint64_t sub_25BC2C1C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25BC2BF9C();

  *a1 = v4;
  a1[1] = 0;
  return result;
}

uint64_t sub_25BC2C250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BC2C2C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BC2C338(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v29 = MEMORY[0x277D84F90];
  sub_25BB00694(0, v4, 0);
  v5 = sub_25BC4E1E4(a1, a2);
  sub_25BCB617C();
  v6 = sub_25BC2C54C(v5, a1);

  v28 = v6;
  if (v4)
  {
    v8 = 0;
    v26 = v4;
    v27 = *(v6 + 16);
    v9 = (v6 + 56);
    v10 = v6;
    while (v27 != v8)
    {
      if (v8 >= *(v10 + 16))
      {
        __break(1u);
        break;
      }

      v12 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      v14 = *v9;
      sub_25BCB617C();
      result = sub_25BCB617C();
      if (!v11)
      {
        break;
      }

      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_25BB00694(v15 > 1, v16 + 1, 1);
        v10 = v28;
      }

      ++v8;
      *(v29 + 16) = v16 + 1;
      v17 = v29 + 32 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      *(v17 + 48) = v13;
      *(v17 + 56) = v14;
      v9 += 32;
      v4 = v26;
      if (v26 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = v6;
LABEL_11:
    v18 = (v10 + 32 * v4 + 56);
    while (v4 < *(v10 + 16))
    {
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;
      v24 = *(v29 + 16);
      v23 = *(v29 + 24);
      sub_25BCB617C();
      sub_25BCB617C();
      if (v24 >= v23 >> 1)
      {
        sub_25BB00694(v23 > 1, v24 + 1, 1);
      }

      *(v29 + 16) = v24 + 1;
      v25 = v29 + 32 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
      *(v25 + 48) = v21;
      *(v25 + 56) = v22;
      v18 += 32;
      ++v4;
      v10 = v28;
    }

    return v29;
  }

  return result;
}

uint64_t sub_25BC2C54C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v36 = MEMORY[0x277D84F90];
  sub_25BB00674(0, v6, 0);
  v28 = v5;
  v29 = v4;
  v26 = a2;
  v27 = a1;
  v30 = v6;
  if (v6)
  {
    sub_25BCB617C();
    result = sub_25BCB617C();
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_24;
      }

      v11 = *v9;
      v32 = *(v9 - 1);
      v12 = *(v8 - 1);
      v33 = *v8;
      v14 = *(v36 + 16);
      v13 = *(v36 + 24);
      v34 = v14 + 1;
      sub_25BCB617C();
      result = sub_25BCB617C();
      if (v14 >= v13 >> 1)
      {
        result = sub_25BB00674(v13 > 1, v34, 1);
      }

      *(v36 + 16) = v34;
      v15 = v36 + 32 * v14;
      *(v15 + 32) = v32;
      *(v15 + 40) = v11;
      --v5;
      *(v15 + 48) = v12;
      *(v15 + 56) = v33;
      --v4;
      v8 += 16;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_13;
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
  }

  else
  {
    sub_25BCB617C();
    result = sub_25BCB617C();
LABEL_13:
    v16 = v30;
    v35 = 16 * v30;
    v17 = v26;
    for (i = v27; v29 != v16; i += 16)
    {
      if (v16 >= v29)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

      if (v28 == v16)
      {
        break;
      }

      if (v16 >= v28)
      {
        goto LABEL_27;
      }

      v31 = v16;
      v19 = *(i + v35 + 32);
      v20 = *(i + v35 + 40);
      v21 = *(v17 + v35 + 32);
      v22 = *(v17 + v35 + 40);
      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      sub_25BCB617C();
      result = sub_25BCB617C();
      if (v24 >= v23 >> 1)
      {
        result = sub_25BB00674(v23 > 1, v24 + 1, 1);
      }

      *(v36 + 16) = v24 + 1;
      v25 = v36 + 32 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
      *(v25 + 48) = v21;
      *(v25 + 56) = v22;
      v17 += 16;
      v16 = v31 + 1;
    }

    return v36;
  }

  return result;
}

uint64_t sub_25BC2C7BC()
{
  v1 = v0[46];
  v2 = [objc_opt_self() defaultManager];
  sub_25BCB595C();
  v3 = sub_25BCB633C();

  v4 = [v2 fileExistsAtPath_];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBDF80;
    *(inited + 32) = 7633012;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 7104877;
    *(inited + 56) = 0xE300000000000000;
    *(inited + 64) = 0x67616B6361706C6DLL;
    *(inited + 72) = 0xE900000000000065;
    *(inited + 80) = 0x636C65646F6D6C6DLL;
    *(inited + 88) = 0xE800000000000000;
    sub_25BCB590C();
    v6 = sub_25BCB63BC();
    v8 = v7;

    v0[43] = v6;
    v0[44] = v8;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 43;
    v10 = sub_25BAD9FE0(sub_25BADA100, v9, inited);
    v0[47] = 0;
    swift_setDeallocating();
    sub_25BC0C514();

    if (v10)
    {
      v11 = v0[46];
      v12 = objc_opt_self();
      v13 = sub_25BCB592C();
      v0[48] = v13;
      v14 = *(v11 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_context);
      v0[2] = v0;
      v0[7] = v0 + 45;
      v0[3] = sub_25BC2CB34;
      v15 = swift_continuation_init();
      v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FBB6848, &unk_25BCCCE58);
      v0[22] = MEMORY[0x277D85DD0];
      v0[23] = 1107296256;
      v0[24] = sub_25BC2D0D8;
      v0[25] = &block_descriptor_2;
      v0[26] = v15;
      [v12 loadContentsOfURL:v13 withContext:v14 completion:v0 + 22];

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_25BC2E4E0();
    swift_allocError();
    *v16 = xmmword_25BCC06A0;
  }

  else
  {
    sub_25BC2E4E0();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
  }

  *(v16 + 16) = 4;
  swift_willThrow();
  OUTLINED_FUNCTION_0_70();

  return v17();
}

uint64_t sub_25BC2CB34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_25BC2CF5C;
  }

  else
  {
    v3 = sub_25BC2CC44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25BC2CC44()
{
  v1 = v0[48];
  v2 = v0[46];
  v3 = OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program;
  v4 = *(v2 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program);
  *(v2 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program) = v0[45];

  v5 = *(v2 + v3);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v0[46];
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = v5;
  v10 = sub_25BCB633C();
  v11 = [v9 functionWithName_];

  if (v11)
  {
    v12 = v0[47];
    type metadata accessor for MILFunctionParser();
    swift_initStackObject();
    v13 = v11;
    v14 = sub_25BC2D410(v13);
    sub_25BC2D498();
    if (!v12)
    {
      sub_25BC2DA64();
      v20 = v0[46];
      swift_beginAccess();
      v21 = v14[3];
      v22 = v14[4];
      sub_25BCB617C();
      sub_25BCB617C();
      v23 = sub_25BC2C338(v21, v22);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      *(&v34 + 1) = sub_25BCB614C();
      v24 = sub_25BAF9B54(v23);

      *&v34 = v24;
      sub_25BAFC990();
      v25 = *(v20 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs);
      v26 = *(v20 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs + 8);
      *(v20 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs) = v34;
      sub_25BC2E4A0(v25);
      swift_beginAccess();
      v27 = v14[5];
      v28 = v14[6];
      sub_25BCB617C();
      sub_25BCB617C();
      v29 = sub_25BC2C338(v27, v28);

      *(&v34 + 1) = sub_25BCB614C();
      v30 = sub_25BAF9B54(v29);

      *&v34 = v30;
      sub_25BAFC990();

      v31 = *(v20 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs);
      v32 = *(v20 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs + 8);
      *(v20 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs) = v34;
      sub_25BC2E4A0(v31);
      OUTLINED_FUNCTION_0_70();
      goto LABEL_8;
    }
  }

  else
  {
LABEL_6:
    v15 = v0[46];
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    sub_25BC2E4E0();
    swift_allocError();
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 16) = 3;
    swift_willThrow();
    sub_25BCB617C();
  }

  OUTLINED_FUNCTION_0_70();
LABEL_8:

  return v33();
}

uint64_t sub_25BC2CF5C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  swift_willThrow();

  v3 = *(v0 + 392);
  OUTLINED_FUNCTION_0_70();

  return v4();
}

uint64_t sub_25BC2CFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program) = 0;
  v7 = (v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_url;
  v10 = sub_25BCB598C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3 + v9, a1, v10);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v12 = [objc_allocWithZone(SNNMILContext) init];
  (*(v11 + 8))(a1, v10);
  *(v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_context) = v12;
  return v3;
}

uint64_t *sub_25BC2D0D8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_25BC2D168(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_25BC2D1D4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC2D168(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_25BC2D1F4()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_url;
  v3 = sub_25BCB598C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs + 8);
  sub_25BC2E4A0(*(v0 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs));
  v5 = *(v0 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs + 8);
  sub_25BC2E4A0(*(v0 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs));
  return v0;
}

uint64_t sub_25BC2D2A4()
{
  sub_25BC2D1F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MILProgramParser()
{
  result = qword_27FBB6830;
  if (!qword_27FBB6830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BC2D350()
{
  result = sub_25BCB598C();
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

void *sub_25BC2D410(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25BCB614C();
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_25BCB614C();
  v1[5] = v3;
  v1[6] = v5;
  v1[2] = a1;
  return v1;
}

uint64_t sub_25BC2D498()
{
  v1 = v0;
  v59 = *(v0 + 16);
  v2 = [v59 inputNames];
  v3 = sub_25BCB673C();

  v4 = 0;
  v60 = *(v3 + 16);
  v57 = v1;
  v58 = v3 + 32;
  v56 = v3;
  while (1)
  {
    if (v4 == v60)
    {
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v5 = (v58 + 16 * v4);
    v6 = *v5;
    v7 = v5[1];
    sub_25BCB617C();
    v65 = v6;
    v8 = sub_25BCB633C();
    v9 = [v59 inputWithName_];

    if (!v9)
    {

LABEL_45:
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_25BCB70FC();

      v66 = 0xD00000000000002ELL;
      v67 = 0x800000025BCE3960;
      MEMORY[0x25F876C90](v6, v7);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v53 = v66;
      v54 = v67;
      sub_25BC2E4E0();
      swift_allocError();
      *v55 = v53;
      *(v55 + 8) = v54;
      *(v55 + 16) = 2;
      return swift_willThrow();
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      goto LABEL_45;
    }

    v63 = v10;
    v64 = v7;
    v11 = [v10 dimensions];
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v12 = sub_25BCB673C();

    if (v12 >> 62)
    {
      v13 = sub_25BCB749C();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v9;
    v62 = v4;
    if (v13)
    {
      v66 = MEMORY[0x277D84F90];
      sub_25BAA21EC();
      if (v13 < 0)
      {
        goto LABEL_48;
      }

      v14 = 0;
      v15 = v66;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x25F8779B0](v14, v12);
        }

        else
        {
          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 integerValue];

        v66 = v15;
        v19 = *(v15 + 16);
        if (v19 >= *(v15 + 24) >> 1)
        {
          sub_25BAA21EC();
          v15 = v66;
        }

        ++v14;
        *(v15 + 16) = v19 + 1;
        *(v15 + 8 * v19 + 32) = v18;
      }

      while (v13 != v14);

      v3 = v56;
      v1 = v57;
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_25BC9B304([v63 dataType], &v66);
    v20 = v66;
    swift_beginAccess();
    v21 = *(v1 + 32);
    if (*(v21 + 16) && (v22 = sub_25BA9266C(v6, v64), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v25 = *(v1 + 24);
      if (v24 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      v26 = *(v1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BBF149C(v25);
        v25 = v51;
        *(v1 + 24) = v51;
      }

      if (v24 >= *(v25 + 16))
      {
        goto LABEL_52;
      }

      v28 = v25 + 16 * v24;
      v29 = *(v28 + 32);
      *(v28 + 32) = v15;
      *(v28 + 40) = v20;
      sub_25BCB617C();

      *(v1 + 24) = v25;
      v30 = v62;
    }

    else
    {
      v31 = *(v1 + 24);
      sub_25BCB617C();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v31;
      if ((v32 & 1) == 0)
      {
        v48 = *(v31 + 16);
        sub_25BAC944C();
        v31 = v49;
        *(v1 + 24) = v49;
      }

      v33 = *(v31 + 16);
      if (v33 >= *(v31 + 24) >> 1)
      {
        sub_25BAC944C();
        v31 = v50;
      }

      *(v31 + 16) = v33 + 1;
      v34 = v31 + 16 * v33;
      *(v34 + 32) = v15;
      *(v34 + 40) = v20;
      *(v1 + 24) = v31;
      v35 = *(v1 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v1 + 32);
      v36 = v68;
      *(v1 + 32) = 0x8000000000000000;
      v37 = sub_25BA9266C(v6, v64);
      if (__OFADD__(v36[2], (v38 & 1) == 0))
      {
        goto LABEL_47;
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v41 = sub_25BA9266C(v6, v64);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_53;
        }

        v39 = v41;
      }

      v30 = v62;
      v43 = v68;
      if (v40)
      {
        *(v68[7] + 8 * v39) = v33;
      }

      else
      {
        v68[(v39 >> 6) + 8] |= 1 << v39;
        v44 = (v43[6] + 16 * v39);
        *v44 = v65;
        v44[1] = v64;
        *(v43[7] + 8 * v39) = v33;
        v45 = v43[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_49;
        }

        v43[2] = v47;
        sub_25BCB617C();
      }

      *(v1 + 32) = v43;
    }

    v4 = v30 + 1;
    swift_endAccess();
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

void sub_25BC2DA64()
{
  v1 = v0;
  v74 = *(v0 + 16);
  v2 = [v74 outputNames];
  v3 = sub_25BCB673C();

  if (!*(v3 + 16))
  {
LABEL_81:

    return;
  }

  v4 = 0;
  v5 = v3 + 32;
  v6 = &off_279972000;
  v75 = v1;
  v71 = v3;
  v66 = v3 + 32;
  v67 = *(v3 + 16);
  while (1)
  {
    if (v4 >= *(v3 + 16))
    {
      goto LABEL_95;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v2 = v4;
    sub_25BCB617C();
    v10 = [v74 v6[489]];
    if ((v10 & 0x8000000000000000) != 0)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      sub_25BCB795C();
      __break(1u);
LABEL_98:
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_25BCB70FC();
      v84 = v86;
      v85 = v87;
      MEMORY[0x25F876C90](0x7079742061746144, 0xEB00000000602065);
      v86 = v2;
      type metadata accessor for SNNDataType(0);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](0xD000000000000029, 0x800000025BCE3890);
      v86 = v84;
      v87 = v85;
      v88 = 9;
      sub_25BCB617C();
      sub_25BA97890();
    }

    v11 = 0;
    v68 = ++v2;
    v69 = v10;
    v80 = v9;
    v81 = v8;
LABEL_6:
    if (v11 != v10)
    {
      break;
    }

    v4 = v68;
    v3 = v71;
    v5 = v66;
    v6 = &off_279972000;
    if (v68 == v67)
    {
      goto LABEL_81;
    }
  }

  if (__OFADD__(v11, 1))
  {
    goto LABEL_94;
  }

  v70 = v11 + 1;
  v12 = [v74 operationAtIndex_];
  if (!v12)
  {

    sub_25BC2E4E0();
    swift_allocError();
    *v65 = xmmword_25BCBC6A0;
    *(v65 + 16) = 4;
    swift_willThrow();
    return;
  }

  v72 = v12;
  v2 = [v12 outputs];
  sub_25BB2BA50(0, &qword_28154BE08, off_279970C18);
  v13 = sub_25BCB673C();

  v14 = 0;
  v78 = v13 & 0xC000000000000001;
  v79 = sub_25BA9BEA0(v13);
  v73 = v13;
  v76 = v13 + 32;
  v77 = v13 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14 == v79)
    {

      v10 = v69;
      v11 = v70;
      goto LABEL_6;
    }

    if (v78)
    {
      v15 = MEMORY[0x25F8779B0](v14, v73);
    }

    else
    {
      if (v14 >= *(v77 + 16))
      {
        goto LABEL_87;
      }

      v15 = *(v76 + 8 * v14);
    }

    v2 = v15;
    v16 = __OFADD__(v14++, 1);
    if (v16)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {

      goto LABEL_84;
    }

    v18 = v17;
    v19 = v2;
    v83 = v18;
    v20 = sub_25BC2E534(v18);
    if (!v21)
    {
      break;
    }

    v22 = v20;
    v23 = v21;
    v89 = v19;

    if (v22 == v9 && v23 == v8)
    {

      v25 = v89;
    }

    else
    {
      v2 = sub_25BCB789C();

      v25 = v89;
      if ((v2 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v26 = v83;
    v27 = [v83 dataType];
    if ((v27 - 2) >= 0xB && (v2 = v27) != 0)
    {
      if (v27 != 1)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v28 = [v83 dimensions];
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v29 = sub_25BCB673C();

      if (v29 >> 62)
      {
        v2 = sub_25BCB749C();
      }

      else
      {
        v2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v82 = v14;
      if (v2)
      {
        v86 = MEMORY[0x277D84F90];
        sub_25BAA21EC();
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        v30 = 0;
        v31 = v86;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x25F8779B0](v30, v29);
          }

          else
          {
            v32 = *(v29 + 8 * v30 + 32);
          }

          v33 = v32;
          v34 = [v32 integerValue];

          v86 = v31;
          v35 = *(v31 + 16);
          if (v35 >= *(v31 + 24) >> 1)
          {
            sub_25BAA21EC();
            v31 = v86;
          }

          ++v30;
          *(v31 + 16) = v35 + 1;
          *(v31 + 8 * v35 + 32) = v34;
        }

        while (v2 != v30);

        v9 = v80;
        v8 = v81;
        v26 = v83;
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      sub_25BC9B304([v26 dataType], &v86);
      v36 = &protocol witness table for Int8;
      switch(v86)
      {
        case 1:
          v36 = &protocol witness table for Int16;
          break;
        case 2:
          v36 = &protocol witness table for Int32;
          break;
        case 3:
          v36 = &protocol witness table for Int;
          break;
        case 4:
          v36 = &protocol witness table for UInt8;
          break;
        case 5:
          v36 = &protocol witness table for UInt16;
          break;
        case 6:
          v36 = &protocol witness table for UInt32;
          break;
        case 7:
          v36 = &protocol witness table for UInt64;
          break;
        case 8:
          v36 = &protocol witness table for Float16;
          break;
        case 9:
          v36 = sub_25BB18AFC();
          break;
        case 10:
          v36 = &protocol witness table for Float;
          break;
        case 11:
          v36 = &protocol witness table for Double;
          break;
        case 12:
          v36 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      (v36[4])(&v84);
      v37 = v84;
      swift_beginAccess();
      v38 = *(v75 + 48);
      if (*(v38 + 16) && (v39 = sub_25BA9266C(v9, v8), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 8 * v39);
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v2 = *(v75 + 40);
        if (v41 >= *(v2 + 16))
        {
          goto LABEL_92;
        }

        v42 = *(v75 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + 40) = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF149C(v2);
          v2 = v63;
          *(v75 + 40) = v63;
        }

        if (v41 >= *(v2 + 16))
        {
          goto LABEL_93;
        }

        v44 = v2 + 16 * v41;
        v45 = *(v44 + 32);
        *(v44 + 32) = v31;
        *(v44 + 40) = v37;
        sub_25BCB617C();

        *(v75 + 40) = v2;
        v25 = v89;
      }

      else
      {
        v2 = *(v75 + 40);
        sub_25BCB617C();
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + 40) = v2;
        if ((v46 & 1) == 0)
        {
          v60 = *(v2 + 16);
          sub_25BAC944C();
          v2 = v61;
          *(v75 + 40) = v61;
        }

        v47 = *(v2 + 16);
        if (v47 >= *(v2 + 24) >> 1)
        {
          sub_25BAC944C();
          v2 = v62;
        }

        *(v2 + 16) = v47 + 1;
        v48 = v2 + 16 * v47;
        *(v48 + 32) = v31;
        *(v48 + 40) = v37;
        *(v75 + 40) = v2;
        v49 = *(v75 + 48);
        swift_isUniquelyReferenced_nonNull_native();
        v84 = *(v75 + 48);
        v50 = v84;
        *(v75 + 48) = 0x8000000000000000;
        v51 = sub_25BA9266C(v9, v8);
        if (__OFADD__(v50[2], (v52 & 1) == 0))
        {
          goto LABEL_88;
        }

        v2 = v51;
        v53 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
        if (sub_25BCB745C())
        {
          v54 = sub_25BA9266C(v80, v81);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_97;
          }

          v2 = v54;
        }

        v25 = v89;
        v56 = v84;
        if (v53)
        {
          *(v84[7] + 8 * v2) = v47;
          v9 = v80;
          v8 = v81;
        }

        else
        {
          v84[(v2 >> 6) + 8] |= 1 << v2;
          v57 = (v56[6] + 16 * v2);
          v9 = v80;
          v8 = v81;
          *v57 = v80;
          v57[1] = v81;
          *(v56[7] + 8 * v2) = v47;
          v58 = v56[2];
          v16 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v16)
          {
            goto LABEL_90;
          }

          v56[2] = v59;
          sub_25BCB617C();
        }

        *(v75 + 48) = v56;
      }

      swift_endAccess();

      v14 = v82;
    }

LABEL_76:
  }

LABEL_84:

  sub_25BC2E4E0();
  swift_allocError();
  *v64 = xmmword_25BCBCE30;
  *(v64 + 16) = 4;
  swift_willThrow();
}

uint64_t sub_25BC2E404()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v0;
}

uint64_t sub_25BC2E44C()
{
  sub_25BC2E404();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC2E4A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25BC2E4E0()
{
  result = qword_27FBB6840;
  if (!qword_27FBB6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6840);
  }

  return result;
}

uint64_t sub_25BC2E534(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25BCB636C();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks15MILParsingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_25BC2E5B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}