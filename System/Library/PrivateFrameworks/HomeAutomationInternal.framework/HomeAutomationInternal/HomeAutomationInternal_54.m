uint64_t sub_252D25AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D24CD4(a1, a2, a3);
}

void *sub_252D25B68@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BluetoothWakeUpResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D25BCC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_252C285CC();
    v2 = v1;
    if (v1 >> 62)
    {
LABEL_35:
      v3 = sub_252E378C4();
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = v2 & 0xC000000000000001;
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
        v7 = v2 + 32;
        v8 = &off_279711000;
        while (1)
        {
          if (v5)
          {
            v9 = MEMORY[0x2530ADF00](v4, v2);
          }

          else
          {
            if (v4 >= *(v6 + 16))
            {
              goto LABEL_34;
            }

            v9 = *(v7 + 8 * v4);
          }

          v10 = v9;
          if (__OFADD__(v4++, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v12 = [v9 v8[220]];
          if (!v12)
          {
            break;
          }

          v13 = v12;
          v21 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v14 = sub_252E37264();

          if (v14 >> 62)
          {
            v15 = sub_252E378C4();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = 0;
          do
          {
            if (v15 == v16)
            {

              goto LABEL_27;
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x2530ADF00](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v19 = [v17 taskOutcome];

            ++v16;
          }

          while (v19 != 20);

          v5 = v2 & 0xC000000000000001;
          v7 = v2 + 32;
          v6 = v2 & 0xFFFFFFFFFFFFFF8;
          v8 = &off_279711000;
          if (v4 == v3)
          {
            v3 = 1;
            goto LABEL_28;
          }
        }

LABEL_27:
        v3 = 0;
      }
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_4;
      }
    }

LABEL_28:

    return v3;
  }

  return 0;
}

uint64_t sub_252D25DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252D25778(v2, v3, v5, v4);
}

uint64_t sub_252D25E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463656A6552;
  }

  else
  {
    v4 = 0x6D7269666E6F43;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7463656A6552;
  }

  else
  {
    v6 = 0x6D7269666E6F43;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
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
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D25F3C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D25FBC()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D26028()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D260B0(uint64_t *a1@<X8>)
{
  v2 = 0x6D7269666E6F43;
  if (*v1)
  {
    v2 = 0x7463656A6552;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D260EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252D2610C, 0, 0);
}

uint64_t sub_252D2610C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55C68] + 4);
  v9 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = sub_252D2C85C();
  *v5 = v0;
  v5[1] = sub_252D26274;
  v7 = v0[3];

  return v9(0xD000000000000026, 0x8000000252E953C0, v2, &type metadata for HomeAutomationCATsSimple.AccessoryStatesUILabelsDialogIds, v6);
}

uint64_t sub_252D26274(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CDB0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252D263CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D26478, 0, 0);
}

uint64_t sub_252D26478()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x8000000252E8A040;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = v0[5];
  if (v12 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v15 = *(MEMORY[0x277D55C70] + 4);
  v19 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_252D26710;
  v17 = v0[4];

  return v19(0xD00000000000001ELL, 0x8000000252E953A0, v3);
}

uint64_t sub_252D26710(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  v5[9] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CD98, 0, 0);
  }

  else
  {
    v7 = v5[6];
    v6 = v5[7];
    v8 = v5[5];

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_252D26878(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D26928, 0, 0);
}

uint64_t sub_252D26928()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_252E3C280;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000252E76480;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = *(v0 + 48);
  if (v7 == 1)
  {
    sub_25293847C(*(v0 + 48), &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 80);
  strcpy((v3 + 80), "isSceneRequest");
  *(v3 + 95) = -18;
  v12 = MEMORY[0x277D839B0];
  *(v3 + 96) = v11;
  v13 = *(v0 + 24);
  *(v3 + 120) = v12;
  *(v3 + 128) = 0xD000000000000010;
  *(v3 + 136) = 0x8000000252E764C0;
  sub_252938414(v13, v10, &qword_27F540298, &unk_252E3C270);
  v14 = v6(v10, 1, v4);
  v15 = *(v0 + 40);
  if (v14 == 1)
  {
    sub_25293847C(*(v0 + 40), &qword_27F540298, &unk_252E3C270);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    v16 = __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    (*(v5 + 32))(v16, v15, v4);
  }

  v17 = *(MEMORY[0x277D55C70] + 4);
  v21 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v18 = swift_task_alloc();
  *(v0 + 64) = v18;
  *v18 = v0;
  v18[1] = sub_252D26BFC;
  v19 = *(v0 + 32);

  return v21(0xD000000000000025, 0x8000000252E95370, v3);
}

uint64_t sub_252D26BFC(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  v5[9] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D26D64, 0, 0);
  }

  else
  {
    v7 = v5[6];
    v6 = v5[7];
    v8 = v5[5];

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_252D26D64()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_252D26DDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D26E88, 0, 0);
}

uint64_t sub_252D26E88()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x8000000252E8A040;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = v0[5];
  if (v12 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v15 = *(MEMORY[0x277D55C70] + 4);
  v19 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_252D26710;
  v17 = v0[4];

  return v19(0xD000000000000018, 0x8000000252E95350, v3);
}

uint64_t sub_252D2712C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D2CC58();
  *a2 = result;
  return result;
}

uint64_t sub_252D2715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D271FC, 0, 0);
}

uint64_t sub_252D271FC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_252E3C280;
  strcpy((v2 + 32), "labelResponses");
  *(v2 + 47) = -18;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "intentContext");
  *(v2 + 94) = -4864;
  v5 = 0;
  if (v4)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v6 = v0[6];
  v7 = v0[4];
  *(v2 + 96) = v4;
  *(v2 + 120) = v5;
  *(v2 + 128) = 0x7079546574617473;
  *(v2 + 136) = 0xE900000000000065;
  sub_252938414(v7, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = v0[6];
  v12 = v0[2];
  v13 = v0[3];
  if (v10 == 1)
  {
    v14 = v0[3];

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    (*(v9 + 32))(boxed_opaque_existential_0, v11, v8);
  }

  v16 = *(MEMORY[0x277D55C68] + 4);
  v21 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v17 = swift_task_alloc();
  v0[8] = v17;
  v18 = sub_252D2C808();
  *v17 = v0;
  v17[1] = sub_252D274AC;
  v19 = v0[5];

  return v21(0xD000000000000029, 0x8000000252E95320, v2, &type metadata for HomeAutomationCATsSimple.CompletionResponseUILabelsDialogIds, v18);
}

uint64_t sub_252D274AC(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  v5[9] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D27608, 0, 0);
  }

  else
  {
    v7 = v5[6];
    v6 = v5[7];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_252D27608()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_252D27674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252D27698, 0, 0);
}

uint64_t sub_252D27698()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_252E3C280;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x8000000252E68110;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationAbstractMeasurements();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v8 = v0[4];
  *(v2 + 96) = v7;
  *(v2 + 120) = v6;
  *(v2 + 128) = 0x65736E6F70736572;
  *(v2 + 136) = 0xE900000000000073;
  v9 = 0;
  if (v8)
  {
    v9 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v8;
  *(v2 + 168) = v9;
  v10 = *(MEMORY[0x277D55C70] + 4);
  v14 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_252D27898;
  v12 = v0[5];

  return v14(0xD000000000000021, 0x8000000252E952F0, v2);
}

uint64_t sub_252D27898(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D279F0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252D279F0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252D27A54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C746954;
  }

  else
  {
    v4 = 0x797469746E45;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C746954;
  }

  else
  {
    v6 = 0x797469746E45;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D27AF4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D27B70()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D27BD8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D27C5C(uint64_t *a1@<X8>)
{
  v2 = 0x797469746E45;
  if (*v1)
  {
    v2 = 0x656C746954;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D27C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D27D40, 0, 0);
}

uint64_t sub_252D27D40()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0x74616469646E6163;
  *(v4 + 40) = 0xEF73656D614E7365;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000014;
  *(v4 + 88) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v1, 1, v6);
  v10 = v0[7];
  v11 = v0[2];
  if (v9 == 1)
  {
    v12 = v0[2];

    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    (*(v7 + 32))(boxed_opaque_existential_0, v10, v6);
  }

  v14 = v0[6];
  v15 = v0[4];
  *(v4 + 128) = 0xD000000000000014;
  *(v4 + 136) = 0x8000000252E8A040;
  sub_252938414(v15, v14, &qword_27F540298, &unk_252E3C270);
  v16 = v8(v14, 1, v6);
  v17 = v0[6];
  if (v16 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v6;
    v18 = __swift_allocate_boxed_opaque_existential_0((v4 + 144));
    (*(v7 + 32))(v18, v17, v6);
  }

  v19 = *(MEMORY[0x277D55C70] + 4);
  v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_252D28030;
  v21 = v0[5];

  return v23(0xD000000000000022, 0x8000000252E7D560, v4);
}

uint64_t sub_252D28030(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D28198, 0, 0);
  }

  else
  {
    v7 = v5[7];
    v6 = v5[8];
    v8 = v5[6];

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_252D28198()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_252D28210(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D282BC, 0, 0);
}

uint64_t sub_252D282BC()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x8000000252E8A040;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = v0[5];
  if (v12 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v15 = *(MEMORY[0x277D55C70] + 4);
  v19 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_252D26710;
  v17 = v0[4];

  return v19(0xD000000000000023, 0x8000000252E952C0, v3);
}

uint64_t sub_252D28554(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 80) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D28604, 0, 0);
}

uint64_t sub_252D28604()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_252E3C280;
  *(v3 + 32) = 0xD00000000000001ELL;
  *(v3 + 40) = 0x8000000252E6DE40;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = *(v0 + 48);
  if (v7 == 1)
  {
    sub_25293847C(*(v0 + 48), &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 24);
  *(v3 + 80) = 0x656D614E656D6F68;
  *(v3 + 88) = 0xE800000000000000;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = *(v0 + 40);
  if (v12 == 1)
  {
    sub_25293847C(*(v0 + 40), &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v15 = *(v0 + 80);
  *(v3 + 128) = 0x7571655256547369;
  *(v3 + 136) = 0xEB00000000747365;
  *(v3 + 168) = MEMORY[0x277D839B0];
  *(v3 + 144) = v15;
  v16 = *(MEMORY[0x277D55C70] + 4);
  v20 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_252D26710;
  v18 = *(v0 + 32);

  return v20(0xD000000000000026, 0x8000000252E6DE60, v3);
}

uint64_t sub_252D288D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252D288F8, 0, 0);
}

uint64_t sub_252D288F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x8000000252E851F0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x8000000252E85210;
  *(v4 + 96) = v2;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0xD000000000000015;
  *(v4 + 168) = v5;
  *(v4 + 136) = 0x8000000252E85230;
  *(v4 + 144) = v1;
  v6 = *(MEMORY[0x277D55C70] + 4);
  v10 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_252D28A9C;
  v8 = v0[5];

  return v10(0xD000000000000025, 0x8000000252E851C0, v4);
}

uint64_t sub_252D28A9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CDA8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252D28BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F707365526F4ELL;
  v4 = 0xEA00000000006573;
  if (v2 != 1)
  {
    v3 = 0x6574617453;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x797469746E45;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E6F707365526F4ELL;
  v8 = 0xEA00000000006573;
  if (*a2 != 1)
  {
    v7 = 0x6574617453;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x797469746E45;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D28CF4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D28D94()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D28E20()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D28EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D2CCA4();
  *a2 = result;
  return result;
}

void sub_252D28EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000006573;
  v5 = 0x6E6F707365526F4ELL;
  if (v2 != 1)
  {
    v5 = 0x6574617453;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x797469746E45;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D28F48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D28FE4, 0, 0);
}

uint64_t sub_252D28FE4()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C290;
  *(v3 + 32) = 0x6D614E656E656373;
  *(v3 + 40) = 0xE900000000000065;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_25293847C(v0[4], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  }

  v9 = *(MEMORY[0x277D55C70] + 4);
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_252D291CC;
  v11 = v0[3];

  return v13(0xD000000000000026, 0x8000000252E665B0, v3);
}

uint64_t sub_252D291CC(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CD88, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_252D29328(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574617453;
  }

  else
  {
    v4 = 0x6D614E656E656353;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574617453;
  }

  else
  {
    v6 = 0x6D614E656E656353;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D293D0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D29454()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D294C4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D29550(uint64_t *a1@<X8>)
{
  v2 = 0x6D614E656E656353;
  if (*v1)
  {
    v2 = 0x6574617453;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D29590(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D29630, 0, 0);
}

uint64_t sub_252D29630()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0x6D614E656E656373;
  *(v3 + 40) = 0xE900000000000065;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 32);
  if (v6 == 1)
  {
    sub_25293847C(*(v0 + 32), &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  }

  v9 = *(v0 + 64);
  *(v3 + 80) = 0x7365636375537369;
  *(v3 + 88) = 0xE900000000000073;
  *(v3 + 120) = MEMORY[0x277D839B0];
  *(v3 + 96) = v9;
  v10 = *(MEMORY[0x277D55C68] + 4);
  v15 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  v12 = sub_252D2C7B4();
  *v11 = v0;
  v11[1] = sub_252D2985C;
  v13 = *(v0 + 24);

  return v15(0xD000000000000020, 0x8000000252E95290, v3, &type metadata for HomeAutomationCATsSimple.SceneStatusLabelsDialogIds, v12);
}

uint64_t sub_252D2985C(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D299B8, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_252D299B8()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_252D29A24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617453;
  if (v2 != 1)
  {
    v4 = 0x5672656767697254;
    v3 = 0xEC00000065756C61;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C756465686353;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6574617453;
  if (*a2 != 1)
  {
    v8 = 0x5672656767697254;
    v7 = 0xEC00000065756C61;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C756465686353;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D29B30()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D29BDC()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D29C74()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D29D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D2CCF0();
  *a2 = result;
  return result;
}

void sub_252D29D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE500000000000000;
  v5 = 0x6574617453;
  if (v2 != 1)
  {
    v5 = 0x5672656767697254;
    v4 = 0xEC00000065756C61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C756465686353;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D29DB4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D29DDC, 0, 0);
}

uint64_t sub_252D29DDC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v9 = *(MEMORY[0x277D55C70] + 4);
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_252D29FAC;
  v11 = *(v0 + 32);

  return v13(0xD00000000000001ELL, 0x8000000252E66590, v2);
}

uint64_t sub_252D29FAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CDAC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252D2A104(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2A12C, 0, 0);
}

uint64_t sub_252D2A12C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v9 = *(MEMORY[0x277D55C70] + 4);
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_252D29FAC;
  v11 = *(v0 + 32);

  return v13(0xD000000000000016, 0x8000000252E666A0, v2);
}

uint64_t sub_252D2A2FC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2A3C4()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D2A478()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2A53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D2CD3C();
  *a2 = result;
  return result;
}

uint64_t sub_252D2A56C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2A594, 0, 0);
}

uint64_t sub_252D2A594()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v9 = *(MEMORY[0x277D55C68] + 4);
  v14 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  v11 = sub_252D2C760();
  *v10 = v0;
  v10[1] = sub_252D29FAC;
  v12 = *(v0 + 32);

  return v14(0xD00000000000001ELL, 0x8000000252E95270, v2, &type metadata for HomeAutomationCATsSimple.SetModeUILabelsDialogIds, v11);
}

uint64_t sub_252D2A778(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2A7A0, 0, 0);
}

uint64_t sub_252D2A7A0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationNumericEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v9 = *(MEMORY[0x277D55C70] + 4);
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_252D29FAC;
  v11 = *(v0 + 32);

  return v13(0xD00000000000001ELL, 0x8000000252E66610, v2);
}

