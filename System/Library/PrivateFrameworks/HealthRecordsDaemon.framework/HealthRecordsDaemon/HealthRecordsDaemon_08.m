void sub_251B28D44()
{
  if (!qword_2813E20D0)
  {
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E20D0);
    }
  }
}

uint64_t sub_251B28DBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B28E04()
{
  if (!qword_27F479718)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479718);
    }
  }
}

uint64_t sub_251B28E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B2916C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B28ED0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B2916C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

void sub_251B2916C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B291D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBLookupInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B29234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B2929C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B292FC(uint64_t a1, uint64_t a2)
{
  sub_251B2916C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ClinicalSharingDailyMetric()
{
  result = qword_2813E3B88;
  if (!qword_2813E3B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B29514()
{
  sub_251AE526C(319, qword_2813E3620);
  if (v0 <= 0x3F)
  {
    sub_251B2967C(319, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_251AE526C(319, &qword_2813E1DD0);
      if (v2 <= 0x3F)
      {
        sub_251AE526C(319, &qword_2813E1FA0);
        if (v3 <= 0x3F)
        {
          sub_251C70014();
          if (v4 <= 0x3F)
          {
            sub_251AE526C(319, &qword_2813E37D0);
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

void sub_251B2967C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251B296E0()
{
  sub_251B2967C(0, &qword_2813E1C58, sub_251B29AC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C78760;
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x8000000251C8B150;
  v2 = type metadata accessor for ClinicalSharingDailyMetric();
  v3 = *(v0 + v2[9]);
  *(inited + 72) = &type metadata for IHAMetricField;
  *(inited + 80) = &off_2863F6BD0;
  *(inited + 48) = v3;
  *(inited + 88) = 0xD00000000000001DLL;
  *(inited + 96) = 0x8000000251C8B180;
  v4 = *(v0 + v2[10]);
  *(inited + 128) = &type metadata for IHRMetricField;
  *(inited + 136) = &off_2863F6C30;
  *(inited + 104) = v4;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x8000000251C8B1A0;
  *(inited + 184) = &type metadata for PairedWatchSystemVersionMetricField;
  *(inited + 192) = &off_2863F95E8;
  *(inited + 200) = 6645601;
  *(inited + 208) = 0xE300000000000000;
  v5 = v0[2];
  v6 = *(v0 + 24);
  *(inited + 240) = &type metadata for AgeMetricField;
  *(inited + 248) = &off_2863F6BE8;
  *(inited + 216) = v5;
  *(inited + 224) = v6;
  *(inited + 256) = 7890291;
  *(inited + 264) = 0xE300000000000000;
  v7 = v0[4];
  v8 = v0[5];
  *(inited + 296) = &type metadata for SexMetricField;
  *(inited + 304) = &off_2863F6BB8;
  *(inited + 272) = v7;
  *(inited + 280) = v8;
  *(inited + 312) = 0xD00000000000002ALL;
  *(inited + 320) = 0x8000000251C8B1C0;
  *(inited + 352) = &type metadata for AvgDataTypesMetricField;
  *(inited + 360) = &off_2863F95D0;
  v9 = *v0;
  v10 = v0[1];
  *(inited + 328) = *v0;
  *(inited + 368) = 0xD000000000000019;
  *(inited + 376) = 0x8000000251C8B1F0;
  *(inited + 408) = &type metadata for ProvidersSharedWithMetricField;
  *(inited + 416) = &off_2863F95B8;
  *(inited + 384) = v10;
  *(inited + 424) = 0xD000000000000018;
  *(inited + 432) = 0x8000000251C8B210;
  *(inited + 464) = &type metadata for SharingEnabledMetricField;
  *(inited + 472) = &off_2863F95A0;
  *(inited + 440) = v10;
  *(inited + 480) = 0xD000000000000020;
  *(inited + 488) = 0x8000000251C8B230;
  *(inited + 520) = &type metadata for CHROnboardedMetricField;
  *(inited + 528) = &off_2863F9588;
  *(inited + 496) = v10;
  *(inited + 536) = 0xD000000000000020;
  *(inited + 544) = 0x8000000251C8B260;
  *(inited + 576) = &type metadata for MaxConceptsSharedMetricField;
  *(inited + 584) = &off_2863F9570;
  *(inited + 552) = v9;
  *(inited + 592) = 0xD000000000000020;
  *(inited + 600) = 0x8000000251C8B290;
  *(inited + 632) = &type metadata for MinConceptsSharedMetricField;
  *(inited + 640) = &off_2863F9558;
  *(inited + 608) = v9;
  *(inited + 648) = 0xD000000000000012;
  *(inited + 656) = 0x8000000251C8B2C0;
  *(inited + 688) = &type metadata for TimeSinceLastShareMetricField;
  *(inited + 696) = &off_2863F9540;
  *(inited + 664) = v10;
  *(inited + 704) = 0xD00000000000001BLL;
  *(inited + 712) = 0x8000000251C8B2E0;
  v11 = *(v0 + v2[11]);
  *(inited + 744) = &type metadata for NoOfSharesMetricField;
  *(inited + 752) = &off_2863F9528;
  *(inited + 720) = v11;

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v12 = sub_251C4C2A0(inited);
  swift_setDeallocating();
  sub_251B29AC0();
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_251B29A78(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_251B29AC0()
{
  if (!qword_2813E1F98)
  {
    sub_251B29B28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1F98);
    }
  }
}

unint64_t sub_251B29B28()
{
  result = qword_2813E2AC8[0];
  if (!qword_2813E2AC8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813E2AC8);
  }

  return result;
}

uint64_t sub_251B29B8C(uint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v9 = sub_251C39C90(*(a1 + 16), 0);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v33 = v9;
  v37 = sub_251C0A08C(&v38, (v9 + v10), v7, a1);

  result = sub_251AD20D8();
  if (v37 == v7)
  {
    v12 = v33;
    v8 = MEMORY[0x277D84F90];
    v13 = *(v33 + 16);
    if (v13)
    {
LABEL_5:
      v38 = v8;
      sub_251C0B7EC(0, v13, 0);
      v14 = v38;
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v17 = *(v15 + 64);
      v33 = v12;
      v18 = v12 + ((v17 + 32) & ~v17);
      v34 = *(v15 + 56);
      v35 = v16;
      v36 = v15;
      v37 = a1;
      v19 = (v15 - 8);
      do
      {
        v35(v6, v18, v2);
        if (*(a1 + 16) && (v20 = sub_251AC8AFC(v6), (v21 & 1) != 0))
        {
          v22 = *(*(a1 + 56) + 8 * v20);
          v23 = *v19;

          v23(v6, v2);
          v24 = v22;
        }

        else
        {
          (*v19)(v6, v2);
          v24 = MEMORY[0x277D84FA0];
        }

        v25 = *(v24 + 16);

        v38 = v14;
        v27 = *(v14 + 16);
        v26 = *(v14 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_251C0B7EC((v26 > 1), v27 + 1, 1);
          v14 = v38;
        }

        *(v14 + 16) = v27 + 1;
        *(v14 + 8 * v27 + 32) = v25;
        v18 += v34;
        --v13;
        a1 = v37;
      }

      while (v13);

      v28 = *(v14 + 16);
      if (v28)
      {
LABEL_14:
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v31 = *(v14 + 8 * v29 + 32);
          v32 = __OFADD__(v30, v31);
          v30 += v31;
          if (v32)
          {
            break;
          }

          if (v28 == ++v29)
          {

            return v30 / v28;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_19:

    v14 = MEMORY[0x277D84F90];
    v28 = *(MEMORY[0x277D84F90] + 16);
    if (v28)
    {
      goto LABEL_14;
    }

LABEL_20:

    return 0;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_251B29E90@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B29B8C(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B29ECC(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_19:
    v2 = sub_251C717F4();
    if (v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_4:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x25308D460](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v9 = v12;
            if ((v12 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }
        }

        v6 = v4;
        v7 = sub_251C71474();

        if (v7)
        {
          sub_251C71734();
          v8 = *(v12 + 16);
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
        }

        else
        {
        }

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((v9 & 0x4000000000000000) != 0)
  {
LABEL_25:
    v10 = sub_251C717F4();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  return v10;
}

uint64_t sub_251B2A048@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B29ECC(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2A084(unint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v13 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_251C717F4();
    if (v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_4:
      v4 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x25308D460](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v5 = *(a1 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v10 = v13;
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }
        }

        v7 = v5;
        v8 = sub_251C71474();

        if (v8)
        {
          sub_251C71734();
          v9 = *(v13 + 16);
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
        }

        else
        {
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((v10 & 0x4000000000000000) != 0)
  {
LABEL_25:
    v12 = sub_251C717F4();
  }

  else
  {
    v12 = *(v10 + 16);
  }

  return v12 != 0;
}

uint64_t sub_251B2A1FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_251B2A084(*v1);
  *a1 = result;
  return result;
}

void sub_251B2A230(char *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v5 = *v1;
      }

      v6 = a1;
      v3 = sub_251C717F4();
      a1 = v6;
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v3 != 0;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
}

uint64_t sub_251B2A2B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B2A318(*v1, sub_251AC0350);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2A318(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  v32 = a2;
  if (!v9)
  {
    v14 = MEMORY[0x277D84F90];
    v15 = *(MEMORY[0x277D84F90] + 16);
    if (v15)
    {
LABEL_5:
      v38 = v10;
      sub_251C0B7EC(0, v15, 0);
      v16 = v38;
      v18 = *(v5 + 16);
      v17 = v5 + 16;
      v19 = *(v17 + 64);
      v33 = v14;
      v20 = v14 + ((v19 + 32) & ~v19);
      v34 = *(v17 + 56);
      v35 = v18;
      v36 = v17;
      v37 = a1;
      v21 = (v17 - 8);
      do
      {
        v35(v8, v20, v4);
        if (*(a1 + 16) && (v22 = sub_251AC8AFC(v8), (v23 & 1) != 0))
        {
          v24 = *(*(a1 + 56) + 8 * v22);
          v25 = *v21;

          v25(v8, v4);
          v26 = v24;
        }

        else
        {
          (*v21)(v8, v4);
          v26 = MEMORY[0x277D84FA0];
        }

        v27 = *(v26 + 16);

        v38 = v16;
        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_251C0B7EC((v28 > 1), v29 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v29 + 1;
        *(v16 + 8 * v29 + 32) = v27;
        v20 += v34;
        --v15;
        a1 = v37;
      }

      while (v15);

      goto LABEL_17;
    }

LABEL_16:

    v16 = MEMORY[0x277D84F90];
LABEL_17:
    v30 = v32(v16);

    return v30;
  }

  v11 = sub_251C39C90(v9, 0);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v33 = v11;
  v37 = sub_251C0A08C(&v38, (v11 + v12), v9, a1);

  result = sub_251AD20D8();
  if (v37 == v9)
  {
    v14 = v33;
    v10 = MEMORY[0x277D84F90];
    v15 = *(v33 + 16);
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_251B2A600@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B2A318(*v1, sub_251C0DF14);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2A650(unint64_t a1)
{
  sub_251B2967C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v45 = sub_251C70014();
  v11 = *(v45 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  if (!a1)
  {
    return 0;
  }

  v36 = &v36 - v15;
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37 = v10;
  for (i = v11; v17; i = v11)
  {
    v18 = 0;
    v41 = (v11 + 7);
    v42 = a1 & 0xC000000000000001;
    v39 = (v11 + 4);
    v40 = (v11 + 6);
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v42)
      {
        v20 = MEMORY[0x25308D460](v18, a1);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_22;
        }

        v20 = *(a1 + 8 * v18 + 32);
      }

      v11 = v20;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = a1;
      v23 = [v20 clinicalSharingStatus];
      v24 = [v23 lastSharedDate];

      if (v24)
      {
        v25 = v43;
        sub_251C6FFE4();

        v10 = 0;
      }

      else
      {
        v10 = 1;
        v25 = v43;
      }

      v11 = v45;
      (*v41)(v25, v10, 1, v45);
      sub_251AC55A0(v25, v8);
      if ((*v40)(v8, 1, v11) == 1)
      {
        sub_251AC5608(v8);
      }

      else
      {
        v26 = *v39;
        (*v39)(v44, v8, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_251C38F9C(0, *(v19 + 2) + 1, 1, v19);
        }

        v10 = *(v19 + 2);
        v27 = *(v19 + 3);
        if (v10 >= v27 >> 1)
        {
          v19 = sub_251C38F9C(v27 > 1, v10 + 1, 1, v19);
        }

        *(v19 + 2) = v10 + 1;
        v11 = v45;
        v26(&v19[((*(i + 80) + 32) & ~*(i + 80)) + i[9] * v10], v44, v45);
      }

      a1 = v22;
      ++v18;
      if (v21 == v17)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v17 = sub_251C717F4();
    v37 = v10;
  }

  v19 = MEMORY[0x277D84F90];
  v11 = v45;
LABEL_25:
  v28 = v37;
  sub_251AC00D0(v19, v37);

  v29 = i;
  if ((i[6])(v28, 1, v11) == 1)
  {
    sub_251AC5608(v28);
    return 0;
  }

  v30 = v11;
  v31 = v36;
  (v29[4])(v36, v28, v30);
  sub_251C6FFC4();
  v33 = v32;
  result = (v29[1])(v31, v30);
  if (v33 >= 0.0)
  {
    return 0;
  }

  v35 = v33 / -3600.0;
  if (COERCE__INT64(fabs(v33 / -3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (__OFADD__(v35, 1))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  if (v35 + 1 >= 49)
  {
    return 49;
  }

  else
  {
    return v35 + 1;
  }
}

uint64_t sub_251B2AB5C@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B2A650(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2AB98@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    v4 = *(sub_251B09A24(result) + 16);

    if (v4 >= 6)
    {
      if (v4 >= 0xB)
      {
        v4 = 11;
      }

      else
      {
        v4 = 6;
      }
    }
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_251B2AC04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251B2ACC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251B2ACC4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];
  if (!v1)
  {

    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_251AFEC38(&v6);
    return 0;
  }

  v2 = v1;
  if ([v1 valueForProperty_])
  {
    sub_251C715C4();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_251B2ADEC(unint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, char *a4@<X8>)
{
  sub_251AD5C6C(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_251C6FAE4();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 identifier];
  v17 = sub_251C70F14();
  v19 = v18;

  v20 = *MEMORY[0x277CCBCA8];
  if (v17 == sub_251C70F14() && v19 == v21)
  {
  }

  else
  {
    v23 = sub_251C719D4();

    if ((v23 & 1) == 0)
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_251C716A4();
      MEMORY[0x25308CDA0](0x206C61636964654DLL, 0xED00002065707974);
      v24 = [a2 identifier];
      v25 = sub_251C70F14();
      v27 = v26;

      MEMORY[0x25308CDA0](v25, v27);

      MEMORY[0x25308CDA0](0xD00000000000002ALL, 0x8000000251C8B3D0);
      v56 = 0;
      v55 = 17;
      goto LABEL_19;
    }
  }

  v28 = sub_251B15008(a1);
  if (v28)
  {
    v29 = v28;
    *a4 = 0;
    *(a4 + 1) = 0xE000000000000000;
    v30 = type metadata accessor for PBTimeSeries(0);
    v31 = &a4[*(v30 + 28)];
    sub_251C703A4();
    v32 = *(v30 + 32);
    v33 = type metadata accessor for PBDateRange(0);
    (*(*(v33 - 8) + 56))(&a4[v32], 1, 1, v33);
    if (a3 >= 2u)
    {
      if (a3 == 2)
      {
        v49 = [objc_opt_self() poundUnit];
        v44 = [v49 unitString];
        v45 = sub_251C70F14();
        v47 = v46;

        *(a4 + 2) = v45;
        *(a4 + 3) = v47;
        v54 = 49948;
      }

      else
      {
        v48 = sub_251C70EE4();
        v49 = [objc_opt_self() unitFromString_];

        v50 = [v49 unitString];
        v51 = sub_251C70F14();
        v53 = v52;

        *(a4 + 2) = v51;
        *(a4 + 3) = v53;
        v54 = 52725;
      }

      v43 = sub_251B2C19C(v54, v29, v49);
    }

    else
    {
      v34 = [objc_opt_self() millimeterOfMercuryUnit];
      v35 = [v34 unitString];

      v36 = sub_251C70F14();
      v38 = v37;

      *(a4 + 2) = v36;
      *(a4 + 3) = v38;
      v39 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
      v40 = v59;
      sub_251B2D8F0(v59 + *(v39 + 28), v11, sub_251AD5C6C);
      v41 = v58;
      if ((*(v12 + 48))(v11, 1, v58) == 1)
      {
        sub_251B2D958(v11, sub_251AD5C6C);
        v56 = 0;
        v55 = 44;
        goto LABEL_19;
      }

      v42 = (*(v12 + 32))(v15, v11, v41);
      MEMORY[0x28223BE20](v42);
      *(&v57 - 32) = a3;
      *(&v57 - 3) = v40;
      v55 = v15;
      v43 = sub_251C0AB1C(sub_251B2D8D0, (&v57 - 6), v29);

      (*(v12 + 8))(v15, v41);
    }

    *(a4 + 4) = v43;
    return;
  }

  v56 = 0;
  v55 = 21;
LABEL_19:
  sub_251C717E4();
  __break(1u);
}

uint64_t sub_251B2B3C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, id *), uint64_t a3, unint64_t a4)
{
  v16 = a1;
  v6 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25308D460](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a2(&v14, &v16, &v15);

      if (!v4)
      {
        v6 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return v6;
}

void sub_251B2B4F8(id *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v106 = a4;
  v112 = a3;
  LODWORD(v107) = a2;
  v118 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for PBTimeSeries.Value(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251C701E4();
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = *(v109 + 64);
  MEMORY[0x28223BE20](v14);
  v108 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C70014();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v111 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v90 - v22;
  v113 = *a1;
  v23 = [v113 value];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23;
  v25 = [v23 inspectableValue];

  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = v25;
  if ([v25 valueType] != 8 || (v27 = objc_msgSend(v25, sel_codedValueCollection)) == 0)
  {
LABEL_24:

LABEL_25:
    (*(v10 + 56))(a5, 1, 1, v9);
    goto LABEL_26;
  }

  v25 = v27;
  if (([v27 representsCanonicalBloodPressure] & 1) == 0 && !objc_msgSend(v25, sel_representsSingleBloodPressurePoint))
  {

    goto LABEL_24;
  }

  v96 = v26;
  v91 = v13;
  v102 = a5;
  v103 = v10;
  v101 = v25;
  v28 = [v25 codedValues];
  sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
  v29 = sub_251C71154();

  v117 = MEMORY[0x277D84F90];
  if (v29 >> 62)
  {
LABEL_85:
    v115 = (v29 & 0xFFFFFFFFFFFFFF8);
    v30 = sub_251C717F4();
  }

  else
  {
    v115 = (v29 & 0xFFFFFFFFFFFFFF8);
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v18;
  v93 = v17;
  v104 = v9;
  if (v30)
  {
    v18 = 0;
    v9 = v29 & 0xC000000000000001;
    v31 = MEMORY[0x277D84F90];
    while (2)
    {
      v105 = v31;
      v32 = v18;
      while (1)
      {
        if (v9)
        {
          v33 = MEMORY[0x25308D460](v32, v29);
        }

        else
        {
          if (v32 >= v115[2])
          {
            goto LABEL_78;
          }

          v33 = *(v29 + 8 * v32 + 32);
        }

        v34 = v33;
        v18 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
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
          __break(1u);
          goto LABEL_85;
        }

        v116 = 0;
        v35 = [v33 chartableCodedQuantityWithError_];
        if (v35)
        {
          break;
        }

        v36 = v116;
        v37 = sub_251C6FD84();

        swift_willThrow();
        v6 = 0;

        ++v32;
        if (v18 == v30)
        {
          v31 = v105;
          goto LABEL_28;
        }
      }

      v17 = v35;
      v38 = v116;

      MEMORY[0x25308CEE0]();
      if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_251C71174();
      }

      sub_251C71194();
      v31 = v117;
      if (v18 != v30)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

LABEL_28:

  v105 = v31;
  if (v31 >> 62)
  {
    v41 = sub_251C717F4();
  }

  else
  {
    v41 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v103;
  v42 = v104;
  v29 = v101;
  v43 = v102;
  if (v41)
  {
    v44 = 0;
    v17 = v105 & 0xC000000000000001;
    v98 = v105 + 32;
    v99 = v105 & 0xFFFFFFFFFFFFFF8;
    v95 = v41;
    v94 = v105 & 0xC000000000000001;
    v100 = v107;
    do
    {
      while (1)
      {
        if (v17)
        {
          v45 = MEMORY[0x25308D460](v44, v105);
        }

        else
        {
          if (v44 >= *(v99 + 16))
          {
            goto LABEL_84;
          }

          v45 = *(v98 + 8 * v44);
        }

        if (__OFADD__(v44++, 1))
        {
          goto LABEL_83;
        }

        if (v100 != 1)
        {
          break;
        }

        v97 = v44;
        v107 = v6;
        v115 = v45;
        v52 = [v45 codings];
        sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
        v17 = sub_251C71154();

        if (v17 >> 62)
        {
          v53 = sub_251C717F4();
          if (v53)
          {
LABEL_52:
            v54 = 0;
            v9 = v17 & 0xC000000000000001;
            do
            {
              if (v9)
              {
                v55 = MEMORY[0x25308D460](v54, v17);
              }

              else
              {
                if (v54 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_81;
                }

                v55 = *(v17 + 8 * v54 + 32);
              }

              v29 = v55;
              v6 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                goto LABEL_79;
              }

              v56 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
              v18 = [v29 isEquivalent_];

              if (v18)
              {
LABEL_68:

                [v115 doubleValue];
                v58 = v57;
                v59 = v113;
                v60 = [v113 _creationDate];
                v61 = v114;
                sub_251C6FFE4();

                v62 = [v59 issueDate];
                v63 = v93;
                v64 = v92;
                if (v62)
                {
                  v65 = v62;
                  v67 = v108;
                  v66 = v109;
                  v68 = v110;
                  (*(v109 + 16))(v108, *v112 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v110);
                  v69 = sub_251C70114();
                  (*(v66 + 8))(v67, v68);
                  v70 = [v65 adjustedDateForCalendar_];

                  v71 = v111;
                  sub_251C6FFE4();

                  v61 = v114;
                  (v64[1])(v114, v63);
                  (v64[4])(v61, v71, v63);
                }

                v72 = [v113 effectiveEndDate];
                if (v72)
                {
                  v73 = v72;
                  v75 = v108;
                  v74 = v109;
                  v76 = v110;
                  (*(v109 + 16))(v108, *v112 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v110);
                  v77 = sub_251C70114();
                  (*(v74 + 8))(v75, v76);
                  v78 = [v73 adjustedDateForCalendar_];

                  v79 = v111;
                  sub_251C6FFE4();

                  v61 = v114;
                  (v64[1])(v114, v63);
                  (v64[4])(v61, v79, v63);
                }

                if (sub_251C6FAC4())
                {
                  v80 = v91;
                  *(v91 + 10) = 0;
                  *v80 = 0;
                  *(v80 + 8) = 0;
                  *(v80 + 16) = 0;
                  *(v80 + 64) = 0;
                  *(v80 + 72) = 0xE000000000000000;
                  *(v80 + 80) = 0u;
                  *(v80 + 96) = 0u;
                  *(v80 + 120) = MEMORY[0x277D84F90];
                  *(v80 + 128) = 0;
                  *(v80 + 136) = 256;
                  v81 = v104;
                  v82 = v80 + *(v104 + 80);
                  sub_251C703A4();
                  *(v80 + 112) = v58;
                  v83 = *(*v112 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
                  v84 = sub_251C6FF94();
                  v85 = [v83 stringFromDate_];

                  v86 = sub_251C70F14();
                  v88 = v87;

                  *(v80 + 24) = v86;
                  *(v80 + 32) = v88;

                  (v64[1])(v61, v63);
                  *(v80 + 48) = 1732799853;
                  *(v80 + 56) = 0xE400000000000000;
                  v89 = v102;
                  sub_251B2D8F0(v80, v102, type metadata accessor for PBTimeSeries.Value);
                  (*(v103 + 56))(v89, 0, 1, v81);
                  sub_251B2D958(v80, type metadata accessor for PBTimeSeries.Value);
                }

                else
                {
                  (v64[1])(v61, v63);

                  (*(v103 + 56))(v102, 1, 1, v104);
                }

                goto LABEL_26;
              }

              ++v54;
            }

            while (v6 != v53);
          }
        }

        else
        {
          v53 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v53)
          {
            goto LABEL_52;
          }
        }

LABEL_32:

        v6 = v107;
        v9 = v103;
        v42 = v104;
        v29 = v101;
        v43 = v102;
        v41 = v95;
        v44 = v97;
        v17 = v94;
        if (v97 == v95)
        {
          goto LABEL_74;
        }
      }

      if (!v100)
      {
        v97 = v44;
        v107 = v6;
        v115 = v45;
        v47 = [v45 codings];
        sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
        v17 = sub_251C71154();

        if (v17 >> 62)
        {
          v48 = sub_251C717F4();
          if (v48)
          {
LABEL_41:
            v49 = 0;
            v9 = v17 & 0xC000000000000001;
            while (1)
            {
              if (v9)
              {
                v50 = MEMORY[0x25308D460](v49, v17);
              }

              else
              {
                if (v49 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_82;
                }

                v50 = *(v17 + 8 * v49 + 32);
              }

              v29 = v50;
              v6 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_80;
              }

              v51 = [objc_opt_self() loinc_systolicBloodPressureCoding];
              v18 = [v29 isEquivalent_];

              if (v18)
              {
                goto LABEL_68;
              }

              ++v49;
              if (v6 == v48)
              {
                goto LABEL_32;
              }
            }
          }
        }

        else
        {
          v48 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_32;
      }
    }

    while (v44 != v41);
  }

LABEL_74:

  (*(v9 + 56))(v43, 1, 1, v42);

LABEL_26:
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t sub_251B2C19C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_251AD5C6C(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_251C6FAE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
  sub_251B2D8F0(v3 + *(v16 + 28), v10, sub_251AD5C6C);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_251B2D958(v10, sub_251AD5C6C);
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    v17 = (*(v12 + 32))(v15, v10, v11);
    MEMORY[0x28223BE20](v17);
    *&v22[-32] = a1;
    *&v22[-24] = a3;
    v20 = v15;
    v21 = v3;
    v18 = sub_251B2B3C4(MEMORY[0x277D84F90], sub_251B2D9B8, &v22[-48], a2);
    (*(v12 + 8))(v15, v11);
    return v18;
  }

  return result;
}

void sub_251B2C3FC(uint64_t *a1@<X0>, id *a2@<X1>, id a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24 = a6;
  v11 = *a1;
  v12 = *a2;
  v13 = [*a2 primaryConcept];
  v14 = [v13 groupByConcept];

  v15 = [v14 identifier];
  v16 = [v15 rawIdentifier];

  if (v16 == a3)
  {
    v17 = [v12 chartableCodedQuantitySet];
    if (v17)
    {
      v18 = v17;
      if ([v17 isCompatibleWithUnit_])
      {
        v19 = [v18 quantities];
        sub_251A8223C(0, &unk_27F47A180, 0x277CCD0D8);
        v20 = sub_251C71154();

        MEMORY[0x28223BE20](v21);
        v23[2] = v18;
        v23[3] = a5;
        v23[4] = a4;
        v23[5] = v24;
        v22 = sub_251C0AB1C(sub_251B2D9D8, v23, v20);

        v25 = v11;

        sub_251BFF818(v22);

        *a7 = v25;
        return;
      }
    }
  }

  *a7 = v11;
}

uint64_t sub_251B2C5F8@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v38 = a5;
  v7 = type metadata accessor for PBTimeSeries.Value(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [a2 date];
  sub_251C6FFE4();

  if (sub_251C6FAC4())
  {
    *(v11 + 10) = 0;
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 4) = 0;
    *(v11 + 8) = 0;
    *(v11 + 9) = 0xE000000000000000;
    v19 = MEMORY[0x277D84F90];
    *(v11 + 5) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 15) = v19;
    *(v11 + 16) = 0;
    *(v11 + 68) = 256;
    v35 = v7;
    v20 = &v11[*(v7 + 80)];
    sub_251C703A4();
    v21 = v37;
    [v17 doubleValueForUnit_];
    *(v11 + 14) = v22;
    v23 = *(*v36 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v24 = sub_251C6FF94();
    v25 = [v23 stringFromDate_];

    v26 = sub_251C70F14();
    v28 = v27;

    *(v11 + 3) = v26;
    *(v11 + 4) = v28;
    v29 = [v21 unitString];
    v30 = sub_251C70F14();
    v32 = v31;

    (*(v13 + 8))(v16, v12);
    *(v11 + 6) = v30;
    *(v11 + 7) = v32;
    v33 = v38;
    sub_251B2D8F0(v11, v38, type metadata accessor for PBTimeSeries.Value);
    (*(v8 + 56))(v33, 0, 1, v35);
    return sub_251B2D958(v11, type metadata accessor for PBTimeSeries.Value);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return (*(v8 + 56))(v38, 1, 1, v7);
  }
}

uint64_t sub_251B2C920(void *a1)
{
  v1 = a1;
  v2 = sub_251B2C954();

  return v2 & 1;
}

uint64_t sub_251B2C954()
{
  v1 = v0;
  v2 = &selRef_dateComponentsValue;
  v3 = [v0 codedValues];
  sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
  v4 = sub_251C71154();

  if (v4 >> 62)
  {
LABEL_29:
    v5 = sub_251C717F4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 2)
  {
    return 0;
  }

  v6 = [v1 v2[7]];
  v7 = sub_251C71154();

  v8 = v7;
  v53 = v1;
  if (v7 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v9)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v13 = v8 + 32;
    v48 = v9;
    v50 = v8;
    v44 = v8 & 0xFFFFFFFFFFFFFF8;
    v46 = v8 & 0xC000000000000001;
    v43 = v8 + 32;
    while (2)
    {
      if (v11)
      {
        v8 = MEMORY[0x25308D460](v10, v8);
        v14 = __OFADD__(v10++, 1);
        if (!v14)
        {
LABEL_10:
          v55 = v8;
          v15 = [v8 codings];
          sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
          v16 = sub_251C71154();

          v1 = (v16 & 0xFFFFFFFFFFFFFF8);
          if (v16 >> 62)
          {
            v17 = sub_251C717F4();
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v18 = 0;
          while (v17 != v18)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x25308D460](v18, v16);
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v2 = [objc_opt_self() loinc_systolicBloodPressureCoding];
            v21 = [v20 isEquivalent_];

            ++v18;
            if (v21)
            {

              v22 = v55;
              goto LABEL_34;
            }
          }

          v8 = v50;
          v12 = v44;
          v11 = v46;
          v13 = v43;
          if (v10 != v48)
          {
            continue;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_31;
        }

        v8 = *(v13 + 8 * v10);
        v14 = __OFADD__(v10++, 1);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = v8;
    v9 = sub_251C717F4();
    v8 = v23;
  }

LABEL_33:

  v22 = 0;
LABEL_34:
  v24 = [v53 codedValues];
  v25 = sub_251C71154();

  v26 = v25;
  if (v25 >> 62)
  {
    goto LABEL_66;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_67:

    v40 = 0;
    if (v22)
    {
      v39 = v22;
    }

    else
    {
      v39 = 0;
    }

    goto LABEL_70;
  }

  while (1)
  {
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
    v31 = v26 + 32;
    v51 = v27;
    v52 = v26;
    v47 = v26 & 0xFFFFFFFFFFFFFF8;
    v49 = v26 & 0xC000000000000001;
    v45 = v26 + 32;
    v56 = v22;
LABEL_37:
    if (v29)
    {
      break;
    }

    if (v28 >= *(v30 + 16))
    {
      goto LABEL_65;
    }

    v26 = *(v31 + 8 * v28);
    v14 = __OFADD__(v28++, 1);
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v41 = v26;
    v27 = sub_251C717F4();
    v26 = v41;
    if (!v27)
    {
      goto LABEL_67;
    }
  }

  v26 = MEMORY[0x25308D460](v28, v26);
  v14 = __OFADD__(v28++, 1);
  if (v14)
  {
    goto LABEL_64;
  }

LABEL_40:
  v54 = v26;
  v32 = [v26 codings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v33 = sub_251C71154();

  v22 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v33 >> 62)
  {
    v26 = sub_251C717F4();
    v34 = v26;
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  do
  {
    if (v34 == v35)
    {

      v26 = v52;
      v22 = v56;
      v30 = v47;
      v29 = v49;
      v31 = v45;
      if (v28 != v51)
      {
        goto LABEL_37;
      }

      goto LABEL_67;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25308D460](v35, v33);
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v26 = *(v33 + 8 * v35 + 32);
    }

    v36 = v26;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v37 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
    v38 = [v36 isEquivalent_];

    ++v35;
  }

  while ((v38 & 1) == 0);

  if (v56)
  {

    v39 = v54;
    if (!v54)
    {
      return 0;
    }

    v40 = 1;
  }

  else
  {
    v40 = 0;
    v39 = v54;
  }

LABEL_70:

  return v40;
}

uint64_t sub_251B2CEB8(void *a1)
{
  v1 = a1;
  v2 = sub_251B2CEEC();

  return v2 & 1;
}

uint64_t sub_251B2CEEC()
{
  v1 = v0;
  v2 = &selRef_dateComponentsValue;
  v3 = [v0 codedValues];
  sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
  v4 = sub_251C71154();

  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5 != 1)
  {
    return 0;
  }

  v6 = [v1 v2[7]];
  v7 = sub_251C71154();

  v8 = v7;
  v53 = v1;
  if (v7 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v8 = v24)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v13 = v8 + 32;
    v48 = i;
    v50 = v8;
    v44 = v8 & 0xFFFFFFFFFFFFFF8;
    v46 = v8 & 0xC000000000000001;
    v43 = v8 + 32;
    while (1)
    {
      if (v11)
      {
        v8 = MEMORY[0x25308D460](v10, v8);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v13 + 8 * v10);
      }

      v14 = v8;
      v15 = __OFADD__(v10++, 1);
      if (v15)
      {
        break;
      }

      v16 = [v8 codings];
      sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
      v17 = sub_251C71154();

      v55 = v14;
      v1 = (v17 & 0xFFFFFFFFFFFFFF8);
      if (v17 >> 62)
      {
        v18 = sub_251C717F4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      while (v18 != v19)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x25308D460](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v5 = sub_251C717F4();
          goto LABEL_3;
        }

        v22 = [objc_opt_self() loinc_systolicBloodPressureCoding];
        v2 = [v21 isEquivalent_];

        ++v19;
        if (v2)
        {

          v23 = v55;
          goto LABEL_33;
        }
      }

      v8 = v50;
      v12 = v44;
      v11 = v46;
      v13 = v43;
      if (v10 == v48)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v24 = v8;
    i = sub_251C717F4();
  }

LABEL_32:

  v23 = 0;
LABEL_33:
  v25 = [v53 codedValues];
  v26 = sub_251C71154();

  if (v26 >> 62)
  {
    goto LABEL_64;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_65:

    if (v23)
    {
LABEL_66:
      v41 = 1;
      goto LABEL_67;
    }

    return 0;
  }

  while (1)
  {
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
    v31 = v26 + 32;
    v56 = v23;
    v51 = v27;
    v52 = v26;
    v47 = v26 & 0xFFFFFFFFFFFFFF8;
    v49 = v26 & 0xC000000000000001;
    v45 = v26 + 32;
LABEL_36:
    if (v29)
    {
      v32 = MEMORY[0x25308D460](v28, v26);
    }

    else
    {
      if (v28 >= *(v30 + 16))
      {
        goto LABEL_63;
      }

      v32 = *(v31 + 8 * v28);
    }

    v23 = v32;
    v15 = __OFADD__(v28++, 1);
    if (!v15)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v27 = sub_251C717F4();
    if (!v27)
    {
      goto LABEL_65;
    }
  }

  v33 = [v32 codings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v34 = sub_251C71154();

  v54 = v23;
  v26 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v34 >> 62)
  {
    v35 = sub_251C717F4();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = 0;
  v23 = (v34 & 0xC000000000000001);
  do
  {
    if (v35 == v36)
    {

      v26 = v52;
      v23 = v56;
      v30 = v47;
      v29 = v49;
      v31 = v45;
      if (v28 != v51)
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

    if (v23)
    {
      v37 = MEMORY[0x25308D460](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
    v40 = [v38 isEquivalent_];

    ++v36;
  }

  while ((v40 & 1) == 0);

  v23 = v56;
  if (!v56)
  {
    v23 = v54;
    if (v54)
    {
      goto LABEL_66;
    }

    return 0;
  }

  if (!v54)
  {
    goto LABEL_66;
  }

  v41 = 0;
LABEL_67:

  return v41;
}

id sub_251B2D448()
{
  v1 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  result = [v1 value];
  if (result)
  {
    v11 = result;
    v12 = [result inspectableValue];

    if (!v12)
    {
LABEL_16:
      result = 0;
      goto LABEL_17;
    }

    v13 = &selRef_dateComponentsValue;
    v14 = [v1 sortDate];
    v15 = [v14 keyPath];

    v16 = sub_251C70F14();
    v18 = v17;

    v19 = *MEMORY[0x277CCC3A0];
    if (v16 == sub_251C70F14() && v18 == v20)
    {

      goto LABEL_16;
    }

    v21 = sub_251C719D4();

    if (v21)
    {

      goto LABEL_16;
    }

    v22 = [v1 diagnosticTestCodingCollection];
    v23 = [v22 codings];

    if (!v23)
    {
      sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
      sub_251C71154();
      v23 = sub_251C71144();
    }

    v24 = [v1 referenceRanges];
    if (v24)
    {
      v25 = v24;
      sub_251A8223C(0, &qword_27F479B28, 0x277CCD890);
      sub_251C71154();

      v26 = v12;
      v27 = sub_251C71144();
      v13 = &selRef_dateComponentsValue;
    }

    else
    {
      v28 = v12;
      v27 = 0;
    }

    v29 = [objc_allocWithZone(MEMORY[0x277CCD1A0]) initWithCodings:v23 value:v12 referenceRanges:v27];

    v30 = [v1 v13[28]];
    v31 = [v30 date];

    sub_251C6FFE4();
    sub_251AF1E28(v9);
    v32 = *(v3 + 8);
    v32(v7, v2);
    v33 = sub_251C6FF94();
    v40[0] = 0;
    v34 = [v29 chartableCodedQuantitySetWithDate:v33 error:v40];

    v35 = v40[0];
    if (!v34)
    {
      v36 = v35;
      v37 = sub_251C6FD84();

      swift_willThrow();
      v32(v9, v2);

      goto LABEL_16;
    }

    v32(v9, v2);

    result = v34;
  }

LABEL_17:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_251B2D88C(void *a1)
{
  v1 = a1;
  v2 = sub_251B2D448();

  return v2;
}

uint64_t sub_251B2D8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B2D958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B2D9F8()
{
  v0 = *MEMORY[0x277D12348];
  result = sub_251C70F14();
  qword_2813E81A0 = result;
  *algn_2813E81A8 = v2;
  return result;
}

uint64_t sub_251B2DA28(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  v5 = sub_251C70F74();

  MEMORY[0x25308CDA0](46, 0xE100000000000000);

  MEMORY[0x25308CDA0](a1, a2);

  return v5;
}

id sub_251B2DAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerifiableHealthRecordsParsingServiceServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251B2DB64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  ObjectType = swift_getObjectType();
  sub_251AF4E18();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);
  v14 = v4;
  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    v29 = a1;
    v31 = ObjectType;
    swift_getMetatypeMetadata();
    v31 = sub_251C70F74();
    v32 = v20;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v29;
    MEMORY[0x25308CDA0](0xD00000000000002DLL, 0x8000000251C8B510);

    v21 = sub_251B10780(v31, v32, &v33);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s starting", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x25308E2B0](v19, -1, -1);
    v22 = v18;
    a3 = v28;
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  v23 = sub_251C71214();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v14;
  v24[5] = a1;
  v24[6] = v30;
  v24[7] = a3;
  v24[8] = a4;
  v25 = v14;
  v26 = a1;

  sub_251C56428(0, 0, v12, &unk_251C78A88, v24);
}

uint64_t sub_251B2DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  return MEMORY[0x2822009F8](sub_251B2DE7C, 0, 0);
}

uint64_t sub_251B2DE7C()
{
  type metadata accessor for VerifiableHealthRecordsParsingService();
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 24) = 0;
  v0[17] = sub_251BC3710();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_251B2DF3C;
  v3 = v0[12];

  return sub_251BCC8A8(v3, 1);
}

uint64_t sub_251B2DF3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_251B2E270;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_251B2E058;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_251B2E058()
{
  v23 = v0;
  result = [*(v0 + 152) signedClinicalData];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 152);
    v4 = sub_251BC37C4(result, *(v0 + 104));

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = sub_251C70764();
    __swift_project_value_buffer(v6, qword_2813E8130);
    v7 = v5;
    v8 = sub_251C70744();
    v9 = sub_251C713F4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 88);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = sub_251B2DA28(0xD00000000000002DLL, 0x8000000251C8B510);
      v15 = sub_251B10780(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_251A6C000, v8, v9, "%s finished successfully", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25308E2B0](v12, -1, -1);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = v4;
    v18(v4, 0);

    swift_setDeallocating();
    v20 = *(v17 + 24);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251B2E270()
{
  v29 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];

  v4 = sub_251BC3A3C(v1);
  swift_willThrow();

  swift_setDeallocating();
  v5 = *(v3 + 24);

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = v0[11];
  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);
  v8 = v6;
  v9 = v4;
  v10 = sub_251C70744();
  v11 = sub_251C713D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315394;
    v15 = sub_251B2DA28(0xD00000000000002DLL, 0x8000000251C8B510);
    v17 = sub_251B10780(v15, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v0[10] = v4;
    v18 = v4;
    sub_251A82284();
    v19 = sub_251C70F74();
    v21 = sub_251B10780(v19, v20, v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s failed with %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v14, -1, -1);
    MEMORY[0x25308E2B0](v13, -1, -1);
  }

  v23 = v0[14];
  v22 = v0[15];
  swift_getErrorValue();
  v24 = v0[6];
  v25 = sub_251BC0124(v0[7], v0[8]);
  v23(0, v25);

  v26 = v0[1];

  return v26();
}

void sub_251B2E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251C6FD74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_251B2E658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251AF4F78;

  return sub_251B2DE54(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251B2E734@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v68 = a3;
  v4 = sub_251C70074();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v58 - v24;
  v69[0] = *a1;
  v26 = v69[0];
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v15 + 8))(v18, v14);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v19);
  v27 = sub_251C70A94();
  (*(v22 + 8))(v25, v21);
  v28 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v26 + v28, v69);
  v29 = v70;
  v30 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v30 + 16))(v29, v30);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_1(v69);
  if (v32)
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v33 = sub_251C70764();
    __swift_project_value_buffer(v33, qword_2813E8130);

    v34 = sub_251C70744();
    v35 = sub_251C713C4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69[0] = v37;
      *v36 = 136315138;
      v39 = v59;
      v38 = v60;
      v40 = v26 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
      v41 = v58;
      (*(v59 + 16))(v58, v40, v60);
      sub_251B2FC7C(&qword_27F479418, MEMORY[0x277CC95F0]);
      v42 = sub_251C719A4();
      v44 = v43;
      (*(v39 + 8))(v41, v38);
      v45 = sub_251B10780(v42, v44, v69);

      *(v36 + 4) = v45;
      _os_log_impl(&dword_251A6C000, v34, v35, "No search required. DocRef already exists. Account: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x25308E2B0](v37, -1, -1);
      MEMORY[0x25308E2B0](v36, -1, -1);
    }

    v69[0] = v27;
    v46 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v46);
    v47 = sub_251C70A94();
  }

  else
  {
    v69[0] = v27;
    v49 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC();
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v49);
    v50 = v61;
    sub_251C70B54();
    v51 = swift_allocObject();
    v52 = v62;
    *(v51 + 16) = v62;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_251B2FAF4;
    *(v53 + 24) = v51;
    v54 = v52;
    sub_251C70964();
    sub_251B2FC7C(&qword_27F479440, sub_251AB2C00);
    v55 = v63;
    v56 = v65;
    sub_251C70B94();

    (*(v64 + 8))(v50, v56);
    sub_251B2FC7C(&qword_27F479450, sub_251AB2D3C);
    v57 = v67;
    v47 = sub_251C70A94();

    result = (*(v66 + 8))(v55, v57);
  }

  *v68 = v47;
  return result;
}

uint64_t sub_251B2EF60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);

  v13 = sub_251C70744();
  v14 = sub_251C713C4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = a2;
    v18 = v17;
    v33[0] = v17;
    *v16 = 136315138;
    (*(v7 + 16))(v10, v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
    sub_251B2FC7C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v19 = sub_251C719A4();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v10, v6);
    v23 = sub_251B10780(v19, v22, v33);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_251A6C000, v13, v14, "Preparing search request. Account: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v24 = v18;
    a2 = v36;
    MEMORY[0x25308E2B0](v24, -1, -1);
    v25 = v16;
    v3 = v32;
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  v26 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v11 + v26, v33);
  v27 = v34;
  v28 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_251BBBDD4(v27, v28, a2);
  if (!v3)
  {
    sub_251AB2CCC();
    *(a2 + *(v29 + 48)) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_251B2F26C(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v5 = sub_251C6F9A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB31B0();
  v35 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B2FAFC(0, &qword_27F47A200, sub_251B2FC14);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  sub_251B2FAFC(0, &qword_27F47A210, type metadata accessor for ClinicalSharingSyncContext);
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v40 = sub_251C66E04(a1, a2, 3, v34);
  (*(v6 + 16))(v8, a1, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v8, v5);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_251AB354C;
  *(v26 + 24) = v25;
  sub_251B2FB98(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  sub_251B2FC7C(&qword_27F4794B8, sub_251AB31B0);
  v27 = v35;
  v28 = sub_251C70A94();
  (*(v10 + 8))(v13, v27);
  v40 = v28;
  sub_251B2FB98(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251B2FC14();
  sub_251AB34D4();
  sub_251C70B54();

  type metadata accessor for ClinicalSharingSyncContext();
  v29 = v38;
  sub_251C708A4();
  (*(v39 + 8))(v18, v29);
  sub_251B2FCC4();
  v30 = v36;
  v31 = sub_251C70A94();
  (*(v37 + 8))(v23, v30);
  return v31;
}

uint64_t sub_251B2F76C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = sub_251C6F9F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_251C6F9E4();
  sub_251B2FD38();
  sub_251C6F9D4();

  if (!v2)
  {
    *a2 = v11;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_251B2F81C(uint64_t a1, uint64_t a2)
{
  v3 = sub_251AFF444(0xD000000000000011, 0x8000000251C8B590, a1);
  v5 = v4;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = sub_251C70764();
  __swift_project_value_buffer(v6, qword_2813E8130);

  v7 = sub_251C70744();
  v8 = sub_251C713C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    sub_251C70074();
    sub_251B2FC7C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v11 = sub_251C719A4();
    v13 = sub_251B10780(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_251AD56B0();

    sub_251C719F4();
    v14 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v15 = sub_251C70F74();
    v17 = sub_251B10780(v15, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_251A6C000, v7, v8, "Received search response. Account: %s ResourceID: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  sub_251B26DF8(v3, v5);

  return a2;
}

uint64_t sub_251B2FAC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251B2F81C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_251B2FAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B2FB98(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    a3(255);
    sub_251AB34D4();
    v5 = sub_251C708B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251B2FB98(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251AB3264(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251B2FC14()
{
  if (!qword_27F47A208)
  {
    type metadata accessor for ClinicalSharingSyncContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A208);
    }
  }
}

uint64_t sub_251B2FC7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251B2FCC4()
{
  result = qword_27F47A218;
  if (!qword_27F47A218)
  {
    sub_251B2FAFC(255, &qword_27F47A210, type metadata accessor for ClinicalSharingSyncContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A218);
  }

  return result;
}

unint64_t sub_251B2FD38()
{
  result = qword_27F47A220;
  if (!qword_27F47A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A220);
  }

  return result;
}

unint64_t sub_251B2FDB4(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v5 = a2;
  v6 = a1;
  if (a4 <= 1u)
  {
    if (a4)
    {

      sub_251C716A4();

      v15 = 91;
      if (v5)
      {
        v9 = v6;
      }

      else
      {
        v9 = 16718;
      }

      if (v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0xE200000000000000;
      }

      MEMORY[0x25308CDA0](v9, v10);

      MEMORY[0x25308CDA0](0xD00000000000001ELL, 0x8000000251C8B710);
      sub_251B3006C();
      v11 = a3;
      v12 = sub_251C70F74();
      MEMORY[0x25308CDA0](v12);

      return v15;
    }

    v15 = 0;

    sub_251C716A4();
    MEMORY[0x25308CDA0](91, 0xE100000000000000);
    if (!v5)
    {
      sub_251AB2F88(v6, 0, a3, 0);
      v5 = 0xE200000000000000;
      v6 = 16718;
    }

    MEMORY[0x25308CDA0](v6, v5);

    v7 = "] Bad response from FHIR API. ";
    v8 = 0xD000000000000047;
LABEL_10:
    MEMORY[0x25308CDA0](v8, v7 | 0x8000000000000000);
    return v15;
  }

  if (a4 == 2)
  {
    v15 = 0;

    sub_251C716A4();
    MEMORY[0x25308CDA0](91, 0xE100000000000000);
    if (!v5)
    {
      sub_251AB2F88(v6, 0, a3, 2);
      v5 = 0xE200000000000000;
      v6 = 16718;
    }

    MEMORY[0x25308CDA0](v6, v5);

    v7 = "ders form FHIR API";
    v8 = 0xD000000000000035;
    goto LABEL_10;
  }

  v14 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    return 0xD000000000000037;
  }

  if (a1 == 1 && !v14)
  {
    return 0xD000000000000042;
  }

  if (a1 != 2 || v14)
  {
    return 0xD000000000000022;
  }

  return 0xD000000000000052;
}

void sub_251B3006C()
{
  if (!qword_27F47A228)
  {
    sub_251B300C4();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A228);
    }
  }
}

unint64_t sub_251B300C4()
{
  result = qword_27F479490;
  if (!qword_27F479490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479490);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon27ClinicalSharingFHIRAPIErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_251B30140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_251B30188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_251B301D0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_251B301FC(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      if (a8)
      {
        return 0;
      }

      if (!a2)
      {
        return !a6;
      }

      return a6 && (a1 == a5 && a2 == a6 || (sub_251C719D4() & 1) != 0);
    }

    if (a8 != 1)
    {
      return 0;
    }

    if (a2)
    {
      if (!a6)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        v8 = a3;
        v9 = a7;
        v10 = sub_251C719D4();
        a3 = v8;
        a7 = v9;
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (a6)
    {
      return 0;
    }

    if (a3)
    {
      if (a7)
      {
        v12 = a7;
        v13 = a3;
        sub_251B300C4();
        v14 = v12;
        v15 = v13;
        v16 = sub_251C71534();

        if (v16)
        {
          return 1;
        }
      }

      return 0;
    }

    return !a7;
  }

  if (a4 == 2)
  {
    if (a8 != 2)
    {
      return 0;
    }

    if (!a2)
    {
      return !a6;
    }

    return a6 && (a1 == a5 && a2 == a6 || (sub_251C719D4() & 1) != 0);
  }

  v11 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    return a8 == 3 && !(a7 | a6 | a5);
  }

  if (a1 != 1 || v11)
  {
    if (a1 != 2 || v11)
    {
      if (a8 != 3 || a5 != 3)
      {
        return 0;
      }
    }

    else if (a8 != 3 || a5 != 2)
    {
      return 0;
    }
  }

  else if (a8 != 3 || a5 != 1)
  {
    return 0;
  }

  return !(a7 | a6);
}

uint64_t sub_251B303BC()
{
  v1 = [v0 valueType];
  if (v1 < 0xC)
  {
    return qword_251C78BF8[v1];
  }

  sub_251C716A4();
  MEMORY[0x25308CDA0](0xD000000000000023, 0x8000000251C8B7D0);
  [v0 valueType];
  type metadata accessor for HKInspectableValueType(0);
  sub_251C717C4();
  MEMORY[0x25308CDA0](0xD000000000000015, 0x8000000251C8AEE0);
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251B304E4(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v92 = a4;
  v98 = a3;
  sub_251ABCCD4(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_251C70074();
  v96 = *(v97 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0;
  v17 = v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
  v19 = sub_251C70014();
  v93 = *(*(v19 - 8) + 56);
  v93(v6 + v18, 1, 1, v19);
  *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) = 0;
  v90 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare;
  *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare) = 0;
  v106 = a1;
  v20 = [a1 gateway];
  if (!v20)
  {

    sub_251A82AF0();
    swift_allocError();
    *v43 = xmmword_251C78C70;
    *(v43 + 16) = 8;
    swift_willThrow();
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1(v98);
    goto LABEL_15;
  }

  v21 = v20;
  v91 = a5;
  v22 = [a2 accessToken];
  if (!v22)
  {

    sub_251A82AF0();
    swift_allocError();
    *v44 = xmmword_251C78C60;
    *(v44 + 16) = 8;
    swift_willThrow();

    a2 = v21;
    goto LABEL_7;
  }

  v88 = a2;
  v23 = v22;
  v24 = sub_251C70F14();
  v25 = v21;
  v27 = v26;

  v28 = (v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken);
  *v28 = v24;
  v28[1] = v27;
  v87 = v25;
  v29 = [v25 externalID];
  v30 = sub_251C70F14();
  v32 = v31;

  *(v6 + 40) = v30;
  *(v6 + 48) = v32;
  v33 = v98;
  v34 = v106;
  v35 = [v106 identifier];
  v36 = v95;
  sub_251C70054();

  v37 = *(v96 + 32);
  v89 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  v37(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v36, v97);
  v86 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore;
  sub_251A823B4(v33, v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore);
  v38 = (v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID);
  v39 = v91;
  *v38 = v92;
  v38[1] = v39;
  v40 = [v34 clinicalSharingStatus];
  v92 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
  *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) = v40;
  v41 = [v34 clinicalSharingStatus];
  v42 = [v41 firstSharedDate];

  if (v42)
  {
    sub_251C6FFE4();

    v93(v13, 0, 1, v19);
    sub_251B32A94(v13, sub_251ABCCD4);
  }

  else
  {
    v93(v13, 1, 1, v19);
    sub_251B32A94(v13, sub_251ABCCD4);
    *(v6 + v90) = 1;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v45 = sub_251C70764();
  __swift_project_value_buffer(v45, qword_2813E8130);

  v46 = sub_251C70744();
  v47 = sub_251C713C4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v99 = v93;
    *v48 = 136315394;
    v49 = v96;
    v50 = v95;
    v51 = v97;
    (*(v96 + 16))(v95, v6 + v89, v97);
    sub_251B32A4C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v52 = sub_251C719A4();
    v54 = v53;
    (*(v49 + 8))(v50, v51);
    v55 = sub_251B10780(v52, v54, &v99);
    v33 = v98;

    *(v48 + 4) = v55;
    *(v48 + 12) = 2112;
    v56 = *(v6 + v92);
    *(v48 + 14) = v56;
    v57 = v91;
    *v91 = v56;
    v58 = v56;
    _os_log_impl(&dword_251A6C000, v46, v47, "ClinicalSharingSyncContext initialized. Account: %s HKClinicalSharingStatus: %@", v48, 0x16u);
    sub_251B32A94(v57, sub_251B32AF4);
    MEMORY[0x25308E2B0](v57, -1, -1);
    v59 = v93;
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x25308E2B0](v59, -1, -1);
    MEMORY[0x25308E2B0](v48, -1, -1);
  }

  v60 = v87;
  *(v6 + 16) = v87;
  v61 = v60;
  v62 = v88;
  v63 = [v88 patientID];
  v64 = sub_251C70F14();
  v66 = v65;

  *(v6 + 24) = v64;
  *(v6 + 32) = v66;
  v67 = v61;

  v68 = v94;
  sub_251B3BFB8(v67, v64, v66, v105);
  if (!v68)
  {
    *(&v100 + 1) = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
    *&v101 = &off_2863F9CD8;
    v81 = swift_allocObject();
    *&v99 = v81;

    v82 = v105[5];
    v81[5] = v105[4];
    v81[6] = v82;
    v81[7] = v105[6];
    v83 = v105[1];
    v81[1] = v105[0];
    v81[2] = v83;
    v84 = v105[3];
    v81[3] = v105[2];
    v81[4] = v84;
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_251A7E8D8(&v99, v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo);
    return v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  v69 = *(v6 + 32);

  v70 = *(v6 + 48);

  (*(v96 + 8))(v6 + v89, v97);
  __swift_destroy_boxed_opaque_existential_1((v6 + v86));

  v71 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8);

  v72 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8);

LABEL_15:
  v73 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
  v101 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
  v102 = v73;
  v103 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
  v104 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
  v74 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
  v99 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
  v100 = v74;
  sub_251B3282C(&v99, &qword_27F479718);
  v75 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
  v76 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
  v77 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
  sub_251B220A8(*(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo), *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8));
  sub_251B32A94(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync, sub_251ABCCD4);

  type metadata accessor for ClinicalSharingSyncContext();
  v78 = *(*v6 + 48);
  v79 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_251B30EC0()
{
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
  if ([*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus] != 1 || objc_msgSend(*(v0 + v1), sel_userStatus) != 2)
  {
    return 0;
  }

  if ([*(v0 + v1) multiDeviceStatus] == 2 || objc_msgSend(*(v0 + v1), sel_multiDeviceStatus) == 4)
  {
    return [*(v0 + v1) multiDeviceStatus] == 3;
  }

  v3 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) && v3 == *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8);
    if (!v4 && (sub_251C719D4() & 1) == 0)
    {
      return [*(v0 + v1) multiDeviceStatus] == 3;
    }
  }

  return 1;
}

uint64_t sub_251B30FAC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  v4 = sub_251C70074();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore));

  v5 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8);

  v6 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo));
  v7 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
  v8 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 56);
  v14 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
  v13 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
  sub_251B32B5C(*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 8), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 24), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 40));
  v9 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
  v10 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
  v11 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
  sub_251B220A8(*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8));
  sub_251B32A94(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync, sub_251ABCCD4);

  return v0;
}

