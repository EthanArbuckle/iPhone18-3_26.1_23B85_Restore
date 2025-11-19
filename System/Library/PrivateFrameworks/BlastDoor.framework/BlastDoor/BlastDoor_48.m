uint64_t sub_214438810()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for InviteRequestProtobuf(0) + 32);
          goto LABEL_3;
        case 5:
          v7 = *(type metadata accessor for InviteRequestProtobuf(0) + 36);
          sub_2146D8F58();
          break;
        case 6:
          sub_21443894C();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v5 = *(type metadata accessor for InviteRequestProtobuf(0) + 20);
          goto LABEL_3;
        case 2:
          v6 = *(type metadata accessor for InviteRequestProtobuf(0) + 24);
LABEL_3:
          v0 = 0;
          sub_2146D8F38();
          break;
        case 3:
          v4 = *(type metadata accessor for InviteRequestProtobuf(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_21443894C()
{
  v0 = *(type metadata accessor for InviteRequestProtobuf(0) + 40);
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_214438A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for InviteRequestProtobuf);
    sub_214438B30(v3);
    sub_214438BA8(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214438B30(uint64_t a1)
{
  result = type metadata accessor for InviteRequestProtobuf(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214438BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InviteRequestProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 40), v8, &qword_27C9135E8, &unk_21473F440);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C9135E8, &unk_21473F440);
  }

  sub_21443CC10(v8, v13, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for ActivityDataPreviewProtobuf);
}

uint64_t sub_214438DB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = a1[10];
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v11, 1, 1, v13);
}

uint64_t sub_214438EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913930, type metadata accessor for InviteRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214438F54(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913740, type metadata accessor for InviteRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214438FC0()
{
  sub_21443B758(&qword_27C913740, type metadata accessor for InviteRequestProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214439040()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C20);
  __swift_project_value_buffer(v0, qword_27CA19C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "handshakeToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseCode";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "inviteeCloudKitAddress";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inviteeShareLocations";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "inviteeBuildNumber";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "inviteeVersion";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "activityDataPreview";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214439348()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for InviteResponseProtobuf(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for InviteResponseProtobuf(0) + 24);
          sub_2146D8EF8();
          break;
        case 3:
          v5 = *(type metadata accessor for InviteResponseProtobuf(0) + 28);
LABEL_3:
          v0 = 0;
          sub_2146D8F38();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v6 = *(type metadata accessor for InviteResponseProtobuf(0) + 40);
        sub_2146D8F58();
      }

      else if (result == 7)
      {
        sub_21443957C();
      }
    }

    else
    {
      if (result != 4)
      {
        v4 = *(type metadata accessor for InviteResponseProtobuf(0) + 36);
        goto LABEL_3;
      }

      sub_2144394C8();
    }
  }
}

uint64_t sub_2144394C8()
{
  v0 = *(type metadata accessor for InviteResponseProtobuf(0) + 32);
  type metadata accessor for ShareLocationsProtobuf(0);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_21443957C()
{
  v0 = *(type metadata accessor for InviteResponseProtobuf(0) + 44);
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_214439630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for InviteResponseProtobuf);
  if (!v4)
  {
    sub_21443975C(v3);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for InviteResponseProtobuf);
    sub_2144397D4(v3, a1, a2, a3);
    sub_2144399E4(v3);
    sub_214439A5C(v3, a1, a2, a3, type metadata accessor for InviteResponseProtobuf);
    sub_214439AD8(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443975C(uint64_t a1)
{
  result = type metadata accessor for InviteResponseProtobuf(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9068();
  }

  return result;
}

uint64_t sub_2144397D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ShareLocationsProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InviteResponseProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 32), v8, &qword_27C913670, "8\t\t");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913670, "8\t\t");
  }

  sub_21443CC10(v8, v13, type metadata accessor for ShareLocationsProtobuf);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for ShareLocationsProtobuf);
}

uint64_t sub_2144399E4(uint64_t a1)
{
  result = type metadata accessor for InviteResponseProtobuf(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214439A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214439AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InviteResponseProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 44), v8, &qword_27C9135E8, &unk_21473F440);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C9135E8, &unk_21473F440);
  }

  sub_21443CC10(v8, v13, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for ActivityDataPreviewProtobuf);
}

uint64_t sub_214439CE8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for ShareLocationsProtobuf(0);
  (*(*(v9 - 8) + 56))(a2 + v7, 1, 1, v9);
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t sub_214439E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913928, type metadata accessor for InviteResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214439ED4(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913728, type metadata accessor for InviteResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214439F40()
{
  sub_21443B758(&qword_27C913728, type metadata accessor for InviteResponseProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214439FC0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C38);
  __swift_project_value_buffer(v0, qword_27CA19C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "handshakeToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inviterShareLocations";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "activityDataPreview";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443A1D4()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_21443A358();
        break;
      case 2:
        sub_21443A2A4();
        break;
      case 1:
        v3 = *(type metadata accessor for FinalizeHandshakeProtobuf(0) + 20);
        sub_2146D8F38();
        break;
    }
  }

  return result;
}

uint64_t sub_21443A2A4()
{
  v0 = *(type metadata accessor for FinalizeHandshakeProtobuf(0) + 24);
  type metadata accessor for ShareLocationsProtobuf(0);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_21443A358()
{
  v0 = *(type metadata accessor for FinalizeHandshakeProtobuf(0) + 28);
  type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_21443A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for FinalizeHandshakeProtobuf);
  if (!v4)
  {
    sub_21443A4AC(v3, a1, a2, a3);
    sub_21443A6BC(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ShareLocationsProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 24), v8, &qword_27C913670, "8\t\t");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913670, "8\t\t");
  }

  sub_21443CC10(v8, v13, type metadata accessor for ShareLocationsProtobuf);
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for ShareLocationsProtobuf);
}

uint64_t sub_21443A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 28), v8, &qword_27C9135E8, &unk_21473F440);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C9135E8, &unk_21473F440);
  }

  sub_21443CC10(v8, v13, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for ActivityDataPreviewProtobuf);
}