uint64_t sub_252D2A970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2A994, 0, 0);
}

uint64_t sub_252D2A994()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationPolledEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "intentContext");
  *(v2 + 94) = -4864;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v7 = *(MEMORY[0x277D55C70] + 4);
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_252D2AB3C;
  v9 = v0[4];

  return v11(0xD00000000000001DLL, 0x8000000252E8A6B0, v2);
}

uint64_t sub_252D2AB3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2AC94, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252D2AC94()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_252D2ACF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574617453;
  }

  else
  {
    v4 = 0x797469746E45;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574617453;
  }

  else
  {
    v6 = 0x797469746E45;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D2AD98()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2AE14()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D2AE7C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D2AF00(uint64_t *a1@<X8>)
{
  v2 = 0x797469746E45;
  if (*v1)
  {
    v2 = 0x6574617453;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D2AF38(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2AF60, 0, 0);
}

uint64_t sub_252D2AF60()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationPolledEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "intentContext");
  *(v2 + 94) = -4864;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v7 = *(v0 + 64);
  *(v2 + 96) = v5;
  *(v2 + 136) = 0x8000000252E95250;
  *(v2 + 168) = MEMORY[0x277D839B0];
  *(v2 + 144) = v7;
  v8 = *(MEMORY[0x277D55C68] + 4);
  v13 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  *(v2 + 120) = v6;
  *(v2 + 128) = 0xD000000000000012;

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  v10 = sub_252D2C70C();
  *v9 = v0;
  v9[1] = sub_252D29FAC;
  v11 = *(v0 + 32);

  return v13(0xD000000000000025, 0x8000000252E95220, v2, &type metadata for HomeAutomationCATsSimple.SetPolledStateUILabelsDialogIds, v10);
}

uint64_t sub_252D2B14C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2B170, 0, 0);
}

uint64_t sub_252D2B170()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  strcpy((v2 + 32), "getResponses");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationClimateResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "setResponses");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationClimateResponses();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v7 = *(MEMORY[0x277D55C70] + 4);
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_252D29FAC;
  v9 = v0[4];

  return v11(0xD000000000000028, 0x8000000252E666C0, v2);
}

uint64_t sub_252D2B300(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7453746567726154;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x8000000252E68720;
  }

  else
  {
    v5 = 0xEB00000000657461;
  }

  if (*a2)
  {
    v6 = 0x7453746567726154;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xEB00000000657461;
  }

  else
  {
    v7 = 0x8000000252E68720;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D2B3B4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2B444()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D2B4C0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D2B558(unint64_t *a1@<X8>)
{
  v2 = 0x8000000252E68720;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x7453746567726154;
    v2 = 0xEB00000000657461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_252D2B5A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2B5C8, 0, 0);
}

uint64_t sub_252D2B5C8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  strcpy((v2 + 32), "getResponses");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationClimateResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "setResponses");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationClimateResponses();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v7 = *(MEMORY[0x277D55C68] + 4);
  v12 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = sub_252D2C6B8();
  *v8 = v0;
  v8[1] = sub_252D29FAC;
  v10 = v0[4];

  return v12(0xD000000000000030, 0x8000000252E951E0, v2, &type metadata for HomeAutomationCATsSimple.SetTemperatureSingleValueUILabelsDialogIds, v9);
}

uint64_t sub_252D2B76C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D2B808, 0, 0);
}

uint64_t sub_252D2B808()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C290;
  *(v3 + 32) = 0x656D614E656D6F68;
  *(v3 + 40) = 0xE800000000000000;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_25293847C(v0[4], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  }

  v9 = *(MEMORY[0x277D55C70] + 4);
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_252D291CC;
  v11 = v0[3];

  return v13(0xD00000000000002ELL, 0x8000000252E95410, v3);
}

uint64_t sub_252D2B9EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252D2BA0C, 0, 0);
}

uint64_t sub_252D2BA0C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55C70] + 4);
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_252C0D500;
  v6 = v0[3];

  return v8(0xD00000000000001FLL, 0x8000000252E88260, v2);
}

uint64_t sub_252D2BB60(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252D2BB88, 0, 0);
}

uint64_t sub_252D2BB88()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x8000000252E696E0;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 57);
  v5 = *(v0 + 56);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "isSceneRequest");
  *(v2 + 95) = -18;
  v6 = MEMORY[0x277D839B0];
  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  *(v2 + 128) = 0xD000000000000018;
  *(v2 + 136) = 0x8000000252E8A310;
  *(v2 + 168) = v6;
  *(v2 + 144) = v4;
  v7 = *(MEMORY[0x277D55C70] + 4);
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_252D26274;
  v9 = *(v0 + 24);

  return v11(0xD000000000000022, 0x8000000252E916A0, v2);
}

uint64_t sub_252D2BD34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2BD58, 0, 0);
}

uint64_t sub_252D2BD58()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x65736E6F70736572;
  *(v2 + 88) = 0xE900000000000073;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v7 = *(MEMORY[0x277D55C70] + 4);
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_252D29FAC;
  v9 = v0[4];

  return v11(0xD000000000000028, 0x8000000252E89A80, v2);
}

uint64_t sub_252D2BF00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2BF24, 0, 0);
}

uint64_t sub_252D2BF24()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD00000000000001ALL;
  *(v3 + 40) = 0x8000000252E8A960;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD00000000000001ALL;
  *(v3 + 120) = v4;
  *(v3 + 88) = 0x8000000252E8A980;
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55C70] + 4);
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_252D29FAC;
  v7 = v0[4];

  return v9(0xD00000000000001ELL, 0x8000000252E951C0, v3);
}

uint64_t HomeAutomationCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_252938414(a1, v13, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_252E36334();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v16;
}

uint64_t HomeAutomationCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E363B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252938414(a1, &v14 - v11, &qword_27F540370, &qword_252E3C450);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_252E36334();
  (*(v5 + 8))(a2, v4);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v12;
}

uint64_t HomeAutomationCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E363B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_252E36344();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t HomeAutomationCATsSimple.init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E363B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = sub_252E36344();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t HomeAutomationCATsSimple.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB10CATsSimpleCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeAutomationCATsSimple()
{
  result = qword_27F545838;
  if (!qword_27F545838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252D2C6B8()
{
  result = qword_27F545848;
  if (!qword_27F545848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545848);
  }

  return result;
}

unint64_t sub_252D2C70C()
{
  result = qword_27F545850;
  if (!qword_27F545850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545850);
  }

  return result;
}

unint64_t sub_252D2C760()
{
  result = qword_27F545858;
  if (!qword_27F545858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545858);
  }

  return result;
}

unint64_t sub_252D2C7B4()
{
  result = qword_27F545860;
  if (!qword_27F545860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545860);
  }

  return result;
}

unint64_t sub_252D2C808()
{
  result = qword_27F545868;
  if (!qword_27F545868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545868);
  }

  return result;
}

unint64_t sub_252D2C85C()
{
  result = qword_27F545870;
  if (!qword_27F545870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545870);
  }

  return result;
}

unint64_t sub_252D2C944()
{
  result = qword_27F545878;
  if (!qword_27F545878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545878);
  }

  return result;
}

unint64_t sub_252D2C99C()
{
  result = qword_27F545880;
  if (!qword_27F545880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545880);
  }

  return result;
}

unint64_t sub_252D2C9F4()
{
  result = qword_27F545888;
  if (!qword_27F545888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545888);
  }

  return result;
}

unint64_t sub_252D2CA4C()
{
  result = qword_27F545890;
  if (!qword_27F545890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545890);
  }

  return result;
}

unint64_t sub_252D2CAA4()
{
  result = qword_27F545898;
  if (!qword_27F545898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545898);
  }

  return result;
}

unint64_t sub_252D2CAFC()
{
  result = qword_27F5458A0;
  if (!qword_27F5458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5458A0);
  }

  return result;
}

unint64_t sub_252D2CB54()
{
  result = qword_27F5458A8;
  if (!qword_27F5458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5458A8);
  }

  return result;
}

unint64_t sub_252D2CBAC()
{
  result = qword_27F5458B0;
  if (!qword_27F5458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5458B0);
  }

  return result;
}

unint64_t sub_252D2CC04()
{
  result = qword_27F5458B8;
  if (!qword_27F5458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5458B8);
  }

  return result;
}

uint64_t sub_252D2CC58()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252D2CCA4()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252D2CCF0()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252D2CD3C()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252D2CDB4()
{
  v1 = v0;
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D5C128])
  {
    (*(v3 + 8))(v6, v2);
    return 0x65746E4933764C4ELL;
  }

  else if (v7 == *MEMORY[0x277D5C158])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

    v10 = sub_252E358D4();
    (*(*(v10 - 8) + 8))(v6, v10);
    return 0xD00000000000001ELL;
  }

  else if (v7 == *MEMORY[0x277D5C150])
  {
    (*(v3 + 8))(v6, v2);
    return 0xD000000000000010;
  }

  else if (v7 == *MEMORY[0x277D5C160])
  {
    (*(v3 + 8))(v6, v2);
    return 5198677;
  }

  else if (v7 == *MEMORY[0x277D5C168])
  {
    return 0x7974706D65;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_252D2D064()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_2814B0AF0);
    sub_252CC4050(0xD00000000000007BLL, 0x8000000252E956D0, 0xD000000000000078, 0x8000000252E95750, 0x74696E696564, 0xE600000000000000, 26);
    sub_252D2DCB0();
  }

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_252D2D190(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 56) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;

  sub_252E32E74();
  v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v14 = sub_252E32E44();
  v15 = [v13 initWithNSUUID_];

  (*(v9 + 8))(v12, v8);
  *(v4 + 64) = v15;
  *(v4 + 72) = 0;
  result = [objc_allocWithZone(MEMORY[0x277D57500]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v4 + 40) = result;
  result = [objc_allocWithZone(MEMORY[0x277D57500]) init];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;

  *(v4 + 48) = v17;
  if ((sub_252D2D3DC() & 1) == 0)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0AF0);
    v19 = sub_252E36AC4();
    v20 = sub_252E374D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252917000, v19, v20, "Couldn't log start event", v21, 2u);
      MEMORY[0x2530AED00](v21, -1, -1);
    }

    return 0;
  }

  return v4;
}

uint64_t sub_252D2D3DC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (!v2)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_2814B0AF0);
    v3 = sub_252E36AC4();
    v22 = sub_252E374D4();
    if (os_log_type_enabled(v3, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_252917000, v3, v22, "Couldn't initialize start FLOWSchemaFLOWDomainExecutionContext", v23, 2u);
      MEMORY[0x2530AED00](v23, -1, -1);
    }

    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (!v4)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_2814B0AF0);
    v25 = sub_252E36AC4();
    v26 = sub_252E374D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_252917000, v25, v26, "Couldn't initialize FLOWSchemaFLOWDomainExecutionStarted", v27, 2u);
      MEMORY[0x2530AED00](v27, -1, -1);
    }

LABEL_16:
    return 0;
  }

  v5 = v4;
  [v4 setDomainExecutionType_];
  [v5 setDomainExecutionMetadata_];
  [v3 setStartedOrChanged:v5];
  v6 = *(v0 + 64);
  [v3 setContextId:v6];
  v7 = *(v0 + 40);
  [*(v1 + 40) setFlowDomainExecutionContext_];
  sub_252E33804();
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);

  v10 = v7;
  sub_252E337F4();
  sub_252E336C4();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_252E336D4();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if (qword_2814B0AE8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_2814B0AF0);

  v12 = sub_252E36AC4();
  v13 = sub_252E374B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v14 = 136315394;
    v17 = sub_252E37624();
    v19 = sub_252BE2CE0(v17, v18, v29);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v6;
    *v15 = v6;
    v20 = v6;
    _os_log_impl(&dword_252917000, v12, v13, "    Sent FLOWSchemaFLOWDomainExecutionStarted:\n        type: %s\n        contextId: %@", v14, 0x16u);
    sub_252AE65A8(v15);
    MEMORY[0x2530AED00](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2530AED00](v16, -1, -1);
    MEMORY[0x2530AED00](v14, -1, -1);
  }

  return 1;
}

void sub_252D2D83C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = v2[4];
    v2[3] = a1;
    v2[4] = a2;
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v30)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
    if (v5)
    {
      v6 = v5;
      [v30 setEnded:v5];
      v7 = v2[8];
      [v30 setContextId:v7];
      v8 = v2[6];
      [v3[6] setFlowDomainExecutionContext_];
      sub_252E33804();
      v9 = v3[3];
      v10 = v3[4];

      v11 = v8;
      sub_252E337F4();
      sub_252E336C4();
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      sub_252E336D4();
      __swift_destroy_boxed_opaque_existential_1(v31);
      *(v3 + 16) = 1;
      if (qword_2814B0AE8 != -1)
      {
        swift_once();
      }

      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_2814B0AF0);

      v13 = sub_252E36AC4();
      v14 = sub_252E374B4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31[0] = v17;
        *v15 = 136315394;
        v18 = *(v3 + 14);
        v19 = sub_252E37624();
        v21 = sub_252BE2CE0(v19, v20, v31);

        *(v15 + 4) = v21;
        *(v15 + 12) = 2112;
        *(v15 + 14) = v7;
        *v16 = v7;
        v22 = v7;
        _os_log_impl(&dword_252917000, v13, v14, "    Sent FLOWSchemaFLOWDomainExecutionEnded:\n        type: %s\n        contextId: %@", v15, 0x16u);
        sub_252AE65A8(v16);
        MEMORY[0x2530AED00](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x2530AED00](v17, -1, -1);
        MEMORY[0x2530AED00](v15, -1, -1);
      }

      return;
    }

    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_2814B0AF0);
    v27 = sub_252E36AC4();
    v28 = sub_252E374D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_252917000, v27, v28, "Couldn't initialize FLOWSchemaFLOWDomainExecutionEnded", v29, 2u);
      MEMORY[0x2530AED00](v29, -1, -1);
    }
  }

  else
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_2814B0AF0);
    v30 = sub_252E36AC4();
    v24 = sub_252E374D4();
    if (os_log_type_enabled(v30, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_252917000, v30, v24, "Couldn't initialize end FLOWSchemaFLOWDomainExecutionContext", v25, 2u);
      MEMORY[0x2530AED00](v25, -1, -1);
    }
  }
}

void sub_252D2DCB0()
{
  v1 = v0;
  v27 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v27)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D57538]) init];
    if (v2)
    {
      v3 = v2;
      [v27 setFailed:v2];
      v4 = *(v0 + 64);
      [v27 setContextId:v4];
      v5 = *(v0 + 48);
      [*(v1 + 48) setFlowDomainExecutionContext_];
      sub_252E33804();
      v6 = *(v1 + 24);
      v7 = *(v1 + 32);

      v8 = v5;
      sub_252E337F4();
      sub_252E336C4();
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_252E336D4();
      __swift_destroy_boxed_opaque_existential_1(v28);
      if (qword_2814B0AE8 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_2814B0AF0);

      v10 = sub_252E36AC4();
      v11 = sub_252E374D4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28[0] = v14;
        *v12 = 136315394;
        v15 = *(v1 + 56);
        v16 = sub_252E37624();
        v18 = sub_252BE2CE0(v16, v17, v28);

        *(v12 + 4) = v18;
        *(v12 + 12) = 2112;
        *(v12 + 14) = v4;
        *v13 = v4;
        v19 = v4;
        _os_log_impl(&dword_252917000, v10, v11, "    Sent FLOWSchemaFLOWDomainExecutionFailed\n        type: %s\n        contextId: %@", v12, 0x16u);
        sub_252AE65A8(v13);
        MEMORY[0x2530AED00](v13, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2530AED00](v14, -1, -1);
        MEMORY[0x2530AED00](v12, -1, -1);
      }

      return;
    }

    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_2814B0AF0);
    v24 = sub_252E36AC4();
    v25 = sub_252E374D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_252917000, v24, v25, "Couldn't initialize FLOWSchemaFLOWDomainExecutionFailed", v26, 2u);
      MEMORY[0x2530AED00](v26, -1, -1);
    }
  }

  else
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_2814B0AF0);
    v27 = sub_252E36AC4();
    v21 = sub_252E374D4();
    if (os_log_type_enabled(v27, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_252917000, v27, v21, "Couldn't initialize failed FLOWSchemaFLOWDomainExecutionContext", v22, 2u);
      MEMORY[0x2530AED00](v22, -1, -1);
    }
  }
}

