uint64_t storeEnumTagSinglePayload for MFReaderPlaybackSpeed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257C3EE0C()
{
  result = qword_27F8F6378;
  if (!qword_27F8F6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6378);
  }

  return result;
}

BOOL sub_257C3EF48(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA0000000000726FLL;
    v9 = 0x746361466D6F6F7ALL;
    switch(*v4)
    {
      case 1:
        v9 = 0xD000000000000011;
        v8 = 0x8000000257EF7780;
        break;
      case 2:
        v9 = 0x4379616C70736964;
        v8 = 0xEF74736172746E6FLL;
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x737265746C6966;
        break;
      case 4:
        v8 = 0xEA00000000007468;
        v9 = 0x67696C6873616C66;
        break;
      case 5:
        v9 = 0x6544656C706F6570;
        v8 = 0xEF6E6F6974636574;
        break;
      case 6:
        v9 = 0x636F4C7375636F66;
        v8 = 0xE90000000000006BLL;
        break;
      case 7:
        v9 = 0x79546172656D6163;
        v8 = 0xEA00000000006570;
        break;
      case 8:
        v9 = 0x4D65727574706163;
        v8 = 0xEB0000000065646FLL;
        break;
      case 9:
        v9 = 0x6F69746365746564;
        v8 = 0xED000065646F4D6ELL;
        break;
      case 0xA:
        v10 = 1919905636;
        goto LABEL_20;
      case 0xB:
        v9 = 0xD000000000000013;
        v8 = 0x8000000257EF74D0;
        break;
      case 0xC:
        v9 = 0x7061436567616D69;
        v8 = 0xEC0000006E6F6974;
        break;
      case 0xD:
        v8 = 0xEA00000000006B61;
        v9 = 0x657053746E696F70;
        break;
      case 0xE:
        v10 = 1954047348;
LABEL_20:
        v9 = v10 | 0x6574654400000000;
        v8 = 0xED00006E6F697463;
        break;
      case 0xF:
        v8 = 0xEA00000000007365;
        v9 = 0x6974697669746361;
        break;
      default:
        break;
    }

    v11 = 0xEA0000000000726FLL;
    v12 = 0x746361466D6F6F7ALL;
    switch(a1)
    {
      case 1:
        v11 = 0x8000000257EF7780;
        if (v9 == 0xD000000000000011)
        {
          goto LABEL_51;
        }

        goto LABEL_2;
      case 2:
        v11 = 0xEF74736172746E6FLL;
        if (v9 != 0x4379616C70736964)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 3:
        v11 = 0xE700000000000000;
        if (v9 != 0x737265746C6966)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 4:
        v11 = 0xEA00000000007468;
        if (v9 != 0x67696C6873616C66)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 5:
        v11 = 0xEF6E6F6974636574;
        if (v9 != 0x6544656C706F6570)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 6:
        v11 = 0xE90000000000006BLL;
        if (v9 != 0x636F4C7375636F66)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 7:
        v11 = 0xEA00000000006570;
        if (v9 != 0x79546172656D6163)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 8:
        v11 = 0xEB0000000065646FLL;
        if (v9 != 0x4D65727574706163)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 9:
        v13 = 0x6F69746365746564;
        v14 = 0x65646F4D6ELL;
        goto LABEL_33;
      case 10:
        v12 = 0x65746544726F6F64;
        v11 = 0xED00006E6F697463;
        goto LABEL_50;
      case 11:
        v11 = 0x8000000257EF74D0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 12:
        v11 = 0xEC0000006E6F6974;
        if (v9 != 0x7061436567616D69)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 13:
        v11 = 0xEA00000000006B61;
        if (v9 != 0x657053746E696F70)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 14:
        v13 = 0x6574654474786574;
        v14 = 0x6E6F697463;
LABEL_33:
        v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v13)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 15:
        v11 = 0xEA00000000007365;
        if (v9 != 0x6974697669746361)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v9 != v12)
        {
          goto LABEL_2;
        }

LABEL_51:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_257ED0640();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_257C3F438(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x746C7561666564;
    switch(*v4)
    {
      case 1:
        v9 = 0x6544656C706F6570;
        v8 = 0xEF6E6F6974636574;
        break;
      case 2:
        v11 = 1919905636;
        goto LABEL_21;
      case 3:
        v9 = 0xD000000000000013;
        v8 = 0x8000000257EF74D0;
        break;
      case 4:
        v9 = 0x7061436567616D69;
        v8 = 0xEC0000006E6F6974;
        break;
      case 5:
        v9 = 0x646E41746E696F70;
        v8 = 0xED00006B61657053;
        break;
      case 6:
        v11 = 1954047348;
LABEL_21:
        v9 = v11 | 0x6574654400000000;
        v8 = 0xED00006E6F697463;
        break;
      case 7:
        v9 = 0x746E656D75636F64;
        v10 = 1835102790;
        goto LABEL_17;
      case 8:
        v9 = 0xD000000000000012;
        v8 = 0x8000000257EF7520;
        break;
      case 9:
        v9 = 0x7061546B636162;
        break;
      case 0xA:
        v9 = 0x65636E756F6E6E61;
        v8 = 0xEC000000746E656DLL;
        break;
      case 0xB:
        v9 = 0x6F72506C65646F6DLL;
        v10 = 1936942435;
LABEL_17:
        v8 = v10 | 0xEF676E6900000000;
        break;
      case 0xC:
        v9 = 0x6E616353706F6F6CLL;
        v8 = 0xEC000000676E696ELL;
        break;
      case 0xD:
        v9 = 0x65636E6164697567;
        v8 = 0xEF73736563637553;
        break;
      case 0xE:
        v9 = 0x65636E6164697567;
        v8 = 0xEF6572756C696146;
        break;
      case 0xF:
        v9 = 0x75476E4F6B636F6CLL;
        v8 = 0xEE0065636E616469;
        break;
      case 0x10:
        v9 = 0x4766664F6B636F6CLL;
        v8 = 0xEF65636E61646975;
        break;
      default:
        break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x746C7561666564;
    switch(a1)
    {
      case 1:
        v12 = 0xEF6E6F6974636574;
        if (v9 == 0x6544656C706F6570)
        {
          goto LABEL_55;
        }

        goto LABEL_2;
      case 2:
        v20 = 1919905636;
        goto LABEL_50;
      case 3:
        v12 = 0x8000000257EF74D0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 4:
        v18 = 0x7061436567616D69;
        v19 = 1852795252;
        goto LABEL_34;
      case 5:
        v21 = 0x646E41746E696F70;
        v22 = 0x6B61657053;
        goto LABEL_51;
      case 6:
        v20 = 1954047348;
LABEL_50:
        v21 = v20 | 0x6574654400000000;
        v22 = 0x6E6F697463;
LABEL_51:
        v12 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v21)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 7:
        v16 = 0x746E656D75636F64;
        v17 = 1835102790;
        goto LABEL_44;
      case 8:
        v12 = 0x8000000257EF7520;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 9:
        if (v9 != 0x7061546B636162)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 10:
        v13 = 0x65636E756F6E6E61;
        v12 = 0xEC000000746E656DLL;
        goto LABEL_54;
      case 11:
        v16 = 0x6F72506C65646F6DLL;
        v17 = 1936942435;
LABEL_44:
        v12 = v17 | 0xEF676E6900000000;
        if (v9 != v16)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 12:
        v18 = 0x6E616353706F6F6CLL;
        v19 = 1735289198;
LABEL_34:
        v12 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v18)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 13:
        v12 = 0xEF73736563637553;
        if (v9 != 0x65636E6164697567)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 14:
        v14 = 0x65636E6164697567;
        v15 = 0x72756C696146;
        goto LABEL_29;
      case 15:
        v12 = 0xEE0065636E616469;
        if (v9 != 0x75476E4F6B636F6CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 16:
        v14 = 0x4766664F6B636F6CLL;
        v15 = 0x636E61646975;
LABEL_29:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
        if (v9 != v14)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      default:
LABEL_54:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_55:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_257ED0640();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

id sub_257C3F96C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  sub_257BF2844(0, v1, 0);
  v2 = v31;
  v3 = a1 + 56;
  result = sub_257ED0190();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v25 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(v6 + 36);
    v11 = *(v6 + 48) + 96 * v5;
    v29 = *(v11 + 32);
    v30 = *(v11 + 16);
    v27 = *(v11 + 64);
    v28 = *(v11 + 48);
    v12 = *(v31 + 16);
    v13 = *(v31 + 24);
    result = *v11;
    if (v12 >= v13 >> 1)
    {
      v22 = v13 > 1;
      v23 = result;
      sub_257BF2844(v22, v12 + 1, 1);
      result = v23;
    }

    *(v31 + 16) = v12 + 1;
    v14 = v31 + 80 * v12;
    *(v14 + 32) = result;
    *(v14 + 48) = v30;
    *(v14 + 64) = v29;
    *(v14 + 80) = v28;
    *(v14 + 96) = v27;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v10);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 64 + 8 * v10);
      v9 = v25;
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_257C58A64(v5, v26, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_257C58A64(v5, v26, 0);
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

uint64_t sub_257C3FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_257BE401C(a3, v25 - v10, &unk_27F8F5D70);
  v12 = sub_257ECF930();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_257ECC3F0();
  if (v14 == 1)
  {
    sub_257BE4084(v11, &unk_27F8F5D70);
  }

  else
  {
    sub_257ECF920();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_257ECF8B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_257ECF590() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_257ECC3F0();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_257BE4084(a3, &unk_27F8F5D70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257BE4084(a3, &unk_27F8F5D70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_257C3FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_257BE401C(a3, v25 - v10, &unk_27F8F5D70);
  v12 = sub_257ECF930();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_257ECC3F0();
  if (v14 == 1)
  {
    sub_257BE4084(v11, &unk_27F8F5D70);
  }

  else
  {
    sub_257ECF920();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_257ECF8B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_257ECF590() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_257ECC3F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_257BE4084(a3, &unk_27F8F5D70);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257BE4084(a3, &unk_27F8F5D70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_257C401E8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_257ED07B0();
    Control.rawValue.getter();
    sub_257ECF5D0();

    v4 = sub_257ED0800();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA0000000000726FLL;
        v9 = 0x746361466D6F6F7ALL;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0xD000000000000011;
            v8 = 0x8000000257EF7780;
            break;
          case 2:
            v9 = 0x4379616C70736964;
            v8 = 0xEF74736172746E6FLL;
            break;
          case 3:
            v8 = 0xE700000000000000;
            v9 = 0x737265746C6966;
            break;
          case 4:
            v8 = 0xEA00000000007468;
            v9 = 0x67696C6873616C66;
            break;
          case 5:
            v9 = 0x6544656C706F6570;
            v8 = 0xEF6E6F6974636574;
            break;
          case 6:
            v9 = 0x636F4C7375636F66;
            v8 = 0xE90000000000006BLL;
            break;
          case 7:
            v9 = 0x79546172656D6163;
            v8 = 0xEA00000000006570;
            break;
          case 8:
            v9 = 0x4D65727574706163;
            v8 = 0xEB0000000065646FLL;
            break;
          case 9:
            v9 = 0x6F69746365746564;
            v8 = 0xED000065646F4D6ELL;
            break;
          case 0xA:
            v10 = 1919905636;
            goto LABEL_19;
          case 0xB:
            v9 = 0xD000000000000013;
            v8 = 0x8000000257EF74D0;
            break;
          case 0xC:
            v9 = 0x7061436567616D69;
            v8 = 0xEC0000006E6F6974;
            break;
          case 0xD:
            v8 = 0xEA00000000006B61;
            v9 = 0x657053746E696F70;
            break;
          case 0xE:
            v10 = 1954047348;
LABEL_19:
            v9 = v10 | 0x6574654400000000;
            v8 = 0xED00006E6F697463;
            break;
          case 0xF:
            v8 = 0xEA00000000007365;
            v9 = 0x6974697669746361;
            break;
          default:
            break;
        }

        v11 = 0xEA0000000000726FLL;
        v12 = 0x746361466D6F6F7ALL;
        switch(a1)
        {
          case 1:
            v11 = 0x8000000257EF7780;
            if (v9 == 0xD000000000000011)
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          case 2:
            v11 = 0xEF74736172746E6FLL;
            if (v9 != 0x4379616C70736964)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 3:
            v11 = 0xE700000000000000;
            if (v9 != 0x737265746C6966)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 4:
            v11 = 0xEA00000000007468;
            if (v9 != 0x67696C6873616C66)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 5:
            v11 = 0xEF6E6F6974636574;
            if (v9 != 0x6544656C706F6570)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 6:
            v11 = 0xE90000000000006BLL;
            if (v9 != 0x636F4C7375636F66)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 7:
            v11 = 0xEA00000000006570;
            if (v9 != 0x79546172656D6163)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 8:
            v11 = 0xEB0000000065646FLL;
            if (v9 != 0x4D65727574706163)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 9:
            v13 = 0x6F69746365746564;
            v14 = 0x65646F4D6ELL;
            goto LABEL_32;
          case 10:
            v12 = 0x65746544726F6F64;
            v11 = 0xED00006E6F697463;
            goto LABEL_49;
          case 11:
            v11 = 0x8000000257EF74D0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 12:
            v11 = 0xEC0000006E6F6974;
            if (v9 != 0x7061436567616D69)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 13:
            v11 = 0xEA00000000006B61;
            if (v9 != 0x657053746E696F70)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 14:
            v13 = 0x6574654474786574;
            v14 = 0x6E6F697463;
LABEL_32:
            v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v13)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 15:
            v11 = 0xEA00000000007365;
            if (v9 != 0x6974697669746361)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
LABEL_49:
            if (v9 != v12)
            {
              goto LABEL_51;
            }

LABEL_50:
            if (v8 == v11)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_51:
            v15 = sub_257ED0640();

            if (v15)
            {
              return v15 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_257C4075C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_257ED07B0();
  sub_257ECF5D0();
  v6 = sub_257ED0800();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_257ED0640() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_257C40854(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_257ED07B0();
    MEMORY[0x259C732E0](a1 & 1);
    v5 = sub_257ED0800();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL sub_257C4091C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v3);
  v4 = sub_257ED0800();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_257C409E8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_257ED0240();
  }

  else if (*(a2 + 16) && (sub_257BD2C2C(0, &qword_281543DC0), v5 = sub_257ECFF40(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_257ECFF50();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_257C40B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_257BE401C(a3, v25 - v10, &unk_27F8F5D70);
  v12 = sub_257ECF930();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_257ECC3F0();
  if (v14 == 1)
  {
    sub_257BE4084(v11, &unk_27F8F5D70);
  }

  else
  {
    sub_257ECF920();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_257ECF8B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_257ECF590() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_257ECC3F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_257C40DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_257BE401C(a3, v25 - v10, &unk_27F8F5D70);
  v12 = sub_257ECF930();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_257ECC3F0();
  if (v14 == 1)
  {
    sub_257BE4084(v11, &unk_27F8F5D70);
  }

  else
  {
    sub_257ECF920();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_257ECF8B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_257ECF590() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_257ECC3F0();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_257C41094()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257C4111C()
{
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t sub_257C411A0()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257C41224()
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  return sub_257ECCC40();
}

void sub_257C4128C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_257C412EC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257C41340(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MAGObjectUnderstandingService.__allocating_init(arService:eventHandler:pulseFeedbackProcessor:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_257C562A8(a1, a2, a3);

  return v8;
}

id MAGObjectUnderstandingService.init(arService:eventHandler:pulseFeedbackProcessor:)(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_257C562A8(a1, a2, a3);

  return v5;
}

uint64_t sub_257C414A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_257ECF900();
  *(v4 + 48) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C41540, v6, v5);
}

uint64_t sub_257C41540()
{
  v1 = *(v0 + 40);

  v2 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService] + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_eventHandler);
  sub_257ECC3F0();
  v3 = v1;
  v4 = [v3 description];
  v5 = sub_257ECF500();
  v7 = v6;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_257EDCE58;
  *(v9 + 24) = v8;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_257EC7760(&unk_257EDCE60, v9, v5, v7, isUniquelyReferenced_nonNull_native);

  *(v2 + 16) = v13;
  swift_endAccess();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_257C416F0(void *a1)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v74 - v4;
  v6 = sub_257ECD990();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECDA30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4A0();
  v14 = sub_257ECDA20();
  v15 = sub_257ECFBD0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v74 = v2;
    v17 = v9;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_257BAC000, v14, v15, "Starting object understanding service", v16, 2u);
    v22 = v21;
    v5 = v20;
    v6 = v19;
    v7 = v18;
    v9 = v17;
    v2 = v74;
    MEMORY[0x259C74820](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v23 = sub_257ECD9C0();
  __swift_project_value_buffer(v23, qword_27F8F5D90);
  sub_257ECD980();
  v24 = sub_257ECD9A0();
  v25 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v24, v25, v27, "StartObjUndrerstandService", "", v26, 2u);
    MEMORY[0x259C74820](v26, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v28 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  swift_beginAccess();
  v29 = v28[1];
  v30 = v28[2];
  v77[0] = *v28;
  v77[1] = v29;
  v77[2] = v30;
  v31 = qword_2815447E0;

  if (v31 != -1)
  {
    v32 = swift_once();
  }

  MEMORY[0x28223BE20](v32);
  *(&v74 - 2) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
  sub_257ECFD50();

  v33 = v76;
  v34 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor);
  v35 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  v36 = *(v33 + 16);
  v37 = (v33 + 32);
  v38 = (v33 + 32);
  do
  {
    v39 = v36;
    v40 = v36-- != 0;
    if (!v40)
    {
      break;
    }

    v41 = *v38++;
  }

  while (v41 != 3);
  [*(v34 + v35) setUseHapticFeedback_];
  v42 = *(v34 + v35);
  v43 = *(v33 + 16);
  do
  {
    v44 = v43;
    v40 = v43-- != 0;
    if (!v40)
    {
      break;
    }

    v45 = *v37++;
  }

  while (v45 != 2);
  v46 = v44 != 0;
  v47 = v42;

  [v47 setUseSoundFeedback_];

  sub_257C42454();
  v48 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene;
  v49 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  v50 = v75;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene) = v75;
  v51 = v50;

  v52 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer;
  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer) removeFromParentNode];
  v53 = objc_allocWithZone(type metadata accessor for ObjectPointer());
  v54 = ObjectPointer.init(length:)(3.0);
  v55 = *(v2 + v52);
  *(v2 + v52) = v54;
  v56 = v54;

  v57 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v58 = *(v2 + v57);
  [v58 addChildNode_];

  v59 = *(v2 + v48);
  if (v59)
  {
    v60 = [v59 rootNode];
    [v60 addChildNode_];

    v61 = *(v2 + v48);
    if (v61)
    {
      v62 = [v61 rootNode];
      [v62 addChildNode_];

      v63 = *(v2 + v48);
      if (v63)
      {
        v64 = [v63 rootNode];
        [v64 addChildNode_];
      }
    }
  }

  v65 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession;
  if (!*(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession))
  {
    v66 = [objc_allocWithZone(MEMORY[0x277D36D08]) init_];
    v67 = *(v2 + v65);
    *(v2 + v65) = v66;
    v68 = v66;

    if (v68)
    {
      [v68 setDelegate_];
    }
  }

  v69 = sub_257ECF930();
  (*(*(v69 - 8) + 56))(v5, 1, 1, v69);
  v70 = *(v2 + v65);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v70;
  v72 = v70;
  sub_257C40B00(0, 0, v5, &unk_257EDCB88, v71);

  return sub_257BE4084(v5, &unk_27F8F5D70);
}

uint64_t sub_257C41E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_257C41E60, 0, 0);
}

uint64_t sub_257C41E60()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D36CF8]) init];
    [v1 runWithConfiguration_];
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C41F04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_257ECD990();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4A0();
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBD0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v8;
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_257BAC000, v13, v14, "Stopping object understanding service", v15, 2u);
    v20 = v19;
    v4 = v18;
    v5 = v17;
    v6 = v16;
    v8 = v37;
    MEMORY[0x259C74820](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v21 = sub_257ECD9C0();
  __swift_project_value_buffer(v21, qword_27F8F5D90);
  sub_257ECD980();
  v22 = sub_257ECD9A0();
  v23 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v22, v23, v25, "StopObjUndrerstandService", "", v24, 2u);
    MEMORY[0x259C74820](v24, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor];
  v27 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  [*(v26 + v27) setUseHapticFeedback_];
  [*(v26 + v27) setUseSoundFeedback_];
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode] removeFromParentNode];
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode] removeFromParentNode];
  v28 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  [*&v1[v28] removeFromParentNode];
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pointerHitTestDebugNode] removeFromParentNode];
  v29 = sub_257ECF930();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  v30 = *&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession];
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v30;
  v32[5] = sub_257C566E0;
  v32[6] = v31;
  v33 = v30;
  v34 = v1;
  sub_257C40DD4(0, 0, v4, &unk_257EDCB98, v32);

  return sub_257BE4084(v4, &unk_27F8F5D70);
}

