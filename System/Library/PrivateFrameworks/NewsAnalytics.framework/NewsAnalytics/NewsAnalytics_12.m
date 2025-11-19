void sub_217B99DFC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t EmailSignupEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 32);
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EmailSignupEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_217B9A1E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EmailSignupEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EmailSignupEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t EmailSignupEvent.Model.newsletterSubscriptionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EmailSignupEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t EmailSignupEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EmailSignupEvent.Model(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 EmailSignupEvent.Model.init(eventData:timedData:userActionData:newsletterSubscriptionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *a4;
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for EmailSignupEvent.Model(0);
  v14 = v13[5];
  v15 = sub_217D889CC();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  *(a6 + v13[6]) = v10;
  *(a6 + v13[7]) = v11;
  v16 = a6 + v13[8];
  v17 = *(a5 + 16);
  *v16 = *a5;
  *(v16 + 16) = v17;
  result = *(a5 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a5 + 48);
  return result;
}

uint64_t sub_217B9A448()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6974634172657375;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217B9A4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B9B598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B9A51C(uint64_t a1)
{
  v2 = sub_217B9A8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B9A558(uint64_t a1)
{
  v2 = sub_217B9A8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailSignupEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B9AE98(0, &qword_27CBA0DC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9A8D8();
  sub_217D89E7C();
  LOBYTE(v25[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for EmailSignupEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v25[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    LOBYTE(v25[0]) = *(v3 + v12[6]);
    LOBYTE(v21) = 2;
    sub_217B99A48();
    sub_217D89CAC();
    v29 = *(v3 + v12[7]);
    v28 = 3;
    sub_217B2B394();
    sub_217D89CAC();
    v14 = (v3 + v12[8]);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v25[2] = v14[2];
    v26 = *(v14 + 48);
    v21 = v17;
    v22 = v16;
    v23 = v14[2];
    v24 = *(v14 + 48);
    v27 = 4;
    sub_217ACC004(v25, v19);
    sub_217A55B98();
    sub_217D89CAC();
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v20 = v24;
    sub_217ACC69C(v19);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B9A8D8()
{
  result = qword_2811C53C8;
  if (!qword_2811C53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C53C8);
  }

  return result;
}

uint64_t EmailSignupEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_217D889CC();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B9AE98(0, &qword_2811BCA80, MEMORY[0x277D844C8]);
  v37 = v10;
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for EmailSignupEvent.Model(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9A8D8();
  v36 = v13;
  v19 = v38;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v38 = a1;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  LOBYTE(v39) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v24 = *(v21 + 32);
  v25 = v35;
  v35 = v7;
  v24(v17, v25);
  LOBYTE(v39) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v22 + 32))(&v17[v14[5]], v20, v23);
  v43 = 2;
  sub_217B999F4();
  sub_217D89BCC();
  v26 = v34;
  v17[v14[6]] = v39;
  v43 = 3;
  sub_217B2B33C();
  sub_217D89BCC();
  v17[v14[7]] = v39;
  v43 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v36, v37);
  v27 = &v17[v14[8]];
  v28 = v40;
  *v27 = v39;
  *(v27 + 1) = v28;
  *(v27 + 2) = v41;
  v27[48] = v42;
  sub_217B9AEFC(v17, v30);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_217B9AF60(v17);
}

void sub_217B9AE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B9A8D8();
    v7 = a3(a1, &type metadata for EmailSignupEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B9AEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailSignupEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B9AF60(uint64_t a1)
{
  v2 = type metadata accessor for EmailSignupEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B9B094@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217B9B2E4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B99DFC(319, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
      if (v2 <= 0x3F)
      {
        sub_217B99DFC(319, &qword_2811C8568, sub_217B2B33C, sub_217B2B394);
        if (v3 <= 0x3F)
        {
          sub_217B99DFC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B9B494()
{
  result = qword_27CBA0DD0;
  if (!qword_27CBA0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DD0);
  }

  return result;
}

unint64_t sub_217B9B4EC()
{
  result = qword_2811C53B8;
  if (!qword_2811C53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C53B8);
  }

  return result;
}

unint64_t sub_217B9B544()
{
  result = qword_2811C53C0;
  if (!qword_2811C53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C53C0);
  }

  return result;
}

uint64_t sub_217B9B598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCEBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

NewsAnalytics::DevicePlatform_optional __swiftcall DevicePlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DevicePlatform.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x534F64615069;
  if (*v0 != 2)
  {
    v2 = 0x534F63616DLL;
  }

  if (*v0)
  {
    v1 = 5459817;
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

unint64_t sub_217B9B83C()
{
  result = qword_27CBA0DD8;
  if (!qword_27CBA0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DD8);
  }

  return result;
}

uint64_t sub_217B9B890()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B9B944()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B9B9E4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B9BBD8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C3FD0);
  __swift_project_value_buffer(v0, qword_2811C3FD0);
  return sub_217D8866C();
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.subscriptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9C22C()
{
  result = qword_2811C4F38;
  if (!qword_2811C4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F38);
  }

  return result;
}

unint64_t sub_217B9C280()
{
  result = qword_2811C4F40;
  if (!qword_2811C4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F40);
  }

  return result;
}

uint64_t AppSessionEndEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.notificationSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.notificationSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.autoSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.autoSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9C994()
{
  result = qword_2811C1B60;
  if (!qword_2811C1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B60);
  }

  return result;
}

unint64_t sub_217B9C9E8()
{
  result = qword_2811C1B68;
  if (!qword_2811C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B68);
  }

  return result;
}

uint64_t AppSessionEndEvent.userEventStorageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.subscribedSportsListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 52);
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.subscribedSportsListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 52);
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.tabiData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 56);
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9CD9C()
{
  result = qword_2811BD290;
  if (!qword_2811BD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD290);
  }

  return result;
}

unint64_t sub_217B9CDF0()
{
  result = qword_2811BD298;
  if (!qword_2811BD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD298);
  }

  return result;
}

uint64_t AppSessionEndEvent.tabiData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 56);
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 60);
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9CFF4()
{
  result = qword_2811C42B0;
  if (!qword_2811C42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42B0);
  }

  return result;
}

unint64_t sub_217B9D048()
{
  result = qword_2811C42B8;
  if (!qword_2811C42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42B8);
  }

  return result;
}

uint64_t AppSessionEndEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 60);
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.liveActivityCountData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 64);
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.liveActivityCountData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 64);
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.applicationStateHistoryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 68);
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9D3FC()
{
  result = qword_2811BEDF8;
  if (!qword_2811BEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDF8);
  }

  return result;
}

unint64_t sub_217B9D450()
{
  result = qword_2811BEE00;
  if (!qword_2811BEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE00);
  }

  return result;
}

uint64_t AppSessionEndEvent.applicationStateHistoryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 68);
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.crashData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 72);
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9D654()
{
  result = qword_27CBA0DE8;
  if (!qword_27CBA0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DE8);
  }

  return result;
}

unint64_t sub_217B9D6A8()
{
  result = qword_27CBA0DF0;
  if (!qword_27CBA0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DF0);
  }

  return result;
}

uint64_t AppSessionEndEvent.crashData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 72);
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450);
  (*(*(v31 - 8) + 104))(a1 + v30, v12, v31);
  v32 = v4[18];
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v12, v33);
}

uint64_t sub_217B9DF30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AppSessionEndEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AppSessionEndEvent.Model.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 6);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217B9E08C(&v9, v8);
}

uint64_t AppSessionEndEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 32));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_217B9E150(v11, &v10);
}

uint64_t sub_217B9E150(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811C4F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppSessionEndEvent.Model.notificationSettingsData.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 36));
  *a1 = v5;
  return sub_217A55A60(&v5, &v4);
}

uint64_t AppSessionEndEvent.Model.autoSubscribedData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AppSessionEndEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

void *AppSessionEndEvent.Model.userEventStorageData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 48));

  return memcpy(a1, v3, 0x144uLL);
}

uint64_t AppSessionEndEvent.Model.subscribedSportsListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 52));
}

uint64_t AppSessionEndEvent.Model.tabiData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 56));
  v4 = v3[6];
  v5 = v3[4];
  v18 = v3[5];
  v19 = v4;
  v6 = v3[4];
  v8 = v3[2];
  v16 = v3[3];
  v7 = v16;
  v17 = v6;
  v9 = v3[1];
  v15[0] = *v3;
  v10 = v3[2];
  v11 = *v3;
  v15[1] = v3[1];
  v15[2] = v10;
  v12 = v3[6];
  *(a1 + 80) = v18;
  *(a1 + 96) = v12;
  *(a1 + 48) = v7;
  *(a1 + 64) = v5;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  v20 = *(v3 + 14);
  *(a1 + 112) = *(v3 + 14);
  *a1 = v11;
  return sub_217B9E3A4(v15, v14);
}

uint64_t AppSessionEndEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 60));
}

uint64_t AppSessionEndEvent.Model.liveActivityCountData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AppSessionEndEvent.Model.applicationStateHistoryData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t AppSessionEndEvent.Model.crashData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  *(a1 + 2) = *(v4 + 2);
  *a1 = v5;
  return result;
}

__n128 AppSessionEndEvent.Model.init(eventData:timedData:userBundleSubscriptionContextData:subscriptionData:notificationData:notificationSettingsData:autoSubscribedData:viewEndData:userEventStorageData:subscribedSportsListData:tabiData:userEmbeddingData:liveActivityCountData:applicationStateHistoryData:crashData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, int *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, const void *a10, uint64_t *a11, uint64_t a12, uint64_t *a13, int *a14, __int16 *a15, __int16 *a16)
{
  v22 = *a7;
  v23 = *a8;
  v43 = *a11;
  v45 = *a13;
  v46 = *(a14 + 4);
  v47 = *a14;
  v50 = *a16;
  v48 = *a15;
  v49 = *(a16 + 2);
  v24 = sub_217D8899C();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for AppSessionEndEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = a9 + v25[6];
  v29 = *(a3 + 16);
  *v28 = *a3;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a3 + 32);
  *(v28 + 48) = *(a3 + 48);
  v30 = a9 + v25[7];
  v31 = *(a4 + 16);
  *v30 = *a4;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a4 + 32);
  *(v30 + 48) = *(a4 + 48);
  v32 = (a9 + v25[8]);
  v33 = a5[1];
  *v32 = *a5;
  v32[1] = v33;
  v34 = a5[5];
  v32[4] = a5[4];
  v32[5] = v34;
  v35 = a5[3];
  v32[2] = a5[2];
  v32[3] = v35;
  *(a9 + v25[9]) = *a6;
  *(a9 + v25[10]) = v22;
  *(a9 + v25[11]) = v23;
  memcpy((a9 + v25[12]), a10, 0x144uLL);
  *(a9 + v25[13]) = v43;
  v36 = a9 + v25[14];
  v37 = *(a12 + 80);
  *(v36 + 64) = *(a12 + 64);
  *(v36 + 80) = v37;
  *(v36 + 96) = *(a12 + 96);
  *(v36 + 112) = *(a12 + 112);
  v38 = *(a12 + 16);
  *v36 = *a12;
  *(v36 + 16) = v38;
  result = *(a12 + 32);
  v40 = *(a12 + 48);
  *(v36 + 32) = result;
  *(v36 + 48) = v40;
  *(a9 + v25[15]) = v45;
  v41 = a9 + v25[16];
  *v41 = v47;
  *(v41 + 4) = v46;
  *(a9 + v25[17]) = v48;
  v42 = a9 + v25[18];
  *(v42 + 2) = v49;
  *v42 = v50;
  return result;
}