uint64_t sub_251B31104()
{
  sub_251B30FAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingSyncContext()
{
  result = qword_2813E3A38;
  if (!qword_2813E3A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B311B0()
{
  v0 = sub_251C70074();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_251ABCCD4(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_251B312E0(void *a1, void *a2)
{
  v4 = sub_251C70014();
  v121 = *(v4 - 8);
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B32764();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v120 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v110 - v17;
  v19 = a1[2];
  v20 = a2[2];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_39;
    }

    v119 = v4;
    sub_251A8223C(0, &unk_27F47A260, 0x277D12408);
    v21 = v20;
    v22 = v19;
    v23 = sub_251C71534();

    if ((v23 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_6:
    if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((a1[5] != a2[5] || a1[6] != a2[6]) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((sub_251C70044() & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
    v24 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    v25 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    v26 = v24;
    v27 = sub_251C71534();

    if ((v27 & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken) || *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) || *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    v28 = a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
    v29 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
    v207[2] = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
    v207[3] = v29;
    v207[4] = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
    v208 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
    v30 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
    v207[0] = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
    v207[1] = v30;
    v31 = a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
    v32 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
    v209[1] = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
    v209[0] = v32;
    v33 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
    v34 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
    v35 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
    v210 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
    v209[4] = v35;
    v209[3] = v34;
    v209[2] = v33;
    v36 = *&v207[0];
    v37 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 24);
    v38 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 56);
    v199 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 40);
    v200 = v38;
    v201 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 72);
    v39 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 8);
    v198 = v37;
    v197 = v39;
    if (*&v207[0])
    {
      if (*&v209[0])
      {
        *&v211[0] = *&v209[0];
        *(v211 + 8) = *(v31 + 8);
        *(&v211[1] + 8) = *(v31 + 24);
        *(&v211[2] + 8) = *(v31 + 40);
        *(&v211[3] + 8) = *(v31 + 56);
        *(&v211[4] + 8) = *(v31 + 72);
        v218[0] = v211[0];
        v218[1] = v211[1];
        v219 = *&v211[5];
        v218[3] = v211[3];
        v218[4] = v211[4];
        v218[2] = v211[2];
        v213 = *(v28 + 8);
        v40 = *(v28 + 24);
        v41 = *(v28 + 40);
        v42 = *(v28 + 56);
        v217 = *(v28 + 72);
        v216 = v42;
        v215 = v41;
        v214 = v40;
        v212 = *&v207[0];
        sub_251B32984(v207, v130, &qword_27F479718);
        sub_251B32984(v209, v130, &qword_27F479718);
        sub_251B32984(v207, v130, &qword_27F479718);
        sub_251B32984(v209, v130, &qword_27F479718);
        LODWORD(v118) = sub_251B5C710(&v212, v218);
        sub_251B3282C(v211, &qword_27F479718);
        sub_251B3282C(v209, &qword_27F479718);
        sub_251B3282C(v207, &qword_27F479718);
        *&v130[0] = v36;
        *(&v130[1] + 8) = v198;
        *(&v130[2] + 8) = v199;
        *(&v130[3] + 8) = v200;
        *(&v130[4] + 8) = v201;
        *(v130 + 8) = v197;
        sub_251B3282C(v130, &qword_27F479718);
        if ((v118 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_28:
        v47 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
        v48 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
        v49 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
        v50 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
        v117 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
        v118 = v50;
        v51 = (a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
        v53 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
        v52 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
        v54 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
        v55 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
        if (v48)
        {
          if (v52)
          {
            v114 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
            v115 = v47;
            v113 = v55;
            if (v47 == v53 && v48 == v52)
            {
              goto LABEL_33;
            }

            v110 = v54;
            v111 = v49;
            v56 = v52;
            v57 = sub_251C719D4();
            v54 = v110;
            v49 = v111;
            v55 = v113;
            v52 = v56;
            if (v57)
            {
LABEL_33:
              v112 = v48;
              v116 = v52;
              if (v49 == v54 && v118 == v55)
              {
                sub_251B32888(v53, v52);
                v58 = v117;
                sub_251B32888(v115, v112);

                sub_251B220A8(v115, v112);
              }

              else
              {
                v111 = v49;
                LODWORD(v110) = sub_251C719D4();
                sub_251B32888(v53, v116);
                v58 = v117;
                sub_251B32888(v115, v112);

                sub_251B220A8(v115, v112);
                if ((v110 & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              if (v58 != v114)
              {
                goto LABEL_39;
              }

LABEL_43:
              v67 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
              swift_beginAccess();
              sub_251AC553C(a1 + v67, v18);
              v68 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
              swift_beginAccess();
              v69 = *(v9 + 48);
              v70 = v120;
              sub_251AC553C(v18, v120);
              sub_251AC553C(a2 + v68, v70 + v69);
              v71 = *(v121 + 48);
              if (v71(v70, 1, v119) == 1)
              {
                sub_251B32A94(v18, sub_251ABCCD4);
                if (v71(v70 + v69, 1, v119) == 1)
                {
                  sub_251B32A94(v70, sub_251ABCCD4);
                  goto LABEL_51;
                }
              }

              else
              {
                sub_251AC553C(v70, v16);
                if (v71(v70 + v69, 1, v119) != 1)
                {
                  v74 = v121;
                  v75 = v70 + v69;
                  v76 = v119;
                  (*(v121 + 32))(v7, v75, v119);
                  sub_251B32A4C(&qword_27F479160, MEMORY[0x277CC9578]);
                  LODWORD(v118) = sub_251C70ED4();
                  v77 = *(v74 + 8);
                  v77(v7, v76);
                  sub_251B32A94(v18, sub_251ABCCD4);
                  v77(v16, v76);
                  sub_251B32A94(v70, sub_251ABCCD4);
                  if ((v118 & 1) == 0)
                  {
                    goto LABEL_39;
                  }

LABEL_51:
                  v78 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
                  v121 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error;
                  if (v78)
                  {
                    ErrorValue = swift_getErrorValue();
                    v80 = v206;
                    v81 = *(v206 - 8);
                    v82 = *(v81 + 64);
                    MEMORY[0x28223BE20](ErrorValue);
                    v84 = &v110 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v81 + 16))(v84);
                    v120 = sub_251C71A44();
                    v86 = v85;
                    (*(v81 + 8))(v84, v80);
                    if (!*(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
                    {
                      if (!v86)
                      {
                        v97 = *(a1 + v121);
                        goto LABEL_70;
                      }

                      goto LABEL_64;
                    }

                    v119 = (a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
                  }

                  else
                  {
                    if (!*(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
                    {
                      goto LABEL_71;
                    }

                    v119 = (a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
                    v120 = 0;
                    v86 = 0;
                  }

                  v87 = swift_getErrorValue();
                  v88 = v205;
                  v89 = *(v205 - 8);
                  v90 = *(v89 + 64);
                  MEMORY[0x28223BE20](v87);
                  v92 = &v110 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v89 + 16))(v92);
                  v93 = sub_251C71A44();
                  v95 = v94;
                  (*(v89 + 8))(v92, v88);
                  if (v86)
                  {
                    if (v95)
                    {
                      if (v120 == v93 && v86 == v95)
                      {
                      }

                      else
                      {
                        v96 = sub_251C719D4();

                        if ((v96 & 1) == 0)
                        {
                          goto LABEL_39;
                        }
                      }

LABEL_66:
                      v97 = *(a1 + v121);
                      if (*v119)
                      {
                        if (!v97)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_71;
                      }

LABEL_70:
                      if (v97)
                      {
                        goto LABEL_39;
                      }

LABEL_71:
                      if (*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare))
                      {
                        goto LABEL_39;
                      }

                      v98 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
                      swift_beginAccess();
                      sub_251A823B4(a1 + v98, v204);
                      sub_251B328CC();
                      if (swift_dynamicCast())
                      {
                        v194 = v201;
                        v195 = v202;
                        v196 = v203;
                        v190 = v197;
                        v191 = v198;
                        v193 = v200;
                        v192 = v199;
                        sub_251B29448(&v190);
                        v99 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
                        swift_beginAccess();
                        sub_251A823B4(a2 + v99, &v189);
                        if ((swift_dynamicCast() & 1) == 0)
                        {
                          goto LABEL_39;
                        }

                        v179 = v186;
                        v180 = v187;
                        v181 = v188;
                        v175 = v182;
                        v176 = v183;
                        v178 = v185;
                        v177 = v184;
                        sub_251B29448(&v175);
                        sub_251A823B4(a1 + v98, &v167);
                        if (swift_dynamicCast())
                        {
                          v172 = v164;
                          v173 = v165;
                          v174 = v166;
                          v168 = v160;
                          v169 = v161;
                          v171 = v163;
                          v170 = v162;
                        }

                        else
                        {
                          v174 = 0u;
                          v173 = 0u;
                          v172 = 0u;
                          v171 = 0u;
                          v170 = 0u;
                          v169 = 0u;
                          v168 = 0u;
                        }

                        sub_251A823B4(a2 + v99, &v152);
                        if (swift_dynamicCast())
                        {
                          v157 = v149;
                          v158 = v150;
                          v159 = v151;
                          v153 = v145;
                          v154 = v146;
                          v155 = v147;
                          v156 = v148;
                          v101 = *(&v145 + 1);
                          v102 = v145;
                        }

                        else
                        {
                          v101 = 0;
                          v102 = 0;
                          v158 = 0u;
                          v159 = 0u;
                          v156 = 0u;
                          v157 = 0u;
                          v154 = 0u;
                          v155 = 0u;
                          v153 = 0u;
                        }

                        v105 = v168;
                        v141 = v171;
                        v142 = v172;
                        v143 = v173;
                        v144 = v174;
                        v139 = v169;
                        v140 = v170;
                        if (*(&v168 + 1))
                        {
                          if (v101)
                          {
                            *&v122[0] = v102;
                            *(&v122[0] + 1) = v101;
                            v122[3] = v156;
                            v122[4] = v157;
                            v122[5] = v158;
                            v122[6] = v159;
                            v122[1] = v154;
                            v122[2] = v155;
                            v130[2] = v155;
                            v130[3] = v156;
                            v130[4] = v157;
                            v130[5] = v158;
                            v131 = v159;
                            v130[0] = v122[0];
                            v130[1] = v154;
                            v211[5] = v173;
                            v211[6] = v174;
                            v211[3] = v171;
                            v211[4] = v172;
                            v211[1] = v169;
                            v211[2] = v170;
                            v211[0] = v168;
                            v106 = &qword_27F47A258;
                            sub_251B32984(&v168, &v123, &qword_27F47A258);
                            sub_251B32984(&v153, &v123, &qword_27F47A258);
                            v65 = sub_251B3BCD4(v211, v130);
                            sub_251B3282C(v122, &qword_27F47A258);
                            sub_251B3282C(&v153, &qword_27F47A258);
                            sub_251B3282C(&v168, &qword_27F47A258);
                            v123 = v105;
                            v126 = v141;
                            v127 = v142;
                            v128 = v143;
                            v129 = v144;
                            v124 = v139;
                            v125 = v140;
                            v107 = &v123;
LABEL_93:
                            sub_251B3282C(v107, v106);
                            return v65 & 1;
                          }

                          goto LABEL_95;
                        }

                        if (v101)
                        {
LABEL_95:
                          v130[0] = v168;
                          v130[3] = v171;
                          v130[4] = v172;
                          v130[5] = v173;
                          v131 = v174;
                          v130[1] = v169;
                          v130[2] = v170;
                          *&v132 = v102;
                          *(&v132 + 1) = v101;
                          v133 = v154;
                          v134 = v155;
                          v137 = v158;
                          v138 = v159;
                          v135 = v156;
                          v136 = v157;
                          v45 = &unk_27F47A250;
                          v46 = &qword_27F47A258;
                          goto LABEL_26;
                        }

                        v130[0] = v168;
                        v130[3] = v171;
                        v130[4] = v172;
                        v130[5] = v173;
                        v131 = v174;
                        v130[1] = v169;
                        v130[2] = v170;
                        v109 = &qword_27F47A258;
LABEL_100:
                        sub_251B3282C(v130, v109);
                        v65 = 1;
                        return v65 & 1;
                      }

                      v100 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
                      swift_beginAccess();
                      sub_251A823B4(a2 + v100, v122);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
                        goto LABEL_39;
                      }

                      v192 = v199;
                      v193 = v200;
                      v194 = v201;
                      v195 = v202;
                      v190 = v197;
                      v191 = v198;
                      sub_251B32930(&v190);
                      sub_251A823B4(a1 + v98, &v139);
                      if (swift_dynamicCast())
                      {
                        v184 = v177;
                        v185 = v178;
                        v186 = v179;
                        v187 = v180;
                        v182 = v175;
                        v183 = v176;
                      }

                      else
                      {
                        v187 = 0u;
                        v186 = 0u;
                        v185 = 0u;
                        v184 = 0u;
                        v183 = 0u;
                        v182 = 0u;
                      }

                      sub_251A823B4(a2 + v100, v204);
                      if (swift_dynamicCast())
                      {
                        v170 = v162;
                        v171 = v163;
                        v172 = v164;
                        v173 = v165;
                        v168 = v160;
                        v169 = v161;
                        v103 = *(&v160 + 1);
                        v104 = v160;
                      }

                      else
                      {
                        v103 = 0;
                        v104 = 0;
                        v173 = 0u;
                        v172 = 0u;
                        v171 = 0u;
                        v170 = 0u;
                        v169 = 0u;
                        v168 = 0u;
                      }

                      v108 = v182;
                      v125 = v185;
                      v126 = v186;
                      v127 = v187;
                      v123 = v183;
                      v124 = v184;
                      if (*(&v182 + 1))
                      {
                        if (v103)
                        {
                          *&v145 = v104;
                          *(&v145 + 1) = v103;
                          v148 = v171;
                          v149 = v172;
                          v150 = v173;
                          v146 = v169;
                          v147 = v170;
                          v130[4] = v172;
                          v130[5] = v173;
                          v130[2] = v170;
                          v130[3] = v171;
                          v130[0] = v145;
                          v130[1] = v169;
                          v211[4] = v186;
                          v211[5] = v187;
                          v211[2] = v184;
                          v211[3] = v185;
                          v211[1] = v183;
                          v211[0] = v182;
                          v106 = &qword_27F47A248;
                          sub_251B32984(&v182, &v153, &qword_27F47A248);
                          sub_251B32984(&v168, &v153, &qword_27F47A248);
                          v65 = sub_251B3BE64(v211, v130);
                          sub_251B3282C(&v145, &qword_27F47A248);
                          sub_251B3282C(&v168, &qword_27F47A248);
                          sub_251B3282C(&v182, &qword_27F47A248);
                          v153 = v108;
                          v156 = v125;
                          v157 = v126;
                          v158 = v127;
                          v154 = v123;
                          v155 = v124;
                          v107 = &v153;
                          goto LABEL_93;
                        }
                      }

                      else if (!v103)
                      {
                        v130[0] = v182;
                        v130[3] = v185;
                        v130[4] = v186;
                        v130[5] = v187;
                        v130[1] = v183;
                        v130[2] = v184;
                        v109 = &qword_27F47A248;
                        goto LABEL_100;
                      }

                      v130[0] = v182;
                      v130[3] = v185;
                      v130[4] = v186;
                      v130[5] = v187;
                      v130[1] = v183;
                      v130[2] = v184;
                      *&v131 = v104;
                      *(&v131 + 1) = v103;
                      v135 = v172;
                      v136 = v173;
                      v133 = v170;
                      v134 = v171;
                      v132 = v169;
                      v45 = &unk_27F47A240;
                      v46 = &qword_27F47A248;
                      goto LABEL_26;
                    }
                  }

                  else if (!v95)
                  {
                    goto LABEL_66;
                  }

LABEL_64:

                  goto LABEL_39;
                }

                sub_251B32A94(v18, sub_251ABCCD4);
                (*(v121 + 8))(v16, v119);
              }

              sub_251B32A94(v70, sub_251B32764);
              goto LABEL_39;
            }

            v72 = v48;
            sub_251B32888(v53, v56);
            v73 = v115;
            sub_251B32888(v115, v72);

            v63 = v73;
            v64 = v72;
LABEL_38:
            sub_251B220A8(v63, v64);
            goto LABEL_39;
          }
        }

        else if (!v52)
        {
          goto LABEL_43;
        }

        v59 = v47;
        v60 = *v51;
        v61 = v51[1];
        v62 = v51[2];
        v116 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
        sub_251B32888(v60, v61);
        sub_251B32888(v59, v48);
        sub_251B220A8(v59, v48);
        v63 = v53;
        v64 = v116;
        goto LABEL_38;
      }
    }

    else if (!*&v209[0])
    {
      *&v130[0] = 0;
      *(&v130[1] + 8) = *(v28 + 24);
      *(&v130[2] + 8) = *(v28 + 40);
      *(&v130[3] + 8) = *(v28 + 56);
      *(&v130[4] + 8) = *(v28 + 72);
      *(v130 + 8) = *(v28 + 8);
      sub_251B32984(v207, v211, &qword_27F479718);
      sub_251B32984(v209, v211, &qword_27F479718);
      sub_251B3282C(v130, &qword_27F479718);
      goto LABEL_28;
    }

    *(&v130[1] + 8) = *(v28 + 24);
    *(&v130[2] + 8) = *(v28 + 40);
    *(&v130[3] + 8) = *(v28 + 56);
    *(&v130[4] + 8) = *(v28 + 72);
    *(v130 + 8) = *(v28 + 8);
    *&v130[0] = *&v207[0];
    *(&v130[5] + 1) = *&v209[0];
    v43 = *(v31 + 24);
    v44 = *(v31 + 56);
    v133 = *(v31 + 40);
    v134 = v44;
    v135 = *(v31 + 72);
    v131 = *(v31 + 8);
    v132 = v43;
    sub_251B32984(v207, v211, &qword_27F479718);
    sub_251B32984(v209, v211, &qword_27F479718);
    v45 = &unk_27F47A238;
    v46 = &qword_27F479718;
LABEL_26:
    sub_251B329F0(v130, v45, v46);
    goto LABEL_39;
  }

  v119 = v4;
  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_39:
  v65 = 0;
  return v65 & 1;
}

void sub_251B32764()
{
  if (!qword_27F47A230)
  {
    sub_251ABCCD4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A230);
    }
  }
}

void sub_251B327C8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251AE526C(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251B3282C(uint64_t a1, unint64_t *a2)
{
  sub_251AE526C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B32888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_251B328CC()
{
  result = qword_27F47A178;
  if (!qword_27F47A178)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47A178);
  }

  return result;
}

uint64_t sub_251B32984(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_251AE526C(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B329F0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_251B327C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B32A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251B32A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B32AF4()
{
  if (!qword_2813E1D10)
  {
    sub_251A8223C(255, &qword_2813E1D20, 0x277D82BB8);
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1D10);
    }
  }
}

uint64_t sub_251B32B5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result)
  {

    sub_251A83028(a5, a6);
  }

  return result;
}

id sub_251B32C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalDocumentDownloader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251B32E80(int a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 56) = a2;
  *(v4 + 24) = _Block_copy(aBlock);
  sub_251B34B90();
  *(v4 + 32) = sub_251C71154();
  v6 = a4;

  return MEMORY[0x2822009F8](sub_251B32F1C, 0, 0);
}

uint64_t sub_251B32F1C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_taskCoordinator);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_251B32FC4;
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);

  return sub_251BB6044(v3, v4);
}

uint64_t sub_251B32FC4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251B33138, 0, 0);
  }

  else
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);

    (*(v5 + 16))(v5, 1, 0);
    _Block_release(*(v3 + 24));
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_251B33138()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_251C6FD74();

  (*(v3 + 16))(v3, 0, v4);
  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251B33368(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_251B333F4, 0, 0);
}