uint64_t sub_252D2E100()
{
  v0 = sub_252CC5E24(qword_2864AF070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A28, &qword_252E50370);
  result = swift_arrayDestroy();
  off_27F5458C0 = v0;
  return result;
}

uint64_t sub_252D2E184(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_252D2E5CC)(a2);
}

void *sub_252D2E234@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockUnsupportedTasksHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252D2E270(void *a1)
{
  v1 = a1;
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v8 = v7;

  if (v8)
  {
    v9 = v6;
    v10 = 1;
LABEL_41:
    sub_252929F10(v9, v10);
    return 0;
  }

  v11 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_40:
    v9 = v6;
    v10 = 0;
    goto LABEL_41;
  }

  while (1)
  {
    v12 = sub_252E378C4();
    if (!v12)
    {
      goto LABEL_40;
    }

LABEL_6:
    v35 = v12;
    if (qword_27F53F6E0 != -1)
    {
      swift_once();
    }

    v13 = off_27F5458C0 + 64;
    v14 = 1 << *(off_27F5458C0 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(off_27F5458C0 + 8);
    v17 = (v14 + 63) >> 6;
    v34 = v6;
    v39 = v6 + 32;
    v40 = v6 & 0xC000000000000001;
    v38 = off_27F5458C0;

    v18 = 0;
    v36 = v17;
    v37 = v13;
    if (v16)
    {
      break;
    }

LABEL_12:
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v17)
      {
        sub_252929F10(v34, 0);

        return 0;
      }

      v16 = *&v13[8 * v6];
      ++v18;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  while (1)
  {
    v6 = v18;
LABEL_15:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = (v6 << 9) | (8 * v19);
    v21 = *(v38[6] + v20);
    v22 = *(v38[7] + v20);

    v23 = 0;
LABEL_16:
    if (v40)
    {
      v24 = MEMORY[0x2530ADF00](v23, v34);
      v25 = __OFADD__(v23++, 1);
      if (v25)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v23 >= *(v11 + 16))
      {
        goto LABEL_38;
      }

      v24 = *(v39 + 8 * v23);

      v25 = __OFADD__(v23++, 1);
      if (v25)
      {
        goto LABEL_37;
      }
    }

    if ((*(*v24 + 256))() == v21)
    {
      break;
    }

LABEL_32:
    v18 = v6;
    v17 = v36;
    v13 = v37;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v26 = [v1 userTask];
  if (v26)
  {
    v27 = v11;
    v28 = v1;
    v29 = v26;
    v30 = [v26 attribute];

    v1 = v28;
    v11 = v27;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v22 + 16);
  v32 = 32;
  do
  {
    if (!v31)
    {

      goto LABEL_32;
    }

    v33 = *(v22 + v32);
    v32 += 8;
    --v31;
  }

  while (v33 != v30);

  if (v23 != v35)
  {
    goto LABEL_16;
  }

  sub_252929F10(v34, 0);
  return 1;
}

uint64_t sub_252D2E5CC()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D2E668, 0, 0);
}

uint64_t sub_252D2E668()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E95810, 0xD000000000000083, 0x8000000252E95840);
  v4 = *(v2 + 16);

  sub_252E362B4();

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_25295A234;
  v7 = v0[2];
  v6 = v0[3];

  return sub_25295959C(v6);
}

void sub_252D2E7D4(void *a1, void (*a2)(char *), void (*a3)(char *))
{
  v139 = sub_252E32E04();
  v138 = *(v139 - 8);
  v6 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_252E32E84();
  v142 = *(v143 - 1);
  v8 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v141 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36AB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v135 = v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v140 = v129 - v16;
  v136 = v17;
  MEMORY[0x28223BE20](v15);
  v145 = v129 - v18;
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_2814B09D8);
  aBlock = 0;
  v152 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD00000000000002ELL;
  v152 = 0x8000000252E95920;
  v20 = [a1 description];
  v21 = sub_252E36F34();
  v23 = v22;

  MEMORY[0x2530AD570](v21, v23);

  sub_252CC4A5C(aBlock, v152, 1, 0xD00000000000008CLL, 0x8000000252E95950);

  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v149 = a2;
  v150 = a3;
  v24[4] = a3;
  v25 = qword_27F53F498;

  v26 = a1;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v19, qword_27F544C70);
  v148 = "or AutomateHome Scene intent:\n";
  sub_252CC3D90(0x6574616D6F747541, 0xEE00656E65635320, 0xD00000000000008CLL, 0x8000000252E95950);
  v28 = sub_252D30828(v26);
  if (!v28)
  {
    v41 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v42 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v41[v42] = 5;
    [v41 setUserActivity_];
    v149(v41);

    return;
  }

  v30 = v28;
  v31 = v29;
  v144 = v19;
  v133 = v11;
  v134 = v10;
  type metadata accessor for HomeStore();
  v32 = static HomeStore.shared.getter();
  v33 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters;
  v147 = v31;
  v34 = *&v31[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];

  v36 = HomeStore.scenes(matching:)(v35);
  v38 = v37;

  if (v38)
  {
    aBlock = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    swift_willThrowTypedImpl();
    sub_252929F10(v36, 1);
    v39 = v147;
    v40 = v148;
LABEL_46:
    v128 = v149;
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v144, qword_27F544CE8);
    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E959E0, 0xD00000000000008CLL, v40 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 42);
    sub_252DB7C84();
    sub_252DB649C(0, 0, 1);

    v128(*(v146 + 3));

    return;
  }

  v40 = v148;
  if (!(v36 >> 62))
  {
    v39 = v147;
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_45:
    sub_252929F10(v36, 0);
    goto LABEL_46;
  }

  v127 = sub_252E378C4();
  v39 = v147;
  if (!v127)
  {
    goto LABEL_45;
  }

LABEL_11:
  v130 = v26;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2530ADF00](0, v36);
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      swift_once();
      goto LABEL_18;
    }

    v19 = *(v36 + 32);
  }

  sub_252929F10(v36, 0);
  v43 = *&v39[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask];
  v44 = *&v39[v33];
  v45 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v46 = v43;

  v47 = [v45 init];
  [v47 setUserTask_];
  type metadata accessor for HomeFilter();
  v48 = sub_252E37254();

  [v47 setFilters_];

  [v47 setTime_];
  v49 = [v47 filters];
  v50 = MEMORY[0x277D84F90];
  v132 = v30;
  if (v49)
  {
    v51 = v49;
    v52 = sub_252E37264();

    v50 = sub_252DD5A58(v52);
  }

  v53 = v148;
  v54 = sub_252C758E0(v50);

  v30 = sub_252DD6238(v54);

  v55 = v147;
  if (!v30)
  {
    v27 = 0xD00000000000008CLL;
    sub_2529515FC(3, 6, 0xD000000000000018, 0x8000000252E95A10);
    if (qword_27F53F4C0 == -1)
    {
LABEL_28:
      __swift_project_value_buffer(v144, qword_27F544CE8);
      sub_252CC4050(v27 - 93, 0x8000000252E95A30, 0xD00000000000008CLL, v53 | 0x8000000000000000, v27 - 114, 0x8000000252E80020, 49);
      sub_252DB7C84();
      sub_252DB649C(0, 0, 1);

      v149(*(v146 + 2));

      return;
    }

LABEL_55:
    swift_once();
    goto LABEL_28;
  }

  aBlock = 0;
  v152 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD000000000000029;
  v152 = 0x8000000252E800A0;
  v56 = sub_2529E8734();
  MEMORY[0x2530AD570](v56);

  sub_252CC3D90(aBlock, v152, 0xD00000000000008CLL, v53 | 0x8000000000000000);

  sub_252CC3D90(0xD000000000000012, 0x8000000252E800D0, 0xD00000000000008CLL, v53 | 0x8000000000000000);
  if (qword_27F53F580 != -1)
  {
    goto LABEL_51;
  }

LABEL_18:
  v55 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v131 = sub_252D2D190(205, 0x6E776F6E6B6E75, 0xE700000000000000);
  v57 = OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate;
  v58 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252D30E74(&qword_27F53FBB0, sub_25292A2F8);
  v59 = sub_252E373A4();

  v60 = sub_2529A37B0(v59);

  v61 = sub_2529E82CC(v132, v60);

  if (v61 >> 62)
  {
    v62 = sub_252E378C4();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v147;
  v129[1] = v30;
  if (v62)
  {
    v129[0] = v19;
    if ((v61 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x2530ADF00](0, v61);
      goto LABEL_24;
    }

    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(v61 + 32);
LABEL_24:
      v64 = v63;

      aBlock = 0;
      v152 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E80110);
      v65 = [v64 uniqueIdentifier];
      v66 = v141;
      sub_252E32E64();

      sub_252D30E74(&qword_27F5404A8, MEMORY[0x277CC95F0]);
      v67 = v143;
      v68 = sub_252E37D94();
      MEMORY[0x2530AD570](v68);

      (*(v142 + 8))(v66, v67);
      MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E80150);
      sub_252CC4050(aBlock, v152, 0xD00000000000008CLL, v148 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 61);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v129[0];

      v70 = sub_252D30330(v64, inited);
      swift_setDeallocating();
      v71 = *(inited + 16);
      swift_arrayDestroy();
      if (v131)
      {
        v72 = [v130 verb];
        v73 = sub_252E36F34();
        v75 = v74;

        sub_252D2D83C(v73, v75);
        v53 = v147;
      }

      sub_252E375C4();
      v76 = v145;
      sub_252E36A74();
      sub_252DB7C84();
      sub_252DB649C(0, 0, 1);

      v149(v70);

      (*(v133 + 8))(v76, v134);
      return;
    }

    __break(1u);
    goto LABEL_55;
  }

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  v148 = *&v30[OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate];
  v143 = *(v19 + v57);
  v78 = v133;
  v79 = *(v133 + 16);
  v80 = v136 + 7;
  if (!v77)
  {
    v107 = v135;
    v108 = v134;
    v79(v135, v145, v134);
    v109 = (*(v78 + 80) + 56) & ~*(v78 + 80);
    v110 = (v80 + v109) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    v113 = v150;
    *(v112 + 2) = v149;
    *(v112 + 3) = v113;
    *(v112 + 4) = v146;
    *(v112 + 5) = sub_252B40DF0;
    *(v112 + 6) = v24;
    (*(v78 + 32))(&v112[v109], v107, v108);
    *&v112[v110] = v131;
    v114 = v132;
    *&v112[v111] = v132;
    *&v112[(v111 + 15) & 0xFFFFFFFFFFFFFFF8] = v19;
    v115 = swift_allocObject();

    v116 = v114;

    *(v115 + 16) = sub_252B8DF84(v130);
    v117 = sub_252DB7C84()[5];

    v118 = v137;
    sub_252E32DF4();
    sub_252E32D44();
    v120 = v119;
    (*(v138 + 8))(v118, v139);
    v121 = v120 * 1000.0;
    if (COERCE__INT64(fabs(v120 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v118 = MEMORY[0x277D84F90];
      if (v121 > -9.22337204e18)
      {
        if (v121 < 9.22337204e18)
        {
          *(v117 + 16) = v121;

          if (!(v118 >> 62))
          {
LABEL_43:
            v122 = swift_allocObject();
            v122[2] = v116;
            v122[3] = v115;
            v122[4] = sub_252D30EBC;
            v122[5] = v112;
            v123 = v143;
            v122[6] = v118;
            v122[7] = v123;
            v155 = sub_252B40E60;
            v156 = v122;
            aBlock = MEMORY[0x277D85DD0];
            v152 = 1107296256;
            v153 = sub_2529E0210;
            v154 = &block_descriptor_22;
            v124 = _Block_copy(&aBlock);
            v125 = v116;

            v126 = v123;

            [v148 addTrigger:v125 completionHandler:v124];
            _Block_release(v124);

            (*(v133 + 8))(v145, v134);

            return;
          }

LABEL_63:
          sub_252E378C4();
          goto LABEL_43;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v81 = v77;
  v129[0] = v19;
  v82 = v134;
  v79(v140, v145, v134);
  v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v84 = (v80 + v83) & 0xFFFFFFFFFFFFFFF8;
  v142 = v81;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_252B40DF0;
  *(v88 + 24) = v24;
  v89 = v88 + v83;
  v90 = v129[0];
  (*(v78 + 32))(v89, v140, v82);
  *(v88 + v84) = v131;
  v91 = v146;
  *(v88 + v85) = v146;
  *(v88 + v86) = v142;
  *(v88 + v87) = v90;
  v92 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
  v93 = v150;
  *v92 = v149;
  v92[1] = v93;
  v94 = swift_allocObject();
  v95 = v142;

  v96 = v132;

  *(v94 + 16) = sub_252B8DF84(v130);
  v97 = sub_252DB7C84()[5];

  v98 = v137;
  sub_252E32DF4();
  sub_252E32D44();
  v100 = v99;
  (*(v138 + 8))(v98, v139);
  v101 = v100 * 1000.0;
  if (COERCE__INT64(fabs(v100 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  v91 = v147;
  if (v101 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v101 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v97 + 16) = v101;

  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_59:
    sub_252E378C4();
  }

  v102 = qword_27F53F4E8;
  v103 = v96;
  if (v102 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v144, qword_27F544D60);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E801B0, 0xD000000000000071, 0x8000000252E801E0);
  sub_252BF1D38(v95, MEMORY[0x277D84F90], v143);
  v104 = swift_allocObject();
  v104[2] = v95;
  v104[3] = v94;
  v104[4] = sub_252D30F94;
  v104[5] = v88;
  v155 = sub_252B40F60;
  v156 = v104;
  aBlock = MEMORY[0x277D85DD0];
  v152 = 1107296256;
  v153 = sub_252BF09C4;
  v154 = &block_descriptor_20_0;
  v105 = _Block_copy(&aBlock);
  v106 = v103;

  [v148 addEventTriggerFromBuilder:v95 completionHandler:v105];
  _Block_release(v105);

  (*(v133 + 8))(v145, v134);
}

void sub_252D2FE00(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t, id), int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(void), uint64_t a11)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a9;

    v16 = sub_252D30330(a8, inited);
    swift_setDeallocating();
    v17 = *(inited + 16);
    swift_arrayDestroy();
    a3(a5, a6, v16);
  }

  else
  {
    if (a2)
    {
      v18 = a7;
      v20 = a2;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544C70);
      sub_252E379F4();

      swift_getErrorValue();
      v22 = sub_252E37E54();
      MEMORY[0x2530AD570](v22);

      sub_252CC4050(0xD00000000000001CLL, 0x8000000252E80290, 0xD00000000000008CLL, 0x8000000252E95950, 0xD00000000000001ALL, 0x8000000252E80020, 77);

      a7 = v18;
    }

    a10(*(a7 + 32));
  }
}

void sub_252D30010(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, id), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (a1)
  {
    v13 = a1;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544C70);
    sub_252E379F4();

    swift_getErrorValue();
    v15 = sub_252E37E54();
    MEMORY[0x2530AD570](v15);

    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E80290, 0xD00000000000008CLL, 0x8000000252E95950, 0xD00000000000001ALL, 0x8000000252E80020, 84);

    sub_252DB7C84();
    sub_252DB649C(0, 0, 1);

    a2(*(a4 + 32));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a10;

    v20 = sub_252D30330(a9, inited);
    swift_setDeallocating();
    v21 = *(inited + 16);
    swift_arrayDestroy();
    a5(a7, a8, v20);
  }
}