uint64_t sub_21443A8CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for ShareLocationsProtobuf(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_21443A9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913920, type metadata accessor for FinalizeHandshakeProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21443AA84(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913710, type metadata accessor for FinalizeHandshakeProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21443AAF0()
{
  sub_21443B758(&qword_27C913710, type metadata accessor for FinalizeHandshakeProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21443AB88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2146D9148();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146EA710;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_2146D9118();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_2146D9128();
}

uint64_t sub_21443ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21443AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_21442F86C(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443AE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913918, type metadata accessor for WithdrawInviteRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21443AEFC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9136F8, type metadata accessor for WithdrawInviteRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21443AF68()
{
  sub_21443B758(&qword_27C9136F8, type metadata accessor for WithdrawInviteRequestProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21443B014()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C68);
  __swift_project_value_buffer(v0, qword_27CA19C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareURL";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zoneName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "invitationToken";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443B228()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v1 = *(type metadata accessor for SecureCloudShareItemProtobuf(0) + 28);
        sub_2146D8EC8();
        break;
      case 2:
        v5 = *(type metadata accessor for SecureCloudShareItemProtobuf(0) + 24);
LABEL_10:
        v0 = 0;
        sub_2146D8F38();
        break;
      case 1:
        v4 = *(type metadata accessor for SecureCloudShareItemProtobuf(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_21443B300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for SecureCloudShareItemProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudShareItemProtobuf);
    sub_21443B3D0(v3, a1, a2, a3, type metadata accessor for SecureCloudShareItemProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21443B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

double sub_21443B484@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + a1[7]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21443B51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139D8, type metadata accessor for SecureCloudShareItemProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21443B5BC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9136D8, type metadata accessor for SecureCloudShareItemProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21443B628()
{
  sub_21443B758(&qword_27C9136D8, type metadata accessor for SecureCloudShareItemProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21443B758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21443CC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21443CC78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21443CCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_21443CDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v4;
      v25 = sub_2146DA6A8();
      v4 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v4;
      v33 = sub_2146DA6A8();
      v4 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v34 = v4[9];
  v36 = *(a1 + v34);
  v35 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v39 = *v37;
  v38 = v37[1];
  if (v35 >> 60 == 15)
  {
    if (v38 >> 60 == 15)
    {
      v40 = v4;
      sub_213FDCA18(v36, v35);
      sub_213FDCA18(v39, v38);
      sub_213FDC6BC(v36, v35);
      v41 = v40;
      goto LABEL_41;
    }

LABEL_38:
    sub_213FDCA18(v36, v35);
    sub_213FDCA18(v39, v38);
    sub_213FDC6BC(v36, v35);
    sub_213FDC6BC(v39, v38);
    return 0;
  }

  if (v38 >> 60 == 15)
  {
    goto LABEL_38;
  }

  v43 = v4;
  sub_213FDCA18(v36, v35);
  sub_213FDCA18(v39, v38);
  v44 = sub_214466780(v36, v35, v39, v38);
  sub_213FDC6BC(v39, v38);
  sub_213FDC6BC(v36, v35);
  v41 = v43;
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v45 = v41[10];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 9);
  v48 = (a2 + v45);
  v49 = *(v48 + 9);
  if (v47)
  {
    if ((*(v48 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v48 + 9))
    {
      return 0;
    }

    v55 = *v46;
    v56 = *(v46 + 8);
    v57 = *v48;
    v58 = *(v48 + 8);
    v59 = v55 != 0;
    if ((v56 & 1) == 0)
    {
      v59 = v55;
    }

    if (v58)
    {
      if (v57)
      {
        if (v59 != 1)
        {
          return 0;
        }
      }

      else if (v59)
      {
        return 0;
      }
    }

    else if (v59 != v57)
    {
      return 0;
    }
  }

  v50 = v41[11];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (v54)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (*v51 != *v53)
  {
    LOBYTE(v54) = 1;
  }

  if (v54)
  {
    return 0;
  }

LABEL_56:
  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21443D144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913948, &qword_214740F78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v17 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_63;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_63;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v17;
      v30 = sub_2146DA6A8();
      v17 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_63;
  }

  v31 = v17[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_63;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v17;
      v37 = sub_2146DA6A8();
      v17 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_63;
  }

  v38 = v17[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_63;
    }

    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v17;
      v44 = sub_2146DA6A8();
      v17 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_63;
  }

  v45 = v17[9];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 9);
  v48 = a2 + v45;
  v49 = *(a2 + v45 + 9);
  if (v47)
  {
    if (v49)
    {
      goto LABEL_32;
    }

LABEL_63:
    v63 = 0;
    return v63 & 1;
  }

  if (v49)
  {
    goto LABEL_63;
  }

  v55 = *v46;
  v56 = *v48;
  if (*(v48 + 8))
  {
    if (v56 <= 1)
    {
      if (v56)
      {
        if (v55 != 1)
        {
          goto LABEL_63;
        }
      }

      else if (v55)
      {
        goto LABEL_63;
      }
    }

    else if (v56 == 2)
    {
      if (v55 != 2)
      {
        goto LABEL_63;
      }
    }

    else if (v56 == 3)
    {
      if (v55 != 3)
      {
        goto LABEL_63;
      }
    }

    else if (v55 != 4)
    {
      goto LABEL_63;
    }
  }

  else if (v55 != v56)
  {
    goto LABEL_63;
  }

LABEL_32:
  v66 = v17;
  v50 = v17[10];
  v51 = *(v13 + 48);
  sub_213FB2E54(a1 + v50, v16, &qword_27C913940, &unk_214740F40);
  v52 = a2 + v50;
  v53 = v51;
  sub_213FB2E54(v52, &v16[v51], &qword_27C913940, &unk_214740F40);
  v54 = *(v5 + 48);
  if (v54(v16, 1, v4) == 1)
  {
    if (v54(&v16[v53], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C913940, &unk_214740F40);
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  sub_213FB2E54(v16, v12, &qword_27C913940, &unk_214740F40);
  if (v54(&v16[v53], 1, v4) == 1)
  {
    sub_21443CC78(v12, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
LABEL_44:
    sub_213FB2DF4(v16, &qword_27C913948, &qword_214740F78);
    goto LABEL_63;
  }

  sub_21443CC10(&v16[v53], v8, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  v57 = sub_21443D694(v12, v8);
  sub_21443CC78(v8, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_21443CC78(v12, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_213FB2DF4(v16, &qword_27C913940, &unk_214740F40);
  if ((v57 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_48:
  v58 = v66[11];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 4);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 4);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_63;
    }
  }

  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
  v63 = sub_2146D9578();
  return v63 & 1;
}

uint64_t sub_21443D694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v11 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v14 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_18;
    }

LABEL_15:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v18 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (v23 && (*v20 == *v22 && v21 == v23 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v23)
  {
    return 0;
  }

LABEL_25:
  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21443D9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913948, &qword_214740F78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_36;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_36;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v17;
      v30 = sub_2146DA6A8();
      v17 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_36;
  }

  v31 = v17[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_36;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v17;
      v37 = sub_2146DA6A8();
      v17 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_36;
  }

  v38 = v17[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_36;
    }

    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v17;
      v44 = sub_2146DA6A8();
      v17 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_36;
  }

  v59 = v17;
  v45 = v17[9];
  v46 = *(v13 + 48);
  sub_213FB2E54(a1 + v45, v16, &qword_27C913940, &unk_214740F40);
  v47 = a2 + v45;
  v48 = v46;
  sub_213FB2E54(v47, &v16[v46], &qword_27C913940, &unk_214740F40);
  v49 = *(v5 + 48);
  if (v49(v16, 1, v4) != 1)
  {
    sub_213FB2E54(v16, v12, &qword_27C913940, &unk_214740F40);
    if (v49(&v16[v48], 1, v4) != 1)
    {
      sub_21443CC10(&v16[v48], v8, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      v52 = sub_21443D694(v12, v8);
      sub_21443CC78(v8, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      sub_21443CC78(v12, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      sub_213FB2DF4(v16, &qword_27C913940, &unk_214740F40);
      if ((v52 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    sub_21443CC78(v12, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
LABEL_35:
    sub_213FB2DF4(v16, &qword_27C913948, &qword_214740F78);
    goto LABEL_36;
  }

  if (v49(&v16[v48], 1, v4) != 1)
  {
    goto LABEL_35;
  }

  sub_213FB2DF4(v16, &qword_27C913940, &unk_214740F40);
LABEL_39:
  v53 = v59[10];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 4);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 4);
  if ((v55 & 1) == 0)
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      goto LABEL_36;
    }

LABEL_45:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    v50 = sub_2146D9578();
    return v50 & 1;
  }

  if (v57)
  {
    goto LABEL_45;
  }

LABEL_36:
  v50 = 0;
  return v50 & 1;
}

unint64_t sub_21443DE7C()
{
  result = qword_27C913958;
  if (!qword_27C913958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913958);
  }

  return result;
}

unint64_t sub_21443DED0()
{
  result = qword_27C913978;
  if (!qword_27C913978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913978);
  }

  return result;
}

uint64_t sub_21443DF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21443DF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21443E070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudShareItemProtobuf(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2146DA6A8();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  if (v22 >> 60 != 15)
  {
    if (v25 >> 60 == 15)
    {
      goto LABEL_23;
    }

    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    v28 = sub_214466780(v23, v22, v26, v25);
    sub_213FDC6BC(v26, v25);
    sub_213FDC6BC(v23, v22);
    if (v28)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v25 >> 60 != 15)
  {
LABEL_23:
    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    sub_213FDC6BC(v23, v22);
    sub_213FDC6BC(v26, v25);
    return 0;
  }

  sub_213FDCA18(v23, v22);
  sub_213FDCA18(v26, v25);
  sub_213FDC6BC(v23, v22);
LABEL_26:
  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21443E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = (&v53 - v10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C8, &qword_214741068);
  v11 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v13 = &v53 - v12;
  v14 = type metadata accessor for ShareLocationsProtobuf(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139D0, &unk_214741070);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  v26 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  v27 = v26[5];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v31)
  {
    goto LABEL_22;
  }

  v53 = v7;
  v54 = v13;
  v32 = v26[6];
  v33 = *(v22 + 48);
  v55 = a1;
  sub_213FB2E54(a1 + v32, v25, &qword_27C913670, "8\t\t");
  v34 = a2 + v32;
  v35 = a2;
  sub_213FB2E54(v34, &v25[v33], &qword_27C913670, "8\t\t");
  v36 = *(v15 + 48);
  if (v36(v25, 1, v14) != 1)
  {
    sub_213FB2E54(v25, v21, &qword_27C913670, "8\t\t");
    if (v36(&v25[v33], 1, v14) != 1)
    {
      v40 = v57;
      sub_21443CC10(&v25[v33], v57, type metadata accessor for ShareLocationsProtobuf);
      v41 = sub_21443E8FC(v21, v40, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v40, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v21, type metadata accessor for ShareLocationsProtobuf);
      sub_213FB2DF4(v25, &qword_27C913670, "8\t\t");
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_21443CC78(v21, type metadata accessor for ShareLocationsProtobuf);
LABEL_13:
    v37 = &qword_27C9139D0;
    v38 = &unk_214741070;
    v39 = v25;
LABEL_21:
    sub_213FB2DF4(v39, v37, v38);
    goto LABEL_22;
  }

  if (v36(&v25[v33], 1, v14) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v25, &qword_27C913670, "8\t\t");
LABEL_15:
  v42 = v26[7];
  v43 = *(v58 + 48);
  v44 = v54;
  sub_213FB2E54(v55 + v42, v54, &qword_27C9135E8, &unk_21473F440);
  sub_213FB2E54(v35 + v42, v44 + v43, &qword_27C9135E8, &unk_21473F440);
  v45 = v60;
  v46 = *(v59 + 48);
  if (v46(v44, 1, v60) == 1)
  {
    if (v46(v44 + v43, 1, v45) == 1)
    {
      sub_213FB2DF4(v44, &qword_27C9135E8, &unk_21473F440);
LABEL_25:
      sub_2146D8DF8();
      sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
      v48 = sub_2146D9578();
      return v48 & 1;
    }

    goto LABEL_20;
  }

  v47 = v56;
  sub_213FB2E54(v44, v56, &qword_27C9135E8, &unk_21473F440);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    sub_21443CC78(v47, type metadata accessor for ActivityDataPreviewProtobuf);
LABEL_20:
    v37 = &qword_27C9139C8;
    v38 = &qword_214741068;
    v39 = v44;
    goto LABEL_21;
  }

  v50 = v44 + v43;
  v51 = v53;
  sub_21443CC10(v50, v53, type metadata accessor for ActivityDataPreviewProtobuf);
  v52 = sub_21443F230(v47, v51);
  sub_21443CC78(v51, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443CC78(v47, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_213FB2DF4(v44, &qword_27C9135E8, &unk_21473F440);
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_22:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_21443E8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_2146DA6A8();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18)
    {
      v19 = *v15 == *v17 && v16 == v18;
      if (v19 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v18)
  {
LABEL_17:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21443EA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v90 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C8, &qword_214741068);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v96 = type metadata accessor for ShareLocationsProtobuf(0);
  v94 = *(v96 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v95 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139D0, &unk_214741070);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v97 = &v90 - v25;
  v26 = type metadata accessor for InviteResponseProtobuf(0);
  v27 = v26[5];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_29;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v93 = v19;
      v32 = v13;
      v33 = v12;
      v34 = v5;
      v35 = v4;
      v36 = v16;
      v37 = a1;
      v38 = a2;
      v39 = v8;
      v40 = v26;
      v41 = sub_2146DA6A8();
      v26 = v40;
      v8 = v39;
      a2 = v38;
      a1 = v37;
      v16 = v36;
      v4 = v35;
      v5 = v34;
      v12 = v33;
      v13 = v32;
      v19 = v93;
      if ((v41 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v31)
  {
    goto LABEL_29;
  }

  v42 = v26[6];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 4);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_29;
    }
  }

  v47 = v26[7];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_29;
    }

    v92 = v8;
    if (*v48 != *v50 || v49 != v51)
    {
      v52 = v26;
      v53 = sub_2146DA6A8();
      v26 = v52;
      if ((v53 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_21:
    v90 = v5;
    v91 = v26;
    v54 = v26[8];
    v55 = *(v23 + 48);
    v56 = v97;
    sub_213FB2E54(a1 + v54, v97, &qword_27C913670, "8\t\t");
    v93 = v55;
    sub_213FB2E54(a2 + v54, &v55[v56], &qword_27C913670, "8\t\t");
    v57 = *(v94 + 48);
    v58 = v96;
    if (v57(v56, 1, v96) == 1)
    {
      v59 = v97;
      v60 = v57(&v93[v97], 1, v58) == 1;
      v61 = v59;
      if (!v60)
      {
        goto LABEL_27;
      }

      v96 = v13;
      sub_213FB2DF4(v59, &qword_27C913670, "8\t\t");
    }

    else
    {
      sub_213FB2E54(v97, v95, &qword_27C913670, "8\t\t");
      if (v57(&v93[v97], 1, v58) == 1)
      {
        sub_21443CC78(v95, type metadata accessor for ShareLocationsProtobuf);
        v61 = v97;
LABEL_27:
        v62 = &qword_27C9139D0;
        v63 = &unk_214741070;
LABEL_28:
        sub_213FB2DF4(v61, v62, v63);
        goto LABEL_29;
      }

      v96 = v13;
      v66 = v97;
      sub_21443CC10(&v93[v97], v19, type metadata accessor for ShareLocationsProtobuf);
      v67 = v95;
      v68 = sub_21443E8FC(v95, v19, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v19, type metadata accessor for ShareLocationsProtobuf);
      sub_21443CC78(v67, type metadata accessor for ShareLocationsProtobuf);
      sub_213FB2DF4(v66, &qword_27C913670, "8\t\t");
      if ((v68 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v69 = v91;
    v70 = v91[9];
    v71 = (a1 + v70);
    v72 = *(a1 + v70 + 8);
    v73 = (a2 + v70);
    v74 = v73[1];
    if (v72)
    {
      v75 = v90;
      if (!v74)
      {
        goto LABEL_29;
      }

      if (*v71 != *v73 || v72 != v74)
      {
        v76 = sub_2146DA6A8();
        v69 = v91;
        if ((v76 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v75 = v90;
      if (v74)
      {
        goto LABEL_29;
      }
    }

    v77 = v69[10];
    v78 = (a1 + v77);
    v79 = *(a1 + v77 + 4);
    v80 = (a2 + v77);
    v81 = *(a2 + v77 + 4);
    if (v79)
    {
      if (!v81)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (*v78 != *v80)
      {
        LOBYTE(v81) = 1;
      }

      if (v81)
      {
        goto LABEL_29;
      }
    }

    v82 = v12;
    v83 = v69[11];
    v84 = v4;
    v85 = *(v96 + 48);
    sub_213FB2E54(a1 + v83, v16, &qword_27C9135E8, &unk_21473F440);
    sub_213FB2E54(a2 + v83, &v16[v85], &qword_27C9135E8, &unk_21473F440);
    v86 = *(v75 + 48);
    if (v86(v16, 1, v84) == 1)
    {
      if (v86(&v16[v85], 1, v84) == 1)
      {
        sub_213FB2DF4(v16, &qword_27C9135E8, &unk_21473F440);
        goto LABEL_52;
      }
    }

    else
    {
      sub_213FB2E54(v16, v82, &qword_27C9135E8, &unk_21473F440);
      if (v86(&v16[v85], 1, v84) != 1)
      {
        v87 = &v16[v85];
        v88 = v92;
        sub_21443CC10(v87, v92, type metadata accessor for ActivityDataPreviewProtobuf);
        v89 = sub_21443F230(v82, v88);
        sub_21443CC78(v88, type metadata accessor for ActivityDataPreviewProtobuf);
        sub_21443CC78(v82, type metadata accessor for ActivityDataPreviewProtobuf);
        sub_213FB2DF4(v16, &qword_27C9135E8, &unk_21473F440);
        if ((v89 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_52:
        sub_2146D8DF8();
        sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
        v64 = sub_2146D9578();
        return v64 & 1;
      }

      sub_21443CC78(v82, type metadata accessor for ActivityDataPreviewProtobuf);
    }

    v62 = &qword_27C9139C8;
    v63 = &qword_214741068;
    v61 = v16;
    goto LABEL_28;
  }

  v92 = v8;
  if (!v51)
  {
    goto LABEL_21;
  }

LABEL_29:
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_21443F230(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivitySnapshotProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C0, &qword_214741060);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v39 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v17 = v39[7];
  v18 = *(v13 + 56);
  v41 = a1;
  sub_213FB2E54(a1 + v17, v16, &qword_27C913608, &qword_21473F468);
  sub_213FB2E54(a2 + v17, &v16[v18], &qword_27C913608, &qword_21473F468);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C913608, &qword_21473F468);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_213FB2E54(v16, v11, &qword_27C913608, &qword_21473F468);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21443CC78(v11, type metadata accessor for ActivitySnapshotProtobuf);
LABEL_6:
    v20 = &qword_27C9139C0;
    v21 = &qword_214741060;
    goto LABEL_7;
  }

  v23 = v40;
  sub_21443CC10(&v16[v18], v40, type metadata accessor for ActivitySnapshotProtobuf);
  v24 = *(v4 + 20);
  v25 = *&v11[v24];
  v26 = *(v23 + v24);
  if (v25 == v26 || (v27 = *&v11[v24], , , v28 = sub_214435990(v25, v26), , , (v28 & 1) != 0))
  {
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    v29 = sub_2146D9578();
    sub_21443CC78(v23, type metadata accessor for ActivitySnapshotProtobuf);
    sub_21443CC78(v11, type metadata accessor for ActivitySnapshotProtobuf);
    sub_213FB2DF4(v16, &qword_27C913608, &qword_21473F468);
    if ((v29 & 1) == 0)
    {
LABEL_15:
      v22 = 0;
      return v22 & 1;
    }

LABEL_11:
    v30 = v41;
    if ((sub_2143D71CC(*v41, *a2) & 1) == 0 || (sub_2143D743C(v30[1], a2[1]) & 1) == 0)
    {
      goto LABEL_15;
    }

    v31 = v39[8];
    v32 = (v30 + v31);
    v33 = *(v30 + v31 + 8);
    v34 = (a2 + v31);
    v35 = *(a2 + v31 + 8);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
        goto LABEL_15;
      }
    }

    v37 = v39[6];
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    v22 = sub_2146D9578();
    return v22 & 1;
  }

  sub_21443CC78(v23, type metadata accessor for ActivitySnapshotProtobuf);
  sub_21443CC78(v11, type metadata accessor for ActivitySnapshotProtobuf);
  v20 = &qword_27C913608;
  v21 = &qword_21473F468;
LABEL_7:
  sub_213FB2DF4(v16, v20, v21);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_21443F6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v61 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9139C8, &qword_214741068);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = type metadata accessor for InviteRequestProtobuf(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_45;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_2146DA6A8();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_45;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_45;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_2146DA6A8();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_45;
  }

  v34 = v17[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_45;
    }

    if (*v35 != *v37 || v36 != v38)
    {
      v39 = v17;
      v40 = sub_2146DA6A8();
      v17 = v39;
      if ((v40 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v38)
  {
    goto LABEL_45;
  }

  v41 = v17[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_45;
    }

    if (*v42 != *v44 || v43 != v45)
    {
      v46 = v17;
      v47 = sub_2146DA6A8();
      v17 = v46;
      if ((v47 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else if (v45)
  {
    goto LABEL_45;
  }

  v48 = v17[9];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_45;
    }
  }

  v53 = v17[10];
  v54 = *(v13 + 48);
  sub_213FB2E54(a1 + v53, v16, &qword_27C9135E8, &unk_21473F440);
  v55 = a2 + v53;
  v56 = v54;
  sub_213FB2E54(v55, &v16[v54], &qword_27C9135E8, &unk_21473F440);
  v57 = *(v5 + 48);
  if (v57(v16, 1, v4) == 1)
  {
    if (v57(&v16[v56], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C9135E8, &unk_21473F440);
LABEL_48:
      sub_2146D8DF8();
      sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
      v58 = sub_2146D9578();
      return v58 & 1;
    }

    goto LABEL_44;
  }

  sub_213FB2E54(v16, v12, &qword_27C9135E8, &unk_21473F440);
  if (v57(&v16[v56], 1, v4) == 1)
  {
    sub_21443CC78(v12, type metadata accessor for ActivityDataPreviewProtobuf);
LABEL_44:
    sub_213FB2DF4(v16, &qword_27C9139C8, &qword_214741068);
    goto LABEL_45;
  }

  sub_21443CC10(&v16[v56], v8, type metadata accessor for ActivityDataPreviewProtobuf);
  v60 = sub_21443F230(v12, v8);
  sub_21443CC78(v8, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_21443CC78(v12, type metadata accessor for ActivityDataPreviewProtobuf);
  sub_213FB2DF4(v16, &qword_27C9135E8, &unk_21473F440);
  if (v60)
  {
    goto LABEL_48;
  }

LABEL_45:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_21443FB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913990, &qword_214741058);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v60 = type metadata accessor for AchievementProtobuf(0);
  v61 = a1;
  v17 = v60[5];
  v18 = *(v13 + 56);
  sub_213FB2E54(a1 + v17, v16, &qword_27C913638, "z\t\t");
  v19 = a2 + v17;
  v20 = a2;
  sub_213FB2E54(v19, &v16[v18], &qword_27C913638, "z\t\t");
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_213FB2E54(v16, v11, &qword_27C913638, "z\t\t");
    if (v21(&v16[v18], 1, v4) != 1)
    {
      v24 = v59;
      sub_21443CC10(&v16[v18], v59, type metadata accessor for SampleProtobuf);
      v25 = sub_214440134(v11, v24);
      sub_21443CC78(v24, type metadata accessor for SampleProtobuf);
      sub_21443CC78(v11, type metadata accessor for SampleProtobuf);
      sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21443CC78(v11, type metadata accessor for SampleProtobuf);
LABEL_6:
    sub_213FB2DF4(v16, &qword_27C913990, &qword_214741058);
    goto LABEL_7;
  }

  if (v21(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
LABEL_10:
  v27 = v60;
  v26 = v61;
  v28 = v60[6];
  v29 = (v61 + v28);
  v30 = *(v61 + v28 + 8);
  v31 = (v20 + v28);
  v32 = *(v20 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_7;
    }
  }

  v33 = v60[7];
  v34 = (v61 + v33);
  v35 = *(v61 + v33 + 8);
  v36 = (v20 + v33);
  v37 = *(v20 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_7;
    }
  }

  v38 = v60[8];
  v39 = (v61 + v38);
  v40 = *(v61 + v38 + 8);
  v41 = (v20 + v38);
  v42 = *(v20 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      goto LABEL_7;
    }
  }

  v43 = v60[9];
  v44 = (v61 + v43);
  v45 = *(v61 + v43 + 8);
  v46 = (v20 + v43);
  v47 = *(v20 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_7;
    }
  }

  v48 = v60[10];
  v49 = (v61 + v48);
  v50 = *(v61 + v48 + 8);
  v51 = (v20 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v52)
  {
    goto LABEL_7;
  }

  v53 = v27[11];
  v54 = (v26 + v53);
  v55 = *(v26 + v53 + 8);
  v56 = (v20 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (v57 && (*v54 == *v56 && v55 == v57 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_48;
    }
  }

  else if (!v57)
  {
LABEL_48:
    sub_2146D8DF8();
    sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
    v22 = sub_2146D9578();
    return v22 & 1;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_214440040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214440134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleProtobuf(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v12 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_21443B758(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214440338(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v75 - v5;
  v7 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v8 = type metadata accessor for SampleProtobuf(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid) = xmmword_2146E68C0;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  v76 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  v77 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  v78 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  v79 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  v80 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  v81 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  v82 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  v83 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  v84 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  v85 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  v86 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  v87 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  v88 = v1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *(v24 + 8) = 1;
  *v24 = 0;
  v25 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  sub_213FB2E54(a1 + v25, v6, &qword_27C913638, "z\t\t");
  swift_beginAccess();
  sub_21443DF24(v6, v1 + v7);
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  swift_beginAccess();
  v29 = *v9;
  v30 = v9[1];
  *v9 = v28;
  v9[1] = v27;
  sub_213FDCA18(v28, v27);
  sub_213FDC6BC(v29, v30);
  v31 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  swift_beginAccess();
  *v10 = v32;
  *(v10 + 8) = v31;
  v33 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  swift_beginAccess();
  *v11 = v34;
  *(v11 + 8) = v33;
  v35 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v76;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  v38 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v77;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v78;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = v79;
  swift_beginAccess();
  *v46 = v45;
  *(v46 + 8) = v44;
  v47 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours);
  swift_beginAccess();
  v48 = *v47;
  LOBYTE(v47) = *(v47 + 8);
  v49 = v80;
  swift_beginAccess();
  *v49 = v48;
  *(v49 + 8) = v47;
  v50 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = v81;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v50;
  v53 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance);
  swift_beginAccess();
  v54 = *v53;
  LOBYTE(v53) = *(v53 + 8);
  v55 = v82;
  swift_beginAccess();
  *v55 = v54;
  *(v55 + 8) = v53;
  v56 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount);
  swift_beginAccess();
  v57 = *v56;
  LOBYTE(v56) = *(v56 + 8);
  v58 = v83;
  swift_beginAccess();
  *v58 = v57;
  *(v58 + 8) = v56;
  v59 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount);
  swift_beginAccess();
  v60 = *v59;
  LOBYTE(v59) = *(v59 + 8);
  v61 = v84;
  swift_beginAccess();
  *v61 = v60;
  *(v61 + 8) = v59;
  v62 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse);
  swift_beginAccess();
  v63 = *v62;
  LOBYTE(v62) = *(v62 + 8);
  v64 = v85;
  swift_beginAccess();
  *v64 = v63;
  *(v64 + 8) = v62;
  v65 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv);
  swift_beginAccess();
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v86;
  swift_beginAccess();
  *v67 = v66;
  *(v67 + 8) = v65;
  v68 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg);
  swift_beginAccess();
  v69 = *v68;
  LOBYTE(v68) = *(v68 + 8);
  v70 = v87;
  swift_beginAccess();
  *v70 = v69;
  *(v70 + 8) = v68;
  v71 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v72 = *v71;
  LOBYTE(v71) = *(v71 + 8);
  v73 = v88;
  swift_beginAccess();
  *v73 = v72;
  *(v73 + 8) = v71;
  return v1;
}

void sub_214440AA4()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0);
      if (v2 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C9139F0, type metadata accessor for SecureCloudInviteUserInfoProtobuf, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E328);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_214440C00()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_27C913A08);
        if (v3 <= 0x3F)
        {
          sub_21443432C(319, &qword_27C9139F0, type metadata accessor for SecureCloudInviteUserInfoProtobuf, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2E328);
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

void sub_214440D94()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214440E80()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214440F3C()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD0);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2FDD0);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_27C913A40);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2E328);
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

void sub_2144410B4()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214441198()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_214441258()
{
  result = qword_27C913A68;
  if (!qword_27C913A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913A68);
  }

  return result;
}

unint64_t sub_2144412E0()
{
  result = qword_27C913A80;
  if (!qword_27C913A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913A80);
  }

  return result;
}

unint64_t sub_214441368()
{
  result = qword_27C913A98;
  if (!qword_27C913A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913A98);
  }

  return result;
}

unint64_t sub_2144413C0()
{
  result = qword_27C913AA0;
  if (!qword_27C913AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913AA0);
  }

  return result;
}

unint64_t sub_214441418()
{
  result = qword_27C913AA8;
  if (!qword_27C913AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913AA8);
  }

  return result;
}