uint64_t sub_251B333F4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_taskCoordinator);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_251B33498;
  v3 = v0[2];

  return sub_251BBA334(v3);
}

uint64_t sub_251B33498()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251B33608, 0, 0);
  }

  else
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);

    (*(v4 + 16))(v4, 1, 0);
    _Block_release(*(v3 + 32));
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_251B33608()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_251C6FD74();
  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251B33820(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_251B33888, 0, 0);
}

uint64_t sub_251B33888()
{
  v1 = *(v0 + 16);
  v1[2](v1, 1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251B33A84(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_251C70074();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_251C70054();
  v9 = a3;

  return MEMORY[0x2822009F8](sub_251B33B7C, 0, 0);
}

uint64_t sub_251B33B7C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_taskCoordinator);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_251B33C20;
  v3 = v0[5];

  return sub_251BB92AC(v3);
}

uint64_t sub_251B33C20()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251B33DA8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 16);
    (*(*(v3 + 32) + 8))(*(v3 + 40), *(v3 + 24));

    (*(v4 + 16))(v4, 1, 0);
    v6 = *(v3 + 40);
    _Block_release(*(v3 + 48));

    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_251B33DA8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

  v4 = sub_251C6FD74();
  (*(v2 + 16))(v2, 0, v4);

  v5 = *(v0 + 40);
  _Block_release(*(v0 + 48));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251B33EA8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_251B14FE8;

  return v7();
}