uint64_t sub_257C423BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_257C423E0, 0, 0);
}

uint64_t sub_257C423E0()
{
  (*(v0 + 24))([*(v0 + 16) stop]);
  v1 = *(v0 + 8);

  return v1();
}

void sub_257C42454()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache) = MEMORY[0x277D84F90];

  v2 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
  swift_beginAccess();
  v3 = MEMORY[0x277D84F98];
  *(v0 + v2) = MEMORY[0x277D84F98];

  v4 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode) = v4;

  v6 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode) = v6;

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups) = v1;

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups) = v3;

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
  v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 32);
  v12[3] = v9;
  v12[4] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 64);
  v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
  v12[1] = v10;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  sub_257BE4084(v12, &qword_27F8F9C90);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetOccupancy) = 0;
  v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession) = 0;
}

uint64_t sub_257C425C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = *&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession];
  if (v6)
  {
    [v6 updateWithFrame_];
  }

  v7 = sub_257ECF930();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = [a1 camera];
  [v8 transform];
  v22 = v10;
  v23 = v9;
  v20 = v12;
  v21 = v11;

  sub_257ECF900();
  v13 = v1;
  v14 = sub_257ECF8F0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  v17 = v22;
  *(v15 + 48) = v23;
  *(v15 + 64) = v17;
  v18 = v20;
  *(v15 + 80) = v21;
  *(v15 + 96) = v18;
  sub_257C3FBD4(0, 0, v5, &unk_257EDBE30, v15);
}

uint64_t sub_257C42754(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8[176] = a4;
  v8[175] = a3;
  v8[174] = a2;
  v8[173] = a1;
  v8[191].n128_u64[0] = a8;
  v9 = sub_257ECF120();
  v8[191].n128_u64[1] = v9;
  v8[192].n128_u64[0] = *(v9 - 8);
  v8[192].n128_u64[1] = swift_task_alloc();
  v10 = sub_257ECF190();
  v8[193].n128_u64[0] = v10;
  v8[193].n128_u64[1] = *(v10 - 8);
  v8[194].n128_u64[0] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v8[194].n128_u64[1] = swift_task_alloc();
  v11 = sub_257ECDA30();
  v8[195].n128_u64[0] = v11;
  v8[195].n128_u64[1] = *(v11 - 8);
  v8[196].n128_u64[0] = swift_task_alloc();
  v8[196].n128_u64[1] = swift_task_alloc();
  v8[197].n128_u64[0] = swift_task_alloc();
  v8[197].n128_u64[1] = sub_257ECF900();
  v8[198].n128_u64[0] = sub_257ECF8F0();
  v13 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C42964, v13, v12);
}

uint64_t sub_257C42964()
{
  v251 = v0;
  v2 = v0 + 1232;
  v210 = (v0 + 1520);
  v3 = *(v0 + 3056);
  v4 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  v229 = *(v0 + 2784);
  v233 = *(v0 + 2768);
  v224 = *(v0 + 2816);
  v226 = *(v0 + 2800);
  swift_beginAccess();
  [*(v3 + v4) setSimdWorldTransform_];
  [*(v3 + v4) simdPosition];
  v234 = v5;
  v6 = sub_257C48C44();
  v223 = (v0 + 1232);
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_23:
    v9 = sub_257ED0210();
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v1 = v0 + 848;
      v230 = MEMORY[0x277D84F90];
      do
      {
        v11 = v10;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x259C72E20](v11, v7);
          }

          else
          {
            if (v11 >= *(v8 + 16))
            {
              goto LABEL_22;
            }

            v12 = *(v7 + 8 * v11 + 32);
          }

          v13 = v12;
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          sub_257C48E20(v12, &v235, v234);

          if (*(&v235 + 1) <= 0xFFFFFFFEFFFFFFFFLL)
          {
            break;
          }

          v14 = v238;
          *(v0 + 880) = v237;
          *(v0 + 896) = v14;
          *(v0 + 912) = v239[0];
          *(v0 + 924) = *(v239 + 12);
          v15 = v236;
          *v1 = v235;
          *(v0 + 864) = v15;
          sub_257BE4084(v0 + 848, &qword_27F8F6658);
          ++v11;
          if (v10 == v9)
          {
            goto LABEL_25;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v230;
        }

        else
        {
          v16 = sub_257BFD6B8(0, *(v230 + 2) + 1, 1, v230);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = sub_257BFD6B8((v17 > 1), v18 + 1, 1, v16);
        }

        v248 = v237;
        v249 = v238;
        v250[0] = v239[0];
        *(v250 + 12) = *(v239 + 12);
        v19 = v235;
        v246 = v235;
        v247 = v236;
        *(v16 + 2) = v18 + 1;
        v230 = v16;
        v20 = &v16[96 * v18];
        *(v20 + 3) = v247;
        v21 = v248;
        v22 = v249;
        v23 = v250[0];
        *(v20 + 108) = *(v250 + 12);
        *(v20 + 5) = v22;
        *(v20 + 6) = v23;
        *(v20 + 4) = v21;
        *(v20 + 2) = v19;
      }

      while (v10 != v9);
      goto LABEL_25;
    }
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v230 = MEMORY[0x277D84F90];
LABEL_25:

  v24 = v230;
  i = *(v230 + 2);
  v26 = MEMORY[0x277D84F90];
  if (i)
  {
    v27 = 0;
    v28 = v0 + 944;
    v1 = (v230 + 32);
    v29 = 96;
    do
    {
      v30 = (v1 + 96 * v27);
      v31 = v27;
      while (1)
      {
        if (v31 >= *(v24 + 2))
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v32 = v30[1];
        *v28 = *v30;
        *(v0 + 960) = v32;
        v33 = v30[2];
        v34 = v30[3];
        v35 = v30[4];
        *(v0 + 1020) = *(v30 + 76);
        *(v0 + 992) = v34;
        *(v0 + 1008) = v35;
        *(v0 + 976) = v33;
        v27 = v31 + 1;
        if ((*(v0 + 952) & 0x8000000000000000) == 0 || *(*v28 + 16))
        {
          break;
        }

        v30 += 6;
        ++v31;
        if (i == v27)
        {
          goto LABEL_38;
        }
      }

      sub_257C58DDC(v0 + 944, v0 + 1040);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v246 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_257BF2864(0, *(v26 + 16) + 1, 1);
        v26 = v246;
      }

      v7 = *(v26 + 16);
      v37 = *(v26 + 24);
      v38 = v26;
      v24 = v230;
      if (v7 >= v37 >> 1)
      {
        sub_257BF2864((v37 > 1), v7 + 1, 1);
        v24 = v230;
        v38 = v246;
      }

      *(v38 + 16) = v7 + 1;
      v39 = (v38 + 96 * v7);
      v40 = *(v0 + 960);
      v39[2] = *v28;
      v39[3] = v40;
      v41 = *(v0 + 976);
      v42 = *(v0 + 992);
      v43 = *(v0 + 1008);
      *(v39 + 108) = *(v0 + 1020);
      v39[5] = v42;
      v39[6] = v43;
      v39[4] = v41;
      v26 = v38;
    }

    while (i - 1 != v31);
  }