unint64_t sub_214441470()
{
  result = qword_27C913AB0;
  if (!qword_27C913AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913AB0);
  }

  return result;
}

uint64_t sub_2144414F0()
{
  result = sub_214441514();
  byte_27CA19C80 = result & 1;
  return result;
}

uint64_t sub_214441514()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_2146D95B8();
    v4 = v3;

    v5 = v2 == 0xD000000000000023 && 0x800000021479AB40 == v4;
    if (v5 || (sub_2146DA6A8() & 1) != 0 || (v2 == 0xD000000000000022 ? (v6 = 0x800000021479AB70 == v4) : (v6 = 0), v6 || (sub_2146DA6A8() & 1) != 0))
    {

      return 1;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_2146D9B98();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2146EA710;
  v9 = MEMORY[0x277D837D0];
  if (v4)
  {
    v10 = sub_2146D9618();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = sub_213FB2DA0();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  sub_2146D91D8();

  return 0;
}

uint64_t sub_21444171C()
{
  v0 = sub_2146D89C8();
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 != 2)
    {
      sub_213FDC6BC(v0, v1);
      v5 = 0;
      return v5 == 16;
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v0 = sub_213FDC6BC(v0, v1);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      return v5 == 16;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v1);
    sub_213FDC6BC(v0, v1);
    v5 = v4;
    return v5 == 16;
  }

  v8 = HIDWORD(v0);
  v9 = v0;
  result = sub_213FDC6BC(v0, v1);
  LODWORD(v5) = v8 - v9;
  if (!__OFSUB__(v8, v9))
  {
    v5 = v5;
    return v5 == 16;
  }

  __break(1u);
  return result;
}

