uint64_t sub_255D2F870(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_255D2F894(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_255E394D8();

    return sub_255E38AE8();
  }

  else
  {
    sub_255E38BF8();
    swift_getWitnessTable();
    sub_255E39408();
    sub_255E38AE8();
    sub_255E3A8A8();
    swift_getWitnessTable();
    sub_255E38BF8();
    swift_getWitnessTable();
    sub_255E39408();
    return sub_255E38AE8();
  }
}

uint64_t sub_255D2F9F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_255E394D8();
    sub_255E38AE8();
  }

  else
  {
    sub_255E38BF8();
    swift_getWitnessTable();
    sub_255E39408();
    sub_255E38AE8();
    sub_255E3A8A8();
    swift_getWitnessTable();
    sub_255E38BF8();
    swift_getWitnessTable();
    sub_255E39408();
    sub_255E38AE8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_255D2FBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6010, &unk_255E3BB10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255D2FCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6010, &unk_255E3BB10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255D2FD68(uint64_t a1, int a2)
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

uint64_t sub_255D2FD88(uint64_t result, int a2, int a3)
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

uint64_t sub_255D2FDCC(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_255D2FE10()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_255D2FE48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D2FE98()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOySdGSg_0(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D2FF7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  return *(swift_getAssociatedConformanceWitness() + 16);
}

uint64_t sub_255D30060()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D300D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255E38868();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255D30144(uint64_t a1, uint64_t a2)
{
  v4 = sub_255E38868();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255D301B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D301F0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI14AnyViewContent_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255D30298()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 96);
  if (v3 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v3);
  }

  v4 = *(v0 + 128);
  if (v4 != 255)
  {
    sub_255D4E6E0(*(v0 + 104), *(v0 + 112), *(v0 + 120), v4 & 1, sub_255D398A4);
  }

  v5 = *(v0 + 136);

  v6 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D30340()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D30378()
{
  sub_255D4C93C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_255D303BC()
{
  v1 = *(v0 + 24);

  sub_255D4CA30(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_255D30414()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);
  if (v2 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 40), *(v0 + 48), *(v0 + 56), v2);
  }

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_255D3047C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  if (v2 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 32), *(v0 + 40), *(v0 + 48), v2);
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D304E8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255D30558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), v2);
  }

  v3 = *(v0 + 88);
  if (v3 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v3);
  }

  v4 = *(v0 + 120);
  if (v4 <= 0xFD)
  {
    sub_255D38060(*(v0 + 96), *(v0 + 104), *(v0 + 112), v4);
  }

  v5 = *(v0 + 128);

  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_255D305F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), v2);
  }

  sub_255D4CB98(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v3 = *(v0 + 96);

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D30690()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v4 = *(v0 + 112);
  if (v4 <= 0xFD)
  {
    sub_255D38060(*(v0 + 88), *(v0 + 96), *(v0 + 104), v4);
  }

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_255D3070C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255D30764()
{
  v1 = *(v0 + 24);

  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  v2 = *(v0 + 104);

  v3 = *(v0 + 136);
  if (v3 != 255)
  {
    sub_255D4DE84(*(v0 + 112), *(v0 + 120), *(v0 + 128), v3 & 1);
  }

  v4 = *(v0 + 144);

  v5 = *(v0 + 160);

  sub_255D38130(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 193, 7);
}

uint64_t sub_255D307FC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 72);

  sub_255D34870(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v3 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255D3085C()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v2 = v0[14];

  v3 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_255D308B4()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v2 = v0[10];

  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_255D3091C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_255D4E6E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), sub_255D398A4);
  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D309A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);
  if (v3 <= 0xFD)
  {
    sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), v3);
  }

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  }

  v4 = *(v0 + 112);

  sub_255D4DE84(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  }

  v5 = *(v0 + 192);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_255D30A3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  if (v2 != 255)
  {
    sub_255D34870(*(v0 + 32), *(v0 + 40), *(v0 + 48), v2 & 1);
  }

  v3 = *(v0 + 88);
  if (v3 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v3);
  }

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_255D30B04()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_255D30BEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255D30C4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D30D18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255D30D58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_255D30DA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D30DE0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_255D30E3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D30E50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_255D4DE84(*(v0 + 24), *(v0 + 32), *(v0 + 40), v2 & 1);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_255D4DE84(*(v0 + 56), *(v0 + 64), *(v0 + 72), v3 & 1);
  }

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D30ECC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 96);
  if (v3 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v3);
  }

  v4 = *(v0 + 128);
  if (v4 != 255)
  {
    sub_255D5CA24(*(v0 + 104), *(v0 + 112), *(v0 + 120), v4 & 1, sub_255D398A4);
  }

  sub_255D34870(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  sub_255D38060(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
  v5 = *(v0 + 200);

  v6 = *(v0 + 208);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_255D30F94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_255D30FF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 104) != 254)
  {
    sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
    v4 = *(v0 + 104);
    if (v4 != 255)
    {
      sub_255D34870(*(v0 + 80), *(v0 + 88), *(v0 + 96), v4 & 1);
    }
  }

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255D31084()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D5CA24(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), sub_255D398A4);
  sub_255D4CB98(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_255D4DE84(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D31110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D5CA24(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), sub_255D398A4);
  sub_255D4DE84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D3118C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D38090(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D5CA24(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), sub_255D398A4);
  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D31208()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D38090(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D5CA24(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), sub_255D398A4);
  v2 = *(v0 + 96);

  v3 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_255D31294()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D313F4(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_255D31428()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D31478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255D31534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255D31604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D31640()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D31884()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySSGSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D3198C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 88);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v2);
  }

  v3 = *(v0 + 120);
  if (v3 != 255)
  {
    sub_255D380E0(*(v0 + 96), *(v0 + 104), *(v0 + 112), v3 & 1);
  }

  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    sub_255D380E0(*(v0 + 128), *(v0 + 136), *(v0 + 144), v4 & 1);
  }

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  v8 = *(v0 + 184);
  swift_unknownObjectRelease();
  v9 = *(v0 + 200);

  v10 = *(v0 + 208);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_255D31A70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D31AA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x4000000000000000;
  return result;
}

uint64_t sub_255D31B14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_255D31B4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255D31B70()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D31BB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_255D31C08(uint64_t *a1@<X8>)
{
  v2 = 7563372;
  v3 = 0xE800000000000000;
  v4 = 0x726F74617265706FLL;
  if (*v1 != 1)
  {
    v4 = 7563378;
    v3 = 0xE300000000000000;
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_255D31C54()
{
  v1 = 0x726F74617265706FLL;
  if (*v0 != 1)
  {
    v1 = 7563378;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_255D31CF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D31E74()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D31F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_255E39EB8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_255D31FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_255E39EB8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_255D32074()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D320F0()
{
  v1 = sub_255E38B18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 17, v3 | 7);
}

uint64_t sub_255D32198()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v4 = *(v0 + 112);
  if (v4 <= 0xFD)
  {
    sub_255D38060(*(v0 + 88), *(v0 + 96), *(v0 + 104), v4);
  }

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_255D32210()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D32260()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D3233C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D323BC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D32434()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_255D324EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D3252C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D32564()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D325AC()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D3260C()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D32660()
{
  v1 = *(v0 + 16);

  sub_255D4DE84(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_255D34870(*(v0 + 56), *(v0 + 64), *(v0 + 72), v2 & 1);
  }

  v3 = *(v0 + 112);
  if (v3 != 255)
  {
    sub_255D4DE84(*(v0 + 88), *(v0 + 96), *(v0 + 104), v3 & 1);
  }

  v4 = *(v0 + 144);
  if (v4 != 255)
  {
    sub_255D4DE84(*(v0 + 120), *(v0 + 128), *(v0 + 136), v4 & 1);
  }

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D32710()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255D32770()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255D32834()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 & 1);
  }

  v2 = *(v0 + 72);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v3 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255D328A8()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 & 1);
  }

  v2 = *(v0 + 72);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_255D32928()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D329A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D329EC()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  if ((~*(v0 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D32A54()
{
  v1 = *(type metadata accessor for RemoteContent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = *(v6 + 8);
      }

      goto LABEL_16;
    }

    v12 = *v6;
    v13 = *(v6 + 8);
LABEL_15:
    sub_255D37E60(v12, v13);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v14 = sub_255E38588();
    (*(*(v14 - 8) + 8))(v0 + v3, v14);
    v15 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920) + 64));
    v13 = v15[1];
    if (v13 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v12 = *v15;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_255D38060(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
    v9 = *(v6 + 56);
    if (v9 <= 0xFD)
    {
      sub_255D38060(*(v6 + 32), *(v6 + 40), *(v6 + 48), v9);
    }

    v10 = *(v6 + 88);
    if (v10 != 255)
    {
      sub_255D380E0(*(v6 + 64), *(v6 + 72), *(v6 + 80), v10 & 1);
    }

    v11 = *(v6 + 96);
  }

LABEL_16:
  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 9, v2 | 7);
}

uint64_t sub_255D32C18()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D32C98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5FA0, &qword_255E54E60);
  sub_255E38AE8();
  sub_255D38950(&qword_27F7E5F98, &qword_27F7E5FA0, &qword_255E54E60);
  return swift_getWitnessTable();
}

__n128 sub_255D32D58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D32D94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_255DF3B58();
  *a2 = result;
  return result;
}

uint64_t sub_255D32DC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_255DF3C30();
}

__n128 sub_255D32DF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D32E6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255D32ED0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255D32F84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D32FD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D33010()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_255D3305C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D33070()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D3316C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D33214()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  if (*(v0 + 96) != 254)
  {
    sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
    v4 = *(v0 + 96);
    if (v4 != 255)
    {
      sub_255D34870(*(v0 + 72), *(v0 + 80), *(v0 + 88), v4 & 1);
    }
  }

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

__n128 sub_255D332B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D332FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255D333B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255D3356C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D335EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8A08, &unk_255E598F0);
  sub_255E38AE8();
  sub_255E08E00();
  return swift_getWitnessTable();
}

uint64_t sub_255D336B0()
{
  v1 = *(v0 + 16);

  sub_255D4DE84(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_255D34870(*(v0 + 56), *(v0 + 64), *(v0 + 72), v2 & 1);
  }

  v3 = *(v0 + 112);
  if (v3 != 255)
  {
    sub_255D4DE84(*(v0 + 88), *(v0 + 96), *(v0 + 104), v3 & 1);
  }

  v4 = *(v0 + 144);
  if (v4 != 255)
  {
    sub_255D4DE84(*(v0 + 120), *(v0 + 128), *(v0 + 136), v4 & 1);
  }

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D337B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D33800()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D33850()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D338B0()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D33900()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D33978()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D339B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D339E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255D33A28()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D33AAC()
{
  v1 = sub_255E38588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 185) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v5 + 23;
  v8 = *(v0 + 24);

  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v9 = *(v0 + 88);
  if (v9 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v9);
  }

  v10 = v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 120);
  if (v11 != 255)
  {
    sub_255D380E0(*(v0 + 96), *(v0 + 104), *(v0 + 112), v11 & 1);
  }

  sub_255D34870(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  sub_255D38060(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v6);

  v13 = *(v0 + v10 + 8);
  if (v13 >> 60 != 15)
  {
    sub_255D37E60(*(v0 + v10), v13);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v3 | 7);
}

uint64_t sub_255D33CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D33D34()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255D33D74()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D4CB98(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_255D4CB98(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 136);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 112), *(v0 + 120), *(v0 + 128), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_255D33DEC()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_255D33E50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D38090(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D380E0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 96);

  v3 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_255D33EC8()
{
  v1 = sub_255E385F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D380E0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D4CB98(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_255D4DE84(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v7 = *(v0 + 128);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_255D33FD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D34008()
{
  v1 = sub_255E385F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D380E0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D4DE84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v7 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255D34104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_255D3415C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D341D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

void sub_255D342AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x79654B61746164;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D342F8()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x79654B61746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D34340()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D34378()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D34424()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D3459C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  v4 = v0[17];

  v5 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D34630(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255D34744()
{
  *v0;
  sub_255E3A578();
}

void sub_255D347A4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x7377656976;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D347D4()
{
  if (*v0)
  {
    result = 0x7377656976;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_255D34858(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_255D34870(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_255D2F870(a3);
  }
}

void sub_255D348B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_255D34858(a3);
  }
}

void sub_255D34910(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_255D34870(a1, a2, a3, a4 & 1);
  }
}

uint64_t RemoteContentView.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_255D349CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = (v1 + *(type metadata accessor for RemoteContentView(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for RemoteStateStore(0);
  v7 = sub_255D37FBC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);

  return a1(v3, v4, v5, v6, v7);
}

uint64_t sub_255D34AB0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = (v1 + *(type metadata accessor for RemoteContentView(0) + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = sub_255D37FBC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

  return a1(v3, v4, v5, v6, v7);
}

uint64_t sub_255D34B64()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for RemoteContentView(0) + 36);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255E3A858();
    v9 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v7, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v11;
  }

  return v7;
}

uint64_t sub_255D34CD4()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for RemoteContentView(0) + 40);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255E3A858();
    v9 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v7, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v11;
  }

  return v7;
}