uint64_t sub_251B33F90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_251AF4F78;

  return v8();
}

uint64_t sub_251B34078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251AF4E18();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B346F4(a3, v12);
  v13 = sub_251C71214();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_251B34758(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_251C71204();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_251C711C4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_251C70F84() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

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

    sub_251B34758(a3);

    return v23;
  }

LABEL_8:
  sub_251B34758(a3);
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

uint64_t sub_251B3432C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251B34424;

  return v7(a1);
}

uint64_t sub_251B34424()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_251B3451C(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_client] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v5 = a1;
  v6 = [v4 init];
  v7 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_healthStore;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_healthStore] = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D12400]) initWithHealthStore_];
  v9 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_documentStore;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_documentStore] = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_accountStore] = v10;
  v11 = *&v2[v9];
  type metadata accessor for ClinicalDocumentDownloadTaskCoordinator();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_taskCoordinator] = sub_251BB5FC8(v11, v10);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClinicalDocumentDownloader();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_251B34640()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_251B14FE8;

  return sub_251B33A84(v2, v3, v4);
}

uint64_t sub_251B346F4(uint64_t a1, uint64_t a2)
{
  sub_251AF4E18();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B34758(uint64_t a1)
{
  sub_251AF4E18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B347B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251B14FE8;

  return sub_251B3432C(a1, v5);
}

uint64_t sub_251B3486C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251AF4F78;

  return sub_251B3432C(a1, v5);
}