unint64_t sub_2144417C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_214741330;
  *(v3 + 16) = sub_214442A04;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_2140442CC(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214741340;
  *(v6 + 16) = sub_214442A14;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_2140442CC(v5, a1 + 32);
}

uint64_t sub_214441908@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21444192C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214441984@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2144419A8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[2].n128_u64[1];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214441A00()
{
  if (*(v0 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return result;
}

uint64_t sub_214441A64()
{
  if (*(v0 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);
  }

  return result;
}

uint64_t sub_214441AC8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

uint64_t (*sub_214441B2C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_214441BB4;
  }

  return result;
}

uint64_t sub_214441BDC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 8);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
  return result;
}

void (*sub_214441C48(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t sub_214441CE0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 48);
  }

  return result;
}

uint64_t (*sub_214441D64(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 48);
    return sub_214441DEC;
  }

  return result;
}

uint64_t sub_214441E18(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 40);

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 57) = v7;
  return result;
}

void (*sub_214441E84(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214441F1C;
}

void sub_214441F1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 40);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 40);

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
  }

  free(v2);
}

__n128 sub_214441FC8(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214442028(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214442078@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214312AE0(v7, &v6);
}

__n128 sub_2144420C4(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214442124(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214442174@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214312934(v7, &v6);
}

__n128 sub_2144421C0(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214303240(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214442240@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214303190(v7, &v6);
}

__n128 sub_21444228C(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_2143033EC(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_21444230C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_21430333C(v7, &v6);
}

__n128 sub_214442358(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214303598(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t RCSEnvelope.pushLocation.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_2143034E8(v7, &v6);
}

__n128 RCSEnvelope.pushLocation.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214325114(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_2144424A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  if ((v3 & 0x80) != 0)
  {
    v3 = 0;
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v7 = v1[3];
    v6 = v1[4];
    v9 = v1[1];
    v8 = v1[2];
    v10 = *v1;
    *a1 = *v1;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = v6;
    *(a1 + 40) = v5;
    *(a1 + 48) = v4;
    v13[0] = v10;
    v13[1] = v9;
    v13[2] = v8;
    v13[3] = v7;
    v13[4] = v6;
    v13[5] = v5;
    v13[6] = v4;
    v14 = v3;
    result = sub_214442538(v13, &v12);
  }

  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_214442570@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  if ((v3 & 0x80) != 0)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v4 = v1[4];
    v10 = v1[1];
    v9 = v1[2];
    v11 = *v1;
    v7 = v3 & 0xFF7F;
    *a1 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    v14[0] = v11;
    v14[1] = v10;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v4;
    v14[5] = v5;
    v14[6] = v6;
    v15 = v3 & 0xFF7F;
    result = sub_214442614(v14, &v13);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_2144427AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214442834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_21444287C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144428EC(uint64_t result, char a2)
{
  v2 = *(result + 56) & 0xFF01 | ((a2 & 1) << 7);
  *(result + 24) &= 0xFF01uLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_214442934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 9) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_214442988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 << 9) & 0x1FFFFFF0000 | (2 * (-a2 & 0x7FLL));
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 32) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214442A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC0, &qword_2147417B0);
  sub_2146D99C8();
  (*(v5 + 16))(a3, v8, v4);
  (*(v10 + 16))(v13, v15, v9);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v10 + 32))(v17 + v16, v13, v9);
  v18 = v22;
  sub_21444337C(0, 0, v22, &unk_2147417C0, v17);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC8, &qword_2147417C8);
  (*(*(v19 - 8) + 8))(v21, v19);
  sub_21444361C(v18);
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_214442CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD8, &qword_214741878);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214442DC4, 0, 0);
}

uint64_t sub_214442DC4()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  sub_2146D9A08();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_214442E90;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_214442E90()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_214442F8C, 0, 0);
}

uint64_t sub_214442F8C()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_2144430DC;

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2144430DC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_21430299C(v4);
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_214442E90;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x2822003E8](v1 + 2, 0, 0, v9);
}

uint64_t sub_214443280(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214445244;

  return sub_214442CF8(a1, v6, v7, v1 + v5);
}

uint64_t sub_21444337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_214445064(a3, v27 - v11);
  v13 = sub_2146D99B8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21444361C(v12);
  }

  else
  {
    sub_2146D99A8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2146D9998();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2146D9628() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21444361C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214443684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);

  return sub_2146D99E8();
}

uint64_t sub_2144436BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD0, &qword_214757E00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_2147417E8;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  sub_2146D99D8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2144437E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21409A9C0;

  return v6();
}

uint64_t sub_2144438D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214445244;

  return sub_2144437E8(a1, v5);
}

uint64_t sub_214443988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2144439B0, 0, 0);
}

uint64_t sub_2144439B0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_214443A98;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_214443EE0(v5, 0, 0, sub_214443BA8, v1);
}

uint64_t sub_214443A98()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_214443C08(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_214443D30;

  return v11(v7);
}

uint64_t sub_214443D30()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_214443E2C, 0, 0);
}

uint64_t sub_214443E2C()
{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_214443EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2146D9998();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_214443F74, v6, v8);
}

uint64_t sub_214443F74()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_21444401C;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21444401C()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_2144440F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21444411C, 0, 0);
}

uint64_t sub_21444411C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_214444204;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_214444994(v5, 0, 0, sub_214444508, v1);
}

uint64_t sub_214444204()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214444340, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_214444340()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2144443A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[0] = a8;
  v21[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD0, &qword_214757E00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = v21[0];
  *(v19 + 24) = v18;
  v21[2] = a9;
  v21[3] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  sub_2146D99D8();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_214444568(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(a4 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[6] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_214444694;

  return v12(v8);
}

uint64_t sub_214444694()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_214444858;
  }

  else
  {
    v3 = sub_2144447A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2144447A8()
{
  v1 = v0[4];
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_214444858()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_214444900((v0 + 2), v1, v2, v3);
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_214444900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x282200958](a2, v7);
}

uint64_t sub_214444994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2146D9998();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_214444A28, v6, v8);
}

uint64_t sub_214444A28()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_214444AD0;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214444AD0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_280B30810;
  if (!qword_280B30810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214444C4C()
{
  sub_214444CB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214444CB8()
{
  if (!qword_280B2FE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913AC0, &qword_2147417B0);
    v0 = sub_2146D99F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2FE40);
    }
  }
}

uint64_t sub_214444D1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214444E14;

  return v7(a1);
}

uint64_t sub_214444E14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_214444F0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21409A9C0;

  return sub_214444568(v3, v5, v4, v2);
}

uint64_t sub_214444FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_214445244;

  return sub_214443C08(v3, v5, v4, v2);
}

uint64_t sub_214445064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144450D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214445244;

  return sub_214444D1C(a1, v5);
}

uint64_t sub_21444518C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21409A9C0;

  return sub_214444D1C(a1, v5);
}

uint64_t sub_214445248(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2146D8578();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](a1);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2146D9398();
  *a2 = result;
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  MEMORY[0x2160542A0]();
  result = sub_2146D9388();
  if ((result & 0x100000000) != 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  sub_2144453E8(MEMORY[0x277D84F90]);
  sub_2144454F8();
  sub_2146D8818();
  sub_2146D8568();
  (*(v5 + 8))(v9, v4);
  return swift_willThrow();
}