id sub_255D34E44()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for RemoteContentView(0) + 44);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {

    return v7;
  }

  else
  {
    v10[0] = *v6;

    sub_255E3A858();
    v9 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D3813C(v10[0], 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }
}

uint64_t RemoteContentView.init(id:url:stateStore:localStateStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v35 = a3;
  v36 = a5;
  v33 = a1;
  v34 = a2;
  v9 = type metadata accessor for RemoteContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
  v15 = *(v14 + 48);
  v16 = *(v14 + 64);
  v17 = sub_255E38588();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v13, a3, v17);
  v13[v15] = 8;
  *&v13[v16] = xmmword_255E3B900;
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for RemoteContentView(0);
  v20 = &a6[v19[9]];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &a6[v19[10]];
  *v21 = swift_getKeyPath();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = &a6[v19[11]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v34;
  *a6 = v33;
  *(a6 + 1) = v23;
  v24 = v19[5];
  sub_255D37EF4(v13, &a6[v24], type metadata accessor for RemoteContent);
  (*(v10 + 56))(&a6[v24], 0, 1, v9);
  v25 = objc_allocWithZone(type metadata accessor for ContentRegistry());

  v37 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(a4, [v25 init]);
  type metadata accessor for RemoteLoader(0);
  sub_255E39F98();
  (*(v18 + 8))(v35, v17);
  result = sub_255D37F5C(v13, type metadata accessor for RemoteContent);
  v27 = v39;
  v28 = &a6[v19[8]];
  *v28 = v38;
  *(v28 + 1) = v27;
  v29 = &a6[v19[6]];
  *v29 = sub_255D37E04;
  *(v29 + 1) = a4;
  v29[16] = 0;
  v30 = &a6[v19[7]];
  v31 = v36;
  *v30 = sub_255D3989C;
  *(v30 + 1) = v31;
  v30[16] = 0;
  return result;
}