LABEL_38:

  v29 = *(v26 + 16);
  if (v29)
  {
    v44 = *(v26 + 48);
    *(v0 + 1136) = *(v26 + 32);
    *(v0 + 1152) = v44;
    v45 = *(v26 + 64);
    v46 = *(v26 + 80);
    v47 = *(v26 + 96);
    *(v0 + 1212) = *(v26 + 108);
    *(v0 + 1184) = v46;
    *(v0 + 1200) = v47;
    *(v0 + 1168) = v45;
    sub_257C58DDC(v0 + 1136, v0 + 752);
    v48 = *(v0 + 1184);
    *(v0 + 208) = *(v0 + 1168);
    *(v0 + 224) = v48;
    *(v0 + 240) = *(v0 + 1200);
    *(v0 + 252) = *(v0 + 1212);
    v49 = *(v0 + 1152);
    *(v0 + 176) = *(v0 + 1136);
    *(v0 + 192) = v49;
    if (v29 != 1)
    {
      v83 = (v0 + 656);
      v84 = (v26 + 128);
      for (i = 1; i != v29; ++i)
      {
        if (i >= *(v26 + 16))
        {
          goto LABEL_141;
        }

        v85 = v84[1];
        *v83 = *v84;
        *(v0 + 672) = v85;
        v86 = v84[2];
        v87 = v84[3];
        v88 = v84[4];
        *(v0 + 732) = *(v84 + 76);
        *(v0 + 704) = v87;
        *(v0 + 720) = v88;
        *(v0 + 688) = v86;
        if (*(v0 + 668) >= 0)
        {
          v89 = (v0 + 744);
        }

        else
        {
          v89 = (v0 + 664);
        }

        v90 = *v89;
        if (*(v0 + 188) >= 0)
        {
          v91 = (v0 + 264);
        }

        else
        {
          v91 = (v0 + 184);
        }

        if (v90 < *v91)
        {
          sub_257C58DDC(v0 + 656, v0 + 560);
          sub_257C58E38(v0 + 176);
          v92 = *(v0 + 704);
          *(v0 + 208) = *(v0 + 688);
          *(v0 + 224) = v92;
          *(v0 + 240) = *(v0 + 720);
          *(v0 + 252) = *(v0 + 732);
          v93 = *(v0 + 672);
          *(v0 + 176) = *v83;
          *(v0 + 192) = v93;
        }

        v84 += 6;
      }
    }

    v7 = *(v0 + 176);
    v1 = &qword_281544000;
    v230 = v26;
    if ((*(v0 + 184) & 0x8000000000000000) != 0)
    {
      sub_257ECD4A0();
      v94 = sub_257ECDA20();
      v95 = sub_257ECFBD0();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_257BAC000, v94, v95, "Create multi-object contact event", v96, 2u);
        MEMORY[0x259C74820](v96, -1, -1);
      }

      v97 = *(v0 + 3152);
      v98 = *(v0 + 3128);
      v99 = *(v0 + 3120);

      (*(v98 + 8))(v97, v99);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v100 = qword_281548348;
      v101 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
      swift_beginAccess();
      v102 = *(v101 + 8);
      v103 = *(v101 + 16);
      *(v0 + 2976) = *v101;
      *(v0 + 2984) = v102;
      *(v0 + 2992) = v103;
      v104 = qword_2815447E0;

      if (v104 != -1)
      {
        swift_once();
      }

      v1 = qword_2815447E8;
      *(swift_task_alloc() + 16) = v0 + 2976;
      i = 0;
      sub_257ECFD50();

      if (*(v0 + 269))
      {
        v105 = sub_257ECC3F0();
        v106 = sub_257C572E8(v105);

        v107 = 2;
      }

      else
      {
        v115 = sub_257C3F96C(v7);
        v106 = sub_257C56FFC(v115);

        v116 = *(v0 + 224);
        v248 = *(v0 + 208);
        v249 = v116;
        v250[0] = *(v0 + 240);
        *(v250 + 12) = *(v0 + 252);
        v117 = *(v0 + 192);
        v246 = *(v0 + 176);
        v247 = v117;
        v207 = sub_257D81B70();
        v107 = 1;
      }

      LODWORD(v209) = v107;
      v26 = v7 + 56;
      v118 = -1 << *(v7 + 32);
      if (-v118 < 64)
      {
        v119 = ~(-1 << -v118);
      }

      else
      {
        v119 = -1;
      }

      v120 = v119 & *(v7 + 56);
      *&v224 = v100;
      v208.i64[0] = v106;
      if (v120)
      {
        v121 = 0;
        v122 = __clz(__rbit64(v120));
        i = (v120 - 1) & v120;
        v123 = (63 - v118) >> 6;
      }

      else
      {
        v124 = 0;
        v123 = (63 - v118) >> 6;
        do
        {
          if (v123 - 1 == v120)
          {
            goto LABEL_143;
          }

          v121 = v120 + 1;
          v125 = *(v7 + 64 + 8 * v120);
          v124 -= 64;
          ++v120;
        }

        while (!v125);
        i = (v125 - 1) & v125;
        v122 = __clz(__rbit64(v125)) - v124;
      }

      v1 = 96;
      v126 = *(v7 + 48) + 96 * v122;
      v211 = *(v126 + 16);
      v213 = *(v126 + 32);
      v216 = *(v126 + 48);
      v220 = *(v126 + 64);
      v127 = *(v126 + 88);
      v110 = *v126;

      sub_257C58DDC(v0 + 176, v0 + 464);
      if (!i)
      {
        goto LABEL_90;
      }

      do
      {
LABEL_88:
        while (1)
        {
          v128 = __clz(__rbit64(i));
          i &= i - 1;
          v129 = *(v7 + 48) + 96 * (v128 | (v121 << 6));
          v130 = *(v129 + 88);
          if (v130 < v127)
          {
            break;
          }

          if (!i)
          {
            goto LABEL_90;
          }
        }

        v216 = *(v129 + 48);
        v220 = *(v129 + 64);
        v211 = *(v129 + 16);
        v213 = *(v129 + 32);
        v206 = *v129;

        v110 = v206;
        v127 = v130;
      }

      while (i);
      while (1)
      {
LABEL_90:
        v131 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_142;
        }

        if (v131 >= v123)
        {
          break;
        }

        i = *(v26 + 8 * v131);
        ++v121;
        if (i)
        {
          v121 = v131;
          goto LABEL_88;
        }
      }

      *(v0 + 1616) = v106;
      *(v0 + 1624) = v207;
      v7 = MEMORY[0x277D84F90];
      v26 = v230;
      v114 = v216;
      v113 = v220;
      v112 = v211;
      v111 = v213;
      v1 = &qword_281544000;
      v66 = v209;
    }

    else
    {
      v50 = *(v0 + 176);
      v217 = *(v0 + 224);
      v221 = *(v0 + 240);
      v212 = *(v0 + 192);
      v214 = *(v0 + 208);

      v51 = *(v0 + 176);

      sub_257ECD4A0();
      v52 = sub_257ECDA20();
      v53 = sub_257ECFBD0();
      v54 = os_log_type_enabled(v52, v53);
      v7 = MEMORY[0x277D84F90];
      if (v54)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_257BAC000, v52, v53, "Create single object contact event", v55, 2u);
        MEMORY[0x259C74820](v55, -1, -1);
      }

      v56 = *(v0 + 3144);
      v57 = *(v0 + 3128);
      v58 = *(v0 + 3120);

      (*(v57 + 8))(v56, v58);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      *&v224 = qword_281548348;
      v59 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
      swift_beginAccess();
      v60 = *(v59 + 8);
      v61 = *(v59 + 16);
      *(v0 + 3000) = *v59;
      *(v0 + 3008) = v60;
      *(v0 + 3016) = v61;
      v62 = qword_2815447E0;

      if (v62 != -1)
      {
        swift_once();
      }

      v63 = qword_2815447E8;
      *(swift_task_alloc() + 16) = v0 + 3000;
      sub_257ECFD50();

      if (*(v0 + 268))
      {
        v64 = sub_257ECC3F0();
        v65 = sub_257C572E8(v64);

        v66 = 2;
      }

      else
      {
        v108 = *(v0 + 224);
        v248 = *(v0 + 208);
        v249 = v108;
        v250[0] = *(v0 + 240);
        *(v250 + 12) = *(v0 + 252);
        v109 = *(v0 + 192);
        v246 = *(v0 + 176);
        v247 = v109;
        v65 = v50;
        v63 = sub_257D81B70();
        v66 = 0;
      }

      v110 = v50;
      sub_257C58E38(v0 + 176);
      *(v0 + 1616) = v65;
      v112 = v212;
      v111 = v214;
      *(v0 + 1632) = v212;
      *(v0 + 1648) = v214;
      v114 = v217;
      v113 = v221;
      *(v0 + 1664) = v217;
      *(v0 + 1680) = v221;
      *(v0 + 1696) = v63;
    }

    i = v0 + 3024;
    *(v0 + 1704) = v66;
    *&v246 = v110;
    v211 = v112;
    v213 = v111;
    v247 = v112;
    v248 = v111;
    v216 = v114;
    v220 = v113;
    v249 = v114;
    v250[0] = v113;
    v132 = v110;
    sub_257E4FDE8(v234);
    v208 = v133;
    v209 = v132;

    if (qword_281544FE0 != -1)
    {
      goto LABEL_144;
    }

    while (1)
    {
      v134 = v224 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
      swift_beginAccess();
      v135 = *(v134 + 8);
      v136 = *(v134 + 16);
      *(v0 + 3024) = *v134;
      *(v0 + 3032) = v135;
      *(v0 + 3040) = v136;
      v137 = *(v1 + 2016);

      if (v137 != -1)
      {
        swift_once();
      }

      *(swift_task_alloc() + 16) = i;
      sub_257ECFD50();

      if (!*(v0 + 270))
      {
        break;
      }

      v138 = 0;
      i = v0 + 368;
      v1 = v26 + 32;
      *&v245[0] = v7;
      v228 = v29;
      *&v224 = v26 + 32;
      while (v138 < *(v26 + 16))
      {
        v140 = (v1 + 96 * v138);
        v141 = v140[1];
        *i = *v140;
        *(v0 + 384) = v141;
        v142 = v140[2];
        v143 = v140[3];
        v144 = v140[4];
        *(v0 + 444) = *(v140 + 76);
        *(v0 + 416) = v143;
        *(v0 + 432) = v144;
        *(v0 + 400) = v142;
        if ((*(v0 + 376) & 0x8000000000000000) != 0)
        {
          v29 = *i;
          *&v246 = v7;
          v145 = -1 << *(v29 + 32);
          if (-v145 < 64)
          {
            v146 = ~(-1 << -v145);
          }

          else
          {
            v146 = -1;
          }

          v26 = v146 & *(v29 + 56);
          sub_257C58DDC(v0 + 368, v0 + 272);
          v7 = (63 - v145) >> 6;

          v1 = 0;
          if (v26)
          {
            goto LABEL_115;
          }

          while (1)
          {
            v147 = v1 + 1;
            if (__OFADD__(v1, 1))
            {
              break;
            }

            if (v147 >= v7)
            {

              v139 = sub_257C5714C(v246);

              sub_257C58E38(v0 + 368);
              v7 = MEMORY[0x277D84F90];
              v26 = v230;
              v29 = v228;
              v1 = v224;
              goto LABEL_103;
            }

            v26 = *(v29 + 56 + 8 * v147);
            ++v1;
            if (v26)
            {
              v1 = v147;
              do
              {
LABEL_115:
                v26 &= v26 - 1;

                sub_257EB0738(v148);
              }

              while (v26);
              continue;
            }
          }

          __break(1u);
          goto LABEL_139;
        }

        v139 = *(v0 + 448);

LABEL_103:
        ++v138;
        sub_257EB0738(v139);
        if (v138 == v29)
        {

          v149 = sub_257C5714C(*&v245[0]);

          v150 = *(v149 + 16);
          goto LABEL_120;
        }
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      swift_once();
    }

    v151 = *(v0 + 224);
    v248 = *(v0 + 208);
    v249 = v151;
    v250[0] = *(v0 + 240);
    *(v250 + 12) = *(v0 + 252);
    v152 = *(v0 + 192);
    v246 = *(v0 + 176);
    v247 = v152;
    v150 = *(sub_257D81B70() + 16);
LABEL_120:

    v153 = vsub_f32(vzip1_s32(*v234.f32, *&vextq_s8(v234, v234, 8uLL)), vzip1_s32(*v208.i8, *&vextq_s8(v208, v208, 8uLL)));
    v154 = *(v0 + 3056) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject;
    *(v0 + 1808) = *v154;
    v155 = *(v154 + 64);
    v157 = *(v154 + 16);
    v156 = *(v154 + 32);
    *(v0 + 1856) = *(v154 + 48);
    *(v0 + 1872) = v155;
    *(v0 + 1824) = v157;
    *(v0 + 1840) = v156;
    v158 = *(v0 + 1808);
    v159 = sqrtf(vaddv_f32(vmul_f32(v153, v153)));
    v160 = *(v154 + 24);
    v161 = *(v154 + 56);
    v242 = *(v154 + 40);
    v243 = v161;
    v244 = *(v154 + 72);
    v240 = *(v154 + 8);
    v241 = v160;
    v162 = &qword_27F8F6000;
    if (v158)
    {
      *(v0 + 2288) = v158;
      *(v0 + 2296) = *(v154 + 8);
      v163 = *(v154 + 24);
      v164 = *(v154 + 40);
      v165 = *(v154 + 56);
      *(v0 + 2360) = *(v154 + 72);
      *(v0 + 2328) = v164;
      *(v0 + 2344) = v165;
      *(v0 + 2312) = v163;
      v166 = *(v0 + 2336);
      v245[2] = *(v0 + 2320);
      v245[3] = v166;
      v245[4] = *(v0 + 2352);
      v167 = *(v0 + 2304);
      v245[0] = *(v0 + 2288);
      v245[1] = v167;
      if (v209)
      {
        *&v246 = v209;
        v247 = v211;
        v248 = v213;
        v249 = v216;
        v250[0] = v220;
        v232 = v209;
        sub_257BE401C(v0 + 1808, v0 + 2608, &qword_27F8F9C90);
        sub_257BE401C(v0 + 2288, v0 + 2688, &qword_27F8F9C90);
        v168 = _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(v245, &v246);

        *(v0 + 2528) = v158;
        v169 = v243;
        *(v0 + 2568) = v242;
        *(v0 + 2584) = v169;
        *(v0 + 2600) = v244;
        v170 = v241;
        *(v0 + 2536) = v240;
        *(v0 + 2552) = v170;
        sub_257BE4084(v0 + 2528, &qword_27F8F9C90);
        if (v168)
        {
          v162 = &qword_27F8F6000;
LABEL_130:
          v178 = sub_257C44854(v159);

          sub_257C58E38(v0 + 176);
          if ((v178 & 1) == 0 && *(*(v0 + 3056) + v162[137]) == v150)
          {

            sub_257C58D88(v0 + 1616);
            *v223 = 0u;
            *(v0 + 1248) = 0u;
            *(v0 + 1264) = 0u;
            *(v0 + 1280) = 0u;
            *(v0 + 1296) = 0u;
            *(v0 + 1312) = 0;
            goto LABEL_55;
          }

          goto LABEL_133;
        }

        sub_257C58E38(v0 + 176);

        v162 = &qword_27F8F6000;
LABEL_133:
        v179 = *(v0 + 3056);
        *(v179 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) = v159;
        *(v0 + 1968) = *v154;
        v180 = *(v154 + 16);
        v181 = *(v154 + 32);
        v182 = *(v154 + 64);
        *(v0 + 2016) = *(v154 + 48);
        *(v0 + 2032) = v182;
        *(v0 + 1984) = v180;
        *(v0 + 2000) = v181;
        *v154 = v209;
        *(v154 + 16) = v211;
        *(v154 + 32) = v213;
        *(v154 + 48) = v216;
        *(v154 + 64) = v220;
        sub_257BE4084(v0 + 1968, &qword_27F8F9C90);
        *(v179 + v162[137]) = v150;
        v2 = v0 + 1232;
        v225 = *(v0 + 1632);
        v227 = *(v0 + 1616);
        v218 = *(v0 + 1664);
        v222 = *(v0 + 1648);
        v231 = *(v0 + 1680);
        v79 = *(v0 + 1688);
        v80 = *(v0 + 1696);
        v82 = *(v0 + 1704);
        sub_257C58BFC(v0 + 1616, v0 + 1424);
        v183 = *(v0 + 1664);
        v81 = (v0 + 1520);
        *(v0 + 1552) = *(v0 + 1648);
        *(v0 + 1568) = v183;
        *(v0 + 1584) = *(v0 + 1680);
        *(v0 + 1593) = *(v0 + 1689);
        v184 = *(v0 + 1632);
        *v210 = *(v0 + 1616);
        *(v0 + 1536) = v184;
        goto LABEL_134;
      }

      sub_257BE401C(v0 + 1808, v0 + 2368, &qword_27F8F9C90);
      sub_257BE401C(v0 + 2288, v0 + 2448, &qword_27F8F9C90);
      sub_257C58E38(v0 + 176);

      v162 = &qword_27F8F6000;
    }

    else
    {
      if (!v209)
      {
        *(v0 + 2128) = 0;
        *(v0 + 2136) = *(v154 + 8);
        v175 = *(v154 + 24);
        v176 = *(v154 + 40);
        v177 = *(v154 + 56);
        *(v0 + 2200) = *(v154 + 72);
        *(v0 + 2168) = v176;
        *(v0 + 2184) = v177;
        *(v0 + 2152) = v175;
        sub_257BE401C(v0 + 1808, v0 + 2208, &qword_27F8F9C90);
        sub_257BE4084(v0 + 2128, &qword_27F8F9C90);
        goto LABEL_130;
      }

      v171 = v209;
      sub_257BE401C(v0 + 1808, v0 + 1888, &qword_27F8F9C90);
      sub_257C58E38(v0 + 176);
    }

    v172 = v240;
    *(v0 + 40) = v241;
    v173 = v243;
    *(v0 + 56) = v242;
    *(v0 + 72) = v173;
    *(v0 + 16) = v158;
    v174 = v244;
    *(v0 + 24) = v172;
    *(v0 + 88) = v174;
    *(v0 + 96) = v209;
    *(v0 + 112) = v211;
    *(v0 + 128) = v213;
    *(v0 + 144) = v216;
    *(v0 + 160) = v220;
    sub_257BE4084(v0 + 16, &qword_27F8F6660);
    goto LABEL_133;
  }

  v2 = v0 + 1232;
LABEL_50:
  v67 = *(v0 + 3056);

  v68 = (v67 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
  if (!*(v67 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject))
  {
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
LABEL_55:
    *(v0 + 1320) = -1;
    goto LABEL_135;
  }

  v69 = *(v0 + 3056);
  *(v69 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) = 0;
  *(v0 + 2048) = *v68;
  v70 = v68[1];
  v71 = v68[2];
  v72 = v68[4];
  *(v0 + 2096) = v68[3];
  *(v0 + 2112) = v72;
  *(v0 + 2064) = v70;
  *(v0 + 2080) = v71;
  v68[2] = 0u;
  v68[3] = 0u;
  v68[4] = 0u;
  *v68 = 0u;
  v68[1] = 0u;
  sub_257BE4084(v0 + 2048, &qword_27F8F9C90);
  *(v69 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetOccupancy) = 0;
  sub_257ECD4A0();
  v73 = sub_257ECDA20();
  v74 = sub_257ECFBD0();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_257BAC000, v73, v74, "Create empty contact event", v75, 2u);
    MEMORY[0x259C74820](v75, -1, -1);
  }

  v76 = *(v0 + 3136);
  v77 = *(v0 + 3128);
  v78 = *(v0 + 3120);

  (*(v77 + 8))(v76, v78);
  v231 = 0;
  v79 = 0;
  v80 = 0;
  v81 = (v0 + 1520);
  *(v0 + 1600) = 0;
  *(v0 + 1568) = 0u;
  *(v0 + 1584) = 0u;
  *(v0 + 1536) = 0u;
  *(v0 + 1552) = 0u;
  v82 = 3;
  v225 = 0u;
  v227 = 0u;
  *v210 = 0u;
  v218 = 0u;
  v222 = 0u;
  *(v0 + 1608) = 3;
LABEL_134:
  v185 = *(v0 + 3112);
  v186 = *(v0 + 3056);
  v187 = v81[3];
  *(v0 + 1360) = v81[2];
  *(v0 + 1376) = v187;
  *(v0 + 1392) = v81[4];
  *(v0 + 1401) = *(v81 + 73);
  v188 = v81[1];
  *(v0 + 1328) = *v81;
  *(v0 + 1344) = v188;
  v189 = sub_257ECF930();
  (*(*(v189 - 8) + 56))(v185, 1, 1, v189);
  v190 = v186;
  sub_257C58BFC(v81, v0 + 1712);
  v191 = sub_257ECF8F0();
  v192 = swift_allocObject();
  v193 = MEMORY[0x277D85700];
  *(v192 + 16) = v191;
  *(v192 + 24) = v193;
  *(v192 + 32) = v190;
  v194 = *(v0 + 1376);
  *(v192 + 80) = *(v0 + 1360);
  *(v192 + 96) = v194;
  *(v192 + 112) = *(v0 + 1392);
  *(v192 + 121) = *(v0 + 1401);
  v195 = *(v0 + 1344);
  *(v192 + 48) = *(v0 + 1328);
  *(v192 + 64) = v195;
  sub_257E81524(0, 0, v185, &unk_257EDCDF8, v192);
  sub_257C58D88(v81);

  *v2 = v227;
  *(v2 + 16) = v225;
  *(v2 + 32) = v222;
  *(v2 + 48) = v218;
  *(v0 + 1296) = v231;
  *(v0 + 1304) = v79;
  *(v0 + 1312) = v80;
  *(v0 + 1320) = v82;
LABEL_135:
  v196 = *(v0 + 3104);
  v197 = *(v0 + 3096);
  v219 = *(v0 + 3088);
  v198 = *(v0 + 3080);
  v199 = *(v0 + 3072);
  v200 = *(v0 + 3064);
  sub_257BD2C2C(0, &qword_281543F10);
  v215 = sub_257ECFD30();
  v201 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v202 = swift_allocObject();
  *(v202 + 16) = v201;
  *(v202 + 32) = v234;
  *(v0 + 2864) = sub_257C58BA8;
  *(v0 + 2872) = v202;
  *(v0 + 2832) = MEMORY[0x277D85DD0];
  *(v0 + 2840) = 1107296256;
  *(v0 + 2848) = sub_257D231C0;
  *(v0 + 2856) = &block_descriptor_96_0;
  v203 = _Block_copy((v0 + 2832));
  sub_257ECC3F0();
  sub_257ECF150();
  *(v0 + 3048) = MEMORY[0x277D84F90];
  sub_257C58BB4(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v196, v198, v203);
  _Block_release(v203);

  sub_257BE4084(v223, &qword_27F8F6650);
  (*(v199 + 8))(v198, v200);
  (*(v197 + 8))(v196, v219);

  v204 = *(v0 + 8);

  return v204();
}