uint64_t sub_21444538C()
{
  close(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_2144453E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_214445550(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FDC730(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2144454F8()
{
  result = qword_27C913AE0;
  if (!qword_27C913AE0)
  {
    sub_2146D8578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913AE0);
  }

  return result;
}

uint64_t sub_214445550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144455C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214737980;
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 40) = 0xE900000000000065;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v4 = sub_2146D9588();
  [v3 setDateFormat_];

  v5 = sub_2146D8AD8();
  v6 = [v3 stringFromDate_];

  v7 = sub_2146D95B8();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0x656D6954646E65;
  *(inited + 88) = 0xE700000000000000;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v12 = sub_2146D9588();
  [v11 setDateFormat_];

  v13 = type metadata accessor for MBDActionCalendar();
  v14 = v1 + v13[5];
  v15 = sub_2146D8AD8();
  v16 = [v11 stringFromDate_];

  v17 = sub_2146D95B8();
  v19 = v18;

  *(inited + 96) = v17;
  *(inited + 104) = v19;
  *(inited + 120) = v10;
  *(inited + 128) = 0x656C746974;
  *(inited + 136) = 0xE500000000000000;
  v20 = v1 + v13[6];
  v21 = *(v20 + 24);
  if (v21)
  {
    *(inited + 144) = *(v20 + 16);
    *(inited + 152) = v21;
    *(inited + 168) = v10;
    strcpy((inited + 176), "calDescription");
    *(inited + 191) = -18;
    v22 = v1 + v13[7];
    v23 = *(v22 + 24);
    if (v23 != 1)
    {
      v24 = *(v22 + 16);
      if (v23)
      {
        v25 = MEMORY[0x277D837D0];
        v26 = v24;
        v27 = v23;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v25 = 0;
        *(inited + 208) = 0;
      }

      *(inited + 192) = v26;
      *(inited + 200) = v27;
      *(inited + 216) = v25;
      *(inited + 224) = 0x6B6361626C6C6166;
      *(inited + 232) = 0xEB000000006C7255;
      v28 = v1 + v13[8];
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (!v30)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(inited + 256) = 0;
LABEL_10:
        *(inited + 240) = v31;
        *(inited + 248) = v32;
        *(inited + 264) = v33;

        sub_213FDC9D0(v24, v23);
        sub_213FDC9D0(v29, v30);
        v34 = sub_214045690(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        v35 = sub_2140418B8(v34);

        return v35;
      }

      if (v30 != 1)
      {
        v33 = MEMORY[0x277D837D0];
        v31 = v29;
        v32 = v30;
        goto LABEL_10;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214445978()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214445A70()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214445B54()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214445C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2144475FC();
  *a2 = result;
  return result;
}

void sub_214445C78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D69547472617473;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0xEE006E6F69747069;
  v8 = 0x72637365446C6163;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D6954646E65;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_214445D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2144475FC();
  *a1 = result;
  return result;
}

uint64_t sub_214445D54(uint64_t a1)
{
  v2 = sub_2144473C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214445D90(uint64_t a1)
{
  v2 = sub_2144473C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214445DCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v144 = type metadata accessor for MBDActionCalendar();
  v3 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v147 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_2146D8B08();
  v148 = *(v149 - 8);
  v5 = v148[8];
  v6 = MEMORY[0x28223BE20](v149);
  v145 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v146 = &v129 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v129 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v129 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v129 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v129 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AE8, &qword_2147418A0);
  v150 = *(v21 - 8);
  v22 = *(v150 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v129 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v151 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2144473C0();
  v27 = v162;
  sub_2146DAA08();
  if (!v27)
  {
    v28 = v18;
    v140 = v12;
    v141 = v15;
    v142 = v20;
    v29 = v149;
    LOBYTE(v158) = 0;
    sub_2146DA168();
    LOBYTE(v158) = 1;
    v30 = sub_2146DA168();
    v31 = v150;
    v138 = v30;
    v139 = v32;
    LOBYTE(v158) = 2;
    v33 = sub_2146DA168();
    v35 = v34;
    v137 = v33;
    LOBYTE(v158) = 3;
    v36 = sub_2146DA0F8();
    *(&v135 + 1) = v38;
    *&v135 = v36;
    v136 = v35;
    LOBYTE(v158) = 4;
    v39 = sub_2146DA0F8();
    v162 = 0;
    v134 = v40;
    v131 = v39;
    v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v133 = "FileDescriptor";
    v132 = 0xD000000000000018;
    v42 = sub_2146D9588();
    [v41 setDateFormat_];

    v43 = sub_2146D9588();

    v44 = [v41 dateFromString_];

    if (v44)
    {
      sub_2146D8AE8();

      v130 = v148[4];
      v130(v142, v28, v29);
      v45 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v46 = sub_2146D9588();
      [v45 setDateFormat_];

      v47 = sub_2146D9588();

      v48 = [v45 dateFromString_];

      if (v48)
      {
        v139 = v21;
        v49 = v140;
        sub_2146D8AE8();

        v50 = v141;
        v130(v141, v49, v29);
        v51 = v148[2];
        v52 = v146;
        v51(v146, v142, v29);
        v53 = v145;
        v51(v145, v50, v29);
        v54 = v147;
        v51(v147, v52, v29);
        v51((v54 + *(v144 + 20)), v53, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2146E9BF0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
        v56 = swift_allocObject();
        LOBYTE(v158) = 0;
        v57 = swift_allocObject();
        *(v57 + 16) = 100;
        *(v57 + 24) = v158;
        *(v56 + 16) = sub_21406418C;
        *(v56 + 24) = v57;
        *(inited + 32) = v56;
        sub_214042B80(inited, &v158);
        v58 = v160;
        v140 = v159;
        LOBYTE(v50) = v161;
        sub_2144A2E70(&v154);
        v60 = v155;
        v59 = v156;
        LOBYTE(inited) = v157;
        sub_2144A2FBC(v152);
        v61 = v153;
        v62 = v144;
        v63 = v54 + *(v144 + 24);
        *v63 = v158;
        *(v63 + 16) = v140;
        *(v63 + 24) = v58;
        *(v63 + 32) = v50;
        v64 = v54 + *(v62 + 28);
        *v64 = v154;
        *(v64 + 16) = v60;
        *(v64 + 24) = v59;
        *(v64 + 32) = inited;
        v65 = v54 + *(v62 + 32);
        v66 = v152[1];
        *v65 = v152[0];
        *(v65 + 16) = v66;
        *(v65 + 32) = v61;
        v68 = *v63;
        v67 = *(v63 + 8);
        v69 = *(v63 + 24);
        v130 = *(v63 + 16);
        LODWORD(v62) = *(v63 + 32);
        *&v154 = v137;
        *(&v154 + 1) = v136;
        LODWORD(v140) = v62;
        LOBYTE(v152[0]) = v62;
        *&v158 = 0xD000000000000017;
        *(&v158 + 1) = 0x800000021478D680;
        v132 = 0x800000021478D680;
        v159 = 0xD00000000000001CLL;
        v160 = 0x800000021478A360;
        v144 = 0x800000021478A360;
        v133 = v69;

        v70 = v162;
        v138 = v68;
        v71 = v68(&v154, v152, &v158);
        if (v70)
        {
          v162 = v70;

          v72 = v139;
        }

        else
        {
          v129 = v65;
          v72 = v139;
          if (v71)
          {
            v79 = v144;
            v162 = 0;

            v80 = *(v63 + 8);
            v81 = *(v63 + 24);

            *v63 = v138;
            *(v63 + 8) = v67;
            v82 = v136;
            *(v63 + 16) = v137;
            *(v63 + 24) = v82;
            *(v63 + 32) = v140;
            v84 = *v64;
            v83 = *(v64 + 8);
            v85 = *(v64 + 16);
            v86 = *(v64 + 24);
            v87 = *(v64 + 32);
            v154 = v135;
            LODWORD(v138) = v87;
            LOBYTE(v152[0]) = v87;
            *&v158 = 0xD000000000000020;
            *(&v158 + 1) = 0x800000021478D6A0;
            v159 = 0xD00000000000001CLL;
            v160 = v79;

            v137 = v85;
            sub_213FDC9D0(v85, v86);
            v88 = v162;
            v140 = v84;
            v89 = (v84)(&v154, v152, &v158);
            v162 = v88;
            if (v88)
            {
            }

            else
            {
              if (v89)
              {
                sub_213FDC6D0(v137, v86);
                v96 = v144;

                v97 = *(v64 + 8);
                v98 = *(v64 + 16);
                v99 = *(v64 + 24);

                sub_213FDC6D0(v98, v99);
                *v64 = v140;
                *(v64 + 8) = v83;
                v100 = *(&v135 + 1);
                *(v64 + 16) = v135;
                *(v64 + 24) = v100;
                *(v64 + 32) = v138;
                v102 = *v129;
                v101 = *(v129 + 8);
                v103 = *(v129 + 16);
                v104 = *(v129 + 24);
                v105 = *(v129 + 32);
                *&v154 = v131;
                *(&v154 + 1) = v134;
                LODWORD(v140) = v105;
                LOBYTE(v152[0]) = v105;
                *&v158 = 0xD00000000000001DLL;
                *(&v158 + 1) = 0x800000021478D6D0;
                v159 = 0xD00000000000001CLL;
                v160 = v96;

                sub_213FDC9D0(v103, v104);
                v106 = v162;
                v107 = v102(&v154, v152, &v158);
                v162 = v106;
                if (v106)
                {
                }

                else
                {
                  if (v107)
                  {
                    sub_213FDC6D0(v103, v104);

                    v115 = v148[1];
                    v115(v145, v29);
                    v115(v146, v29);
                    v115(v141, v29);
                    v115(v142, v29);
                    (*(v150 + 8))(v24, v139);
                    v116 = v129;
                    v117 = *(v129 + 8);
                    v118 = *(v129 + 16);
                    v119 = *(v129 + 24);

                    sub_213FDC6D0(v118, v119);
                    *v116 = v102;
                    *(v116 + 8) = v101;
                    v120 = v134;
                    *(v116 + 16) = v131;
                    *(v116 + 24) = v120;
                    *(v116 + 32) = v140;
                    sub_214447470(v147, v143);
                    return __swift_destroy_boxed_opaque_existential_1(v151);
                  }

                  sub_214031C4C();
                  v121 = swift_allocError();
                  *v122 = 0xD00000000000001DLL;
                  v122[1] = 0x800000021478D6D0;
                  v123 = v144;
                  v122[2] = 0xD00000000000001CLL;
                  v122[3] = v123;
                  v162 = v121;
                  swift_willThrow();
                }

                v124 = v148[1];
                v124(v145, v29);
                v124(v146, v29);
                v124(v141, v29);
                v124(v142, v29);
                (*(v150 + 8))(v24, v139);
                v125 = v129;
                v126 = *(v129 + 8);
                v127 = *(v129 + 16);
                v128 = *(v129 + 24);

                sub_213FDC6D0(v127, v128);
                *v125 = v102;
                *(v125 + 8) = v101;
                *(v125 + 16) = v103;
                *(v125 + 24) = v104;
                *(v125 + 32) = v140;
                goto LABEL_17;
              }

              sub_214031C4C();
              v108 = swift_allocError();
              *v109 = 0xD000000000000020;
              v109[1] = 0x800000021478D6A0;
              v110 = v144;
              v109[2] = 0xD00000000000001CLL;
              v109[3] = v110;
              v162 = v108;
              swift_willThrow();
            }

            v111 = v148[1];
            v111(v145, v29);
            v111(v146, v29);
            v111(v141, v29);
            v111(v142, v29);
            (*(v150 + 8))(v24, v139);
            v112 = *(v64 + 8);
            v113 = *(v64 + 16);
            v114 = *(v64 + 24);

            sub_213FDC6D0(v113, v114);
            *v64 = v140;
            *(v64 + 8) = v83;
            *(v64 + 16) = v137;
            *(v64 + 24) = v86;
            *(v64 + 32) = v138;
LABEL_17:
            sub_214447414(v147);
            return __swift_destroy_boxed_opaque_existential_1(v151);
          }

          sub_214031C4C();
          v90 = swift_allocError();
          *v91 = 0xD000000000000017;
          v91[1] = v132;
          v91[2] = 0xD00000000000001CLL;
          v91[3] = v144;
          v162 = v90;
          swift_willThrow();
        }

        v92 = v148[1];
        v92(v145, v29);
        v92(v146, v29);
        v92(v141, v29);
        v92(v142, v29);
        (*(v150 + 8))(v24, v72);
        v93 = *(v63 + 8);
        v94 = *(v63 + 24);

        *v63 = v138;
        *(v63 + 8) = v67;
        v95 = v133;
        *(v63 + 16) = v130;
        *(v63 + 24) = v95;
        *(v63 + 32) = v140;
        goto LABEL_17;
      }

      (v148[1])(v142, v29);
      v73 = &v158;
    }

    else
    {

      v73 = &v160;
    }

    v74 = *(v73 - 32);

    v75 = sub_2146D9F58();
    v76 = swift_allocError();
    v78 = v77;
    sub_2146D9F28();
    (*(*(v75 - 8) + 104))(v78, *MEMORY[0x277D84168], v75);
    v162 = v76;
    swift_willThrow();
    (*(v31 + 8))(v24, v21);
    return __swift_destroy_boxed_opaque_existential_1(v151);
  }

  v162 = v27;
  return __swift_destroy_boxed_opaque_existential_1(v151);
}

uint64_t sub_214446F18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AF8, qword_2147418A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144473C0();
  sub_2146DAA28();
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v12 = sub_2146D9588();
  [v11 setDateFormat_];

  v13 = sub_2146D8AD8();
  v14 = [v11 stringFromDate_];

  sub_2146D95B8();
  LOBYTE(v31) = 0;
  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v30 = v6;

    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = sub_2146D9588();
    [v15 setDateFormat_];

    v17 = type metadata accessor for MBDActionCalendar();
    v18 = v3 + v17[5];
    v19 = sub_2146D8AD8();
    v20 = [v15 stringFromDate_];

    sub_2146D95B8();
    LOBYTE(v31) = 1;
    sub_2146DA328();

    v21 = v3 + v17[6];
    v22 = v30;
    if (!*(v21 + 24))
    {
      goto LABEL_7;
    }

    v23 = *(v21 + 16);
    LOBYTE(v31) = 2;

    sub_2146DA328();

    v25 = v3 + v17[7];
    v26 = *(v25 + 24);
    if (v26 == 1)
    {
      goto LABEL_7;
    }

    v31 = *(v25 + 16);
    v32 = v26;
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v27 = v3 + v17[8];
    v28 = *(v27 + 24);
    if (v28 == 1)
    {
LABEL_7:
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v31 = *(v27 + 16);
      v32 = v28;
      v33 = 4;
      sub_2146DA388();
      return (*(v22 + 8))(v9, v5);
    }
  }

  return result;
}

unint64_t sub_2144473C0()
{
  result = qword_27C913AF0;
  if (!qword_27C913AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913AF0);
  }

  return result;
}

uint64_t sub_214447414(uint64_t a1)
{
  v2 = type metadata accessor for MBDActionCalendar();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214447470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDActionCalendar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2144474F8()
{
  result = qword_27C913B00;
  if (!qword_27C913B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B00);
  }

  return result;
}

unint64_t sub_214447550()
{
  result = qword_27C913B08;
  if (!qword_27C913B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B08);
  }

  return result;
}

unint64_t sub_2144475A8()
{
  result = qword_27C913B10;
  if (!qword_27C913B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B10);
  }

  return result;
}