uint64_t sub_255D352BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t RemoteContentView.init(id:json:stateStore:localStateStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for RemoteContent(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a3;
  v18[1] = a4;
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for RemoteContentView(0);
  v20 = &a7[v19[9]];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &a7[v19[10]];
  *v21 = swift_getKeyPath();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = &a7[v19[11]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *a7 = a1;
  *(a7 + 1) = a2;
  v23 = v19[5];
  sub_255D37EF4(v18, &a7[v23], type metadata accessor for RemoteContent);
  (*(v15 + 56))(&a7[v23], 0, 1, v14);
  v24 = objc_allocWithZone(type metadata accessor for ContentRegistry());

  v30[1] = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(a5, [v24 init]);
  type metadata accessor for RemoteLoader(0);
  sub_255E39F98();
  result = sub_255D37F5C(v18, type metadata accessor for RemoteContent);
  v26 = v30[3];
  v27 = &a7[v19[8]];
  *v27 = v30[2];
  *(v27 + 1) = v26;
  v28 = &a7[v19[6]];
  *v28 = sub_255D3989C;
  *(v28 + 1) = a5;
  v28[16] = 0;
  v29 = &a7[v19[7]];
  *v29 = sub_255D3989C;
  *(v29 + 1) = a6;
  v29[16] = 0;
  return result;
}

uint64_t RemoteContentView.init(id:data:stateStore:localStateStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v31 = a2;
  v32 = a6;
  v12 = type metadata accessor for RemoteContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = a3;
  v16[1] = a4;
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for RemoteContentView(0);
  v18 = &a7[v17[9]];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = &a7[v17[10]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &a7[v17[11]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v31;
  *a7 = a1;
  *(a7 + 1) = v21;
  v22 = v17[5];
  sub_255D37EF4(v16, &a7[v22], type metadata accessor for RemoteContent);
  (*(v13 + 56))(&a7[v22], 0, 1, v12);
  v23 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  sub_255D37E0C(a3, a4);

  v33 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(a5, [v23 init]);
  type metadata accessor for RemoteLoader(0);
  sub_255E39F98();
  sub_255D37E60(a3, a4);
  result = sub_255D37F5C(v16, type metadata accessor for RemoteContent);
  v25 = v35;
  v26 = &a7[v17[8]];
  *v26 = v34;
  *(v26 + 1) = v25;
  v27 = &a7[v17[6]];
  *v27 = sub_255D3989C;
  *(v27 + 1) = a5;
  v27[16] = 0;
  v28 = &a7[v17[7]];
  v29 = v32;
  *v28 = sub_255D3989C;
  *(v28 + 1) = v29;
  v28[16] = 0;
  return result;
}

uint64_t RemoteContentView.init(id:remoteLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for RemoteContentView(0);
  v9 = &a4[v8[9]];
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = &a4[v8[10]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = &a4[v8[11]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  *a4 = a1;
  *(a4 + 1) = a2;
  type metadata accessor for RemoteLoader(0);

  sub_255E39F98();
  v12 = &a4[v8[8]];
  *v12 = v18;
  *(v12 + 1) = v19;
  v13 = &a4[v8[6]];
  *v13 = sub_255D37EB4;
  *(v13 + 1) = a3;
  v13[16] = 0;
  v14 = &a4[v8[7]];
  *v14 = sub_255D35A70;
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = v8[5];
  v16 = type metadata accessor for RemoteContent(0);
  return (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
}

uint64_t sub_255D35944(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = type metadata accessor for RemoteStateStore(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    v6 = qword_27F7E8600;
    v7 = MEMORY[0x277D84F90];
    *(v2 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
    *(v2 + qword_27F7E85F8) = 0;
    v8 = *(*v2 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255E38708();
    v9 = *(*v2 + 112);
    *(v2 + v9) = sub_255DC513C(v7);
    *(v2 + *(*v2 + 128)) = 0;
    *(v2 + *(*v2 + 120)) = 0;
    *(v2 + *(*v2 + 128)) = 0;
  }

  return v2;
}

uint64_t sub_255D35A70()
{
  v0 = type metadata accessor for LocalStateStore(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = qword_27F7E8608;
  v5 = MEMORY[0x277D84F90];
  *(v3 + v4) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v3 + qword_27F7E8610) = 0;
  v6 = *(*v3 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v3 + 112);
  *(v3 + v7) = sub_255DC513C(v5);
  *(v3 + *(*v3 + 128)) = 0;
  *(v3 + *(*v3 + 120)) = 0;
  *(v3 + *(*v3 + 128)) = 0;
  return v3;
}

__n128 RemoteContentView.body.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = sub_255E38EE8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F08, &qword_255E3B9A0);
  v7 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v85 - v8;
  v9 = type metadata accessor for RemoteContentView(0);
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v91 = v12;
  v92 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v85 - v13;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v15 = sub_255E386A8();
  __swift_project_value_buffer(v15, qword_27F8152D8);
  sub_255D37EF4(v1, v14, type metadata accessor for RemoteContentView);
  v16 = sub_255E38688();
  v17 = sub_255E3A868();
  v18 = os_log_type_enabled(v16, v17);
  v93 = a1;
  if (!v18)
  {

    sub_255D37F5C(v14, type metadata accessor for RemoteContentView);
    goto LABEL_12;
  }

  v89 = v1;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v94.n128_u64[0] = v20;
  *v19 = 136315138;
  v88 = v9;
  v21 = &v14[*(v9 + 32)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v117.n128_u64[0] = v23;
  v117.n128_u64[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F10, &qword_255E3B9A8);
  sub_255E39FA8();
  v24 = v110.n128_u64[0];
  swift_getKeyPath();
  v117.n128_u64[0] = v24;
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  sub_255D38004(v24 + 16, &v117);

  sub_255D38004(&v117, &v110);
  if (v112.n128_u8[8])
  {
    if (v112.n128_u8[8] != 1)
    {
      v25 = 0xE700000000000000;
      v26 = 0x676E6964616F6CLL;
      v9 = v88;
      goto LABEL_11;
    }

    v25 = 0xE500000000000000;
    v26 = 0x726F727265;
  }

  else
  {
    v25 = 0xE600000000000000;
    v26 = 0x646564616F6CLL;
  }

  v9 = v88;
  sub_255D38CA8(&v110);
LABEL_11:
  sub_255D38CA8(&v117);
  sub_255D37F5C(v14, type metadata accessor for RemoteContentView);
  v27 = sub_255D378C0(v26, v25, &v94);

  *(v19 + 4) = v27;
  _os_log_impl(&dword_255D2E000, v16, v17, "Using loader status: %s", v19, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  MEMORY[0x259C4F9E0](v20, -1, -1);
  MEMORY[0x259C4F9E0](v19, -1, -1);

  v2 = v89;
LABEL_12:
  v28 = (v2 + *(v9 + 32));
  v30 = *v28;
  v29 = v28[1];
  v117.n128_u64[0] = *v28;
  v117.n128_u64[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F10, &qword_255E3B9A8);
  sub_255E39FA8();
  v31 = v110.n128_u64[0];
  swift_getKeyPath();
  v32 = v9;
  v117.n128_u64[0] = v31;
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  sub_255D38004(v31 + 16, v115);

  if (v116)
  {
    if (v116 == 1)
    {
      v33 = *&v115[0];
      has_internal_content = os_variant_has_internal_content();
      v35 = sub_255D34CD4();
      v37 = v36;
      v38 = v93;
      if (has_internal_content)
      {
        if (!v35 || (ObjectType = swift_getObjectType(), v40 = (*(v37 + 8))(v33, ObjectType, v37), swift_unknownObjectRelease(), !v40))
        {
          sub_255E38ED8();
          sub_255E38EC8();
          v117.n128_u64[0] = v33;
          v41 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
          sub_255E3A528();
          sub_255E38EB8();

          sub_255E38EC8();
          sub_255E38F08();
          v117.n128_u64[0] = sub_255E397E8();
          v117.n128_u64[1] = v42;
          v118.n128_u8[0] = v43 & 1;
          v118.n128_u64[1] = v44;
          v40 = sub_255E3A038();
        }

        v45 = v92;
        sub_255D37EF4(v2, v92, type metadata accessor for RemoteContentView);
        v46 = (*(v90 + 80) + 16) & ~*(v90 + 80);
        v47 = (v91 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        sub_255D39644(v45, v48 + v46, type metadata accessor for RemoteContentView);
        *(v48 + v47) = v33;
        v110.n128_u64[0] = v40;
        v110.n128_u64[1] = sub_255D38870;
        v111 = v48;
        v112.n128_u64[0] = 0;
        v112.n128_u8[8] = 0;
      }

      else
      {
        if (!v35 || (v75 = swift_getObjectType(), v76 = (*(v37 + 8))(v33, v75, v37), swift_unknownObjectRelease(), !v76))
        {
          v76 = sub_255E3A038();
        }

        v77 = v92;
        sub_255D37EF4(v2, v92, type metadata accessor for RemoteContentView);
        v78 = (*(v90 + 80) + 16) & ~*(v90 + 80);
        v79 = (v91 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        sub_255D39644(v77, v80 + v78, type metadata accessor for RemoteContentView);
        *(v80 + v79) = v33;
        v110.n128_u64[0] = v76;
        v110.n128_u64[1] = sub_255D398A0;
        v111 = v80;
        v112.n128_u64[0] = 0;
        v112.n128_u8[8] = 1;
      }

      v81 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F20, &qword_255E3B9D8);
      sub_255D38148();
      sub_255E39258();
      v94.n128_u8[0] = v119.n128_u8[8];
      v102.n128_u8[0] = 1;
      v121[25] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F30, &qword_255E3B9E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F38, &qword_255E3B9E8);
      sub_255D38214();
      sub_255D38554();
      sub_255E39258();
    }

    else
    {
      v67 = sub_255D34CD4();
      v38 = v93;
      if (!v67 || (v69 = v68, v70 = swift_getObjectType(), v71 = (*(v69 + 16))(v70, v69), swift_unknownObjectRelease(), !v71))
      {
        sub_255E388C8();
        sub_255D38950(&qword_27F7E5FC8, &qword_27F7E5F08, &qword_255E3B9A0);
        v71 = sub_255E3A038();
      }

      v72 = v92;
      sub_255D37EF4(v2, v92, type metadata accessor for RemoteContentView);
      v73 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v74 = swift_allocObject();
      sub_255D39644(v72, v74 + v73, type metadata accessor for RemoteContentView);
      LOBYTE(v99[0]) = 0;
      v117.n128_u64[0] = v71;
      v117.n128_u64[1] = sub_255D38C1C;
      v118 = v74;
      v119.n128_u64[0] = 0;
      v121[24] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F20, &qword_255E3B9D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F50, &qword_255E3B9F0);
      sub_255D38148();
      sub_255D382A0();
      sub_255E39258();
      v119 = v96;
      v120 = v97;
      *v121 = v98[0];
      *&v121[9] = *(v98 + 9);
      v117 = v94;
      v118 = v95;
      v102.n128_u8[0] = 0;
      v121[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F30, &qword_255E3B9E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F38, &qword_255E3B9E8);
      sub_255D38214();
      sub_255D38554();
      sub_255E39258();
    }

    v119 = v112;
    v120 = v113;
    *v121 = v114[0];
    *&v121[10] = *(v114 + 10);
    v117 = v110;
    v118 = v111;
  }

  else
  {
    sub_255D34630(v115, v99);
    v49 = v100;
    v50 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    v87 = (*(v50 + 24))(v49, v50);
    v88 = v32;
    v51 = v2 + *(v32 + 24);
    v52 = *v51;
    v53 = *(v51 + 8);
    v89 = v2;
    v54 = *(v51 + 16);
    type metadata accessor for RemoteStateStore(0);
    sub_255D37FBC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    v86 = sub_255E38888();
    v85 = sub_255E386C8();
    v117.n128_u64[0] = v30;
    v117.n128_u64[1] = v29;
    sub_255E39FA8();
    v55 = v110.n128_u64[0];
    KeyPath = swift_getKeyPath();
    v57 = v89;
    v58 = v89 + *(v88 + 28);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    type metadata accessor for LocalStateStore(0);
    sub_255D37FBC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
    v62 = sub_255E38888();
    v63 = sub_255E386C8();
    v64 = v92;
    sub_255D37EF4(v57, v92, type metadata accessor for RemoteContentView);
    v65 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v66 = swift_allocObject();
    sub_255D39644(v64, v66 + v65, type metadata accessor for RemoteContentView);
    v102.n128_u64[0] = v87;
    v102.n128_u64[1] = v85;
    v38 = v93;
    v103.n128_u64[0] = v86;
    v103.n128_u64[1] = KeyPath;
    v104.n128_u64[0] = v55;
    v104.n128_u64[1] = v63;
    v105.n128_u64[0] = v62;
    v105.n128_u64[1] = sub_255D38938;
    v106 = v66;
    v107 = 0;
    v119 = v104;
    v120 = v105;
    *v121 = v66;
    v117 = v102;
    *&v121[16] = 0;
    v118 = v103;
    v108 = 1;
    v121[24] = 1;
    sub_255D3957C(&v102, &v110, &qword_27F7E5F50, &qword_255E3B9F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F20, &qword_255E3B9D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F50, &qword_255E3B9F0);
    sub_255D38148();
    sub_255D382A0();
    sub_255E39258();
    v119 = v96;
    v120 = v97;
    *v121 = v98[0];
    *&v121[9] = *(v98 + 9);
    v117 = v94;
    v118 = v95;
    v109 = 0;
    v121[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F30, &qword_255E3B9E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F38, &qword_255E3B9E8);
    sub_255D38214();
    sub_255D38554();
    sub_255E39258();
    sub_255D395E4(&v102, &qword_27F7E5F50, &qword_255E3B9F0);
    v119 = v112;
    v120 = v113;
    *v121 = v114[0];
    *&v121[10] = *(v114 + 10);
    v117 = v110;
    v118 = v111;
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v82 = v120;
  v38[2] = v119;
  v38[3] = v82;
  v38[4] = *v121;
  *(v38 + 74) = *&v121[10];
  result = v117;
  v84 = v118;
  *v38 = v117;
  v38[1] = v84;
  return result;
}

uint64_t sub_255D36AA4(uint64_t a1)
{
  v2 = sub_255E3AAE8();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6010, &unk_255E3BB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for RemoteContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoteContentView(0);
  v15 = (a1 + *(v14 + 32));
  v17 = *v15;
  v16 = v15[1];
  v35 = *v15;
  v36 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F10, &qword_255E3B9A8);
  sub_255E39FA8();
  v18 = *(v34[0] + 120);

  if ((v18 & 1) == 0)
  {
    sub_255D3957C(a1 + *(v14 + 20), v8, &qword_27F7E6010, &unk_255E3BB10);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_255D395E4(v8, &qword_27F7E6010, &unk_255E3BB10);
    }

    else
    {
      sub_255D39644(v8, v13, type metadata accessor for RemoteContent);
      v35 = v17;
      v36 = v16;
      sub_255E39FA8();
      v20 = v34[0];
      sub_255D34B64();
      *(v20 + 136) = v21;
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v35 = v17;
      v36 = v16;
      sub_255E39FA8();
      v22 = v34[0];
      v23 = sub_255D34E44();
      v24 = *(v22 + 152);
      if (qword_27F7E5E88 != -1)
      {
        swift_once();
      }

      v25 = v32;
      v26 = __swift_project_value_buffer(v32, qword_27F8152F0);
      v27 = v33;
      (*(v31 + 16))(v33, v26, v25);
      v37 = type metadata accessor for ContentRegistry();
      v35 = v23;
      v28 = v23;
      v29 = sub_255E38428();
      sub_255DCF60C(&v35, v27);
      v29(v34, 0);

      v35 = v17;
      v36 = v16;
      sub_255E39FA8();
      LOBYTE(v35) = 2;
      RemoteLoader.reload(content:showLoading:reloadtype:)(v13, 1, &v35);

      return sub_255D37F5C(v13, type metadata accessor for RemoteContent);
    }
  }

  return result;
}

uint64_t sub_255D36E78(void *a1)
{
  v2 = sub_255E38D48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for RemoteContentView(0) + 40);
  v8 = *v7;
  v9 = *(v7 + 1);
  if (v7[16] != 1)
  {

    sub_255E3A858();
    v11 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v8, v9, 0);
    result = (*(v3 + 8))(v6, v2);
    v9 = v13[1];
    if (!v13[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v8)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(*a1, a1[1], ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255D3701C(void *a1, uint64_t a2)
{
  v4 = sub_255E38D48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for RemoteContentView(0) + 40);
  v10 = *v9;
  v11 = *(v9 + 1);
  if (v9[16] != 1)
  {

    sub_255E3A858();
    v13 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v10, v11, 0);
    result = (*(v5 + 8))(v8, v4);
    v11 = v15[1];
    if (!v15[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v10)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(*a1, a1[1], a2, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255D371D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  return sub_255D38004(v3 + 16, a2);
}

uint64_t sub_255D37298(uint64_t a1, uint64_t *a2)
{
  sub_255D38004(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
  sub_255E38608();

  return sub_255D38CA8(v5);
}

uint64_t sub_255D37398(uint64_t *a1)
{
  v2 = *a1;
  sub_255D396AC();

  return sub_255E38D68();
}

double sub_255D373F8@<D0>(_OWORD *a1@<X8>)
{
  sub_255D397C4();
  sub_255E38D58();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255D37448(__int128 *a1)
{
  v2 = *a1;
  sub_255D397C4();
  swift_unknownObjectRetain();
  return sub_255E38D68();
}

double sub_255D374A4@<D0>(_OWORD *a1@<X8>)
{
  sub_255D39770();
  sub_255E38D58();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255D374F4(__int128 *a1)
{
  v2 = *a1;
  sub_255D39770();
  swift_unknownObjectRetain();
  return sub_255E38D68();
}

uint64_t sub_255D37560(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255E394D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, a1, a4);
  (*(v9 + 32))(v17, v12, a4);
  v17[*(v13 + 36)] = a2;
  MEMORY[0x259C4DFE0](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_255D37738@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_255E38D58();
  *a2 = v4;
  return result;
}

uint64_t sub_255D37794(void **a1)
{
  v1 = *a1;
  sub_255D3971C();
  v2 = v1;
  return sub_255E38D68();
}

uint64_t sub_255D377F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_255D37864(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_255D378C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_255D378C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255D3798C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255D3951C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_255D3798C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_255D37A98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_255E3AA18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_255D37A98(uint64_t a1, unint64_t a2)
{
  v4 = sub_255D37AE4(a1, a2);
  sub_255D37C14(&unk_2867E8B38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255D37AE4(uint64_t a1, unint64_t a2)
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

  v6 = sub_255DE5C6C(v5, 0);
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

  result = sub_255E3AA18();
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
        v10 = sub_255E3A5A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255DE5C6C(v10, 0);
        result = sub_255E3A998();
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

uint64_t sub_255D37C14(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_255D37D00(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_255D37D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6148, &qword_255E3BB78);
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

_BYTE **sub_255D37DF4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_255D37E0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_255D37E60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255D37EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255D37F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255D37FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255D38060(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
      v4 = a4 & 1;
      return sub_255D38090(result, a2, a3, v4);
    }
  }

  else
  {
    if (!(a4 >> 6))
    {
      v4 = a4 & 1;
      return sub_255D38090(result, a2, a3, v4);
    }
  }

  return result;
}

uint64_t sub_255D38090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {

    return sub_255D2F870(a3);
  }

  return result;
}

uint64_t sub_255D380E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D2F870(a3);
  }

  else
  {
  }
}

uint64_t sub_255D38130(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_255D3813C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_255D38148()
{
  result = qword_27F7E5F28;
  if (!qword_27F7E5F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F20, &qword_255E3B9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5F28);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_255D38214()
{
  result = qword_27F7E5F40;
  if (!qword_27F7E5F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F30, &qword_255E3B9E0);
    sub_255D38148();
    sub_255D382A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5F40);
  }

  return result;
}

unint64_t sub_255D382A0()
{
  result = qword_27F7E5F48;
  if (!qword_27F7E5F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F50, &qword_255E3B9F0);
    sub_255D3832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5F48);
  }

  return result;
}

unint64_t sub_255D3832C()
{
  result = qword_27F7E5F58;
  if (!qword_27F7E5F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F60, &qword_255E3B9F8);
    sub_255D383E4();
    sub_255D38950(&qword_27F7E5FA8, &qword_27F7E5FB0, &unk_255E3BA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5F58);
  }

  return result;
}

unint64_t sub_255D383E4()
{
  result = qword_27F7E5F68;
  if (!qword_27F7E5F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F70, &unk_255E3BA00);
    sub_255D3849C();
    sub_255D38950(&qword_27F7E5F98, &qword_27F7E5FA0, &qword_255E54E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5F68);
  }

  return result;
}

unint64_t sub_255D3849C()
{
  result = qword_27F7E5F78;
  if (!qword_27F7E5F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F80, &unk_255E43FF0);
    sub_255D38950(&qword_27F7E5F88, &qword_27F7E5F90, &unk_255E3BA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5F78);
  }

  return result;
}

unint64_t sub_255D38554()
{
  result = qword_27F7E5FB8;
  if (!qword_27F7E5FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F38, &qword_255E3B9E8);
    sub_255D38148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5FB8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RemoteContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for RemoteContent(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v22 = *(v7 + 8);
      }

      goto LABEL_2;
    }

    v26 = *v7;
    v27 = *(v7 + 8);
LABEL_19:
    sub_255D37E60(v26, v27);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v28 = sub_255E38588();
    (*(*(v28 - 8) + 8))(v7, v28);
    v29 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920) + 64));
    v27 = v29[1];
    if (v27 >> 60 == 15)
    {
      goto LABEL_2;
    }

    v26 = *v29;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_255D38060(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24));
    v23 = *(v7 + 56);
    if (v23 <= 0xFD)
    {
      sub_255D38060(*(v7 + 32), *(v7 + 40), *(v7 + 48), v23);
    }

    v24 = *(v7 + 88);
    if (v24 != 255)
    {
      sub_255D380E0(*(v7 + 64), *(v7 + 72), *(v7 + 80), v24 & 1);
    }

    v25 = *(v7 + 96);
  }

LABEL_2:
  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v5 + v1[6]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  sub_255D2F888();
  v14 = (v5 + v1[7]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  sub_255D2F888();
  v18 = (v5 + v1[8]);
  v19 = *v18;

  v20 = v18[1];

  sub_255D38130(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 16));
  sub_255D38130(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));
  sub_255D3813C(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_255D38874()
{
  v1 = *(type metadata accessor for RemoteContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_255D3701C((v0 + v2), *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255D38950(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_205Tm()
{
  v1 = type metadata accessor for RemoteContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for RemoteContent(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = *(v7 + 8);
      }

      goto LABEL_2;
    }

    v25 = *v7;
    v26 = *(v7 + 8);
LABEL_19:
    sub_255D37E60(v25, v26);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v27 = sub_255E38588();
    (*(*(v27 - 8) + 8))(v7, v27);
    v28 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920) + 64));
    v26 = v28[1];
    if (v26 >> 60 == 15)
    {
      goto LABEL_2;
    }

    v25 = *v28;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_255D38060(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24));
    v22 = *(v7 + 56);
    if (v22 <= 0xFD)
    {
      sub_255D38060(*(v7 + 32), *(v7 + 40), *(v7 + 48), v22);
    }

    v23 = *(v7 + 88);
    if (v23 != 255)
    {
      sub_255D380E0(*(v7 + 64), *(v7 + 72), *(v7 + 80), v23 & 1);
    }

    v24 = *(v7 + 96);
  }

LABEL_2:
  v9 = (v5 + v1[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_255D2F888();
  v13 = (v5 + v1[7]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  sub_255D2F888();
  v17 = (v5 + v1[8]);
  v18 = *v17;

  v19 = v17[1];

  sub_255D38130(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 16));
  sub_255D38130(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));
  sub_255D3813C(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255D38C34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RemoteContentView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_255D38E08()
{
  sub_255D38E90();
  if (v0 <= 0x3F)
  {
    sub_255D38F34(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255D38E90()
{
  if (!qword_27F7E5FE0)
  {
    sub_255E38588();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5FE8, &qword_255E3BAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5FF0, &qword_255E3BAE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F7E5FE0);
    }
  }
}

void sub_255D38F34(uint64_t a1)
{
  if (!qword_27F7E5FF8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6000, &qword_255E3BAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6008, &qword_255E3BAF8);
    type metadata accessor for RemoteStateStore(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F7E5FF8);
    }
  }
}

void sub_255D39098()
{
  sub_255D39368(319, &qword_27F7E6028, type metadata accessor for RemoteContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_255D392D4(319, &qword_27F7E6030, type metadata accessor for RemoteStateStore, &qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    if (v1 <= 0x3F)
    {
      sub_255D392D4(319, &qword_27F7E6038, type metadata accessor for LocalStateStore, &qword_27F7E5EF8, type metadata accessor for LocalStateStore);
      if (v2 <= 0x3F)
      {
        sub_255D39368(319, &qword_27F7E6040, type metadata accessor for RemoteLoader, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_255D393CC(319, &qword_27F7E6048, &qword_27F7E6050, &qword_255E3BB38);
          if (v4 <= 0x3F)
          {
            sub_255D393CC(319, &qword_27F7E6058, &qword_27F7E6060, &qword_255E3BB40);
            if (v5 <= 0x3F)
            {
              sub_255D39368(319, &qword_27F7E6068, type metadata accessor for ContentRegistry, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_255D392D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_255D37FBC(a4, a5);
    v8 = sub_255E38898();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255D39368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255D393CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_255E38878();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_255D39420()
{
  result = qword_27F7E6070;
  if (!qword_27F7E6070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6078, &qword_255E3BB48);
    sub_255D38214();
    sub_255D38554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6070);
  }

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

uint64_t sub_255D394BC(uint64_t a1, int a2)
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

uint64_t sub_255D394DC(uint64_t result, int a2, int a3)
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

uint64_t sub_255D3951C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255D3957C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255D395E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255D39644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_255D396AC()
{
  result = qword_27F7E6150;
  if (!qword_27F7E6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6150);
  }

  return result;
}

unint64_t sub_255D3971C()
{
  result = qword_27F7E6168;
  if (!qword_27F7E6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6168);
  }

  return result;
}

unint64_t sub_255D39770()
{
  result = qword_27F7E6170;
  if (!qword_27F7E6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6170);
  }

  return result;
}

unint64_t sub_255D397C4()
{
  result = qword_27F7E6178;
  if (!qword_27F7E6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6178);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_255D3984C(uint64_t a1, unint64_t *a2)
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

uint64_t Shape.anyShape.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  return sub_255D3998C(v9, a1, a2, a3);
}

uint64_t sub_255D3998C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (**a4)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  result = (*(v8 + 32))(v11 + v10, a1, a2);
  *a4 = sub_255D3D704;
  a4[1] = v11;
  return result;
}

double AnyShape.path(in:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v3(v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

double sub_255D39AB8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v3(v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

void (*sub_255D39B24(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_255E38768();
  return sub_255D39BAC;
}

void sub_255D39BAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_255D39BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255D3D6B0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_255D39C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255D3D6B0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_255D39CC0(uint64_t a1)
{
  v2 = sub_255D3D6B0();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_255D39D0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v4 = 0x7265696669646F6DLL;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E65746E6F63;
  if (*a2 != 1)
  {
    v8 = 0x7265696669646F6DLL;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D39E10()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D39EAC()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D39F34()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D39FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D3D664();
  *a2 = result;
  return result;
}

void sub_255D39FFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v5 = 0x7265696669646F6DLL;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D3A054()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x7265696669646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D3A0A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D3D664();
  *a1 = result;
  return result;
}

uint64_t sub_255D3A0DC(uint64_t a1)
{
  v2 = sub_255D3CDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3A118(uint64_t a1)
{
  v2 = sub_255D3CDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShapeContentBox.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6190, &unk_255E3BBD0);
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v14 = sub_255E3AAE8();
  v15 = __swift_project_value_buffer(v14, qword_27F8152F0);
  if (!*(v13 + 16) || (v16 = sub_255D3CA98(v15), (v17 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v13 + 56) + 32 * v16, v58);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError();
    sub_255D3E628(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v49 = v4;
  v50 = v8;
  v18 = v55;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_255D3CAFC();
  v51 = v11;
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v48 = v18;
  v22 = v50;
  v23 = sub_255E3ABD8();
  if (!*(v23 + 16))
  {

    type metadata accessor for DynamicKeyError();
    sub_255D3E628(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
    swift_allocError();
    v31 = v51;
    sub_255E3AB68();
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v63 + 8))(v31, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = *(v23 + 32);
  v24 = *(v23 + 40);
  v26 = *(v23 + 48);
  v47 = *(v23 + 56);
  swift_bridgeObjectRetain_n();

  v27 = sub_255E3AB68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 56) = &type metadata for DynamicKey;
  *(inited + 64) = v20;
  v29 = swift_allocObject();
  *(inited + 32) = v29;
  *(v29 + 16) = v25;
  *(v29 + 24) = v24;
  v45 = v26;
  *(v29 + 32) = v26;
  *(v29 + 40) = v47;
  v58[0] = v27;

  sub_255D3D544(inited, sub_255DE56C0, &qword_27F7E6228, &qword_255E3BEE0);
  v46 = v25;
  v30 = sub_255E0800C(v25, v24);
  v43 = v32;
  v44 = v30;

  v58[0] = v46;
  v58[1] = v24;
  v58[2] = v45;
  v59 = v47;
  sub_255D3CDC8();
  v33 = v51;
  sub_255E3AB58();

  LOBYTE(v55) = 1;
  v34 = v49;
  sub_255E3AB78();
  v35 = v48;
  sub_255D3CE1C(v58, v54);
  v36 = v43;
  v56 = v44;
  v57 = v43;
  __swift_allocate_boxed_opaque_existential_1(&v55);
  v37 = *(*(v36 + 8) + 16);
  sub_255E3A7B8();
  sub_255D34630(&v55, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61C0, &qword_255E3BBE8);
  v54[0] = 2;
  sub_255D3CF34();
  sub_255E3ABA8();
  if (v55)
  {
    v38 = v55;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v39 = v35;
  v40 = v61;
  v41 = v62;
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  (*(v41 + 64))(v38, v40, v41);

  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  (*(v53 + 8))(v7, v34);
  (*(v63 + 8))(v33, v50);
  sub_255D3D05C(v60, v52);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D3D094(v60);
}

uint64_t sub_255D3AA30()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D3AA78()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D3AABC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D3AB1C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D3AB74(uint64_t a1)
{
  v2 = sub_255D3EDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3ABB0(uint64_t a1)
{
  v2 = sub_255D3EDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D3ABEC@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3EF4C();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3AC74@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3EEF8();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3ACDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255E3A0A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = *(v1 + 6);
  v12 = *(v1 + 8);
  if (*(v1 + 7))
  {

    sub_255D3AEE8(v5, v13);

    v7 = v13[1];
    *a1 = v13[0];
    *(a1 + 8) = v7;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D3AEE8@<X0>(unint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)@<X8>)
{
  v27 = a2;
  v5 = sub_255E38F38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255E3A0A8();
  v22 = *(v10 - 8);
  v11 = *(v22 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = *(v2 + 40);
  if (v12 <= 0xFD)
  {
    v13 = *(v2 + 24);
    v14 = *(v2 + 32);
    v23 = *(v2 + 16);
    v24 = v13;
    v25 = v14;
    v26 = v12;
    sub_255D3E5A8(v23, v13, v14, v12);
    StringResolvable.resolved(with:)(a1);
    if (v3)
    {
    }

    sub_255D38060(v23, v24, v25, v26);
  }

  v15 = sub_255E3AB48();

  v16 = MEMORY[0x277CE0118];
  if (v15 != 1)
  {
    v16 = MEMORY[0x277CE0128];
  }

  (*(v6 + 104))(v9, *v16, v5);
  (*(v6 + 32))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v5);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  result = sub_255D3E780(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, MEMORY[0x277CE1260]);
  v20 = v27;
  *v27 = sub_255D3E57C;
  v20[1] = v18;
  return result;
}

uint64_t sub_255D3B18C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C797473;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C797473;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D3B224()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3B298()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D3B2F8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3B368@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D3B3C8(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x656C797473;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D3B3F8()
{
  if (*v0)
  {
    result = 0x656C797473;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_255D3B424@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D3B488(uint64_t a1)
{
  v2 = sub_255D3EE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3B4C4(uint64_t a1)
{
  v2 = sub_255D3EE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D3B500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = sub_255E385D8();
  v31 = *(v30 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6310, &unk_255E3C950);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v52 = sub_255E38CC8();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3EE3C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v32;
    v29 = v12;
    v15 = v33;
    LOBYTE(v39[0]) = 0;
    v16 = sub_255E3AB88();
    if (v17)
    {
      v28 = v16;
      v19 = v17;
    }

    else
    {
      v20 = v6;
      sub_255E385C8();
      v28 = sub_255E385B8();
      v19 = v21;
      (*(v31 + 8))(v20, v30);
    }

    v47 = 1;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v14 + 8))(v10, v7);
    v22 = v48;
    v32 = v49;
    LODWORD(v33) = v50;
    v23 = v28;
    *&v34 = v28;
    *(&v34 + 1) = v19;
    v35 = v48;
    *&v36 = v49;
    BYTE8(v36) = v50;
    HIDWORD(v36) = *(v51 + 3);
    *(&v36 + 9) = v51[0];
    v24 = v52;
    *&v37 = MEMORY[0x277D84F90];
    *(&v37 + 1) = v52;
    v25 = v29;
    v38 = v29;
    *(v15 + 64) = v29;
    v26 = v37;
    *(v15 + 32) = v36;
    *(v15 + 48) = v26;
    v27 = v35;
    *v15 = v34;
    *(v15 + 16) = v27;
    sub_255D3EE90(&v34, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v39[0] = v23;
    v39[1] = v19;
    v40 = v22;
    v41 = v32;
    v42 = v33;
    *v43 = v51[0];
    *&v43[3] = *(v51 + 3);
    v44 = MEMORY[0x277D84F90];
    v45 = v24;
    v46 = v25;
    return sub_255D3EEC8(v39);
  }
}

uint64_t sub_255D3B91C@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3ACDC(&v3);
  sub_255D3D120();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3B990(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_255D3B9F4@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3EAC8();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

double sub_255D3BA5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255D3EB1C(a1, v6);
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

uint64_t sub_255D3BAA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255E38BC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v8 = *v1;
  v9 = v1[1];
  v13 = *(v1 + 10);
  v14 = *(v1 + 12);
  if (*(v1 + 11))
  {

    sub_255D3BCC8(v5, v15);

    v7 = v15[1];
    *a1 = v15[0];
    *(a1 + 8) = v7;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D3BCC8@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)@<X8>)
{
  v4 = v3;
  v36 = a2;
  v35 = sub_255E38F38();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255E38BC8();
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = v12;
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v16 = *(v2 + 56);
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  v19 = 0;
  v30 = a1;
  if (v14 != 255)
  {
    sub_255DDEF98(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v14 & 1);
    if (v3)
    {

      v4 = 0;
    }

    else
    {
      v19 = v20;
    }
  }

  if (v18 <= 0xFD)
  {
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
    sub_255D3E5A8(v15, v16, v17, v18);
    StringResolvable.resolved(with:)(v30);
    if (v4)
    {
    }

    sub_255D38060(v37, v38, v39, v40);
  }

  v21 = sub_255E3AB48();

  v22 = MEMORY[0x277CE0118];
  if (v21 != 1)
  {
    v22 = MEMORY[0x277CE0128];
  }

  v24 = v34;
  v23 = v35;
  (*(v6 + 104))(v34, *v22, v35);
  *v13 = v19;
  *(v13 + 1) = v19;
  (*(v6 + 32))(&v13[*(v31 + 20)], v24, v23);
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = swift_allocObject();
  result = sub_255D3E780(v13, v26 + v25, MEMORY[0x277CDFC08]);
  v28 = v36;
  *v36 = sub_255D3E7E8;
  v28[1] = v26;
  return result;
}

uint64_t sub_255D3BFEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x615272656E726F63;
  v4 = 0xEC00000073756964;
  if (v2 != 1)
  {
    v3 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x615272656E726F63;
  v8 = 0xEC00000073756964;
  if (*a2 != 1)
  {
    v7 = 0x656C797473;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D3C0F0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3C18C()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D3C214()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3C2AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D3F734();
  *a2 = result;
  return result;
}

void sub_255D3C2DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEC00000073756964;
  v5 = 0x615272656E726F63;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D3C334()
{
  v1 = 0x615272656E726F63;
  if (*v0 != 1)
  {
    v1 = 0x656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D3C388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D3F734();
  *a1 = result;
  return result;
}

uint64_t sub_255D3C3B0(uint64_t a1)
{
  v2 = sub_255D3E9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3C3EC(uint64_t a1)
{
  v2 = sub_255D3E9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D3C428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62D0, &qword_255E3C938);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  type metadata accessor for RemoteStateStore(0);
  sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v74 = sub_255E38CC8();
  v13 = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3E9B8();
  v15 = v45;
  sub_255E3AE28();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = v43;
    v45 = v13;
    LOBYTE(v53) = 0;
    v17 = sub_255E3AB88();
    v39 = v11;
    if (v18)
    {
      v38 = v17;
      v40 = v18;
    }

    else
    {
      sub_255E385C8();
      v38 = sub_255E385B8();
      v40 = v20;
      (*(v16 + 8))(v7, v42);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v46) = 1;
    sub_255D38950(&qword_27F7E62E8, &qword_27F7E62E0, &qword_255E3C940);
    v21 = v39;
    sub_255E3ABA8();
    v22 = v54;
    v42 = v55;
    v43 = v53;
    v37 = v56;
    v68 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v44 + 8))(v21, v8);
    v39 = *(&v69 + 1);
    v44 = v69;
    v35 = v70;
    v36 = v22;
    v34 = v71;
    v23 = v38;
    v24 = v40;
    *&v46 = v38;
    *(&v46 + 1) = v40;
    *&v47 = v43;
    *(&v47 + 1) = v22;
    *&v48 = v42;
    LOBYTE(v22) = v37;
    BYTE8(v48) = v37;
    HIDWORD(v48) = *(v73 + 3);
    *(&v48 + 9) = v73[0];
    v49 = v69;
    *&v50 = v70;
    BYTE8(v50) = v71;
    HIDWORD(v50) = *&v72[3];
    *(&v50 + 9) = *v72;
    v33 = a1;
    v25 = v74;
    *&v51 = MEMORY[0x277D84F90];
    *(&v51 + 1) = v74;
    v26 = v45;
    v52 = v45;
    v27 = v50;
    v28 = v51;
    v29 = v41;
    *(v41 + 96) = v45;
    v29[4] = v27;
    v29[5] = v28;
    v30 = v46;
    v31 = v47;
    v32 = v49;
    v29[2] = v48;
    v29[3] = v32;
    *v29 = v30;
    v29[1] = v31;
    sub_255D3EA60(&v46, &v53);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v53 = v23;
    v54 = v24;
    v55 = v43;
    v56 = v36;
    v57 = v42;
    v58 = v22;
    *v59 = v73[0];
    *&v59[3] = *(v73 + 3);
    v60 = v44;
    v61 = v39;
    v62 = v35;
    v63 = v34;
    *v64 = *v72;
    *&v64[3] = *&v72[3];
    v65 = MEMORY[0x277D84F90];
    v66 = v25;
    v67 = v26;
    return sub_255D3EA98(&v53);
  }
}

uint64_t sub_255D3C948@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3BAA4(&v3);
  sub_255D3D120();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3C9BC(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

unint64_t sub_255D3CA20(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_255E3AD98();
  sub_255E3A578();
  v6 = sub_255E3ADD8();

  return sub_255D3CB50(a1, a2, v6);
}

unint64_t sub_255D3CA98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_255E3AAE8();
  v5 = sub_255E3A478();

  return sub_255D3CC08(a1, v5);
}

unint64_t sub_255D3CAFC()
{
  result = qword_27F7E61A8;
  if (!qword_27F7E61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61A8);
  }

  return result;
}

unint64_t sub_255D3CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255E3AC68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255D3CC08(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_255E3AAE8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_255E3A4B8();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_255D3CDC8()
{
  result = qword_27F7E61B8;
  if (!qword_27F7E61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61B8);
  }

  return result;
}

uint64_t sub_255D3CE1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259C4F9E0);
  }

  return result;
}

unint64_t sub_255D3CF34()
{
  result = qword_27F7E61C8;
  if (!qword_27F7E61C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E61C0, &qword_255E3BBE8);
    sub_255D3CFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61C8);
  }

  return result;
}

unint64_t sub_255D3CFB8()
{
  result = qword_27F7E61D0;
  if (!qword_27F7E61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61D0);
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

unint64_t sub_255D3D0C8()
{
  result = qword_27F7E61E0;
  if (!qword_27F7E61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61E0);
  }

  return result;
}

unint64_t sub_255D3D120()
{
  result = qword_27F7E61E8;
  if (!qword_27F7E61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61E8);
  }

  return result;
}

unint64_t sub_255D3D178()
{
  result = qword_27F7E61F0;
  if (!qword_27F7E61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E61F0);
  }

  return result;
}

uint64_t sub_255D3D2B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_255D3D2F8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255D3D358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D3D3A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_255D3D418()
{
  result = qword_27F7E6208;
  if (!qword_27F7E6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6208);
  }

  return result;
}

unint64_t sub_255D3D470()
{
  result = qword_27F7E6210;
  if (!qword_27F7E6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6210);
  }

  return result;
}

unint64_t sub_255D3D4C8()
{
  result = qword_27F7E6218;
  if (!qword_27F7E6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6218);
  }

  return result;
}

uint64_t sub_255D3D544(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_255D3D664()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D3D6B0()
{
  result = qword_27F7E6220;
  if (!qword_27F7E6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6220);
  }

  return result;
}

double sub_255D3D704@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = v1 + ((*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80));
  sub_255E39F08();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySdGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI16StringResolvableOSg(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_255D3D7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_255D3D83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_255D3D8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_255D3D920(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_255D3D990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255D3D9D8(uint64_t result, int a2, int a3)
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

unint64_t sub_255D3DA30(uint64_t a1)
{
  result = sub_255D3DA58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DA58()
{
  result = qword_27F7E6230;
  if (!qword_27F7E6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6230);
  }

  return result;
}

unint64_t sub_255D3DAC4()
{
  result = qword_27F7E6238;
  if (!qword_27F7E6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6238);
  }

  return result;
}

unint64_t sub_255D3DB44()
{
  result = qword_27F7E6240;
  if (!qword_27F7E6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6240);
  }

  return result;
}

unint64_t sub_255D3DB98()
{
  result = qword_27F7E6248;
  if (!qword_27F7E6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6248);
  }

  return result;
}

unint64_t sub_255D3DBEC(uint64_t a1)
{
  result = sub_255D3DC14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DC14()
{
  result = qword_27F7E6250;
  if (!qword_27F7E6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6250);
  }

  return result;
}

unint64_t sub_255D3DC80()
{
  result = qword_27F7E6258;
  if (!qword_27F7E6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6258);
  }

  return result;
}

unint64_t sub_255D3DD00()
{
  result = qword_27F7E6260;
  if (!qword_27F7E6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6260);
  }

  return result;
}

unint64_t sub_255D3DD54()
{
  result = qword_27F7E6268;
  if (!qword_27F7E6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6268);
  }

  return result;
}

unint64_t sub_255D3DDA8(uint64_t a1)
{
  result = sub_255D3DDD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DDD0()
{
  result = qword_27F7E6270;
  if (!qword_27F7E6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6270);
  }

  return result;
}

unint64_t sub_255D3DE3C()
{
  result = qword_27F7E6278;
  if (!qword_27F7E6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6278);
  }

  return result;
}