unint64_t sub_217B9E740(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 9:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x44646E4577656976;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6174614469626174;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      v3 = 5;
      goto LABEL_13;
    case 13:
      v3 = 11;
LABEL_13:
      result = v3 | 0xD000000000000010;
      break;
    case 14:
      result = 0x7461446873617263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B9E900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BA0E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B9E928(uint64_t a1)
{
  v2 = sub_217B9F218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B9E964(uint64_t a1)
{
  v2 = sub_217B9F218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B9FF9C(0, &qword_2811BC6C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9F218();
  sub_217D89E7C();
  v57[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AppSessionEndEvent.Model(0);
    v13 = v12[5];
    v95 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v93[0] = *v14;
    v16 = *v14;
    v17 = v14[1];
    v93[1] = v15;
    v93[2] = v14[2];
    v89 = v16;
    v94 = *(v14 + 48);
    v90 = v17;
    v91 = v14[2];
    v92 = *(v14 + 48);
    v88 = 2;
    sub_217ACC004(v93, v57);
    sub_217A55B98();
    sub_217D89CAC();
    v84[0] = v89;
    v84[1] = v90;
    v84[2] = v91;
    v85 = v92;
    sub_217ACC69C(v84);
    v18 = (v3 + v12[7]);
    v19 = *v18;
    v86[1] = v18[1];
    v20 = v18[1];
    v86[2] = v18[2];
    v86[0] = *v18;
    v87 = *(v18 + 6);
    v80 = v19;
    v81 = v20;
    v82 = v18[2];
    v83 = *(v18 + 6);
    v79 = 3;
    sub_217B9E08C(v86, v57);
    sub_217A55E38();
    sub_217D89CAC();
    v72[0] = v80;
    v72[1] = v81;
    v72[2] = v82;
    v73 = v83;
    sub_217B9F26C(v72);
    v21 = (v3 + v12[8]);
    v22 = v21[3];
    v23 = v21[1];
    v75 = v21[2];
    v76 = v22;
    v24 = v21[3];
    v25 = v21[5];
    v77 = v21[4];
    v78 = v25;
    v26 = v21[1];
    v74[0] = *v21;
    v74[1] = v26;
    v68 = v75;
    v69 = v24;
    v27 = v21[5];
    v70 = v77;
    v71 = v27;
    v66 = v74[0];
    v67 = v23;
    v65 = 4;
    sub_217B9E150(v74, v57);
    sub_217B9C280();
    sub_217D89C3C();
    v63[2] = v68;
    v63[3] = v69;
    v63[4] = v70;
    v63[5] = v71;
    v63[0] = v66;
    v63[1] = v67;
    sub_217B9F2C0(v63);
    v28 = v12[9];
    v64 = *(v3 + v28);
    v62 = *(v3 + v28);
    v61 = 5;
    sub_217A55A60(&v64, v57);
    sub_217A5062C();
    sub_217D89CAC();
    v60 = v62;
    sub_217B9F32C(&v60);
    *v57 = *(v3 + v12[10]);
    LOBYTE(v47) = 6;
    sub_217A4F574();
    sub_217D89CAC();
    v59 = *(v3 + v12[11]);
    v58 = 7;
    sub_217B570C0();
    sub_217D89CAC();
    memcpy(v57, (v3 + v12[12]), sizeof(v57));
    LOBYTE(v47) = 8;
    sub_217B9C9E8();
    sub_217D89C3C();
    v56 = *(v3 + v12[13]);
    v55 = 9;
    sub_217A4FCA8();

    sub_217D89C3C();

    v29 = (v3 + v12[14]);
    v30 = v29[5];
    v31 = v29[3];
    *&v57[64] = v29[4];
    *&v57[80] = v30;
    v32 = v29[5];
    *&v57[96] = v29[6];
    v33 = v29[1];
    *v57 = *v29;
    *&v57[16] = v33;
    v34 = v29[3];
    v36 = *v29;
    v35 = v29[1];
    *&v57[32] = v29[2];
    *&v57[48] = v34;
    v51 = *&v57[64];
    v52 = v32;
    v53 = v29[6];
    v47 = v36;
    v48 = v35;
    *&v57[112] = *(v29 + 14);
    v54 = *(v29 + 14);
    v49 = *&v57[32];
    v50 = v31;
    v46 = 10;
    sub_217B9E3A4(v57, v44);
    sub_217B9CDF0();
    sub_217D89CAC();
    v44[4] = v51;
    v44[5] = v52;
    v44[6] = v53;
    v45 = v54;
    v44[0] = v47;
    v44[1] = v48;
    v44[2] = v49;
    v44[3] = v50;
    sub_217B9F380(v44);
    v43 = *(v3 + v12[15]);
    HIBYTE(v42) = 11;
    sub_217B9D048();

    sub_217D89C3C();

    v37 = (v3 + v12[16]);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 4);
    LODWORD(v43) = v38;
    BYTE4(v43) = v37;
    HIBYTE(v42) = 12;
    sub_217B1C994();
    sub_217D89C3C();
    LOWORD(v43) = *(v3 + v12[17]);
    HIBYTE(v42) = 13;
    sub_217B9D450();
    sub_217D89C3C();
    v39 = (v3 + v12[18]);
    v40 = *v39;
    BYTE2(v43) = *(v39 + 2);
    LOWORD(v43) = v40;
    HIBYTE(v42) = 14;
    sub_217B9D6A8();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B9F218()
{
  result = qword_2811C3FC0;
  if (!qword_2811C3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3FC0);
  }

  return result;
}

uint64_t sub_217B9F2C0(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811C4F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_217D889CC();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B9FF9C(0, &qword_2811BCA50, MEMORY[0x277D844C8]);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v42 - v11;
  v13 = type metadata accessor for AppSessionEndEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9F218();
  v53 = v12;
  v18 = v86;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v49;
  v43 = v13;
  v44 = a1;
  v86 = v16;
  LOBYTE(v66[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v50;
  sub_217D89BCC();
  (*(v48 + 32))(v86, v20, v6);
  LOBYTE(v66[0]) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v21 = v47;
  sub_217D89BCC();
  v42[1] = v6;
  v50 = 0;
  v22 = v43;
  v23 = v86;
  (*(v46 + 32))(&v86[v43[5]], v19, v21);
  v81 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v24 = &v23[v22[6]];
  v25 = v83;
  *v24 = v82;
  *(v24 + 1) = v25;
  *(v24 + 2) = v84;
  v24[48] = v85;
  v76 = 3;
  sub_217A4F460();
  sub_217D89BCC();
  v26 = &v23[v22[7]];
  v27 = v78;
  *v26 = v77;
  *(v26 + 1) = v27;
  *(v26 + 2) = v79;
  *(v26 + 6) = v80;
  v69 = 4;
  sub_217B9C22C();
  sub_217D89B5C();
  v28 = &v23[v22[8]];
  v29 = v73;
  *(v28 + 2) = v72;
  *(v28 + 3) = v29;
  v30 = v75;
  *(v28 + 4) = v74;
  *(v28 + 5) = v30;
  v31 = v71;
  *v28 = v70;
  *(v28 + 1) = v31;
  v67 = 5;
  sub_217A505D4();
  sub_217D89BCC();
  *&v23[v22[9]] = v68;
  LOBYTE(v57) = 6;
  sub_217A4F51C();
  sub_217D89BCC();
  *&v23[v22[10]] = v66[0];
  LOBYTE(v57) = 7;
  sub_217B57068();
  sub_217D89BCC();
  v23[v22[11]] = v66[0];
  v65 = 8;
  sub_217B9C994();
  sub_217D89B5C();
  memcpy(&v86[v43[12]], v66, 0x144uLL);
  LOBYTE(v55) = 9;
  sub_217A4FC50();
  sub_217D89B5C();
  *&v86[v43[13]] = v57;
  v56 = 10;
  sub_217B9CD9C();
  sub_217D89BCC();
  v32 = &v86[v43[14]];
  v33 = v62;
  *(v32 + 4) = v61;
  *(v32 + 5) = v33;
  *(v32 + 6) = v63;
  *(v32 + 14) = v64;
  v34 = v58;
  *v32 = v57;
  *(v32 + 1) = v34;
  v35 = v60;
  *(v32 + 2) = v59;
  *(v32 + 3) = v35;
  v54 = 11;
  sub_217B9CFF4();
  sub_217D89B5C();
  *&v86[v43[15]] = v55;
  v54 = 12;
  sub_217B1C93C();
  sub_217D89B5C();
  v36 = BYTE4(v55);
  v37 = &v86[v43[16]];
  *v37 = v55;
  v37[4] = v36;
  v54 = 13;
  sub_217B9D3FC();
  sub_217D89B5C();
  *&v86[v43[17]] = v55;
  v54 = 14;
  sub_217B9D654();
  sub_217D89B5C();
  (*(v51 + 8))(v53, v52);
  v38 = v55;
  v39 = v86;
  v40 = &v86[v43[18]];
  v40[2] = BYTE2(v55);
  *v40 = v38;
  sub_217BA0000(v39, v45);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_217BA0064(v39);
}

void sub_217B9FF9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B9F218();
    v7 = a3(a1, &type metadata for AppSessionEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA0000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BA0064(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BA0198@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450);
  (*(*(v32 - 8) + 104))(a2 + v31, v13, v32);
  v33 = a1[18];
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v13, v34);
}

void sub_217BA08AC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217A62B70(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217A62B70(319, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
        if (v3 <= 0x3F)
        {
          sub_217A62B70(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
          if (v4 <= 0x3F)
          {
            sub_217A62B70(319, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
            if (v5 <= 0x3F)
            {
              sub_217A62B70(319, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
              if (v6 <= 0x3F)
              {
                sub_217A62B70(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
                if (v7 <= 0x3F)
                {
                  sub_217A62B70(319, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8);
                  if (v8 <= 0x3F)
                  {
                    sub_217A62B70(319, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
                    if (v9 <= 0x3F)
                    {
                      sub_217A62B70(319, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0);
                      if (v10 <= 0x3F)
                      {
                        sub_217A62B70(319, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048);
                        if (v11 <= 0x3F)
                        {
                          sub_217A62B70(319, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994);
                          if (v12 <= 0x3F)
                          {
                            sub_217A62B70(319, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450);
                            if (v13 <= 0x3F)
                            {
                              sub_217A62B70(319, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8);
                              if (v14 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217BA0D7C()
{
  result = qword_27CBA0E00;
  if (!qword_27CBA0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E00);
  }

  return result;
}

unint64_t sub_217BA0DD4()
{
  result = qword_2811C3FB0;
  if (!qword_2811C3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3FB0);
  }

  return result;
}

unint64_t sub_217BA0E2C()
{
  result = qword_2811C3FB8;
  if (!qword_2811C3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3FB8);
  }

  return result;
}

uint64_t sub_217BA0E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEC30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCEC50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6174614469626174 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCEC90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCECB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCECD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461446873617263 && a2 == 0xE900000000000061)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

NewsAnalytics::AudioEngagementStatus_optional __swiftcall AudioEngagementStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AudioEngagementStatus.rawValue.getter()
{
  v1 = 0x64656761676E65;
  if (*v0 != 1)
  {
    v1 = 0x6761676E45746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217BA13EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656761676E65;
  if (v2 != 1)
  {
    v5 = 0x6761676E45746F6ELL;
    v4 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64656761676E65;
  if (*a2 != 1)
  {
    v8 = 0x6761676E45746F6ELL;
    v3 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217BA14F8()
{
  result = qword_27CBA0E08;
  if (!qword_27CBA0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E08);
  }

  return result;
}

uint64_t sub_217BA154C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BA15F4()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BA1688()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BA1738(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656761676E65;
  if (v2 != 1)
  {
    v5 = 0x6761676E45746F6ELL;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217BA185C()
{
  result = qword_27CBA0E10;
  if (!qword_27CBA0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E10);
  }

  return result;
}

NewsAnalytics::PuzzleModalType_optional __swiftcall PuzzleModalType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PuzzleModalType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C6169726F747574;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656C7A7A7570;
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

unint64_t sub_217BA1998()
{
  result = qword_27CBA0E18;
  if (!qword_27CBA0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E18);
  }

  return result;
}

uint64_t sub_217BA19EC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BA1AB0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BA1B60()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BA1C2C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6C6169726F747574;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000217DCB080;
  }

  if (*v1)
  {
    v3 = 0x656C7A7A7570;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217BA1D6C()
{
  result = qword_27CBA0E20;
  if (!qword_27CBA0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E20);
  }

  return result;
}

uint64_t TodayTopStoriesMissingData.message.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TodayTopStoriesMissingData.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_217BA1E98()
{
  if (*v0)
  {
    result = 0x6567617373656DLL;
  }

  else
  {
    result = 0x6E6F73616572;
  }

  *v0;
  return result;
}

uint64_t sub_217BA1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217BA1FA8(uint64_t a1)
{
  v2 = sub_217BA21B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA1FE4(uint64_t a1)
{
  v2 = sub_217BA21B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayTopStoriesMissingData.encode(to:)(void *a1)
{
  sub_217BA2440(0, &qword_27CBA0E28, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA21B0();
  sub_217D89E7C();
  v17 = v10;
  v16 = 0;
  sub_217BA2204();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217BA21B0()
{
  result = qword_27CBA0E30;
  if (!qword_27CBA0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E30);
  }

  return result;
}

unint64_t sub_217BA2204()
{
  result = qword_27CBA0E38;
  if (!qword_27CBA0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E38);
  }

  return result;
}

uint64_t TodayTopStoriesMissingData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BA2440(0, &qword_27CBA0E40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA21B0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_217BA24A4();
  sub_217D89BCC();
  v12 = v20;
  v18 = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BA2440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA21B0();
    v7 = a3(a1, &type metadata for TodayTopStoriesMissingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BA24A4()
{
  result = qword_27CBA0E48;
  if (!qword_27CBA0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E48);
  }

  return result;
}

unint64_t sub_217BA24FC()
{
  result = qword_27CBA0E50;
  if (!qword_27CBA0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E50);
  }

  return result;
}

unint64_t sub_217BA2554()
{
  result = qword_27CBA0E58;
  if (!qword_27CBA0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E58);
  }

  return result;
}

unint64_t sub_217BA25FC()
{
  result = qword_27CBA0E60;
  if (!qword_27CBA0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E60);
  }

  return result;
}

unint64_t sub_217BA2654()
{
  result = qword_27CBA0E68;
  if (!qword_27CBA0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E68);
  }

  return result;
}

unint64_t sub_217BA26AC()
{
  result = qword_27CBA0E70;
  if (!qword_27CBA0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E70);
  }

  return result;
}

uint64_t SearchSelectionData.selectedResult.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchSelectionData.selectedResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_217BA27D8()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x64657463656C6573;
  }

  *v0;
  return result;
}

uint64_t sub_217BA2824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657463656C6573 && a2 == 0xEE00746C75736552;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCECF0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217BA2910(uint64_t a1)
{
  v2 = sub_217BA2B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA294C(uint64_t a1)
{
  v2 = sub_217BA2B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSelectionData.encode(to:)(void *a1)
{
  sub_217BA2DD4(0, &qword_27CBA0E78, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_217BA2B28();
  sub_217D89E7C();
  v21 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v20 = v18;
    v19 = 1;
    sub_217BA2B7C();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_217BA2B28()
{
  result = qword_27CBA0E80;
  if (!qword_27CBA0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E80);
  }

  return result;
}

unint64_t sub_217BA2B7C()
{
  result = qword_27CBA0E88;
  if (!qword_27CBA0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E88);
  }

  return result;
}

uint64_t SearchSelectionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BA2DD4(0, &qword_27CBA0E90, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA2B28();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  sub_217BA2E38();
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v16 = v20;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BA2DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA2B28();
    v7 = a3(a1, &type metadata for SearchSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BA2E38()
{
  result = qword_27CBA0E98;
  if (!qword_27CBA0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E98);
  }

  return result;
}

unint64_t sub_217BA2E90()
{
  result = qword_27CBA0EA0;
  if (!qword_27CBA0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EA0);
  }

  return result;
}

unint64_t sub_217BA2EE8()
{
  result = qword_27CBA0EA8;
  if (!qword_27CBA0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EA8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_217BA2F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_217BA2FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217BA302C()
{
  result = qword_27CBA0EB0;
  if (!qword_27CBA0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EB0);
  }

  return result;
}

unint64_t sub_217BA3084()
{
  result = qword_27CBA0EB8;
  if (!qword_27CBA0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EB8);
  }

  return result;
}

unint64_t sub_217BA30DC()
{
  result = qword_27CBA0EC0;
  if (!qword_27CBA0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EC0);
  }

  return result;
}

uint64_t sub_217BA31F8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0EC8);
  __swift_project_value_buffer(v0, qword_27CBA0EC8);
  return sub_217D8866C();
}

uint64_t SportsFetchFavoritesSyncEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsFetchFavoritesSyncEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.fetchFavoritesSyncData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.fetchFavoritesSyncData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FavoritesSyncEvent = type metadata accessor for SportsFetchFavoritesSyncEvent(0);
  v5 = *(FavoritesSyncEvent + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(FavoritesSyncEvent + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsFetchFavoritesSyncEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SportsFetchFavoritesSyncEvent.Model.fetchFavoritesSyncData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 SportsFetchFavoritesSyncEvent.Model.init(eventData:userBundleSubscriptionContextData:fetchFavoritesSyncData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  v10 = a4 + *(FavoritesSync + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(FavoritesSync + 24)) = v7;
  return result;
}

uint64_t sub_217BA3994()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217BA3A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BA4804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BA3A28(uint64_t a1)
{
  v2 = sub_217BA3D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA3A64(uint64_t a1)
{
  v2 = sub_217BA3D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFetchFavoritesSyncEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BA41A0(0, &qword_27CBA0EE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA3D4C();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
    v13 = (v3 + *(FavoritesSync + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v28 = v13[1];
    v29 = v14;
    v27 = v15;
    v30 = *(v13 + 48);
    v23 = v16;
    v24 = v28;
    v25 = v13[2];
    v26 = *(v13 + 48);
    v22 = 1;
    sub_217ACC004(&v27, v20);
    sub_217A55B98();
    sub_217D89CAC();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_217ACC69C(v20);
    v19 = *(v3 + *(FavoritesSync + 24));
    v18[11] = 2;
    sub_217B47DA0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BA3D4C()
{
  result = qword_27CBA0EE8;
  if (!qword_27CBA0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EE8);
  }

  return result;
}

uint64_t SportsFetchFavoritesSyncEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BA41A0(0, &qword_27CBA0EF0, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  v12 = *(*(FavoritesSync - 8) + 64);
  MEMORY[0x28223BE20](FavoritesSync);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA3D4C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = FavoritesSync;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v30;
  v18 = v31;
  sub_217D89BCC();
  (*(v16 + 32))(v26, v19, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v26[*(v25 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v37 = 2;
  sub_217B47D48();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  *&v26[*(v25 + 24)] = v36;
  sub_217BA4204(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BA4268(v22);
}

void sub_217BA41A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA3D4C();
    v7 = a3(a1, &type metadata for SportsFetchFavoritesSyncEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA4204(uint64_t a1, uint64_t a2)
{
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  (*(*(FavoritesSync - 8) + 16))(a2, a1, FavoritesSync);
  return a2;
}

uint64_t sub_217BA4268(uint64_t a1)
{
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  (*(*(FavoritesSync - 8) + 8))(a1, FavoritesSync);
  return a1;
}

uint64_t sub_217BA439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217BA4534()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62BEC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62BEC(319, &qword_2811C8528, sub_217B47D48, sub_217B47DA0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217BA4668()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BA4700()
{
  result = qword_27CBA0F08;
  if (!qword_27CBA0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F08);
  }

  return result;
}

unint64_t sub_217BA4758()
{
  result = qword_27CBA0F10;
  if (!qword_27CBA0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F10);
  }

  return result;
}

unint64_t sub_217BA47B0()
{
  result = qword_27CBA0F18;
  if (!qword_27CBA0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F18);
  }

  return result;
}

uint64_t sub_217BA4804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCED10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BA49F8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0F50);
  __swift_project_value_buffer(v0, qword_27CBA0F50);
  return sub_217D8866C();
}

uint64_t TodayTopStoriesMissingEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TodayTopStoriesMissingEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 20);
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 20);
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 24);
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 24);
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 28);
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 28);
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.missingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 32);
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.missingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 32);
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TodayTopStoriesMissingEvent(0);
  v5 = v4[5];
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t TodayTopStoriesMissingEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t TodayTopStoriesMissingEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t TodayTopStoriesMissingEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TodayTopStoriesMissingEvent.Model.missingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

__n128 TodayTopStoriesMissingEvent.Model.init(eventData:feedData:feedConfigData:viewData:missingData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v23 = *(a3 + 3);
  v14 = a3[5];
  v15 = *a4;
  v24 = *(a4 + 8);
  v28 = *a5;
  v27 = *(a5 + 1);
  v25 = a4[1];
  v26 = *(a5 + 2);
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  v19 = a6 + v17[6];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  result = v23;
  *(v19 + 24) = v23;
  *(v19 + 40) = v14;
  v21 = a6 + v17[7];
  *v21 = v15;
  *(v21 + 8) = v25;
  *(v21 + 16) = v24;
  v22 = a6 + v17[8];
  *v22 = v28;
  *(v22 + 8) = v27;
  *(v22 + 16) = v26;
  return result;
}

uint64_t sub_217BA5720()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x666E6F4364656566;
  v4 = 0x6174614477656976;
  if (v1 != 3)
  {
    v4 = 0x44676E697373696DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614464656566;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217BA57D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BA6910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BA57FC(uint64_t a1)
{
  v2 = sub_217BA5BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA5838(uint64_t a1)
{
  v2 = sub_217BA5BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayTopStoriesMissingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BA6108(0, &qword_27CBA0F70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA5BAC();
  sub_217D89E7C();
  LOBYTE(v28) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v28) = *v13;
    v29 = v14;
    v30 = v15;
    v33 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v18 = *(v16 + 16);
    v19 = v16[5];
    v28 = *v16;
    v29 = v17;
    LOBYTE(v30) = v18;
    v31 = *(v16 + 3);
    v32 = v19;
    v33 = 2;
    sub_217A6088C();

    sub_217D89CAC();

    v20 = (v3 + v12[7]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v28 = v21;
    v29 = v22;
    LOWORD(v30) = v20;
    v33 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v24 = v3 + v12[8];
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    LOBYTE(v28) = *v24;
    v29 = v25;
    v30 = v26;
    v33 = 4;
    sub_217BA2554();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BA5BAC()
{
  result = qword_27CBA0F78;
  if (!qword_27CBA0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F78);
  }

  return result;
}

uint64_t TodayTopStoriesMissingEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217BA6108(0, &qword_27CBA0F80, MEMORY[0x277D844C8]);
  v35 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA5BAC();
  v34 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v18 = v31;
  v17 = v32;
  v36[0] = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v33;
  sub_217D89BCC();
  (*(v17 + 32))(v16, v19, v4);
  v39 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v20 = v16 + v11[5];
  *v20 = v36[0];
  *(v20 + 8) = *&v36[8];
  v39 = 2;
  sub_217A60838();
  v29[1] = 0;
  sub_217D89BCC();
  v33 = a1;
  v21 = v36[16];
  v22 = v38;
  v23 = v16 + v11[6];
  *v23 = *v36;
  *(v23 + 16) = v21;
  *(v23 + 24) = v37;
  *(v23 + 40) = v22;
  v39 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v24 = *&v36[8];
  v25 = *&v36[16];
  v26 = v16 + v11[7];
  *v26 = *v36;
  *(v26 + 8) = v24;
  *(v26 + 16) = v25;
  v39 = 4;
  sub_217BA24FC();
  sub_217D89BCC();
  (*(v18 + 8))(v34, v35);
  v27 = v16 + v11[8];
  *v27 = v36[0];
  *(v27 + 8) = *&v36[8];
  sub_217BA616C(v16, v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_217BA61D0(v16);
}

void sub_217BA6108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA5BAC();
    v7 = a3(a1, &type metadata for TodayTopStoriesMissingEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA616C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BA61D0(uint64_t a1)
{
  v2 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BA6304@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217BA658C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A60550(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
    if (v1 <= 0x3F)
    {
      sub_217A60550(319, &qword_2811C8728, sub_217A60838, sub_217A6088C);
      if (v2 <= 0x3F)
      {
        sub_217A60550(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          sub_217A60550(319, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217BA6760()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BA680C()
{
  result = qword_27CBA0FA8;
  if (!qword_27CBA0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FA8);
  }

  return result;
}

unint64_t sub_217BA6864()
{
  result = qword_27CBA0FB0;
  if (!qword_27CBA0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FB0);
  }

  return result;
}

unint64_t sub_217BA68BC()
{
  result = qword_27CBA0FB8;
  if (!qword_27CBA0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FB8);
  }

  return result;
}

uint64_t sub_217BA6910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44676E697373696DLL && a2 == 0xEB00000000617461)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_217BA6B9C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0FC0);
  __swift_project_value_buffer(v0, qword_27CBA0FC0);
  return sub_217D8866C();
}

uint64_t EOAFeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAFeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BA73A0()
{
  result = qword_2811C6918;
  if (!qword_2811C6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6918);
  }

  return result;
}

unint64_t sub_217BA73F4()
{
  result = qword_2811C6920;
  if (!qword_2811C6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6920);
  }

  return result;
}

uint64_t EOAFeedViewEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 48);
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 48);
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 52);
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BA7B08(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t EOAFeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 52);
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAFeedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v18 - 8) + 104))(a1 + v17, v2, v18);
  v19 = v4[12];
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v20 - 8) + 104))(a1 + v19, v2, v20);
  v21 = v4[13];
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a1 + v21, v2, v22);
}

uint64_t sub_217BA814C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAFeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EOAFeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAFeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for EOAFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EOAFeedViewEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAFeedViewEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 40);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t EOAFeedViewEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t EOAFeedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t EOAFeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EOAFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 EOAFeedViewEvent.Model.init(eventData:timedData:viewData:feedData:orientationData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:userBundleSubscriptionContextData:viewEndData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a3 + 8);
  v18 = *(a4 + 1);
  v35 = *(a4 + 2);
  v36 = *a4;
  v37 = *a5;
  v38 = a6[1];
  v39 = *a6;
  v44 = a8[1];
  v45 = *a8;
  v42 = *(a8 + 17);
  v43 = *(a8 + 16);
  v40 = a8[4];
  v41 = a8[3];
  v46 = *a11;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for EOAFeedViewEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  v24 = a9 + v20[7];
  *v24 = v36;
  *(v24 + 8) = v18;
  *(v24 + 16) = v35;
  *(a9 + v20[8]) = v37;
  v25 = (a9 + v20[9]);
  *v25 = v39;
  v25[1] = v38;
  v26 = a9 + v20[10];
  v27 = *(a7 + 48);
  *(v26 + 32) = *(a7 + 32);
  *(v26 + 48) = v27;
  v28 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a7 + 127);
  v29 = *(a7 + 112);
  *(v26 + 96) = *(a7 + 96);
  *(v26 + 112) = v29;
  v30 = *(a7 + 80);
  *(v26 + 64) = *(a7 + 64);
  *(v26 + 80) = v30;
  v31 = a9 + v20[11];
  *v31 = v45;
  *(v31 + 8) = v44;
  *(v31 + 16) = v43;
  *(v31 + 17) = v42;
  *(v31 + 24) = v41;
  *(v31 + 32) = v40;
  v32 = a9 + v20[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  result = *(a10 + 32);
  *(v32 + 32) = result;
  *(v32 + 48) = *(a10 + 48);
  *(a9 + v20[13]) = v46;
  return result;
}

unint64_t sub_217BA8688(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 8)
    {
      v5 = 0x44646E4577656976;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000013;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614477656976;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x7461746E6569726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217BA87EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BAA52C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BA8814(uint64_t a1)
{
  v2 = sub_217BA8F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA8850(uint64_t a1)
{
  v2 = sub_217BA8F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAFeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BA9A44(0, &qword_27CBA0FD8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v41[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA8F20();
  sub_217D89E7C();
  LOBYTE(v69) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for EOAFeedViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v69) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    *&v69 = v15;
    *(&v69 + 1) = v16;
    LOWORD(v70) = v14;
    LOBYTE(v61) = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v17 = v3 + v12[7];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    LOBYTE(v69) = *v17;
    *(&v69 + 1) = v18;
    *&v70 = v19;
    LOBYTE(v61) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    LOWORD(v69) = *(v3 + v12[8]);
    LOBYTE(v61) = 4;
    sub_217A4CF88();
    sub_217D89CAC();
    v20 = (v3 + v12[9]);
    v21 = v20[1];
    v78 = *v20;
    v79 = v21;
    v77 = 5;
    sub_217BA73F4();

    sub_217D89CAC();

    v22 = (v3 + v12[10]);
    v23 = v22[6];
    v24 = v22[4];
    v74 = v22[5];
    v75 = v23;
    v25 = v22[6];
    *v76 = v22[7];
    v26 = v22[1];
    v27 = v22[3];
    v71 = v22[2];
    v72 = v27;
    v28 = v22[3];
    v73 = v22[4];
    v29 = v22[1];
    v69 = *v22;
    v70 = v29;
    v66 = v74;
    v67 = v25;
    v68[0] = v22[7];
    v63 = v71;
    v64 = v28;
    v65 = v24;
    *&v76[15] = *(v22 + 127);
    *(v68 + 15) = *(v22 + 127);
    v61 = v69;
    v62 = v26;
    v60 = 6;
    sub_217AD1630(&v69, v58);
    sub_217ACF52C();
    sub_217D89CAC();
    v58[6] = v67;
    *v59 = v68[0];
    *&v59[15] = *(v68 + 15);
    v58[2] = v63;
    v58[3] = v64;
    v58[4] = v65;
    v58[5] = v66;
    v58[0] = v61;
    v58[1] = v62;
    sub_217AD2864(v58);
    v30 = (v3 + v12[11]);
    v31 = *v30;
    v80 = v30[1];
    v32 = *(v30 + 16);
    v33 = *(v30 + 17);
    v34 = v30[3];
    v35 = v30[4];
    v52 = v31;
    v53 = v80;
    v54 = v32;
    v55 = v33;
    v56 = v34;
    v57 = v35;
    v51 = 7;
    sub_217AD084C();

    sub_217D89CAC();

    v36 = (v3 + v12[12]);
    v37 = v36[1];
    v49[0] = *v36;
    v49[1] = v37;
    v39 = *v36;
    v38 = v36[1];
    v49[2] = v36[2];
    v50 = *(v36 + 48);
    v45 = v39;
    v46 = v38;
    v47 = v36[2];
    v48 = *(v36 + 48);
    v44 = 8;
    sub_217ACC004(v49, v42);
    sub_217A55B98();
    sub_217D89CAC();
    v42[0] = v45;
    v42[1] = v46;
    v42[2] = v47;
    v43 = v48;
    sub_217ACC69C(v42);
    v41[15] = *(v3 + v12[13]);
    v41[14] = 9;
    sub_217B570C0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BA8F20()
{
  result = qword_2811C5590;
  if (!qword_2811C5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5590);
  }

  return result;
}

uint64_t EOAFeedViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217D889CC();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BA9A44(0, &qword_2811BCA88, MEMORY[0x277D844C8]);
  v54 = v10;
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v46 - v12;
  v14 = type metadata accessor for EOAFeedViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217BA8F20();
  v55 = v13;
  v20 = v72;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v47 = v3;
  v48 = v14;
  v72 = v17;
  v65[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v52;
  sub_217D89BCC();
  v22 = v72;
  (*(v51 + 32))(v72, v21, v7);
  v65[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v47;
  sub_217D89BCC();
  v46[1] = v7;
  v52 = 0;
  v24 = v48;
  (*(v50 + 32))(&v22[v48[5]], v6, v23);
  LOBYTE(v59) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v25 = *&v65[8];
  v26 = *&v65[16];
  v27 = &v22[v24[6]];
  *v27 = *v65;
  *(v27 + 1) = v25;
  *(v27 + 8) = v26;
  LOBYTE(v59) = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v28 = &v22[v24[7]];
  *v28 = v65[0];
  *(v28 + 8) = *&v65[8];
  LOBYTE(v59) = 4;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v22[v24[8]] = *v65;
  LOBYTE(v59) = 5;
  sub_217BA73A0();
  sub_217D89BCC();
  v29 = *&v65[8];
  v30 = &v22[v24[9]];
  *v30 = *v65;
  *(v30 + 1) = v29;
  v64 = 6;
  sub_217ACF4D8();
  sub_217D89BCC();
  v31 = &v22[v24[10]];
  v32 = v69;
  v33 = *v71;
  *(v31 + 6) = v70;
  *(v31 + 7) = v33;
  *(v31 + 127) = *&v71[15];
  v34 = v67;
  *(v31 + 2) = v66;
  *(v31 + 3) = v34;
  *(v31 + 4) = v68;
  *(v31 + 5) = v32;
  v35 = *&v65[16];
  *v31 = *v65;
  *(v31 + 1) = v35;
  v63 = 7;
  sub_217AD07F8();
  sub_217D89BCC();
  v36 = *(&v59 + 1);
  v37 = v60;
  v38 = BYTE1(v60);
  v39 = *(&v60 + 1);
  v40 = v61;
  v41 = &v72[v24[11]];
  *v41 = v59;
  *(v41 + 1) = v36;
  v41[16] = v37;
  v41[17] = v38;
  *(v41 + 3) = v39;
  *(v41 + 4) = v40;
  v63 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v42 = &v72[v48[12]];
  v43 = v60;
  *v42 = v59;
  *(v42 + 1) = v43;
  *(v42 + 2) = v61;
  v42[48] = v62;
  v57 = 9;
  sub_217B57068();
  sub_217D89BCC();
  (*(v53 + 8))(v55, v54);
  v44 = v72;
  v72[v48[13]] = v58;
  sub_217BA9AA8(v44, v49);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_217BA9B0C(v44);
}

void sub_217BA9A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA8F20();
    v7 = a3(a1, &type metadata for EOAFeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA9AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BA9B0C(uint64_t a1)
{
  v2 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BA9C40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v19 - 8) + 104))(a2 + v18, v4, v19);
  v20 = a1[12];
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a2 + v20, v4, v21);
  v22 = a1[13];
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v24 = *(*(v23 - 8) + 104);

  return v24(a2 + v22, v4, v23);
}

void sub_217BAA0E8()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217BA7B08(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217BA7B08(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217BA7B08(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
          if (v4 <= 0x3F)
          {
            sub_217BA7B08(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
            if (v5 <= 0x3F)
            {
              sub_217BA7B08(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
              if (v6 <= 0x3F)
              {
                sub_217BA7B08(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                if (v7 <= 0x3F)
                {
                  sub_217BA7B08(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
                  {
                    sub_217BA7B08(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
                    if (v9 <= 0x3F)
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
    }
  }
}

unint64_t sub_217BAA428()
{
  result = qword_27CBA0FE0;
  if (!qword_27CBA0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FE0);
  }

  return result;
}

unint64_t sub_217BAA480()
{
  result = qword_2811C5580;
  if (!qword_2811C5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5580);
  }

  return result;
}

unint64_t sub_217BAA4D8()
{
  result = qword_2811C5588;
  if (!qword_2811C5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5588);
  }

  return result;
}

uint64_t sub_217BAA52C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCED30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCED50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCED70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

NewsAnalytics::TodayTopStoriesMissingReason_optional __swiftcall TodayTopStoriesMissingReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayTopStoriesMissingReason.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x4572657474696D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217BAA934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000217DCB0A0;
  if (v2 == 1)
  {
    v5 = 0x8000000217DCB0A0;
  }

  else
  {
    v3 = 0x4572657474696D65;
    v5 = 0xEC000000726F7272;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x4572657474696D65;
    v4 = 0xEC000000726F7272;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217BAAA44()
{
  result = qword_27CBA0FE8;
  if (!qword_27CBA0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FE8);
  }

  return result;
}

uint64_t sub_217BAAA98()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BAAB48()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BAABE4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BAAC9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000217DCB0A0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x4572657474696D65;
    v4 = 0xEC000000726F7272;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217BAADC8()
{
  result = qword_27CBA0FF0;
  if (!qword_27CBA0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FF0);
  }

  return result;
}

uint64_t sub_217BAAE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BAAF14(uint64_t a1)
{
  v2 = sub_217BAB0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAAF50(uint64_t a1)
{
  v2 = sub_217BAB0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailSignupUserActionData.encode(to:)(void *a1)
{
  sub_217BAB328(0, &qword_2811BC5B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB0E8();
  sub_217D89E7C();
  v13 = v9;
  sub_217BAB13C();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BAB0E8()
{
  result = qword_2811BF2B8;
  if (!qword_2811BF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2B8);
  }

  return result;
}

unint64_t sub_217BAB13C()
{
  result = qword_2811BF290;
  if (!qword_2811BF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF290);
  }

  return result;
}

uint64_t EmailSignupUserActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BAB328(0, &qword_2811BC960, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB0E8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BAB38C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BAB328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BAB0E8();
    v7 = a3(a1, &type metadata for EmailSignupUserActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BAB38C()
{
  result = qword_2811BF280;
  if (!qword_2811BF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF280);
  }

  return result;
}

unint64_t sub_217BAB43C()
{
  result = qword_27CBA0FF8;
  if (!qword_27CBA0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FF8);
  }

  return result;
}

unint64_t sub_217BAB494()
{
  result = qword_2811BF2A8;
  if (!qword_2811BF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2A8);
  }

  return result;
}

unint64_t sub_217BAB4EC()
{
  result = qword_2811BF2B0;
  if (!qword_2811BF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2B0);
  }

  return result;
}

uint64_t sub_217BAB5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x50596C6C6F726373 && a2 == 0xEF6E6F697469736FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BAB634(uint64_t a1)
{
  v2 = sub_217BAB7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAB670(uint64_t a1)
{
  v2 = sub_217BAB7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScrollStartData.encode(to:)(void *a1)
{
  sub_217BAB9D0(0, &qword_2811BC740, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB7F4();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BAB7F4()
{
  result = qword_2811C60F0[0];
  if (!qword_2811C60F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C60F0);
  }

  return result;
}

uint64_t ScrollStartData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217BAB9D0(0, &qword_2811BCAA0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB7F4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D89BBC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BAB9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BAB7F4();
    v7 = a3(a1, &type metadata for ScrollStartData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BABA38()
{
  result = qword_2811C60D0;
  if (!qword_2811C60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60D0);
  }

  return result;
}

unint64_t sub_217BABA90()
{
  result = qword_2811C60D8;
  if (!qword_2811C60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60D8);
  }

  return result;
}

uint64_t sub_217BABAFC(void *a1)
{
  sub_217BAB9D0(0, &qword_2811BC740, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB7F4();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BABC68()
{
  result = qword_27CBA1000;
  if (!qword_27CBA1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1000);
  }

  return result;
}

unint64_t sub_217BABCC0()
{
  result = qword_2811C60E0;
  if (!qword_2811C60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60E0);
  }

  return result;
}

unint64_t sub_217BABD18()
{
  result = qword_2811C60E8;
  if (!qword_2811C60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60E8);
  }

  return result;
}

uint64_t sub_217BABE34()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1038);
  __swift_project_value_buffer(v0, qword_27CBA1038);
  return sub_217D8866C();
}

uint64_t UnfavoriteTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnfavoriteTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfavoriteTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfavoriteTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfavoriteTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfavoriteTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfavoriteTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfavoriteTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnfavoriteTagEvent(0);
  v5 = v4[5];
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t UnfavoriteTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfavoriteTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnfavoriteTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfavoriteTagEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t UnfavoriteTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfavoriteTagEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 UnfavoriteTagEvent.Model.init(eventData:tagData:viewData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  v15 = (a5 + v14[5]);
  *v15 = v8;
  v15[1] = v9;
  v16 = a5 + v14[6];
  *v16 = v10;
  *(v16 + 8) = v11;
  *(v16 + 16) = v12;
  v17 = a5 + v14[7];
  v18 = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = v18;
  result = *(a4 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a4 + 48);
  return result;
}

uint64_t sub_217BAC888(uint64_t a1)
{
  v2 = sub_217BACC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAC8C4(uint64_t a1)
{
  v2 = sub_217BACC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnfavoriteTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BAD0E8(0, &qword_27CBA1050, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BACC14();
  sub_217D89E7C();
  LOBYTE(v29[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for UnfavoriteTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v29[0] = *v13;
    *(&v29[0] + 1) = v14;
    LOBYTE(v25) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v15 = (v3 + v12[6]);
    v16 = *v15;
    v17 = v15[1];
    LOWORD(v15) = *(v15 + 8);
    v31 = v16;
    v32 = v17;
    v33 = v15;
    v35 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v18 = (v3 + v12[7]);
    v19 = v18[1];
    v29[0] = *v18;
    v29[1] = v19;
    v21 = *v18;
    v20 = v18[1];
    v29[2] = v18[2];
    v30 = *(v18 + 48);
    v25 = v21;
    v26 = v20;
    v27 = v18[2];
    v28 = *(v18 + 48);
    v34 = 3;
    sub_217ACC004(v29, v23);
    sub_217A55B98();
    sub_217D89CAC();
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    sub_217ACC69C(v23);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BACC14()
{
  result = qword_27CBA1058;
  if (!qword_27CBA1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1058);
  }

  return result;
}

uint64_t UnfavoriteTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BAD0E8(0, &qword_27CBA1060, MEMORY[0x277D844C8]);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BACC14();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  LOBYTE(v33) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v29;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v37 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v18 = *(&v33 + 1);
  v19 = &v14[v11[5]];
  *v19 = v33;
  *(v19 + 1) = v18;
  v37 = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v20 = *(&v33 + 1);
  v21 = v34;
  v22 = &v14[v11[6]];
  *v22 = v33;
  *(v22 + 1) = v20;
  *(v22 + 8) = v21;
  v37 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v30 + 8))(v32, v31);
  v23 = &v14[v11[7]];
  v24 = v34;
  *v23 = v33;
  *(v23 + 1) = v24;
  *(v23 + 2) = v35;
  v23[48] = v36;
  sub_217BAD14C(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BAD1B0(v14);
}

void sub_217BAD0E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BACC14();
    v7 = a3(a1, &type metadata for UnfavoriteTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BAD14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BAD1B0(uint64_t a1)
{
  v2 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217BAD348()
{
  result = qword_27CBA1088;
  if (!qword_27CBA1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1088);
  }

  return result;
}

unint64_t sub_217BAD3A0()
{
  result = qword_27CBA1090;
  if (!qword_27CBA1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1090);
  }

  return result;
}

unint64_t sub_217BAD3F8()
{
  result = qword_27CBA1098;
  if (!qword_27CBA1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1098);
  }

  return result;
}

uint64_t sub_217BAD514()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA10D0);
  __swift_project_value_buffer(v0, qword_27CBA10D0);
  return sub_217D8866C();
}

uint64_t UnfollowTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnfollowTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BADF88(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t UnfollowTagEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnfollowTagEvent(0);
  v5 = v4[5];
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v8, v17);
}

uint64_t UnfollowTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnfollowTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t UnfollowTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t UnfollowTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t UnfollowTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UnfollowTagEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t UnfollowTagEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 UnfollowTagEvent.Model.init(eventData:tagData:feedData:viewData:userBundleSubscriptionContextData:actionData:sectionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v27 = *a3;
  v13 = *(a3 + 2);
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v17 = *a6;
  v30 = *a7;
  v29 = a7[1].n128_u64[0];
  v28 = a7[1].n128_u8[8];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for UnfollowTagEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v11;
  v20[1] = v12;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v13;
  v22 = a8 + v19[7];
  *v22 = v14;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  v23 = a8 + v19[8];
  v24 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = *(a5 + 48);
  *(a8 + v19[9]) = v17;
  v25 = (a8 + v19[10]);
  result = v30;
  *v25 = v30;
  v25[1].n128_u64[0] = v29;
  v25[1].n128_u8[8] = v28;
  return result;
}

uint64_t sub_217BAE7C4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x61446E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x446E6F6974636573;
  }

  v4 = 0x6174614477656976;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x61746144676174;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217BAE8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BAFE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BAE8DC(uint64_t a1)
{
  v2 = sub_217BAEDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAE918(uint64_t a1)
{
  v2 = sub_217BAEDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnfollowTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BAF438(0, &qword_27CBA10E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAEDC8();
  sub_217D89E7C();
  LOBYTE(v37) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for UnfollowTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v37 = *v13;
    *(&v37 + 1) = v14;
    LOBYTE(v33) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v15 = (v3 + v12[6]);
    v16 = v15[1];
    v17 = v15[2];
    *&v37 = *v15;
    *(&v37 + 1) = v16;
    *&v38 = v17;
    LOBYTE(v33) = 2;
    sub_217AD1A68(v37, v16, v17);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v37, *(&v37 + 1), v38);
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v41 = v20;
    v42 = v21;
    v43 = v19;
    v46 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v22 = (v3 + v12[8]);
    v23 = v22[1];
    v37 = *v22;
    v38 = v23;
    v25 = *v22;
    v24 = v22[1];
    v39 = v22[2];
    v40 = *(v22 + 48);
    v33 = v25;
    v34 = v24;
    v35 = v22[2];
    v36 = *(v22 + 48);
    v45 = 4;
    sub_217ACC004(&v37, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v32 = v36;
    sub_217ACC69C(v31);
    LOBYTE(v28) = *(v3 + v12[9]);
    v44 = 5;
    sub_217AED190();
    sub_217D89CAC();
    v26 = (v3 + v12[10]);
    v27 = *(v26 + 24);
    v28 = *v26;
    v29 = *(v26 + 1);
    v30 = v27;
    v44 = 6;
    sub_217B17644();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BAEDC8()
{
  result = qword_27CBA10F0;
  if (!qword_27CBA10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA10F0);
  }

  return result;
}

uint64_t UnfollowTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BAF438(0, &qword_27CBA10F8, MEMORY[0x277D844C8]);
  v35 = v7;
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UnfollowTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAEDC8();
  v36 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v40) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v34;
  sub_217D89BCC();
  (*(v32 + 32))(v14, v17, v4);
  LOBYTE(v37) = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v34 = 0;
  v18 = *(&v40 + 1);
  v19 = &v14[v11[5]];
  *v19 = v40;
  *(v19 + 1) = v18;
  LOBYTE(v37) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v20 = v41;
  v21 = &v14[v11[6]];
  *v21 = v40;
  *(v21 + 2) = v20;
  LOBYTE(v37) = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v22 = *(&v40 + 1);
  v23 = v41;
  v24 = &v14[v11[7]];
  *v24 = v40;
  *(v24 + 1) = v22;
  *(v24 + 8) = v23;
  v45 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v25 = &v14[v11[8]];
  v26 = v41;
  *v25 = v40;
  *(v25 + 1) = v26;
  *(v25 + 2) = v42;
  v25[48] = v43;
  v44 = 5;
  sub_217AED13C();
  sub_217D89BCC();
  v14[v11[9]] = v37;
  v44 = 6;
  sub_217B175F0();
  sub_217D89B5C();
  (*(v16 + 8))(v36, v35);
  v27 = v38;
  v28 = v39;
  v29 = &v14[v11[10]];
  *v29 = v37;
  *(v29 + 2) = v27;
  v29[24] = v28;
  sub_217BAF49C(v14, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BAF500(v14);
}

void sub_217BAF438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BAEDC8();
    v7 = a3(a1, &type metadata for UnfollowTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BAF49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnfollowTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BAF500(uint64_t a1)
{
  v2 = type metadata accessor for UnfollowTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BAF634@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v9, v18);
}

void sub_217BAF9C0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217BADF88(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
    if (v1 <= 0x3F)
    {
      sub_217BADF88(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217BADF88(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          sub_217BADF88(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
          if (v4 <= 0x3F)
          {
            sub_217BADF88(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
            if (v5 <= 0x3F)
            {
              sub_217BADF88(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
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

void sub_217BAFC34()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7C80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BAFD28()
{
  result = qword_27CBA1100;
  if (!qword_27CBA1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1100);
  }

  return result;
}

unint64_t sub_217BAFD80()
{
  result = qword_27CBA1108;
  if (!qword_27CBA1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1108);
  }

  return result;
}

unint64_t sub_217BAFDD8()
{
  result = qword_27CBA1110;
  if (!qword_27CBA1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1110);
  }

  return result;
}

uint64_t sub_217BAFE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_217BB00DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCED90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BB0170(uint64_t a1)
{
  v2 = sub_217A69EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB01AC(uint64_t a1)
{
  v2 = sub_217A69EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BadgeOriginationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A69D24(0, &qword_27CBA1118, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69EFC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BB0380();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217BB0380()
{
  result = qword_27CBA1120;
  if (!qword_27CBA1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1120);
  }

  return result;
}

unint64_t sub_217BB03D8()
{
  result = qword_27CBA1128;
  if (!qword_27CBA1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1128);
  }

  return result;
}

unint64_t sub_217BB046C()
{
  result = qword_27CBA1130;
  if (!qword_27CBA1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1130);
  }

  return result;
}

uint64_t PDFPageContext.pageIndices.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PDFPageContext.init(pageIndices:pageCount:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_217BB0558()
{
  if (*v0)
  {
    result = 0x6E756F4365676170;
  }

  else
  {
    result = 0x69646E4965676170;
  }

  *v0;
  return result;
}

uint64_t sub_217BB05A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69646E4965676170 && a2 == 0xEB00000000736563;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E756F4365676170 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217BB0688(uint64_t a1)
{
  v2 = sub_217BB08E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB06C4(uint64_t a1)
{
  v2 = sub_217BB08E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDFPageContext.encode(to:)(void *a1)
{
  sub_217BB0BB4(0, &qword_27CBA1138, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[2] = *(v1 + 2);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB08E0();

  sub_217D89E7C();
  v16 = v10;
  v15 = 0;
  sub_217BB0934();
  sub_217BB0C18(&qword_2811BCCF8);
  sub_217D89CAC();

  if (!v2)
  {
    v14 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217BB08E0()
{
  result = qword_27CBA1140;
  if (!qword_27CBA1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1140);
  }

  return result;
}

void sub_217BB0934()
{
  if (!qword_2811BCD00)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD00);
    }
  }
}

uint64_t PDFPageContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BB0BB4(0, &qword_27CBA1148, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB08E0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217BB0934();
  v15[15] = 0;
  sub_217BB0C18(&qword_2811BCCF0);
  sub_217D89BCC();
  v12 = v16;
  v15[14] = 1;
  v13 = sub_217D89BDC();
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB0BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB08E0();
    v7 = a3(a1, &type metadata for PDFPageContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB0C18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217BB0934();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217BB0C7C()
{
  result = qword_2811C6BB8;
  if (!qword_2811C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6BB8);
  }

  return result;
}

unint64_t sub_217BB0CD4()
{
  result = qword_2811C6BC0[0];
  if (!qword_2811C6BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C6BC0);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_217BB0D6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_217BB0DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217BB0E18()
{
  result = qword_27CBA1150;
  if (!qword_27CBA1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1150);
  }

  return result;
}

unint64_t sub_217BB0E70()
{
  result = qword_27CBA1158;
  if (!qword_27CBA1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1158);
  }

  return result;
}

unint64_t sub_217BB0EC8()
{
  result = qword_27CBA1160;
  if (!qword_27CBA1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1160);
  }

  return result;
}

NewsAnalytics::AdState_optional __swiftcall AdState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdState.rawValue.getter()
{
  v1 = 0x6C616974696E69;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x656C6C69666C7566;
  }

  if (*v0)
  {
    v1 = 0x676E69646E6570;
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

unint64_t sub_217BB1004()
{
  result = qword_27CBA1168;
  if (!qword_27CBA1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1168);
  }

  return result;
}

uint64_t sub_217BB1058()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BB111C()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BB11CC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BB1298(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (*v1 != 2)
  {
    v5 = 0x656C6C69666C7566;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x676E69646E6570;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217BB13D8()
{
  result = qword_2811BD3E0;
  if (!qword_2811BD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3E0);
  }

  return result;
}

uint64_t RecipeListData.recipeIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

NewsAnalytics::RecipeListData __swiftcall RecipeListData.init(recipeIDs:)(Swift::OpaquePointer_optional recipeIDs)
{
  rawValue = recipeIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.recipeIDs.value._rawValue = v4;
  result.recipeIDs.is_nil = v5;
  return result;
}

uint64_t sub_217BB14D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657069636572 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BB1564(uint64_t a1)
{
  v2 = sub_217BB1778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB15A0(uint64_t a1)
{
  v2 = sub_217BB1778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeListData.encode(to:)(void *a1)
{
  sub_217BB1990(0, &qword_2811BC788, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1778();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89C3C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BB1778()
{
  result = qword_2811C6B00;
  if (!qword_2811C6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6B00);
  }

  return result;
}

uint64_t RecipeListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217BB1990(0, &qword_2811BCAC8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1778();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB1990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB1778();
    v7 = a3(a1, &type metadata for RecipeListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB19F8()
{
  result = qword_2811C6AE0;
  if (!qword_2811C6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AE0);
  }

  return result;
}

unint64_t sub_217BB1A50()
{
  result = qword_2811C6AE8;
  if (!qword_2811C6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AE8);
  }

  return result;
}

unint64_t sub_217BB1AF8()
{
  result = qword_27CBA1170;
  if (!qword_27CBA1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1170);
  }

  return result;
}

unint64_t sub_217BB1B50()
{
  result = qword_2811C6AF0;
  if (!qword_2811C6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AF0);
  }

  return result;
}

unint64_t sub_217BB1BA8()
{
  result = qword_2811C6AF8;
  if (!qword_2811C6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AF8);
  }

  return result;
}

unint64_t sub_217BB1C88()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_217BB1CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000217DCEDB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEDD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

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

uint64_t sub_217BB1DA4(uint64_t a1)
{
  v2 = sub_217BB1FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB1DE0(uint64_t a1)
{
  v2 = sub_217BB1FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApplicationStateHistoryData.encode(to:)(void *a1)
{
  sub_217BB224C(0, &qword_27CBA1178, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1FC0();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217BB2014();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217BB1FC0()
{
  result = qword_27CBA1180;
  if (!qword_27CBA1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1180);
  }

  return result;
}

unint64_t sub_217BB2014()
{
  result = qword_27CBA1188;
  if (!qword_27CBA1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1188);
  }

  return result;
}

uint64_t ApplicationStateHistoryData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BB224C(0, &qword_27CBA1190, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1FC0();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217BB22B0();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB224C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB1FC0();
    v7 = a3(a1, &type metadata for ApplicationStateHistoryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB22B0()
{
  result = qword_27CBA1198;
  if (!qword_27CBA1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1198);
  }

  return result;
}

unint64_t sub_217BB2360()
{
  result = qword_27CBA11A0;
  if (!qword_27CBA11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11A0);
  }

  return result;
}

unint64_t sub_217BB23B8()
{
  result = qword_27CBA11A8;
  if (!qword_27CBA11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11A8);
  }

  return result;
}

unint64_t sub_217BB2410()
{
  result = qword_27CBA11B0;
  if (!qword_27CBA11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11B0);
  }

  return result;
}

uint64_t FeedConfigData.recordID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FeedConfigData.recordID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeedConfigData.init(recordID:source:fetchStartTime:fetchEndTime:publishDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_217BB25D4()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x6174536863746566;
  v4 = 0x646E456863746566;
  if (v1 != 3)
  {
    v4 = 0x446873696C627570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217BB2688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BB2F54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BB26B0(uint64_t a1)
{
  v2 = sub_217BB2958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB26EC(uint64_t a1)
{
  v2 = sub_217BB2958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedConfigData.encode(to:)(void *a1)
{
  sub_217BB2C80(0, &qword_2811BC798, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v11 = v1[3];
  v15[2] = v1[4];
  v15[3] = v11;
  v15[1] = v1[5];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB2958();
  sub_217D89E7C();
  v23 = 0;
  v13 = v17;
  sub_217D89C0C();
  if (!v13)
  {
    v22 = v16;
    v21 = 1;
    sub_217BB29AC();
    sub_217D89CAC();
    v20 = 2;
    sub_217D89CCC();
    v19 = 3;
    sub_217D89CCC();
    v18 = 4;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BB2958()
{
  result = qword_2811C70A0;
  if (!qword_2811C70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70A0);
  }

  return result;
}

unint64_t sub_217BB29AC()
{
  result = qword_2811C5270[0];
  if (!qword_2811C5270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C5270);
  }

  return result;
}

uint64_t FeedConfigData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BB2C80(0, &qword_27CBA11B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB2958();
  sub_217D89E5C();
  if (!v2)
  {
    v30 = 0;
    v12 = sub_217D89B2C();
    v14 = v13;
    v15 = v12;
    v28 = 1;
    sub_217BB2CE4();
    sub_217D89BCC();
    v16 = v29;
    v27 = 2;
    v24 = sub_217D89BEC();
    v26 = 3;
    v17 = sub_217D89BEC();
    v22 = v16;
    v23 = v17;
    v25 = 4;
    v19 = sub_217D89BEC();
    (*(v7 + 8))(v10, v6);
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v22;
    v20 = v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = v20;
    *(a2 + 40) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB2C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB2958();
    v7 = a3(a1, &type metadata for FeedConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB2CE4()
{
  result = qword_27CBA11C0;
  if (!qword_27CBA11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11C0);
  }

  return result;
}

uint64_t sub_217BB2D70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_217BB2DCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217BB2E50()
{
  result = qword_27CBA11C8;
  if (!qword_27CBA11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11C8);
  }

  return result;
}

unint64_t sub_217BB2EA8()
{
  result = qword_2811C7090;
  if (!qword_2811C7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7090);
  }

  return result;
}

unint64_t sub_217BB2F00()
{
  result = qword_2811C7098;
  if (!qword_2811C7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7098);
  }

  return result;
}

uint64_t sub_217BB2F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174536863746566 && a2 == 0xEE00656D69547472 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E456863746566 && a2 == 0xEC000000656D6954 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t PurchaseRestoreListData.purchaseRestoreData.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217BB3190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000217DCEE90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BB3224(uint64_t a1)
{
  v2 = sub_217BB3444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB3260(uint64_t a1)
{
  v2 = sub_217BB3444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseRestoreListData.encode(to:)(void *a1)
{
  sub_217BB370C(0, &qword_27CBA11D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB3444();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217BB3498();
  sub_217BB3770(&qword_27CBA11E8, sub_217BB34E8);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BB3444()
{
  result = qword_27CBA11D8;
  if (!qword_27CBA11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11D8);
  }

  return result;
}

void sub_217BB3498()
{
  if (!qword_27CBA11E0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA11E0);
    }
  }
}

unint64_t sub_217BB34E8()
{
  result = qword_27CBA11F0;
  if (!qword_27CBA11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11F0);
  }

  return result;
}

uint64_t PurchaseRestoreListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217BB370C(0, &qword_27CBA11F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB3444();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BB3498();
    sub_217BB3770(&qword_27CBA1200, sub_217BB37DC);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB370C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB3444();
    v7 = a3(a1, &type metadata for PurchaseRestoreListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB3770(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217BB3498();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217BB37DC()
{
  result = qword_27CBA1208;
  if (!qword_27CBA1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1208);
  }

  return result;
}

unint64_t sub_217BB3834()
{
  result = qword_27CBA1210;
  if (!qword_27CBA1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1210);
  }

  return result;
}

unint64_t sub_217BB388C()
{
  result = qword_27CBA1218;
  if (!qword_27CBA1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1218);
  }

  return result;
}

unint64_t sub_217BB3934()
{
  result = qword_27CBA1220;
  if (!qword_27CBA1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1220);
  }

  return result;
}

unint64_t sub_217BB398C()
{
  result = qword_27CBA1228;
  if (!qword_27CBA1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1228);
  }

  return result;
}

unint64_t sub_217BB39E4()
{
  result = qword_27CBA1230;
  if (!qword_27CBA1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1230);
  }

  return result;
}

void *sub_217BB3A38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_217BB3B98()
{
  result = qword_2811BCCD0;
  if (!qword_2811BCCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCCD0);
  }

  return result;
}

void sub_217BB3C04(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = *a1;
  v8 = *a2;

  v9 = sub_217D8951C();

  v10 = [v6 stringForKey_];

  v11 = 2;
  if (v10)
  {
    sub_217D8954C();

    v12 = sub_217D89B0C();

    if (v12 >= 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = v12;
    }
  }

  *a3 = v11;
}

void sub_217BB3D98()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];

  v2 = sub_217D8951C();

  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = [v0 standardUserDefaults];

    v5 = sub_217D8951C();

    [v4 setObject:v3 forKey:v5];
  }
}

void sub_217BB3EDC()
{
  sub_217BB3D98();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_217D8951C();

  v2 = sub_217D8951C();

  [v0 setObject:v1 forKey:v2];
}

uint64_t CustomItemData.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CustomItemData.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomItemData.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CustomItemData.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::CustomItemData __swiftcall CustomItemData.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t sub_217BB40CC()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_217BB4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217BB41E8(uint64_t a1)
{
  v2 = sub_217BB43E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB4224(uint64_t a1)
{
  v2 = sub_217BB43E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemData.encode(to:)(void *a1)
{
  sub_217BB4644(0, &qword_2811BC7A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB43E0();
  sub_217D89E7C();
  v17 = 0;
  v13 = v15[3];
  sub_217D89C6C();
  if (!v13)
  {
    v16 = 1;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BB43E0()
{
  result = qword_2811C70E8;
  if (!qword_2811C70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70E8);
  }

  return result;
}

uint64_t CustomItemData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BB4644(0, &qword_27CBA1258, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB43E0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_217D89B8C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB4644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB43E0();
    v7 = a3(a1, &type metadata for CustomItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB4704()
{
  result = qword_27CBA1260;
  if (!qword_27CBA1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1260);
  }

  return result;
}

unint64_t sub_217BB475C()
{
  result = qword_2811C70F0;
  if (!qword_2811C70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70F0);
  }

  return result;
}

unint64_t sub_217BB47B4()
{
  result = qword_2811C70F8;
  if (!qword_2811C70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70F8);
  }

  return result;
}

NewsAnalytics::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InteractionType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1752461154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4572657474656CLL;
  }
}

uint64_t sub_217BB48C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000217DCB110;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000217DCB110;
  }

  else
  {
    v3 = 1752461154;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E4572657474656CLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000797274;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1752461154;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E4572657474656CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000797274;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217BB49B8()
{
  result = qword_27CBA1268;
  if (!qword_27CBA1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1268);
  }

  return result;
}

uint64_t sub_217BB4A0C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BB4AB4()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BB4B48()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BB4BF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000797274;
  v4 = 0x8000000217DCB110;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1752461154;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E4572657474656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217BB4D1C()
{
  result = qword_27CBA1270;
  if (!qword_27CBA1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1270);
  }

  return result;
}

uint64_t sub_217BB4DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BB4E54(uint64_t a1)
{
  v2 = sub_217BB5028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB4E90(uint64_t a1)
{
  v2 = sub_217BB5028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdStateData.encode(to:)(void *a1)
{
  sub_217BB5268(0, &qword_2811BC868, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5028();
  sub_217D89E7C();
  v13 = v9;
  sub_217BB507C();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BB5028()
{
  result = qword_2811C7E08;
  if (!qword_2811C7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E08);
  }

  return result;
}

unint64_t sub_217BB507C()
{
  result = qword_2811BD3E8;
  if (!qword_2811BD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3E8);
  }

  return result;
}

uint64_t AdStateData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BB5268(0, &qword_27CBA1278, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5028();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BB52CC();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB5268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB5028();
    v7 = a3(a1, &type metadata for AdStateData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB52CC()
{
  result = qword_27CBA1280;
  if (!qword_27CBA1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1280);
  }

  return result;
}

unint64_t sub_217BB5324()
{
  result = qword_2811C7DE8;
  if (!qword_2811C7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DE8);
  }

  return result;
}

unint64_t sub_217BB537C()
{
  result = qword_2811C7DF0;
  if (!qword_2811C7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DF0);
  }

  return result;
}

unint64_t sub_217BB5424()
{
  result = qword_27CBA1288;
  if (!qword_27CBA1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1288);
  }

  return result;
}

unint64_t sub_217BB547C()
{
  result = qword_2811C7DF8;
  if (!qword_2811C7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DF8);
  }

  return result;
}

unint64_t sub_217BB54D4()
{
  result = qword_2811C7E00;
  if (!qword_2811C7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E00);
  }

  return result;
}

uint64_t sub_217BB55F0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C6A70);
  __swift_project_value_buffer(v0, qword_2811C6A70);
  return sub_217D8866C();
}

uint64_t TelemetryEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217BB56E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_217BB56E8()
{
  if (!qword_2811C8860)
  {
    type metadata accessor for NetworkEventData();
    sub_217BB5798(&qword_2811C5020);
    sub_217BB5798(&qword_2811C5028);
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8860);
    }
  }
}

uint64_t sub_217BB5798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NetworkEventData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TelemetryEvent.networkEventData.setter(uint64_t a1)
{
  sub_217BB56E8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TelemetryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BB56E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_217BB58E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEventData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BB5994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217DCEEF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BB5A28(uint64_t a1)
{
  v2 = sub_217BB5C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB5A64(uint64_t a1)
{
  v2 = sub_217BB5C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TelemetryEvent.Model.encode(to:)(void *a1)
{
  sub_217BB5EF0(0, &qword_27CBA1290, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5C14();
  sub_217D89E7C();
  type metadata accessor for NetworkEventData();
  sub_217BB5798(&qword_2811C5028);
  sub_217D89CAC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_217BB5C14()
{
  result = qword_27CBA1298;
  if (!qword_27CBA1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1298);
  }

  return result;
}

uint64_t TelemetryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for NetworkEventData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BB5EF0(0, &qword_27CBA12A0, MEMORY[0x277D844C8]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TelemetryEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5C14();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = v21;
    sub_217BB5798(&qword_2811C5020);
    v18 = v22;
    sub_217D89BCC();
    (*(v17 + 8))(v11, v8);
    sub_217BB5F74(v18, v15, type metadata accessor for NetworkEventData);
    sub_217BB5F74(v15, v20, type metadata accessor for TelemetryEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB5EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB5C14();
    v7 = a3(a1, &type metadata for TelemetryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB5F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217BB5FF4(void *a1)
{
  sub_217BB5EF0(0, &qword_27CBA1290, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5C14();
  sub_217D89E7C();
  type metadata accessor for NetworkEventData();
  sub_217BB5798(&qword_2811C5028);
  sub_217D89CAC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_217BB6210@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BB56E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_217BB6408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BB648C()
{
  result = qword_27CBA12B8;
  if (!qword_27CBA12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA12B8);
  }

  return result;
}

unint64_t sub_217BB64E4()
{
  result = qword_27CBA12C0;
  if (!qword_27CBA12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA12C0);
  }

  return result;
}

unint64_t sub_217BB653C()
{
  result = qword_27CBA12C8;
  if (!qword_27CBA12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA12C8);
  }

  return result;
}

uint64_t sub_217BB6658()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1300);
  __swift_project_value_buffer(v0, qword_27CBA1300);
  return sub_217D8866C();
}

uint64_t UnblockTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnblockTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BB70CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t UnblockTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnblockTagEvent(0);
  v5 = v4[5];
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t UnblockTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t UnblockTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnblockTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t UnblockTagEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 32);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t UnblockTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t UnblockTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UnblockTagEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 UnblockTagEvent.Model.init(eventData:viewData:tagData:feedData:articleData:userBundleSubscriptionContextData:actionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *a3;
  v16 = a3[1];
  v31 = *a4;
  v17 = *(a4 + 2);
  v32 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for UnblockTagEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v12;
  *(v20 + 8) = v13;
  *(v20 + 16) = v14;
  v21 = (a8 + v19[6]);
  *v21 = v15;
  v21[1] = v16;
  v22 = a8 + v19[7];
  *v22 = v31;
  *(v22 + 16) = v17;
  v23 = a8 + v19[8];
  v24 = *(a5 + 48);
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = v24;
  v25 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a5 + 127);
  v26 = *(a5 + 112);
  *(v23 + 96) = *(a5 + 96);
  *(v23 + 112) = v26;
  v27 = *(a5 + 80);
  *(v23 + 64) = *(a5 + 64);
  *(v23 + 80) = v27;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  result = *(a6 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v32;
  return result;
}

unint64_t sub_217BB7954()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 5)
  {
    v3 = 0x61446E6F69746361;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x44656C6369747261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6174614477656976;
  if (v1 != 1)
  {
    v5 = 0x61746144676174;
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

uint64_t sub_217BB7A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BB91E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BB7A6C(uint64_t a1)
{
  v2 = sub_217BB7FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB7AA8(uint64_t a1)
{
  v2 = sub_217BB7FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnblockTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BB87E8(0, &qword_27CBA1318, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB7FEC();
  sub_217D89E7C();
  LOBYTE(v53) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v65 = type metadata accessor for UnblockTagEvent.Model(0);
    v12 = (v3 + v65[5]);
    v13 = *v12;
    v14 = v12[1];
    LOWORD(v12) = *(v12 + 8);
    *&v53 = v13;
    *(&v53 + 1) = v14;
    LOWORD(v54) = v12;
    LOBYTE(v45) = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v15 = (v3 + v65[6]);
    v16 = v15[1];
    *&v53 = *v15;
    *(&v53 + 1) = v16;
    LOBYTE(v45) = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v18 = (v3 + v65[7]);
    v19 = v18[1];
    v20 = v18[2];
    v62 = *v18;
    v63 = v19;
    v64 = v20;
    v61 = 3;
    sub_217AD1A68(v62, v19, v20);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v62, v63, v64);
    v21 = (v3 + v65[8]);
    v22 = v21[6];
    v23 = v21[4];
    v58 = v21[5];
    v59 = v22;
    v24 = v21[6];
    *v60 = v21[7];
    v25 = v21[1];
    v26 = v21[3];
    v55 = v21[2];
    v56 = v26;
    v27 = v21[3];
    v57 = v21[4];
    v28 = v21[1];
    v53 = *v21;
    v54 = v28;
    v50 = v58;
    v51 = v24;
    v52[0] = v21[7];
    v47 = v55;
    v48 = v27;
    v49 = v23;
    *&v60[15] = *(v21 + 127);
    *(v52 + 15) = *(v21 + 127);
    v45 = v53;
    v46 = v25;
    v44 = 4;
    sub_217AFFBC0(&v53, v42);
    sub_217ACF52C();
    sub_217D89C3C();
    v42[6] = v51;
    *v43 = v52[0];
    *&v43[15] = *(v52 + 15);
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    v42[5] = v50;
    v42[0] = v45;
    v42[1] = v46;
    sub_217B009E0(v42);
    v29 = v3 + v65[9];
    v30 = *(v29 + 16);
    v31 = *(v29 + 32);
    v40[0] = *v29;
    v40[1] = v30;
    v40[2] = v31;
    v41 = *(v29 + 48);
    v36 = v40[0];
    v37 = v30;
    v38 = *(v29 + 32);
    v39 = *(v29 + 48);
    v35 = 5;
    sub_217ACC004(v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v32[15] = *(v3 + v65[10]);
    v32[14] = 6;
    sub_217AED190();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BB7FEC()
{
  result = qword_27CBA1320;
  if (!qword_27CBA1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1320);
  }

  return result;
}

uint64_t UnblockTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_217D8899C();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BB87E8(0, &qword_27CBA1328, MEMORY[0x277D844C8]);
  v40 = v8;
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for UnblockTagEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217BB7FEC();
  v41 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v18 = v39;
  v19 = v15;
  LOBYTE(v50) = 0;
  sub_217A602A0(&qword_2811C8408);
  v20 = v40;
  sub_217D89BCC();
  (*(v38 + 32))(v19, v7, v4);
  LOBYTE(v45) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v21 = *(&v50 + 1);
  v22 = v51;
  v23 = v19 + v12[5];
  *v23 = v50;
  *(v23 + 8) = v21;
  *(v23 + 16) = v22;
  LOBYTE(v45) = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v24 = *(&v50 + 1);
  v25 = (v19 + v12[6]);
  *v25 = v50;
  v25[1] = v24;
  LOBYTE(v45) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v26 = v51;
  v27 = v19 + v12[7];
  *v27 = v50;
  *(v27 + 16) = v26;
  v49 = 4;
  sub_217ACF4D8();
  sub_217D89B5C();
  v28 = v19 + v12[8];
  v29 = v55;
  v30 = v57[0];
  *(v28 + 96) = v56;
  *(v28 + 112) = v30;
  *(v28 + 127) = *(v57 + 15);
  v31 = v53;
  *(v28 + 32) = v52;
  *(v28 + 48) = v31;
  *(v28 + 64) = v54;
  *(v28 + 80) = v29;
  v32 = v51;
  *v28 = v50;
  *(v28 + 16) = v32;
  v44 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v33 = v19 + v12[9];
  v34 = v46;
  *v33 = v45;
  *(v33 + 16) = v34;
  *(v33 + 32) = v47;
  *(v33 + 48) = v48;
  v42 = 6;
  sub_217AED13C();
  sub_217D89BCC();
  (*(v18 + 8))(v41, v20);
  *(v19 + v12[10]) = v43;
  sub_217BB884C(v19, v37);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_217BB88B0(v19);
}

void sub_217BB87E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB7FEC();
    v7 = a3(a1, &type metadata for UnblockTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB884C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnblockTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BB88B0(uint64_t a1)
{
  v2 = type metadata accessor for UnblockTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BB89E4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_217BB8D70()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217BB70CC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217BB70CC(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
      if (v2 <= 0x3F)
      {
        sub_217BB70CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217BB70CC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
          if (v4 <= 0x3F)
          {
            sub_217BB70CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
            if (v5 <= 0x3F)
            {
              sub_217BB70CC(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
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

void sub_217BB8FE4()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BB90E4()
{
  result = qword_27CBA1330;
  if (!qword_27CBA1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1330);
  }

  return result;
}

unint64_t sub_217BB913C()
{
  result = qword_27CBA1338;
  if (!qword_27CBA1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1338);
  }

  return result;
}

unint64_t sub_217BB9194()
{
  result = qword_27CBA1340;
  if (!qword_27CBA1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1340);
  }

  return result;
}

uint64_t sub_217BB91E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}