uint64_t sub_2144475FC()
{
  v0 = sub_2146DA098();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214447648@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (result + 1));
  if ((result + 1) >= 3)
  {
    LOBYTE(v2) = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214447670@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (result + 1));
  if ((result + 1) >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2144476DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214741CB8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214447764()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214741CB8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214447890()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2144478C0(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214447918@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiteRelayTextMessage() + 20);

  return sub_2144479A8(v3, a1);
}

uint64_t type metadata accessor for LiteRelayTextMessage()
{
  result = qword_27C913B50;
  if (!qword_27C913B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144479A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214447A18(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LiteRelayTextMessage() + 20);

  return sub_214447A5C(a1, v3);
}

uint64_t sub_214447A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214447B14()
{
  v1 = (v0 + *(type metadata accessor for LiteRelayTextMessage() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214447B54(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LiteRelayTextMessage() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214447BE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4];
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000014, 0x8000000214741A80);
  MEMORY[0x2160545D0](0x79646F4273616820, 0xEA00000000003A20);
  if (*(v0 + 8))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2160545D0](v6, v7);

  MEMORY[0x2160545D0](0x6B63616270617420, 0xEE00203A65707954);
  v8 = type metadata accessor for LiteRelayTextMessage();
  sub_2144479A8(v0 + *(v8 + 20), v5);
  v9 = type metadata accessor for LiteTapback(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21408354C(v5);
    v10 = 15;
  }

  else
  {
    v10 = v5[*(v9 + 20)];
    sub_2140835B4(v5);
  }

  v17[15] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B80, &qword_2146F4D10);
  v11 = sub_2146D9608();
  MEMORY[0x2160545D0](v11);

  MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479AC20);
  v12 = (v1 + *(v8 + 24));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v12[1];
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x2160545D0](v14, v15);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return v18;
}

unint64_t sub_214447E44()
{
  result = qword_27C913B18;
  if (!qword_27C913B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B18);
  }

  return result;
}

unint64_t sub_214447E98(uint64_t a1)
{
  *(a1 + 8) = sub_214447EC8();
  result = sub_214447F1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214447EC8()
{
  result = qword_27C913B20;
  if (!qword_27C913B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B20);
  }

  return result;
}

unint64_t sub_214447F1C()
{
  result = qword_27C913B28;
  if (!qword_27C913B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B28);
  }

  return result;
}

unint64_t sub_214447F74()
{
  result = qword_27C913B30;
  if (!qword_27C913B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913B38, qword_214741B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B30);
  }

  return result;
}

uint64_t sub_214447FD8(uint64_t a1)
{
  *(a1 + 8) = sub_214448040(&qword_27C913B40);
  result = sub_214448040(&qword_27C913B48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214448040(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LiteRelayTextMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144480B0()
{
  sub_2143ACE3C();
  if (v0 <= 0x3F)
  {
    sub_214448138();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214448138()
{
  if (!qword_280B2FBB0)
  {
    type metadata accessor for LiteTapback(255);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2FBB0);
    }
  }
}

unint64_t sub_2144481A0()
{
  result = qword_27C913B60;
  if (!qword_27C913B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B60);
  }

  return result;
}

uint64_t sub_2144481F4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == -1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_21444821C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21444832C(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_21444837C()
{
  result = qword_27C913B68;
  if (!qword_27C913B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B68);
  }

  return result;
}

uint64_t sub_214448428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214448464()
{
  result = qword_27C913B70;
  if (!qword_27C913B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B70);
  }

  return result;
}

unint64_t sub_2144484B8()
{
  result = qword_27C913B78;
  if (!qword_27C913B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B78);
  }

  return result;
}

unint64_t sub_21444852C()
{
  result = qword_27C913B80;
  if (!qword_27C913B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B80);
  }

  return result;
}

BlastDoor::MBDChipType_optional __swiftcall MBDChipType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2144485A8()
{
  result = qword_27C913B88;
  if (!qword_27C913B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913B88);
  }

  return result;
}

unint64_t sub_214448604(uint64_t a1)
{
  *(a1 + 8) = sub_2142E93B4();
  result = sub_2142E94BC();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDChipContent()
{
  result = qword_27C913B90;
  if (!qword_27C913B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214448740()
{
  sub_2144487B4();
  if (v0 <= 0x3F)
  {
    sub_2144487E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_2144487B4()
{
  result = qword_27C913BA0;
  if (!qword_27C913BA0)
  {
    result = &type metadata for MBDChipReply;
    atomic_store(&type metadata for MBDChipReply, &qword_27C913BA0);
  }

  return result;
}

void sub_2144487E4()
{
  if (!qword_27C913BA8)
  {
    v0 = type metadata accessor for MBDChipAction();
    if (!v1)
    {
      atomic_store(v0, &qword_27C913BA8);
    }
  }
}

unint64_t sub_21444882C()
{
  result = qword_27C913BB0;
  if (!qword_27C913BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BB0);
  }

  return result;
}

uint64_t sub_214448888(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t sub_2144488D4(uint64_t a1)
{
  *(a1 + 8) = sub_214448904();
  result = sub_214448958();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214448904()
{
  result = qword_27C913BB8;
  if (!qword_27C913BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BB8);
  }

  return result;
}

unint64_t sub_214448958()
{
  result = qword_27C913BC0;
  if (!qword_27C913BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BC0);
  }

  return result;
}

uint64_t sub_2144489AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_214448A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_214448A68()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214448AE4()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214448B60@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214448BAC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214448C08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214448C54(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214448CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214448E28(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214448EC4(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t sub_214448F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v12 = *(v3 + 80);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 72);

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144490A4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214449140(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

uint64_t sub_2144491D8()
{
  v1 = *(v0 + 88);
  sub_213FDCA18(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_21444920C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_214449264(uint64_t a1)
{
  *(a1 + 8) = sub_21431FCEC();
  result = sub_21431F4B8();
  *(a1 + 16) = result;
  return result;
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

uint64_t sub_2144492C0(uint64_t a1, int a2)
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

uint64_t sub_214449308(uint64_t result, int a2, int a3)
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

uint64_t sub_214449370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a5;
  v26 = a1;
  v27 = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v16, v15);
  v17 = *(a6 + 16);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) != 1)
  {
    return (*(v18 + 32))(a7, v14, v17);
  }

  (*(v11 + 8))(v14, a6);
  v28 = a3;
  v29 = a4;

  MEMORY[0x2160545D0](58, 0xE100000000000000);
  v30 = v25;
  v19 = sub_2146DA428();
  MEMORY[0x2160545D0](v19);

  MEMORY[0x2160545D0](58, 0xE100000000000000);
  MEMORY[0x2160545D0](v26, v27);
  v20 = v28;
  v21 = v29;
  sub_21404A6EC();
  swift_allocError();
  *v22 = 0xD00000000000002ELL;
  *(v22 + 8) = 0x80000002147998A0;
  strcpy((v22 + 16), "Expected Value");
  *(v22 + 31) = -18;
  *(v22 + 32) = v20;
  *(v22 + 40) = v21;
  return swift_willThrow();
}

uint64_t PhotosPoster.$identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 PhotosPoster.$identifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t PhotosPoster.$assetIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 680);
  v3 = *(v1 + 688);
  v4 = *(v1 + 696);
  v5 = *(v1 + 704);
  *a1 = *(v1 + 672);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 PhotosPoster.$assetIdentifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[42].n128_u64[1];
  v7 = v1[43].n128_i64[0];
  v8 = v1[43].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[42] = *a1;
  v1[43].n128_u64[0] = v3;
  v1[43].n128_u64[1] = v4;
  v1[44].n128_u8[0] = v5;
  return result;
}

uint64_t PhotosPoster.identifier.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t PhotosPoster.assetIdentifier.getter()
{
  if (*(v0 + 696) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 688);

    return v1;
  }

  return result;
}

uint64_t AvatarRecord.$identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 AvatarRecord.$identifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t AvatarRecord.identifier.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 MemojiPoster.avatarImage.setter(uint64_t a1)
{
  sub_213FB2DF4(v1 + 32, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 224) = *(a1 + 192);
  *(v1 + 240) = v3;
  *(v1 + 256) = *(a1 + 224);
  *(v1 + 272) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 160) = *(a1 + 128);
  *(v1 + 176) = v4;
  v5 = *(a1 + 176);
  *(v1 + 192) = *(a1 + 160);
  *(v1 + 208) = v5;
  v6 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v6;
  v7 = *(a1 + 112);
  *(v1 + 128) = *(a1 + 96);
  *(v1 + 144) = v7;
  v8 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 64) = result;
  *(v1 + 80) = v10;
  return result;
}

void *MemojiPoster.$avatarImage.setter(const void *a1)
{
  sub_213FB2DF4(v1 + 32, &qword_27C905500, &qword_2146F2BE0);

  return memcpy((v1 + 32), a1, 0x1B8uLL);
}

unint64_t sub_214449A94@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0x3F80000000000000;
  *(v3 + 16) = sub_21445D570;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_214043AE0(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x3F80000000000000;
  *(v6 + 16) = sub_21445D5B8;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  sub_214043AE0(v5, a1 + 24);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0x3F80000000000000;
  *(v9 + 16) = sub_21445D5B8;
  *(v9 + 24) = v10;
  *(v8 + 32) = v9;
  sub_214043AE0(v8, a1 + 48);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 0x3F80000000000000;
  *(v12 + 16) = sub_21445D5B8;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_214043AE0(v11, a1 + 72);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0x3F80000000000000;
  *(v15 + 16) = sub_21445D5B8;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_214043AE0(v14, a1 + 96);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x3F80000000000000;
  *(v18 + 16) = sub_21445D5B8;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_214043AE0(v17, a1 + 120);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x3F80000000000000;
  *(v21 + 16) = sub_21445D5B8;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  sub_214043AE0(v20, a1 + 144);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = 0x3F80000000000000;
  *(v24 + 16) = sub_21445D5B8;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  return sub_214043AE0(v23, a1 + 168);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.$groupName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.$groupName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 192);
  v7 = *(v1 + 200);
  v8 = *(v1 + 208);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  *(v1 + 216) = v5;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.groupName.getter()
{
  if (*(v0 + 208) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 200);

    return v1;
  }

  return result;
}