id sub_252D30258(void *a1)
{
  result = [a1 automatableTask];
  if (result)
  {
    v2 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 attribute];
      return (v5 == 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_252D302F4()
{
  type metadata accessor for AutomateHomeIntentSceneHandleDelegate();
  v0 = swift_allocObject();
  sub_252B3E6EC();
  return v0;
}

id sub_252D30330(void *a1, unint64_t a2)
{
  v34 = a1;
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v11 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v10[v11] = 4;
  v36 = v10;
  [v10 setUserActivity_];
  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v3; v12; i = v3)
  {
    v13 = 0;
    v38 = a2 & 0xFFFFFFFFFFFFFF8;
    v39 = a2 & 0xC000000000000001;
    v37 = v4 + 32;
    v14 = MEMORY[0x277D84F90];
    while (v39)
    {
      v15 = a2;
      v16 = MEMORY[0x2530ADF00](v13, a2);
      a2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      (*(v4 + 16))(v9, v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_2529F8324(0, v14[2] + 1, 1, v14);
      }

      v18 = v14[2];
      v17 = v14[3];
      if (v18 >= v17 >> 1)
      {
        v14 = sub_2529F8324(v17 > 1, v18 + 1, 1, v14);
      }

      v14[2] = v18 + 1;
      v19 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18;
      v3 = i;
      (*(v4 + 32))(v19, v9, i);
      ++v13;
      v20 = a2 == v12;
      a2 = v15;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    if (v13 >= *(v38 + 16))
    {
      goto LABEL_17;
    }

    v15 = a2;
    v16 = *(a2 + 8 * v13 + 32);

    a2 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v12 = sub_252E378C4();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_20:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544C70);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E95A60);
  v22 = v34;
  v23 = [v34 uniqueIdentifier];
  v24 = v35;
  sub_252E32E64();

  sub_252D30E74(&qword_27F5404A8, MEMORY[0x277CC95F0]);
  v25 = i;
  v26 = sub_252E37D94();
  MEMORY[0x2530AD570](v26);

  v27 = *(v4 + 8);
  v27(v24, v25);
  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v28 = MEMORY[0x2530AD730](v14, v25);
  MEMORY[0x2530AD570](v28);

  sub_252CC3D90(v41, v42, 0xD000000000000087, 0x8000000252E90DC0);

  v29 = [v22 uniqueIdentifier];
  sub_252E32E64();

  v30 = sub_252E32E44();
  v27(v24, v25);
  v31 = v36;
  [v36 setAutomationIdentifier_];

  v32 = sub_252E37254();

  [v31 setAutomatedEntityIdentifiers_];

  return v31;
}

id sub_252D30828(void *a1)
{
  v2 = [a1 automatableTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for ControlAutomateHomeIntent();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_6:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C70);
    sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD000000000000087, 0x8000000252E90DC0, 0x5F28706172776E75, 0xEA0000000000293ALL, 62);
    return 0;
  }

  v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v7 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v8 = v5;

  v9 = [v7 init];
  [v9 setUserTask_];
  type metadata accessor for HomeFilter();
  v10 = sub_252E37254();

  [v9 setFilters_];

  [v9 setTime_];
  v11 = [v9 filters];
  if (v11)
  {
    v12 = v11;
    v13 = sub_252E37264();

    v14 = sub_252DD5A58(v13);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = sub_252C758E0(v14);

  v17 = sub_252DD6238(v16);

  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  if (([v18 areAutomationBuildersSupported] & 1) == 0)
  {

LABEL_18:
    v25 = [a1 trigger];
    if (v25)
    {
      v26 = v25;
      v27 = sub_252DEC30C();

      if (v27)
      {
        return v27;
      }
    }

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E70);
    [a1 trigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
    v29 = sub_252E36F94();
    MEMORY[0x2530AD570](v29);

    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E95A90);
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000087, 0x8000000252E90DC0, 0x5F28706172776E75, 0xEA0000000000293ALL, 77);

    goto LABEL_25;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E95AB0);
  [a1 trigger];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
  v20 = sub_252E36F94();
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000087, 0x8000000252E90DC0);

  v21 = [a1 trigger];
  if (v21)
  {
    v22 = v21;
    v23 = sub_252DEB354(v18);

    if (v23)
    {

      return v23;
    }
  }

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E70);
  [a1 trigger];
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E95A90);
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000087, 0x8000000252E90DC0, 0x5F28706172776E75, 0xEA0000000000293ALL, 71);

LABEL_25:

  return 0;
}

uint64_t sub_252D30E74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252D30EBC(void *a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_252D30010(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252D30F94(uint64_t a1, void *a2)
{
  v5 = *(sub_252E36AB4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_252D2FE00(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_252D31084(uint64_t a1)
{
  v1 = *(a1 + 16);

  sub_252E362B4();
}

BOOL sub_252D31118(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 113;
}

uint64_t sub_252D3117C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252D311A0, 0, 0);
}

uint64_t sub_252D311A0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);

  sub_252943B8C(sub_252D312D4, v1, v3, v4);

  v5 = v0[1];

  return v5();
}

void *sub_252D31270@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for InvalidInputForCurrentDeviceStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D31308()
{
  type metadata accessor for BatteryHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D31338(void *a1, uint64_t a2)
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      type metadata accessor for MutableHomeUserTask();
      swift_initStackObject();
      v9 = v5;
      sub_252D6CA80(v9)[3] = a2;
      type metadata accessor for ControlHomeIntent.Builder();
      swift_allocObject();
      v10 = ControlHomeIntent.Builder.init()();
      v11 = sub_252D6CB58();
      v12 = (*(*v10 + 184))();

      v13 = sub_252B4EEFC(v8);

      v14 = (*(*v12 + 208))(v13);

      v16 = (*(*v14 + 224))(v15);

      return v16;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000074, 0x8000000252E6D740, 0xD000000000000017, 0x8000000252E95C00, 130);
  return 0;
}

void sub_252D31590(void *a1, void (*a2)(void))
{
  v4 = [a1 filters];
  if (!v4)
  {
LABEL_6:
    if (qword_27F53F498 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  if (!v7)
  {

    goto LABEL_6;
  }

  v57 = v7;
  type metadata accessor for HomeStore();
  v8 = static HomeStore.shared.getter();
  v9 = HomeStore.services(matching:supporting:)(v6, 0);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);

    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v13 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v13] = 102;
    [v12 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v14 = sub_252E37254();
    [v12 setEntityResponses_];

    (a2)(v12);
    return;
  }

  v59 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    v19 = sub_252E378C4();
    if (v19)
    {
      goto LABEL_10;
    }

LABEL_23:
    v24 = MEMORY[0x277D84F90];
LABEL_24:
    sub_252929F10(v9, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_252E3C130;
    v26 = v57;
    *(v25 + 32) = v57;
    v58 = v25;
    v27 = *(v24 + 16);
    v28 = 32;
    do
    {
      if (!v27)
      {
        v39 = v57;
        goto LABEL_36;
      }

      v29 = *(v24 + v28);
      v28 += 8;
      --v27;
    }

    while (v29 != 43);
    v30 = v57;
    v31 = [a1 userTask];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 attribute];

      if (v33 == 43)
      {
        v34 = sub_252D31338(a1, 45);
        if (v34)
        {
          v35 = v34;
          v36 = [v34 userTask];
          if (v36)
          {
            v37 = v36;

            v38 = v37;
            MEMORY[0x2530AD700]();
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v55 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
              v26 = v57;
            }

            sub_252E372D4();

LABEL_44:
            v25 = v58;
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      sub_252C515AC();
    }

LABEL_36:
    v40 = *(v24 + 16);
    v41 = 32;
    do
    {
      if (!v40)
      {

        goto LABEL_46;
      }

      v42 = *(v24 + v41);
      v41 += 8;
      --v40;
    }

    while (v42 != 43);

    v43 = sub_252D31338(a1, 43);
    if (!v43)
    {
      goto LABEL_46;
    }

    v44 = v43;
    v45 = [v43 userTask];
    if (v45)
    {
      v46 = v45;
      MEMORY[0x2530AD700]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
        v26 = v57;
      }

      sub_252E372D4();

      goto LABEL_44;
    }

LABEL_46:
    v47 = sub_252B4CA9C(v6, v25, 0, 1);
    v49 = v48;

    if (v49)
    {
      v50 = v47;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v51 = sub_252E36AD4();
      __swift_project_value_buffer(v51, qword_27F544C70);
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E95B80, 0xD000000000000021, 0x8000000252E68B10, 54);

      v52 = parse(error:with:)(v47, a1);
      a2();

      sub_252927D3C(v47);
      sub_252927D3C(v47);
    }

    else
    {
      v53 = v47;
      sub_252990634(v53);
      (a2)(v53);

      sub_252927D3C(v47);
      sub_252927D3C(v47);
    }

    return;
  }

  v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_10:
  v56 = a2;
  v20 = 0;
  a2 = (v9 & 0xC000000000000001);
  while (a2)
  {
    MEMORY[0x2530ADF00](v20, v9);
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      v24 = v59;
      a2 = v56;
      goto LABEL_24;
    }

LABEL_14:
    v23 = sub_252CD95D8();

    sub_25297A864(v23);
    ++v20;
    if (v22 == v19)
    {
      goto LABEL_19;
    }
  }

  if (v20 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v9 + 8 * v20 + 32);

    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_7:
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007BLL, 0x8000000252E95B80, 0xD000000000000021, 0x8000000252E68B10, 24);
  v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v17 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v16[v17] = 109;
  [v16 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v18 = sub_252E37254();
  [v16 setEntityResponses_];

  (a2)(v16);
}

BOOL sub_252D31D1C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_15:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  if ([v2 taskType] == 4)
  {

    goto LABEL_5;
  }

  v4 = [v3 taskType];

  if (v4 == 5)
  {
LABEL_5:
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      if (v7 == 43)
      {
        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v8 = [a1 userTask];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 attribute];

      if (v10 == 45)
      {
        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      return v14 == 44;
    }

    goto LABEL_15;
  }

  return 0;
}

unint64_t ControlHomeFlashlightReformationFlow.Scenario.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_252D31EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = "CurrentTemperature";
  }

  else
  {
    v5 = "reformToSettingsLight";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (*a2)
  {
    v8 = "reformToSettingsLight";
  }

  else
  {
    v8 = "CurrentTemperature";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252D31F54()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D31FD4()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D32040()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D320C8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "reformToSettingsLight";
  }

  else
  {
    v3 = "CurrentTemperature";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_252D32114@<X0>(char *a1@<X8>)
{
  v2 = sub_252E37B74();

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

unint64_t ControlHomeFlashlightReformationFlow.State.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6C616974696E69;
  }

  *v0;
  return result;
}

uint64_t sub_252D321B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6C616974696E69;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000252E68790;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x6C616974696E69;
  }

  if (*a2)
  {
    v7 = 0x8000000252E68790;
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
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D32260()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D322E8()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252D3235C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D323EC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000252E68790;
  v3 = 0x6C616974696E69;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_252D32430(const void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v7 = *MEMORY[0x277D5BED0];
  v8 = sub_252E33DE4();
  (*(*(v8 - 8) + 104))(v3 + v6, v7, v8);
  v9 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID);
  *v9 = 0xD000000000000029;
  v9[1] = 0x8000000252E95EB0;
  memcpy((v3 + 16), a1, 0x1F8uLL);
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse;
  v11 = sub_252E34164();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3 + v10, a2, v11);
  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_state) = 0;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_252E36F04();
  v16 = [v14 initWithSuiteName_];

  *(inited + 16) = v16;
  LODWORD(inited) = sub_2529AEF14();

  (*(v12 + 8))(a2, v11);
  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario) = inited != 3;
  return v3;
}

uint64_t sub_252D3260C(uint64_t a1)
{
  v2[416] = v1;
  v2[415] = a1;
  v3 = sub_252E36AB4();
  v2[417] = v3;
  v4 = *(v3 - 8);
  v2[418] = v4;
  v5 = *(v4 + 64) + 15;
  v2[419] = swift_task_alloc();
  v6 = sub_252E33DE4();
  v2[420] = v6;
  v7 = *(v6 - 8);
  v2[421] = v7;
  v8 = *(v7 + 64) + 15;
  v2[422] = swift_task_alloc();
  v2[423] = swift_task_alloc();
  v9 = sub_252E34284();
  v2[424] = v9;
  v10 = *(v9 - 8);
  v2[425] = v10;
  v11 = *(v10 + 64) + 15;
  v2[426] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0) - 8) + 64) + 15;
  v2[427] = swift_task_alloc();
  v13 = sub_252E34354();
  v2[428] = v13;
  v14 = *(v13 - 8);
  v2[429] = v14;
  v15 = *(v14 + 64) + 15;
  v2[430] = swift_task_alloc();
  v2[431] = swift_task_alloc();
  v16 = sub_252E341A4();
  v2[432] = v16;
  v17 = *(v16 - 8);
  v2[433] = v17;
  v18 = *(v17 + 64) + 15;
  v2[434] = swift_task_alloc();
  v19 = *(*(sub_252E34104() - 8) + 64) + 15;
  v2[435] = swift_task_alloc();
  v20 = sub_252E339C4();
  v2[436] = v20;
  v21 = *(v20 - 8);
  v2[437] = v21;
  v22 = *(v21 + 64) + 15;
  v2[438] = swift_task_alloc();
  v23 = sub_252E34164();
  v2[439] = v23;
  v24 = *(v23 - 8);
  v2[440] = v24;
  v25 = *(v24 + 64) + 15;
  v2[441] = swift_task_alloc();
  v2[442] = swift_task_alloc();
  v2[443] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D3298C, 0, 0);
}