unint64_t sub_255D3DEBC()
{
  result = qword_27F7E6280;
  if (!qword_27F7E6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6280);
  }

  return result;
}

unint64_t sub_255D3DF10()
{
  result = qword_27F7E6288;
  if (!qword_27F7E6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6288);
  }

  return result;
}

unint64_t sub_255D3DF64(uint64_t a1)
{
  result = sub_255D3DF8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DF8C()
{
  result = qword_27F7E6290;
  if (!qword_27F7E6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6290);
  }

  return result;
}

unint64_t sub_255D3DFF8()
{
  result = qword_27F7E6298;
  if (!qword_27F7E6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6298);
  }

  return result;
}

unint64_t sub_255D3E078()
{
  result = qword_27F7E62A0;
  if (!qword_27F7E62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62A0);
  }

  return result;
}

unint64_t sub_255D3E0CC()
{
  result = qword_27F7E62A8;
  if (!qword_27F7E62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62A8);
  }

  return result;
}

unint64_t sub_255D3E120(uint64_t a1)
{
  result = sub_255D3E148();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3E148()
{
  result = qword_27F7E62B0;
  if (!qword_27F7E62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62B0);
  }

  return result;
}

unint64_t sub_255D3E208()
{
  result = qword_27F7E62B8;
  if (!qword_27F7E62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62B8);
  }

  return result;
}