uint64_t PhotosPoster.Media.$assetUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 PhotosPoster.Media.$assetUUID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t PhotosPoster.Media.$subpath.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 PhotosPoster.Media.$subpath.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t PhotosPoster.Media.assetUUID.getter()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t PhotosPoster.Media.subpath.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t PhotosPoster.ParallaxLayer.$identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 488);
  v4 = *(v1 + 496);
  v3 = *(v1 + 504);
  v5 = *(v1 + 512);
  *a1 = *(v1 + 480);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 PhotosPoster.ParallaxLayer.$identifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[30].n128_u64[1];
  v7 = v1[31].n128_u64[1];

  result = *a1;
  v1[30] = *a1;
  v1[31].n128_u64[0] = v3;
  v1[31].n128_u64[1] = v4;
  v1[32].n128_u8[0] = v5;
  return result;
}

__n128 PhotosPoster.ParallaxLayer.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *PhotosPoster.ParallaxLayer.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t PhotosPoster.ParallaxLayer.identifier.getter()
{
  if (*(v0 + 504))
  {
    v1 = *(v0 + 496);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21444A480@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21407B588;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_21444A584@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21445C1D4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214742170;
  *(v6 + 16) = sub_214442A04;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_2140442CC(v5, a1 + 40);
}

uint64_t sub_21444A6D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21444A724(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21444A780@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 65);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21444A7A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = *(v1 + 48);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 65) = v5;
  return result;
}

uint64_t sub_21444A7FC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21444A878()
{
  if (*(v0 + 64))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);
  }

  return result;
}

unint64_t PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.rawValue.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
    case 3:
    case 5:
      result = 0xD000000000000018;
      break;
    case 2:
    case 0xD:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 8:
    case 0xA:
      result = 0xD00000000000001CLL;
      break;
    case 9:
    case 0xB:
      result = 0xD000000000000023;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PhotosPoster.ParallaxLayer.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MemojiPoster.avatarImage.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1 + 32, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicPoster.DynamicPosterType.rawValue.getter()
{
  result = 0x315F7364756F6C63;
  switch(*v0)
  {
    case 1:
      result = 0x325F7364756F6C63;
      break;
    case 2:
      result = 0x335F7364756F6C63;
      break;
    case 3:
      result = 0x345F7364756F6C63;
      break;
    case 4:
      result = 0x355F7364756F6C63;
      break;
    case 5:
      result = 0x365F7364756F6C63;
      break;
    case 6:
      result = 0x315F6E6165636FLL;
      break;
    case 7:
      result = 0x325F6E6165636FLL;
      break;
    case 8:
      result = 0x5F72657474696C67;
      break;
    case 9:
      result = 0x5F72657474696C67;
      break;
    case 0xA:
      result = 0x5F72657474696C67;
      break;
    case 0xB:
      result = 0x5F72657474696C67;
      break;
    case 0xC:
      result = 0x5F72657474696C67;
      break;
    case 0xD:
      result = 0x315F61726F727561;
      break;
    case 0xE:
      result = 0x325F61726F727561;
      break;
    case 0xF:
      result = 0x335F61726F727561;
      break;
    case 0x10:
      result = 0x345F61726F727561;
      break;
    case 0x11:
      result = 0x355F61726F727561;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PosterArchive.ProviderBundleIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000028;
  v2 = 0xD000000000000030;
  v3 = 0xD000000000000036;
  if (a1 != 4)
  {
    v3 = 0xD000000000000035;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD00000000000002CLL;
  }

  if (!a1)
  {
    v1 = 0xD00000000000002ELL;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PosterArchive.init(with:provider:posterUUID:version:versionSupplement:role:)@<X0>(_OWORD *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = *a6;
  v12 = a1[11];
  a7[10] = a1[10];
  a7[11] = v12;
  a7[12] = a1[12];
  *(a7 + 203) = *(a1 + 203);
  v13 = a1[7];
  a7[6] = a1[6];
  a7[7] = v13;
  v14 = a1[9];
  a7[8] = a1[8];
  a7[9] = v14;
  v15 = a1[3];
  a7[2] = a1[2];
  a7[3] = v15;
  v16 = a1[5];
  a7[4] = a1[4];
  a7[5] = v16;
  v17 = a1[1];
  *a7 = *a1;
  a7[1] = v17;
  memcpy(a7 + 14, a2, 0x2D9uLL);
  v18 = type metadata accessor for PosterArchive();
  v19 = v18[6];
  v20 = sub_2146D8B88();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a3, v20);
  *(a7 + v18[7]) = a4;
  *(a7 + v18[8]) = a5;
  *(a7 + v18[9]) = v11;
  return result;
}

uint64_t type metadata accessor for PosterArchive()
{
  result = qword_280B2F960;
  if (!qword_280B2F960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PosterArchive.Context.wallpaperWorkingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PosterArchive.Context.init(wallpaperWorkingDirectory:role:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  return result;
}

unint64_t sub_21444AFF8()
{
  if (*v0)
  {
    result = 1701605234;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_21444B030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000021478C7A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21444B118(uint64_t a1)
{
  v2 = sub_21444B360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21444B154(uint64_t a1)
{
  v2 = sub_21444B360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Context.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913BC8, &qword_214742190);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v18 = *(v1 + 17);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21444B360();

  sub_2146DAA28();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v19 = 0;
  sub_2140A6418();
  v11 = v13[1];
  sub_2146DA388();

  if (!v11)
  {
    LOBYTE(v15) = v18;
    v19 = 1;
    sub_21444B3B4();
    sub_2146DA388();
  }

  return (*(v14 + 8))(v6, v3);
}

unint64_t sub_21444B360()
{
  result = qword_27C913BD0;
  if (!qword_27C913BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BD0);
  }

  return result;
}

unint64_t sub_21444B3B4()
{
  result = qword_27C913BD8;
  if (!qword_27C913BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BD8);
  }

  return result;
}

uint64_t PosterArchive.Context.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913BE0, &qword_214742198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21444B360();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_21406100C();
  sub_2146DA1C8();
  v11 = v16;
  v12 = v17;
  v19 = v18;
  v20 = 1;
  sub_21444B64C();
  sub_2146DA1C8();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 17) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21444B64C()
{
  result = qword_27C913BE8;
  if (!qword_27C913BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BE8);
  }

  return result;
}

BlastDoor::PosterArchive::Configuration::SystemTimeFontConfiguration::TimeFontIdentifier __swiftcall PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.init(defaultingRawValue:)(Swift::String defaultingRawValue)
{
  v2 = v1;
  result = PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.init(rawValue:)(defaultingRawValue).value;
  v4 = v5;
  if (v5 == 16)
  {
    v4 = 12;
  }

  *v2 = v4;
  return result;
}

BlastDoor::PosterArchive::Configuration::SystemTimeFontConfiguration::TimeFontIdentifier_optional __swiftcall PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_21444B7DC@<X0>(unint64_t *a1@<X8>)
{
  result = PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleAlignment __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  if (defaultingRawValue >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = defaultingRawValue;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleAlignment_optional __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleColor::Style __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  v2 = defaultingRawValue == 1;
  if (defaultingRawValue == 2)
  {
    v2 = 2;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleColor::Style_optional __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.color.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.localizedName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.locations.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

double PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.startPoint.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

double PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.endPoint.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.colors.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.discreteColorProperties.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.discreteColorProperties.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.gradientProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = *(v1 + 56);
  *(a1 + 40) = v2;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.gradientProperties.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 40);

  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::NumberingSystem __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem.init(defaultingRawValue:)(Swift::String defaultingRawValue)
{
  v2 = v1;
  result = PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem.init(rawValue:)(defaultingRawValue).value;
  v4 = v5;
  if (v5 == 5)
  {
    v4 = 0;
  }

  *v2 = v4;
  return result;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::NumberingSystem_optional __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21444C190()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = *&aLatn_0[8 * v1];
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21444C1EC()
{
  v1 = *&aLatn_0[8 * *v0];
  sub_2146D9698();
}

uint64_t sub_21444C22C()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = *&aLatn_0[8 * v1];
  sub_2146D9698();

  return sub_2146DA9B8();
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.timeFontConfiguration.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.timeFontConfiguration.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.titleColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_21430F12C(v2, v3, v4, v5, v6, v7, v8);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.titleColor.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_21430EE64(v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9]);
  v4 = *a1;
  *(v1 + 5) = a1[1];
  *(v1 + 3) = v4;
  result = v6;
  *(v1 + 7) = v6;
  v1[9] = v3;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.titleContentStyle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C90A768, &unk_2147421A0);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.titleContentStyle.setter(uint64_t a1)
{
  v3 = v1[8];
  v7[2] = v1[7];
  v7[3] = v3;
  v7[4] = v1[9];
  v4 = v1[6];
  v7[0] = v1[5];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A768, &unk_2147421A0);
  v5 = *(a1 + 48);
  v1[7] = *(a1 + 32);
  v1[8] = v5;
  v1[9] = *(a1 + 64);
  result = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = result;
  return result;
}

uint64_t sub_21444C674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 208);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 200);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21444C6E8(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.groupName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 184);
  v7 = *(v2 + 192);
  v11 = *(v3 + 216);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 200), *(v3 + 208));

    *(v3 + 200) = a1;
    *(v3 + 208) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*PosterArchive.Configuration.TitleStyleConfiguration.groupName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 200);
  *(v3 + 24) = v5;
  v6 = *(v1 + 208);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21444C9B4;
  }

  return result;
}

void sub_21444C9B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 184);
    v11 = *(v3 + 192);
    v16 = *(v3 + 216);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 200) = v5;
      *(v12 + 208) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 184);
  v6 = *(v3 + 192);
  v16 = *(v3 + 216);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 200) = v5;
  *(v8 + 208) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21444CB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 192);
  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  v5 = *(a1 + 216);
  *a2 = *(a1 + 184);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21444CBD8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 192);
  v9 = *(a2 + 200);
  v10 = *(a2 + 208);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 184) = v4;
  *(a2 + 192) = v3;
  *(a2 + 200) = v5;
  *(a2 + 208) = v6;
  *(a2 + 216) = v7;
  return result;
}

void (*PosterArchive.Configuration.TitleStyleConfiguration.$groupName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  *v4 = *(v1 + 184);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21444CD00;
}