void sub_257C44114(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for OU3DObjectType(0);
  v4 = v3;
  v5 = sub_257C58BB4(&qword_27F8F4C98, type metadata accessor for OU3DObjectType);
  v6 = 0;
  v13[1] = MEMORY[0x259C725B0](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_257C4BA10(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_257C44258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_257ECDA30();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_257ECF900();
  v5[19] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v5[20] = v8;
  v5[21] = v7;

  return MEMORY[0x2822009F8](sub_257C4434C, v8, v7);
}

uint64_t sub_257C4434C()
{
  sub_257ECD4A0();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBD0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Dispatch contact event", v3, 2u);
    MEMORY[0x259C74820](v3, -1, -1);
  }

  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);

  (*(v5 + 8))(v4, v6);
  v8 = v7[1];
  *(v0 + 16) = *v7;
  *(v0 + 32) = v8;
  v10 = v7[3];
  v9 = v7[4];
  v11 = v7[2];
  *(v0 + 89) = *(v7 + 73);
  *(v0 + 64) = v10;
  *(v0 + 80) = v9;
  *(v0 + 48) = v11;
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_257C444BC;

  return MAGOUEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257C444BC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_257C4463C;
  }

  else
  {
    v5 = sub_257C445D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C445D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C4463C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_257C446A8(float32x4_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject), v3 = Strong, v4 = v2, v3, v2))
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor);

      sub_257E4FDE8(a1);
      v9 = vsubq_f32(a1, v8);
      v10 = vmulq_f32(v9, v9);
      sub_257DE2E10(sqrtf(v10.f32[0] + v10.f32[2]));
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor);

    v14 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
    swift_beginAccess();
    v4 = *&v13[v14];

    [v4 stopPulse];
  }
}

uint64_t sub_257C44854(float a1)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance;
  v6 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) * 1000.0;
  if (COERCE_INT(fabs(v6)) > 2139095039)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 <= -2147500000.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= 2147500000.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v1 = v2;
  v3 = depthRoundingIncrement(for:)(v6);
  v7 = a1 * 1000.0;
  if (COERCE_INT(fabs(a1 * 1000.0)) > 2139095039)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 <= -2147500000.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 >= 2147500000.0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_10;
  }

  v8 = depthRoundingIncrement(for:)(v7);
  if (v8 < v3)
  {
    v3 = v8;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_27;
  }

LABEL_10:
  swift_beginAccess();
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  sub_257ECFD50();

  v12 = 0.3048;
  if (!v16)
  {
    v12 = 1.0;
  }

  v13 = v3 * v12;
  v14 = floorf(*(v1 + v5) / v13);
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = floorf(a1 / v13);
  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v15 < 9.2234e18)
  {
    return v14 != v15;
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_257C44B20(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService);
  v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = [v5 currentFrame];
    if (v6)
    {
      v7 = v6;
      v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession);
      if (v8)
      {
        v9 = v8;

        if (a1 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78);
          sub_257ED0420();
        }

        else
        {
          sub_257ED0660();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78);
        v10 = sub_257ECF7F0();

        [v9 updateWithKeyframes:v10 ouframe:v7];
      }
    }
  }
}

uint64_t sub_257C44D04(uint64_t a1)
{
  v151 = 0;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6588);
  v2 = MEMORY[0x28223BE20](v140);
  v148 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v139 = &v127 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v147 = &v127 - v7;
  MEMORY[0x28223BE20](v6);
  v138 = &v127 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6590);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v149 = &v127 - v9;
  v10 = sub_257ECCCF0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v127 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v127 - v18;
  MEMORY[0x28223BE20](v17);
  v156 = (&v127 - v20);
  v21 = *(a1 + 16);
  v146 = v21;
  v128 = a1;
  if (v21)
  {
    v22 = (a1 + 96);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v26 = *(v22 - 3);
      v25 = *(v22 - 2);
      v158 = *(v22 - 8);
      v159 = v26;
      v160 = v25;
      v161 = v24;
      v162 = v23;
      v27 = v158;
      v28 = v151;
      sub_257C45BEC(&v158, v143);
      v151 = v28;
      if (v28)
      {
LABEL_86:

        __break(1u);
        goto LABEL_87;
      }

      v22 += 5;
      --v21;
    }

    while (v21);
  }

  v29 = [*(v143 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode) childNodes];
  sub_257BD2C2C(0, &qword_27F8FA5C0);
  v30 = sub_257ECF810();

  v134 = v30;
  if (v30 >> 62)
  {
    goto LABEL_84;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v152 = v11;
    v153 = v16;
    v32 = v146;
    if (i)
    {
      v33 = 0;
      v145 = v134 & 0xC000000000000001;
      v144 = v134 & 0xFFFFFFFFFFFFFF8;
      v142 = v134 + 32;
      v135 = v128 + 32;
      v155 = (v11 + 8);
      v141 = i;
      v154 = v10;
      while (1)
      {
        if (v145)
        {
          v34 = MEMORY[0x259C72E20](v33, v134);
        }

        else
        {
          if (v33 >= *(v144 + 16))
          {
            goto LABEL_77;
          }

          v34 = *(v142 + 8 * v33);
        }

        v35 = v34;
        v36 = __OFADD__(v33, 1);
        v37 = (v33 + 1);
        if (v36)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v150 = v37;
        if (v32)
        {
          break;
        }

LABEL_9:
        [v35 removeFromParentNode];
LABEL_10:

        v33 = v150;
        v11 = v152;
        v32 = v146;
        if (v150 == v141)
        {
          goto LABEL_30;
        }
      }

      v38 = v135;
      while (1)
      {
        v39 = *v38;
        v40 = [v39 identifier];
        if (!v40)
        {
          break;
        }

        v41 = v40;
        v42 = v156;
        sub_257ECCCD0();

        v43 = sub_257ECCCA0();
        v45 = v44;
        (*v155)(v42, v10);
        v46 = v35;
        v47 = [v35 name];
        if (v47)
        {
          v48 = v47;
          v49 = v19;
          v50 = sub_257ECF500();
          v52 = v51;

          if (v43 == v50 && v45 == v52)
          {

            v16 = v153;
            v19 = v49;
LABEL_28:
            v35 = v46;
            v10 = v154;
            goto LABEL_10;
          }

          v54 = sub_257ED0640();

          v16 = v153;
          v19 = v49;
          if (v54)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        v38 += 10;
        --v32;
        v35 = v46;
        v10 = v154;
        if (!v32)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_86;
    }

LABEL_30:

    v55 = MEMORY[0x277D84F90];
    if (v32)
    {
      v158 = MEMORY[0x277D84F90];
      sub_257ED0360();
      v56 = (v128 + 32);
      do
      {
        v57 = *v56;
        v56 += 10;
        v58 = v57;
        sub_257ED0330();
        v59 = v32;
        sub_257ED0370();
        sub_257ED0380();
        sub_257ED0340();
        --v32;
      }

      while (v59 != 1);
      v60 = v158;
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    v61 = objc_opt_self();
    v134 = sub_257BD2C2C(0, &qword_27F8F6598);
    v62 = sub_257ECF7F0();
    v141 = v61;
    v63 = [v61 storageGroupsForObjects_];

    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65A0);
    v64 = sub_257ECF810();

    v65 = *(v64 + 16);
    if (v65)
    {
      v158 = v55;
      sub_257BF28C4(0, v65, 0);
      v66 = 0;
      v67 = v158;
      v144 = v64 + 32;
      v11 += 8;
      v142 = v60;
      v146 = v64;
      v145 = v65;
      while (v66 < *(v64 + 16))
      {
        v155 = v67;
        v156 = v66;
        v68 = *(v144 + 8 * v66);
        v69 = *(v68 + 2);
        v70 = sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

        v71 = MEMORY[0x259C725B0](v69, v10, v70);
        v157 = v71;
        v72 = *(v68 + 2);
        if (v72)
        {
          v73 = (*(v152 + 80) + 32) & ~*(v152 + 80);
          v150 = v68;
          v74 = v68 + v73;
          v75 = v19;
          v76 = *(v152 + 72);
          v77 = v16;
          v78 = *(v152 + 16);
          do
          {
            v78(v75, v74, v10);
            sub_257C4BFF0(v77, v75);
            (*v11)(v77, v10);
            v74 += v76;
            --v72;
          }

          while (v72);

          v79 = v157;
          v16 = v77;
          v19 = v75;
        }

        else
        {
          v79 = v71;
        }

        v67 = v155;
        v80 = v156;
        v158 = v155;
        v82 = v155[2];
        v81 = v155[3];
        if (v82 >= v81 >> 1)
        {
          sub_257BF28C4((v81 > 1), v82 + 1, 1);
          v80 = v156;
          v67 = v158;
        }

        v66 = v80 + 1;
        v67[2] = v82 + 1;
        v67[v82 + 4] = v79;
        v64 = v146;
        if (v66 == v145)
        {

          v11 = v152;
          v55 = MEMORY[0x277D84F90];
          goto LABEL_48;
        }
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v67 = MEMORY[0x277D84F90];
LABEL_48:
    *(v143 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups) = v67;

    v83 = sub_257ECF7F0();

    v84 = [v141 tableChairGroupsForObjects_];

    v142 = sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
    v85 = sub_257ECF3D0();

    v86 = v85[2];
    if (!v86)
    {
      break;
    }

    v158 = v55;
    sub_257BF28A4(0, v86, 0);
    v16 = v158;
    v87 = (v85 + 8);
    v19 = sub_257ED0190();
    v88 = 0;
    v132 = *(v85 + 9);
    v135 = v11 + 32;
    v89 = (v11 + 8);
    v129 = (v85 + 9);
    v141 = v85;
    v131 = v86;
    v133 = (v85 + 8);
    v134 = v11 + 16;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v85 + 32))
    {
      if ((*&v87[8 * (v19 >> 6)] & (1 << v19)) == 0)
      {
        goto LABEL_80;
      }

      v145 = 1 << v19;
      v146 = v19 >> 6;
      v144 = v88;
      v156 = v16;
      v92 = *(v11 + 72);
      v93 = *(v11 + 16);
      v94 = v138;
      v93(v138, v85[6] + v92 * v19, v10);
      v95 = v85[7];
      v155 = v19;
      v96 = *(v95 + 8 * v19);
      v150 = *(v11 + 32);
      v97 = v147;
      v150(v147, v94, v10);
      v98 = v140;
      *(v97 + *(v140 + 48)) = v96;
      v99 = v139;
      sub_257BE401C(v97, v139, &qword_27F8F6588);

      v150(v149, v99, v10);
      v100 = v148;
      sub_257BE401C(v97, v148, &qword_27F8F6588);
      v101 = *(v100 + *(v98 + 48));
      v102 = MEMORY[0x259C725B0](*(v101 + 2), v10, v142);
      v157 = v102;
      v103 = *(v101 + 2);
      if (v103)
      {
        v104 = v153;
        v105 = *(v152 + 80);
        v150 = v101;
        v106 = v101 + ((v105 + 32) & ~v105);
        v107 = v130;
        do
        {
          v93(v107, v106, v10);
          sub_257C4BFF0(v104, v107);
          (*v89)(v104, v10);
          v106 += v92;
          --v103;
        }

        while (v103);
        v108 = v157;
      }

      else
      {
        v108 = v102;
      }

      v109 = *(v137 + 48);
      sub_257BE4084(v147, &qword_27F8F6588);

      (*v89)(v148, v10);
      v110 = v149;
      *&v149[v109] = v108;
      v111 = v155;
      v16 = v156;
      v158 = v156;
      v113 = v156[2];
      v112 = v156[3];
      if (v113 >= v112 >> 1)
      {
        sub_257BF28A4(v112 > 1, v113 + 1, 1);
        v110 = v149;
        v16 = v158;
      }

      *(v16 + 2) = v113 + 1;
      sub_257C0DD14(v110, &v16[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v113], &qword_27F8F6590);
      v85 = v141;
      v19 = 1 << *(v141 + 32);
      v11 = v152;
      if (v111 >= v19)
      {
        goto LABEL_81;
      }

      v87 = v133;
      v114 = *&v133[8 * v146];
      if ((v114 & v145) == 0)
      {
        goto LABEL_82;
      }

      if (v132 != *(v141 + 9))
      {
        goto LABEL_83;
      }

      v115 = v114 & (-2 << (v111 & 0x3F));
      if (v115)
      {
        v19 = __clz(__rbit64(v115)) | v111 & 0x7FFFFFFFFFFFFFC0;
        v90 = v131;
        v91 = v144;
      }

      else
      {
        v116 = v146 << 6;
        v117 = v146 + 1;
        v118 = &v129[8 * v146];
        v90 = v131;
        v91 = v144;
        while (v117 < (v19 + 63) >> 6)
        {
          v120 = *v118++;
          v119 = v120;
          v116 += 64;
          ++v117;
          if (v120)
          {
            v19 = __clz(__rbit64(v119)) + v116;
            break;
          }
        }
      }

      v88 = v91 + 1;
      if (v88 == v90)
      {

        if (!*(v16 + 2))
        {
          goto LABEL_73;
        }

        goto LABEL_71;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    ;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B28);
    v121 = sub_257ED0480();
  }

  else
  {
LABEL_73:
    v121 = MEMORY[0x277D84F98];
  }

  v122 = v128;
  v158 = v121;

  v124 = v151;
  sub_257C5431C(v123, 1, &v158);
  if (!v124)
  {

    v125 = v143;
    *(v143 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups) = v158;

    *(v125 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache) = v122;
  }

LABEL_87:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_257C45BEC(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 32);
  v90 = *(a1 + 16);
  v91 = v9;
  v10 = *(a1 + 64);
  v92 = *(a1 + 48);
  v93 = v10;
  v11 = [v8 type];
  if (!v11)
  {
    __break(1u);
    goto LABEL_42;
  }

  v12 = v11;
  v13 = sub_257ECF500();
  v15 = v14;
  v17 = v13 == sub_257ECF500() && v15 == v16;
  v95 = v2;
  if (v17)
  {
    goto LABEL_15;
  }

  v18 = sub_257ED0640();

  if (v18)
  {
LABEL_7:

LABEL_16:
    [v8 dimensions];
    v96 = v29;
    [v8 dimensions];
    [v8 dimensions];
    sub_257ECFB50();
    v33 = [objc_opt_self() boxWithWidth:v30 height:v31 length:v32 chamferRadius:0.0];
    v34 = *(MEMORY[0x277D860B8] + 16);
    v96 = *MEMORY[0x277D860B8];
    v86 = v34;
    v35 = *(MEMORY[0x277D860B8] + 48);
    v87 = *(MEMORY[0x277D860B8] + 32);
    v88 = v35;
    [v8 dimensions];
    v36.f32[0] = vmuls_lane_f32(0.05, *v36.f32, 1);
    v89 = v36;
    [v8 dimensions];
    v85 = 0;
    v38 = vmulq_f32(v96, 0);
    v96 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v96, 0, v86), 0, v87), 0, v88);
    v84 = vmlaq_f32(vmlaq_f32(vaddq_f32(v86, v38), 0, v87), 0, v88);
    v83 = vmlaq_f32(vaddq_f32(v87, vmlaq_f32(v38, 0, v86)), 0, v88);
    v39 = vaddq_f32(v88, vmlaq_n_f32(vmlaq_n_f32(v38, v86, v89.f32[0]), v87, vmuls_lane_f32(0.05, v37, 2)));
    goto LABEL_17;
  }

  v19 = sub_257ECF500();
  v21 = v20;
  if (v19 == sub_257ECF500() && v21 == v22)
  {
    goto LABEL_15;
  }

  v24 = sub_257ED0640();

  if (v24)
  {
    goto LABEL_7;
  }

  v25 = sub_257ECF500();
  v27 = v26;
  if (v25 == sub_257ECF500() && v27 == v28)
  {
    goto LABEL_15;
  }

  v69 = sub_257ED0640();

  if (v69)
  {
    goto LABEL_7;
  }

  v70 = sub_257ECF500();
  v72 = v71;
  if (v70 == sub_257ECF500() && v72 == v73)
  {
    goto LABEL_15;
  }

  v74 = sub_257ED0640();

  if (v74)
  {
    goto LABEL_7;
  }

  v75 = sub_257ECF500();
  v77 = v76;
  if (v75 == sub_257ECF500() && v77 == v78)
  {
LABEL_15:

    goto LABEL_16;
  }

  v79 = sub_257ED0640();

  if (v79)
  {
    goto LABEL_16;
  }

  [v8 dimensions];
  sub_257ECFB60();
  v33 = [objc_opt_self() boxWithWidth:v80 height:v81 length:v82 chamferRadius:0.0];
  v39 = 0uLL;
  v96 = 0u;
  v85 = 1;
  v84 = 0u;
  v83 = 0u;