uint64_t sub_255D3E288(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D3E2F8()
{
  result = qword_27F7E62C0;
  if (!qword_27F7E62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62C0);
  }

  return result;
}

unint64_t sub_255D3E34C()
{
  result = qword_27F7E62C8;
  if (!qword_27F7E62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62C8);
  }

  return result;
}

unint64_t sub_255D3E3BC(uint64_t a1)
{
  result = sub_255D3E2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E400(uint64_t a1)
{
  result = sub_255D3E078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E444(uint64_t a1)
{
  result = sub_255D3DEBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E488(uint64_t a1)
{
  result = sub_255D3DD00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E4CC(uint64_t a1)
{
  result = sub_255D3DB44();
  *(a1 + 8) = result;
  return result;
}

double sub_255D3E4F4@<D0>(uint64_t a1@<X8>)
{
  sub_255E39FD8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_255D3E538@<D0>(uint64_t a1@<X8>)
{
  sub_255E3A0D8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_255D3E5A8(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
      v4 = a4 & 1;
      return sub_255D3E5D8(result, a2, a3, v4);
    }
  }

  else
  {
    if (!(a4 >> 6))
    {
      v4 = a4 & 1;
      return sub_255D3E5D8(result, a2, a3, v4);
    }
  }

  return result;
}

uint64_t sub_255D3E5D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {

    return sub_255D34858(a3);
  }

  return result;
}

uint64_t sub_255D3E628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_67Tm()
{
  v1 = *(sub_255E3A0A8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_255E38F38();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_255D3E73C@<D0>(uint64_t a1@<X8>)
{
  sub_255E3A308();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_255D3E780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_77Tm()
{
  v1 = sub_255E38BC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_255E38F38();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_255D3E8F0@<D0>(uint64_t (*a1)(void)@<X0>, void (*a2)(_OWORD *__return_ptr, double, double, double, double)@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = *(a1(0) - 8);
  v15 = v7 + ((*(v14 + 80) + 16) & ~*(v14 + 80));
  a2(v18, a4, a5, a6, a7);
  result = *v18;
  v17 = v18[1];
  *a3 = v18[0];
  *(a3 + 16) = v17;
  *(a3 + 32) = v19;
  return result;
}

unint64_t sub_255D3E9B8()
{
  result = qword_27F7E62D8;
  if (!qword_27F7E62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62D8);
  }

  return result;
}

unint64_t sub_255D3EA0C()
{
  result = qword_27F7E62F0;
  if (!qword_27F7E62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62F0);
  }

  return result;
}

unint64_t sub_255D3EAC8()
{
  result = qword_27F7E62F8;
  if (!qword_27F7E62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62F8);
  }

  return result;
}

uint64_t sub_255D3EB1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = sub_255E385D8();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6300, &qword_255E3C948);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  type metadata accessor for RemoteStateStore(0);
  sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v12 = sub_255E38CC8();
  v14 = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3EDE8();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v28 = v12;
    v16 = v33;
    v17 = v32;
    v18 = sub_255E3AB88();
    if (v19)
    {
      v26 = v18;
      v27 = v19;
    }

    else
    {
      sub_255E385C8();
      v26 = sub_255E385B8();
      v27 = v21;
      (*(v30 + 8))(v16, v29);
    }

    (*(v17 + 8))(v11, v8);
    v22 = v31;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v23 = v27;
    *v22 = v26;
    v22[1] = v23;
    v24 = v28;
    v22[2] = MEMORY[0x277D84F90];
    v22[3] = v24;
    v22[4] = v14;
  }

  return result;
}

unint64_t sub_255D3EDE8()
{
  result = qword_27F7E6308;
  if (!qword_27F7E6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6308);
  }

  return result;
}