void sub_21444CD00(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 192);
  v9 = *(v3 + 200);
  v11 = *(v3 + 208);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 184) = v5;
    *(v3 + 192) = v4;
    *(v3 + 200) = v7;
    *(v3 + 208) = v6;
    *(v3 + 216) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 192);

    sub_213FDC6D0(v9, v11);
    *(v3 + 184) = v5;
    *(v3 + 192) = v4;
    *(v3 + 200) = v7;
    *(v3 + 208) = v6;
    *(v3 + 216) = v8;
  }

  free(v2);
}

uint64_t PosterArchive.Configuration.titleStyleConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 9) = *(v1 + 201);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 201) = *(v1 + 201);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_213FB2E54(v21, &v20, &qword_27C90A698, &qword_2146F5F28);
}

__n128 PosterArchive.Configuration.titleStyleConfiguration.setter(uint64_t a1)
{
  v3 = v1[11];
  v16[10] = v1[10];
  v16[11] = v3;
  v17[0] = v1[12];
  *(v17 + 9) = *(v1 + 201);
  v4 = v1[7];
  v16[6] = v1[6];
  v16[7] = v4;
  v5 = v1[9];
  v16[8] = v1[8];
  v16[9] = v5;
  v6 = v1[3];
  v16[2] = v1[2];
  v16[3] = v6;
  v7 = v1[5];
  v16[4] = v1[4];
  v16[5] = v7;
  v8 = v1[1];
  v16[0] = *v1;
  v16[1] = v8;
  sub_213FB2DF4(v16, &qword_27C90A698, &qword_2146F5F28);
  v9 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v9;
  v1[12] = *(a1 + 192);
  *(v1 + 201) = *(a1 + 201);
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  return result;
}

uint64_t sub_21444D000(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PosterArchive.ProviderBundleIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PosterArchive.ProviderBundleIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21444D088()
{
  v1 = *v0;
  sub_2146DA958();
  PosterArchive.ProviderBundleIdentifier.rawValue.getter(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21444D0EC()
{
  PosterArchive.ProviderBundleIdentifier.rawValue.getter(*v0);
  sub_2146D9698();
}

uint64_t sub_21444D140()
{
  v1 = *v0;
  sub_2146DA958();
  PosterArchive.ProviderBundleIdentifier.rawValue.getter(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21444D1A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s9BlastDoor13PosterArchiveV24ProviderBundleIdentifierO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_21444D1D0@<X0>(unint64_t *a1@<X8>)
{
  result = PosterArchive.ProviderBundleIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PosterArchive.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 11) = *(v1 + 203);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 203) = *(v1 + 203);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_214458494(v21, &v20);
}

__n128 PosterArchive.configuration.setter(uint64_t a1)
{
  v3 = v1[11];
  v16[10] = v1[10];
  v16[11] = v3;
  v17[0] = v1[12];
  *(v17 + 11) = *(v1 + 203);
  v4 = v1[7];
  v16[6] = v1[6];
  v16[7] = v4;
  v5 = v1[9];
  v16[8] = v1[8];
  v16[9] = v5;
  v6 = v1[3];
  v16[2] = v1[2];
  v16[3] = v6;
  v7 = v1[5];
  v16[4] = v1[4];
  v16[5] = v7;
  v8 = v1[1];
  v16[0] = *v1;
  v16[1] = v8;
  sub_2144584CC(v16);
  v9 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v9;
  v1[12] = *(a1 + 192);
  *(v1 + 203) = *(a1 + 203);
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  return result;
}

uint64_t PosterArchive.posterUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PosterArchive() + 24);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PosterArchive.posterUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PosterArchive() + 24);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PosterArchive.version.setter(uint64_t a1)
{
  result = type metadata accessor for PosterArchive();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PosterArchive.versionSupplement.setter(uint64_t a1)
{
  result = type metadata accessor for PosterArchive();
  *(v1 + *(result + 32)) = a1;
  return result;
}

BlastDoor::PosterArchive::PosterKitPosterRole_optional __swiftcall PosterArchive.PosterKitPosterRole.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PosterArchive.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PosterArchive();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t PosterArchive.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PosterArchive();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_21444D7AC()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x6E6F6973726576;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 1701605234;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656469766F7270;
  if (v1 != 1)
  {
    v5 = 0x5555726574736F70;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21444D874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21445BB28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21444D89C(uint64_t a1)
{
  v2 = sub_214458534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21444D8D8(uint64_t a1)
{
  v2 = sub_214458534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913BF0, &qword_2147421B0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214458534();
  v9 = v4;
  sub_2146DAA28();
  v10 = v2[11];
  v11 = v2[9];
  v69 = v2[10];
  v70 = v10;
  v12 = v2[11];
  v71[0] = v2[12];
  *(v71 + 11) = *(v2 + 203);
  v13 = v2[7];
  v14 = v2[5];
  v65 = v2[6];
  v66 = v13;
  v15 = v2[7];
  v16 = v2[9];
  v67 = v2[8];
  v68 = v16;
  v17 = v2[3];
  v18 = v2[1];
  v61 = v2[2];
  v62 = v17;
  v19 = v2[3];
  v20 = v2[5];
  v63 = v2[4];
  v64 = v20;
  v21 = v2[1];
  v60[0] = *v2;
  v60[1] = v21;
  v57 = v69;
  v58 = v12;
  v59[0] = v2[12];
  *(v59 + 11) = *(v2 + 203);
  v53 = v65;
  v54 = v15;
  v55 = v67;
  v56 = v11;
  v49 = v61;
  v50 = v19;
  v51 = v63;
  v52 = v14;
  v47 = v60[0];
  v48 = v18;
  v46 = 0;
  sub_214458494(v60, &v33);
  sub_214458588();
  v22 = v30;
  sub_2146DA388();
  if (v22)
  {
    v43 = v57;
    v44 = v58;
    *v45 = v59[0];
    *&v45[11] = *(v59 + 11);
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v42 = v56;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v33 = v47;
    v34 = v48;
    sub_2144584CC(&v33);
    return (*(v72 + 8))(v7, v4);
  }

  else
  {
    v24 = v72;
    v43 = v57;
    v44 = v58;
    *v45 = v59[0];
    *&v45[11] = *(v59 + 11);
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v42 = v56;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v33 = v47;
    v34 = v48;
    sub_2144584CC(&v33);
    v32 = 1;
    sub_2144585DC();
    sub_2146DA388();
    v25 = v7;
    v26 = type metadata accessor for PosterArchive();
    v27 = v26[6];
    v32 = 2;
    sub_2146D8B88();
    sub_214458EA4(&qword_280B34D20, MEMORY[0x277CC95F0]);
    sub_2146DA388();
    v28 = *(v2 + v26[7]);
    v32 = 3;
    sub_2146DA3E8();
    v29 = *(v2 + v26[8]);
    v32 = 4;
    sub_2146DA3E8();
    v32 = *(v2 + v26[9]);
    v31 = 5;
    sub_21444B3B4();
    sub_2146DA388();
    return (*(v24 + 8))(v25, v9);
  }
}

uint64_t PosterArchive.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_2146D8B88();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913C10, &qword_2147421B8);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PosterArchive();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v14 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214458534();
  v29 = v9;
  v16 = v31;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v17 = v28;
  v33[735] = 0;
  sub_214458630();
  sub_2146DA1C8();
  v18 = v45;
  v13[10] = v44;
  v13[11] = v18;
  v13[12] = v46[0];
  *(v13 + 203) = *(v46 + 11);
  v19 = v41;
  v13[6] = v40;
  v13[7] = v19;
  v20 = v43;
  v13[8] = v42;
  v13[9] = v20;
  v21 = v37;
  v13[2] = v36;
  v13[3] = v21;
  v22 = v39;
  v13[4] = v38;
  v13[5] = v22;
  v23 = v35;
  *v13 = v34;
  v13[1] = v23;
  v32 = 1;
  sub_214458684();
  sub_2146DA1C8();
  memcpy(v13 + 14, v33, 0x2D9uLL);
  v33[0] = 2;
  sub_214458EA4(&qword_280B35350, MEMORY[0x277CC95F0]);
  sub_2146DA1C8();
  (*(v27 + 32))(v13 + v10[6], v6, v3);
  v33[0] = 3;
  v31 = 0;
  *(v13 + v10[7]) = sub_2146DA228();
  v33[0] = 4;
  *(v13 + v10[8]) = sub_2146DA228();
  v32 = 5;
  sub_21444B64C();
  sub_2146DA1C8();
  (*(v17 + 8))(v29, v30);
  *(v13 + v10[9]) = v33[0];
  sub_2143B80D0(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_2143B8134(v13);
}

uint64_t PhotosPoster.Media.assetUUID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v11 = *(v3 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 24), *(v3 + 32));

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.Media.assetUUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*PhotosPoster.Media.$assetUUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t PhotosPoster.Media.subpath.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v12 = *(v3 + 80);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 72);

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*PhotosPoster.Media.subpath.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.Media.$subpath.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

BlastDoor::PhotosPoster::Layout::ClockLayerOrder __swiftcall PhotosPoster.Layout.ClockLayerOrder.init(defaultingRawValue:)(Swift::String defaultingRawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  *v2 = v3 == 1;
  return result;
}

BlastDoor::PhotosPoster::Layout::ClockLayerOrder_optional __swiftcall PhotosPoster.Layout.ClockLayerOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21444EA38(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "ClockAboveBackground";
  }

  else
  {
    v2 = "ster.DynamicExtension";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "ClockAboveBackground";
  }

  else
  {
    v4 = "ster.DynamicExtension";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21444EADC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21444EB54()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21444EBB8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21444EC2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

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

void sub_21444EC8C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "ClockAboveBackground";
  }

  else
  {
    v2 = "ster.DynamicExtension";
  }

  *a1 = 0xD000000000000014;
  a1[1] = v2 | 0x8000000000000000;
}

BlastDoor::PhotosPoster::Layout::ClockIntersection __swiftcall PhotosPoster.Layout.ClockIntersection.init(defaultingRawValue:)(Swift::UInt defaultingRawValue)
{
  if (defaultingRawValue >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = defaultingRawValue;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PhotosPoster::Layout::ClockIntersection_optional __swiftcall PhotosPoster.Layout.ClockIntersection.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::PhotosPoster::Layout::LayoutVariant __swiftcall PhotosPoster.Layout.LayoutVariant.init(defaultingRawValue:)(Swift::UInt defaultingRawValue)
{
  if (defaultingRawValue >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = defaultingRawValue;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PhotosPoster::Layout::LayoutVariant_optional __swiftcall PhotosPoster.Layout.LayoutVariant.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double PhotosPoster.Layout.imageSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double PhotosPoster.Layout.deviceResolution.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

double PhotosPoster.Layout.parallaxPadding.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

double PhotosPoster.Layout.visibleFrame.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  return result;
}

void PhotosPoster.Layout.visibleFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

double PhotosPoster.Layout.inactiveFrame.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  return result;
}

void PhotosPoster.Layout.inactiveFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

double PhotosPoster.Layout.timeFrame.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  return result;
}

void PhotosPoster.Layout.timeFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

double PhotosPoster.Layout.spatialVisibleFrame.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  return result;
}

void PhotosPoster.Layout.spatialVisibleFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

double PhotosPoster.Layout.spatialAdaptiveFrame.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  return result;
}

void PhotosPoster.Layout.spatialAdaptiveFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = a3;
  v4[26] = a4;
}

double PhotosPoster.Layout.adaptiveTimeFrame.getter()
{
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  return result;
}

void PhotosPoster.Layout.adaptiveTimeFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = a3;
  v4[30] = a4;
}

double PhotosPoster.Layout.salientContentFrame.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  return result;
}

void PhotosPoster.Layout.salientContentFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = a3;
  v4[34] = a4;
}

void (*PhotosPoster.ParallaxLayer.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}