uint64_t sub_252D3298C()
{
  v218 = v0;
  v1 = v0;
  v2 = v0[416];
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario;
  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario))
  {
    v4 = "reformToSettingsLight";
  }

  else
  {
    v4 = "CurrentTemperature";
  }

  v5 = 0x8000000252E68740;
  if ((*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario) & 1) == 0 && (v4 | 0x8000000000000000) == 0x8000000252E68740)
  {

LABEL_8:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = v1[443];
    v8 = v1[442];
    v9 = v1[440];
    v10 = v1[439];
    v210 = v1[437];
    v214 = v1[436];
    v202 = v1[435];
    v204 = v1[438];
    v11 = v1[416];
    v206 = v1[415];
    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DA8);
    sub_252E379F4();

    __dst[0] = 0xD000000000000026;
    __dst[1] = 0x8000000252E95D80;
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = sub_252E36F04();
    v15 = [v13 integerForKey_];

    v1[414] = v15;
    v16 = sub_252E37D94();
    MEMORY[0x2530AD570](v16);

    sub_252CC4050(__dst[0], __dst[1], 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 71);

    memcpy(v1 + 254, (v11 + 16), 0x1F8uLL);
    v17 = v11;
    memcpy(__dst, (v11 + 16), 0x1F8uLL);
    v18 = *(v9 + 16);
    v18(v8, v17 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v10);
    sub_2529353AC((v1 + 254), (v1 + 317));
    sub_25294CF38(__dst, v8, v7);
    v19 = *(v9 + 8);
    v19(v8, v10);
    memcpy(v1 + 191, __dst, 0x1F8uLL);
    sub_252935408((v1 + 191));
    v20 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID);
    v21 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID + 8);
    v18(v8, v7, v10);

    sub_252E340F4();
    sub_252E339B4();
    sub_252E33B34();
    (*(v210 + 8))(v204, v214);
    v19(v7, v10);
    goto LABEL_11;
  }

  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario);
  v6 = sub_252E37DB4();

  if (v6)
  {
    goto LABEL_8;
  }

  if (*(v2 + v3))
  {
    v5 = 0x8000000252E68760;
  }

  if (*(v2 + v3) == 1 && 0x8000000252E68760 == v5)
  {
  }

  else
  {
    *(v2 + v3);
    v35 = sub_252E37DB4();

    if ((v35 & 1) == 0)
    {
      v66 = v1[415];
      sub_252E33B24();
      goto LABEL_11;
    }
  }

  v36 = v1[416];
  if ((*(v36 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_state) & 1) == 0)
  {
    *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_state) = 1;
    if (qword_27F53F500 != -1)
    {
      goto LABEL_70;
    }

    while (1)
    {
      v42 = v1[441];
      v43 = v1[440];
      v44 = v1[439];
      v45 = v1[416];
      v46 = sub_252E36AD4();
      __swift_project_value_buffer(v46, qword_27F544DA8);
      sub_252E379F4();

      __dst[0] = 0xD000000000000026;
      __dst[1] = 0x8000000252E95D80;
      v47 = [objc_opt_self() standardUserDefaults];
      v48 = sub_252E36F04();
      v49 = [v47 integerForKey_];

      v1[410] = v49;
      v50 = sub_252E37D94();
      MEMORY[0x2530AD570](v50);

      sub_252CC4050(__dst[0], __dst[1], 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 83);

      (*(v43 + 16))(v42, v45 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v44);
      v51 = (*(v43 + 88))(v42, v44);
      v52 = v1[441];
      v53 = v1[440];
      v54 = v1[439];
      if (v51 != *MEMORY[0x277D5C160])
      {
        (*(v53 + 8))(v1[441], v54);
        goto LABEL_53;
      }

      v55 = v1[434];
      v56 = v1[433];
      v57 = v1[432];
      v58 = v1[426];
      v59 = v1[425];
      v60 = v1[424];
      (*(v53 + 96))(v1[441], v54);
      (*(v56 + 32))(v55, v52, v57);
      sub_252E34184();
      v61 = sub_252E34254();
      (*(v59 + 8))(v58, v60);
      v62 = *(v61 + 16);
      if (!v62)
      {
        break;
      }

      v63 = 0;
      v64 = v1[429];
      while (v63 < *(v61 + 16))
      {
        (*(v64 + 16))(v1[430], v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v1[428]);
        if (sub_252E342C4())
        {
          v118 = v1[429];
          v119 = v1[428];
          v120 = v1[427];
          v121 = v1[430];

          (*(v118 + 32))(v120, v121, v119);
          v65 = 0;
          goto LABEL_51;
        }

        ++v63;
        (*(v64 + 8))(v1[430], v1[428]);
        if (v62 == v63)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_70:
      swift_once();
    }

LABEL_30:

    v65 = 1;
LABEL_51:
    v122 = v1[429];
    v123 = v1[428];
    v124 = v1[427];
    (*(v122 + 56))(v124, v65, 1, v123);
    if ((*(v122 + 48))(v124, 1, v123) == 1)
    {
      v125 = v1[427];
      (*(v1[433] + 8))(v1[434], v1[432]);
      sub_25293847C(v125, &qword_27F540320, &qword_252E3C1A0);
LABEL_53:
      v126 = 1;
    }

    else
    {
      (*(v1[429] + 32))(v1[431], v1[427], v1[428]);
      sub_252E342D4();
      sub_252E34DA4();

      sub_252AEA788((v1 + 395), (v1 + 399));
      if (v1[402])
      {
        sub_252E34F84();
        if (swift_dynamicCast())
        {
          v165 = v1[416];
          v166 = v1[413];

          v167 = *(v165 + 208);
          v168 = *(v167 + 16);

          v169 = 0;
          while (1)
          {
            v126 = v168 == v169;
            if (v168 == v169)
            {
              goto LABEL_66;
            }

            if (v169 >= *(v167 + 16))
            {
              break;
            }

            LOBYTE(__dst[0]) = *(v167 + v169 + 32);
            if (StateSemantic.rawValue.getter() == 6710895 && v171 == 0xE300000000000000)
            {

LABEL_66:

              v172 = v1[434];
              v173 = v1[433];
              v174 = v1[432];
              v175 = v1[431];
              v176 = v1[429];
              v177 = v1[428];
              sub_25293847C((v1 + 395), &qword_27F541E80, &qword_252E3DFA0);
              (*(v176 + 8))(v175, v177);
              (*(v173 + 8))(v172, v174);
              goto LABEL_54;
            }

            ++v169;
            v170 = sub_252E37DB4();

            if (v170)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_72:
          swift_once();
LABEL_40:
          v88 = sub_252E36AD4();
          __swift_project_value_buffer(v88, qword_27F544DA8);
          sub_252CC4050(0xD00000000000001FLL, 0x8000000252E95D30, 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 110);
          if (qword_27F53F618 != -1)
          {
            swift_once();
          }

          v193 = v1[442];
          v194 = v1[443];
          v200 = v1[440];
          v192 = v1[439];
          v197 = v1[438];
          v198 = v1[437];
          v199 = v1[436];
          v89 = v1[423];
          v90 = v1[420];
          v91 = v1[419];
          v92 = v1[418];
          v93 = v1[417];
          v94 = v1[416];
          v195 = v1[435];
          v196 = v1[415];
          sub_252E375E4();
          sub_252E36AA4();
          v1 = v213;
          sub_252E36A74();
          (*(v92 + 8))(v91, v93);
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8FEB0);
          v201(v89, v209 + v203, v90);
          sub_252D34BFC(&qword_27F5448F0, MEMORY[0x277D5BEE0]);
          v95 = sub_252E37D94();
          MEMORY[0x2530AD570](v95);

          v205(v89, v90);
          MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E95D50);
          sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008BLL, 0x8000000252E95C50);

          memcpy(v213 + 65, (v94 + 16), 0x1F8uLL);
          memcpy(__dst, (v94 + 16), 0x1F8uLL);
          v96 = *(v200 + 16);
          v96(v193, v94 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v192);
          sub_2529353AC((v1 + 65), (v1 + 128));
          sub_25294CF38(__dst, v193, v194);
          v97 = *(v200 + 8);
          v97(v193, v192);
          memcpy(v213 + 2, __dst, 0x1F8uLL);
          sub_252935408((v213 + 2));
          v99 = *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID);
          v98 = *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID + 8);
          v96(v193, v194, v192);

          sub_252E340F4();
          sub_252E339B4();
          sub_252E33B34();
          (*(v198 + 8))(v197, v199);
          v97(v194, v192);
          goto LABEL_11;
        }

        v184 = v1[434];
        v185 = v1[433];
        v186 = v1[432];
        v187 = v1[431];
        v188 = v1[429];
        v189 = v1[428];
        sub_25293847C((v1 + 395), &qword_27F541E80, &qword_252E3DFA0);
        (*(v188 + 8))(v187, v189);
        (*(v185 + 8))(v184, v186);
        v126 = 0;
      }

      else
      {
        v178 = v1[434];
        v179 = v1[433];
        v180 = v1[432];
        v181 = v1[431];
        v182 = v1[429];
        v183 = v1[428];
        sub_25293847C((v1 + 395), &qword_27F541E80, &qword_252E3DFA0);
        (*(v182 + 8))(v181, v183);
        (*(v179 + 8))(v178, v180);
        sub_25293847C((v1 + 399), &qword_27F541E80, &qword_252E3DFA0);
        v126 = 0;
      }
    }

LABEL_54:
    v127 = v1[416];
    type metadata accessor for ControlHomeIntent.Builder();
    swift_allocObject();
    v128 = ControlHomeIntent.Builder.init()();
    v129 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v130 = sub_252E36F04();
    v131 = [v129 initWithIdentifier:0 displayString:v130];

    v132 = v131;
    [v132 setBoolValue_];
    [v132 setType_];

    v133 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v134 = sub_252E36F04();
    v135 = [v133 initWithIdentifier:0 displayString:v134];

    v136 = v135;
    [v136 setTaskType_];
    [v136 setAttribute_];
    [v136 setValue_];

    v137 = (*(*v128 + 184))(v136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544910, &unk_252E58BE0);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v139.n128_f64[0] = HomeFilter.Builder.init()();
    v141 = (*(*v140 + 624))(1, v139);

    v143 = (*(*v141 + 760))(v142);

    *(v138 + 32) = v143;
    v144 = (*(*v137 + 208))(v138);

    v208 = (*(*v144 + 224))(v145);

    v146 = 0;
    if (*(v127 + 400) != 22)
    {
      LOBYTE(__dst[0]) = *(v127 + 400);
      v146 = sub_252AB54DC();
    }

    v212 = v1[416];
    v216 = v1[415];
    v147 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    swift_beginAccess();
    v148 = *(v147 + 22);

    v149 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v149 + 136), (v1 + 380));

    v150 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

    v151 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
    v1[388] = v151;
    v1[389] = &off_2864BA730;
    v1[385] = v150;
    type metadata accessor for ControlHomeReformConfirmationStrategy();
    v152 = swift_allocObject();
    v153 = v1;
    v154 = __swift_mutable_project_boxed_opaque_existential_1((v1 + 385), v151);
    v155 = *(v151 - 8);
    v156 = *(v155 + 64) + 15;
    v157 = swift_task_alloc();
    v158 = v154;
    v1 = v153;
    (*(v155 + 16))(v157, v158, v151);
    v159 = *v157;
    v152[12] = v151;
    v152[13] = &off_2864BA730;
    v152[8] = 0;
    v152[9] = v159;
    v152[14] = v146;
    v152[2] = v148;
    sub_252927BEC(v153 + 190, (v152 + 3));
    __swift_destroy_boxed_opaque_existential_1(v153 + 385);

    v160 = v208;

    v161 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v161 + 96), (v153 + 390));

    v153[411] = v160;
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5448F8, &unk_252E58BB0);
    v163 = *(v162 + 48);
    v164 = *(v162 + 52);
    swift_allocObject();
    sub_252D34BFC(&qword_27F544618, type metadata accessor for ControlHomeReformConfirmationStrategy);
    v153[412] = sub_252E333C4();
    sub_252C8F548();

    sub_252E33AC4();

    goto LABEL_11;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v37 = sub_252E36804();
  v39 = v38;

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_252E3C290;
    *(v40 + 32) = 25705;
    v41 = v40 + 32;
    *(v40 + 72) = MEMORY[0x277D837D0];
    *(v40 + 40) = 0xE200000000000000;
    *(v40 + 48) = v37;
    *(v40 + 56) = v39;
    sub_252CC630C(v40);
    swift_setDeallocating();
    sub_25293847C(v41, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v67 = [objc_opt_self() sharedAnalytics];
  if (v67)
  {
    v68 = v67;

    sub_252CC1408(v69);

    v70 = sub_252E36E24();

    [v68 logEventWithType:6503 context:v70];
  }

  v71 = v1[423];
  v72 = v1[422];
  v73 = v1[421];
  v74 = v1[420];
  v75 = v1[416];
  type metadata accessor for HomeAutomationUserDefaults();
  v213 = v1;
  v76 = swift_allocObject();
  v77 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v78 = sub_252E36F04();
  v79 = [v77 initWithSuiteName_];

  *(v76 + 16) = v79;
  v80 = sub_2529AEF14();

  swift_setDeallocating();
  v1 = v213;
  swift_deallocClassInstance();
  v81 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  swift_beginAccess();
  v209 = v75;
  v203 = v81;
  v201 = *(v73 + 16);
  v201(v71, v75 + v81, v74);
  (*(v73 + 104))(v72, *MEMORY[0x277D5BED8], v74);
  LOBYTE(v81) = sub_252E33DD4();
  v82 = *(v73 + 8);
  v82(v72, v74);
  v205 = v82;
  v82(v71, v74);
  if (v81)
  {
    v83 = swift_allocObject();
    v84 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v85 = sub_252E36F04();
    v86 = [v84 initWithSuiteName_];

    *(v83 + 16) = v86;
    if (v80 == 2)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    sub_2529AF19C(v87);

    swift_setDeallocating();
    swift_deallocClassInstance();
    if (qword_27F53F500 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_72;
  }

  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v100 = v213[419];
  v101 = v213[418];
  v102 = v213[417];
  sub_252E375E4();
  sub_252E36AA4();
  v191 = MEMORY[0x277D84F90];
  LOBYTE(v190) = 2;
  sub_252E36A74();
  (*(v101 + 8))(v100, v102);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v103 = v213[423];
  v104 = v213[420];
  v105 = sub_252E36AD4();
  __swift_project_value_buffer(v105, qword_27F544DA8);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8FEB0);
  v201(v103, v209 + v203, v104);
  sub_252D34BFC(&qword_27F5448F0, MEMORY[0x277D5BEE0]);
  v106 = sub_252E37D94();
  MEMORY[0x2530AD570](v106);

  v205(v103, v104);
  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E95C20);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008BLL, 0x8000000252E95C50);

  sub_252CC4050(0xD000000000000013, 0x8000000252E95CE0, 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 121);
  v107 = swift_allocObject();
  v108 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v109 = sub_252E36F04();
  v110 = [v108 initWithSuiteName_];

  *(v107 + 16) = v110;
  if (v110)
  {
    v213[409] = -1;
    v111 = sub_252E37E04();
    v112 = sub_252E36F04();
    [v110 setObject:v111 forKey:v112];

    swift_unknownObjectRelease();
  }

  v113 = v213[438];
  v114 = v213[437];
  v115 = v213[436];
  v116 = v213[435];
  v117 = v213[415];
  (*(v213[440] + 16))(v213[443], v213[416] + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v213[439]);
  sub_252E340F4();
  sub_252E339B4();
  sub_252E33B34();
  (*(v114 + 8))(v113, v115);
LABEL_11:
  v22 = v1[443];
  v23 = v1[442];
  v24 = v1[441];
  v25 = v1[438];
  v26 = v1[435];
  v27 = v1[434];
  v28 = v1[431];
  v29 = v1[430];
  v30 = v1[427];
  v31 = v1;
  v32 = v1[426];
  v207 = v31[423];
  v211 = v31[422];
  v215 = v31[419];

  v33 = v31[1];

  return v33();
}

uint64_t sub_252D34524(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_252E33DE4();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544908, &unk_252E58BC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540410, qword_252E54EA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  (*(v14 + 16))(v17, a1, v13);
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277D5BC38])
  {
    return (*(v14 + 8))(v17, v13);
  }

  (*(v14 + 96))(v17, v13);
  (*(v19 + 32))(v22, v17, v18);
  sub_252E33D94();
  (*(v19 + 8))(v22, v18);
  v23 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {
    return sub_25293847C(v6, &qword_27F540780, &unk_252E50210);
  }

  v25 = *(v23 + 32);
  v25(v12, v6, v7);
  v26 = v29;
  v25(v29, v12, v7);
  v27 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v28 = v30;
  swift_beginAccess();
  (*(v23 + 40))(v28 + v27, v26, v7);
  return swift_endAccess();
}

uint64_t ControlHomeFlashlightReformationFlow.deinit()
{
  memcpy(v7, (v0 + 16), 0x1F8uLL);
  sub_252935408(v7);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v4 = sub_252E33DE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID + 8);

  return v0;
}