uint64_t sub_251B34924()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_251AF4F78;

  return sub_251B33820(v2);
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251B34A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_251B14FE8;

  return sub_251B33368(v2, v3, v4);
}

uint64_t sub_251B34ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_251B14FE8;

  return sub_251B32E80(v2, v3, v5, v4);
}

unint64_t sub_251B34B90()
{
  result = qword_27F47A308;
  if (!qword_27F47A308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47A308);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingHistogramQuery()
{
  result = qword_27F47A310;
  if (!qword_27F47A310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B34C50()
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v0 <= 0x3F)
  {
    sub_251C6FAE4();
    if (v1 <= 0x3F)
    {
      sub_251A8223C(319, &qword_27F4797C0, 0x277CCD830);
      if (v2 <= 0x3F)
      {
        sub_251B36F3C(319, &qword_27F47A320, &qword_27F47A328, 0x277CCD7F8, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251B34D48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C701E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  (*(v9 + 16))(v12, *v1 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v8);
  (*(v4 + 16))(v7, v13 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v3);
  v14 = v1 + *(type metadata accessor for ClinicalSharingHistogramQuery() + 28);
  if (v14[8] == 1 && (v15 = *v14, ((1 << v15) & 0x67) == 0))
  {
    if (v15 == 3)
    {
      sub_251B1C960(0, v7, a1);
    }

    else
    {
      sub_251B1D048(v7, a1);
    }
  }

  else
  {
    sub_251C700C4();
  }

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_251B34F80()
{
  v1 = type metadata accessor for ClinicalSharingHistogramQuery();
  v2 = (v1 - 8);
  v91 = *(v1 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x28223BE20](v1);
  v89 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B36914(0, &qword_27F47A330, type metadata accessor for PBTypedData);
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = &v78 - v7;
  sub_251B36914(0, &qword_27F47A350, type metadata accessor for ClinicalSharingQueryOutput);
  v9 = *(v8 - 8);
  v94 = v8;
  v95 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v93 = &v78 - v11;
  sub_251B369E0(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v78 - v14;
  v15 = sub_251C6FC94();
  v16 = *(v15 - 8);
  v102 = v15;
  v103 = v16;
  v86 = *(v16 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v78 - v19;
  v20 = sub_251C70014();
  v98 = *(v20 - 8);
  v21 = v98;
  v83 = *(v98 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - v24;
  v26 = v2[7];
  v27 = objc_opt_self();
  v28 = v0;
  sub_251C6FAB4();
  v29 = sub_251C6FF94();
  v30 = *(v21 + 8);
  v81 = v20;
  v30(v25, v20);
  v87 = v30;
  v88 = v21 + 8;
  sub_251C6FA84();
  v31 = sub_251C6FF94();
  v30(v25, v20);
  v99 = [v27 predicateForSamplesWithStartDate:v29 endDate:v31 options:0];

  v32 = v28;
  v33 = v104;
  sub_251AFC81C(*(v28 + v2[9]), *(v28 + v2[9] + 8));
  v34 = *v28;
  v35 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v36 = sub_251C701E4();
  v37 = *(v36 - 8);
  v38 = v34 + v35;
  v39 = v82;
  (*(v37 + 16))(v82, v38, v36);
  (*(v37 + 56))(v39, 0, 1, v36);
  v40 = v33;
  sub_251C6FC84();
  sub_251A823B4(v34 + 16, v106);
  v41 = __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v42 = v2[8];
  v101 = v32;
  v79 = *(v32 + v42);
  v84 = v25;
  sub_251B34D48(v25);
  v80 = *(v32 + v2[10]);
  v82 = *v41;
  v43 = v98;
  v44 = v81;
  (*(v98 + 16))(v100, v25, v81);
  v45 = v102;
  v46 = v103;
  v47 = v85;
  (*(v103 + 16))(v85, v40, v102);
  v48 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v49 = v46;
  v50 = (v83 + *(v46 + 80) + v48) & ~*(v46 + 80);
  v51 = (v86 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v79;
  v55 = v98;
  v54 = v99;
  *(v52 + 16) = v79;
  *(v52 + 24) = v54;
  (*(v55 + 32))(v52 + v48, v100, v44);
  (*(v49 + 32))(v52 + v50, v47, v45);
  *(v52 + v51) = v80;
  v56 = v82;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v82;
  v57 = MEMORY[0x277CBCEA8];
  sub_251B36B54(0, &qword_27F47A358, MEMORY[0x277CBCEA8]);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = v53;
  v100 = v99;

  v62 = v56;
  v105 = sub_251C70A64();
  sub_251B36BDC(&qword_27F47A360, &qword_27F47A358, v57);
  v63 = sub_251C70A94();

  v105 = v63;
  v64 = MEMORY[0x277CBCD88];
  sub_251B36B54(0, &qword_27F47A338, MEMORY[0x277CBCD88]);
  v98 = v65;
  v99 = sub_251B36BDC(&qword_27F47A348, &qword_27F47A338, v64);
  v66 = sub_251C70A94();
  v87(v84, v44);

  v105 = v66;
  v67 = v89;
  sub_251B37044(v101, v89, type metadata accessor for ClinicalSharingHistogramQuery);
  v68 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v69 = swift_allocObject();
  sub_251B37168(v67, v69 + v68, type metadata accessor for ClinicalSharingHistogramQuery);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_251B36C20;
  *(v70 + 24) = v69;
  type metadata accessor for PBTypedData(0);
  v71 = v92;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v106);
  sub_251B37044(v101, v67, type metadata accessor for ClinicalSharingHistogramQuery);
  v72 = swift_allocObject();
  sub_251B37168(v67, v72 + v68, type metadata accessor for ClinicalSharingHistogramQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v73 = v93;
  v74 = v96;
  sub_251C70774();

  (*(v97 + 8))(v71, v74);
  sub_251B36E40();
  v75 = v94;
  v76 = sub_251C70A94();

  (*(v95 + 8))(v73, v75);
  (*(v103 + 8))(v104, v102);
  return v76;
}

uint64_t sub_251B35964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a2;
  v100 = type metadata accessor for ClinicalSharingHistogramQuery();
  v5 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B369E0(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v95 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v88 - v11;
  v102 = type metadata accessor for PBTypedData(0);
  v98 = *(v102 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v102);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B369E0(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v88 - v17;
  v96 = type metadata accessor for PBDateRange(0);
  v93 = *(v96 - 8);
  v19 = *(v93 + 64);
  v20 = MEMORY[0x28223BE20](v96);
  v91 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v97 = &v88 - v22;
  v23 = type metadata accessor for PBHistogramSeries(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v94 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v88 - v27;
  v29 = [a1 valueHistograms];
  sub_251A8223C(0, &qword_27F47A370, 0x277CCDB88);
  v30 = sub_251C71154();

  if (v30 >> 62)
  {
    v31 = sub_251C717F4();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31)
  {
    v32 = v3;
    v33 = v100;
    v34 = *(v32 + *(v100 + 24));
    v35 = sub_251C2C490();
    if (v35)
    {
      v89 = v34;
      v36 = v28;
      v37 = v35;
      v38 = [a1 valueHistograms];
      v39 = sub_251C71154();

      MEMORY[0x28223BE20](v40);
      *(&v88 - 2) = v37;
      *(&v88 - 1) = v32;
      sub_251C4FA60(sub_251B36FA4, (&v88 - 4), v39);
      v42 = v41;

      v43 = v36 + *(v23 + 24);
      sub_251C703A4();
      *v36 = v42;
      v92 = v37;
      v44 = [v37 unitString];
      v45 = sub_251C70F14();
      v47 = v46;

      v36[1] = v45;
      v36[2] = v47;
      v90 = v36;
      v48 = v32 + *(v100 + 28);
      v49 = *v48;
      v50 = *(v48 + 8);
      v51 = *(v100 + 20);
      v52 = sub_251C6FAE4();
      v53 = *(v52 - 8);
      (*(v53 + 16))(v18, v32 + v51, v52);
      (*(v53 + 56))(v18, 0, 1, v52);
      v54 = v97;
      sub_251BFC464(v49, v50, v18);
      sub_251B370AC(v18, &qword_27F478D90, MEMORY[0x277CC88A8]);
      v55 = v101;
      sub_251B37044(v54, v101, type metadata accessor for PBDateRange);
      v56 = v93;
      v57 = *(v93 + 56);
      v58 = v96;
      v57(v55, 0, 1, v96);
      *v14 = 0;
      v14[8] = 1;
      v59 = v102;
      v60 = *(v102 + 20);
      v61 = type metadata accessor for PBTypedData.OneOf_Raw(0);
      v62 = *(v61 - 8);
      v100 = *(v62 + 56);
      v88 = v62 + 56;
      (v100)(&v14[v60], 1, 1, v61);
      v63 = &v14[*(v59 + 24)];
      sub_251C703A4();
      v64 = *(v59 + 28);
      v57(&v14[v64], 1, 1, v58);
      v65 = v89;
      v66 = sub_251B3C450();
      if ((v67 & 0x100) == 0)
      {
        *v14 = v66;
        v14[8] = v67 & 1;
      }

      v68 = v95;
      sub_251B36FC4(v101, v95);
      v69 = v96;
      if ((*(v56 + 48))(v68, 1, v96) == 1)
      {
        sub_251B370AC(v68, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }

      else
      {
        v81 = v65;
        v82 = v91;
        sub_251B37168(v68, v91, type metadata accessor for PBDateRange);
        sub_251B370AC(&v14[v64], qword_2813E6EE8, type metadata accessor for PBDateRange);
        v83 = v82;
        v65 = v81;
        sub_251B37168(v83, &v14[v64], type metadata accessor for PBDateRange);
        v57(&v14[v64], 0, 1, v69);
      }

      sub_251B370AC(v101, qword_2813E6EE8, type metadata accessor for PBDateRange);
      v84 = v90;
      v85 = v94;
      sub_251B37044(v90, v94, type metadata accessor for PBHistogramSeries);
      sub_251B370AC(&v14[v60], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
      sub_251B37168(v85, &v14[v60], type metadata accessor for PBHistogramSeries);
      swift_storeEnumTagMultiPayload();
      (v100)(&v14[v60], 0, 1, v61);
      v86 = [v65 code];

      sub_251B37108(v97, type metadata accessor for PBDateRange);
      if (v86 == 15)
      {
        *v14 = 130;
        v14[8] = 1;
      }

      v87 = v99;
      sub_251B37168(v14, v99, type metadata accessor for PBTypedData);
      (*(v98 + 56))(v87, 0, 1, v102);
      return sub_251B37108(v84, type metadata accessor for PBHistogramSeries);
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v74 = sub_251C70764();
      __swift_project_value_buffer(v74, qword_2813E8130);
      v75 = v92;
      sub_251B37044(v32, v92, type metadata accessor for ClinicalSharingHistogramQuery);
      v76 = sub_251C70744();
      v77 = sub_251C713E4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412290;
        v80 = *&v75[*(v33 + 24)];
        sub_251B37108(v75, type metadata accessor for ClinicalSharingHistogramQuery);
        *(v78 + 4) = v80;
        *v79 = v80;
        _os_log_impl(&dword_251A6C000, v76, v77, "Missing encoding unit for %@", v78, 0xCu);
        sub_251B36EB4(v79);
        MEMORY[0x25308E2B0](v79, -1, -1);
        MEMORY[0x25308E2B0](v78, -1, -1);
      }

      else
      {

        sub_251B37108(v75, type metadata accessor for ClinicalSharingHistogramQuery);
      }

      return (*(v98 + 56))(v99, 1, 1, v102);
    }
  }

  else
  {
    v70 = v99;
    v71 = *(v98 + 56);
    v72 = v102;

    return v71(v70, 1, 1, v72);
  }
}

size_t sub_251B363C8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v56 = a3;
  v62 = a2;
  v63 = type metadata accessor for PBBucket(0);
  v61 = *(v63 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C6FAE4();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  a4[3] = 0;
  a4[4] = 0xE000000000000000;
  v19 = a4 + *(type metadata accessor for PBHistogramSeries.Value(0) + 28);
  sub_251C703A4();
  v51 = v18;
  v20 = [v18 segments];
  sub_251A8223C(0, &qword_27F47A378, 0x277CCDBA0);
  v21 = sub_251C71154();

  if (v21 >> 62)
  {
    goto LABEL_16;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = v12;
  v58 = v11;
  if (v22)
  {
    while (1)
    {
      v64 = v22;
      v65 = MEMORY[0x277D84F90];
      result = sub_251C0BCE4(0, v22 & ~(v22 >> 63), 0);
      if (v64 < 0)
      {
        break;
      }

      v49 = a4;
      v50 = v5;
      v5 = 0;
      v12 = v65;
      v59 = v21;
      v60 = v21 & 0xC000000000000001;
      while (1)
      {
        v24 = v60 ? MEMORY[0x25308D460](v5, v21) : *(v21 + 8 * v5 + 32);
        v25 = v24;
        v26 = &v10[*(v63 + 28)];
        sub_251C703A4();
        v27 = [v25 count];
        if (v27 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v27 > 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        *(v10 + 4) = v27;
        v28 = [v25 quantityRange];
        v29 = [v28 minimum];

        a4 = &off_2796E0000;
        v30 = v62;
        [v29 doubleValueForUnit_];
        v32 = v31;

        *v10 = v32;
        v33 = [v25 quantityRange];
        v34 = [v33 maximum];

        [v34 doubleValueForUnit_];
        v36 = v35;

        *(v10 + 1) = v36;
        v65 = v12;
        v38 = v12[2];
        v37 = v12[3];
        v11 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          sub_251C0BCE4(v37 > 1, v38 + 1, 1);
          v12 = v65;
        }

        ++v5;
        v12[2] = v11;
        sub_251B37168(v10, v12 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v38, type metadata accessor for PBBucket);
        v21 = v59;
        if (v64 == v5)
        {

          a4 = v49;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v22 = sub_251C717F4();
      v57 = v12;
      v58 = v11;
      if (!v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v12 = MEMORY[0x277D84F90];
LABEL_18:
    a4[2] = v12;
    v39 = [v51 dateInterval];
    v40 = v52;
    sub_251C6FA74();

    v41 = v55;
    sub_251C6FAB4();
    (*(v53 + 8))(v40, v54);
    v42 = *(*v56 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v43 = sub_251C6FF94();
    v44 = [v42 stringFromDate_];

    v45 = sub_251C70F14();
    v47 = v46;

    result = (v57[1])(v41, v58);
    *a4 = v45;
    a4[1] = v47;
  }

  return result;
}

void sub_251B36914(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = MEMORY[0x277CBCD88];
    sub_251B36B54(255, &qword_27F47A338, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251B36BDC(&qword_27F47A348, &qword_27F47A338, v5);
    v6 = sub_251C70784();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251B369E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251B36A34(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70014() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C6FC94() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + v10);
  v14 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_251BBF7D4(a1, a2, v11, v12, v2 + v6, v2 + v9, v13, v14);
}

void sub_251B36B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A8223C(255, &qword_27F47A340, 0x277CCDB90);
    v7 = sub_251A82284();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251B36BDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251B36B54(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B36C20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingHistogramQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251B35964(a1, a2);
}

uint64_t sub_251B36C94(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for ClinicalSharingHistogramQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = *(v0 + v3 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251B36DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingHistogramQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251BEFE20(a1, 0, a2);
}

unint64_t sub_251B36E40()
{
  result = qword_27F47A368;
  if (!qword_27F47A368)
  {
    sub_251B36914(255, &qword_27F47A350, type metadata accessor for ClinicalSharingQueryOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A368);
  }

  return result;
}

uint64_t sub_251B36EB4(uint64_t a1)
{
  sub_251B36F3C(0, &qword_2813E1D10, &qword_2813E1D20, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B36F3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251B36FC4(uint64_t a1, uint64_t a2)
{
  sub_251B369E0(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B37044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B370AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251B369E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B37108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B37168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CatalogEntry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CatalogEntry.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CatalogEntry() + 24);
  v4 = sub_251C6FE64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CatalogEntry()
{
  result = qword_27F47A3A8;
  if (!qword_27F47A3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CatalogEntry.bytes.getter()
{
  v1 = (v0 + *(type metadata accessor for CatalogEntry() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CatalogEntry.init(id:version:url:bytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for CatalogEntry();
  v12 = *(v11 + 24);
  v13 = sub_251C6FE64();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a4, v13);
  v15 = &a7[*(v11 + 28)];
  *v15 = a5;
  v15[8] = a6 & 1;
  return result;
}

uint64_t sub_251B373A0()
{
  v1 = 25705;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x7365747962;
  }

  if (*v0)
  {
    v1 = 118;
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

uint64_t sub_251B373F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251B37E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251B3742C(uint64_t a1)
{
  v2 = sub_251B376B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B37468(uint64_t a1)
{
  v2 = sub_251B376B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CatalogEntry.encode(to:)(void *a1)
{
  v3 = v1;
  sub_251B37AF0(0, &qword_27F47A380, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B376B0();
  sub_251C71B14();
  v12 = *v3;
  v13 = v3[1];
  v21[15] = 0;
  sub_251C71934();
  if (!v2)
  {
    v14 = v3[2];
    v21[14] = 1;
    sub_251C71954();
    v16 = type metadata accessor for CatalogEntry();
    v17 = *(v16 + 24);
    v21[13] = 2;
    sub_251C6FE64();
    sub_251B37B54(&qword_27F47A390);
    sub_251C71964();
    v18 = v3 + *(v16 + 28);
    v19 = *v18;
    v20 = v18[8];
    v21[12] = 3;
    sub_251C71914();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_251B376B0()
{
  result = qword_27F47A388;
  if (!qword_27F47A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A388);
  }

  return result;
}

uint64_t CatalogEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_251C6FE64();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B37AF0(0, &qword_27F47A398, MEMORY[0x277D844C8]);
  v30 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  v11 = type metadata accessor for CatalogEntry();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B376B0();
  v29 = v10;
  v16 = v31;
  sub_251C71B04();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v17 = v28;
  v35 = 0;
  *v14 = sub_251C718B4();
  v14[1] = v18;
  v25[1] = v18;
  v34 = 1;
  v14[2] = sub_251C718C4();
  v33 = 2;
  sub_251B37B54(&qword_27F47A3A0);
  sub_251C718D4();
  (*(v27 + 32))(v14 + *(v11 + 24), v6, v3);
  v32 = 3;
  v19 = v14;
  v20 = sub_251C71894();
  v22 = v21;
  (*(v17 + 8))(v29, v30);
  v23 = v19 + *(v11 + 28);
  *v23 = v20;
  *(v23 + 8) = v22 & 1;
  sub_251B37B98(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_251B37BFC(v19);
}

void sub_251B37AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B376B0();
    v7 = a3(a1, &type metadata for CatalogEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B37B54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251C6FE64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B37B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B37BFC(uint64_t a1)
{
  v2 = type metadata accessor for CatalogEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B37CB0()
{
  sub_251C6FE64();
  if (v0 <= 0x3F)
  {
    sub_251B167A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251B37D60()
{
  result = qword_27F47A3B8;
  if (!qword_27F47A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A3B8);
  }

  return result;
}

unint64_t sub_251B37DB8()
{
  result = qword_27F47A3C0;
  if (!qword_27F47A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A3C0);
  }

  return result;
}

unint64_t sub_251B37E10()
{
  result = qword_27F47A3C8;
  if (!qword_27F47A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A3C8);
  }

  return result;
}

uint64_t sub_251B37E64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 118 && a2 == 0xE100000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_251C719D4();

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

id sub_251B37FB0()
{
  v0 = [swift_getObjCClassFromMetadata() ephemeralSessionConfiguration];
  sub_251B3810C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  v2 = MEMORY[0x277D837D0];
  sub_251C71644();
  v3 = HDHealthRecordsPublicUserAgentString();
  v4 = sub_251C70F14();
  v6 = v5;

  *(inited + 96) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = v6;
  sub_251C4C024(inited);
  swift_setDeallocating();
  sub_251B381C8(inited + 32);
  v7 = sub_251C70E44();

  [v0 setHTTPAdditionalHeaders_];

  [v0 set:*MEMORY[0x277CCE3A8] sourceApplicationBundleIdentifier:?];
  return v0;
}

void sub_251B3810C()
{
  if (!qword_2813E1C48)
  {
    sub_251B38164();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C48);
    }
  }
}

void sub_251B38164()
{
  if (!qword_2813E1CE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1CE0);
    }
  }
}

uint64_t sub_251B381C8(uint64_t a1)
{
  sub_251B38164();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B38224@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v182 = a3;
  v201 = a2;
  v199 = a4;
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v183 = &v175 - v7;
  sub_251B3B6FC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v181 = &v175 - v10;
  v11 = sub_251C70014();
  v197 = *(v11 - 8);
  v198 = v11;
  v12 = *(v197 + 64);
  MEMORY[0x28223BE20](v11);
  v196 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_251C701E4();
  v195 = *(v188 - 8);
  v14 = *(v195 + 64);
  MEMORY[0x28223BE20](v188);
  v194 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for PBHKConcept(0);
  v16 = *(v193 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v193);
  v187 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PBGeneralMedication(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v179 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v175 - v25);
  MEMORY[0x28223BE20](v24);
  v177 = &v175 - v27;
  v28 = type metadata accessor for PBHKMedicationRecord(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v180 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v175 - v33;
  v35 = *a1;
  *v34 = 0;
  *(v34 + 1) = 0xE000000000000000;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0xE000000000000000;
  *(v34 + 4) = 0;
  v34[40] = 1;
  *(v34 + 6) = 0;
  *(v34 + 7) = 0xE000000000000000;
  *(v34 + 8) = 0;
  *(v34 + 9) = 0xE000000000000000;
  v34[80] = 0;
  v36 = MEMORY[0x277D84F90];
  *(v34 + 11) = MEMORY[0x277D84F90];
  *(v34 + 12) = v36;
  v37 = &v175 + *(v29 + 56) - v33;
  sub_251C703A4();
  v186 = *(v29 + 60);
  v178 = v20;
  v191 = *(v20 + 56);
  v192 = v20 + 56;
  v191(&v34[v186], 1, 1, v19);
  v190 = [v35 medication];
  v189 = [v35 earliestDosageDate];
  v38 = [v35 dosages];
  if (v38)
  {
    v39 = v38;
    sub_251A8223C(0, &qword_27F47A3D0, 0x277CCD648);
    v176 = sub_251C71154();
  }

  else
  {
    v176 = 0;
  }

  v175 = [v35 status];
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v26[2] = v36;
  v26[3] = 0;
  v26[4] = 0xE000000000000000;
  v26[5] = v36;
  v40 = v26 + v19[8];
  sub_251C703A4();
  v41 = v19[9];
  v42 = *(v16 + 56);
  v43 = v193;
  v42(v26 + v41, 1, 1, v193);
  v200 = v19;
  v44 = v19[10];
  v42(v26 + v44, 1, 1, v43);
  v45 = v187;
  v46 = v201;
  sub_251AF0ACC(v190, 1, v187);
  sub_251B393FC(v26 + v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251B3B750(v45, v26 + v41, type metadata accessor for PBHKConcept);
  v185 = v16 + 56;
  v184 = v42;
  v47 = (v42)(v26 + v41, 0, 1, v43);
  v48 = v189;
  if (v189)
  {
    v49 = *v46;
    v51 = v194;
    v50 = v195;
    v52 = v188;
    (*(v195 + 16))(v194, *v46 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v188);
    v53 = v48;
    v54 = sub_251C70114();
    (*(v50 + 8))(v51, v52);
    v55 = [v53 adjustedDateForCalendar_];

    v56 = v196;
    sub_251C6FFE4();

    v57 = *(v49 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v58 = sub_251C6FF94();
    v59 = [v57 stringFromDate_];

    v60 = sub_251C70F14();
    v62 = v61;

    v47 = (*(v197 + 8))(v56, v198);
    *v26 = v60;
    v26[1] = v62;
  }

  v63 = v188;
  v64 = v176;
  if (v176)
  {
    MEMORY[0x28223BE20](v47);
    *(&v175 - 2) = v201;
    sub_251C4FAB4(sub_251B3B6CC, (&v175 - 4), v64);
    v26[2] = v65;
  }

  if (v175)
  {
    v66 = v175;
    v67 = v187;
    sub_251AF0ACC(v66, 1, v187);

    sub_251B393FC(v26 + v44, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v67, v26 + v44, type metadata accessor for PBHKConcept);
    v184(v26 + v44, 0, 1, v193);
  }

  else
  {
  }

  v68 = v177;
  sub_251B3B750(v26, v177, type metadata accessor for PBGeneralMedication);
  v69 = v186;
  sub_251B393FC(&v34[v186], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v68, &v34[v69], type metadata accessor for PBGeneralMedication);
  v191(&v34[v69], 0, 1, v200);
  v70 = [v35 asserter];
  if (v70)
  {
    v71 = v70;
    v72 = sub_251C70F14();
    v74 = v73;

    *v34 = v72;
    *(v34 + 1) = v74;
  }

  v75 = [v35 assertionDate];
  v76 = v201;
  if (v75)
  {
    v77 = v75;
    v78 = *v201;
    v80 = v194;
    v79 = v195;
    (*(v195 + 16))(v194, *v201 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v63);
    v81 = sub_251C70114();
    (*(v79 + 8))(v80, v63);
    v82 = [v77 adjustedDateForCalendar_];

    v83 = v196;
    sub_251C6FFE4();

    v84 = *(v78 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v85 = sub_251C6FF94();
    v86 = [v84 stringFromDate_];

    v87 = sub_251C70F14();
    v89 = v88;

    v90 = v83;
    v76 = v201;
    (*(v197 + 8))(v90, v198);
    *(v34 + 2) = v87;
    *(v34 + 3) = v89;
  }

  *(v34 + 4) = sub_251BC10B8([v35 assertionType]);
  v34[40] = v91 & 1;
  v92 = [v35 effectiveStartDate];
  if (v92)
  {
    v93 = v92;
    v94 = *v76;
    v96 = v194;
    v95 = v195;
    (*(v195 + 16))(v194, v94 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v63);
    v97 = sub_251C70114();
    (*(v95 + 8))(v96, v63);
    v98 = [v93 adjustedDateForCalendar_];

    v99 = v196;
    sub_251C6FFE4();

    v100 = *(v94 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v101 = sub_251C6FF94();
    v102 = [v100 stringFromDate_];

    v103 = sub_251C70F14();
    v105 = v104;

    v106 = v99;
    v76 = v201;
    (*(v197 + 8))(v106, v198);
    *(v34 + 6) = v103;
    *(v34 + 7) = v105;
  }

  v107 = [v35 effectiveEndDate];
  if (v107)
  {
    v108 = v107;
    v109 = *v76;
    v111 = v194;
    v110 = v195;
    (*(v195 + 16))(v194, v109 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v63);
    v112 = sub_251C70114();
    (*(v110 + 8))(v111, v63);
    v113 = [v108 adjustedDateForCalendar_];

    v114 = v196;
    sub_251C6FFE4();

    v115 = *(v109 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v116 = sub_251C6FF94();
    v117 = [v115 stringFromDate_];

    v118 = sub_251C70F14();
    v120 = v119;

    v121 = v114;
    v76 = v201;
    (*(v197 + 8))(v121, v198);
    *(v34 + 8) = v118;
    *(v34 + 9) = v120;
  }

  v34[80] = [v35 notTaken];
  v122 = [v35 reasonForUse];
  if (v122)
  {
    v123 = v122;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v124 = sub_251C71154();

    MEMORY[0x28223BE20](v125);
    *(&v175 - 2) = v76;
    sub_251C4FA0C(sub_251B3B7B8, (&v175 - 4), v124);
    v127 = v126;

    *(v34 + 11) = v127;
  }

  v128 = v179;
  v129 = v200;
  v130 = [v35 reasonsNotTaken];
  if (v130)
  {
    v131 = v130;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v132 = sub_251C71154();

    MEMORY[0x28223BE20](v133);
    *(&v175 - 2) = v76;
    sub_251C4FA0C(sub_251B3B7B8, (&v175 - 4), v132);
    v135 = v134;

    *(v34 + 12) = v135;
  }

  v136 = [v35 medicationCodingCollection];
  v137 = sub_251C22DE8();

  v138 = v181;
  sub_251B39458(&v34[v69], v181);
  v139 = *(v178 + 48);
  if (v139(v138, 1, v129) == 1)
  {
    *v128 = 0;
    *(v128 + 1) = 0xE000000000000000;
    v140 = MEMORY[0x277D84F90];
    *(v128 + 2) = MEMORY[0x277D84F90];
    *(v128 + 3) = 0;
    *(v128 + 4) = 0xE000000000000000;
    *(v128 + 5) = v140;
    v141 = &v128[v129[8]];
    sub_251C703A4();
    v142 = &v128[v129[9]];
    v143 = v193;
    v144 = v184;
    v184(v142, 1, 1, v193);
    v144(&v128[v200[10]], 1, 1, v143);
    v129 = v200;
    v145 = v139(v138, 1, v200);
    v69 = v186;
    if (v145 != 1)
    {
      sub_251B393FC(v138, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
    }
  }

  else
  {
    sub_251B3B750(v138, v128, type metadata accessor for PBGeneralMedication);
  }

  v146 = *(v128 + 5);

  *(v128 + 5) = v137;
  sub_251B393FC(&v34[v69], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v128, &v34[v69], type metadata accessor for PBGeneralMedication);
  v191(&v34[v69], 0, 1, v129);
  v147 = v199;
  sub_251AF11B4(v35, v182, v199);
  v148 = v180;
  sub_251B394D8(v34, v180, type metadata accessor for PBHKMedicationRecord);
  v149 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v150 = *(v147 + v149);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152 = *(v147 + v149);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v153 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v154 = *(v153 + 48);
    v155 = *(v153 + 52);
    swift_allocObject();
    v156 = sub_251BB2A8C(v152);

    *(v199 + v149) = v156;
    v152 = v156;
  }

  v157 = v148;
  v158 = v183;
  sub_251B3B750(v157, v183, type metadata accessor for PBHKMedicationRecord);
  v159 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v159 - 8) + 56))(v158, 0, 1, v159);
  v160 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v158, &v152[v160]);
  swift_endAccess();
  v161 = sub_251C6CC54();
  v163 = v162;
  v164 = v199;
  v165 = *(v199 + v149);
  v166 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *(v164 + v149);
  if ((v166 & 1) == 0)
  {
    v168 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v169 = *(v168 + 48);
    v170 = *(v168 + 52);
    swift_allocObject();
    v171 = sub_251BB2A8C(v167);

    *(v199 + v149) = v171;
    v167 = v171;
  }

  v172 = (v167 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v173 = v172[1];
  *v172 = v161;
  v172[1] = v163;

  return sub_251B3B66C(v34, type metadata accessor for PBHKMedicationRecord);
}

uint64_t sub_251B393FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251B3B6FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B39458(uint64_t a1, uint64_t a2)
{
  sub_251B3B6FC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B394D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B39540@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a3;
  v171 = a2;
  v156 = a4;
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v145 - v7;
  v8 = sub_251C70014();
  v163 = *(v8 - 8);
  v164 = v8;
  v9 = *(v163 + 64);
  MEMORY[0x28223BE20](v8);
  v162 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C701E4();
  v160 = *(v11 - 8);
  v161 = v11;
  v12 = *(v160 + 64);
  MEMORY[0x28223BE20](v11);
  v159 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKConcept(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v169 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PBGeneralMedication(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v154 = &v145 - v24;
  v25 = type metadata accessor for PBHKMedicationOrder(0);
  v26 = (v25 - 8);
  v27 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v147 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v145 - v30;
  v32 = *a1;
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  *(v31 + 4) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = 0xE000000000000000;
  v33 = MEMORY[0x277D84F90];
  *(v31 + 5) = MEMORY[0x277D84F90];
  *(v31 + 6) = 0;
  *(v31 + 7) = 0xE000000000000000;
  v34 = &v145 + v26[11] - v30;
  sub_251C703A4();
  v35 = *(v19 + 56);
  v152 = v26[12];
  v167 = v18;
  v155 = v19 + 56;
  v153 = v35;
  v35(&v31[v152], 1, 1, v18);
  v36 = *(v15 + 56);
  v146 = v26[13];
  v36(&v31[v146], 1, 1, v14);
  v37 = &v31[v26[14]];
  v170 = v15 + 56;
  v168 = v36;
  v36(v37, 1, 1, v14);
  v166 = [v32 medication];
  v165 = [v32 earliestDosageDate];
  v38 = [v32 dosages];
  if (v38)
  {
    v39 = v38;
    sub_251A8223C(0, &qword_27F47A3D0, 0x277CCD648);
    v151 = sub_251C71154();
  }

  else
  {
    v151 = 0;
  }

  v150 = [v32 status];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v23[2] = v33;
  v23[3] = 0;
  v23[4] = 0xE000000000000000;
  v23[5] = v33;
  v40 = v167;
  v41 = v23 + *(v167 + 32);
  sub_251C703A4();
  v42 = *(v40 + 36);
  v43 = v168;
  v168(v23 + v42, 1, 1, v14);
  v44 = *(v40 + 40);
  v43(v23 + v44, 1, 1, v14);
  v45 = v169;
  v46 = v171;
  sub_251AF0ACC(v166, 1, v169);
  sub_251B393FC(v23 + v42, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251B3B750(v45, v23 + v42, type metadata accessor for PBHKConcept);
  v47 = (v43)(v23 + v42, 0, 1, v14);
  v157 = v14;
  v158 = v32;
  v48 = v165;
  if (v165)
  {
    v49 = *v46;
    v50 = v159;
    v51 = v160;
    v52 = v161;
    (*(v160 + 16))(v159, v49 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v161);
    v53 = v48;
    v54 = sub_251C70114();
    (*(v51 + 8))(v50, v52);
    v55 = [v53 adjustedDateForCalendar_];

    v32 = v158;
    v56 = v162;
    sub_251C6FFE4();

    v57 = *(v49 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v58 = sub_251C6FF94();
    v59 = [v57 stringFromDate_];

    v60 = sub_251C70F14();
    v62 = v61;

    v63 = v56;
    v14 = v157;
    v47 = (*(v163 + 8))(v63, v164);
    *v23 = v60;
    v23[1] = v62;
  }

  v64 = v151;
  if (v151)
  {
    MEMORY[0x28223BE20](v47);
    *(&v145 - 2) = v171;
    sub_251C4FAB4(sub_251B3B7D0, (&v145 - 4), v64);
    v23[2] = v65;
  }

  if (v150)
  {
    v66 = v150;
    v67 = v169;
    sub_251AF0ACC(v66, 1, v169);

    sub_251B393FC(v23 + v44, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v67, v23 + v44, type metadata accessor for PBHKConcept);
    v168(v23 + v44, 0, 1, v14);
  }

  else
  {
  }

  v68 = v154;
  sub_251B3B750(v23, v154, type metadata accessor for PBGeneralMedication);
  v69 = v152;
  sub_251B393FC(&v31[v152], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v68, &v31[v69], type metadata accessor for PBGeneralMedication);
  v153(&v31[v69], 0, 1, v167);
  v70 = [v32 endedDate];
  v71 = v156;
  v72 = v171;
  if (v70)
  {
    v73 = v70;
    v74 = *v171;
    v75 = v159;
    v76 = v160;
    v77 = v161;
    (*(v160 + 16))(v159, *v171 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v161);
    v78 = sub_251C70114();
    v79 = v75;
    v32 = v158;
    (*(v76 + 8))(v79, v77);
    v80 = [v73 adjustedDateForCalendar_];

    v81 = v162;
    sub_251C6FFE4();

    v82 = *(v74 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v83 = sub_251C6FF94();
    v84 = [v82 stringFromDate_];

    v85 = sub_251C70F14();
    v87 = v86;

    (*(v163 + 8))(v81, v164);
    *v31 = v85;
    *(v31 + 1) = v87;
  }

  result = [v32 numberOfFills];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *(v31 + 4) = result;
  v89 = [v32 prescriber];
  if (v89)
  {
    v90 = v89;
    v91 = sub_251C70F14();
    v93 = v92;

    *(v31 + 3) = v91;
    *(v31 + 4) = v93;
  }

  v94 = [v32 reason];
  if (v94)
  {
    v95 = v94;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v96 = sub_251C71154();

    MEMORY[0x28223BE20](v97);
    *(&v145 - 2) = v72;
    sub_251C4FA0C(sub_251B18000, (&v145 - 4), v96);
    v99 = v98;

    *(v31 + 5) = v99;
  }

  v100 = [v32 reasonEnded];
  if (v100)
  {
    v101 = v169;
    v102 = v100;
    sub_251AF0ACC(v100, 1, v169);

    v103 = v146;
    sub_251B393FC(&v31[v146], qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v101, &v31[v103], type metadata accessor for PBHKConcept);
    v168(&v31[v103], 0, 1, v157);
  }

  v104 = [v32 writtenDate];
  if (v104)
  {
    v105 = v104;
    v106 = *v72;
    v108 = v159;
    v107 = v160;
    v109 = v161;
    (*(v160 + 16))(v159, *v72 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v161);
    v110 = sub_251C70114();
    v111 = v108;
    v32 = v158;
    (*(v107 + 8))(v111, v109);
    v112 = [v105 adjustedDateForCalendar_];

    v113 = v162;
    sub_251C6FFE4();

    v114 = *(v106 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v115 = sub_251C6FF94();
    v116 = [v114 stringFromDate_];

    v117 = sub_251C70F14();
    v119 = v118;

    (*(v163 + 8))(v113, v164);
    *(v31 + 6) = v117;
    *(v31 + 7) = v119;
  }

  sub_251AF11B4(v32, v148, v71);
  v120 = v147;
  sub_251B394D8(v31, v147, type metadata accessor for PBHKMedicationOrder);
  v121 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v122 = *(v71 + v121);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v124 = *(v71 + v121);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v125 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v126 = *(v125 + 48);
    v127 = *(v125 + 52);
    swift_allocObject();
    v128 = sub_251BB2A8C(v124);

    *(v71 + v121) = v128;
    v124 = v128;
  }

  v129 = v120;
  v130 = v149;
  sub_251B3B750(v129, v149, type metadata accessor for PBHKMedicationOrder);
  v131 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
  v132 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v130, &v124[v132]);
  swift_endAccess();
  v133 = sub_251C6CC54();
  v135 = v134;
  v136 = *(v71 + v121);
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *(v71 + v121);
  if ((v137 & 1) == 0)
  {
    v139 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v140 = *(v139 + 48);
    v141 = *(v139 + 52);
    swift_allocObject();
    v142 = sub_251BB2A8C(v138);

    *(v71 + v121) = v142;
    v138 = v142;
  }

  v143 = (v138 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v144 = v143[1];
  *v143 = v133;
  v143[1] = v135;

  return sub_251B3B66C(v31, type metadata accessor for PBHKMedicationOrder);
}

uint64_t sub_251B3A3C4@<X0>(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a3;
  v153 = a2;
  v140 = a4;
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v139 = &v130 - v7;
  v8 = sub_251C70014();
  v149 = *(v8 - 8);
  v150 = v8;
  v9 = *(v149 + 64);
  MEMORY[0x28223BE20](v8);
  v148 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C701E4();
  v146 = *(v11 - 8);
  v147 = v11;
  v12 = *(v146 + 64);
  MEMORY[0x28223BE20](v11);
  v145 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for PBHKConcept(0);
  v152 = *(v144 - 8);
  v14 = *(v152 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBGeneralMedication(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v135 = &v130 - v22;
  v23 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v137 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = (&v130 - v28);
  v30 = *a1;
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v29[2] = 0;
  v29[3] = 0xE000000000000000;
  v31 = &v130 + v24[8] - v28;
  sub_251C703A4();
  v32 = *(v17 + 56);
  v133 = v24[9];
  v136 = v17 + 56;
  v134 = v32;
  v32(v29 + v133, 1, 1, v16);
  v33 = v24[10];
  v34 = type metadata accessor for PBQuantity(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v29 + v33, 1, 1, v34);
  v35(v29 + v24[11], 1, 1, v34);
  v151 = [v30 medication];
  v142 = [v30 earliestDosageDate];
  v154 = v30;
  v36 = [v30 dosages];
  if (v36)
  {
    v37 = v36;
    sub_251A8223C(0, &qword_27F47A3D0, 0x277CCD648);
    v141 = sub_251C71154();
  }

  else
  {
    v141 = 0;
  }

  v38 = [v154 status];
  v39 = MEMORY[0x277D84F90];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v21[2] = v39;
  v21[3] = 0;
  v21[4] = 0xE000000000000000;
  v21[5] = v39;
  v40 = v21 + v16[8];
  sub_251C703A4();
  v41 = v16[9];
  v43 = v152 + 56;
  v42 = *(v152 + 56);
  v44 = v144;
  v42(v21 + v41, 1, 1, v144);
  v132 = v16[10];
  v42(v21 + v132, 1, 1, v44);
  v45 = v143;
  v46 = v153;
  sub_251AF0ACC(v151, 1, v143);
  sub_251B393FC(v21 + v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251B3B750(v45, v21 + v41, type metadata accessor for PBHKConcept);
  v47 = (v42)(v21 + v41, 0, 1, v44);
  v48 = v142;
  if (v142)
  {
    v49 = *v153;
    v152 = v43;
    v50 = v145;
    v51 = v146;
    v52 = *(v146 + 16);
    v131 = v16;
    v53 = v147;
    v52(v145, v49 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v147);
    v54 = v48;
    v55 = sub_251C70114();
    (*(v51 + 8))(v50, v53);
    v56 = v38;
    v57 = [v54 adjustedDateForCalendar_];

    v58 = v148;
    sub_251C6FFE4();

    v59 = *(v49 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v60 = sub_251C6FF94();
    v61 = [v59 stringFromDate_];

    v62 = sub_251C70F14();
    v64 = v63;

    v46 = v153;
    v65 = v58;
    v16 = v131;
    v47 = (*(v149 + 8))(v65, v150);
    *v21 = v62;
    v21[1] = v64;
    v48 = v142;
    v38 = v56;
  }

  v66 = v141;
  if (v141)
  {
    MEMORY[0x28223BE20](v47);
    *(&v130 - 2) = v46;
    sub_251C4FAB4(sub_251B3B7D0, (&v130 - 4), v66);
    v21[2] = v67;
  }

  if (v38)
  {
    v68 = v38;
    v69 = v143;
    sub_251AF0ACC(v68, 1, v143);

    v70 = v132;
    sub_251B393FC(v21 + v132, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v69, v21 + v70, type metadata accessor for PBHKConcept);
    v42(v21 + v70, 0, 1, v144);
  }

  else
  {
  }

  v71 = v140;
  v72 = v135;
  sub_251B3B750(v21, v135, type metadata accessor for PBGeneralMedication);
  v73 = v133;
  sub_251B393FC(v29 + v133, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v72, v29 + v73, type metadata accessor for PBGeneralMedication);
  v134(v29 + v73, 0, 1, v16);
  v74 = [v154 handOverDate];
  if (v74)
  {
    v75 = v74;
    v76 = *v153;
    v78 = v145;
    v77 = v146;
    v79 = v147;
    (*(v146 + 16))(v145, *v153 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v147);
    v80 = sub_251C70114();
    (*(v77 + 8))(v78, v79);
    v81 = [v75 adjustedDateForCalendar_];

    v82 = v148;
    sub_251C6FFE4();

    v83 = *(v76 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v84 = sub_251C6FF94();
    v85 = [v83 stringFromDate_];

    v86 = sub_251C70F14();
    v88 = v87;

    (*(v149 + 8))(v82, v150);
    *v29 = v86;
    v29[1] = v88;
  }

  v89 = [v154 preparationDate];
  if (v89)
  {
    v90 = v89;
    v91 = *v153;
    v93 = v145;
    v92 = v146;
    v94 = v147;
    (*(v146 + 16))(v145, *v153 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v147);
    v95 = sub_251C70114();
    (*(v92 + 8))(v93, v94);
    v96 = [v90 adjustedDateForCalendar_];

    v97 = v148;
    sub_251C6FFE4();

    v98 = *(v91 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v99 = sub_251C6FF94();
    v100 = [v98 stringFromDate_];

    v101 = sub_251C70F14();
    v103 = v102;

    (*(v149 + 8))(v97, v150);
    v29[2] = v101;
    v29[3] = v103;
  }

  sub_251AF11B4(v154, v138, v71);
  v104 = v137;
  sub_251B394D8(v29, v137, type metadata accessor for PBHKMedicationDispenseRecord);
  v105 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v106 = *(v71 + v105);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v71 + v105);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v109 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    swift_allocObject();
    v112 = sub_251BB2A8C(v108);

    *(v71 + v105) = v112;
    v108 = v112;
  }

  v113 = v104;
  v114 = v139;
  sub_251B3B750(v113, v139, type metadata accessor for PBHKMedicationDispenseRecord);
  v115 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  v116 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v114, &v108[v116]);
  swift_endAccess();
  v117 = sub_251C6CC54();
  v119 = v118;
  v120 = *(v71 + v105);
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *(v71 + v105);
  if ((v121 & 1) == 0)
  {
    v123 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v124 = *(v123 + 48);
    v125 = *(v123 + 52);
    swift_allocObject();
    v126 = sub_251BB2A8C(v122);

    *(v71 + v105) = v126;
    v122 = v126;
  }

  v127 = (v122 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v128 = v127[1];
  *v127 = v117;
  v127[1] = v119;

  return sub_251B3B66C(v29, type metadata accessor for PBHKMedicationDispenseRecord);
}

id sub_251B3B08C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_251C701E4();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B3B6FC(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = type metadata accessor for PBDateRange(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v56 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v19 = type metadata accessor for PBMedicationDosage(0);
  v20 = a2 + *(v19 + 20);
  sub_251C703A4();
  v21 = *(v16 + 56);
  v54 = *(v19 + 24);
  v55 = v21;
  v57 = v15;
  v21(a2 + v54, 1, 1, v15);
  v22 = [a1 instruction];
  if (v22)
  {
    v23 = v22;
    v24 = sub_251C70F14();
    v26 = v25;

    *a2 = v24;
    a2[1] = v26;
  }

  result = [a1 timingPeriod];
  if (result)
  {
    v28 = result;
    v29 = [result startDate];
    v58 = v14;
    v52 = v2;
    if (v29)
    {
      v30 = v29;
      v31 = v59;
      v32 = v60;
      (*(v59 + 16))(v8, *v2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v60);
      v33 = sub_251C70114();
      v34 = v58;
      (*(v31 + 8))(v8, v32);
      v35 = [v30 adjustedDateForCalendar_];

      sub_251C6FFE4();
      v36 = sub_251C70014();
      (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
    }

    else
    {
      v37 = sub_251C70014();
      (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
    }

    v38 = [v28 endDate];
    if (v38)
    {
      v39 = v38;
      v41 = v59;
      v40 = v60;
      (*(v59 + 16))(v8, *v52 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v60);
      v42 = sub_251C70114();
      (*(v41 + 8))(v8, v40);
      v43 = [v39 &selRef_quantityRange + 6];

      v44 = v53;
      sub_251C6FFE4();

      v45 = 0;
    }

    else
    {
      v45 = 1;
      v44 = v53;
    }

    v46 = sub_251C70014();
    (*(*(v46 - 8) + 56))(v44, v45, 1, v46);
    v47 = v56;
    v48 = v58;
    sub_251C15BE4(v58, v44);

    v49 = MEMORY[0x277CC9578];
    sub_251B393FC(v44, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251B393FC(v48, &qword_2813E7500, v49);
    v50 = v54;
    sub_251B393FC(a2 + v54, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251B3B750(v47, a2 + v50, type metadata accessor for PBDateRange);
    return v55(a2 + v50, 0, 1, v57);
  }

  return result;
}

uint64_t sub_251B3B5EC(uint64_t a1, uint64_t a2)
{
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B3B66C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B3B6FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251B3B750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B3B7E8()
{
  v1 = v0;
  sub_251B3C340();
  inited = swift_initStackObject();
  *(inited + 32) = 0x746E6569746170;
  *(inited + 16) = xmmword_251C74800;
  *(inited + 40) = 0xE700000000000000;
  v20 = *v1;
  *(inited + 48) = v20;
  sub_251B3C398(&v20, &v19);
  v3 = sub_251C4BEF8(inited);
  swift_setDeallocating();
  sub_251B3C3F4(inited + 32);
  v19 = v3;
  v4 = *(v1 + 5);
  if (v4)
  {
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);

    sub_251AC7024(v5, v4, 1734431845, 0xE400000000000000);
  }

  v7 = *(v1 + 3);
  if (v7)
  {
    v8 = *(v1 + 2);
    v9 = *(v1 + 3);

    sub_251AC7024(v8, v7, 0x656372756F736572, 0xEA00000000004449);
  }

  v10 = *(v1 + 9);
  if (v10)
  {
    v11 = *(v1 + 8);
    v12 = *(v1 + 9);

    sub_251AC7024(v11, v10, 0x44494C44746F6F72, 0xE800000000000000);
  }

  v13 = *(v1 + 7);
  if (v13)
  {
    v14 = *(v1 + 6);
    v15 = v13;
  }

  else
  {
    v15 = 0xE100000000000000;
    v14 = 45;
  }

  v16 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_251ACCFD8(v14, v15, 0xD000000000000015, 0x8000000251C89B90, isUniquelyReferenced_nonNull_native);
  return v16;
}

uint64_t sub_251B3B994()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_251B3B9C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_251B3B9F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_251B3BA2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_251B3BA88(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251B3BCD4(v13, v14) & 1;
}

unint64_t sub_251B3BAF0()
{
  v1 = v0;
  sub_251B3C340();
  inited = swift_initStackObject();
  *(inited + 32) = 0x746E6569746170;
  *(inited + 16) = xmmword_251C74800;
  *(inited + 40) = 0xE700000000000000;
  v17 = *v1;
  *(inited + 48) = v17;
  sub_251B3C398(&v17, &v16);
  v3 = sub_251C4BEF8(inited);
  swift_setDeallocating();
  sub_251B3C3F4(inited + 32);
  v16 = v3;
  v4 = *(v1 + 5);
  if (v4)
  {
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);

    sub_251AC7024(v5, v4, 1734431845, 0xE400000000000000);
  }

  v7 = *(v1 + 3);
  if (v7)
  {
    v8 = *(v1 + 2);
    v9 = *(v1 + 3);

    sub_251AC7024(v8, v7, 0x656372756F736572, 0xEA00000000004449);
  }

  v10 = *(v1 + 7);
  if (v10)
  {
    v11 = *(v1 + 6);
    v12 = v10;
  }

  else
  {
    v12 = 0xE100000000000000;
    v11 = 45;
  }

  v13 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_251ACCFD8(v11, v12, 0xD000000000000015, 0x8000000251C89B90, isUniquelyReferenced_nonNull_native);
  return v13;
}

uint64_t sub_251B3BC78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_251B3BE64(v9, v10) & 1;
}

uint64_t sub_251B3BCD4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (!v11 || (a1[6] != a2[6] || v10 != v11) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[9];
  v13 = a2[9];
  if (v12)
  {
    if (!v13 || (a1[8] != a2[8] || v12 != v13) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  sub_251B1B1EC();
  v14 = a1[10];
  v15 = a2[10];
  if (sub_251C71534())
  {
    v16 = a1[11];
    v17 = a2[11];
    if (sub_251C71534())
    {
      v18 = a1[12];
      v19 = a2[12];
      if (sub_251C71534())
      {
        v20 = a1[13];
        v21 = a2[13];
        return sub_251C71534() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_251B3BE64(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (!v11 || (a1[6] != a2[6] || v10 != v11) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_251B1B1EC();
  v12 = a1[8];
  v13 = a2[8];
  if (sub_251C71534())
  {
    v14 = a1[9];
    v15 = a2[9];
    if (sub_251C71534())
    {
      v16 = a1[10];
      v17 = a2[10];
      if (sub_251C71534())
      {
        v18 = a1[11];
        v19 = a2[11];
        return sub_251C71534() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_251B3BFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_251BC0450(*MEMORY[0x277D12300]);
  if (v4)
  {
  }

  else
  {
    v10 = v9;
    v11 = sub_251A828A0(0xD000000000000015, 0x8000000251C8BA70);
    v12 = sub_251A828A0(0xD000000000000017, 0x8000000251C8BA90);
    v13 = sub_251A828A0(0xD000000000000017, 0x8000000251C8BAB0);
    v35 = sub_251A828A0(0xD000000000000017, 0x8000000251C8BAD0);

    *&v19 = a2;
    *(&v19 + 1) = a3;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    *&v24 = v11;
    *(&v24 + 1) = v12;
    *&v25 = v13;
    *(&v25 + 1) = v35;
    v26[0] = a2;
    v26[1] = a3;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v34 = v35;
    sub_251B293EC(&v19, v18);
    result = sub_251B29448(v26);
    v15 = v24;
    a4[4] = v23;
    a4[5] = v15;
    a4[6] = v25;
    v16 = v20;
    *a4 = v19;
    a4[1] = v16;
    v17 = v22;
    a4[2] = v21;
    a4[3] = v17;
  }

  return result;
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

uint64_t sub_251B3C1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_251B3C200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_251B3C28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_251B3C2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251B3C340()
{
  if (!qword_27F47A3D8)
  {
    sub_251AF2E30();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A3D8);
    }
  }
}

uint64_t sub_251B3C3F4(uint64_t a1)
{
  sub_251AF2E30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_251B3C65C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_251B3C710(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v4 = a1;
    swift_getErrorValue();
    v5 = sub_251BC0124(v6, v7);
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  a3(a1, v5);
}

void sub_251B3C9C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v4 = a1;
    swift_getErrorValue();
    v5 = sub_251BC0124(v6, v7);
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  a3(a1, v5);
}

void sub_251B3CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CC9260];
  sub_251B3F274(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  sub_251B3F2D8(a1, &v15 - v9, &qword_2813E7520, v6);
  v11 = sub_251C6FE64();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_251C6FDD4();
    (*(v12 + 8))(v10, v11);
  }

  if (a2)
  {
    v14 = sub_251C6FD74();
  }

  else
  {
    v14 = 0;
  }

  (*(a3 + 16))(a3, v13, v14);
}

uint64_t sub_251B3CCF4(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  sub_251AE5884();
  v46 = v3;
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B3DF80();
  v48 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C70014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  v20 = v2;
  v21 = sub_251C70744();
  v22 = sub_251C713F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = v22;
    v24 = v23;
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v24 = 136315138;
    v25 = *&v20[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
    v45 = v7;
    v26 = v25;
    v27 = [v25 description];
    v28 = sub_251C70F14();
    v44 = v10;
    v30 = v29;

    v7 = v45;
    v31 = sub_251B10780(v28, v30, v52);
    v10 = v44;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_251A6C000, v21, v43, "Submitting clinical sharing daily analytics on behalf of %s", v24, 0xCu);
    v32 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x25308E2B0](v32, -1, -1);
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  v33 = __swift_project_boxed_opaque_existential_1(&v20[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v20[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
  sub_251A823B4(*v33 + 16, v52);
  sub_251C70004();
  sub_251B41060(v52, v14, v18);
  v52[0] = sub_251B4131C();
  sub_251B1853C();
  sub_251B3E014(&qword_2813E2200, sub_251B1853C);
  v34 = v47;
  sub_251C70AE4();

  sub_251B3E014(&qword_2813E2668, sub_251AE5884);
  v35 = v46;
  v36 = sub_251C70A94();
  (*(v49 + 8))(v34, v35);
  v52[0] = v36;
  sub_251B28D44();
  sub_251B3E014(&qword_2813E20D8, sub_251B28D44);
  sub_251C70AC4();

  v37 = swift_allocObject();
  v38 = v51;
  *(v37 + 16) = v50;
  *(v37 + 24) = v38;
  sub_251B3E014(&qword_2813E26A0, sub_251B3DF80);

  v39 = v48;
  sub_251C70AF4();

  (*(v7 + 8))(v10, v39);
  swift_beginAccess();
  sub_251C70984();
  swift_endAccess();

  return sub_251B3E15C(v18, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
}

uint64_t sub_251B3D360(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a6;
  v92 = a3;
  v88 = a5;
  v79 = a1;
  sub_251AE5884();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v84 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B3DF80();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v12);
  v87 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70074();
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v15);
  v78 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_251C70014();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = *(v82 + 64);
  MEMORY[0x28223BE20](v18);
  v81 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v25 = sub_251C70764();
  __swift_project_value_buffer(v25, qword_2813E8130);
  v26 = v6;

  v27 = sub_251C70744();
  v28 = sub_251C713F4();

  v29 = os_log_type_enabled(v27, v28);
  v93 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v96[0] = v76;
    *v30 = 136315650;
    v31 = *&v26[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
    v32 = [v31 description];
    v75 = v28;
    v33 = a2;
    v34 = v32;
    v35 = sub_251C70F14();
    v74 = v27;
    v36 = v21;
    v37 = a4;
    v38 = v35;
    v77 = v15;
    v40 = v39;

    a2 = v33;
    v41 = v38;
    a4 = v37;
    v21 = v36;
    v42 = v92;
    v43 = sub_251B10780(v41, v40, v96);
    v15 = v77;

    *(v30 + 4) = v43;
    *(v30 + 12) = 2080;
    v44 = v79;
    *(v30 + 14) = sub_251B10780(v79, a2, v96);
    *(v30 + 22) = 2080;
    v26 = v93;
    *(v30 + 24) = sub_251B10780(v42, a4, v96);
    v45 = v74;
    _os_log_impl(&dword_251A6C000, v74, v75, "Submitting clinical sharing onboarding analytics on behalf of %s: %s:%s", v30, 0x20u);
    v46 = v76;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v46, -1, -1);
    MEMORY[0x25308E2B0](v30, -1, -1);
  }

  else
  {

    v44 = v79;
  }

  v47 = __swift_project_boxed_opaque_existential_1(&v26[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v26[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
  sub_251A823B4(*v47 + 16, v96);
  v48 = v81;
  sub_251C70004();
  sub_251A823B4(v96, v24);
  *(v24 + 5) = v44;
  *(v24 + 6) = a2;
  *(v24 + 7) = v92;
  *(v24 + 8) = a4;
  v50 = v82;
  v49 = v83;
  (*(v82 + 16))(&v24[v21[7]], v48, v83);

  v24[v21[8]] = HKImproveHealthAndActivityAnalyticsAllowed();
  v94 = v21;
  sub_251B3E05C();
  v94 = sub_251C70F74();
  v95 = v51;
  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  v52 = v78;
  sub_251C70064();
  sub_251C70024();
  (*(v80 + 8))(v52, v15);
  v53 = sub_251AE3EAC(8);
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v60 = MEMORY[0x25308CD40](v53, v55, v57, v59);
  v62 = v61;

  MEMORY[0x25308CDA0](v60, v62);

  MEMORY[0x25308CDA0](58, 0xE100000000000000);
  v63 = v94;
  v64 = v95;
  (*(v50 + 8))(v48, v49);
  __swift_destroy_boxed_opaque_existential_1(v96);
  v65 = &v24[v21[9]];
  *v65 = v63;
  v65[1] = v64;
  v96[0] = sub_251BE9E2C();
  sub_251B1853C();
  sub_251B3E014(&qword_2813E2200, sub_251B1853C);
  v66 = v84;
  sub_251C70AE4();

  sub_251B3E014(&qword_2813E2668, sub_251AE5884);
  v67 = v86;
  v68 = sub_251C70A94();
  (*(v85 + 8))(v66, v67);
  v96[0] = v68;
  sub_251B28D44();
  sub_251B3E014(&qword_2813E20D8, sub_251B28D44);
  v69 = v87;
  sub_251C70AC4();

  v70 = swift_allocObject();
  v71 = v91;
  *(v70 + 16) = v88;
  *(v70 + 24) = v71;
  sub_251B3E014(&qword_2813E26A0, sub_251B3DF80);

  v72 = v90;
  sub_251C70AF4();

  (*(v89 + 8))(v69, v72);
  swift_beginAccess();
  sub_251C70984();
  swift_endAccess();

  return sub_251B3E15C(v24, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
}

void sub_251B3DC2C(void **a1, void (*a2)(uint64_t, void *), uint64_t a3, const char *a4)
{
  v6 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);
  v8 = v6;
  v9 = sub_251C70744();
  v10 = sub_251C713F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = v6;
    sub_251B3E0C8();
    v14 = sub_251C70F74();
    v16 = sub_251B10780(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_251A6C000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  if (v6)
  {
    v21 = v6;
    v17 = v6;
    sub_251AA98B0(0, &qword_2813E1C30);
    v18 = sub_251C719C4();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = swift_allocError();
      *v20 = v6;
    }

    a2(0, v19);
  }

  else
  {
    a2(1, 0);
  }
}

void sub_251B3DF80()
{
  if (!qword_2813E2698)
  {
    sub_251B28D44();
    sub_251B3E014(&qword_2813E20D8, sub_251B28D44);
    v0 = sub_251C707B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2698);
    }
  }
}

uint64_t sub_251B3E014(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251B3E05C()
{
  result = qword_27F47A460;
  if (!qword_27F47A460)
  {
    type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47A460);
  }

  return result;
}

void sub_251B3E0C8()
{
  if (!qword_2813E2218)
  {
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70934();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2218);
    }
  }
}

uint64_t sub_251B3E15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B3E1BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v47 = a2;
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CC9578];
  sub_251B3F274(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - v17;
  sub_251B3F2D8(a3, &v44 - v17, &qword_2813E7500, v14);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    _Block_copy(a5);
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    (*(v10 + 32))(v13, v18, v9);
    v48 = 0x2065746164202CLL;
    v49 = 0xE700000000000000;
    _Block_copy(a5);
    sub_251B3E014(&unk_27F47A470, MEMORY[0x277CC9578]);
    v21 = sub_251C719A4();
    MEMORY[0x25308CDA0](v21);

    v19 = v48;
    v20 = v49;
    (*(v10 + 8))(v13, v9);
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v22 = sub_251C70764();
  __swift_project_value_buffer(v22, qword_2813E8130);

  v23 = a4;
  v24 = sub_251C70744();
  v25 = sub_251C713F4();

  if (os_log_type_enabled(v24, v25))
  {
    v44 = v19;
    v46 = a3;
    v26 = a1;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48 = v28;
    *v27 = 136315906;
    v45 = v26;
    v29 = sub_251B24874(&unk_2863F32F8, v26);
    v31 = v30;
    sub_251B245C4(&unk_2863F3318);
    v32 = sub_251B10780(v29, v31, &v48);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    if (v47 > 3)
    {
      switch(v47)
      {
        case 4:
          v33 = 0xE700000000000000;
          v34 = 0x676E6974736574;
          goto LABEL_22;
        case 5:
          v33 = 0xEE00646574616974;
          v34 = 0x696E692D72657375;
          goto LABEL_22;
        case 6:
          v33 = 0x8000000251C8A720;
          v34 = 0xD000000000000010;
          goto LABEL_22;
      }
    }

    else
    {
      switch(v47)
      {
        case 1:
          v33 = 0xED00006E6F697461;
          v34 = 0x7A69726F68747561;
          goto LABEL_22;
        case 2:
          v33 = 0xE800000000000000;
          v34 = 0x617461642D77656ELL;
          goto LABEL_22;
        case 3:
          v33 = 0xEA0000000000646ELL;
          v34 = 0x756F72676B636162;
LABEL_22:
          v35 = sub_251B10780(v34, v33, &v48);

          *(v27 + 14) = v35;
          *(v27 + 22) = 2080;
          v36 = sub_251B10780(v44, v20, &v48);

          *(v27 + 24) = v36;
          *(v27 + 32) = 2080;
          v37 = *&v23[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
          v38 = [v37 description];
          v39 = sub_251C70F14();
          v41 = v40;

          v42 = sub_251B10780(v39, v41, &v48);

          *(v27 + 34) = v42;
          _os_log_impl(&dword_251A6C000, v24, v25, "Sharing health data with options %s, reason %s%s on behalf of %s", v27, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v28, -1, -1);
          MEMORY[0x25308E2B0](v27, -1, -1);

          a1 = v45;
          a3 = v46;
          goto LABEL_23;
      }
    }

    v33 = 0xE700000000000000;
    v34 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

LABEL_23:
  v43 = *(*__swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v23[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]) + 56);
  _Block_copy(a5);

  sub_251C5C9CC(a1, v47, a3, v43, a5);
  _Block_release(a5);

  _Block_release(a5);
}

uint64_t sub_251B3E790(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = sub_251C70764();
  __swift_project_value_buffer(v6, qword_2813E8130);
  v7 = a2;
  v8 = sub_251C70744();
  v9 = sub_251C713F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v23 = a3;
    v24 = v11;
    if (a1 > 3)
    {
      switch(a1)
      {
        case 4:
          v12 = 0xE700000000000000;
          v13 = 0x676E6974736574;
          goto LABEL_19;
        case 5:
          v12 = 0xEE00646574616974;
          v13 = 0x696E692D72657375;
          goto LABEL_19;
        case 6:
          v12 = 0x8000000251C8A720;
          v13 = 0xD000000000000010;
          goto LABEL_19;
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          v12 = 0xED00006E6F697461;
          v13 = 0x7A69726F68747561;
          goto LABEL_19;
        case 2:
          v12 = 0xE800000000000000;
          v13 = 0x617461642D77656ELL;
          goto LABEL_19;
        case 3:
          v12 = 0xEA0000000000646ELL;
          v13 = 0x756F72676B636162;
LABEL_19:
          v14 = sub_251B10780(v13, v12, &v24);

          *(v10 + 4) = v14;
          *(v10 + 12) = 2080;
          v15 = *&v7[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
          v16 = [v15 description];
          v17 = sub_251C70F14();
          v19 = v18;

          v20 = sub_251B10780(v17, v19, &v24);

          *(v10 + 14) = v20;
          _os_log_impl(&dword_251A6C000, v8, v9, "Scheduling health data share with reason %s on behalf of %s", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v11, -1, -1);
          MEMORY[0x25308E2B0](v10, -1, -1);

          a3 = v23;
          goto LABEL_20;
      }
    }

    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    goto LABEL_19;
  }

LABEL_20:
  v21 = __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v7[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
  v24 = *(*(*(*v21 + 56) + 56) + 136);
  MEMORY[0x28223BE20](v21);
  sub_251B3F274(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();

  sub_251C702C4();

  return (*(a3 + 16))(a3, 1, 0);
}

uint64_t sub_251B3EB60(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v48 = a1;
  sub_251B3F274(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
  _Block_copy(a4);
  v16 = [v15 process];
  v17 = [v16 hasEntitlement_];

  if (v17)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v18 = sub_251C70764();
    __swift_project_value_buffer(v18, qword_2813E8130);
    v19 = a3;
    v20 = sub_251C70744();
    v21 = sub_251C713F4();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v48;
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136315394;
      v26 = sub_251B24874(&unk_2863F3330, v23);
      v47 = a2;
      v28 = v27;
      sub_251B2463C(0, &qword_27F4791B8, type metadata accessor for HKClinicalSharingQueryDiagnosticOptions);
      swift_arrayDestroy();
      v29 = sub_251B10780(v26, v28, &v49);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = v15;
      v31 = [v30 description];
      v32 = sub_251C70F14();
      v34 = v33;

      a2 = v47;
      v35 = sub_251B10780(v32, v34, &v49);
      v23 = v48;

      *(v24 + 14) = v35;
      _os_log_impl(&dword_251A6C000, v20, v21, "Gathering query diagnostics with options %s on behalf of %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v25, -1, -1);
      MEMORY[0x25308E2B0](v24, -1, -1);
    }

    v36 = *(*__swift_project_boxed_opaque_existential_1(&v19[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v19[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]) + 56);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_251B3F160;
    *(v37 + 24) = v14;

    sub_251C5A9C8(v23, a2, sub_251B3F1D8, v37);
  }

  else
  {
    v39 = sub_251C6FE64();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v13, 1, 1, v39);
    v41 = objc_opt_self();
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_251C716A4();

    v49 = 0x20676E697373694DLL;
    v50 = 0xE800000000000000;
    v42 = sub_251C70F14();
    MEMORY[0x25308CDA0](v42);

    MEMORY[0x25308CDA0](0x656C7469746E6520, 0xEC000000746E656DLL);
    v43 = sub_251C70EE4();

    v44 = [v41 hk:4 error:v43 description:?];

    sub_251B3F2D8(v13, v11, &qword_2813E7520, MEMORY[0x277CC9260]);
    v45 = 0;
    if ((*(v40 + 48))(v11, 1, v39) != 1)
    {
      v45 = sub_251C6FDD4();
      (*(v40 + 8))(v11, v39);
    }

    v46 = sub_251C6FD74();
    (a4)[2](a4, v45, v46);

    sub_251B3F168(v13, &qword_2813E7520, MEMORY[0x277CC9260]);
  }
}

uint64_t sub_251B3F168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B3F274(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_251B3F1EC()
{
  result = qword_2813E1CF0;
  if (!qword_2813E1CF0)
  {
    sub_251B3F274(255, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1CF0);
  }

  return result;
}

void sub_251B3F274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B3F2D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B3F274(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_251B3F35C(void *a1)
{
  v2 = type metadata accessor for HealthRecordsIngestionServiceServer();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HealthRecordsDaemon35HealthRecordsIngestionServiceServer_client] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_251B3F404()
{
  sub_251B3F554();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C74800;
  v1 = *MEMORY[0x277D122F0];
  v2 = sub_251C70F14();
  v4 = v3;
  v5 = type metadata accessor for DefaultDaemonXPCService();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v7 = v2;
  v7[1] = v4;
  v8 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v10 = sub_251C70EE4();

  v11 = [v9 initWithLabel_];

  *&v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v11;
  v12 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v12 = sub_251B3F35C;
  v12[1] = 0;
  v15.receiver = v6;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  *(v0 + 56) = v5;
  *(v0 + 64) = &off_2863F5E58;
  *(v0 + 32) = v13;
  return v0;
}

void sub_251B3F554()
{
  if (!qword_2813E1C70)
  {
    sub_251ACFD80();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C70);
    }
  }
}

uint64_t sub_251B3F5AC(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D83B88];
  sub_251B3FE58(0, &qword_2813E2098, MEMORY[0x277D83B88], MEMORY[0x277CBCE68]);
  v5 = v4;
  v35 = *(v4 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  sub_251B3FE0C(0, &qword_2813E2070);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  sub_251B3FE58(0, &qword_2813E1BC0, v3, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  v37[0] = 0;
  v21 = [v2 dateOfBirthComponentsWithError_];
  if (v21)
  {
    v22 = v21;
    v23 = v37[0];
    v24 = sub_251C6FF94();
    v25 = [v22 hk:v24 ageWithCurrentDate:?];

    v37[0] = v25;
    v26 = MEMORY[0x277D83B88];
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v11 + 8))(v14, v10);
    sub_251B3FDA8(&qword_2813E1BC8, &qword_2813E1BC0, v26);
    v27 = sub_251C70A94();

    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v28 = v37[0];
    v29 = sub_251C6FD84();

    swift_willThrow();
    v37[0] = v29;
    v30 = v29;
    sub_251A82284();
    v31 = MEMORY[0x277D83B88];
    sub_251C709E4();
    sub_251B3FEC8(&qword_27F47A488, &qword_2813E2098, v31);
    v27 = sub_251C70A94();

    (*(v35 + 8))(v8, v5);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t sub_251B3F978()
{
  v1 = v0;
  v36[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D837D0];
  sub_251B3FE58(0, &unk_2813E20A0, MEMORY[0x277D837D0], MEMORY[0x277CBCE68]);
  v4 = v3;
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  sub_251B3FE0C(0, &qword_2813E2090);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  sub_251B3FE58(0, &qword_2813E1C00, v2, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  v36[0] = 0;
  v20 = [v1 biologicalSexWithError_];
  if (v20)
  {
    v21 = v20;
    v22 = v36[0];
    v23 = [v21 biologicalSex];

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = 0xE400000000000000;
        v25 = 1701601645;
        goto LABEL_13;
      }

      if (v23 == 3)
      {
        v24 = 0xE500000000000000;
        v25 = 0x726568746FLL;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v23)
      {
        v24 = 0xE700000000000000;
        v25 = 0x74657320746F6ELL;
        goto LABEL_13;
      }

      if (v23 == 1)
      {
        v24 = 0xE600000000000000;
        v25 = 0x656C616D6566;
LABEL_13:
        v36[0] = v25;
        v36[1] = v24;
        v31 = MEMORY[0x277D837D0];
        sub_251C70A24();
        sub_251A82284();
        sub_251C709F4();
        (*(v10 + 8))(v13, v9);
        sub_251B3FDA8(&qword_2813E1C08, &qword_2813E1C00, v31);
        v30 = sub_251C70A94();
        (*(v16 + 8))(v19, v15);
        goto LABEL_14;
      }
    }

    v24 = 0xE200000000000000;
    v25 = 24942;
    goto LABEL_13;
  }

  v26 = v36[0];
  v27 = sub_251C6FD84();

  swift_willThrow();
  v36[0] = v27;
  v28 = v27;
  sub_251A82284();
  v29 = MEMORY[0x277D837D0];
  sub_251C709E4();
  sub_251B3FEC8(&qword_27F47A480, &unk_2813E20A0, v29);
  v30 = sub_251C70A94();

  (*(v35 + 8))(v7, v4);
LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_251B3FDA8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251B3FE58(255, a2, a3, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251B3FE0C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251C70A14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251B3FE58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251A82284();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251B3FEC8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251B3FE58(255, a2, a3, MEMORY[0x277CBCE68]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_251B3FF2C()
{
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock;
  v4 = *&v0[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock];
  sub_251B40DE8(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  sub_251C702C4();
  MEMORY[0x25308E2B0](*&v0[v1], -1, -1);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ClinicalSharingSyncObserverServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_251B40144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [*(v5 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client) connection];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a5;
    v19 = sub_251B41034;
    v20 = v13;
    *&v17 = MEMORY[0x277D85DD0];
    *(&v17 + 1) = 1107296256;
    *&v18 = sub_251B40D80;
    *(&v18 + 1) = &block_descriptor_10;
    v14 = _Block_copy(&v17);

    v15 = [v12 remoteObjectProxyWithErrorHandler_];
    _Block_release(v14);
    sub_251C715C4();

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v22[0] = v17;
  v22[1] = v18;
  if (*(&v18 + 1))
  {
    sub_251B40FD0();
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_251AFEC38(v22);
    return 0;
  }
}

uint64_t sub_251B402FC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateSubject);
  sub_251B40E84();
  sub_251B40EE4(&qword_27F47A518, sub_251B40E84);
  sub_251C70B24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_251B40F34();
  sub_251B40EE4(&unk_27F47A528, sub_251B40F34);
  sub_251C70BC4();

  v3 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock);
  sub_251B40DE8(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  sub_251C702C4();
}

void sub_251B404C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_251B40610(v1, v2);
  }
}

uint64_t sub_251B40530(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable;
  if (*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable))
  {
    v5 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable);

    sub_251C70994();

    v6 = *(a1 + v4);
  }

  *(a1 + v4) = a2;
}

uint64_t sub_251B405A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable;
  if (*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable))
  {
    v3 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable);

    sub_251C70994();

    v4 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

void sub_251B40610(void *a1, char a2)
{
  v5 = sub_251B40144(0xD000000000000015, 0x8000000251C8BCB0, 0xD000000000000092, 0x8000000251C8BCD0, 63);
  if (!v5)
  {
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = v5;
      if (a1)
      {
        v7 = a1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v8 = sub_251C70764();
        __swift_project_value_buffer(v8, qword_2813E8130);
        v9 = v2;
        sub_251B40E4C(a1, 1u);
        v10 = sub_251C70744();
        v11 = sub_251C713F4();

        sub_251B40E68(a1, 1u);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v12 = 138412546;
          v15 = *&v9[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client];
          v39 = a1;
          v40[0] = v14;
          *(v12 + 4) = v15;
          *v13 = v15;
          *(v12 + 12) = 2080;
          sub_251B40E4C(a1, 1u);
          sub_251A82284();
          v16 = v15;
          v17 = sub_251C70F74();
          v19 = sub_251B10780(v17, v18, v40);

          *(v12 + 14) = v19;
          _os_log_impl(&dword_251A6C000, v10, v11, "Delivering sync did finish to %@: %s", v12, 0x16u);
          sub_251B36EB4(v13);
          MEMORY[0x25308E2B0](v13, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x25308E2B0](v14, -1, -1);
          MEMORY[0x25308E2B0](v12, -1, -1);
          sub_251B40E68(a1, 1u);
        }

        else
        {

          sub_251B40E68(a1, 1u);
        }

        swift_getErrorValue();
        v38 = sub_251BC0124(v40[2], v40[3]);
        v37 = sub_251C6FD74();
      }

      else
      {
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v29 = sub_251C70764();
        __swift_project_value_buffer(v29, qword_2813E8130);
        v30 = v2;
        v31 = sub_251C70744();
        v32 = sub_251C713F4();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = *&v30[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client];
          *(v33 + 4) = v35;
          *v34 = v35;
          v36 = v35;
          _os_log_impl(&dword_251A6C000, v31, v32, "Delivering sync did finish to %@", v33, 0xCu);
          sub_251B36EB4(v34);
          MEMORY[0x25308E2B0](v34, -1, -1);
          MEMORY[0x25308E2B0](v33, -1, -1);
        }

        v37 = 0;
      }

      [v6 client:v37 syncDidFinishWithError:{v39, v40[0]}];
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    v20 = v5;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);
    v22 = v2;
    sub_251B40E4C(a1, 0);
    v23 = sub_251C70744();
    v24 = sub_251C713F4();

    sub_251B40E68(a1, 0);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = *&v22[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client];
      *(v25 + 4) = v27;
      *(v25 + 12) = 2112;
      *(v25 + 14) = a1;
      *v26 = v27;
      v26[1] = a1;
      sub_251B40E4C(a1, 0);
      v28 = v27;
      _os_log_impl(&dword_251A6C000, v23, v24, "Delivering sync did start to %@: %@", v25, 0x16u);
      sub_251B40DE8(0, &qword_2813E1D10, sub_251B1B1EC, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    [v20 client:a1 syncDidStartWithInfo:?];
  }

  swift_unknownObjectRelease();
}