LABEL_17:
  v89 = v39;
  v40 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode;
  v41 = *(v94 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode);
  v42 = [v8 identifier];
  if (v42)
  {
    v43 = v42;
    sub_257ECCCD0();

    sub_257ECCCA0();
    (*(v5 + 8))(v7, v4);
    v44 = sub_257ECF4C0();

    v45 = [v41 childNodeWithName:v44 recursively:0];

    if (v45)
    {
      v46 = v33;
      [v45 setGeometry_];
      [v45 setOpacity_];
      v47 = [v45 physicsBody];
      if (v47)
      {
        v48 = v47;
        v49 = [objc_opt_self() shapeWithGeometry:v46 options:0];

        [v48 setPhysicsShape_];
        v46 = v49;
      }

      [v8 transform];
      [v45 setSimdTransform_];
    }

    else
    {
      sub_257BD2C2C(0, &qword_27F8FA5C0);
      v97[0] = v8;
      v98 = v90;
      v99 = v91;
      v100 = v92;
      v101 = v93;
      v54 = v8;
      v55 = SCNNode.init(_:)(v97);
      if (!v55)
      {
LABEL_32:

        return;
      }

      v45 = v55;
      v56 = [objc_opt_self() shapeWithGeometry:v33 options:0];
      v57 = [objc_opt_self() bodyWithType:2 shape:v56];

      [v45 setPhysicsBody_];
      v58 = [v45 physicsBody];
      if (v58)
      {
        v59 = v58;
        [v58 setCategoryBitMask_];
      }

      [v45 setCategoryBitMask_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED9BD0;
      v61 = *MEMORY[0x277D36D38];
      *(inited + 32) = *MEMORY[0x277D36D38];
      v62 = *MEMORY[0x277D36D68];
      *(inited + 40) = *MEMORY[0x277D36D68];
      v63 = v61;
      v64 = v62;
      v65 = [v54 type];
      v97[0] = v65;
      MEMORY[0x28223BE20](v65);
      *(&v83 - 2) = v97;
      v66 = v95;
      LOBYTE(v62) = sub_257DF8E30(sub_257C5883C, (&v83 - 2), inited);
      v95 = v66;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0);
      swift_arrayDestroy();

      if (v62)
      {
        v67 = [v45 physicsBody];
        if (v67)
        {
          v68 = v67;
          [v67 setContactTestBitMask_];
        }
      }

      [*(v94 + v40) addChildNode_];
    }

    if ((v85 & 1) == 0)
    {
      [v45 setSimdPivot_];
    }

    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_257C465C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache);

  sub_257E4F980(a1, a2, v7, a3);
}

uint64_t sub_257C4662C(uint64_t a1)
{
  v3 = v1;
  v199.i64[0] = a1;
  v194 = sub_257ECDA30();
  v192 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v5 = v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for SpatialPersonDetection();
  *&v195 = *(v205 - 8);
  v6 = MEMORY[0x28223BE20](v205);
  v8 = v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v197 = v181 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v181 - v11;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F63D8);
  MEMORY[0x28223BE20](v206);
  v204 = v181 - v13;
  v14 = sub_257ECCC80();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = v181 - v20;
  v200 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene;
  v22 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  if (!v22)
  {
    return result;
  }

  v193 = v8;
  v191 = v5;
  v201 = v22;
  sub_257ECCC50();
  v196 = v21;
  sub_257ECCBF0();
  v24 = *(v15 + 8);
  v23 = (v15 + 8);
  v186 = v14;
  v185 = v23;
  v184 = v24;
  v24(v18, v14);
  v25 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
  swift_beginAccess();
  v202 = v25;
  v26 = *(v3 + v25);
  v29 = *(v26 + 64);
  v28 = v26 + 64;
  v27 = v29;
  v30 = 1 << *(*(v3 + v25) + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v207 = *(v3 + v25);
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v198 = v3;
  v203 = v12;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_10:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = v36 | (v35 << 6);
      v38 = v207;
      v39 = *(v207 + 6);
      v40 = sub_257ECCCF0();
      v41 = v204;
      v42 = (*(*(v40 - 8) + 16))(v204, v39 + *(*(v40 - 8) + 72) * v37, v40);
      v43 = *(*(v38 + 7) + 8 * v37);
      *(v41 + v206[12]) = v43;
      MEMORY[0x28223BE20](v42);
      v181[-2] = v196;
      swift_bridgeObjectRetain_n();
      v44 = sub_257C55804(sub_257C57884, &v181[-4], v43);
      v3 = v198;
      v23 = v202;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v214 = *(v23 + v3);
      *(v23 + v3) = 0x8000000000000000;
      v25 = &v214;
      sub_257EC7788(v44, v41, isUniquelyReferenced_nonNull_native);
      *(v23 + v3) = v214;
      swift_endAccess();
      sub_257BE4084(v41, &qword_27F8F63D8);
      v12 = v203;
      if (!v32)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(v28 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_10;
    }
  }

  v181[1] = 0;

  v46 = v199.i64[0];
  v47 = *(v199.i64[0] + 16);
  v48 = MEMORY[0x277D84F90];
  v202 = v47;
  if (v47)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v47, 0);
    v48 = aBlock;
    v49 = v47;
    v50 = v46 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
    v51 = *(v195 + 72);
    do
    {
      sub_257C58770(v50, v12, type metadata accessor for SpatialPersonDetection);
      v52 = sub_257ECCCA0();
      v54 = v53;
      sub_257C58710(v12, type metadata accessor for SpatialPersonDetection);
      aBlock = v48;
      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_257BF26A4((v55 > 1), v56 + 1, 1);
        v48 = aBlock;
      }

      *(v48 + 16) = v56 + 1;
      v57 = v48 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      v50 += v51;
      --v49;
    }

    while (v49);
    v3 = v198;
  }

  v23 = sub_257C573BC(v48);

  v25 = [v201 rootNode];
  v211 = sub_257C592E4;
  v212 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  *&v209 = 1107296256;
  *(&v209 + 1) = sub_257C47EA4;
  v210 = &block_descriptor_11;
  v58 = _Block_copy(&aBlock);

  v59 = [v25 childNodesPassingTest_];

  _Block_release(v58);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_40;
  }

  v206 = v23;
  v187 = sub_257BD2C2C(0, &qword_27F8FA5C0);
  v25 = sub_257ECF810();

  v23 = (v25 & 0xFFFFFFFFFFFFFF8);
  if (v25 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v61 = 0;
    v207 = MEMORY[0x277D84F90];
LABEL_22:
    v62 = v61;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x259C72E20](v62, v25);
      }

      else
      {
        if (v62 >= v23[2])
        {
          goto LABEL_39;
        }

        v63 = *(v25 + 8 * v62 + 32);
      }

      v64 = v63;
      v61 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v65 = [v63 name];
      if (v65)
      {
        v66 = v65;
        v67 = sub_257ECF500();
        v69 = v68;

        v70 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v207 = sub_257BFCB3C(0, *(v207 + 2) + 1, 1, v207);
        }

        v72 = *(v207 + 2);
        v71 = *(v207 + 3);
        if (v72 >= v71 >> 1)
        {
          v207 = sub_257BFCB3C((v71 > 1), v72 + 1, 1, v207);
        }

        v73 = v207;
        *(v207 + 2) = v72 + 1;
        v74 = &v73[16 * v72];
        *(v74 + 4) = v67;
        *(v74 + 5) = v70;
        v3 = v198;
        if (v61 != i)
        {
          goto LABEL_22;
        }

        goto LABEL_43;
      }

      ++v62;
      if (v61 == i)
      {
        goto LABEL_43;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v207 = MEMORY[0x277D84F90];
LABEL_43:

  v75 = sub_257C573BC(v207);

  v76 = v206;

  v77 = sub_257C55144(v75, v76);
  if (*(v75 + 16) <= *(v76 + 2) >> 3)
  {
    aBlock = v76;

    sub_257C54870(v75);
    v78 = aBlock;
  }

  else
  {

    v78 = sub_257C5499C(v75, v76);
  }

  v79 = v191;
  v80 = v197;
  v81 = v202;
  if (*(v76 + 2) <= *(v75 + 16) >> 3)
  {
    aBlock = v75;

    sub_257C54870(v76);

    v82 = aBlock;
  }

  else
  {

    v82 = sub_257C5499C(v76, v75);
  }

  v214 = v82;
  v183 = objc_opt_self();
  [v183 begin];
  if (!v81)
  {

    goto LABEL_82;
  }

  v182 = v2;
  v84 = 0;
  v204 = (v199.i64[0] + ((*(v195 + 80) + 32) & ~*(v195 + 80)));
  ++v192;
  v207 = (v75 + 56);
  v203 = *(v195 + 72);
  __asm
  {
    FMOV            V15.2S, #0.75
    FMOV            V11.2S, #0.25
  }

  *&v83 = 136315138;
  v188 = v83;
  v190 = v78;
  v189 = v77;
  do
  {
    sub_257C58770(&v204[v203 * v84], v80, type metadata accessor for SpatialPersonDetection);
    v90 = *(v80 + *(v205 + 20));
    if (vmuls_lane_f32(vmuls_lane_f32(v90.f32[0], *v90.f32, 1), v90, 2) >= 0.02)
    {
      v199 = *(v80 + *(v205 + 20));
      v206 = sub_257BFC1BC(0.0);
      v101 = sub_257ECCCA0();
      v103 = sub_257C4075C(v101, v102, v77);

      if (v103)
      {
        v104 = [v201 rootNode];
        sub_257ECCCA0();
        v105 = sub_257ECF4C0();

        v106 = [v104 childNodeWithName:v105 recursively:0];

        v81 = v202;
        if (v106)
        {
          [v106 simdWorldPosition];
          v195 = v107;
          [v206 simdWorldPosition];
          [v106 setSimdWorldPosition_];
          v109 = [v106 geometry];
          if (v109)
          {
            v110 = v109;
            objc_opt_self();
            v111 = swift_dynamicCastObjCClass();
            if (v111)
            {
              v112 = v111;
              [v111 width];
              [v112 height];
              [v112 length];
              sub_257ECFB40();
              sub_257ECFB50();
              sub_257ECFB60();
              sub_257ECFB50();
              sub_257ECFB50();
              v114 = v113;
              v116 = v115;
              [v112 setWidth_];
              [v112 setHeight_];
              v118 = v112;
              v78 = v190;
              [v118 setLength_];
            }
          }

          [v106 simdOrientation];
          v199 = v119;
          v120 = v206;
          [v206 simdOrientation];
          simd_slerp(v199, v121, v122);
          [v106 setSimdOrientation_];

          goto LABEL_73;
        }
      }

      v123 = sub_257ECCCA0();
      v125 = sub_257C4075C(v123, v124, v78);

      if (v125)
      {
        v126 = [v201 rootNode];
        v127 = v206;
        [v126 addChildNode_];

LABEL_73:
        sub_257C58710(v80, type metadata accessor for SpatialPersonDetection);
        goto LABEL_52;
      }

      sub_257ECD4A0();
      v128 = v80;
      v129 = v80;
      v130 = v193;
      sub_257C58770(v128, v193, type metadata accessor for SpatialPersonDetection);
      v131 = sub_257ECDA20();
      v132 = sub_257ECFBE0();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        aBlock = v134;
        *v133 = v188;
        v135 = sub_257ECCCA0();
        v137 = v136;
        v199.i64[0] = type metadata accessor for SpatialPersonDetection;
        sub_257C58710(v130, type metadata accessor for SpatialPersonDetection);
        v138 = sub_257BF1FC8(v135, v137, &aBlock);

        *(v133 + 4) = v138;
        v79 = v191;
        _os_log_impl(&dword_257BAC000, v131, v132, "Person %s should have been added or updated in objectUnderstanding scene, but was not.", v133, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v134);
        v139 = v134;
        v77 = v189;
        MEMORY[0x259C74820](v139, -1, -1);
        v140 = v133;
        v78 = v190;
        MEMORY[0x259C74820](v140, -1, -1);

        (*v192)(v79, v194);
        v141 = v129;
        v142 = v199.i64[0];
      }

      else
      {

        sub_257C58710(v130, type metadata accessor for SpatialPersonDetection);
        (*v192)(v79, v194);
        v141 = v129;
        v142 = type metadata accessor for SpatialPersonDetection;
      }

      sub_257C58710(v141, v142);
      v80 = v129;
      v81 = v202;
      v3 = v198;
    }

    else
    {
      v91 = sub_257ECCCA0();
      v93 = v92;
      if (*(v75 + 16))
      {
        v94 = v91;
        sub_257ED07B0();
        sub_257ECF5D0();
        v95 = sub_257ED0800();
        v96 = -1 << *(v75 + 32);
        v97 = v95 & ~v96;
        if ((*&v207[(v97 >> 3) & 0xFFFFFFFFFFFFFF8] >> v97))
        {
          v98 = ~v96;
          while (1)
          {
            v99 = (*(v75 + 48) + 16 * v97);
            _ZF = *v99 == v94 && v99[1] == v93;
            if (_ZF || (sub_257ED0640() & 1) != 0)
            {
              break;
            }

            v97 = (v97 + 1) & v98;
            if (((*&v207[(v97 >> 3) & 0xFFFFFFFFFFFFFF8] >> v97) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          v80 = v197;
          v143 = sub_257ECCCA0();
          sub_257C4D080(&aBlock, v143, v144);
        }

        else
        {
LABEL_63:

          v80 = v197;
        }

        sub_257C58710(v80, type metadata accessor for SpatialPersonDetection);
        v81 = v202;
      }

      else
      {

        sub_257C58710(v80, type metadata accessor for SpatialPersonDetection);
      }
    }

LABEL_52:
    ++v84;
  }

  while (v84 != v81);

  v82 = v214;
  v2 = v182;
LABEL_82:

  v145 = 0;
  v146 = 1 << *(v82 + 32);
  v147 = -1;
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  v148 = v147 & *(v82 + 56);
  v149 = (v146 + 63) >> 6;
  if (v148)
  {
    goto LABEL_90;
  }

  while (2)
  {
    v150 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v150 < v149)
    {
      v148 = *(v82 + 56 + 8 * v150);
      ++v145;
      if (v148)
      {
        v145 = v150;
        do
        {
LABEL_90:
          v148 &= v148 - 1;

          v75 = [v201 rootNode];
          v151 = sub_257ECF4C0();

          v152 = [v75 childNodeWithName:v151 recursively:0];

          [v152 removeFromParentNode];
        }

        while (v148);
        continue;
      }

      continue;
    }

    break;
  }

  [v183 commit];
  v153 = [v201 rootNode];
  v211 = sub_257C592E4;
  v212 = 0;
  aBlock = MEMORY[0x277D85DD0];
  *&v209 = v2;
  *(&v209 + 1) = sub_257C47EA4;
  v210 = &block_descriptor_15;
  v154 = _Block_copy(&aBlock);

  v155 = [v153 childNodesPassingTest_];

  _Block_release(v154);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_125;
  }

  v75 = sub_257ECF810();

  if (v75 >> 62)
  {
LABEL_126:
    v156 = sub_257ED0210();
    if (!v156)
    {
      goto LABEL_127;
    }

LABEL_95:
    v157 = 0;
    v158 = (v75 & 0xC000000000000001);
    v205 = v75 & 0xFFFFFFFFFFFFFF8;
    v204 = (v75 + 32);
    v207 = *MEMORY[0x277CDBBD8];
    v159 = &selRef_imageByApplyingSymbolConfiguration_;
    v203 = v156;
    v206 = (v75 & 0xC000000000000001);
    while (1)
    {
      if (v158)
      {
        v160 = MEMORY[0x259C72E20](v157, v75);
      }

      else
      {
        if (v157 >= *(v205 + 16))
        {
          goto LABEL_123;
        }

        v160 = *&v204[8 * v157];
      }

      v161 = v160;
      _VF = __OFADD__(v157++, 1);
      if (_VF)
      {
        goto LABEL_120;
      }

      v162 = [v160 v159[158]];
      if (v162)
      {
        v163 = v162;
        v164 = *(v3 + v200);
        if (v164)
        {
          v165 = [v164 physicsWorld];
          v213[4] = MEMORY[0x277D83B88];
          v166 = v207;
          v213[0] = v207;
          v213[1] = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F63F0);
          v167 = sub_257ED0480();
          v168 = v166;
          sub_257BE401C(v213, &aBlock, &qword_27F8F5718);
          v169 = aBlock;
          v170 = sub_257C09E74(aBlock);
          if (v171)
          {
            goto LABEL_121;
          }

          v167[(v170 >> 6) + 8] |= 1 << v170;
          *(v167[6] + 8 * v170) = v169;
          sub_257BEBE08(&v209, (v167[7] + 32 * v170));
          v172 = v167[2];
          _VF = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (_VF)
          {
            goto LABEL_122;
          }

          v167[2] = v173;
          sub_257BE4084(v213, &qword_27F8F5718);
          type metadata accessor for TestOption(0);
          sub_257C58BB4(&qword_27F8F6400, type metadata accessor for TestOption);
          v174 = sub_257ECF3C0();

          v175 = [v165 contactTestWithBody:v163 options:v174];

          sub_257BD2C2C(0, &qword_27F8F6408);
          v176 = sub_257ECF810();

          if (v176 >> 62)
          {
            v177 = sub_257ED0210();
            if (!v177)
            {
              goto LABEL_117;
            }

LABEL_109:
            if (v177 < 1)
            {
              goto LABEL_124;
            }

            for (j = 0; j != v177; ++j)
            {
              if ((v176 & 0xC000000000000001) != 0)
              {
                v179 = MEMORY[0x259C72E20](j, v176);
              }

              else
              {
                v179 = *(v176 + 8 * j + 32);
              }

              v180 = v179;
              sub_257C48580(v179);
            }

            v156 = v203;
          }

          else
          {
            v177 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v177)
            {
              goto LABEL_109;
            }

LABEL_117:
          }

          v158 = v206;
          v159 = &selRef_imageByApplyingSymbolConfiguration_;
          goto LABEL_97;
        }
      }

LABEL_97:

      if (v157 == v156)
      {
        goto LABEL_127;
      }
    }
  }

  v156 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v156)
  {
    goto LABEL_95;
  }