uint64_t ControlHomeFlashlightReformationFlow.__deallocating_deinit()
{
  memcpy(v9, (v0 + 16), 0x1F8uLL);
  sub_252935408(v9);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v4 = sub_252E33DE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_252D34AC4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D3260C(a1);
}

uint64_t sub_252D34B60()
{
  type metadata accessor for ControlHomeFlashlightReformationFlow();

  return sub_252E33644();
}

uint64_t sub_252D34B9C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ControlHomeFlashlightReformationFlow();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = sub_252D32430(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_252D34BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252D34C50()
{
  result = qword_27F5458E8;
  if (!qword_27F5458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5458E8);
  }

  return result;
}

unint64_t sub_252D34CA8()
{
  result = qword_27F5458F0;
  if (!qword_27F5458F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5458F0);
  }

  return result;
}

uint64_t type metadata accessor for ControlHomeFlashlightReformationFlow()
{
  result = qword_27F5458F8;
  if (!qword_27F5458F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D34D50()
{
  result = sub_252E34164();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_252E33DE4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ControlHomeFlashlightReformationFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

BOOL sub_252D34FF8()
{
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v0.n128_f64[0] = HomeFilter.Builder.init()();
  v2 = (*(*v1 + 624))(1, v0);

  v4 = (*(*v2 + 760))(v3);

  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C130;
  *(v6 + 32) = v4;
  v7 = v4;
  v8 = HomeStore.accessories(matching:supporting:)(v6, 0);
  LOBYTE(v4) = v9;

  if (v4)
  {
    sub_252929F10(v8, 1);

    return 0;
  }

  else
  {
    if (v8 >> 62)
    {
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_252929F10(v8, 0);

    return v11 != 0;
  }
}

uint64_t sub_252D351A0(void *__src)
{
  v1 = (__src + 1);
  v2 = *__src;
  memcpy(__dst, __src + 1, sizeof(__dst));
  __srca[0] = v2;
  memcpy(&__srca[1], v1, 0x1F0uLL);
  if ((sub_252A13FE0() & 1) == 0)
  {
    v12[0] = v2;
    memcpy(&v12[1], v1, 0x1F0uLL);
    if ((sub_252A13BEC() & 1) == 0)
    {
      __srca[0] = v2;
      memcpy(&__srca[1], v1, 0x1F0uLL);
      if ((sub_252A143D4() & 1) == 0)
      {
        v3 = *(v2 + 16);
        if (v3)
        {
          v4 = 0;
          v5 = (v2 + 32);
          while (v4 < *(v2 + 16))
          {
            memcpy(__srca, v5, sizeof(__srca));
            memcpy(v12, v5, sizeof(v12));
            sub_2529353AC(__srca, v11);
            if (sub_252A13FE0() & 1) != 0 || (memcpy(v11, __srca, sizeof(v11)), (sub_252A13BEC()))
            {
              sub_252935408(__srca);
              goto LABEL_14;
            }

            memcpy(v12, __srca, sizeof(v12));
            v6 = sub_252A143D4();
            sub_252935408(__srca);
            if (v6)
            {
              goto LABEL_14;
            }

            ++v4;
            v5 += 504;
            if (v3 == v4)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_11:
          if (qword_27F53F4F8 == -1)
          {
LABEL_12:
            v7 = sub_252E36AD4();
            __swift_project_value_buffer(v7, qword_27F544D90);
            sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E95E80, 0xD00000000000008BLL, 0x8000000252E95C50);
            return 0;
          }
        }

        swift_once();
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D90);
  __srca[0] = 0;
  __srca[1] = 0xE000000000000000;
  sub_252E379F4();

  v12[0] = 0xD000000000000018;
  v12[1] = 0x8000000252E95E60;
  __srca[0] = v2;
  memcpy(&__srca[1], __dst, 0x1F0uLL);
  v10 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v12[0], v12[1], 0xD00000000000008BLL, 0x8000000252E95C50);

  return 1;
}

uint64_t sub_252D3548C(uint64_t a1)
{
  v61 = a1;
  v64 = sub_252E34494();
  v62 = *(v64 - 8);
  v1 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252E343C4();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_252E34244();
  v51 = *(v52 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34284();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v47 - v14;
  v15 = sub_252E34354();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v47 - v21;
  v22 = sub_252E341A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_252E34164();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, v61, v27);
  if ((*(v28 + 88))(v31, v27) != *MEMORY[0x277D5C160])
  {
    (*(v28 + 8))(v31, v27);
    return 2;
  }

  (*(v28 + 96))(v31, v27);
  v48 = v23;
  v32 = *(v23 + 32);
  v50 = v22;
  v32(v26, v31, v22);
  v49 = v26;
  sub_252E34184();
  v33 = sub_252E34254();
  (*(v58 + 8))(v11, v59);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = 0;
    while (v35 < *(v33 + 16))
    {
      (*(v16 + 16))(v20, v33 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v35, v15);
      if (sub_252E342C4())
      {

        v37 = v57;
        (*(v16 + 32))(v57, v20, v15);
        v36 = 0;
        goto LABEL_10;
      }

      ++v35;
      (*(v16 + 8))(v20, v15);
      if (v34 == v35)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_7:

  v36 = 1;
  v37 = v57;
LABEL_10:
  (*(v16 + 56))(v37, v36, 1, v15);
  if ((*(v16 + 48))(v37, 1, v15) == 1)
  {
    sub_25293847C(v37, &qword_27F540320, &qword_252E3C1A0);
    v26 = v50;
    v34 = v48;
    v35 = v49;
    if (qword_27F53F4F8 == -1)
    {
LABEL_12:
      v38 = sub_252E36AD4();
      __swift_project_value_buffer(v38, qword_27F544D90);
      sub_252CC4050(0xD000000000000012, 0x8000000252E870B0, 0xD00000000000008BLL, 0x8000000252E95C50, 0xD000000000000019, 0x8000000252E95E40, 209);
      (*(v34 + 8))(v35, v26);
      return 2;
    }

LABEL_32:
    swift_once();
    goto LABEL_12;
  }

  (*(v16 + 32))(v56, v37, v15);
  v39 = v53;
  sub_252E34314();
  sub_252E34394();
  (*(v54 + 8))(v39, v55);
  sub_252E342D4();
  sub_252E34DA4();

  sub_252AEA788(v67, v65);
  v40 = v50;
  v35 = v49;
  if (v66)
  {
    sub_252E34F84();
    if (swift_dynamicCast())
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_25293847C(v65, &qword_27F541E80, &qword_252E3DFA0);
  }

  sub_252AEA788(v67, v65);
  if (!v66)
  {
    sub_25293847C(v67, &qword_27F541E80, &qword_252E3DFA0);
    (*(v51 + 8))(v60, v52);
    (*(v16 + 8))(v56, v15);
    (*(v48 + 8))(v35, v40);
    sub_25293847C(v65, &qword_27F541E80, &qword_252E3DFA0);
    return 2;
  }

  sub_252E35034();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_25293847C(v67, &qword_27F541E80, &qword_252E3DFA0);
    (*(v51 + 8))(v60, v52);
    (*(v16 + 8))(v56, v15);
    (*(v48 + 8))(v35, v40);
    return 2;
  }

LABEL_19:

  v34 = 0x6C7562746867696CLL;
  v26 = sub_252E34234();
  v41 = 0;
  v61 = *(v26 + 2);
  v42 = (v62 + 8);
  do
  {
    v43 = v41;
    if (v61 == v41)
    {
      break;
    }

    if (v41 >= *(v26 + 2))
    {
      goto LABEL_31;
    }

    (*(v62 + 16))(v63, &v26[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v41], v64);
    if (sub_252E34484() == 0x6C7562746867696CLL && v44 == 0xE900000000000062)
    {

      (*v42)(v63, v64);
      break;
    }

    ++v41;
    v35 = sub_252E37DB4();

    (*v42)(v63, v64);
  }

  while ((v35 & 1) == 0);

  v45 = v61 != v43;
  sub_25293847C(v67, &qword_27F541E80, &qword_252E3DFA0);
  (*(v51 + 8))(v60, v52);
  (*(v16 + 8))(v56, v15);
  (*(v48 + 8))(v49, v50);
  return v45;
}

uint64_t sub_252D35F40(const void *a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_252E32F04();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36AB4();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v10 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v51 = v10;
  sub_252E36A84();
  type metadata accessor for HomeAutomationUserDefaults();
  v11 = swift_allocObject();
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_252E36F04();
  v14 = [v12 initWithSuiteName_];

  *(v11 + 16) = v14;
  LODWORD(v13) = sub_2529AEF14();

  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!v13)
  {
    v38 = swift_allocObject();
    v39 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v40 = sub_252E36F04();
    v41 = [v39 initWithSuiteName_];

    *(v38 + 16) = v41;
    if (v41)
    {
      v54[0] = 0;
      v42 = sub_252E37E04();
      v43 = sub_252E36F04();
      [v41 setObject:v42 forKey:v43];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_23;
  }

  v15 = sub_252D34FF8();
  memcpy(v54, a1, 0x1F8uLL);
  v16 = sub_252D351A0(v54);
  v17 = sub_252D3548C(v50);
  if (v17 == 2)
  {
    goto LABEL_23;
  }

  LODWORD(v50) = v17;
  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v18 + 288), v54);

  v19 = v54[3];
  v20 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v21 = (*(v20 + 96))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v54);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v22 + 288), v54);

  v23 = v54[3];
  v24 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  if ((*(v24 + 104))(v23, v24))
  {
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v54);
    goto LABEL_11;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F44();

  v25 = v47;
  sub_252E36034();

  v26 = sub_252E32E94();
  v28 = v27;
  (*(v48 + 8))(v25, v49);
  if (v26 == 0x53552D6E65 && v28 == 0xE500000000000000)
  {

    goto LABEL_10;
  }

  v45 = sub_252E37DB4();

  __swift_destroy_boxed_opaque_existential_1(v54);
  if ((v45 & 1) == 0)
  {
LABEL_23:
    v37 = 0;
    goto LABEL_24;
  }

LABEL_11:
  type metadata accessor for HomeStore();
  v29 = static HomeStore.shared.getter();
  v30 = v29[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v30 == 2 || (v30 & 1) == 0)
  {
    goto LABEL_23;
  }

  v31 = static HomeStore.shared.getter();
  v32 = sub_2529D8DC0();

  v33 = v32 >> 62 ? sub_252E378C4() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v33)
  {
    v34 = static HomeStore.shared.getter();
    v35 = sub_2529D9D50();

    v36 = v35 >> 62 ? sub_252E378C4() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36 != 0 && v15)
    {
      goto LABEL_23;
    }
  }

  v37 = v50 & (v16 ^ 1);
LABEL_24:
  sub_252E375C4();
  sub_252E36A74();
  (*(v52 + 8))(v9, v53);
  return v37 & 1;
}

void *sub_252D36558()
{
  result = sub_252CC6588(&unk_2864A34B0);
  off_27F545908 = result;
  return result;
}

void *sub_252D36580()
{
  result = sub_252CC6628(&unk_2864A8338);
  off_27F545910 = result;
  return result;
}

void *sub_252D365A8()
{
  result = sub_252CC6650(&unk_2864A8458);
  off_27F545918 = result;
  return result;
}

uint64_t sub_252D36610(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v12 = *&v4[v5];
    }

    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v10 = a2(a1);

    if (v10)
    {
      return v10;
    }
  }

  return v8;
}

uint64_t sub_252D366E0(char a1)
{
  if (qword_27F53F6F0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v2 = off_27F545910;
  v3 = off_27F545910 + 64;
  v4 = 1 << *(off_27F545910 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_27F545910 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v11 = 0x646570706F7473;
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v8 << 6);
    v14 = *(v2[6] + 8 * v13);
    v15 = 0xE700000000000000;
    v16 = 0x646570706F7473;
    switch(*(v2[7] + v13))
    {
      case 1:
        v16 = 0x676E696E6E7572;
        break;
      case 2:
        v15 = 0xE600000000000000;
        v16 = 0x646573756170;
        break;
      case 3:
        v15 = 0xE500000000000000;
        v16 = 0x726F727265;
        break;
      case 4:
        v16 = 0x43676E696B656573;
        v15 = 0xEE00726567726168;
        break;
      case 5:
        v15 = 0xE800000000000000;
        v16 = 0x676E696772616863;
        break;
      case 6:
        v15 = 0xE600000000000000;
        v16 = 0x64656B636F64;
        break;
      case 7:
        v15 = 0xE500000000000000;
        v16 = 0x6B63757473;
        break;
      case 8:
        v15 = 0xEA00000000007972;
        v16 = 0x6574746142776F6CLL;
        break;
      case 9:
        v16 = 0x4D6E694274737564;
        v15 = 0xEE00676E69737369;
        break;
      case 0xA:
        v16 = 0x466E694274737564;
        v15 = 0xEB000000006C6C75;
        break;
      case 0xB:
        v16 = 0xD000000000000010;
        v15 = 0x8000000252E64480;
        break;
      case 0xC:
        v16 = 0x6E61547265746177;
        v15 = 0xEE007974706D456BLL;
        break;
      case 0xD:
        v16 = 0xD000000000000010;
        v15 = 0x8000000252E644A0;
        break;
      case 0xE:
        v16 = 0xD000000000000015;
        v15 = 0x8000000252E644C0;
        break;
      case 0xF:
        v16 = 0xD000000000000016;
        v15 = 0x8000000252E67470;
        break;
      default:
        break;
    }

    v17 = 0xE700000000000000;
    switch(a1)
    {
      case 1:
        if (v16 == 0x676E696E6E7572)
        {
          goto LABEL_55;
        }

        goto LABEL_5;
      case 2:
        v17 = 0xE600000000000000;
        v20 = 1937072496;
        goto LABEL_51;
      case 3:
        v17 = 0xE500000000000000;
        if (v16 != 0x726F727265)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 4:
        v18 = 0x43676E696B656573;
        v19 = 0x726567726168;
        goto LABEL_37;
      case 5:
        v17 = 0xE800000000000000;
        if (v16 != 0x676E696772616863)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 6:
        v17 = 0xE600000000000000;
        v20 = 1801678692;
LABEL_51:
        if (v16 != (v20 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 7:
        v17 = 0xE500000000000000;
        if (v16 != 0x6B63757473)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 8:
        v17 = 0xEA00000000007972;
        if (v16 != 0x6574746142776F6CLL)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 9:
        v18 = 0x4D6E694274737564;
        v19 = 0x676E69737369;
        goto LABEL_37;
      case 10:
        v11 = 0x466E694274737564;
        v17 = 0xEB000000006C6C75;
        goto LABEL_54;
      case 11:
        v17 = 0x8000000252E64480;
        if (v16 != 0xD000000000000010)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 12:
        v18 = 0x6E61547265746177;
        v19 = 0x7974706D456BLL;
LABEL_37:
        v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v16 != v18)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 13:
        v17 = 0x8000000252E644A0;
        if (v16 != 0xD000000000000010)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 14:
        v17 = 0x8000000252E644C0;
        if (v16 != 0xD000000000000015)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 15:
        v17 = 0x8000000252E67470;
        if (v16 != 0xD000000000000016)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      default:
LABEL_54:
        if (v16 != v11)
        {
          goto LABEL_5;
        }

LABEL_55:
        if (v15 == v17)
        {

          return v14;
        }

LABEL_5:
        v9 = sub_252E37DB4();

        if (v9)
        {

          return v14;
        }

        break;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E95F40);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD00000000000001DLL, 0x8000000252E95F80, 73);

  return 0;
}

uint64_t sub_252D36D20(char a1)
{
  if (qword_27F53F6E8 != -1)
  {
LABEL_57:
    swift_once();
  }

  v2 = off_27F545908;
  v3 = off_27F545908 + 64;
  v4 = 1 << *(off_27F545908 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_27F545908 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v11 = 0x6D7575636176;
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v8 << 6);
    v14 = *(v2[6] + 8 * v13);
    v15 = 0xE600000000000000;
    v16 = 0x6D7575636176;
    switch(*(v2[7] + v13))
    {
      case 1:
        v15 = 0xE300000000000000;
        v16 = 7368557;
        break;
      case 2:
        v16 = 0x61656C4370656564;
        v15 = 0xE90000000000006ELL;
        break;
      case 3:
        v15 = 0xE400000000000000;
        v16 = 1869903201;
        break;
      case 4:
        v15 = 0xE500000000000000;
        v16 = 0x7465697571;
        break;
      case 5:
        v15 = 0xE500000000000000;
        v16 = 0x6B63697571;
        break;
      case 6:
        v15 = 0xE800000000000000;
        v16 = 0x6573696F4E776F6CLL;
        break;
      case 7:
        v15 = 0xE900000000000079;
        v16 = 0x6772656E45776F6CLL;
        break;
      case 8:
        v15 = 0xE800000000000000;
        v16 = 0x6E6F697461636176;
        break;
      case 9:
        v15 = 0xE500000000000000;
        v16 = 0x746867696ELL;
        break;
      case 0xA:
        v15 = 0xE300000000000000;
        v16 = 7954788;
        break;
      case 0xB:
        v15 = 0xE300000000000000;
        v16 = 7235949;
        break;
      case 0xC:
        v15 = 0xE300000000000000;
        v16 = 7889261;
        break;
      default:
        break;
    }

    v17 = 0xE600000000000000;
    switch(a1)
    {
      case 1:
        v17 = 0xE300000000000000;
        if (v16 == 7368557)
        {
          goto LABEL_47;
        }

        goto LABEL_5;
      case 2:
        v17 = 0xE90000000000006ELL;
        if (v16 != 0x61656C4370656564)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 3:
        v17 = 0xE400000000000000;
        if (v16 != 1869903201)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 4:
        v17 = 0xE500000000000000;
        v18 = 1701410161;
        goto LABEL_33;
      case 5:
        v17 = 0xE500000000000000;
        if (v16 != 0x6B63697571)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 6:
        v17 = 0xE800000000000000;
        if (v16 != 0x6573696F4E776F6CLL)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 7:
        v17 = 0xE900000000000079;
        if (v16 != 0x6772656E45776F6CLL)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 8:
        v17 = 0xE800000000000000;
        if (v16 != 0x6E6F697461636176)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 9:
        v17 = 0xE500000000000000;
        v18 = 1751607662;
LABEL_33:
        if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x7400000000))
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 10:
        v17 = 0xE300000000000000;
        v11 = 7954788;
        goto LABEL_46;
      case 11:
        v17 = 0xE300000000000000;
        if (v16 != 7235949)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 12:
        v17 = 0xE300000000000000;
        if (v16 != 7889261)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v16 != v11)
        {
          goto LABEL_5;
        }