unint64_t sub_255D3EE3C()
{
  result = qword_27F7E6318;
  if (!qword_27F7E6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6318);
  }

  return result;
}

unint64_t sub_255D3EEF8()
{
  result = qword_27F7E6320;
  if (!qword_27F7E6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6320);
  }

  return result;
}

unint64_t sub_255D3EF4C()
{
  result = qword_27F7E6328;
  if (!qword_27F7E6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapsuleView.CapsuleCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapsuleView.CapsuleCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicShapeCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BasicShapeCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ViewContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255D3F320()
{
  result = qword_27F7E6338;
  if (!qword_27F7E6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6338);
  }

  return result;
}

unint64_t sub_255D3F374()
{
  result = qword_27F7E6340;
  if (!qword_27F7E6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6340);
  }

  return result;
}

unint64_t sub_255D3F3C8()
{
  result = qword_27F7E6348;
  if (!qword_27F7E6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6348);
  }

  return result;
}

unint64_t sub_255D3F420()
{
  result = qword_27F7E6350;
  if (!qword_27F7E6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6350);
  }

  return result;
}

unint64_t sub_255D3F478()
{
  result = qword_27F7E6358;
  if (!qword_27F7E6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6358);
  }

  return result;
}

unint64_t sub_255D3F4D0()
{
  result = qword_27F7E6360;
  if (!qword_27F7E6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6360);
  }

  return result;
}

unint64_t sub_255D3F528()
{
  result = qword_27F7E6368;
  if (!qword_27F7E6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6368);
  }

  return result;
}

unint64_t sub_255D3F580()
{
  result = qword_27F7E6370;
  if (!qword_27F7E6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6370);
  }

  return result;
}

unint64_t sub_255D3F5D8()
{
  result = qword_27F7E6378;
  if (!qword_27F7E6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6378);
  }

  return result;
}

unint64_t sub_255D3F630()
{
  result = qword_27F7E6380;
  if (!qword_27F7E6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6380);
  }

  return result;
}

unint64_t sub_255D3F688()
{
  result = qword_27F7E6388;
  if (!qword_27F7E6388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6388);
  }

  return result;
}

unint64_t sub_255D3F6E0()
{
  result = qword_27F7E6390;
  if (!qword_27F7E6390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6390);
  }

  return result;
}

uint64_t sub_255D3F734()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D3F810(uint64_t a1, uint64_t a2)
{
  v4 = sub_255E39248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_255E39258();
}

uint64_t sub_255D3F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_255E39248();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_255E39258();
}