LABEL_127:

  return v184(v196, v186);
}

id sub_257C47E54(void *a1)
{
  result = [a1 physicsBody];
  if (result)
  {
    v2 = result;
    v3 = [result categoryBitMask];

    return ((v3 >> 2) & 1);
  }

  return result;
}

uint64_t sub_257C47EA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_257C47EF0(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for Occupant();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - v9;
  v38 = sub_257ECCCF0();
  v10 = *(v38 - 8);
  v11 = MEMORY[0x28223BE20](v38);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v36 = *a1;
  result = [v36 identifier];
  if (result)
  {
    v17 = result;
    sub_257ECCCD0();

    v18 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
    swift_beginAccess();
    v34 = v2;
    v19 = *(v2 + v18);
    v20 = *(v19 + 16);

    v35 = v13;
    if (v20 && (v21 = sub_257C042F8(v15), (v22 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + 8 * v21);
    }

    else
    {
      v23 = MEMORY[0x277D84FA0];
    }

    v24 = *(v10 + 8);
    v25 = v15;
    v26 = v38;
    v24(v25, v38);
    v40 = v23;
    (*(v10 + 16))(v8, a2, v26);
    sub_257ECCC50();
    v27 = v37;
    sub_257C4CDB4(v37, v8);
    sub_257C58710(v27, type metadata accessor for Occupant);
    result = [v36 identifier];
    if (result)
    {
      v28 = result;
      v29 = v35;
      sub_257ECCCD0();

      v30 = v40;
      v31 = v34;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v31 + v18);
      *(v31 + v18) = 0x8000000000000000;
      sub_257EC7788(v30, v29, isUniquelyReferenced_nonNull_native);
      v24(v29, v26);
      *(v31 + v18) = v39;
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_257C4820C(id *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v36 = type metadata accessor for Occupant();
  MEMORY[0x28223BE20](v36);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6578);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_257ECCCF0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = *a1;
  result = [*a1 identifier];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v19 = result;
  sub_257ECCCD0();

  v20 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_257C042F8(v16);
    if (v23)
    {
      v33 = v14;
      v34 = v9;
      v24 = *(*(v21 + 56) + 8 * v22);
      v25 = v10;
      v35 = v17;
      v26 = *(v11 + 8);

      v32 = v26;
      v26(v16, v10);

      v39 = v24;
      (*(v11 + 16))(v6, v37, v10);
      sub_257ECCC50();
      v27 = v34;
      sub_257D6DCF8(v34);
      sub_257C58710(v6, type metadata accessor for Occupant);
      sub_257BE4084(v27, &qword_27F8F6578);
      result = [v35 identifier];
      if (result)
      {
        v28 = result;
        v29 = v33;
        sub_257ECCCD0();

        v30 = v39;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v3 + v20);
        *(v3 + v20) = 0x8000000000000000;
        sub_257EC7788(v30, v29, isUniquelyReferenced_nonNull_native);
        v32(v29, v25);
        *(v3 + v20) = v38;
        return swift_endAccess();
      }

      goto LABEL_10;
    }
  }

  return (*(v11 + 8))(v16, v10);
}

void sub_257C48580(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = [a1 nodeA];
  v17 = [v16 physicsBody];

  if (v17)
  {
    v18 = [v17 categoryBitMask];

    if ((v18 & 4) != 0)
    {
      v52 = v7;
      v53 = v6;
      v51 = v1;
      v19 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache);

      v20 = [a1 nodeB];
      v21 = [v20 name];

      if (v21)
      {
        v22 = sub_257ECF500();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      sub_257E4F980(v22, v24, v19, v59);

      v25 = *&v59[0];
      if (*&v59[0])
      {
        v46 = v59[1];
        v47 = v59[2];
        v48 = v59[3];
        v49 = v59[4];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        v27 = *MEMORY[0x277D36D38];
        *(inited + 32) = *MEMORY[0x277D36D38];
        v28 = *MEMORY[0x277D36D68];
        *(inited + 40) = *MEMORY[0x277D36D68];
        v29 = v27;
        v30 = v28;
        v50 = v25;
        v31 = [v25 type];
        v54[0] = v31;
        MEMORY[0x28223BE20](v31);
        *(&v46 - 2) = v54;
        v32 = sub_257DF8E30(sub_257C592B4, (&v46 - 2), inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0);
        swift_arrayDestroy();

        if (v32)
        {
          v33 = [a1 nodeA];
          v34 = [v33 name];

          if (v34)
          {
            sub_257ECF500();
          }

          v35 = v52;
          sub_257ECCC90();

          v36 = v53;
          if ((*(v35 + 48))(v5, 1, v53))
          {
            sub_257BE4084(v5, &qword_27F8F5728);
          }

          else
          {
            v37 = *(v35 + 32);
            v37(v13, v5, v36);
            v37(v15, v13, v36);
            [a1 penetrationDistance];
            if (v38 <= 0.05)
            {
              v39 = [v50 identifier];
              if (!v39)
              {
                __break(1u);
                return;
              }

              v40 = v39;
              sub_257ECCCD0();

              v41 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
              v42 = v51;
              swift_beginAccess();
              if (*(*(v42 + v41) + 16))
              {

                sub_257C042F8(v10);
                if (v43)
                {
                  v44 = *(v35 + 8);

                  v44(v10, v36);

                  v54[0] = v50;
                  v55 = v46;
                  v56 = v47;
                  v57 = v48;
                  v58 = v49;
                  sub_257C4820C(v54, v15);
                  v44(v15, v36);
                  goto LABEL_18;
                }
              }

              v45 = *(v35 + 8);
              v45(v10, v36);
              sub_257BE4084(v59, &qword_27F8F9C90);
              v45(v15, v36);
              return;
            }

            v54[0] = v50;
            v55 = v46;
            v56 = v47;
            v57 = v48;
            v58 = v49;
            sub_257C47EF0(v54, v15);
            (*(v35 + 8))(v15, v36);
          }
        }

LABEL_18:
        sub_257BE4084(v59, &qword_27F8F9C90);
      }
    }
  }
}

id sub_257C48C44()
{
  result = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer) physicsBody];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
    if (v3)
    {
      v4 = [v3 physicsWorld];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6410);
      inited = swift_initStackObject();
      v6 = *MEMORY[0x277CDBBD8];
      *(inited + 32) = *MEMORY[0x277CDBBD8];
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = 2;
      v7 = v6;
      sub_257BE94BC(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &qword_27F8F5718);
      type metadata accessor for TestOption(0);
      sub_257C58BB4(&qword_27F8F6400, type metadata accessor for TestOption);
      v8 = sub_257ECF3C0();

      v9 = [v4 contactTestWithBody:v2 options:v8];

      sub_257BD2C2C(0, &qword_27F8F6408);
      v10 = sub_257ECF810();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_257C48E20(void *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer];
  sub_257BD2C2C(0, &qword_27F8FA5C0);
  v8 = v7;
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  *&v9 = (*(&v61 + 2) + *(&v62 + 1)) * 0.5;
  *&v10 = (*&v61 + *(&v61 + 3)) * 0.5;
  LODWORD(v11) = v62;
  [v8 convertPosition:0 toNode:{v10, v11, v9}];

  v12 = [a1 nodeB];
  sub_257C567CC(v12);
  LOBYTE(v8) = v13;

  if (v8)
  {
    goto LABEL_22;
  }

  v14 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache;
  v15 = *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache];

  v16 = [a1 nodeB];
  v17 = [v16 name];

  if (v17)
  {
    v18 = sub_257ECF500();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_257E4F980(v18, v20, v15, v60);

  if (!*&v60[0])
  {
    goto LABEL_22;
  }

  *&v61 = *&v60[0];
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v65 = v60[4];
  v21 = *&v4[v14];
  v22 = *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups];
  v23 = *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups];

  v24 = sub_257C492E4(&v61, v22, v23, v21);

  if (!v24)
  {
    v35 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
    swift_beginAccess();
    v36 = *&v4[v35];
    v58 = v64;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v55 = v61;
    sub_257BE401C(v60, v54, &qword_27F8F9C90);

    v37 = Dictionary<>.occupants(of:)(&v55, v36);

    v58 = v64;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v55 = v61;
    sub_257E4FDE8(a3);
    v39 = vsubq_f32(a3, v38);
    v40 = vmulq_f32(v39, v39);
    v41 = sqrtf(v40.f32[0] + v40.f32[2]);
    sub_257BE4084(v60, &qword_27F8F9C90);
    v42 = v62;
    v43 = v63;
    v44 = v64;
    v45 = v65;
    *a2 = v61;
    *(a2 + 8) = 0;
    *(a2 + 16) = v42;
    *(a2 + 32) = v43;
    *(a2 + 48) = v44;
    *(a2 + 64) = v45;
    *(a2 + 80) = v37;
    *(a2 + 88) = v41;
    return;
  }

  v25 = v4;
  sub_257C55E8C(v24, v25, a3);
  v27 = v26;

  v28 = *(v27 + 16);
  if (v28)
  {
    *&v55 = MEMORY[0x277D84F90];
    sub_257BF27A4(0, v28, 0);
    v29 = v55;
    v30 = (v27 + 120);
    v31 = *(v55 + 16);
    do
    {
      v32 = *v30;
      *&v55 = v29;
      v33 = *(v29 + 24);
      v34 = v31 + 1;
      if (v31 >= v33 >> 1)
      {
        sub_257BF27A4((v33 > 1), v31 + 1, 1);
        v29 = v55;
      }

      *(v29 + 16) = v34;
      *(v29 + 4 * v31 + 32) = v32;
      v30 += 24;
      ++v31;
      --v28;
    }

    while (v28);
    goto LABEL_15;
  }

  v29 = MEMORY[0x277D84F90];
  v34 = *(MEMORY[0x277D84F90] + 16);
  if (!v34)
  {

    sub_257BE4084(v60, &qword_27F8F9C90);

LABEL_22:
    *a2 = xmmword_257EDCB70;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 76) = 0u;
    return;
  }

LABEL_15:
  v46 = *(v29 + 32);
  v47 = v34 - 1;
  if (v34 != 1)
  {
    v48 = (v29 + 36);
    v49 = *(v29 + 32);
    do
    {
      v50 = *v48++;
      v51 = v50;
      if (v50 < v49)
      {
        v46 = v51;
        v49 = v51;
      }

      --v47;
    }

    while (v47);
  }

  v52 = sub_257C5709C(v27);

  sub_257BE4084(v60, &qword_27F8F9C90);
  *a2 = v52;
  *(a2 + 8) = v46;
  *(a2 + 12) = 0x80000000;
}

id sub_257C492E4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  result = [*a1 type];
  if (!result)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v10 = result;
  v11 = sub_257ECF500();
  v13 = v12;
  if (v11 == sub_257ECF500() && v13 == v14)
  {
    goto LABEL_10;
  }

  v16 = sub_257ED0640();

  if (v16)
  {
LABEL_11:

    return sub_257C4A31C(a1, a2, a4);
  }

  result = [v8 type];
  if (!result)
  {
    goto LABEL_37;
  }

  v10 = result;
  v17 = sub_257ECF500();
  v19 = v18;
  if (v17 == sub_257ECF500() && v19 == v20)
  {
    goto LABEL_10;
  }

  v21 = sub_257ED0640();

  if (v21)
  {
    goto LABEL_11;
  }

  result = [v8 type];
  if (!result)
  {
    goto LABEL_38;
  }

  v10 = result;
  v22 = sub_257ECF500();
  v24 = v23;
  if (v22 == sub_257ECF500() && v24 == v25)
  {
    goto LABEL_10;
  }

  v26 = sub_257ED0640();

  if (v26)
  {
    goto LABEL_11;
  }

  result = [v8 type];
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = result;
  v27 = sub_257ECF500();
  v29 = v28;
  if (v27 == sub_257ECF500() && v29 == v30)
  {
LABEL_10:

    goto LABEL_11;
  }

  v31 = sub_257ED0640();

  if (v31)
  {
    goto LABEL_11;
  }

  result = [v8 type];
  if (!result)
  {
    goto LABEL_40;
  }

  v32 = result;
  v33 = sub_257ECF500();
  v35 = v34;
  if (v33 != sub_257ECF500() || v35 != v36)
  {
    v37 = sub_257ED0640();

    if (v37)
    {
      goto LABEL_28;
    }

    result = [v8 type];
    if (result)
    {
      v32 = result;
      v38 = sub_257ECF500();
      v40 = v39;
      if (v38 != sub_257ECF500() || v40 != v41)
      {
        v42 = sub_257ED0640();

        if ((v42 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

LABEL_41:
    __break(1u);
    return result;
  }

LABEL_26:

LABEL_28:

  return sub_257C4A760(a1, a3, a4);
}

uint64_t sub_257C49704(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v4 = sub_257ECCCF0();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(a1 + 8);
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  *(v2 + 88) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 80) = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C49808, v8, v7);
}

uint64_t sub_257C49808()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 88);
    switch(v3)
    {
      case 4:
        v15 = *(v0 + 72);
        v42 = v15;
        v37 = Strong;
        if (v15 >> 62)
        {
          goto LABEL_43;
        }

        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_19;
        }

LABEL_33:
        v2 = v37;
        break;
      case 3:
        sub_257C57918(*(v0 + 72));
        break;
      case 2:
        v4 = *(v0 + 72);
        if (v4 >> 62)
        {
          v5 = sub_257ED0210();
          if (!v5)
          {
            break;
          }

          goto LABEL_7;
        }

        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_7:
          v6 = 0;
          v7 = *(v0 + 72);
          v40 = v7 & 0xFFFFFFFFFFFFFF8;
          v42 = v7 & 0xC000000000000001;
          v38 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
          while (1)
          {
            if (v42)
            {
              v8 = MEMORY[0x259C72E20](v6, v4);
            }

            else
            {
              if (v6 >= *(v40 + 16))
              {
                goto LABEL_40;
              }

              v8 = *(v4 + 8 * v6 + 32);
            }

            v9 = v8;
            v10 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (!v11)
            {

              goto LABEL_34;
            }

            v12 = v11;
            objc_allocWithZone(type metadata accessor for Plane());
            v13 = v9;
            v14 = sub_257E51A64(v12);
            [v13 transform];
            [v14 setSimdTransform_];
            [*&v2[v38] addChildNode_];

            ++v6;
            if (v10 == v5)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            v16 = sub_257ED0210();
            if (!v16)
            {
              goto LABEL_33;
            }

LABEL_19:
            v17 = 0;
            v18 = *(v0 + 72);
            v39 = v18 & 0xFFFFFFFFFFFFFF8;
            v41 = v18 & 0xC000000000000001;
            v35 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
            v36 = (*(v0 + 56) + 8);
            while (1)
            {
              if (v41)
              {
                v19 = MEMORY[0x259C72E20](v17, v42);
              }

              else
              {
                if (v17 >= *(v39 + 16))
                {
                  goto LABEL_42;
                }

                v19 = *(v42 + 8 * v17 + 32);
              }

              v20 = v19;
              v21 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              if (!v22)
              {

                goto LABEL_33;
              }

              v23 = v22;
              v24 = *(v0 + 64);
              v25 = *(v0 + 48);
              v26 = *&v37[v35];
              v27 = v20;
              v28 = v26;
              v29 = [v23 identifier];
              sub_257ECCCD0();

              sub_257ECCCA0();
              (*v36)(v24, v25);
              v30 = sub_257ECF4C0();

              v31 = [v28 childNodeWithName:v30 recursively:0];

              if (!v31)
              {

                goto LABEL_33;
              }

              type metadata accessor for Plane();
              v32 = swift_dynamicCastClass();
              if (!v32)
              {

                v2 = v31;
                goto LABEL_34;
              }

              [v32 removeFromParentNode];

              ++v17;
              if (v21 == v16)
              {
                goto LABEL_33;
              }
            }
          }
        }

        break;
    }

LABEL_34:
  }

  v33 = *(v0 + 8);

  return v33();
}

void sub_257C49C28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_17:
    v3 = sub_257ED0210();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
  while ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C72E20](v4, a2);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v13 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    objc_allocWithZone(type metadata accessor for Plane());
    v10 = v13;
    v11 = sub_257E51A64(v9);
    [v10 transform];
    [v11 setSimdTransform_];
    [*(v12 + v5) addChildNode_];

    ++v4;
    if (v7 == v3)
    {
      return;
    }
  }

  if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(a2 + 8 * v4 + 32);
  v7 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
}