LABEL_47:
        if (v15 == v17)
        {

          return v14;
        }

LABEL_5:
        v9 = sub_252E37DB4();

        if (v9)
        {

          return v14;
        }

        break;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E95EE0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD00000000000001CLL, 0x8000000252E95F20, 57);

  return 0;
}

uint64_t sub_252D37230(unsigned __int8 a1)
{
  if (!a1)
  {

    return 3;
  }

  v2 = sub_252E37DB4();

  if (v2)
  {
    return 3;
  }

  if (qword_27F53F6F8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v3 = off_27F545918;
  v4 = off_27F545918 + 64;
  v5 = 1 << *(off_27F545918 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_27F545918 + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_13:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    if (*(v3[7] + v12))
    {
      v13 = 0xE600000000000000;
      if (*(v3[7] + v12) == 1)
      {
        v14 = 0x656D75736572;
        v15 = a1;
        if (a1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0x6C65636E6163;
        v15 = a1;
        if (a1)
        {
LABEL_18:
          if (v15 == 1)
          {
            v16 = 0x656D75736572;
          }

          else
          {
            v16 = 0x6C65636E6163;
          }

          v17 = 0xE600000000000000;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x6573756170;
      v15 = a1;
      if (a1)
      {
        goto LABEL_18;
      }
    }

    v17 = 0xE500000000000000;
    v16 = 0x6573756170;
LABEL_24:
    v18 = *(v3[6] + 8 * v12);
    if (v14 == v16 && v13 == v17)
    {

      return v18;
    }

    v7 &= v7 - 1;
    v10 = sub_252E37DB4();

    if (v10)
    {

      return v18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v11];
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E95FA0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD00000000000001DLL, 0x8000000252E95F80, 96);

  return 0;
}

uint64_t sub_252D375A8(uint64_t a1)
{
  if (qword_27F53F6F8 != -1)
  {
    swift_once();
  }

  v2 = off_27F545918;
  if (*(off_27F545918 + 2))
  {
    v3 = sub_252A488EC(a1);
    if (v4)
    {
      return *(v2[7] + v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E96050);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000019, 0x8000000252E960A0, 104);

  return 3;
}

uint64_t sub_252D3772C(uint64_t a1)
{
  if (qword_27F53F6F0 != -1)
  {
    swift_once();
  }

  v2 = off_27F545910;
  if (*(off_27F545910 + 2))
  {
    v3 = sub_252A488EC(a1);
    if (v4)
    {
      return *(v2[7] + v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E95FF0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000012, 0x8000000252E96030, 81);

  return 16;
}

id sub_252D378B0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v10 = v2;
      v12 = *(a1 + 24);
      v11 = *(a1 + 32);
      if (*(a1 + 16))
      {
        v13 = -1.0;
      }

      else
      {
        v13 = v3;
      }

      v14 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetArea());

      v15 = sub_252E36F04();
      v16 = [v14 initWithIdentifier:0 displayString:v15];

      v17 = v16;
      v18 = sub_252E36F04();
      sub_252ACBD2C(a1);
      [v17 setName_];

      [v17 setAreaID_];
      [v17 setMapID_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_252E3C130;
      *(v19 + 32) = v17;
      v20 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
      v21 = v17;
      v22 = sub_252E36F04();
      v23 = [v20 initWithIdentifier:0 displayString:v22];

      v24 = v23;
      [v24 setRunState_];
      v25 = sub_252E37254();
      [v24 setCleanModes_];

      v26 = sub_252E37254();

      [v24 setTargetAreas_];

      [v24 setTargetMap_];
      v27 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v28 = sub_252E36F04();
      v29 = [v27 initWithIdentifier:0 displayString:v28];

      v30 = v29;
      [v30 setType_];
      [v30 setCleaningJob_];
    }

    else
    {
      v34 = v2;
      v35 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetMap());
      v36 = sub_252E36F04();
      v37 = [v35 initWithIdentifier:0 displayString:v36];

      v38 = v37;
      v39 = sub_252E36F04();
      [v38 setName_];

      [v38 setMapID_];
      v40 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
      v41 = v38;
      v42 = sub_252E36F04();
      v43 = [v40 initWithIdentifier:0 displayString:v42];

      v44 = v43;
      [v44 setRunState_];
      v45 = sub_252E37254();
      [v44 setCleanModes_];

      type metadata accessor for HomeAttributeTargetArea();
      v46 = sub_252E37254();
      [v44 setTargetAreas_];

      [v44 setTargetMap_];
      v47 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v48 = sub_252E36F04();
      v49 = [v47 initWithIdentifier:0 displayString:v48];

      v30 = v49;
      [v30 setType_];
      [v30 setCleaningJob_];
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v31 = sub_252D37230(v2);
      if ((v32 & 1) == 0)
      {
        v61 = v31;
        v62 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
        v63 = sub_252E36F04();
        v64 = [v62 initWithIdentifier:0 displayString:v63];

        v65 = v64;
        [v65 setRunState_];
        v66 = sub_252E37254();
        [v65 setCleanModes_];

        type metadata accessor for HomeAttributeTargetArea();
        v67 = sub_252E37254();
        [v65 setTargetAreas_];

        [v65 setTargetMap_];
        v68 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v69 = sub_252E36F04();
        v70 = [v68 initWithIdentifier:0 displayString:v69];

        v30 = v70;
        [v30 setType_];
        [v30 setCleaningJob_];

        return v30;
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v33 = sub_252E36AD4();
      __swift_project_value_buffer(v33, qword_27F544CD0);
      *&v88 = 0;
      *(&v88 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v93 = v88;
      MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E960C0);
      v89 = *a1;
      *v91 = *(a1 + 16);
      *&v91[9] = *(a1 + 25);
      sub_252E37AE4();
      v8 = *(&v93 + 1);
      v7 = v93;
      v9 = 124;
      goto LABEL_16;
    }

    v4 = sub_252D366E0(v2);
    if (v5)
    {
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544CD0);
      *&v86 = 0;
      *(&v86 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v92 = v86;
      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E96120);
      v87 = *a1;
      *v90 = *(a1 + 16);
      *&v90[9] = *(a1 + 25);
      sub_252E37AE4();
      v8 = *(&v92 + 1);
      v7 = v92;
      v9 = 112;
LABEL_16:
      sub_252CC4050(v7, v8, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000019, 0x8000000252E96100, v9);

      return 0;
    }

    v50 = v4;
    v51 = *(v3 + 16);
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v53 = (v3 + 32);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v55 = *v53++;
        v56 = sub_252D36D20(v55);
        if ((v57 & 1) == 0)
        {
          v58 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_2529F7F9C(0, *(v54 + 2) + 1, 1, v54);
          }

          v60 = *(v54 + 2);
          v59 = *(v54 + 3);
          if (v60 >= v59 >> 1)
          {
            v54 = sub_2529F7F9C((v59 > 1), v60 + 1, 1, v54);
          }

          *(v54 + 2) = v60 + 1;
          *&v54[8 * v60 + 32] = v58;
        }

        --v51;
      }

      while (v51);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v71 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
    v72 = sub_252E36F04();
    v73 = [v71 initWithIdentifier:0 displayString:v72];

    v74 = v73;
    [v74 setRunState_];
    v75 = *(v54 + 2);
    if (v75)
    {
      sub_2529AA3C0(0, v75, 0);
      v76 = *(v52 + 16);
      v77 = 32;
      do
      {
        v78 = *&v54[v77];
        v79 = *(v52 + 24);
        if (v76 >= v79 >> 1)
        {
          sub_2529AA3C0((v79 > 1), v76 + 1, 1);
        }

        *(v52 + 16) = v76 + 1;
        *(v52 + 8 * v76 + 32) = v78;
        v77 += 8;
        ++v76;
        --v75;
      }

      while (v75);
    }

    v80 = sub_252E37254();

    [v74 setCleanModes_];

    type metadata accessor for HomeAttributeTargetArea();
    v81 = sub_252E37254();
    [v74 setTargetAreas_];

    [v74 setTargetMap_];
    v82 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v83 = sub_252E36F04();
    v84 = [v82 initWithIdentifier:0 displayString:v83];

    v30 = v84;
    [v30 setType_];
    [v30 setCleaningJob_];
  }

  return v30;
}

uint64_t sub_252D38354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_252E34014();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D3843C, 0, 0);
}

uint64_t sub_252D3843C()
{
  v2 = MEMORY[0x277D84F90];
  v89 = *(v0 + 224);
  if (v89)
  {
    v3 = sub_252C285F0();
    v4 = v3;
    v99 = v2;
    if (v3 >> 62)
    {
      v5 = sub_252E378C4();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v2 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x2530ADF00](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_136;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v1 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          type metadata accessor for MutableHomeEntityResponse();
          swift_allocObject();
          v0 = sub_252D6D668(v8);

          MEMORY[0x2530AD700]();
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v9 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v6;
          if (v1 == v5)
          {
            v2 = v99;
            v0 = v92;
            goto LABEL_14;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_14:
  }

  v1 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_138:
    v10 = sub_252E378C4();
    goto LABEL_17;
  }

  v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v96 = v2 & 0xC000000000000001;
  v11 = MEMORY[0x277D84F90];
  v95 = v10;
  if (v10)
  {
    v12 = 0;
    v97 = MEMORY[0x277D84F90];
    while (2)
    {
      v13 = v12;
      while (1)
      {
        if (v96)
        {
          v14 = MEMORY[0x2530ADF00](v13, v2);
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (v13 >= *(v1 + 16))
          {
            goto LABEL_132;
          }

          v14 = *(v2 + 8 * v13 + 32);

          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }
        }

        v15 = *(v14 + 16);

        if (v15)
        {
          v17 = *(v15 + 40);
          v16 = *(v15 + 48);

          if (v16)
          {
            break;
          }
        }

        ++v13;
        if (v12 == v95)
        {
          goto LABEL_37;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v97 = sub_2529F7A80(0, *(v97 + 2) + 1, 1, v97);
      }

      v20 = *(v97 + 2);
      v19 = *(v97 + 3);
      if (v20 >= v19 >> 1)
      {
        v97 = sub_2529F7A80((v19 > 1), v20 + 1, 1, v97);
      }

      *(v97 + 2) = v20 + 1;
      v21 = &v97[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v16;
      if (v12 != v95)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v97 = MEMORY[0x277D84F90];
  }

LABEL_37:
  v90 = v1;
  v91 = v2;
  type metadata accessor for HomeStore();
  v22 = static HomeStore.shared.getter();
  v23 = sub_2529D9D50();
  v24 = sub_2529D70E4(v23);

  v100 = v11;
  if (v24 >> 62)
  {
    v1 = sub_252E378C4();
  }

  else
  {
    v1 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v25 = 0;
  v93 = v0 + 176;
  v2 = v24 & 0xFFFFFFFFFFFFFF8;
  while ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x2530ADF00](v25, v24);
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_51;
    }

LABEL_46:
    v28 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v28 && (*(v92 + 176) = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier), *(v92 + 184) = v28, v29 = swift_task_alloc(), *(v29 + 16) = v93, v0 = sub_2529ED970(sub_25296A69C, v29, v97), , (v0 & 1) != 0))
    {
      sub_252E37A94();
      v0 = *(v100 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v25;
    if (v27 == v1)
    {
      goto LABEL_52;
    }
  }

  if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_133;
  }

  v26 = *(v24 + 8 * v25 + 32);

  v27 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v1 = v100;
LABEL_54:

  if (v95)
  {
    if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
    {
      v2 = sub_252E378C4();
    }

    else
    {
      v2 = *(v1 + 16);
    }

    v30 = 0;
    while (1)
    {
      if (v96)
      {
        v31 = MEMORY[0x2530ADF00](v30, v91);
        v32 = __OFADD__(v30, 1);
        v33 = v30 + 1;
        if (v32)
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v30 >= *(v90 + 16))
        {
          goto LABEL_137;
        }

        v31 = *(v91 + 32 + 8 * v30);

        v32 = __OFADD__(v30, 1);
        v33 = v30 + 1;
        if (v32)
        {
          goto LABEL_134;
        }
      }

      v94 = v33;
      if (!v2)
      {
LABEL_60:

        goto LABEL_61;
      }

      v34 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x2530ADF00](v34, v1);
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_127;
          }
        }

        else
        {
          if (v34 >= *(v1 + 16))
          {
            goto LABEL_128;
          }

          v35 = *(v1 + 8 * v34 + 32);

          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }
        }

        v0 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
        v37 = *(v31 + 16);
        if (!v37)
        {
          if (!v0)
          {
            goto LABEL_90;
          }

          goto LABEL_71;
        }

        v38 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v40 = *(v37 + 40);
        v39 = *(v37 + 48);

        if (v0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_90;
        }

