uint64_t sub_1B0499EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0499EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0499F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0499FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A168()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A2D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A3B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A3F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A4C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A5A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A7E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049A974(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_1B049AB30(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 20)], a2, a2, v4);
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 24)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1B049ACC4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B049ADE8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049AEE4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s19CachedMailboxValuesVMa();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B049AFFC(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s19CachedMailboxValuesVMa();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049B104(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s31PreviouslyDownloadedMessageDataVMa();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B049B21C(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s31PreviouslyDownloadedMessageDataVMa();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049B30C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B049B424(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B049B514(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v6 = *a1;
    v7 = -1;
    if ((v6 & 0xFFFFFFFE) != 0)
    {
      v7 = v6 & 1 | ((v6 & 0xFE) - 2) & 0x7FFFFFFF;
    }

    return (v7 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

_BYTE *sub_1B049B644(_BYTE *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 254)
  {
    *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049B758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B798()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B7D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B818()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B91C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B95C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049B9F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BA34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BACC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BB0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BBA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BBE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BCA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BD40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BD80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BE18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BE58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BEF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BF30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049BFC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C048()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C088()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C0C8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B049C108()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B049C148()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C1E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C220()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C2B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C2F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C3D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C4A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C56C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C6DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C71C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C7B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C7F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C8B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C8F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C960()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049C9A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CA38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CA78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CB10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CB50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CBE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CC28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CCC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CD00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CDC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CE5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CE9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CF34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CF74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049CFB4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B049CFF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D034()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D074()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D0B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D0F4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B049D134()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B049D1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D20C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D2A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D2E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D37C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D3BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D454()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D494()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D558()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D5F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D6C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D708()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D7A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D7E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D8A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D8E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049D920()
{
  v9 = type metadata accessor for MessageMetadata(0);
  v1 = *(*(v9 - 8) + 80);
  v7 = (v1 + 16) & ~v1;
  v8 = v7 + *(*(v9 - 8) + 64);
  v2 = *(v0 + v7 + 32);

  v10 = *(v9 + 32);
  v3 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v7 + v10, 1))
  {
    v4 = sub_1B0E443C8();
    (*(*(v4 - 8) + 8))(v6 + v7 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1B049DA80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049DAC0()
{
  v9 = type metadata accessor for MessageMetadata(0);
  v1 = *(*(v9 - 8) + 80);
  v7 = (v1 + 16) & ~v1;
  v8 = v7 + *(*(v9 - 8) + 64);
  v2 = *(v0 + v7 + 32);

  v10 = *(v9 + 32);
  v3 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v7 + v10, 1))
  {
    v4 = sub_1B0E443C8();
    (*(*(v4 - 8) + 8))(v6 + v7 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1B049DC20()
{
  v9 = type metadata accessor for MessageMetadata(0);
  v1 = *(*(v9 - 8) + 80);
  v7 = (v1 + 16) & ~v1;
  v8 = v7 + *(*(v9 - 8) + 64);
  v2 = *(v0 + v7 + 32);

  v10 = *(v9 + 32);
  v3 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v7 + v10, 1))
  {
    v4 = sub_1B0E443C8();
    (*(*(v4 - 8) + 8))(v6 + v7 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1B049DDD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049DE18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049DEB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049DEF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049DF88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049DFC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E060()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E0A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E1FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E23C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E2D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E314()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E3AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E3EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E484()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E4C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E504()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B049E5D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E6FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E794()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E7D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E86C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E8AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E944()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049E984()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EA1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EA5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EB20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EBB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EBF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EC90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049ECD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049ED10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049ED50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049ED90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EDD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EE3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EED4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EF14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EFAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049EFEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F0C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F15C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F19C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F260()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F2F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F338()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F3D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F410()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F4D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F510()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F57C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F6EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F72C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F7C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F89C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F8DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049F9A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FA38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FA78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FB10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FB50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FB90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FBD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FC10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FC50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FCBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FD28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FDC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FE00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FE98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FED8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FF70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B049FFB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0048()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0088()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A014C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A01E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0224()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A02BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A02FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A03D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0414()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0454()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0494()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A04D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A05AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A071C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A075C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A07F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A08CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A090C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A09D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0A68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0AA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0B40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0B80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0C18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0C58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0CD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0D18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0D58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0D98()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04A0DD8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04A0E18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0E84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0F88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A0FC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1060()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A10A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1178()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1210()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1250()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1314()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A13AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A13EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1484()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A14C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A155C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A159C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1674()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A170C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A174C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A178C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A17CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A180C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A184C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A18B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A19BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A19FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1A94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1AD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1B6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1BAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1C44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1C84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1D48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1DE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1E20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1EB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1EF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1F90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A1FD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2050()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A20D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2110()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04A217C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2214()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2254()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A22EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A232C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A23C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2404()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A249C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A24DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A25A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A27E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A28A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A28E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2968()
{
  v46 = type metadata accessor for InProgressMessageDownload.Completed();
  v47 = *(v46 - 1);
  v1 = *(v47 + 80);
  v48 = (v1 + 16) & ~v1;
  v49 = v48 + *(v47 + 64);
  v50 = v1 | 7;
  if (*(v0 + v48 + 184) != 255)
  {
    v43 = v45 + v48;
    v2 = *(v45 + v48 + 8);
    v3 = *(v45 + v48 + 16);
    v4 = *(v45 + v48 + 24);
    v5 = *(v45 + v48 + 32);
    v6 = *(v45 + v48 + 40);
    v7 = *(v45 + v48 + 48);
    v8 = *(v45 + v48 + 56);
    v9 = *(v45 + v48 + 64);
    v10 = *(v45 + v48 + 72);
    v11 = *(v45 + v48 + 80);
    v12 = *(v45 + v48 + 88);
    v13 = *(v45 + v48 + 96);
    v14 = *(v45 + v48 + 104);
    v15 = *(v45 + v48 + 112);
    v16 = *(v45 + v48 + 120);
    v17 = *(v45 + v48 + 128);
    v18 = *(v45 + v48 + 136);
    v19 = *(v45 + v48 + 144);
    v20 = *(v45 + v48 + 152);
    v21 = *(v45 + v48 + 160);
    v22 = *(v45 + v48 + 168);
    v23 = *(v45 + v48 + 176);
    v24 = *(v45 + v48 + 184);
    v44 = &v33;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v41 = v45 + v48 + v46[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v41);
  }

  v39 = 0;
  v26 = *(v41 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  v40 = v45 + v48 + v46[7];
  v27 = type metadata accessor for MessageHeader();
  if (!(*(*(v27 - 8) + 48))(v40, 1))
  {
    v28 = sub_1B0E443C8();
    (*(*(v28 - 8) + 8))(v40);
  }

  v29 = v46[9];
  v34 = v45 + v48;
  v30 = *(v45 + v48 + v29);

  v31 = *(v34 + v46[10]);

  v35 = v34 + v46[11];
  v36 = sub_1B0E443C8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if (!(*(v37 + 48))(v35, 1))
  {
    (*(v37 + 8))(v35, v36);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04A2D44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2DB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2E48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2E88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2F20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2F60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A2FF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3038()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A30D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3110()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A31D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A326C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A32AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3344()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A341C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A345C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A349C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A34DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A351C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A355C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A359C()
{
  v46 = type metadata accessor for InProgressMessageDownload.Completed();
  v47 = *(v46 - 1);
  v1 = *(v47 + 80);
  v48 = (v1 + 16) & ~v1;
  v49 = v48 + *(v47 + 64);
  v50 = v1 | 7;
  if (*(v0 + v48 + 184) != 255)
  {
    v43 = v45 + v48;
    v2 = *(v45 + v48 + 8);
    v3 = *(v45 + v48 + 16);
    v4 = *(v45 + v48 + 24);
    v5 = *(v45 + v48 + 32);
    v6 = *(v45 + v48 + 40);
    v7 = *(v45 + v48 + 48);
    v8 = *(v45 + v48 + 56);
    v9 = *(v45 + v48 + 64);
    v10 = *(v45 + v48 + 72);
    v11 = *(v45 + v48 + 80);
    v12 = *(v45 + v48 + 88);
    v13 = *(v45 + v48 + 96);
    v14 = *(v45 + v48 + 104);
    v15 = *(v45 + v48 + 112);
    v16 = *(v45 + v48 + 120);
    v17 = *(v45 + v48 + 128);
    v18 = *(v45 + v48 + 136);
    v19 = *(v45 + v48 + 144);
    v20 = *(v45 + v48 + 152);
    v21 = *(v45 + v48 + 160);
    v22 = *(v45 + v48 + 168);
    v23 = *(v45 + v48 + 176);
    v24 = *(v45 + v48 + 184);
    v44 = &v33;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v41 = v45 + v48 + v46[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v41);
  }

  v39 = 0;
  v26 = *(v41 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  v40 = v45 + v48 + v46[7];
  v27 = type metadata accessor for MessageHeader();
  if (!(*(*(v27 - 8) + 48))(v40, 1))
  {
    v28 = sub_1B0E443C8();
    (*(*(v28 - 8) + 8))(v40);
  }

  v29 = v46[9];
  v34 = v45 + v48;
  v30 = *(v45 + v48 + v29);

  v31 = *(v34 + v46[10]);

  v35 = v34 + v46[11];
  v36 = sub_1B0E443C8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if (!(*(v37 + 48))(v35, 1))
  {
    (*(v37 + 8))(v35, v36);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04A3978()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3A10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3A50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3AE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3B28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3BC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3C00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3CD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3D9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3E34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3E74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3F0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3F4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A3FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A400C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A404C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A408C()
{
  v46 = type metadata accessor for InProgressMessageDownload.Completed();
  v47 = *(v46 - 1);
  v1 = *(v47 + 80);
  v48 = (v1 + 16) & ~v1;
  v49 = v48 + *(v47 + 64);
  v50 = v1 | 7;
  if (*(v0 + v48 + 184) != 255)
  {
    v43 = v45 + v48;
    v2 = *(v45 + v48 + 8);
    v3 = *(v45 + v48 + 16);
    v4 = *(v45 + v48 + 24);
    v5 = *(v45 + v48 + 32);
    v6 = *(v45 + v48 + 40);
    v7 = *(v45 + v48 + 48);
    v8 = *(v45 + v48 + 56);
    v9 = *(v45 + v48 + 64);
    v10 = *(v45 + v48 + 72);
    v11 = *(v45 + v48 + 80);
    v12 = *(v45 + v48 + 88);
    v13 = *(v45 + v48 + 96);
    v14 = *(v45 + v48 + 104);
    v15 = *(v45 + v48 + 112);
    v16 = *(v45 + v48 + 120);
    v17 = *(v45 + v48 + 128);
    v18 = *(v45 + v48 + 136);
    v19 = *(v45 + v48 + 144);
    v20 = *(v45 + v48 + 152);
    v21 = *(v45 + v48 + 160);
    v22 = *(v45 + v48 + 168);
    v23 = *(v45 + v48 + 176);
    v24 = *(v45 + v48 + 184);
    v44 = &v33;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v41 = v45 + v48 + v46[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v41);
  }

  v39 = 0;
  v26 = *(v41 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  v40 = v45 + v48 + v46[7];
  v27 = type metadata accessor for MessageHeader();
  if (!(*(*(v27 - 8) + 48))(v40, 1))
  {
    v28 = sub_1B0E443C8();
    (*(*(v28 - 8) + 8))(v40);
  }

  v29 = v46[9];
  v34 = v45 + v48;
  v30 = *(v45 + v48 + v29);

  v31 = *(v34 + v46[10]);

  v35 = v34 + v46[11];
  v36 = sub_1B0E443C8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if (!(*(v37 + 48))(v35, 1))
  {
    (*(v37 + 8))(v35, v36);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04A4468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A44D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4514()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A46A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A46E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A47C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4ACC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4B0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4BA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4BE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4C7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4D54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4DD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4E14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4E54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4E94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A4ED4()
{
  v46 = type metadata accessor for InProgressMessageDownload.Completed();
  v47 = *(v46 - 1);
  v1 = *(v47 + 80);
  v48 = (v1 + 16) & ~v1;
  v49 = v48 + *(v47 + 64);
  v50 = v1 | 7;
  if (*(v0 + v48 + 184) != 255)
  {
    v43 = v45 + v48;
    v2 = *(v45 + v48 + 8);
    v3 = *(v45 + v48 + 16);
    v4 = *(v45 + v48 + 24);
    v5 = *(v45 + v48 + 32);
    v6 = *(v45 + v48 + 40);
    v7 = *(v45 + v48 + 48);
    v8 = *(v45 + v48 + 56);
    v9 = *(v45 + v48 + 64);
    v10 = *(v45 + v48 + 72);
    v11 = *(v45 + v48 + 80);
    v12 = *(v45 + v48 + 88);
    v13 = *(v45 + v48 + 96);
    v14 = *(v45 + v48 + 104);
    v15 = *(v45 + v48 + 112);
    v16 = *(v45 + v48 + 120);
    v17 = *(v45 + v48 + 128);
    v18 = *(v45 + v48 + 136);
    v19 = *(v45 + v48 + 144);
    v20 = *(v45 + v48 + 152);
    v21 = *(v45 + v48 + 160);
    v22 = *(v45 + v48 + 168);
    v23 = *(v45 + v48 + 176);
    v24 = *(v45 + v48 + 184);
    v44 = &v33;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v41 = v45 + v48 + v46[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v41);
  }

  v39 = 0;
  v26 = *(v41 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  v40 = v45 + v48 + v46[7];
  v27 = type metadata accessor for MessageHeader();
  if (!(*(*(v27 - 8) + 48))(v40, 1))
  {
    v28 = sub_1B0E443C8();
    (*(*(v28 - 8) + 8))(v40);
  }

  v29 = v46[9];
  v34 = v45 + v48;
  v30 = *(v45 + v48 + v29);

  v31 = *(v34 + v46[10]);

  v35 = v34 + v46[11];
  v36 = sub_1B0E443C8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if (!(*(v37 + 48))(v35, 1))
  {
    (*(v37 + 8))(v35, v36);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04A52B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A52F0()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A542C()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A5568()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A56A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A56E4()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A5820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5860()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A599C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A59DC()
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v10 - 8) + 80);
  v9 = (v1 + 16) & ~v1;
  v12 = v9 + *(*(v10 - 8) + 64);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))();
  v11 = (v0 + v9 + *(v10 + 20));
  v3 = *v11;

  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_1B04A5B18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5BB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5BF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5D60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5DA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5E38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5E78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5F3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A5FD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6014()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A60AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A60EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A61C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A625C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A629C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6374()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A640C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A644C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A64E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6524()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A65BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A65FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A663C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A667C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A66BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A66FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A673C()
{
  v46 = type metadata accessor for InProgressMessageDownload.Completed();
  v47 = *(v46 - 1);
  v1 = *(v47 + 80);
  v48 = (v1 + 16) & ~v1;
  v49 = v48 + *(v47 + 64);
  v50 = v1 | 7;
  if (*(v0 + v48 + 184) != 255)
  {
    v43 = v45 + v48;
    v2 = *(v45 + v48 + 8);
    v3 = *(v45 + v48 + 16);
    v4 = *(v45 + v48 + 24);
    v5 = *(v45 + v48 + 32);
    v6 = *(v45 + v48 + 40);
    v7 = *(v45 + v48 + 48);
    v8 = *(v45 + v48 + 56);
    v9 = *(v45 + v48 + 64);
    v10 = *(v45 + v48 + 72);
    v11 = *(v45 + v48 + 80);
    v12 = *(v45 + v48 + 88);
    v13 = *(v45 + v48 + 96);
    v14 = *(v45 + v48 + 104);
    v15 = *(v45 + v48 + 112);
    v16 = *(v45 + v48 + 120);
    v17 = *(v45 + v48 + 128);
    v18 = *(v45 + v48 + 136);
    v19 = *(v45 + v48 + 144);
    v20 = *(v45 + v48 + 152);
    v21 = *(v45 + v48 + 160);
    v22 = *(v45 + v48 + 168);
    v23 = *(v45 + v48 + 176);
    v24 = *(v45 + v48 + 184);
    v44 = &v33;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v41 = v45 + v48 + v46[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v41);
  }

  v39 = 0;
  v26 = *(v41 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  v40 = v45 + v48 + v46[7];
  v27 = type metadata accessor for MessageHeader();
  if (!(*(*(v27 - 8) + 48))(v40, 1))
  {
    v28 = sub_1B0E443C8();
    (*(*(v28 - 8) + 8))(v40);
  }

  v29 = v46[9];
  v34 = v45 + v48;
  v30 = *(v45 + v48 + v29);

  v31 = *(v34 + v46[10]);

  v35 = v34 + v46[11];
  v36 = sub_1B0E443C8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if (!(*(v37 + 48))(v35, 1))
  {
    (*(v37 + 8))(v35, v36);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04A6B18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6BB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6BF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6D60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6DA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6E38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6E78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6F3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A6FD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7014()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A70AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A70EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A712C()
{
  v12 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1 = *(*(v12 - 8) + 80);
  v11 = (v1 + 24) & ~v1;
  v14 = (v11 + *(*(v12 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 16);

  v3 = sub_1B0E443C8();
  (*(*(v3 - 8) + 8))();
  v13 = (v0 + v11 + *(v12 + 20));
  v4 = *v13;

  v5 = v13[1];

  v6 = v13[2];

  v7 = v13[3];

  v8 = v13[4];

  MEMORY[0x1E69E5920](*(v0 + v14));
  v9 = *(v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1B04A72E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7328()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7368()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A73A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A73E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A74C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A75A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A75E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A76B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A78EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A792C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A79C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7A04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7A9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7ADC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7B1C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B04A7B74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7BB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7BF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7C34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7CCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7D0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7DA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7DE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7E7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7F54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A7F94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8058()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A80F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A81B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A81F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8230()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A82C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A83A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A83E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8478()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A84B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8550()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8590()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A86EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A872C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A876C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A87AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A87EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A882C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A88C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A899C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A89DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8AB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8B8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8C50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8CE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8D28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A8D68(uint64_t a1, unsigned int a2)
{
  v2 = _s18SectionsToDownloadVMa();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 2)
  {
    return v3 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B04A8DD8(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = _s18SectionsToDownloadVMa();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t sub_1B04A8E50(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = type metadata accessor for InProgressMessageDownload.EMLX();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B04A8F68(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InProgressMessageDownload.EMLX();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B04A9070()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A90B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A90F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A919C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A91DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A92B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A934C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A938C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A94FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A953C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A96D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A97B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A98C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9988()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A99C8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04A9A08()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04A9B00()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04A9BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9CD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9D68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9DA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9E40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9E80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04A9F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA01C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA0B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA0F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA18C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA2A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA33C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA37C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA3BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA3FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA43C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA47C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA4BC()
{
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  v1 = *(*(FragmentedMessagesResult - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v9 = v2 + *(*(FragmentedMessagesResult - 8) + 64);
  v7 = v0 + v2;
  v3 = *(v0 + v2);

  v8 = *(FragmentedMessagesResult + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v4 - 8) + 8))(v7 + v8);
  return swift_deallocObject();
}

uint64_t sub_1B04AA620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA6F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA8E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AA9AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAA44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAA84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAB1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAB5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAB9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AABDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAC1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAC5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAC9C()
{
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  v1 = *(*(FragmentedMessagesResult - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v9 = v2 + *(*(FragmentedMessagesResult - 8) + 64);
  v7 = v0 + v2;
  v3 = *(v0 + v2);

  v8 = *(FragmentedMessagesResult + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v4 - 8) + 8))(v7 + v8);
  return swift_deallocObject();
}

uint64_t sub_1B04AADA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAE40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAE80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAF18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAF58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AAFF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB0C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB2A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB33C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB37C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB3BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB3FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB43C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB47C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB4BC()
{
  v6 = type metadata accessor for MessagesMissingAllBodyData();
  v1 = *(*(v6 - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v10 = v2 + *(*(v6 - 8) + 64);
  v7 = v0 + v2;
  v3 = *(v0 + v2);

  v5 = *(v6 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v9 = *(*(v8 - 8) + 8);
  v9(v7 + v5);
  (v9)(v7 + *(v6 + 24), v8);
  return swift_deallocObject();
}

uint64_t sub_1B04AB654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB72C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB76C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB8DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB91C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AB9E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABA78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABAB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABB50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABB90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABBD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABC10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABC50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABC90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABCD0()
{
  v6 = type metadata accessor for MessagesMissingAllBodyData();
  v1 = *(*(v6 - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v10 = v2 + *(*(v6 - 8) + 64);
  v7 = v0 + v2;
  v3 = *(v0 + v2);

  v5 = *(v6 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v9 = *(*(v8 - 8) + 8);
  v9(v7 + v5);
  (v9)(v7 + *(v6 + 24), v8);
  return swift_deallocObject();
}

uint64_t sub_1B04ABE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABEA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABEE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABF80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ABFC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC058()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC234()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC2CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC30C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC3A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC3E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC47C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC514()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC554()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC5EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC62C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC6C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC79C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC7DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AC81C()
{
  v26 = *(v0 + 16);
  v24 = *(v26 - 8);
  v25 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v19 = v25 + *(v24 + 64);
  v28 = _s18MailboxPersistenceVMa();
  v20 = *(v28 - 8);
  v27 = (v19 + *(v20 + 80)) & ~*(v20 + 80);
  v30 = (v27 + *(v20 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
  v1 = _s6LoggerVMa();
  v2 = *(*(v1 - 8) + 80);
  v21 = (v31 + 24 + v2) & ~v2;
  v22 = (v21 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69E5920](*(v0 + 32));
  (*(v24 + 8))(v0 + v25, v26);
  v3 = sub_1B0E42E68();
  (*(*(v3 - 8) + 8))();
  MEMORY[0x1E69E5920](*(v0 + v27 + *(v28 + 20)));
  v29 = (v0 + v27 + *(v28 + 24));
  v4 = v29[1];

  v5 = v29[2];

  v6 = v29[3];

  v7 = v29[4];

  v8 = *(v0 + v30);

  v9 = *(v0 + v30 + 8);

  v10 = *(v0 + v30 + 16);

  v11 = *(v0 + v30 + 24);

  if (*(v0 + v31))
  {
    v12 = *(v18 + v31);

    v13 = *(v18 + v31 + 16);
  }

  v14 = sub_1B0E439A8();
  (*(*(v14 - 8) + 8))(v18 + v21);
  MEMORY[0x1E69E5920](*(v18 + v22));
  v15 = *(v18 + v23);

  v16 = *(v18 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1B04ACC04()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04ACC44()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04ACCDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ACD1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ACDB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ACDF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ACE34()
{
  v22 = _s18MailboxPersistenceVMa();
  v1 = *(*(v22 - 8) + 80);
  v21 = (v1 + 32) & ~v1;
  v24 = (v21 + *(*(v22 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v2 = _s6LoggerVMa();
  v3 = *(*(v2 - 8) + 80);
  v18 = (v17 + 8 + v3) & ~v3;
  v19 = (v18 + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69E5920](*(v0 + 16));
  v4 = sub_1B0E42E68();
  (*(*(v4 - 8) + 8))();
  MEMORY[0x1E69E5920](*(v0 + v21 + *(v22 + 20)));
  v23 = (v0 + v21 + *(v22 + 24));
  v5 = v23[1];

  v6 = v23[2];

  v7 = v23[3];

  v8 = v23[4];

  if (*(v0 + v24))
  {
    v9 = *(v16 + v24);

    v10 = *(v16 + v24 + 16);
  }

  v11 = *(v16 + v17);

  v12 = sub_1B0E439A8();
  (*(*(v12 - 8) + 8))(v16 + v18);
  MEMORY[0x1E69E5920](*(v16 + v19));
  v13 = *(v16 + v20);

  v14 = *(v16 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1B04AD190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD1FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD294()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD2D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD36C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD3AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD444()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD484()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD51C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD55C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD5F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD6CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD8E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD980()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AD9C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ADA58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ADA98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ADB30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ADB70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ADBB0()
{
  v22 = _s18MailboxPersistenceVMa();
  v1 = *(*(v22 - 8) + 80);
  v21 = (v1 + 32) & ~v1;
  v24 = (v21 + *(*(v22 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v2 = _s6LoggerVMa();
  v3 = *(*(v2 - 8) + 80);
  v18 = (v17 + 8 + v3) & ~v3;
  v19 = (v18 + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69E5920](*(v0 + 16));
  v4 = sub_1B0E42E68();
  (*(*(v4 - 8) + 8))();
  MEMORY[0x1E69E5920](*(v0 + v21 + *(v22 + 20)));
  v23 = (v0 + v21 + *(v22 + 24));
  v5 = v23[1];

  v6 = v23[2];

  v7 = v23[3];

  v8 = v23[4];

  if (*(v0 + v24))
  {
    v9 = *(v16 + v24);

    v10 = *(v16 + v24 + 16);
  }

  v11 = *(v16 + v17);

  v12 = sub_1B0E439A8();
  (*(*(v12 - 8) + 8))(v16 + v18);
  MEMORY[0x1E69E5920](*(v16 + v19));
  v13 = *(v16 + v20);

  v14 = *(v16 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1B04ADF0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04ADF78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE050()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE0E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE1C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE2D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE3B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE4B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE54C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE58C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE6FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE73C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE7D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE8AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE8EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AE984()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEA5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEA9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEB34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEB74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEC0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEC4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AECE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AED24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEDBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEDFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEE94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEF2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AEF6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF0DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF11C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF1B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF1F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF28C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF2CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF30C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04AF34C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04AF3E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF424()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF4B4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04AF4F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF534()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF61C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF65C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF6F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF7CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF80C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF8A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF8E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AF9A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFA40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFA80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFB18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFB58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFBF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFC30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFCC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFD08()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04AFD48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFDE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFE20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFEB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFEF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04AFFD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B00A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B02C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B035C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B039C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B050C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B054C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B05E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B06E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B07C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B09B0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B09F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0AC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0BA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0C38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0D10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0E14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0EAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0EEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0F84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B0FC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B105C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B109C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1B04B1144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B121C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B125C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B12F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B13CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B140C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B14D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B15A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1680()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1B04B1770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B17B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1960()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B19F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1A38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1AFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1B94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1D70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B1DB0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = _s18MailboxPersistenceVMa();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      v4 = _s6LoggerVMa();
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 32)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_1B04B1F60(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = _s18MailboxPersistenceVMa();
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 20)], a2, a2, v4);
    }

    else
    {
      result = _s6LoggerVMa();
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 32)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1B04B2140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2180()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B21C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B24E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B25E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B267C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B26BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2754()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2794()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B27D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B286C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B28AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2944()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2984()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2A1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2A5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2AF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2B34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2CD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2D10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04B2D58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04B2DA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04B2DE8()
{
  sub_1B0391D50(v0[2], v0[3]);
  MEMORY[0x1E69E5920](v0[4]);
  MEMORY[0x1E69E5920](v0[5]);
  return swift_deallocObject();
}

uint64_t sub_1B04B2EEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B2F2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3050()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3168()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3234()
{
  v21 = type metadata accessor for IndexableMessageInfo(0);
  v1 = *(*(v21 - 1) + 80);
  v19 = (v1 + 16) & ~v1;
  v20 = v19 + *(*(v21 - 1) + 64);
  v2 = *(v0 + v19);

  v3 = *(v0 + v19 + 8);

  v22 = v21[6];
  v23 = sub_1B0E43108();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v19 + v22, 1))
  {
    (*(v24 + 8))(v18 + v19 + v22, v23);
  }

  v17 = (v18 + v19 + v21[7]);
  if (v17[3])
  {
    v4 = v17[1];

    v5 = v17[3];

    v6 = v17[7];

    v7 = v17[11];
  }

  v8 = *(v18 + v19 + v21[8] + 8);

  v9 = *(v18 + v19 + v21[9] + 8);

  v10 = *(v18 + v19 + v21[10]);

  v16 = v18 + v19 + v21[15];
  if (*(v16 + 16) != 255)
  {
    v11 = *v16;
    v12 = *(v16 + 8);
    v13 = *(v16 + 16);
    sub_1B08A9938();
  }

  v14 = *(v18 + v19 + v21[16]);

  return swift_deallocObject();
}

uint64_t sub_1B04B3504()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B35DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B361C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B36B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B36F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B37A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B37E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B388C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B39FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3A3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3AD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3BAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3BEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3CB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3D48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3D88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3E20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3E60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3EA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3EE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3F20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3F60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B3FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B40A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B413C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B417C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4214()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4254()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B42EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B432C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B43F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B44C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B45A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B45E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B46A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B470C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B47A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B47E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B487C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B48BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4954()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4994()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4A2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4A6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4B30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4C08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4CE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4D20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4D60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4DA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4DE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4E4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4EB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4F50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B4F90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B51D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B52DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5374()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B53B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B544C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B548C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5524()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5564()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B55A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B55E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B56D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B57A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5840()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5880()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B59F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5AF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5B8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5BCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5C64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5CA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5CE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5D24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5D64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5DA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5E50()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B5E90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B5F68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6040()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B60D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B61B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B61F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B62B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B634C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B638C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B64FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B653C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B657C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B65BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B65FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B663C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B66A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6714()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B67AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B67EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B68C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B695C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B699C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6B38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6BD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6C10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6CA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6CE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6D80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6DC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B6E00(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = type metadata accessor for MessageHeader();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B04B6F18(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = type metadata accessor for MessageHeader();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B04B7008(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for InProgressMessageDownload.Completed();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 2)
  {
    return v3 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B04B7078(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = type metadata accessor for InProgressMessageDownload.Completed();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t sub_1B04B7160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B71A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B71E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7220()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7260()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B72F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7338()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B73D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7410()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B74A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B74E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B75C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B771C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B775C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B77F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B78CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B790C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B794C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B798C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B79CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7A64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7AA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7B3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7B7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7C14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7C54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7CEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7D2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7DF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7E88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7EC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7F60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7FA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B7FE0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = type metadata accessor for MessageSectionData.Concatenator(0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 28), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1B04B80F8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = type metadata accessor for MessageSectionData.Concatenator(0);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B04B81E8(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1B0E443C8();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 28)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B04B8300(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = sub_1B0E443C8();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B04B841C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8464()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1B04B84A4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1B0E431A8();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1B04B85BC(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_1B0E431A8();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B04B86AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B86EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B872C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B87C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B889C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B88DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8974()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B89B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B89F4()
{
  v3 = *(sub_1B0E43788() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B04B8AC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8B00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8B40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8B80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8C18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8C58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8CF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8DC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8E08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8EA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8EE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8F20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B8F94()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04B8FD4()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04B906C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B90AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B92AC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B9384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B93C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B949C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B94DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9560(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B04B9684(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B04B9780()
{
  MEMORY[0x1E69E5920](v0[2]);
  v1 = v0[3];

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B04B97D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9884()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B98C4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B995C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B999C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9B0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9B8C()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9BDC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B9C74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9CB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9D3C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04B9DD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9E14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9E54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04B9E9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04B9F3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04B9F7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA014()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA094()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04BA0DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04BA124()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BA164()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B04BA20C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA24C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA2E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA324()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA3BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA3FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA494()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA4D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA514()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04BA55C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BA59C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04BA5E4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BA67C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA6BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA754()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA794()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA82C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA86C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA944()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BA9B0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BAA48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BAA88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BAB20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BAB60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BABCC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BAC64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BACA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BAD3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BAD7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BADFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04BAE70()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BAF34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BAF74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB00C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB04C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB0E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB124()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB190()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04BB228()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB268()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB300()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB340()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB380()
{
  v1 = v0[2];

  v2 = v0[6];

  MEMORY[0x1E69E5920](v0[8]);
  return swift_deallocObject();
}

uint64_t sub_1B04BB430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB4C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB5A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB5E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB6B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB7E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB8C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB900()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BB9D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBA70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBB08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBB48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBBE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBC20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBCB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBCF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBDBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBDFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBE3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBED4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBF14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBFAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BBFEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC02C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC0C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC144()
{
  v3 = *(_s6LoggerVMa_2() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04BC284()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC2C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC304()
{
  v3 = *(_s6LoggerVMa_2() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04BC418()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC4B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC4F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC588()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC5C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC608()
{
  v3 = *(_s6LoggerVMa_2() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04BC6F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC788()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC7C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC8A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BC8E0()
{
  v3 = *(_s6LoggerVMa_2() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04BC9C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCA60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCAA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCB38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCB78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCBB8()
{
  v3 = *(_s6LoggerVMa_2() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04BCCA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCD38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCD78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCE50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BCE90()
{
  v3 = *(_s6LoggerVMa_2() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04BCF78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD050()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD0E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD168()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD2D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD358()
{
  v6 = *(_s6LoggerVMa_2() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 24));
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 8))(v0 + v7);
  v3 = *(v0 + v8);

  v4 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1B04BD49C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD574()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD60C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04BD64C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}