void sub_257C49DD8(uint64_t a1, unint64_t a2)
{
  v23 = sub_257ECCCF0();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v7 = 0;
    v22 = a2 & 0xC000000000000001;
    v20 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = v3 + 1;
    while (1)
    {
      if (v22)
      {
        v8 = MEMORY[0x259C72E20](v7, a2);
      }

      else
      {
        if (v7 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = v11;
      v13 = i;
      v14 = *(v24 + v20);
      v3 = v9;
      v15 = v14;
      v16 = [v12 identifier];
      sub_257ECCCD0();

      sub_257ECCCA0();
      (*v19)(v5, v23);
      v17 = sub_257ECF4C0();

      v9 = [v15 childNodeWithName:v17 recursively:0];

      if (!v9)
      {
        v9 = v3;
LABEL_16:

LABEL_17:
        return;
      }

      type metadata accessor for Plane();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {

        goto LABEL_16;
      }

      [v18 removeFromParentNode];

      ++v7;
      i = v13;
      if (v10 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

id MAGObjectUnderstandingService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGObjectUnderstandingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGObjectUnderstandingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_257C4A24C(uint64_t (*a1)(id *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 96);
    while (1)
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v18[0] = *(v7 - 8);
      v19 = v11;
      v20 = v10;
      v21 = v9;
      v22 = v8;
      v12 = v18[0];
      v13 = a1(v18);
      if (v3)
      {

        return;
      }

      if (v13)
      {
        break;
      }

      v7 += 10;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v15;
    *(a3 + 48) = v16;
    *(a3 + 64) = v17;
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }
}

id sub_257C4A31C(void **a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECCCF0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v35 - v14;
  v40 = *(a2 + 16);
  if (v40)
  {
    v37 = v5;
    v38 = a3;
    v35 = v8;
    v36 = v6;
    v15 = 0;
    v41 = a2 + 32;
    v44 = v13 + 16;
    v39 = v13;
    v16 = (v13 + 8);
    while (1)
    {
      v43 = v15;
      v17 = *(v41 + 8 * v15);
      v18 = *v42;

      result = [v18 identifier];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v20 = result;
      sub_257ECCCD0();

      if (*(v17 + 16))
      {
        sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
        v21 = sub_257ECF3F0();
        v22 = -1 << *(v17 + 32);
        v23 = v21 & ~v22;
        v45 = v17 + 56;
        if ((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_3:
      v15 = v43 + 1;

      (*v16)(v46, v9);
      if (v15 == v40)
      {
        return 0;
      }
    }

    v24 = ~v22;
    v25 = *(v39 + 72);
    v26 = *(v39 + 16);
    while (1)
    {
      v26(v12, *(v17 + 48) + v25 * v23, v9);
      sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
      v27 = sub_257ECF450();
      v28 = *v16;
      (*v16)(v12, v9);
      if (v27)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v45 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v28(v46, v9);
    v29 = sub_257C4B058(v17, v38);

    if (*(v29 + 16))
    {
      v30 = sub_257C56FFC(v29);

      return v30;
    }

    v31 = v35;
    sub_257ECD4A0();
    v32 = sub_257ECDA20();
    v33 = sub_257ECFBE0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_257BAC000, v32, v33, "Warning: group of found objects is unexpectedly empty", v34, 2u);
      MEMORY[0x259C74820](v34, -1, -1);
    }

    (*(v36 + 8))(v31, v37);
  }

  return 0;
}

id sub_257C4A760(void **a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v74 = a1;
  v64 = sub_257ECDA30();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECCCF0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  *&v81 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6610);
  v13 = MEMORY[0x28223BE20](v75);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v72 = &v62 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v66 = &v62 - v20;
  v21 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(a2 + 64);
  v25 = (v22 + 63) >> 6;
  *&v79 = v6 + 16;
  v73 = v6;
  *&v80 = v6 + 8;
  v76 = a2;

  v27 = 0;
  v69 = a2 + 64;
  v68 = v25;
  v70 = v15;
  while (1)
  {
    if (!v24)
    {
      while (1)
      {
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v28 >= v25)
        {

          return 0;
        }

        v24 = *(v21 + 8 * v28);
        ++v27;
        if (v24)
        {
          v27 = v28;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

LABEL_11:
    v29 = __clz(__rbit64(v24)) | (v27 << 6);
    v30 = v76;
    v31 = *(v76 + 48);
    *&v78 = *(v73 + 72);
    v32 = v72;
    v77 = *(v73 + 16);
    v77(v72, v31 + v78 * v29, v5);
    v33 = *(*(v30 + 56) + 8 * v29);
    v34 = v75;
    *(v32 + *(v75 + 48)) = v33;
    sub_257C0DD14(v32, v15, &unk_27F8F6610);
    v35 = *&v15[*(v34 + 48)];
    v36 = *v74;

    result = [v36 identifier];
    if (!result)
    {
      goto LABEL_31;
    }

    v37 = result;
    v38 = v71;
    sub_257ECCCD0();

    LOBYTE(v37) = sub_257ECCCC0();
    v39 = *v80;
    (*v80)(v38, v5);
    if (v37)
    {

      goto LABEL_22;
    }

    result = [v36 identifier];
    if (!result)
    {
      goto LABEL_32;
    }

    v40 = result;
    sub_257ECCCD0();

    if (*(v35 + 16))
    {
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v41 = sub_257ECF3F0();
      v42 = -1 << *(v35 + 32);
      v43 = v41 & ~v42;
      if ((*(v35 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        break;
      }
    }

LABEL_5:
    v24 &= v24 - 1;
    v39(v81, v5);
    v15 = v70;
    result = sub_257BE4084(v70, &unk_27F8F6610);
    v21 = v69;
    v25 = v68;
  }

  v44 = ~v42;
  while (1)
  {
    v77(v9, *(v35 + 48) + v43 * v78, v5);
    sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
    v45 = sub_257ECF450();
    v39(v9, v5);
    if (v45)
    {
      break;
    }

    v43 = (v43 + 1) & v44;
    if (((*(v35 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v39(v81, v5);

  v15 = v70;
LABEL_22:
  v46 = v65;
  sub_257C0DD14(v15, v65, &unk_27F8F6610);
  v47 = v66;
  v48 = sub_257C0DD14(v46, v66, &unk_27F8F6610);
  MEMORY[0x28223BE20](v48);
  *(&v62 - 2) = v47;
  v49 = v67;
  sub_257C4A24C(sub_257C58AB4, v67, v83);
  v84 = v83[0];
  v85 = v83[1];
  v86 = v83[2];
  v87 = v83[3];
  v88 = v83[4];
  v50 = *&v83[0];
  if (*&v83[0])
  {
    v81 = v88;
    v80 = v87;
    v79 = v86;
    v78 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_257ED6D30;
    *(v51 + 32) = v50;
    v52 = v79;
    *(v51 + 48) = v78;
    *(v51 + 64) = v52;
    v53 = v81;
    *(v51 + 80) = v80;
    *(v51 + 96) = v53;
    v54 = *(v47 + *(v75 + 48));
    v55 = v50;
    v56 = sub_257C4B058(v54, v49);
    v82 = v51;
    sub_257EB0DAC(v56);
    v57 = sub_257C56FFC(v82);

    sub_257BE4084(&v84, &qword_27F8F9C90);
    sub_257BE4084(v47, &unk_27F8F6610);
    return v57;
  }

  else
  {
    v58 = v62;
    sub_257ECD4A0();
    v59 = sub_257ECDA20();
    v60 = sub_257ECFBE0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_257BAC000, v59, v60, "Warning: could not find DetectedObject expected to match given ID", v61, 2u);
      MEMORY[0x259C74820](v61, -1, -1);
    }

    (*(v63 + 8))(v58, v64);
    sub_257BE4084(v47, &unk_27F8F6610);
    return 0;
  }
}

uint64_t sub_257C4B058(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a2;
  v15 = &v16;
  v8 = sub_257C83814(sub_257C58A70, v14, a1);
  if (*(v8 + 16) != *(a1 + 16))
  {
    sub_257ECD4A0();

    v9 = sub_257ECDA20();
    v10 = sub_257ECFBE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218496;
      v12 = *(a1 + 16);
      *(v11 + 4) = v12 - *(v8 + 16);
      *(v11 + 12) = 2048;
      *(v11 + 14) = v12;

      *(v11 + 22) = 2048;
      *(v11 + 24) = *(v8 + 16);

      _os_log_impl(&dword_257BAC000, v9, v10, "Warning: %ld/%ld object IDs did not have a corresponding DetectedObject. Continuing with %ld found objects.", v11, 0x20u);
      MEMORY[0x259C74820](v11, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

uint64_t sub_257C4B258(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C4B350;

  return v6(a1);
}

uint64_t sub_257C4B350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257C4B448(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_257ED07B0();
  Control.rawValue.getter();
  sub_257ECF5D0();

  v5 = sub_257ED0800();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    sub_257C52214(a2, v7, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
    goto LABEL_58;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEA0000000000726FLL;
    v10 = 0x746361466D6F6F7ALL;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD000000000000011;
        v9 = 0x8000000257EF7780;
        break;
      case 2:
        v10 = 0x4379616C70736964;
        v9 = 0xEF74736172746E6FLL;
        break;
      case 3:
        v9 = 0xE700000000000000;
        v10 = 0x737265746C6966;
        break;
      case 4:
        v9 = 0xEA00000000007468;
        v10 = 0x67696C6873616C66;
        break;
      case 5:
        v10 = 0x6544656C706F6570;
        v9 = 0xEF6E6F6974636574;
        break;
      case 6:
        v10 = 0x636F4C7375636F66;
        v9 = 0xE90000000000006BLL;
        break;
      case 7:
        v10 = 0x79546172656D6163;
        v9 = 0xEA00000000006570;
        break;
      case 8:
        v10 = 0x4D65727574706163;
        v9 = 0xEB0000000065646FLL;
        break;
      case 9:
        v10 = 0x6F69746365746564;
        v9 = 0xED000065646F4D6ELL;
        break;
      case 0xA:
        v11 = 1919905636;
        goto LABEL_18;
      case 0xB:
        v10 = 0xD000000000000013;
        v9 = 0x8000000257EF74D0;
        break;
      case 0xC:
        v10 = 0x7061436567616D69;
        v9 = 0xEC0000006E6F6974;
        break;
      case 0xD:
        v9 = 0xEA00000000006B61;
        v10 = 0x657053746E696F70;
        break;
      case 0xE:
        v11 = 1954047348;
LABEL_18:
        v10 = v11 | 0x6574654400000000;
        v9 = 0xED00006E6F697463;
        break;
      case 0xF:
        v9 = 0xEA00000000007365;
        v10 = 0x6974697669746361;
        break;
      default:
        break;
    }

    v12 = 0xEA0000000000726FLL;
    v13 = 0x746361466D6F6F7ALL;
    switch(a2)
    {
      case 1:
        v12 = 0x8000000257EF7780;
        if (v10 == 0xD000000000000011)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      case 2:
        v12 = 0xEF74736172746E6FLL;
        if (v10 != 0x4379616C70736964)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 3:
        v12 = 0xE700000000000000;
        if (v10 != 0x737265746C6966)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 4:
        v12 = 0xEA00000000007468;
        if (v10 != 0x67696C6873616C66)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 5:
        v12 = 0xEF6E6F6974636574;
        if (v10 != 0x6544656C706F6570)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 6:
        v12 = 0xE90000000000006BLL;
        if (v10 != 0x636F4C7375636F66)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 7:
        v12 = 0xEA00000000006570;
        if (v10 != 0x79546172656D6163)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 8:
        v12 = 0xEB0000000065646FLL;
        if (v10 != 0x4D65727574706163)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 9:
        v14 = 0x6F69746365746564;
        v15 = 0x65646F4D6ELL;
        goto LABEL_31;
      case 10:
        v13 = 0x65746544726F6F64;
        v12 = 0xED00006E6F697463;
        goto LABEL_48;
      case 11:
        v12 = 0x8000000257EF74D0;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 12:
        v12 = 0xEC0000006E6F6974;
        if (v10 != 0x7061436567616D69)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 13:
        v12 = 0xEA00000000006B61;
        if (v10 != 0x657053746E696F70)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 14:
        v14 = 0x6574654474786574;
        v15 = 0x6E6F697463;
LABEL_31:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v10 != v14)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 15:
        v12 = 0xEA00000000007365;
        if (v10 != 0x6974697669746361)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      default:
LABEL_48:
        if (v10 != v13)
        {
          goto LABEL_50;
        }

LABEL_49:
        if (v9 != v12)
        {
LABEL_50:
          v16 = sub_257ED0640();

          if (v16)
          {
            goto LABEL_57;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
        }

LABEL_57:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_58:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_257C4BA10(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v7 = sub_257ED0800();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_257ECF500();
      v13 = v12;
      if (v11 == sub_257ECF500() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_257ED0640();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_257C52814(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_257C4BBBC(_OWORD *a1, id *a2)
{
  v5 = sub_257ECCCF0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = *v2;
  sub_257ED07B0();
  v14 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  v60 = *a2;
  result = [v60 identifier];
  if (result)
  {
    v16 = result;
    v52 = v2;
    v53 = a2;
    v54 = a1;
    sub_257ECCCD0();

    sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
    sub_257ECF400();
    v17 = *(v6 + 8);
    v17(v12, v5);
    v18 = sub_257ED0800();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    v56 = v13 + 56;
    if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_10:
      v36 = v52;
      v37 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *v36;
      v39 = v53;
      sub_257C588B0(v53, v63);
      sub_257C529FC(v39, v37, isUniquelyReferenced_nonNull_native);
      *v36 = v64;
      v40 = *(v39 + 48);
      v41 = v54;
      v54[2] = *(v39 + 32);
      v41[3] = v40;
      v41[4] = *(v39 + 64);
      v42 = *(v39 + 16);
      result = 1;
      *v41 = *v39;
      v41[1] = v42;
      return result;
    }

    v57 = v13;
    v58 = v5;
    v55 = ~v19;
    while (1)
    {
      v21 = *(v13 + 48);
      v62 = v20;
      v22 = *(v21 + 80 * v20);
      result = [v22 v14[273]];
      if (!result)
      {
        break;
      }

      v23 = result;
      v24 = v61;
      sub_257ECCCD0();

      v25 = sub_257ECCCA0();
      v27 = v26;
      v28 = v58;
      v17(v24, v58);
      v29 = v14;
      result = [v60 v14[273]];
      if (!result)
      {
        __break(1u);
        break;
      }

      v30 = result;
      v31 = v59;
      sub_257ECCCD0();

      v32 = sub_257ECCCA0();
      v34 = v33;
      v17(v31, v28);
      if (v25 == v32 && v27 == v34)
      {

LABEL_12:
        sub_257C5890C(v53);
        v43 = *(v57 + 48) + 80 * v62;
        v44 = *v43;
        v45 = *(v43 + 16);
        v46 = *(v43 + 32);
        v47 = *(v43 + 48);
        v48 = *(v43 + 64);
        v49 = v54;
        *v54 = v44;
        v49[1] = v45;
        v49[2] = v46;
        v49[3] = v47;
        v49[4] = v48;
        v50 = v44;
        return 0;
      }

      v35 = sub_257ED0640();

      if (v35)
      {
        goto LABEL_12;
      }

      v20 = (v62 + 1) & v55;
      v13 = v57;
      v14 = v29;
      if (((*(v56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_257C4BFF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  v33 = a2;
  v11 = sub_257ECF3F0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
      v21 = sub_257ECF450();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_257C52F58(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_257C4C2D0(_OWORD *a1, __int128 *a2)
{
  v3 = a2;
  v65 = a1;
  v4 = a2[3];
  v87 = a2[2];
  v88 = v4;
  v89[0] = a2[4];
  *(v89 + 12) = *(a2 + 76);
  v5 = a2[1];
  v85 = *a2;
  v86 = v5;
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v63 - v10;
  v64 = v2;
  v11 = *v2;
  v12 = *(v3 + 48);
  v82[2] = *(v3 + 32);
  v82[3] = v12;
  v83[0] = *(v3 + 64);
  *(v83 + 12) = *(v3 + 76);
  v13 = *(v3 + 16);
  v82[0] = *v3;
  v82[1] = v13;
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v80);
  v14 = sub_257ED0800();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  v76 = v11 + 56;
  if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_21:
    v48 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = *v48;
    sub_257C58DDC(v3, v82);
    sub_257C531FC(v3, v16, isUniquelyReferenced_nonNull_native);
    *v48 = *&v80[0];
    v50 = *(v3 + 48);
    v51 = v65;
    v65[2] = *(v3 + 32);
    v51[3] = v50;
    v51[4] = *(v3 + 64);
    *(v51 + 76) = *(v3 + 76);
    v52 = *(v3 + 16);
    result = 1;
    *v51 = *v3;
    v51[1] = v52;
    return result;
  }

  v75 = ~v15;
  v68 = (v7 + 8);
  v69 = v6;
  v66 = v11;
  v67 = v3;
  while (1)
  {
    v17 = *(v11 + 48);
    v74 = 96 * v16;
    v18 = (v17 + 96 * v16);
    v19 = v18[1];
    v80[0] = *v18;
    v80[1] = v19;
    v21 = v18[3];
    v20 = v18[4];
    v22 = v18[2];
    *(v81 + 12) = *(v18 + 76);
    v80[3] = v21;
    v81[0] = v20;
    v80[2] = v22;
    memmove(v82, v18, 0x5CuLL);
    v83[4] = v87;
    v83[5] = v88;
    v84[0] = v89[0];
    *(v84 + 12) = *(v89 + 12);
    v83[2] = v85;
    v83[3] = v86;
    v23 = *&v80[0];
    if ((HIDWORD(v80[0]) & 0x80000000) == 0)
    {
      break;
    }

    if ((*(v3 + 12) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v43 = *(v3 + 8);
    v44 = *v3;
    v45 = *(v80 + 2);
    sub_257C58DDC(v80, v78);
    sub_257C58DDC(v3, v78);
    sub_257C58DDC(v80, v78);
    sub_257C93E84(v23, v44);
    v47 = v46;
    sub_257C58E38(v80);
    sub_257BE4084(v82, &qword_27F8F6670);
    if ((v47 & 1) != 0 && v45 == v43)
    {
LABEL_22:
      sub_257C58E38(v3);
      v53 = (*(v11 + 48) + v74);
      v54 = v53[1];
      v78[0] = *v53;
      v78[1] = v54;
      v56 = v53[3];
      v55 = v53[4];
      v57 = v53[2];
      *(v79 + 12) = *(v53 + 76);
      v78[3] = v56;
      v79[0] = v55;
      v78[2] = v57;
      v58 = v53[1];
      v59 = v65;
      *v65 = *v53;
      v59[1] = v58;
      v60 = v53[2];
      v61 = v53[3];
      v62 = v53[4];
      *(v59 + 76) = *(v53 + 76);
      v59[3] = v61;
      v59[4] = v62;
      v59[2] = v60;
      sub_257C58DDC(v78, &v77);
      return 0;
    }

LABEL_5:
    v16 = (v16 + 1) & v75;
    if (((*(v76 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((*(v3 + 8) & 0x8000000000000000) != 0)
  {
LABEL_4:
    sub_257C58DDC(v3, v78);
    sub_257C58DDC(v80, v78);
    sub_257BE4084(v82, &qword_27F8F6670);
    goto LABEL_5;
  }

  v24 = *(&v81[1] + 2);
  v25 = *(v3 + 88);
  v72 = *(v3 + 80);
  v73 = *&v81[1];
  v26 = *v3;
  sub_257C58DDC(v80, v78);
  sub_257C58DDC(v3, v78);
  sub_257C58DDC(v80, v78);
  sub_257C58DDC(v3, v78);
  sub_257C58DDC(v80, v78);
  result = [v23 identifier];
  if (!result)
  {
    goto LABEL_24;
  }

  v28 = result;
  v29 = v71;
  sub_257ECCCD0();

  v30 = sub_257ECCCA0();
  v32 = v31;
  v33 = *v68;
  v34 = v29;
  v35 = v69;
  (*v68)(v34, v69);
  result = [v26 identifier];
  if (result)
  {
    v36 = result;
    v37 = v70;
    sub_257ECCCD0();

    v38 = sub_257ECCCA0();
    v40 = v39;
    v33(v37, v35);
    if (v30 == v38 && v32 == v40)
    {

      v11 = v66;
      v3 = v67;
    }

    else
    {
      v41 = sub_257ED0640();

      v11 = v66;
      v3 = v67;
      if ((v41 & 1) == 0)
      {
        sub_257BE4084(v82, &qword_27F8F6670);
        sub_257C58E38(v80);
        sub_257C58E38(v3);
        sub_257C58E38(v80);
        goto LABEL_5;
      }
    }

    v42 = sub_257C943E4(v73, v72);
    sub_257BE4084(v82, &qword_27F8F6670);
    sub_257C58E38(v80);
    sub_257C58E38(v3);
    sub_257C58E38(v80);
    if ((v42 & 1) != 0 && v24 == v25)
    {
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_257C4C894(_OWORD *a1, uint64_t a2)
{
  v5 = sub_257ECCCF0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = *v2;
  sub_257ED07B0();
  v68 = *a2;
  result = [v68 identifier];
  if (result)
  {
    v15 = result;
    v57 = v2;
    v59 = a1;
    v16 = *(a2 + 88);
    v58 = a2;
    v17 = *(a2 + 80);
    sub_257ECCCD0();

    sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
    sub_257ECF400();
    v20 = *(v6 + 8);
    v19 = v6 + 8;
    v18 = v20;
    v20(v12, v5);
    v60 = v17;
    sub_257C9C120(v73, v17);
    sub_257ED07E0();
    v21 = sub_257ED0800();
    v22 = -1 << *(v13 + 32);
    v23 = v21 & ~v22;
    v66 = v13 + 56;
    if ((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v62 = ~v22;
      v64 = v5;
      v63 = v19;
      v65 = v13;
      do
      {
        v24 = *(v13 + 48);
        v70 = v23;
        v61 = 96 * v23;
        v25 = v24 + 96 * v23;
        v26 = *(v25 + 80);
        v27 = *(v25 + 88);
        v28 = *v25;
        v71 = v26;

        v72 = v28;
        result = [v28 identifier];
        if (!result)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v29 = result;
        v30 = v69;
        sub_257ECCCD0();

        v31 = sub_257ECCCA0();
        v33 = v32;
        v18(v30, v5);
        result = [v68 identifier];
        if (!result)
        {
          __break(1u);
          goto LABEL_17;
        }

        v34 = result;
        v35 = v67;
        sub_257ECCCD0();

        v36 = sub_257ECCCA0();
        v38 = v37;
        v18(v35, v5);
        if (v31 == v36 && v33 == v38)
        {

          v13 = v65;
        }

        else
        {
          v39 = sub_257ED0640();

          v13 = v65;
          if ((v39 & 1) == 0)
          {

            goto LABEL_5;
          }
        }

        v40 = sub_257C943E4(v71, v60);

        if ((v40 & 1) != 0 && v27 == v16)
        {
          sub_257C58A10(v58);
          v41 = *(v13 + 48) + v61;
          v42 = *v41;
          v43 = *(v41 + 16);
          v44 = *(v41 + 32);
          v45 = *(v41 + 48);
          v46 = *(v41 + 64);
          v47 = *(v41 + 80);
          v48 = *(v41 + 88);
          v49 = v59;
          *v59 = v42;
          v49[1] = v43;
          v49[2] = v44;
          v49[3] = v45;
          v49[4] = v46;
          *(v49 + 10) = v47;
          *(v49 + 22) = v48;
          v50 = v42;

          return 0;
        }

LABEL_5:
        v23 = (v70 + 1) & v62;
        v5 = v64;
      }

      while (((*(v66 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
    }

    v51 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = *v51;
    v53 = v58;
    sub_257C589B4(v58, v73);
    sub_257C537C0(v53, v23, isUniquelyReferenced_nonNull_native);
    *v51 = v74;
    v54 = v53[3];
    v55 = v59;
    v59[2] = v53[2];
    v55[3] = v54;
    v55[4] = v53[4];
    *(v55 + 76) = *(v53 + 76);
    v56 = v53[1];
    result = 1;
    *v55 = *v53;
    v55[1] = v56;
  }

  else
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_257C4CDB4(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for Occupant();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v22 = &v22 - v9;
  v23 = v2;
  v10 = *v2;
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v11 = sub_257ED0800();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_257C58770(*(v10 + 48) + v15 * v13, v8, type metadata accessor for Occupant);
      if (sub_257ECCCC0())
      {
        v16 = sub_257ECCC40();
        sub_257C58710(v8, type metadata accessor for Occupant);
        if (v16)
        {
          sub_257C58710(a2, type metadata accessor for Occupant);
          sub_257C58770(*(v10 + 48) + v15 * v13, v24, type metadata accessor for Occupant);
          return 0;
        }
      }

      else
      {
        sub_257C58710(v8, type metadata accessor for Occupant);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v18 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v22;
  sub_257C58770(a2, v22, type metadata accessor for Occupant);
  v25 = *v18;
  sub_257C53C54(v20, v13, isUniquelyReferenced_nonNull_native);
  v21 = v24;
  *v18 = v25;
  sub_257C587D8(a2, v21);
  return 1;
}

uint64_t sub_257C4D080(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_257ED07B0();
  sub_257ECF5D0();
  v8 = sub_257ED0800();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_257ED0640() & 1) != 0)
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

    sub_257C53F00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_257C4D224(_BYTE *a1, char a2, uint64_t *a3)
{
  v5 = v3;
  v8 = *v5;
  sub_257ED07B0();
  v9 = a2 & 1;
  MEMORY[0x259C732E0](v9);
  v10 = sub_257ED0800();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48);
      if (*(v14 + v12) == v9)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v9) = *(v14 + v12);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    sub_257C54080(v9, v12, isUniquelyReferenced_nonNull_native, a3);
    *v5 = v17;
    result = 1;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_257C4D368(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_257ED07B0();
  MEMORY[0x259C732E0](a2);
  v8 = sub_257ED0800();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_257C52DE8(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_257C4D488(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x259C732B0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_257C541F8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

id sub_257C4D584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65F0);
  v2 = *v0;
  v3 = sub_257ED0290();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

id sub_257C4D6D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65E0);
  v2 = *v0;
  v3 = sub_257ED0290();
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 16);
        v21 = *(v18 + 32);
        v22 = *(v18 + 48);
        v23 = *(v18 + 64);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 16) = v20;
        *(v24 + 32) = v21;
        *(v24 + 48) = v22;
        *(v24 + 64) = v23;
        result = v19;
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

void *sub_257C4D86C()
{
  v1 = v0;
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0);
  v6 = *v0;
  v7 = sub_257ED0290();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_257C4DAA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6678);
  v2 = *v0;
  v3 = sub_257ED0290();
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
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v25[12] = *(v18 + 76);
        v24[3] = v20;
        *v25 = v21;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x5CuLL);
        result = sub_257C58DDC(v24, &v23);
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

void *sub_257C4DC34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6608);
  v2 = *v0;
  v3 = sub_257ED0290();
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
        v17 = 96 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 16);
        v21 = *(v18 + 32);
        v22 = *(v18 + 48);
        v23 = *(v18 + 64);
        v24 = *(v18 + 80);
        v25 = *(v18 + 88);
        v26 = *(v4 + 48) + v17;
        *v26 = *v18;
        *(v26 + 16) = v20;
        *(v26 + 32) = v21;
        *(v26 + 48) = v22;
        *(v26 + 64) = v23;
        *(v26 + 80) = v24;
        *(v26 + 88) = v25;
        v27 = v19;
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

void *sub_257C4DDBC()
{
  v1 = v0;
  v2 = type metadata accessor for Occupant();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580);
  v6 = *v0;
  v7 = sub_257ED0290();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_257C58770(*(v6 + 48) + v21, v5, type metadata accessor for Occupant);
        result = sub_257C587D8(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_257C4DFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640);
  v2 = *v0;
  v3 = sub_257ED0290();
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

void *sub_257C4E14C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_257ED0290();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_257C4E290()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548);
  v2 = *v0;
  v3 = sub_257ED0290();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

uint64_t sub_257C4E3D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F64E0);
  result = sub_257ED02A0();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_257C4E7EC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65F0);
  result = sub_257ED02A0();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_257ECF500();
      sub_257ED07B0();
      v17 = v16;
      sub_257ECF5D0();
      v18 = sub_257ED0800();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_257C4EA40()
{
  v1 = v0;
  v40 = sub_257ECCCF0();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65E0);
  result = sub_257ED02A0();
  v6 = result;
  if (*(v4 + 16))
  {
    v37 = v0;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v38 = (v2 + 8);
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v45 = (v11 - 1) & v11;
LABEL_15:
      v21 = v4;
      v22 = *(v4 + 48) + 80 * (v18 | (v7 << 6));
      v23 = *v22;
      v24 = *(v22 + 16);
      v43 = *(v22 + 32);
      v44 = v24;
      v25 = *(v22 + 48);
      v41 = *(v22 + 64);
      v42 = v25;
      sub_257ED07B0();
      v26 = v23;
      result = [v26 identifier];
      if (!result)
      {
        goto LABEL_30;
      }

      v27 = result;
      v28 = v39;
      sub_257ECCCD0();

      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v29 = v40;
      sub_257ECF400();
      (*v38)(v28, v29);
      result = sub_257ED0800();
      v30 = -1 << *(v6 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v13 + 8 * v32);
          if (v36 != -1)
          {
            v14 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 80 * v14;
      *v15 = v26;
      v16 = v43;
      *(v15 + 16) = v44;
      *(v15 + 32) = v16;
      v17 = v41;
      *(v15 + 48) = v42;
      *(v15 + 64) = v17;
      ++*(v6 + 16);
      v4 = v21;
      v11 = v45;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v1 = v37;
        goto LABEL_27;
      }

      v20 = *(v8 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_257C4EDD4()
{
  v1 = v0;
  v32 = sub_257ECCCF0();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0);
  v6 = sub_257ED02A0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      result = sub_257ECF3F0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_257C4F0F0()
{
  v1 = v0;
  v47 = sub_257ECCCF0();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6678);
  result = sub_257ED02A0();
  v6 = result;
  if (*(v4 + 16))
  {
    v43 = v0;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v45 = (v2 + 8);
    v12 = result + 56;
    v44 = result;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v53 = (v10 - 1) & v10;
LABEL_15:
      v22 = *(v4 + 48) + 96 * (v19 | (v7 << 6));
      v23 = *(v22 + 16);
      v55 = *v22;
      v24 = *(v22 + 32);
      v50 = *(v22 + 48);
      v51 = v24;
      v52 = v23;
      v25 = *(v22 + 64);
      v48 = *(v22 + 72);
      v49 = v25;
      v26 = *(v22 + 80);
      v54 = *(v22 + 88);
      sub_257ED07B0();
      if ((*(&v55 + 1) & 0x8000000000000000) != 0)
      {
        v34 = v55;
        MEMORY[0x259C732E0](1);

        v6 = v44;
        sub_257C9BE54(v56, v34);
        v33 = v54;
      }

      else
      {
        v27 = v55;
        MEMORY[0x259C732E0](0);
        v28 = v27;

        result = [v28 identifier];
        if (!result)
        {
          goto LABEL_33;
        }

        v29 = result;
        v30 = v26;
        v31 = v46;
        sub_257ECCCD0();

        sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
        v32 = v47;
        sub_257ECF400();
        (*v45)(v31, v32);
        v26 = v30;
        sub_257C9C120(v56, v30);
        v33 = v54;
      }

      sub_257ED07E0();
      result = sub_257ED0800();
      v35 = -1 << *(v6 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v12 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v14 = v55;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v12 + 8 * v37);
          if (v41 != -1)
          {
            v13 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v36) & ~*(v12 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v14 = v55;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v6 + 48) + 96 * v13;
      v16 = v52;
      *v15 = v14;
      *(v15 + 16) = v16;
      v17 = v50;
      *(v15 + 32) = v51;
      *(v15 + 48) = v17;
      v18 = v48;
      *(v15 + 64) = v49;
      *(v15 + 72) = v18;
      *(v15 + 80) = v26;
      *(v15 + 88) = v33;
      ++*(v6 + 16);
      v10 = v53;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v1 = v43;
        goto LABEL_30;
      }

      v21 = *(v4 + 56 + 8 * v7);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v53 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_257C4F54C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6608);
  result = sub_257ED02A0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_257C52014(v19, v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = (*(v2 + 48) + 96 * (v10 | (v5 << 6)));
      v14 = v13[1];
      v19[0] = *v13;
      v19[1] = v14;
      v16 = v13[3];
      v15 = v13[4];
      v17 = v13[2];
      *&v20[12] = *(v13 + 76);
      v19[3] = v16;
      *v20 = v15;
      v19[2] = v17;
      sub_257C589B4(v19, &v18);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_257C4F6B8()
{
  v1 = v0;
  v2 = type metadata accessor for Occupant();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580);
  result = sub_257ED02A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_257C58770(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for Occupant);
      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECF400();
      result = sub_257ED0800();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_257C587D8(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_257C4F9C8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640);
  result = sub_257ED02A0();
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
      sub_257ED07B0();

      sub_257ECF5D0();
      result = sub_257ED0800();
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

uint64_t sub_257C4FC00(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_257ED02A0();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_257ED07B0();
      MEMORY[0x259C732E0](v17);
      result = sub_257ED0800();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_257C4FE18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548);
  result = sub_257ED02A0();
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
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x259C732B0](*(v4 + 40), v15, 4);
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

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_257C5000C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F64E0);
  result = sub_257ED02A0();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
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

uint64_t sub_257C50458()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65F0);
  result = sub_257ED02A0();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_257ECF500();
      sub_257ED07B0();
      sub_257ECF5D0();
      v17 = sub_257ED0800();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
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

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}