uint64_t sub_255D3FA00@<X0>(void (*a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v345) = a2;
  v348 = a1;
  v352 = a5;
  v7 = sub_255E38B68();
  v309 = *(v7 - 8);
  v8 = *(v309 + 64);
  MEMORY[0x28223BE20](v7);
  v308 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255D42A04(&qword_27F7E63A0, MEMORY[0x277CDDA98]);
  v454 = a3;
  v455 = v7;
  v369 = v7;
  v456 = a4;
  v457 = v10;
  v370 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v336 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v336 + 64);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v335 = &v295 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v324 = &v295 - v15;
  v16 = sub_255E39508();
  v307 = *(v16 - 8);
  v17 = *(v307 + 64);
  MEMORY[0x28223BE20](v16);
  v306 = &v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_255D42A04(&qword_27F7E63A8, MEMORY[0x277CDE340]);
  v454 = a3;
  v455 = v16;
  v368 = v16;
  v456 = a4;
  v457 = v19;
  v367 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v334 = *(v20 - 8);
  v21 = *(v334 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v322 = &v295 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v321 = &v295 - v24;
  v25 = sub_255E38E48();
  v26 = sub_255D42A04(&qword_27F7E63B0, MEMORY[0x277CDDE40]);
  v454 = a3;
  v455 = v25;
  v456 = a4;
  v457 = v26;
  v365 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v337 = v20;
  v28 = sub_255E39268();
  v320 = *(v28 - 8);
  v29 = *(v320 + 64);
  MEMORY[0x28223BE20](v28);
  v319 = &v295 - v30;
  v366 = v31;
  v342 = OpaqueTypeMetadata2;
  v371 = sub_255E39268();
  v338 = *(v371 - 8);
  v32 = *(v338 + 64);
  MEMORY[0x28223BE20](v371);
  v343 = &v295 - v33;
  v364 = swift_checkMetadataState();
  v305 = *(v364 - 8);
  v34 = *(v305 + 64);
  v35 = MEMORY[0x28223BE20](v364);
  v304 = &v295 - v36;
  v323 = v27;
  v332 = *(v27 - 8);
  v37 = *(v332 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v318 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v317 = &v295 - v40;
  v41 = sub_255E39388();
  v303 = *(v41 - 8);
  v42 = *(v303 + 64);
  MEMORY[0x28223BE20](v41);
  v302 = &v295 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_255D42A04(&qword_27F7E63B8, MEMORY[0x277CDE0B8]);
  v454 = a3;
  v455 = v41;
  v363 = v41;
  v456 = a4;
  v457 = v44;
  v362 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v330 = *(v45 - 8);
  v46 = *(v330 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v314 = &v295 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v313 = &v295 - v49;
  v50 = sub_255E38BB8();
  v51 = sub_255D42A04(&qword_27F7E63C0, MEMORY[0x277CDDB18]);
  v454 = a3;
  v455 = v50;
  v456 = a4;
  v457 = v51;
  v360 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v333 = v45;
  v53 = sub_255E39268();
  v316 = *(v53 - 8);
  v54 = *(v316 + 64);
  MEMORY[0x28223BE20](v53);
  v315 = &v295 - v55;
  v359 = swift_checkMetadataState();
  v301 = *(v359 - 8);
  v56 = *(v301 + 64);
  v57 = MEMORY[0x28223BE20](v359);
  v326 = &v295 - v58;
  v331 = v52;
  v329 = *(v52 - 8);
  v59 = *(v329 + 64);
  v60 = MEMORY[0x28223BE20](v57);
  v340 = &v295 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v311 = &v295 - v62;
  v63 = sub_255E39588();
  v300 = *(v63 - 8);
  v64 = *(v300 + 64);
  MEMORY[0x28223BE20](v63);
  v325 = &v295 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_255D42A04(&qword_27F7E63C8, MEMORY[0x277CDE400]);
  v454 = a3;
  v455 = v63;
  v357 = v66;
  v358 = v63;
  v456 = a4;
  v457 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v328 = *(v67 - 8);
  v68 = *(v328 + 64);
  v69 = MEMORY[0x28223BE20](v67);
  v339 = &v295 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v310 = &v295 - v71;
  v72 = sub_255E390C8();
  v73 = sub_255D42A04(&qword_27F7E63D0, MEMORY[0x277CDDEE0]);
  v353 = a3;
  v454 = a3;
  v455 = v72;
  v344 = a4;
  v456 = a4;
  v457 = v73;
  v355 = v73;
  v74 = swift_getOpaqueTypeMetadata2();
  v75 = sub_255E39268();
  v312 = *(v75 - 8);
  v76 = *(v312 + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v295 - v77;
  v356 = v79;
  v361 = v53;
  v80 = sub_255E39268();
  v341 = *(v80 - 8);
  v81 = *(v341 + 64);
  MEMORY[0x28223BE20](v80);
  v349 = (&v295 - v82);
  v354 = swift_checkMetadataState();
  v83 = *(v354 - 8);
  v84 = *(v83 + 64);
  v85 = MEMORY[0x28223BE20](v354);
  v87 = &v295 - v86;
  v327 = *(v74 - 8);
  v88 = *(v327 + 64);
  v89 = MEMORY[0x28223BE20](v85);
  v91 = &v295 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v93 = &v295 - v92;
  v351 = v80;
  v94 = sub_255E39268();
  v95 = *(*(v94 - 8) + 64);
  v96 = MEMORY[0x28223BE20](v94);
  v98 = &v295 - v97;
  v99 = v345;
  v346 = v100;
  v347 = v96;
  v350 = v98;
  if (v345 <= 2u)
  {
    v130 = v83;
    v297 = v93;
    v298 = v74;
    v345 = v78;
    v132 = v339;
    v131 = v340;
    v299 = v67;
    if (v99)
    {
      if (v99 == 1)
      {
        v133 = v325;
        sub_255E39578();
        v134 = v132;
        v102 = v353;
        v136 = v357;
        v135 = v358;
        v101 = v344;
        sub_255E398B8();
        (*(v300 + 8))(v133, v135);
        v454 = v102;
        v455 = v135;
        v456 = v101;
        v457 = v136;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v138 = v310;
        v139 = v299;
        sub_255D4F130(v134, v299, OpaqueTypeConformance2);
        v140 = *(v328 + 8);
        v328 += 8;
        v348 = v140;
        v140(v134, v139);
        sub_255D4F130(v138, v139, OpaqueTypeConformance2);
        v454 = v102;
        v455 = v354;
        v456 = v101;
        v457 = v355;
        v141 = swift_getOpaqueTypeConformance2();
        v142 = v345;
        sub_255D3F908(v134, v298, v139);
        v390 = v141;
        v391 = OpaqueTypeConformance2;
        v143 = v356;
        WitnessTable = swift_getWitnessTable();
        v454 = v102;
        v455 = v359;
        v456 = v101;
        v457 = v360;
        v145 = swift_getOpaqueTypeConformance2();
        v454 = v102;
        v455 = v363;
        v456 = v101;
        v457 = v362;
        v146 = swift_getOpaqueTypeConformance2();
        v388 = v145;
        v389 = v146;
        v147 = swift_getWitnessTable();
        sub_255D3F810(v142, v143);
        (*(v312 + 8))(v142, v143);
        v386 = WitnessTable;
        v387 = v147;
        v148 = v351;
        swift_getWitnessTable();
        v454 = v102;
        v455 = v364;
        v456 = v101;
        v457 = v365;
        v149 = swift_getOpaqueTypeConformance2();
        v454 = v102;
        v455 = v368;
        v456 = v101;
        v457 = v367;
        v150 = swift_getOpaqueTypeConformance2();
        v384 = v149;
        v385 = v150;
        v151 = swift_getWitnessTable();
        v454 = v102;
        v455 = v369;
        v456 = v101;
        v457 = v370;
        v152 = swift_getOpaqueTypeConformance2();
        v382 = v151;
        v383 = v152;
        swift_getWitnessTable();
        v153 = v349;
        v127 = v350;
        sub_255D3F810(v349, v148);
        (*(v341 + 8))(v153, v148);
        v154 = v299;
        v155 = v348;
        v348(v339, v299);
        v155(v310, v154);
      }

      else
      {
        v208 = v326;
        sub_255E38BA8();
        v209 = v131;
        v210 = v353;
        v211 = v359;
        v101 = v344;
        v212 = v360;
        sub_255E398B8();
        (*(v301 + 8))(v208, v211);
        v454 = v210;
        v455 = v211;
        v456 = v101;
        v457 = v212;
        v213 = swift_getOpaqueTypeConformance2();
        v214 = v311;
        v102 = v210;
        v215 = v331;
        sub_255D4F130(v209, v331, v213);
        v216 = *(v329 + 8);
        v329 += 8;
        v348 = v216;
        v216(v209, v215);
        v217 = v214;
        v218 = v215;
        sub_255D4F130(v217, v215, v213);
        v454 = v102;
        v455 = v363;
        v456 = v101;
        v457 = v362;
        v219 = swift_getOpaqueTypeConformance2();
        v220 = v315;
        sub_255D3F810(v209, v218);
        v454 = v102;
        v455 = v354;
        v456 = v101;
        v457 = v355;
        v221 = swift_getOpaqueTypeConformance2();
        v454 = v102;
        v455 = v358;
        v456 = v101;
        v457 = v357;
        v222 = swift_getOpaqueTypeConformance2();
        v400 = v221;
        v401 = v222;
        v223 = v356;
        v224 = swift_getWitnessTable();
        v398 = v213;
        v399 = v219;
        v225 = v361;
        v226 = swift_getWitnessTable();
        sub_255D3F908(v220, v223, v225);
        (*(v316 + 8))(v220, v225);
        v396 = v224;
        v397 = v226;
        v227 = v351;
        swift_getWitnessTable();
        v454 = v102;
        v455 = v364;
        v456 = v101;
        v457 = v365;
        v228 = swift_getOpaqueTypeConformance2();
        v454 = v102;
        v455 = v368;
        v456 = v101;
        v457 = v367;
        v229 = swift_getOpaqueTypeConformance2();
        v394 = v228;
        v395 = v229;
        v230 = swift_getWitnessTable();
        v454 = v102;
        v455 = v369;
        v456 = v101;
        v457 = v370;
        v231 = swift_getOpaqueTypeConformance2();
        v392 = v230;
        v393 = v231;
        swift_getWitnessTable();
        v232 = v349;
        v127 = v350;
        sub_255D3F810(v349, v227);
        (*(v341 + 8))(v232, v227);
        v233 = v331;
        v234 = v348;
        v348(v340, v331);
        v234(v311, v233);
      }
    }

    else
    {
      sub_255E390B8();
      v182 = v91;
      v183 = v354;
      v184 = v353;
      v101 = v344;
      v185 = v327;
      v186 = v355;
      sub_255E398B8();
      (*(v130 + 8))(v87, v183);
      v454 = v184;
      v455 = v183;
      v456 = v101;
      v457 = v186;
      v187 = swift_getOpaqueTypeConformance2();
      v188 = v297;
      v189 = v298;
      sub_255D4F130(v182, v298, v187);
      v190 = *(v185 + 8);
      v327 = v185 + 8;
      v348 = v190;
      v190(v182, v189);
      v296 = v182;
      v191 = v188;
      v192 = v189;
      sub_255D4F130(v191, v189, v187);
      v454 = v184;
      v455 = v358;
      v456 = v101;
      v457 = v357;
      v193 = swift_getOpaqueTypeConformance2();
      v194 = v345;
      sub_255D3F810(v182, v192);
      v380 = v187;
      v381 = v193;
      v195 = v356;
      v196 = swift_getWitnessTable();
      v454 = v184;
      v455 = v359;
      v456 = v101;
      v457 = v360;
      v197 = swift_getOpaqueTypeConformance2();
      v454 = v184;
      v455 = v363;
      v456 = v101;
      v457 = v362;
      v198 = swift_getOpaqueTypeConformance2();
      v378 = v197;
      v379 = v198;
      v199 = swift_getWitnessTable();
      v200 = v349;
      sub_255D3F810(v194, v195);
      (*(v312 + 8))(v194, v195);
      v376 = v196;
      v377 = v199;
      v201 = v351;
      v345 = swift_getWitnessTable();
      v102 = v353;
      v454 = v353;
      v455 = v364;
      v456 = v101;
      v457 = v365;
      v202 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v368;
      v456 = v101;
      v457 = v367;
      v203 = swift_getOpaqueTypeConformance2();
      v374 = v202;
      v375 = v203;
      v204 = swift_getWitnessTable();
      v454 = v102;
      v455 = v369;
      v456 = v101;
      v457 = v370;
      v205 = swift_getOpaqueTypeConformance2();
      v372 = v204;
      v373 = v205;
      swift_getWitnessTable();
      v127 = v350;
      sub_255D3F810(v200, v201);
      (*(v341 + 8))(v200, v201);
      v206 = v298;
      v207 = v348;
      v348(v296, v298);
      v207(v297, v206);
    }
  }

  else if (v345 > 4u)
  {
    v156 = v370;
    v157 = v368;
    v158 = v365;
    v101 = v344;
    v102 = v353;
    if (v345 == 5)
    {
      v159 = v308;
      sub_255E38B58();
      v160 = v335;
      v161 = v369;
      sub_255E398B8();
      (*(v309 + 8))(v159, v161);
      v454 = v102;
      v455 = v161;
      v456 = v101;
      v457 = v156;
      v162 = swift_getOpaqueTypeConformance2();
      v163 = v324;
      v164 = v160;
      v165 = v160;
      v166 = v342;
      v167 = v162;
      sub_255D4F130(v165, v342, v162);
      v349 = *(v336 + 8);
      v336 += 8;
      (v349)(v164, v166);
      sub_255D4F130(v163, v166, v167);
      v454 = v102;
      v455 = v364;
      v456 = v101;
      v457 = v158;
      v168 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v157;
      v456 = v101;
      v457 = v367;
      v169 = swift_getOpaqueTypeConformance2();
      v452 = v168;
      v453 = v169;
      v170 = v366;
      v348 = swift_getWitnessTable();
      sub_255D3F908(v335, v170, v166);
      v454 = v102;
      v455 = v354;
      v456 = v101;
      v457 = v355;
      v171 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v358;
      v456 = v101;
      v457 = v357;
      v172 = swift_getOpaqueTypeConformance2();
      v450 = v171;
      v451 = v172;
      v173 = swift_getWitnessTable();
      v454 = v102;
      v455 = v359;
      v456 = v101;
      v457 = v360;
      v174 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v363;
      v456 = v101;
      v457 = v362;
      v175 = swift_getOpaqueTypeConformance2();
      v448 = v174;
      v449 = v175;
      v176 = swift_getWitnessTable();
      v446 = v173;
      v447 = v176;
      v177 = v351;
      swift_getWitnessTable();
      v444 = v348;
      v445 = v167;
      v178 = v371;
      swift_getWitnessTable();
      v127 = v350;
      v179 = v343;
      sub_255D3F908(v343, v177, v178);
      (*(v338 + 8))(v179, v178);
      v180 = v342;
      v181 = v349;
      (v349)(v335, v342);
      v181(v324, v180);
    }

    else
    {
      v272 = v306;
      sub_255E394F8();
      v273 = v322;
      v274 = v367;
      sub_255E398B8();
      (*(v307 + 8))(v272, v157);
      v454 = v102;
      v455 = v157;
      v456 = v101;
      v457 = v274;
      v275 = swift_getOpaqueTypeConformance2();
      v276 = v321;
      v277 = v337;
      sub_255D4F130(v273, v337, v275);
      v349 = *(v334 + 8);
      v334 += 8;
      (v349)(v273, v277);
      v278 = v276;
      v279 = v277;
      sub_255D4F130(v278, v277, v275);
      v454 = v102;
      v455 = v364;
      v456 = v101;
      v457 = v158;
      v280 = swift_getOpaqueTypeConformance2();
      v281 = v319;
      sub_255D3F908(v273, v323, v279);
      v430 = v280;
      v431 = v275;
      v282 = v366;
      v348 = swift_getWitnessTable();
      v454 = v102;
      v455 = v369;
      v456 = v101;
      v457 = v370;
      v283 = swift_getOpaqueTypeConformance2();
      sub_255D3F810(v281, v282);
      (*(v320 + 8))(v281, v282);
      v454 = v102;
      v455 = v354;
      v456 = v101;
      v457 = v355;
      v284 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v358;
      v456 = v101;
      v457 = v357;
      v285 = swift_getOpaqueTypeConformance2();
      v428 = v284;
      v429 = v285;
      v286 = swift_getWitnessTable();
      v454 = v102;
      v455 = v359;
      v456 = v101;
      v457 = v360;
      v287 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v363;
      v456 = v101;
      v457 = v362;
      v288 = swift_getOpaqueTypeConformance2();
      v426 = v287;
      v427 = v288;
      v289 = swift_getWitnessTable();
      v424 = v286;
      v425 = v289;
      v290 = v351;
      swift_getWitnessTable();
      v422 = v348;
      v423 = v283;
      v291 = v371;
      swift_getWitnessTable();
      v127 = v350;
      v292 = v343;
      sub_255D3F908(v343, v290, v291);
      (*(v338 + 8))(v292, v291);
      v293 = v337;
      v294 = v349;
      (v349)(v322, v337);
      v294(v321, v293);
    }
  }

  else
  {
    v101 = v344;
    v102 = v353;
    if (v345 == 3)
    {
      v103 = v302;
      sub_255E39378();
      v104 = v314;
      v105 = v363;
      v106 = v362;
      sub_255E398B8();
      (*(v303 + 8))(v103, v105);
      v454 = v102;
      v455 = v105;
      v456 = v101;
      v457 = v106;
      v107 = swift_getOpaqueTypeConformance2();
      v108 = v313;
      v109 = v333;
      sub_255D4F130(v104, v333, v107);
      v110 = *(v330 + 8);
      v330 += 8;
      v348 = v110;
      v110(v104, v109);
      v111 = v108;
      v112 = v109;
      sub_255D4F130(v111, v109, v107);
      v454 = v102;
      v455 = v359;
      v456 = v101;
      v457 = v360;
      v113 = swift_getOpaqueTypeConformance2();
      v114 = v315;
      sub_255D3F908(v104, v331, v112);
      v454 = v102;
      v455 = v354;
      v456 = v101;
      v457 = v355;
      v115 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v358;
      v456 = v101;
      v457 = v357;
      v116 = swift_getOpaqueTypeConformance2();
      v410 = v115;
      v411 = v116;
      v117 = v356;
      v118 = swift_getWitnessTable();
      v408 = v113;
      v409 = v107;
      v119 = v361;
      v120 = swift_getWitnessTable();
      sub_255D3F908(v114, v117, v119);
      (*(v316 + 8))(v114, v119);
      v406 = v118;
      v407 = v120;
      v121 = v351;
      swift_getWitnessTable();
      v454 = v102;
      v455 = v364;
      v456 = v101;
      v457 = v365;
      v122 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v368;
      v456 = v101;
      v457 = v367;
      v123 = swift_getOpaqueTypeConformance2();
      v404 = v122;
      v405 = v123;
      v124 = swift_getWitnessTable();
      v454 = v102;
      v455 = v369;
      v456 = v101;
      v457 = v370;
      v125 = swift_getOpaqueTypeConformance2();
      v402 = v124;
      v403 = v125;
      swift_getWitnessTable();
      v126 = v349;
      v127 = v350;
      sub_255D3F810(v349, v121);
      (*(v341 + 8))(v126, v121);
      v128 = v333;
      v129 = v348;
      v348(v314, v333);
      v129(v313, v128);
    }

    else
    {
      v250 = v304;
      sub_255E38E38();
      v251 = v318;
      v252 = v364;
      v253 = v365;
      sub_255E398B8();
      (*(v305 + 8))(v250, v252);
      v454 = v102;
      v455 = v252;
      v456 = v101;
      v457 = v253;
      v254 = swift_getOpaqueTypeConformance2();
      v255 = v317;
      v256 = v323;
      sub_255D4F130(v251, v323, v254);
      v257 = *(v332 + 8);
      v332 += 8;
      v349 = v257;
      (v257)(v251, v256);
      sub_255D4F130(v255, v256, v254);
      v454 = v102;
      v455 = v368;
      v456 = v101;
      v457 = v367;
      v258 = swift_getOpaqueTypeConformance2();
      v259 = v319;
      sub_255D3F810(v251, v256);
      v420 = v254;
      v421 = v258;
      v260 = v366;
      v261 = swift_getWitnessTable();
      v454 = v102;
      v455 = v369;
      v456 = v101;
      v457 = v370;
      v348 = swift_getOpaqueTypeConformance2();
      sub_255D3F810(v259, v260);
      (*(v320 + 8))(v259, v260);
      v454 = v102;
      v455 = v354;
      v456 = v101;
      v457 = v355;
      v262 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v358;
      v456 = v101;
      v457 = v357;
      v263 = swift_getOpaqueTypeConformance2();
      v418 = v262;
      v419 = v263;
      v264 = swift_getWitnessTable();
      v454 = v102;
      v455 = v359;
      v456 = v101;
      v457 = v360;
      v265 = swift_getOpaqueTypeConformance2();
      v454 = v102;
      v455 = v363;
      v456 = v101;
      v457 = v362;
      v266 = swift_getOpaqueTypeConformance2();
      v416 = v265;
      v417 = v266;
      v267 = swift_getWitnessTable();
      v414 = v264;
      v415 = v267;
      v268 = v351;
      swift_getWitnessTable();
      v412 = v261;
      v413 = v348;
      v269 = v371;
      swift_getWitnessTable();
      v127 = v350;
      v270 = v343;
      sub_255D3F908(v343, v268, v269);
      (*(v338 + 8))(v270, v269);
      v271 = v349;
      (v349)(v318, v256);
      v271(v317, v256);
    }
  }

  v454 = v102;
  v455 = v354;
  v456 = v101;
  v457 = v355;
  v235 = swift_getOpaqueTypeConformance2();
  v454 = v102;
  v455 = v358;
  v456 = v101;
  v457 = v357;
  v236 = swift_getOpaqueTypeConformance2();
  v442 = v235;
  v443 = v236;
  v237 = swift_getWitnessTable();
  v454 = v102;
  v455 = v359;
  v456 = v101;
  v457 = v360;
  v238 = swift_getOpaqueTypeConformance2();
  v454 = v102;
  v455 = v363;
  v456 = v101;
  v457 = v362;
  v239 = swift_getOpaqueTypeConformance2();
  v440 = v238;
  v441 = v239;
  v240 = swift_getWitnessTable();
  v438 = v237;
  v439 = v240;
  v241 = swift_getWitnessTable();
  v454 = v102;
  v455 = v364;
  v456 = v101;
  v457 = v365;
  v242 = swift_getOpaqueTypeConformance2();
  v454 = v102;
  v455 = v368;
  v456 = v101;
  v457 = v367;
  v243 = swift_getOpaqueTypeConformance2();
  v436 = v242;
  v437 = v243;
  v244 = swift_getWitnessTable();
  v454 = v102;
  v455 = v369;
  v456 = v101;
  v457 = v370;
  v245 = swift_getOpaqueTypeConformance2();
  v434 = v244;
  v435 = v245;
  v246 = swift_getWitnessTable();
  v432 = v241;
  v433 = v246;
  v247 = v347;
  v248 = swift_getWitnessTable();
  sub_255D4F130(v127, v247, v248);
  return (*(v346 + 8))(v127, v247);
}

uint64_t sub_255D41F10()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D42038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D42F78();
  *a2 = result;
  return result;
}

void sub_255D42068(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6465726564726F62;
  v5 = 0xE500000000000000;
  v6 = 0x7373616C67;
  if (v2 != 5)
  {
    v6 = 0x6F72507373616C67;
    v5 = 0xEE00746E656E696DLL;
  }

  v7 = 0xEA00000000007373;
  v8 = 0x656C726564726F62;
  if (v2 != 3)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000255E653D0;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x6E69616C70;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_255D42208()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D4226C()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D422B8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D42338@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D42390(uint64_t a1)
{
  v2 = sub_255D42BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D423CC(uint64_t a1)
{
  v2 = sub_255D42BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D42408@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  v8 = *v2;
  v7 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_255E390C8();
  sub_255D42A04(&qword_27F7E63D0, MEMORY[0x277CDDEE0]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39588();
  sub_255D42A04(&qword_27F7E63C8, MEMORY[0x277CDE400]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E38BB8();
  sub_255D42A04(&qword_27F7E63C0, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39388();
  sub_255D42A04(&qword_27F7E63B8, MEMORY[0x277CDE0B8]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E39268();
  sub_255E38E48();
  sub_255D42A04(&qword_27F7E63B0, MEMORY[0x277CDDE40]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39508();
  sub_255D42A04(&qword_27F7E63A8, MEMORY[0x277CDE340]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E38B68();
  sub_255D42A04(&qword_27F7E63A0, MEMORY[0x277CDDA98]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  a2[3] = sub_255E39268();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255D3FA00(v7, v8, v4, v3, boxed_opaque_existential_1);
}

void *sub_255D4295C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D42A4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_255D42988(uint64_t a1)
{
  result = sub_255D429B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D429B0()
{
  result = qword_27F7E6398;
  if (!qword_27F7E6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6398);
  }

  return result;
}

uint64_t sub_255D42A04(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_255D42A4C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E63D8, &qword_255E3CDF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D42BBC();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_255D42C10();
    sub_255E3ABC8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_255D42BBC()
{
  result = qword_27F7E63E0;
  if (!qword_27F7E63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E63E0);
  }

  return result;
}

unint64_t sub_255D42C10()
{
  result = qword_27F7E63E8;
  if (!qword_27F7E63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E63E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EdgeSetString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EdgeSetString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D42DC8()
{
  result = qword_27F7E63F0;
  if (!qword_27F7E63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E63F0);
  }

  return result;
}

unint64_t sub_255D42E20()
{
  result = qword_27F7E63F8;
  if (!qword_27F7E63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E63F8);
  }

  return result;
}

unint64_t sub_255D42E78()
{
  result = qword_27F7E6400;
  if (!qword_27F7E6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6400);
  }

  return result;
}

unint64_t sub_255D42ED0()
{
  result = qword_27F7E6408;
  if (!qword_27F7E6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6408);
  }

  return result;
}

unint64_t sub_255D42F24()
{
  result = qword_27F7E6410;
  if (!qword_27F7E6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6410);
  }

  return result;
}

uint64_t sub_255D42F78()
{
  v0 = sub_255E3AB48();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
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

uint64_t sub_255D42FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D43028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_255D43098(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = (*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 >= 0x7D)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255D430F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((a2 ^ 0x7F) >> 1) & 0xFE | ((a2 ^ 0x7F) << 6);
    }
  }

  return result;
}

uint64_t sub_255D43160@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = sub_255E38D98();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 24);
  if (v12 <= 0xFD)
  {
    v13 = *(v3 + 8);
    v14 = *(v3 + 16);
    v21 = *v3;
    v22 = v13;
    v23 = v14;
    v24 = v12;
    sub_255D3E5A8(v21, v13, v14, v12);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
    }

    sub_255D38060(v21, v22, v23, v24);
  }

  v15 = sub_255E3AB48();

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (v15 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v15 == 1;
  }

  v19 = v25;
  (*(v8 + 104))(v11, **(&unk_279812158 + v18), v25);
  v21 = v16;
  v22 = v17;
  a3[3] = swift_getOpaqueTypeMetadata2();
  v21 = v16;
  v22 = v17;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39B58();
  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_255D433AC()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D43428()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D43480@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D43518@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D43570(uint64_t a1)
{
  v2 = sub_255D448A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D435AC(uint64_t a1)
{
  v2 = sub_255D448A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D435E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6460, &qword_255E3D388);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D448A4();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D43798(char a1)
{
  switch(a1)
  {
    case 1:
      result = MEMORY[0x28212E590]();
      break;
    case 2:
      result = MEMORY[0x28212E5E0]();
      break;
    case 3:
      result = MEMORY[0x28212E5D0]();
      break;
    case 4:
      result = MEMORY[0x28212E5C0]();
      break;
    case 5:
      result = MEMORY[0x28212E628]();
      break;
    case 6:
      result = MEMORY[0x28212E588]();
      break;
    case 7:
      result = MEMORY[0x28212E5E8]();
      break;
    case 8:
      result = MEMORY[0x28212E5F0]();
      break;
    case 9:
      result = MEMORY[0x28212E620]();
      break;
    case 10:
      result = MEMORY[0x28212E608]();
      break;
    case 11:
      result = MEMORY[0x28212E5B8]();
      break;
    case 12:
      result = MEMORY[0x28212E610]();
      break;
    default:
      result = MEMORY[0x28212E618]();
      break;
  }

  return result;
}

unint64_t sub_255D437F0(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x417972616D697270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x617069636E697270;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x61426D6F74746F62;
      break;
    case 10:
      result = 0x737574617473;
      break;
    case 11:
      result = 0x7261646E6F636573;
      break;
    case 12:
      result = 0x6472616F6279656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255D43980(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255D437F0(*a1);
  v5 = v4;
  if (v3 == sub_255D437F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D43A08()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D437F0(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43A6C()
{
  sub_255D437F0(*v0);
  sub_255E3A578();
}

uint64_t sub_255D43AC0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D437F0(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43B20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D4462C();
  *a2 = result;
  return result;
}

unint64_t sub_255D43B50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255D437F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_255D43C2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E656D6563616C70;
  }

  else
  {
    v4 = 0x746E65746E6F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  if (*a2)
  {
    v6 = 0x6E656D6563616C70;
  }

  else
  {
    v6 = 0x746E65746E6F63;
  }

  if (*a2)
  {
    v7 = 0xE900000000000074;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D43CD8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43D60()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D43DD4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43E58@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D43EB8(uint64_t *a1@<X8>)
{
  v2 = 0x746E65746E6F63;
  if (*v1)
  {
    v2 = 0x6E656D6563616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D43EFC()
{
  if (*v0)
  {
    result = 0x6E656D6563616C70;
  }

  else
  {
    result = 0x746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_255D43F3C@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D43FA0(uint64_t a1)
{
  v2 = sub_255D44740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D43FDC(uint64_t a1)
{
  v2 = sub_255D44740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D44018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6440, &qword_255E3D380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D44740();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18[63] = 0;
  v16 = &type metadata for ViewContent;
  v17 = sub_255D44794();
  *&v15 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  sub_255D34630(&v15, v18);
  LOBYTE(v15) = 1;
  sub_255E3ABB8();
  v12 = sub_255D4462C();
  (*(v6 + 8))(v9, v5);
  if (v12 == 13)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v18[40] = v13;
  sub_255D4483C(v18, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D44874(v18);
}

uint64_t sub_255D44264(uint64_t a1)
{
  v2 = sub_255E39368();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6430, &qword_255E3D378);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_255D43798(*(a1 + 40));
  v12 = a1;
  sub_255E388B8();
  v9 = sub_255D44680();
  MEMORY[0x259C4D740](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_255D443D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6428, &qword_255E3D370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6430, &qword_255E3D378);
  sub_255D44680();
  swift_getOpaqueTypeConformance2();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39C68();
}

unint64_t sub_255D44534(uint64_t a1)
{
  result = sub_255D4455C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4455C()
{
  result = qword_27F7E6418;
  if (!qword_27F7E6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6418);
  }

  return result;
}

unint64_t sub_255D445B0(uint64_t a1)
{
  result = sub_255D445D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D445D8()
{
  result = qword_27F7E6420;
  if (!qword_27F7E6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6420);
  }

  return result;
}

uint64_t sub_255D4462C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D44680()
{
  result = qword_27F7E6438;
  if (!qword_27F7E6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6430, &qword_255E3D378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6438);
  }

  return result;
}