LABEL_71:

        ++v34;
        if (v36 == v2)
        {
          goto LABEL_60;
        }
      }

      if (!v39)
      {
        goto LABEL_71;
      }

      if (v38 != v40 || v0 != v39)
      {
        break;
      }

LABEL_90:
      v42 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

      v43 = [v42 accessory];
      if (!v43)
      {

        goto LABEL_60;
      }

      v44 = v43;
      v45 = type metadata accessor for Accessory();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      v48 = sub_252D4CE7C(v44);

      v50 = *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v49 = *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v0 = *(v31 + 16);

      if (v0)
      {
        v51 = *(v0 + 24);
        *(v0 + 16) = v50;
        *(v0 + 24) = v49;
      }

LABEL_61:
      v30 = v94;
      if (v94 == v95)
      {
        goto LABEL_94;
      }
    }

    v0 = sub_252E37DB4();

    if (v0)
    {
      goto LABEL_90;
    }

    goto LABEL_71;
  }

LABEL_94:

  v52 = 0;
  v53 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F90];
  v2 = v90;
  v1 = v95;
LABEL_95:
  v54 = v53;
  *(v92 + 288) = v53;
  while (v95 != v52)
  {
    if (v96)
    {
      MEMORY[0x2530ADF00](v52, v91);
      v0 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v52 >= *(v90 + 16))
      {
        goto LABEL_130;
      }

      v55 = *(v91 + 8 * v52 + 32);

      v0 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_129;
      }
    }

    v56 = sub_252D6C15C();
    v57 = sub_252DA124C(0);

    ++v52;
    if (v57)
    {
      MEMORY[0x2530AD700](v58);
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v53 = v101;
      v52 = v0;
      goto LABEL_95;
    }
  }

  v60 = *(v92 + 216);

  v61 = [v60 userTask];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 attribute];

    v64 = v54;
    if (v63 == 44)
    {
      v65 = *(v92 + 232);
      v66 = swift_allocObject();
      *(v92 + 296) = v66;
      *(v66 + 16) = v65;
      *(v66 + 24) = v54;

      if (v89)
      {
        v67 = *(v65 + 48);
        v68 = *(v92 + 224);
        v69 = *__swift_project_boxed_opaque_existential_1((v65 + 24), v67);
        v98 = sub_252C0E164;

        v70 = swift_task_alloc();
        *(v92 + 304) = v70;
        *v70 = v92;
        v71 = sub_252D390FC;
LABEL_115:
        v70[1] = v71;

        return v98(0, v69, v64);
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v85 = *(v92 + 280);
      v86 = *(v92 + 232);
      v87 = sub_252E36AD4();
      __swift_project_value_buffer(v87, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v80 = *(v86 + 96);
      __swift_project_boxed_opaque_existential_1((v86 + 72), v80);
      sub_252AD7CC4();
      v88 = swift_task_alloc();
      *(v92 + 352) = v88;
      *v88 = v92;
      v88[1] = sub_252D39454;
      v82 = *(v92 + 280);
      v83 = &unk_252E5D298;
      v84 = v92 + 96;
      goto LABEL_124;
    }
  }

  else
  {
    v72 = *(v92 + 216);
    sub_252C515AC();
    v64 = v54;
  }

  v73 = *(v92 + 232);
  v66 = swift_allocObject();
  *(v92 + 392) = v66;
  *(v66 + 16) = v73;
  *(v66 + 24) = v64;

  if (v89)
  {
    v74 = *(v73 + 48);
    v75 = *(v92 + 224);
    v69 = *__swift_project_boxed_opaque_existential_1((v73 + 24), v74);
    v98 = sub_252C0E46C;

    v70 = swift_task_alloc();
    *(v92 + 400) = v70;
    *v70 = v92;
    v71 = sub_252D39CF4;
    goto LABEL_115;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v77 = *(v92 + 264);
  v78 = *(v92 + 232);
  v79 = sub_252E36AD4();
  __swift_project_value_buffer(v79, qword_27F544D18);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
  v80 = *(v78 + 96);
  __swift_project_boxed_opaque_existential_1((v78 + 72), v80);
  sub_252AD7CC4();
  v81 = swift_task_alloc();
  *(v92 + 448) = v81;
  *v81 = v92;
  v81[1] = sub_252D3A04C;
  v82 = *(v92 + 264);
  v83 = &unk_252E5D280;
  v84 = v92 + 16;
LABEL_124:

  return sub_252BDB88C(v84, v83, v66, v82, 0, 0, 0, v80);
}

uint64_t sub_252D390FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  v7 = v3[36];
  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D393BC, 0, 0);
  }

  else
  {
    v8 = v4[28];
    swift_bridgeObjectRelease_n();
    v9 = swift_task_alloc();
    v4[41] = v9;
    *v9 = v6;
    v9[1] = sub_252D392A8;
    v10 = v4[29];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252D392A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_252D39718;
  }

  else
  {
    v5 = sub_252D395BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D393BC()
{
  v1 = v0[37];
  v2 = v0[28];

  v3 = v0[40];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D39454()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[31] + 8))(v2[35], v2[30]);
  if (v0)
  {
    v5 = sub_252D39C64;
  }

  else
  {
    v5 = sub_252D39B2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D395BC()
{
  v1 = v0[39];
  v0[25] = v1;
  v2 = v0 + 25;
  v3 = v0[42];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[34];
  v9 = v0[29];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[46] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[47] = v12;
  *v12 = v0;
  v12[1] = sub_252D397BC;
  v13 = v0[34];

  return sub_252BDB88C((v0 + 17), &unk_252E3FA50, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D39718()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);

  v3 = *(v0 + 344);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252D397BC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    (*(v2[31] + 8))(v2[34], v2[30]);
    v4 = sub_252D39A6C;
  }

  else
  {
    v5 = v2[46];
    (*(v2[31] + 8))(v2[34], v2[30]);

    v4 = sub_252D3990C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D3990C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 336);
  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252D39A6C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v4 = *(v0 + 224);

  v5 = *(v0 + 384);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252D39B2C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[37];
  v9 = v0[26];
  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[32];
  v12 = v0[33];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252D39C64()
{
  v1 = v0[37];

  v2 = v0[45];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252D39CF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  v7 = v3[36];
  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D39FB4, 0, 0);
  }

  else
  {
    v8 = v4[28];
    swift_bridgeObjectRelease_n();
    v9 = swift_task_alloc();
    v4[53] = v9;
    *v9 = v6;
    v9[1] = sub_252D39EA0;
    v10 = v4[29];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252D39EA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_252D3A310;
  }

  else
  {
    v5 = sub_252D3A1B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D39FB4()
{
  v1 = v0[49];
  v2 = v0[28];

  v3 = v0[52];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D3A04C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  (*(v2[31] + 8))(v2[33], v2[30]);
  if (v0)
  {
    v5 = sub_252D3A85C;
  }

  else
  {
    v5 = sub_252D3A724;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D3A1B4()
{
  v1 = v0[51];
  v0[24] = v1;
  v2 = v0 + 24;
  v3 = v0[54];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[32];
  v9 = v0[29];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[58] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[59] = v12;
  *v12 = v0;
  v12[1] = sub_252D3A3B4;
  v13 = v0[32];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D3A310()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 224);

  v3 = *(v0 + 440);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252D3A3B4()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    (*(v2[31] + 8))(v2[32], v2[30]);
    v4 = sub_252D3A664;
  }

  else
  {
    v5 = v2[58];
    (*(v2[31] + 8))(v2[32], v2[30]);

    v4 = sub_252D3A504;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D3A504()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 408);
  v10 = *(v0 + 392);
  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252D3A664()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);
  v4 = *(v0 + 224);

  v5 = *(v0 + 480);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252D3A724()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[49];
  v9 = v0[26];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[32];
  v12 = v0[33];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252D3A85C()
{
  v1 = v0[49];

  v2 = v0[57];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252D3A8EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D3A90C, 0, 0);
}

uint64_t sub_252D3A90C()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25299F248;
  v4 = v0[3];

  return sub_252C0E164(0, v2, v4);
}

uint64_t sub_252D3A9E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D3AA00, 0, 0);
}

uint64_t sub_252D3AA00()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2529CC350;
  v4 = v0[3];

  return sub_252C0E46C(0, v2, v4);
}

uint64_t sub_252D3AAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D38354(a1, a2, a3);
}

void *sub_252D3ABB0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BatteryResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252D3AC14(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_252C285F0();
  if (v3 >> 62)
  {
    v15 = sub_252E378C4();

    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 43)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attribute];

    if (v11 == 45)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v12 = [a1 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    return v14 == 44;
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_252D3AD70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D3A9E0(v2, v3);
}

uint64_t sub_252D3AE08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252D3A8EC(v2, v3);
}

BOOL sub_252D3AEB0(uint64_t a1)
{
  if (*(*(a1 + 128) + 16) && (v1 = *(a1 + 192), *(v1 + 16)))
  {
    return !sub_2529A78B0(1, v1);
  }

  else
  {
    return 1;
  }
}

unint64_t sub_252D3AEFC(uint64_t a1, double a2, double a3, double a4)
{
  v106 = MEMORY[0x277D84F90];
  v102 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
  v7 = [v102 characteristics];
  v8 = sub_252BAC798();
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
LABEL_83:
    v10 = sub_252E378C4();
    if (!v10)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_96:

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v86 = sub_252E36AD4();
      __swift_project_value_buffer(v86, qword_27F544D60);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000004CLL, 0x8000000252E96270);
      v87 = [v102 characteristics];
      v88 = sub_252E37264();

      v89 = MEMORY[0x2530AD730](v88, v8);
      v91 = v90;

      MEMORY[0x2530AD570](v89, v91);

      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000090, 0x8000000252E961D0);

      return 0;
    }
  }

  v101 = v8;
  v8 = 0;
  v11 = v9 & 0xC000000000000001;
  v12 = v9 & 0xFFFFFFFFFFFFFF8;
  v13 = *MEMORY[0x277CCF9F0];
  while (!v11)
  {
    if (v8 >= *(v12 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v14 = *(v9 + 8 * v8 + 32);
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v16 = v9;
    v104 = v14;
    v17 = [v14 characteristicType];
    v18 = sub_252E36F34();
    v20 = v19;

    if (v18 == sub_252E36F34() && v20 == v21)
    {
      goto LABEL_17;
    }

    v23 = sub_252E37DB4();

    if (v23)
    {
      goto LABEL_18;
    }

    ++v8;
    v9 = v16;
    if (v15 == v10)
    {
LABEL_34:
      v8 = v101;
      goto LABEL_96;
    }
  }

  v14 = MEMORY[0x2530ADF00](v8, v9);
  v15 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v24 = [v102 characteristics];
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
LABEL_87:
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

  v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_88:
    v8 = v101;
    goto LABEL_95;
  }

LABEL_20:
  v25 = 0;
  v26 = v9 & 0xC000000000000001;
  v27 = v9 & 0xFFFFFFFFFFFFFF8;
  v28 = *MEMORY[0x277CCF8D8];
  while (1)
  {
    if (v26)
    {
      v29 = MEMORY[0x2530ADF00](v25, v9);
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v25 >= *(v27 + 16))
      {
        goto LABEL_81;
      }

      v29 = *(v9 + 8 * v25 + 32);
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    v31 = v9;
    v103 = v29;
    v32 = [v29 characteristicType];
    v33 = sub_252E36F34();
    v35 = v34;

    if (v33 == sub_252E36F34() && v35 == v36)
    {
      break;
    }

    v38 = sub_252E37DB4();

    if (v38)
    {
      goto LABEL_36;
    }

    ++v25;
    v9 = v31;
    if (v30 == v8)
    {
      goto LABEL_88;
    }
  }

LABEL_36:

  v39 = [v102 characteristics];
  v8 = v101;
  v9 = sub_252E37264();

  if (!(v9 >> 62))
  {
    v40 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v103;
    if (v40)
    {
      goto LABEL_38;
    }

LABEL_94:

LABEL_95:
    goto LABEL_96;
  }

  v40 = sub_252E378C4();
  v41 = v103;
  if (!v40)
  {
    goto LABEL_94;
  }

LABEL_38:
  v42 = 0;
  v99 = v9 & 0xC000000000000001;
  v43 = v9 & 0xFFFFFFFFFFFFFF8;
  v44 = *MEMORY[0x277CCFA30];
  while (2)
  {
    if (v99)
    {
      v45 = MEMORY[0x2530ADF00](v42, v9);
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_51;
      }

LABEL_42:
      v47 = v9;
      v8 = v45;
      v48 = [v45 characteristicType];
      v49 = sub_252E36F34();
      v51 = v50;

      if (v49 == sub_252E36F34() && v51 == v52)
      {
        goto LABEL_52;
      }

      v54 = sub_252E37DB4();

      if (v54)
      {
        goto LABEL_53;
      }

      ++v42;
      v9 = v47;
      if (v46 == v40)
      {
        goto LABEL_93;
      }

      continue;
    }

    break;
  }

  if (v42 >= *(v43 + 16))
  {
    goto LABEL_82;
  }

  v45 = *(v9 + 8 * v42 + 32);
  v46 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_42;
  }

LABEL_51:
  __break(1u);
LABEL_52:

LABEL_53:

  v55 = [v102 characteristics];
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
    v56 = sub_252E378C4();
    if (v56)
    {
      goto LABEL_55;
    }

LABEL_92:

LABEL_93:
    v8 = v101;
    v41 = v103;
    goto LABEL_94;
  }

  v56 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
    goto LABEL_92;
  }

LABEL_55:
  v57 = 0;
  v98 = v9 & 0xFFFFFFFFFFFFFF8;
  v100 = v9 & 0xC000000000000001;
  v58 = *MEMORY[0x277CCF788];
  while (1)
  {
    if (v100)
    {
      v59 = MEMORY[0x2530ADF00](v57, v9);
    }

    else
    {
      if (v57 >= *(v98 + 16))
      {
        goto LABEL_86;
      }

      v59 = *(v9 + 8 * v57 + 32);
    }

    v60 = v59;
    v61 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v62 = v9;
    v63 = [v59 characteristicType];
    v64 = sub_252E36F34();
    v66 = v65;

    if (v64 == sub_252E36F34() && v66 == v67)
    {
      break;
    }

    v69 = sub_252E37DB4();

    if (v69)
    {
      goto LABEL_69;
    }

    ++v57;
    v9 = v62;
    if (v61 == v56)
    {
      goto LABEL_92;
    }
  }

LABEL_69:

  v70 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v71 = v104;
  v72 = [v70 initWithBool_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v71 targetValue:v72];
  v105 = v71;

  MEMORY[0x2530AD700]();
  if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v92 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  v73 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v74 = v103;
  v75 = [v73 initWithDouble_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v74 targetValue:v75];

  MEMORY[0x2530AD700]();
  if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v93 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  v76 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v77 = v8;
  v78 = [v76 initWithDouble_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v77 targetValue:v78];

  MEMORY[0x2530AD700]();
  if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v94 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  v79 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v80 = v60;
  v81 = [v79 initWithDouble_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v80 targetValue:v81];

  MEMORY[0x2530AD700]();
  if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v95 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  v82 = v106;
  if (v106 >> 62)
  {
    v96 = sub_252E378C4();
    v82 = v106;
    v83 = v105;
    if (v96)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v83 = v105;
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_79:
      v84 = v82;

      return v84;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v97 = sub_252E36AD4();
  __swift_project_value_buffer(v97, qword_27F544D60);
  sub_252CC3D90(0xD000000000000031, 0x8000000252E96190, 0xD000000000000090, 0x8000000252E961D0);

  return 0;
}