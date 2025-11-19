void sub_2284ABA00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v2, 0);
    v4 = (a1 + 80);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v14 + 16);
      v8 = *(v14 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_2284272C0((v8 > 1), v7 + 1, 1);
      }

      *(v14 + 16) = v7 + 1;
      v9 = v14 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  type metadata accessor for HealthAppNotificationManager();
  v10 = *(v1 + 16);
  v11 = sub_22855D39C();
  [v10 removePendingNotificationRequestsWithIdentifiers_];

  v12 = *(v1 + 16);
  v13 = sub_22855D39C();
  [v12 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t sub_2284ABB54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v70 = a6;
  v72 = a5;
  v71 = a4;
  v76 = a7;
  sub_2284ADE2C();
  v11 = v10;
  v74 = *(v10 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADED4();
  v15 = v14;
  v68 = *(v14 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AE068();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *a1;
  v82 = MEMORY[0x277D84F90];
  if (a2)
  {
    v25 = objc_allocWithZone(MEMORY[0x277CCD570]);

    v67 = a2;
    v26 = sub_22855D17C();
    v27 = [v25 initWithCategory:1 domainName:v26 healthStore:a3];

    v28 = v75;
    v29 = *(v75 + 16);
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v65 = v18;
      v66 = v15;
      v69 = v11;
      v80[0] = MEMORY[0x277D84F90];
      sub_22855DD4C();
      sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v78 = v31;
      v32 = (v28 + 72);
      v77 = xmmword_228560580;
      do
      {
        v33 = *(v32 - 40);
        v34 = *(v32 - 24);
        v35 = *(v32 - 8);
        v90 = *(v32 + 1);
        v88 = v34;
        v89 = v35;
        v87 = v33;
        v91 = *v32;
        v36 = swift_allocObject();
        v37 = v91;
        *(v36 + 16) = v77;
        *(v36 + 32) = v37;
        sub_22842B9BC(&v87, &v83);
        v38 = v27;
        sub_2284AE2B0(&v91, &v83);
        v39 = sub_22855D6EC();

        v81 = v39;
        v40 = swift_allocObject();
        v41 = v88;
        *(v40 + 16) = v87;
        *(v40 + 32) = v41;
        *(v40 + 48) = v89;
        *(v40 + 64) = v90;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_2284AEB7C;
        *(v42 + 24) = v40;
        sub_22842B9BC(&v87, &v83);
        sub_2284ADF84(0, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
        v43 = v27;
        sub_2284AE0FC();
        sub_22855CE8C();

        sub_2283FD034(&qword_27D83FBE8, sub_2284AE068);
        sub_22855CE6C();
        sub_22848CF64(&v87);
        (*(v21 + 8))(v24, v20);
        sub_22855DD1C();
        v44 = *(v80[0] + 16);
        sub_22855DD5C();
        v27 = v43;
        sub_22855DD6C();
        sub_22855DD2C();
        v32 = (v32 + 56);
        --v29;
      }

      while (v29);
      v30 = v80[0];
      v11 = v69;
      v15 = v66;
      v18 = v65;
    }

    sub_2284A7C30(v30);
  }

  v45 = v72;
  v46 = v76;
  if (v72)
  {
    type metadata accessor for HealthAppNotificationContentStateManager();
    v47 = *(v70 + 48);

    v48 = v47;
    HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(v48, v71, v45);
    v49 = v75;
    v50 = *(v75 + 16);
    v51 = MEMORY[0x277D84F90];
    if (v50)
    {
      v69 = v11;
      v81 = MEMORY[0x277D84F90];
      sub_22855DD4C();
      v52 = (v49 + 32);
      v78 = (v68 + 8);
      do
      {
        v53 = *v52;
        v54 = *(v52 + 6);
        v55 = v52[2];
        v84 = v52[1];
        v85 = v55;
        v86 = v54;
        v83 = v53;
        v56 = *(&v55 + 1);
        sub_22842B9BC(&v83, v80);
        v79 = sub_228496800(v56, v54);
        v57 = swift_allocObject();
        v58 = v84;
        *(v57 + 16) = v83;
        *(v57 + 32) = v58;
        *(v57 + 48) = v85;
        *(v57 + 64) = v86;
        v59 = swift_allocObject();
        *(v59 + 16) = sub_2284AE1F8;
        *(v59 + 24) = v57;
        sub_22842B9BC(&v83, v80);
        v60 = MEMORY[0x277D84F78];
        sub_2284ADF84(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
        sub_2284AE004(&qword_280DE9890, &qword_280DE9888, v60 + 8);
        sub_22855CE8C();

        sub_2283FD034(&qword_27D83FBE0, sub_2284ADED4);
        sub_22855CE6C();
        sub_22848CF64(&v83);
        (*v78)(v18, v15);
        sub_22855DD1C();
        v61 = *(v81 + 16);
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
        v52 = (v52 + 56);
        --v50;
      }

      while (v50);
      v51 = v81;
      v46 = v76;
      v11 = v69;
    }

    sub_2284A7C30(v51);
  }

  v80[0] = v82;
  sub_2284ADF84(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
  sub_2284AE17C();
  sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
  sub_2283FD034(&qword_280DE95E0, sub_2284AE17C);
  v62 = v73;
  sub_22855CC2C();
  sub_2283FD034(&qword_280DE99D8, sub_2284ADE2C);
  v63 = sub_22855CE6C();
  result = (*(v74 + 8))(v62, v11);
  *v46 = v63;
  return result;
}

uint64_t HealthAppNotificationManager.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return v0;
}

uint64_t HealthAppNotificationManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2284AC558(uint64_t a1)
{
  v2 = v1;
  sub_2284ACE50();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AEB84;
  v11[3] = v2;
  v11[4] = sub_2284AEB90;
  v11[5] = v10;
  sub_2284ACEE4();
  sub_2283FD034(&qword_27D83FB98, sub_2284ACEE4);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBA0, sub_2284ACE50);
  v12 = sub_22855CE6C();

  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_2284AC76C(uint64_t a1)
{
  v2 = v1;
  sub_2284AD0F8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AEB80;
  v11[3] = v2;
  v11[4] = sub_2284AEB8C;
  v11[5] = v10;
  sub_2284AD18C();
  sub_2283FD034(&qword_27D83FBD0, sub_2284AD18C);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBD8, sub_2284AD0F8);
  v12 = sub_22855CE6C();

  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_2284AC998(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v7 = sub_22855D39C();
  [v6 *a4];
}

uint64_t sub_2284AC9F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22855DB4C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22855DB4C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2284AD00C(0, &qword_280DE95B0, &qword_280DE9490, 0x277CCD928);
          sub_2284AEAC0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2284A51BC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2284ACB8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22855DB4C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22855DB4C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2284AE35C(0, &qword_27D83FBF0, type metadata accessor for HealthPlatformContextProvider.Context);
          sub_2284ACE0C(&qword_27D83FBF8, &qword_27D83FBF0, type metadata accessor for HealthPlatformContextProvider.Context);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2284A52C4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HealthPlatformContextProvider.Context(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2284ACD40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2284A7354(*a1);
  *a2 = result;
  return result;
}

BOOL sub_2284ACD6C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      return sub_22855D9AC() & 1;
    }

    return 0;
  }

  return !v2;
}

void sub_2284ACDEC(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_2284A8428(a1, a2, *(v2 + 16));
}

uint64_t sub_2284ACE0C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284AE35C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284ACE50()
{
  if (!qword_27D83FB70)
  {
    sub_2284ACEE4();
    sub_2283FD034(&qword_27D83FB98, sub_2284ACEE4);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FB70);
    }
  }
}

void sub_2284ACEE4()
{
  if (!qword_27D83FB78)
  {
    sub_2284ACFA0(255, &qword_27D83FB80, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    sub_2284AD00C(255, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    sub_2284AD064();
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FB78);
    }
  }
}

void sub_2284ACFA0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_2284AD00C(255, a3, a4, a5);
    v6 = sub_22855CDFC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2284AD00C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    v5 = sub_22855D47C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2284AD064()
{
  result = qword_27D83FB90;
  if (!qword_27D83FB90)
  {
    sub_2284ACFA0(255, &qword_27D83FB80, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB90);
  }

  return result;
}

void sub_2284AD0F8()
{
  if (!qword_27D83FBA8)
  {
    sub_2284AD18C();
    sub_2283FD034(&qword_27D83FBD0, sub_2284AD18C);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FBA8);
    }
  }
}

void sub_2284AD18C()
{
  if (!qword_27D83FBB0)
  {
    sub_2284ACFA0(255, &qword_27D83FBB8, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    sub_2284AD00C(255, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    sub_2284AD248();
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FBB0);
    }
  }
}

unint64_t sub_2284AD248()
{
  result = qword_27D83FBC8;
  if (!qword_27D83FBC8)
  {
    sub_2284ACFA0(255, &qword_27D83FBB8, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FBC8);
  }

  return result;
}

void sub_2284AD2DC()
{
  if (!qword_280DE9AB0)
  {
    sub_2284AD3AC();
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_2283FD034(&qword_280DE97C0, sub_2284AD3AC);
    v0 = sub_22855CBCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9AB0);
    }
  }
}

void sub_2284AD3AC()
{
  if (!qword_280DE97B8)
  {
    sub_2284AD42C();
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855CDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE97B8);
    }
  }
}

void sub_2284AD42C()
{
  if (!qword_280DE96D0)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96D0);
    }
  }
}

void sub_2284AD490()
{
  if (!qword_280DE9A30)
  {
    sub_2284AD530();
    sub_2283FD034(&qword_280DE9900, sub_2284AD530);
    v0 = sub_22855CBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9A30);
    }
  }
}

void sub_2284AD530()
{
  if (!qword_280DE98F8)
  {
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855CCCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE98F8);
    }
  }
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_2284AD908()
{
  if (!qword_280DE9A70)
  {
    sub_2284AD99C();
    sub_2283FD034(&qword_280DE99C8, sub_2284AD99C);
    v0 = sub_22855CBDC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9A70);
    }
  }
}

void sub_2284AD99C()
{
  if (!qword_280DE99C0)
  {
    sub_2284AD530();
    sub_2283FD034(&qword_280DE9900, sub_2284AD530);
    v0 = sub_22855CC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE99C0);
    }
  }
}

void sub_2284ADA30()
{
  if (!qword_280DE9B20)
  {
    sub_2284AD908();
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_2283FD034(&qword_280DE9A78, sub_2284AD908);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B20);
    }
  }
}

void sub_2284ADB00()
{
  if (!qword_280DE9848)
  {
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    v0 = sub_22855CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9848);
    }
  }
}

void sub_2284ADB7C()
{
  if (!qword_280DE9A50)
  {
    sub_2284ADF84(255, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
    sub_2284ADC7C();
    sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
    sub_2283FD034(qword_280DE9C00, sub_2284ADC7C);
    v0 = sub_22855CBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9A50);
    }
  }
}

void sub_2284ADC7C()
{
  if (!qword_280DE9BF8)
  {
    sub_2284ADB00();
    sub_2283F9B94(255, &qword_280DECFE0);
    sub_2283FD034(&qword_280DE9850, sub_2284ADB00);
    v0 = sub_22855CB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9BF8);
    }
  }
}

void sub_2284ADD48()
{
  if (!qword_280DE9A80)
  {
    sub_2284ADB7C();
    sub_2283FD034(&qword_280DE9A58, sub_2284ADB7C);
    v0 = sub_22855CBDC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9A80);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2284ADE2C()
{
  if (!qword_280DE99D0)
  {
    sub_2284ADF84(255, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
    sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
    v0 = sub_22855CC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE99D0);
    }
  }
}

void sub_2284ADED4()
{
  if (!qword_280DE9BA8)
  {
    v0 = MEMORY[0x277D84F78];
    sub_2284ADF84(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2284AE004(&qword_280DE9890, &qword_280DE9888, v0 + 8);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BA8);
    }
  }
}

void sub_2284ADF84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_2283F9B94(255, &qword_280DECFE0);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2284AE004(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2284ADF84(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284AE068()
{
  if (!qword_280DE9B80)
  {
    sub_2284ADF84(255, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
    sub_2284AE0FC();
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B80);
    }
  }
}

unint64_t sub_2284AE0FC()
{
  result = qword_280DE9788;
  if (!qword_280DE9788)
  {
    sub_2284ADF84(255, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9788);
  }

  return result;
}

void sub_2284AE17C()
{
  if (!qword_280DE95E8)
  {
    sub_2284ADF84(255, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE95E8);
    }
  }
}

uint64_t sub_2284AE1F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = *(v1 + 64);
  return sub_22842B9BC(v1 + 16, v4);
}

uint64_t sub_2284AE238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2284AE260(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_61Tm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_2284AE35C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855D47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2284AE3D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v32 = *(a2 + 40);
  v33 = *(a2 + 24);
  v36 = *(a2 + 32);
  v37 = *(a2 + 48);
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
LABEL_11:
    v11 = *(v3[6] + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v12 = [v11 profileIdentifier];
    v13 = v12;
    if (v2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v14 = sub_22855D9AC();

      if (v14)
      {

        if (v3[2])
        {
          v15 = sub_228443DA4(v11);
          v16 = a1;
          v18 = v36;
          v17 = v37;
          if (v19)
          {
            v20 = *(v3[7] + 8 * v15);
          }

          else
          {
            v20 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
          v16 = a1;
          v18 = v36;
          v17 = v37;
        }

        sub_2284AE260(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_228560580;
        *(inited + 32) = v2;
        *(inited + 40) = v34;
        *(inited + 48) = v35;
        *(inited + 56) = v33;
        *(inited + 64) = v18;
        *(inited + 72) = v32;
        *(inited + 80) = v17;
        v29 = v2;

        sub_2284A7A0C(inited);
        v30 = *v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *v16;
        sub_22845B840(v20, v11, isUniquelyReferenced_nonNull_native);

        goto LABEL_18;
      }
    }

    else
    {
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  if (!v2)
  {
    return;
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v22 = v2;
  v23 = [v21 init];
  [v23 setProfileIdentifier_];
  [v23 resume];

  sub_2284AE260(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_228560580;
  *(v24 + 32) = v2;
  *(v24 + 40) = v34;
  *(v24 + 48) = v35;
  *(v24 + 56) = v33;
  *(v24 + 64) = v36;
  *(v24 + 72) = v32;
  *(v24 + 80) = v37;
  v25 = v22;

  v16 = a1;
  v26 = *a1;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *a1;
  sub_22845B840(v24, v23, v27);

LABEL_18:
  *v16 = v39;
}

uint64_t sub_2284AE75C(uint64_t a1)
{
  result = MEMORY[0x277D84F98];
  v18 = MEMORY[0x277D84F98];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 4);
      v12 = *(v4 - 3);
      v13 = v9;
      v14 = v7;
      v15 = v8;
      v16 = v5;
      v17 = v6;
      v10 = v12;

      sub_2284AE3D0(&v18, &v12);
      v11 = v12;

      v4 += 7;
      --v3;
    }

    while (v3);
    return v18;
  }

  return result;
}

uint64_t sub_2284AE8C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2284AE954(uint64_t a1)
{
  sub_2284AE9B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284AE9B0()
{
  if (!qword_27D83FC00)
  {
    sub_2283F9B94(255, &qword_27D83F440);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D83FC00);
    }
  }
}

void sub_2284AEA2C()
{
  if (!qword_27D83FC08)
  {
    sub_2283F9B94(255, &qword_27D83F440);
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FC08);
    }
  }
}

uint64_t sub_2284AEA94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

unint64_t sub_2284AEAC0()
{
  result = qword_27D83FC10;
  if (!qword_27D83FC10)
  {
    sub_2284AD00C(255, &qword_280DE95B0, &qword_280DE9490, 0x277CCD928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC10);
  }

  return result;
}

id EncodedFeatureTag.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id EncodedFeatureTag.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EncodedFeatureTag();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id EncodedFeatureTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EncodedFeatureTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FileMonitorPublisher.init(url:event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = 0;
  v6 = type metadata accessor for FileMonitorPublisher();
  v7 = *(v6 + 24);
  v8 = sub_22855C06C();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  v9 = *(v6 + 28);
  v10 = sub_22855D89C();
  v11 = *(*(v10 - 8) + 32);

  return v11(a3 + v9, a2, v10);
}

uint64_t FileMonitorPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v18 = a1;
  v3 = sub_22855D89C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855C06C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FileMonitorPublisher.Inner();
  v14 = type metadata accessor for FileMonitorPublisher();
  (*(v9 + 16))(v12, v2 + *(v14 + 24), v8);
  (*(v4 + 16))(v7, v2 + *(v14 + 28), v3);
  v15 = sub_2284B0DE0(v18, v12, v7);
  v19[3] = v13;
  v19[4] = swift_getWitnessTable();
  v19[0] = v15;
  sub_22855CC5C();
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_2284AF030@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_22855C50C();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t sub_2284AF104(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_22855C50C();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

uint64_t (*sub_2284AF1E0())()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2284AF2B4(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_2284AF2E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v0;
  v5 = sub_22855CFBC();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CFEC();
  v60 = *(v9 - 8);
  v10 = v60[8];
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v3 & v2) + 0x50);
  v62 = *((v3 & v2) + 0x58);
  sub_22855C4EC();
  swift_getWitnessTable();
  v14 = sub_22855E2FC();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v57 - v18;
  if (!*(v1 + *((v3 & v2) + 0x90)) && *(v1 + *(v4 + 136)) == -1)
  {
    v58 = result;
    v59 = v5;
    v57 = v17;
    v20 = *(v4 + 112);
    v21 = sub_22855BFBC();
    [v21 fileSystemRepresentation];
    v22 = v21;
    v23 = sub_22855CACC();
    v24 = MEMORY[0x277D85000];
    *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88)) = v23;
    v25 = (*v24 & *v1);
    if (*(v1 + v25[17]) == -1)
    {
      v61 = v20;
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v40 = sub_22855CABC();
      __swift_project_value_buffer(v40, qword_280DEEC98);
      v41 = v1;
      v42 = sub_22855CA8C();
      v43 = sub_22855D68C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v44 = 136380675;
        sub_22855C06C();
        sub_2284B1014(&qword_27D83FC20, MEMORY[0x277CC9260]);
        v45 = sub_22855E11C();
        v47 = v46;

        v48 = sub_2283F8938(v45, v47, &aBlock);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_2283ED000, v42, v43, "Failed to open file descriptor: %{private}s", v44, 0xCu);
        v49 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x22AABAD40](v49, -1, -1);
        MEMORY[0x22AABAD40](v44, -1, -1);
      }

      else
      {
      }

      LOBYTE(aBlock) = 1;
      type metadata accessor for FileMonitorPublisher.Inner();
      swift_getWitnessTable();
      sub_22855C43C();
      return (*(v57 + 8))(v19, v58);
    }

    else
    {
      sub_2283EF310(0, &qword_280DED118, 0x277D85CA0);
      v26 = v25[15];
      v27 = *(v1 + v25[16]);
      v28 = sub_22855D8BC();
      v29 = *((*v24 & *v1) + 0x90);
      v30 = *(v1 + v29);
      *(v1 + v29) = v28;
      result = swift_unknownObjectRelease();
      v31 = *v24 & *v1;
      v32 = *(v31 + 0x90);
      v33 = v13;
      if (*(v1 + v32))
      {
        v34 = *(v1 + v32);
        swift_getObjectType();
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v36 = swift_allocObject();
        v37 = v62;
        v36[2] = v33;
        v36[3] = v37;
        v36[4] = v35;
        v67 = sub_2284B0FFC;
        v68 = v36;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v65 = sub_228401F54;
        v66 = &block_descriptor_14;
        v38 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        sub_22855CFDC();
        sub_2284B00A4();
        sub_22855D8CC();
        _Block_release(v38);
        swift_unknownObjectRelease();
        v39 = v59;
        (*(v61 + 8))(v8, v59);
        (v60[1])(v12, v9);

        v31 = *MEMORY[0x277D85000] & *v1;
      }

      else
      {
        v37 = v62;
        v39 = v59;
      }

      v50 = *(v31 + 144);
      if (*(v1 + v50))
      {
        v51 = *(v1 + v50);
        swift_getObjectType();
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        v53[2] = v33;
        v53[3] = v37;
        v53[4] = v52;
        v67 = sub_2284B1008;
        v68 = v53;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v65 = sub_228401F54;
        v66 = &block_descriptor_11_0;
        v54 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        sub_22855CFDC();
        sub_2284B00A4();
        sub_22855D8DC();
        _Block_release(v54);
        swift_unknownObjectRelease();
        (*(v61 + 8))(v8, v39);
        (v60[1])(v12, v9);

        v31 = *MEMORY[0x277D85000] & *v1;
      }

      v55 = *(v31 + 144);
      if (*(v1 + v55))
      {
        v56 = *(v1 + v55);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22855D90C();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_2284AFBB4()
{
  sub_22855C4EC();
  swift_getWitnessTable();
  v0 = sub_22855E2FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;
  v5 = sub_22855D89C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v14 = v1;
    v12 = *((*MEMORY[0x277D85000] & *Strong) + 0x90);
    if (*(Strong + v12))
    {
      v13 = *(Strong + v12);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22855D8EC();
      sub_22855D88C();
      type metadata accessor for FileMonitorPublisher.Inner();
      swift_getWitnessTable();
      sub_22855C42C();
      swift_unknownObjectRelease();

      (*(v14 + 8))(v4, v0);
      (*(v6 + 8))(v9, v5);
    }

    else
    {
    }
  }
}

void *sub_2284AFE38()
{
  sub_22855C4EC();
  swift_getWitnessTable();
  v0 = sub_22855E2FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *result;
    v15 = v0;
    v7 = MEMORY[0x277D85000];
    v8 = (result + *((*MEMORY[0x277D85000] & v6) + 0x60));
    v9 = v8[4];
    v10 = result;
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_22855C39C();
    close(*(v10 + *((*v7 & *v10) + 0x88)));
    *(v10 + *((*v7 & *v10) + 0x88)) = -1;
    v11 = *((*v7 & *v10) + 0x90);
    v12 = *(v10 + v11);
    *(v10 + v11) = 0;
    swift_unknownObjectRelease();
    v13 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_22855C3AC();
    v16 = 1;
    type metadata accessor for FileMonitorPublisher.Inner();
    swift_getWitnessTable();
    sub_22855C43C();

    return (*(v1 + 8))(v4, v15);
  }

  return result;
}

uint64_t sub_2284B00A4()
{
  sub_22855CFBC();
  sub_2284B1014(&qword_280DED2D0, MEMORY[0x277D85198]);
  v0 = MEMORY[0x277D85198];
  sub_2283F4CD8(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283F46D0(&qword_280DED260, &qword_280DED270, v0);
  return sub_22855DA9C();
}

uint64_t sub_2284B01A0()
{
  if (*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x90)))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22855D8FC();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2284B0224(void *a1)
{
  v1 = a1;
  sub_2284B028C();

  v2 = sub_22855D17C();

  return v2;
}

uint64_t sub_2284B028C()
{
  swift_getObjectType();
  MEMORY[0x22AAB92A0](60, 0xE100000000000000);
  v0 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v0);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0;
}

void sub_2284B034C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2284B105C();
}

id sub_2284B038C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FileMonitorPublisher.Inner();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2284B03FC(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  __swift_destroy_boxed_opaque_existential_0(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v5 = *((*v3 & *a1) + 0x68);
  v6 = *((v4 & v2) + 0x50);
  v7 = *((v4 & v2) + 0x58);
  v8 = sub_22855C50C();
  (*(*(v8 - 8) + 8))(&a1[v5], v8);
  v9 = *((*v3 & *a1) + 0x70);
  v10 = sub_22855C06C();
  (*(*(v10 - 8) + 8))(&a1[v9], v10);
  v11 = *((*v3 & *a1) + 0x78);
  v12 = sub_22855D89C();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((*v3 & *a1) + 0x90)];

  return swift_unknownObjectRelease();
}

void (*sub_2284B05DC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_2284AF1E0();
  return sub_2284B064C;
}

void sub_2284B064C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2284B0694(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for FileMonitorPublisher.Inner();

  return sub_22855C42C();
}

uint64_t sub_2284B06F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for FileMonitorPublisher.Inner();

  return sub_22855C43C();
}

uint64_t sub_2284B075C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22855C45C();
}

uint64_t sub_2284B07B4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22855C44C();
}

id sub_2284B0804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v37 = a2;
  v39 = a1;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = sub_22855D81C();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22855D7BC();
  v11 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855CFEC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *((v7 & v5) + 0x50);
  v34[1] = *((v7 & v5) + 0x58);
  v34[2] = v16;
  v35 = sub_22855C50C();
  v17 = *(v35 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v35);
  v20 = v34 - v19;
  v21 = &v3[*((v7 & v5) + 0x60)];
  v22 = type metadata accessor for UnfairLock();
  v23 = swift_allocObject();
  v24 = swift_slowAlloc();
  *(v23 + 16) = v24;
  *v24 = 0;
  v21[3] = v22;
  v21[4] = sub_2284B1014(&qword_280DEDC00, type metadata accessor for UnfairLock);
  *v21 = v23;
  *&v3[*((*v6 & *v3) + 0x88)] = -1;
  *&v3[*((*v6 & *v3) + 0x90)] = 0;
  v25 = *((*v6 & *v3) + 0x70);
  v36 = sub_22855C06C();
  v26 = *(v36 - 8);
  (*(v26 + 16))(&v3[v25], a2, v36);
  v27 = *((*v6 & *v3) + 0x78);
  v28 = sub_22855D89C();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v3[v27], v46, v28);
  sub_22855C4FC();
  (*(v17 + 32))(&v3[*((*v6 & *v3) + 0x68)], v20, v35);
  v39 = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  ObjectType = sub_22855E34C();
  sub_22855CFDC();
  v48 = MEMORY[0x277D84F90];
  sub_2284B1014(&unk_280DED140, MEMORY[0x277D85230]);
  v30 = MEMORY[0x277D85230];
  sub_2283F4CD8(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283F46D0(&qword_280DED240, &qword_280DED250, v30);
  sub_22855DA9C();
  (*(v44 + 104))(v43, *MEMORY[0x277D85260], v45);
  *&v3[*((*MEMORY[0x277D85000] & *v3) + 0x80)] = sub_22855D84C();
  v31 = type metadata accessor for FileMonitorPublisher.Inner();
  v47.receiver = v3;
  v47.super_class = v31;
  v32 = objc_msgSendSuper2(&v47, sel_init);
  (*(v29 + 8))(v46, v28);
  (*(v26 + 8))(v37, v36);
  return v32;
}

id sub_2284B0DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v9 = objc_allocWithZone(type metadata accessor for FileMonitorPublisher.Inner());
  return sub_2284B0804(a1, a2, a3);
}

uint64_t sub_2284B0E68(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = sub_22855C50C();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = sub_22855C06C();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_22855D89C();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_2284B0FFC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2284AFBB4();
}

void *sub_2284B1008()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2284AFE38();
}

uint64_t sub_2284B1014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static EnvironmentalStateDescription.pinned(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84560];
  sub_2284B2F68(0, &qword_280DE8F20, sub_2284B123C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0xD000000000000027;
  *(inited + 40) = 0x8000000228570F90;
  sub_2284B2F68(0, &qword_280DE8F18, sub_2284B1300, v4);
  v6 = swift_initStackObject();
  *(v6 + 32) = a1;
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0x64656E6E6970;
  *(v6 + 56) = 0xE600000000000000;

  v7 = sub_22847D1E4(v6);
  swift_setDeallocating();
  sub_2284B2AE8(v6 + 32, sub_2284B1300);
  *(inited + 48) = v7;
  sub_22847D310(inited);
  swift_setDeallocating();
  sub_2284B2AE8(inited + 32, sub_2284B123C);
  sub_22847D328(MEMORY[0x277D84F90]);
  return sub_22855C99C();
}

void sub_2284B123C()
{
  if (!qword_280DE9670)
  {
    sub_2284B12A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9670);
    }
  }
}

void sub_2284B12A4()
{
  if (!qword_280DE96E0)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96E0);
    }
  }
}

void sub_2284B1300()
{
  if (!qword_280DE9668)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9668);
    }
  }
}

uint64_t SummaryPinnedContentStateComponent.StateValues.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22855DFBC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2284B13C8()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284B142C()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284B1478@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22855DFBC();

  *a2 = v5 != 0;
  return result;
}

uint64_t SummaryPinnedContentStateComponent.currentState.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t SummaryPinnedContentStateComponent.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22855CFAC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 1;
  (*(v9 + 104))(v8, *MEMORY[0x277D85188]);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  sub_2284B1700(a1, a2, sub_2284B1668, 0, sub_2284B16F8, 0, v8);
  return v12;
}

void sub_2284B1668(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v3 = sub_22855BCCC();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = sub_22855BCBC();
  v7 = MEMORY[0x277D0FCF0];
  a1[3] = v3;
  a1[4] = v7;

  *a1 = v6;
}

char *sub_2284B1700(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a5;
  v37 = a7;
  v39 = a4;
  v40 = a6;
  v34 = a2;
  v35 = a3;
  v38 = a1;
  v32[0] = *v7;
  v33 = sub_22855D81C();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855D7BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22855CFEC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  *(v7 + 10) = 0;
  v17 = sub_2283FA06C();
  v32[1] = "ate";
  v32[2] = v17;
  sub_22855CFDC();
  v41[0] = MEMORY[0x277D84F90];
  sub_2283FA148(&unk_280DED140, MEMORY[0x277D85230]);
  v18 = MEMORY[0x277D85230];
  sub_2284B2F68(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283FA220(&qword_280DED240, &qword_280DED250, v18);
  sub_22855DA9C();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v33);
  *(v7 + 11) = sub_22855D84C();
  v19 = v34;
  *(v7 + 8) = v38;
  *(v7 + 9) = v19;
  swift_unknownObjectRetain();
  v35(v41, 0);
  v36 = v36(0);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v20 = sub_22855BD2C();
  v21 = sub_2284B2D60();

  v22 = v37;
  sub_2284B2CF8();
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v21;
  *(v8 + 2) = v23;
  sub_2283F9B10(v41, (v8 + 24));
  v24 = OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval;
  v25 = sub_22855CFAC();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v8[v24], v22, v25);
  sub_22855C4AC();
  v27 = *(v8 + 11);
  swift_allocObject();
  swift_weakInit();
  sub_22855D1DC();
  v28 = v27;

  v29 = sub_22855C47C();

  v30 = *(v8 + 10);
  *(v8 + 10) = v29;

  (*(v26 + 8))(v22, v25);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v41);
  return v8;
}

uint64_t sub_2284B1D84()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2284B1DDC();
  }

  return result;
}

uint64_t sub_2284B1DDC()
{
  v1 = *v0;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DE9DF8);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Pinned content did update notification received, refetching", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  return sub_2284B2548();
}

void sub_2284B1F68(uint64_t a1, char a2)
{
  v3 = v2;
  v36 = *v3;
  v37 = sub_22855CFBC();
  v40 = *(v37 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CFEC();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D00C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = sub_22855BF2C();
  v21 = [v20 hk_isDatabaseAccessibilityError];

  if (v21)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v22 = sub_22855CABC();
    __swift_project_value_buffer(v22, qword_280DE9DF8);
    v23 = sub_22855CA8C();
    v24 = sub_22855D68C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_22855E34C();
      v29 = sub_2283F8938(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2283ED000, v23, v24, "[%{public}s] Failed to get state due to database inaccessible, scheduling retry when unlocked", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AABAD40](v26, -1, -1);
      MEMORY[0x22AABAD40](v25, -1, -1);
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v30 = swift_allocObject();
    swift_weakInit();

    sub_228506C84(sub_2284B2FCC, v30);
  }

  else if (a2)
  {
    v35[1] = *(v3 + 88);
    sub_22855CFFC();
    MEMORY[0x22AAB90D0](v17, v3 + OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval);
    v36 = *(v13 + 8);
    v36(v17, v12);
    v31 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2284B2F48;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_15;
    v35[0] = _Block_copy(aBlock);

    sub_22855CFDC();
    v41 = MEMORY[0x277D84F90];
    sub_2283FA148(&qword_280DED2D0, MEMORY[0x277D85198]);
    v32 = MEMORY[0x277D85198];
    sub_2284B2F68(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA220(&qword_280DED260, &qword_280DED270, v32);
    v33 = v37;
    sub_22855DA9C();
    v34 = v35[0];
    MEMORY[0x22AAB9840](v19, v11, v7, v35[0]);
    _Block_release(v34);
    (*(v40 + 8))(v7, v33);
    (*(v38 + 8))(v11, v39);
    v36(v19, v12);
  }
}

uint64_t sub_2284B2548()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v4 = sub_22855BD2C();
  v5 = sub_2284B2D60();
  v6 = v0[2];
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock((v6 + 24));
  sub_2284B2FEC((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
  v7 = v0[8];
  v8 = v1[9];
  swift_getObjectType();
  sub_2283FA148(&qword_280DEA6B8, type metadata accessor for SummaryPinnedContentStateComponent);
  sub_22855C9DC();
}

uint64_t sub_2284B2840()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2284B2548();
  }

  return result;
}

Swift::Void __swiftcall SummaryPinnedContentStateComponent.stopObserving()()
{
  if (*(v0 + 80))
  {

    sub_22855C49C();
  }
}

uint64_t SummaryPinnedContentStateComponent.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v2 = *(v0 + 64);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);

  v4 = OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval;
  v5 = sub_22855CFAC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t SummaryPinnedContentStateComponent.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v2 = *(v0 + 64);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);

  v4 = OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval;
  v5 = sub_22855CFAC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2284B2A58()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_2284B2A98()
{
  if (*(v0 + 80))
  {

    sub_22855C49C();
  }

  return result;
}

uint64_t sub_2284B2AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2284B2B4C()
{
  result = qword_27D83FC28;
  if (!qword_27D83FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC28);
  }

  return result;
}

uint64_t type metadata accessor for SummaryPinnedContentStateComponent()
{
  result = qword_280DEA6A8;
  if (!qword_280DEA6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2284B2BF4()
{
  result = sub_22855CFAC();
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

void sub_2284B2CF8()
{
  if (!qword_280DE9100)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9100);
    }
  }
}

uint64_t sub_2284B2D60()
{
  v0 = sub_22855BC9C();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_17:

    return v5;
  }

  v3 = 0;
  v4 = (v0 + 40);
  v5 = MEMORY[0x277D84F98];
  while (v3 < *(v1 + 16))
  {
    v10 = *(v4 - 1);
    v9 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_2283F6D18(v10, v9);
    v14 = v5[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v5[3] < v17)
    {
      sub_2284467EC(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_2283F6D18(v10, v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v12;
    sub_22844936C();
    v12 = v24;
    if (v18)
    {
LABEL_3:
      v6 = v12;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = 0x64656E6E6970;
      v7[1] = 0xE600000000000000;

      goto LABEL_4;
    }

LABEL_12:
    v5[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v5[6] + 16 * v12);
    *v20 = v10;
    v20[1] = v9;
    v21 = (v5[7] + 16 * v12);
    *v21 = 0x64656E6E6970;
    v21[1] = 0xE600000000000000;
    v22 = v5[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v5[2] = v23;
LABEL_4:
    ++v3;
    v4 += 2;
    if (v2 == v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

void sub_2284B2F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284B2FEC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t UserProfile.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22855C1DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UserProfile.uniqueIdentifier.setter(uint64_t a1)
{
  v3 = sub_22855C1DC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id UserProfile.profileIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserProfile() + 20));

  return v1;
}

uint64_t type metadata accessor for UserProfile()
{
  result = qword_280DEDB60;
  if (!qword_280DEDB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void UserProfile.profileIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserProfile() + 20);

  *(v1 + v3) = a1;
}

uint64_t UserProfile.init(profileIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  sub_22855C1BC();

  result = type metadata accessor for UserProfile();
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t UserProfile.hash(into:)()
{
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0]);

  return sub_22855D14C();
}

uint64_t static UserProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = *(type metadata accessor for UserProfile() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  return sub_22855D9AC() & 1;
}

uint64_t UserProfile.hashValue.getter()
{
  sub_22855E22C();
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284B3414()
{
  sub_22855E22C();
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284B349C()
{
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0]);

  return sub_22855D14C();
}

uint64_t sub_2284B3520()
{
  sub_22855E22C();
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284B35EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2284B3634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_22855D9AC() & 1;
}

uint64_t sub_2284B36D0()
{
  result = sub_22855C1DC();
  if (v1 <= 0x3F)
  {
    result = sub_2283EF310(319, &qword_280DEE7B0, 0x277CCD7C8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static SourceProfile.availableSourceProfiles(from:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD7D0]) initWithHealthStore_];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  sub_2284B392C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  return sub_22855CE0C();
}

void sub_2284B3800(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = sub_228476D24;
  v9[4] = v8;
  v12[4] = sub_2284B3DA4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22852BFE0;
  v12[3] = &block_descriptor_16;
  v10 = _Block_copy(v12);

  v11 = a4;

  [a3 fetchAllProfilesWithCompletion_];
  _Block_release(v10);
}

void sub_2284B392C()
{
  if (!qword_27D83FC30)
  {
    sub_2284B3DB0(255, &qword_27D83FC38, MEMORY[0x277D83940]);
    v0 = sub_22855CDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FC30);
    }
  }
}

uint64_t sub_2284B39B0(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void))
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v6 = sub_22855DB4C();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_16;
    }

    v35 = MEMORY[0x277D84F90];
    sub_2284276D0(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v35;
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v6; ++i)
        {
          v9 = MEMORY[0x22AAB9D20](i, a1);
          v35 = v7;
          v11 = v7[2];
          v10 = v7[3];
          if (v11 >= v10 >> 1)
          {
            v12 = v9;
            sub_2284276D0((v10 > 1), v11 + 1, 1);
            v9 = v12;
            v7 = v35;
          }

          v7[2] = v11 + 1;
          v7[v11 + 4] = v9;
        }
      }

      else
      {
        v29 = (a1 + 32);
        do
        {
          v30 = *v29;
          v35 = v7;
          v32 = v7[2];
          v31 = v7[3];
          v33 = v30;
          if (v32 >= v31 >> 1)
          {
            v34 = v33;
            sub_2284276D0((v31 > 1), v32 + 1, 1);
            v33 = v34;
            v7 = v35;
          }

          v7[2] = v32 + 1;
          v7[v32 + 4] = v33;
          ++v29;
          --v6;
        }

        while (v6);
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_28;
  }

  v7 = a2;
  v6 = a3;
  if (qword_280DEEBE8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v13 = sub_22855CABC();
  __swift_project_value_buffer(v13, qword_280DEEBF0);
  v14 = v7;
  v15 = sub_22855CA8C();
  v16 = sub_22855D68C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136446466;
    sub_2284B3E04();
    v19 = sub_22855D1BC();
    v21 = sub_2283F8938(v19, v20, &v35);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = v7;
    sub_2284B3E4C();
    v23 = sub_22855D1BC();
    v25 = sub_2283F8938(v23, v24, &v35);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v15, v16, "[%{public}s]: Unable to fetch additional profiles. Proceeding with just primary profile: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  sub_2284B3DB0(0, &qword_27D83F430, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_228560580;
  v7[4] = [v6 profileIdentifier];
LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2284269A8(0, v7[2] + 1, 1, v7);
  }

  v27 = v7[2];
  v26 = v7[3];
  if (v27 >= v26 >> 1)
  {
    v7 = sub_2284269A8((v26 > 1), v27 + 1, 1, v7);
  }

  v7[2] = v27 + 1;
  v7[v27 + 4] = 0;
  a4(v7, 0);
}

void sub_2284B3DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SourceProfile);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2284B3E04()
{
  result = qword_27D83FC40;
  if (!qword_27D83FC40)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83FC40);
  }

  return result;
}

void sub_2284B3E4C()
{
  if (!qword_280DE8EC0)
  {
    sub_228418D44();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE8EC0);
    }
  }
}

uint64_t sub_2284B3EE0(uint64_t a1, size_t *a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_2284B6328(v17, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PluginSharableModelDataError.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

void *HKSharedSummary.init(model:pluginIdentifier:)(void *a1, void *a2, uint64_t a3)
{
  v68 = a2;
  sub_2284B7414(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = v67 - v7;
  sub_2284B7414(0, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = v67 - v10;
  v76 = sub_22855C4CC();
  v11 = *(v76 - 1);
  v12 = v11[8];
  MEMORY[0x28223BE20](v76);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v67[1] = a1[1];
  v67[2] = v15;
  v16 = a1[4];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  v71 = a1;
  if (v17)
  {
    v67[0] = a3;
    v77 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v17, 0);
    v18 = v77;
    v20 = v11[2];
    v19 = (v11 + 2);
    v21 = v16 + ((v19[64] + 32) & ~v19[64]);
    v73 = *(v19 + 7);
    v74 = v20;
    v72 = v19 - 8;
    v75 = v19;
    do
    {
      v22 = v76;
      v74(v14, v21, v76);
      v23 = sub_22855C4BC();
      v24 = [v23 authorizationIdentifier];

      v25 = sub_22855D1AC();
      v27 = v26;

      (*v72)(v14, v22);
      v77 = v18;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2284272C0((v28 > 1), v29 + 1, 1);
        v18 = v77;
      }

      *(v18 + 16) = v29 + 1;
      v30 = v18 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v21 += v73;
      --v17;
      v11 = v75;
    }

    while (v17);
    a1 = v71;
  }

  v31 = sub_228406280(v18);

  v32 = a1[5];

  v34 = sub_228428BF8(v33);

  v35 = [objc_allocWithZone(MEMORY[0x277CCD170]) init];
  v36 = v70;
  if (!v35)
  {

    sub_2284B7098();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
LABEL_18:
    sub_22848D7D8(a1);
    return v11;
  }

  v37 = v35;
  v75 = v34;
  v38 = a1[6];
  v39 = a1[7];
  v40 = sub_22855C08C();
  [v37 setUserData_];

  v41 = type metadata accessor for PluginSharableModel();
  v42 = v69;
  sub_2284B7148(a1 + *(v41 + 40), v69, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v43 = sub_22855C30C();
  v11 = *(v43 - 8);
  v44 = (v11[6])(v42, 1, v43);
  v76 = v31;
  if (v44 == 1)
  {
    sub_2284B70EC(v42, &qword_280DEE788, MEMORY[0x277CC9A70]);
    v45 = 0;
  }

  else
  {
    sub_22855C2FC();
    v47 = v11[1];
    ++v11;
    v47(v42, v43);
    v45 = sub_22855D17C();
  }

  [v37 setSourceTimeZoneIdentifier_];

  sub_2284B7148(a1 + *(v41 + 44), v36, &qword_280DECD58, MEMORY[0x277CC9788]);
  v48 = sub_22855C29C();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v36, 1, v48) == 1)
  {
    sub_2284B70EC(v36, &qword_280DECD58, MEMORY[0x277CC9788]);
    v50 = 0;
  }

  else
  {
    sub_22855C1FC();
    (*(v49 + 8))(v36, v48);
    v50 = sub_22855D17C();
  }

  [v37 setSourceLocaleIdentifier_];

  v51 = [v37 data];
  if (!v51)
  {

    sub_2284B7098();
    swift_allocError();
    *v65 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v52 = v51;
  v53 = sub_22855C09C();
  v55 = v54;

  v74 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v73 = sub_22855D17C();

  v72 = sub_22855D17C();
  v77 = a1[2];
  sub_22855E11C();
  v70 = sub_22855D17C();

  v77 = a1[3];
  sub_22855E11C();
  v69 = sub_22855D17C();

  v56 = sub_22855D50C();

  sub_2284B71B4();
  sub_22845D238();
  v57 = sub_22855D50C();
  v68 = v57;

  v58 = v53;
  v59 = v55;
  v76 = sub_22855C08C();
  v60 = v73;
  v61 = v72;
  v62 = v37;
  v63 = v69;
  v64 = v70;
  v11 = [v74 initWithPackage:v73 name:v72 version:v70 compatibilityVersion:v69 authorizationIdentifiers:v56 objectTypes:v57 summaryData:v76];

  sub_22842B38C(v58, v59);
  sub_22848D7D8(v71);
  return v11;
}

uint64_t HKSharedSummary.modelVersion.getter()
{
  swift_getObjectType();
  v1 = [v0 version];
  v2 = sub_22855D1AC();
  v4 = v3;

  v5 = [v0 compatibilityVersion];
  v6 = sub_22855D1AC();
  v8 = v7;

  sub_2284B4990(v2, v4, v6, v8);
}

Swift::Int sub_2284B4990(Swift::Int result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = HIBYTE(a2) & 0xF;
  v51 = result;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v12 = sub_2284B6698(v51, a2, 10);
    v50 = v49;

    if (v50)
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v53[0] = result;
    v53[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v12 = 0;
          v22 = v53 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_82:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = v53;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = v53 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_80;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_22855DD0C();
  }

  v11 = *result;
  if (v11 == 43)
  {
    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_81;
  }

  if (v11 == 45)
  {
    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_61;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_61;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v8) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v9)
  {
    v12 = 0;
    if (result)
    {
      while (1)
      {
        v25 = *result - 48;
        if (v25 > 9)
        {
          goto LABEL_61;
        }

        v26 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          goto LABEL_61;
        }

        v12 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v9)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v12 = 0;
  LOBYTE(v8) = 1;
LABEL_62:
  LOBYTE(v54) = v8;
  if (v8)
  {
LABEL_63:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v30 = sub_22855CABC();
    __swift_project_value_buffer(v30, qword_280DEEC98);

    v31 = sub_22855CA8C();
    v32 = sub_22855D68C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v34;
      *v33 = 136315394;
      v53[0] = v5;
      swift_getMetatypeMetadata();
      v35 = sub_22855D1BC();
      v37 = sub_2283F8938(v35, v36, &v54);
      v12 = -1;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2283F8938(v51, a2, &v54);
      _os_log_impl(&dword_2283ED000, v31, v32, "[%s]: Unable to determine current version number from: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v34, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    else
    {

      v12 = -1;
    }
  }

LABEL_68:

  v38 = sub_2284B4FE8(a3, a4);
  if (v39)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v40 = sub_22855CABC();
    __swift_project_value_buffer(v40, qword_280DEEC98);

    v41 = sub_22855CA8C();
    v42 = sub_22855D68C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = -1;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v45;
      *v44 = 136315394;
      v53[0] = v5;
      swift_getMetatypeMetadata();
      v46 = sub_22855D1BC();
      v48 = sub_2283F8938(v46, v47, &v54);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2283F8938(v51, a2, &v54);
      _os_log_impl(&dword_2283ED000, v41, v42, "[%s]: Unable to determine minimum supported version number from: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v45, -1, -1);
      MEMORY[0x22AABAD40](v44, -1, -1);
    }

    else
    {

      v43 = -1;
    }
  }

  else
  {
    v43 = v38;
  }

  return SharableModelVersion.init(latestSupported:minimumSupported:)(v12, v43).latestSupported;
}

uint64_t sub_2284B4FE8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22855DD0C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2284B6698(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t PluginSharableModel.init(sharedSummary:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22855C29C();
  v6 = *(v5 - 8);
  v148 = v5;
  v149 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v139 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for PluginSharableModel();
  v9 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v153 = (&v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2284B7414(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v140 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v142 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v143 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v138 = &v129 - v20;
  MEMORY[0x28223BE20](v19);
  v150 = &v129 - v21;
  sub_2284B7414(0, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v152 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v151 = &v129 - v26;
  v27 = [a1 name];
  v141 = sub_22855D1AC();
  v29 = v28;

  v157 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  v30 = [a1 authorizationIdentifiers];
  v31 = sub_22855D51C();

  sub_2284B3EE0(v31, &v157, &v156);
  v144 = v2;

  v32 = v156;
  if (*(v156 + 16))
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v33 = sub_22855CABC();
    __swift_project_value_buffer(v33, qword_280DEEC98);
    v34 = sub_22855CA8C();
    v35 = sub_22855D68C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v147 = a1;
      v37 = v29;
      v38 = a2;
      v39 = v36;
      v40 = swift_slowAlloc();
      v155[0] = v40;
      *v39 = 136315651;
      *(v39 + 4) = sub_2283F8938(0xD000000000000013, 0x8000000228571090, v155);
      *(v39 + 12) = 2048;
      *(v39 + 14) = *(v32 + 16);
      *(v39 + 22) = 2081;

      v42 = MEMORY[0x22AAB9430](v41, MEMORY[0x277D837D0]);
      v44 = v43;

      v45 = sub_2283F8938(v42, v44, v155);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_2283ED000, v34, v35, "%s Could not decode %ld authorization categories %{private}s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v40, -1, -1);
      a2 = v38;
      v29 = v37;
      a1 = v147;
      MEMORY[0x22AABAD40](v39, -1, -1);
    }
  }

  v145 = a2;
  v46 = [a1 objectTypes];
  sub_2284B71B4();
  sub_22845D238();
  v47 = sub_22855D51C();

  v48 = sub_2284439C8(v47);

  v49 = [a1 summaryData];
  v50 = sub_22855C09C();
  v52 = v51;

  v53 = objc_allocWithZone(MEMORY[0x277CCD170]);
  v54 = sub_22855C08C();
  sub_22842B38C(v50, v52);
  v55 = [v53 initWithData_];

  if (!v55)
  {

    sub_2284B7098();
    swift_allocError();
    *v65 = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v147 = v48;
  if (([v55 hasUserData] & 1) == 0 || (v56 = objc_msgSend(v55, sel_userData)) == 0)
  {

    sub_2284B7098();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();

LABEL_15:
  }

  v135 = v32;
  v57 = v56;
  v132 = sub_22855C09C();
  v131 = v58;

  if ([v55 hasSourceTimeZoneIdentifier] && (v59 = objc_msgSend(v55, sel_sourceTimeZoneIdentifier)) != 0)
  {
    v60 = v59;
    sub_22855D1AC();

    v61 = v151;
    sub_22855C2EC();
    v62 = v61;

    v63 = v152;
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v67 = sub_22855CABC();
    __swift_project_value_buffer(v67, qword_280DEEC98);
    v68 = sub_22855CA8C();
    v69 = sub_22855D68C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v155[0] = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_2283F8938(0xD000000000000013, 0x8000000228571090, v155);
      _os_log_impl(&dword_2283ED000, v68, v69, "[%s] Could not access sourceTimeZoneIdentifier", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AABAD40](v71, -1, -1);
      MEMORY[0x22AABAD40](v70, -1, -1);
    }

    v63 = v152;
    v72 = sub_22855C30C();
    v62 = v151;
    (*(*(v72 - 8) + 56))(v151, 1, 1, v72);
  }

  v73 = [v55 hasSourceLocaleIdentifier];
  v134 = v29;
  v133 = v55;
  if (!v73 || (v74 = [v55 sourceLocaleIdentifier]) == 0)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v97 = sub_22855CABC();
    __swift_project_value_buffer(v97, qword_280DEEC98);
    v98 = sub_22855CA8C();
    v99 = sub_22855D68C();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v155[0] = v101;
      *v100 = 136315138;
      *(v100 + 4) = sub_2283F8938(0xD000000000000013, 0x8000000228571090, v155);
      _os_log_impl(&dword_2283ED000, v98, v99, "[%s] No sourceLocaleIdentifier was provided", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x22AABAD40](v101, -1, -1);
      v102 = v100;
      v62 = v151;
      MEMORY[0x22AABAD40](v102, -1, -1);
    }

    v63 = v152;
    v103 = *(v149 + 56);
    v136 = (v149 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v95 = v150;
    v96 = v148;
    v137 = v103;
    v103(v150, 1, 1, v148);
    goto LABEL_36;
  }

  v75 = v74;
  v76 = sub_22855D1AC();
  v78 = v77;

  v79 = v150;
  v130 = v76;
  sub_22855C1EC();
  v80 = v149;
  v81 = *(v149 + 56);
  v136 = (v149 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v82 = v148;
  v137 = v81;
  v81(v79, 0, 1, v148);
  v83 = v138;
  sub_2284B7148(v79, v138, &qword_280DECD58, MEMORY[0x277CC9788]);
  if ((*(v80 + 48))(v83, 1, v82) != 1)
  {

    sub_2284B70EC(v83, &qword_280DECD58, MEMORY[0x277CC9788]);
    v95 = v79;
LABEL_35:
    v96 = v148;
    v62 = v151;
    goto LABEL_36;
  }

  sub_2284B70EC(v83, &qword_280DECD58, MEMORY[0x277CC9788]);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v84 = sub_22855CABC();
  __swift_project_value_buffer(v84, qword_280DEEC98);
  v85 = v78;

  v86 = sub_22855CA8C();
  v87 = sub_22855D68C();

  if (!os_log_type_enabled(v86, v87))
  {

    v95 = v150;
    goto LABEL_35;
  }

  v88 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  *v88 = 136315394;
  v154 = v146;
  v155[0] = v89;
  sub_2284B7364();
  v90 = sub_22855D1BC();
  v92 = sub_2283F8938(v90, v91, v155);

  *(v88 + 4) = v92;
  *(v88 + 12) = 2080;
  v93 = sub_2283F8938(v130, v85, v155);

  *(v88 + 14) = v93;
  v62 = v151;
  _os_log_impl(&dword_2283ED000, v86, v87, "[%s]: Unable to map locale identifier to locale: %s", v88, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AABAD40](v89, -1, -1);
  v94 = v88;
  v63 = v152;
  MEMORY[0x22AABAD40](v94, -1, -1);

  v95 = v150;
  v96 = v148;
LABEL_36:
  HKSharedSummary.modelVersion.getter();
  v148 = v155[0];
  v138 = v155[1];
  v104 = v157;
  sub_2284B7148(v62, v63, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v105 = MEMORY[0x277CC9788];
  v106 = v143;
  sub_2284B7148(v95, v143, &qword_280DECD58, MEMORY[0x277CC9788]);
  v107 = v63;
  v108 = v146;
  v109 = *(v146 + 40);
  v110 = sub_22855C30C();
  v111 = v153;
  (*(*(v110 - 8) + 56))(v153 + v109, 1, 1, v110);
  v146 = *(v108 + 44);
  v137(v111 + v146, 1, 1, v96);
  v112 = v134;
  *v111 = v141;
  v111[1] = v112;
  v113 = v138;
  v111[2] = v148;
  v111[3] = v113;
  v114 = v147;
  v111[4] = v104;
  v111[5] = v114;
  v115 = v131;
  v111[6] = v132;
  v111[7] = v115;
  v148 = v104;

  v116 = a1;
  sub_2284B7200(v107, v111 + v109);
  v117 = v142;
  sub_2284B7148(v106, v142, &qword_280DECD58, v105);
  v118 = v149;
  v119 = v96;
  if ((*(v149 + 48))(v117, 1, v96) == 1)
  {

    v120 = MEMORY[0x277CC9788];
    sub_2284B70EC(v106, &qword_280DECD58, MEMORY[0x277CC9788]);
    v121 = MEMORY[0x277CC9A70];
    sub_2284B70EC(v152, &qword_280DEE788, MEMORY[0x277CC9A70]);
    sub_2284B70EC(v150, &qword_280DECD58, v120);
    sub_2284B70EC(v151, &qword_280DEE788, v121);
    sub_2284B70EC(v117, &qword_280DECD58, v120);
    v122 = v153;
    v123 = v146;
    sub_2284B70EC(v153 + v146, &qword_280DECD58, v120);
    v137(&v122[v123], 1, 1, v119);
  }

  else
  {
    v124 = v139;
    (*(v118 + 32))(v139, v117, v96);
    sub_22855C1FC();
    v125 = v140;
    sub_22855C1EC();

    (*(v118 + 8))(v124, v96);
    v126 = MEMORY[0x277CC9788];
    sub_2284B70EC(v106, &qword_280DECD58, MEMORY[0x277CC9788]);
    v127 = MEMORY[0x277CC9A70];
    sub_2284B70EC(v152, &qword_280DEE788, MEMORY[0x277CC9A70]);
    sub_2284B70EC(v150, &qword_280DECD58, v126);
    sub_2284B70EC(v151, &qword_280DEE788, v127);
    v137(v125, 0, 1, v119);
    sub_2284B72E4(v125, v153 + v146);
  }

  v128 = v153;
  v153[8] = a1;
  sub_2284B7280(v128, v145);
}

uint64_t sub_2284B6328(uint64_t *a1, size_t *a2, uint64_t *a3)
{
  v33 = a3;
  v34 = a2;
  sub_2284B7414(0, &qword_280DE9F68, MEMORY[0x277D11300]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_22855C4CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = objc_allocWithZone(MEMORY[0x277CCD960]);
  v19 = sub_22855D17C();
  [v18 initWithAuthorizationIdentifier_];

  sub_22855C4DC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2284B70EC(v7, &qword_280DE9F68, MEMORY[0x277D11300]);
    v20 = v33;
    v21 = *v33;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v21;
    if ((result & 1) == 0)
    {
      result = sub_2283F7678(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
      *v20 = result;
    }

    v24 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_2283F7678((v23 > 1), v24 + 1, 1, v21);
      v21 = result;
      *v20 = result;
    }

    *(v21 + 16) = v24 + 1;
    v25 = v21 + 16 * v24;
    *(v25 + 32) = v16;
    *(v25 + 40) = v17;
  }

  else
  {
    v33 = *(v9 + 32);
    (v33)(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    v26 = v34;
    v27 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v26;
    }

    else
    {
      v27 = sub_228426ACC(0, v27[2] + 1, 1, v27);
      v29 = v26;
      *v26 = v27;
    }

    v31 = v27[2];
    v30 = v27[3];
    if (v31 >= v30 >> 1)
    {
      *v29 = sub_228426ACC(v30 > 1, v31 + 1, 1, v27);
    }

    (*(v9 + 8))(v15, v8);
    v32 = *v29;
    *(v32 + 16) = v31 + 1;
    return (v33)(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v13, v8);
  }

  return result;
}

unsigned __int8 *sub_2284B6698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22855D2AC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2284B6C24();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22855DD0C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2284B6C24()
{
  v0 = sub_22855D2BC();
  v4 = sub_2284B6CA4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2284B6CA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22855D1FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22855DA3C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2283FC634(v9, 0);
  v12 = sub_2284B6DFC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22855D1FC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22855DD0C();
LABEL_4:

  return sub_22855D1FC();
}

unint64_t sub_2284B6DFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2284B701C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22855D26C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22855DD0C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2284B701C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22855D24C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2284B701C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22855D27C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAB92D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2284B7098()
{
  result = qword_27D83FC48;
  if (!qword_27D83FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC48);
  }

  return result;
}

uint64_t sub_2284B70EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2284B7414(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2284B7148(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2284B7414(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2284B71B4()
{
  result = qword_280DEE7B8;
  if (!qword_280DEE7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEE7B8);
  }

  return result;
}

uint64_t sub_2284B7200(uint64_t a1, uint64_t a2)
{
  sub_2284B7414(0, &qword_280DEE788, MEMORY[0x277CC9A70]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284B7280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginSharableModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284B72E4(uint64_t a1, uint64_t a2)
{
  sub_2284B7414(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2284B7364()
{
  result = qword_27D83FC50;
  if (!qword_27D83FC50)
  {
    type metadata accessor for PluginSharableModel();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83FC50);
  }

  return result;
}

unint64_t sub_2284B73B0()
{
  result = qword_27D83FC58;
  if (!qword_27D83FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC58);
  }

  return result;
}

void sub_2284B7414(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2284B749C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MockNotificationContentStateManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t MockNotificationContentStateManager.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_2284B7560()
{
  sub_2284B7804(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284B7838(0, &qword_27D83FC60, sub_2284B7804, MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  sub_2284B789C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NotificationContentState(0);
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_22855CDCC();
  sub_2283F9B94(0, &qword_280DECFE0);
  sub_22855CD9C();
  (*(v6 + 8))(v9, v5);
  sub_2284B7F68(&qword_27D83FC70, 255, sub_2284B789C);
  v17 = sub_22855CE6C();
  (*(v12 + 8))(v15, v11);
  return v17;
}

void sub_2284B7838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2284B789C()
{
  if (!qword_27D83FC68)
  {
    sub_2284B7804(255);
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FC68);
    }
  }
}

uint64_t sub_2284B791C()
{
  sub_2284B883C(0, &qword_280DE9820);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v14 - v4;
  sub_2284B8888(0, &qword_280DE8EB0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  sub_22855CDCC();
  sub_2283F9B94(0, &qword_280DECFE0);
  sub_22855CD9C();
  (*(v2 + 8))(v5, v1);
  sub_2284B89FC(&qword_280DE8EB8, &qword_280DE8EB0);
  v12 = sub_22855CE6C();
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t sub_2284B7B10()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2284B7B50(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t (*sub_2284B7B94())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2284B7BE8(uint64_t a1, uint64_t *a2)
{
  sub_2283F9B10(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 24));
  sub_2283FAB3C(v5, v3 + 24);
  return swift_endAccess();
}

uint64_t sub_2284B7C94(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  sub_2283FAB3C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t MockPluginNotificationManager.__allocating_init(contentStateManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MockPluginNotificationManager.init(contentStateManager:)(a1);
  return v2;
}

uint64_t MockPluginNotificationManager.init(contentStateManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for MockUNUserNotificationCenter());
  *(v1 + 16) = MockUNUserNotificationCenter.init()();
  sub_2284B7E78(a1, &v9);
  if (v10)
  {
    sub_2284B7FB0(a1);
    sub_2283FAB3C(&v9, &v11);
  }

  else
  {
    v5 = type metadata accessor for MockNotificationContentStateManager();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v12 = v5;
    v13 = sub_2284B7F68(&qword_27D83FC88, v7, type metadata accessor for MockNotificationContentStateManager);
    *&v11 = v6;
    sub_2284B7FB0(a1);
    if (v10)
    {
      sub_2284B7FB0(&v9);
    }
  }

  sub_2283FAB3C(&v11, v2 + 24);
  return v2;
}

uint64_t sub_2284B7E78(uint64_t a1, uint64_t a2)
{
  sub_2284B7EDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284B7EDC()
{
  if (!qword_27D83FC78)
  {
    sub_2283F9B94(255, &qword_27D83FC80);
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FC78);
    }
  }
}

uint64_t sub_2284B7F68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284B7FB0(uint64_t a1)
{
  sub_2284B7EDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284B800C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = UNUserNotificationCenter.scheduleNotification(_:)(a1);

  return v4;
}

uint64_t sub_2284B8050(_OWORD *a1)
{
  sub_2284B883C(0, &qword_27D83FC90);
  v3 = v2;
  v34 = *(v2 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  sub_2284B8888(0, &qword_27D83FC98);
  v8 = v7;
  v33 = *(v7 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  sub_2284B8900();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v38[0] = *a1;
  v38[1] = v19;
  v20 = a1[3];
  v39 = a1[2];
  v40 = v20;
  v21 = (v39)(v16);
  if (v21)
  {
    v22 = v21;
    v23 = *(v35 + 16);
    v24 = UNUserNotificationCenter.scheduleNotification(_:)(v22);

    v36[0] = v24;
    v25 = swift_allocObject();
    v26 = a1[1];
    v25[1] = *a1;
    v25[2] = v26;
    v27 = a1[3];
    v25[3] = a1[2];
    v25[4] = v27;
    sub_2284B89A0(v38, v37);
    sub_2283FEE20();
    sub_2284B7F68(&qword_280DE98A0, 255, sub_2283FEE20);
    sub_22855CE8C();

    sub_2284B7F68(&qword_27D83FCB0, 255, sub_2284B8900);
    v28 = sub_22855CE6C();

    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v29 = a1[1];
    v37[0] = *a1;
    v37[1] = v29;
    v30 = a1[3];
    v37[2] = a1[2];
    v37[3] = v30;
    sub_2284B89A0(v38, v36);
    sub_22855CDCC();
    sub_2283F9B94(0, &qword_280DECFE0);
    sub_22855CD9C();
    (*(v34 + 8))(v6, v3);
    sub_2284B89FC(&qword_27D83FCA8, &qword_27D83FC98);
    v28 = sub_22855CE6C();
    (*(v33 + 8))(v11, v8);
  }

  return v28;
}

void sub_2284B8498(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_22855D39C();
  [v4 *a2];
}

uint64_t MockPluginNotificationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2284B8650(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v7 = sub_22855D39C();
  [v6 *a4];
}

uint64_t sub_2284B86CC()
{
  v1 = *v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D68C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "%s This method is not supported!", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  return 0;
}

void sub_2284B883C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22855CDBC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2284B8888(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2283F9B94(255, &qword_280DECFE0);
    v3 = sub_22855E2EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2284B8900()
{
  if (!qword_27D83FCA0)
  {
    sub_2283FEE20();
    sub_2284B7F68(&qword_280DE98A0, 255, sub_2283FEE20);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FCA0);
    }
  }
}

uint64_t sub_2284B89FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2284B8888(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284B8A4C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  *a1 = v1[1];
  a1[1] = v2;
  v3 = v1[4];
  a1[2] = v1[3];
  a1[3] = v3;
  return sub_2284B89A0((v1 + 1), &v5);
}

uint64_t sub_2284B8A84()
{
  sub_2284B9250(0, &qword_27D83FCD0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v13 - v5;
  v7 = *(v0 + 16);
  v8 = *&v7[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState];
  v9 = v7;
  os_unfair_lock_lock((v8 + 40));
  v10 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 40));

  v13[1] = v10;
  sub_2284AD00C(0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  sub_22855CDCC();
  sub_2284B92AC();
  v11 = sub_22855CE6C();
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_2284B8BFC()
{
  sub_2284B9250(0, &qword_27D83FCC0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v13 - v5;
  v7 = *(v0 + 16);
  v8 = *&v7[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState];
  v9 = v7;
  os_unfair_lock_lock((v8 + 40));
  v10 = *(v8 + 24);

  os_unfair_lock_unlock((v8 + 40));

  v13[1] = v10;
  sub_2284AD00C(0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  sub_22855CDCC();
  sub_2284B91D8();
  v11 = sub_22855CE6C();
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_2284B8D74(uint64_t a1, uint64_t a2)
{
  result = sub_2284B7F68(&qword_27D83FCB8, a2, type metadata accessor for MockNotificationContentStateManager);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2284B91D8()
{
  result = qword_27D83FCC8;
  if (!qword_27D83FCC8)
  {
    sub_2284B9250(255, &qword_27D83FCC0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCC8);
  }

  return result;
}

void sub_2284B9250(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_2284AD00C(255, a3, a4, a5);
    v6 = sub_22855CDBC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2284B92AC()
{
  result = qword_27D83FCD8;
  if (!qword_27D83FCD8)
  {
    sub_2284B9250(255, &qword_27D83FCD0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCD8);
  }

  return result;
}

uint64_t OrchestrationRetryManager.__allocating_init(director:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_2284B94C4(a1);

  return v5;
}

uint64_t OrchestrationRetryManager.init(director:)(uint64_t a1)
{
  v1 = sub_2284B94C4(a1);

  return v1;
}

uint64_t OrchestrationRetryManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription;
  v4 = sub_22855C9AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OrchestrationRetryManager.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription;
  v4 = sub_22855C9AC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2284B94C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22855C9AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = a1;
  v9 = *MEMORY[0x277CCE3A8];
  sub_22855D1AC();

  sub_22855C96C();

  v10 = OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription;
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription, v8, v4);
  (*(v5 + 16))(v8, v2 + v10, v4);
  sub_22855C51C();
  sub_22855C90C();

  LOBYTE(v10) = sub_22855C98C();

  (*(v5 + 8))(v8, v4);
  sub_2284B9878();
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = v10 & 1;
  *(v2 + 24) = v11;
  sub_22855C51C();
  sub_2284B98D8();

  sub_22855C91C();

  return v2;
}

uint64_t type metadata accessor for OrchestrationRetryManager()
{
  result = qword_280DEB4E0;
  if (!qword_280DEB4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2284B96FC()
{
  result = sub_22855C9AC();
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

uint64_t getEnumTagSinglePayload for OrchestrationRetryManager.State(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_2284B9878()
{
  if (!qword_280DE9160)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9160);
    }
  }
}

unint64_t sub_2284B98D8()
{
  result = qword_280DEB4F0;
  if (!qword_280DEB4F0)
  {
    type metadata accessor for OrchestrationRetryManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB4F0);
  }

  return result;
}

id static Profile.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2284B99B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 encodedHKProfileIdentifier];
  v4 = sub_22855C09C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2284B9A08(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_2284B9B90(a4, a5);
  v11 = sub_22855D51C();

  *a6 = v11;
}

void sub_2284B9A94(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a1;
  v12 = *a2;
  a5(0);
  sub_2284B9B90(a6, a7);
  v13 = sub_22855D50C();
  [v12 *a8];
}

void sub_2284B9B30(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  sub_22855C1BC();
}

uint64_t sub_2284B9B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2284B9BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_2284B9C44()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2284B9C7C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2284B9CC4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2, uint64_t *a3)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2284BACB4;
  a2[1] = v6;
}

uint64_t sub_2284B9D44(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_2284BACBC, v9);
}

uint64_t sub_2284B9DEC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v6 + 24) = sub_2284BACA4;
  *(v6 + 32) = v5;
}

uint64_t sub_2284B9E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, void *))
{
  v11 = a2;
  v12 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_2284BACAC;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t sub_2284B9F24()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2284B9F70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2284B9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(v4 + 24);
  v9 = *(v4 + 32);

  v10(a1, a2, a3, a4);
}

uint64_t sub_2284BA048@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2284BAC9C;
  a2[1] = v6;
}

uint64_t sub_2284BA0C8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t))
{
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(a1, sub_22841C06C, v7);
}

uint64_t sub_2284BA160(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 48);
  *(v6 + 40) = sub_2284BAC94;
  *(v6 + 48) = v5;
}

uint64_t sub_2284BA1F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[0] = sub_22841C0AC;
  v10[1] = v8;

  a4(a1, v10);
}

uint64_t sub_2284BA294()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2284BA2E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_2284BA384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);

  v8(a1, a2, a3);
}

uint64_t MockAnchorStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  MockAnchorStorage.init()();
  return v0;
}

void *MockAnchorStorage.init()()
{
  v0[2] = sub_22847D43C(MEMORY[0x277D84F90]);
  v0[3] = nullsub_1;
  v0[4] = 0;
  v0[5] = nullsub_1;
  v0[6] = 0;
  v1 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v2 = v0[4];
  v0[3] = sub_2284BAAA8;
  v0[4] = v1;

  v3 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v4 = v0[6];
  v0[5] = sub_2284BAAB0;
  v0[6] = v3;

  return v0;
}

uint64_t sub_2284BA57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_22855C5CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v12 = Strong;
  v13 = *(a2 + 16);
  if (!v13)
  {
  }

  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v16 = (a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
  v38 = *(v14 + 56);
  v39 = v15;
  v40 = v14;
  v17 = (v14 - 8);
  v15(v10, v16, v6);
  while (1)
  {
    swift_beginAccess();

    v21 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v12 + 16);
    v23 = v41;
    *(v12 + 16) = 0x8000000000000000;
    v24 = sub_228443DF4(v10);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_228446AA0(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_228443DF4(v10);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v32 = v41;
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v36 = v24;
    sub_2284494D8();
    v24 = v36;
    v32 = v41;
    if (v30)
    {
LABEL_4:
      v18 = v32[7];
      v19 = *(v18 + 8 * v24);
      *(v18 + 8 * v24) = a1;

      (*v17)(v10, v6);
      goto LABEL_5;
    }

LABEL_13:
    v32[(v24 >> 6) + 8] |= 1 << v24;
    v33 = v24;
    v39(v32[6] + v24 * v38, v10, v6);
    *(v32[7] + 8 * v33) = a1;
    (*v17)(v10, v6);
    v34 = v32[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_21;
    }

    v32[2] = v35;
LABEL_5:
    v20 = *(v12 + 16);
    *(v12 + 16) = v32;

    swift_endAccess();
    v16 += v38;
    if (!--v13)
    {
    }

    v39(v10, v16, v6);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_2284BA870(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v4 + 16);

    (a2)(v6, 0);
  }

  else
  {
    sub_22847D43C(MEMORY[0x277D84F90]);
    a2();
  }
}

void *MockAnchorStorage.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t MockAnchorStorage.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_2284BA9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);

  v9(a1, a2, a3);
}

uint64_t sub_2284BAA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);

  v11(a1, a2, a3, a4);
}

uint64_t static InputSignalSet.LookupKey.profileNotificationSettings.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for ProfileNotificationSettingsInputSignal();
  return sub_22855C61C();
}

uint64_t ProfileNotificationType.description.getter()
{
  v1 = 0x73646E657274;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

uint64_t ProfileNotificationType.legacyKeyValueDomainKey.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

unint64_t ProfileNotificationType.userDefaultsKey(for:)(void *a1)
{
  v3 = 0xD000000000000012;
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_22855DC6C();

  v16 = 0xD000000000000019;
  v17 = 0x8000000228571340;
  v10 = [a1 identifier];
  sub_22855C1BC();

  v11 = sub_22855C17C();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x22AAB92A0](v11, v13);

  MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
  if (v9)
  {
    if (v9 == 1)
    {
      v14 = 0x8000000228571320;
    }

    else
    {
      v14 = 0xE700000000000000;
      v3 = 0x73657461647075;
    }
  }

  else
  {
    v14 = 0xE600000000000000;
    v3 = 0x737472656C61;
  }

  MEMORY[0x22AAB92A0](v3, v14);

  return v16;
}

HealthPlatform::ProfileNotificationType_optional __swiftcall ProfileNotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2284BB0E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73646E657274;
  if (v2 != 1)
  {
    v5 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x737472656C61;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x73646E657274;
  if (*a2 != 1)
  {
    v8 = 0x73657461647075;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737472656C61;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22855E15C();
  }

  return v11 & 1;
}

void sub_2284BB1E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73646E657274;
  if (v2 != 1)
  {
    v5 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737472656C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2284BB23C()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284BB2D8()
{
  *v0;
  *v0;
  sub_22855D20C();
}

uint64_t sub_2284BB360()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284BB4B8()
{
  v1 = 0x73646E657274;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

uint64_t ProfileNotificationSettingsInputSignal.observer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

void *ProfileNotificationSettingsInputSignal.__allocating_init(observer:source:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2284BF2E8(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

void *ProfileNotificationSettingsInputSignal.init(observer:source:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_2284BF250(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v14;
}

void *ProfileNotificationSettingsInputSignal.__allocating_init(observer:healthStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = qword_280DED1C0;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_280DED1C8;
  v8 = type metadata accessor for DefaultProfileNotificationSettingsSource();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = v6;
  sub_2284BF424();
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *&v9[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v10;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = v7;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  result = swift_allocObject();
  result[7] = v8;
  result[8] = &protocol witness table for DefaultProfileNotificationSettingsSource;
  result[3] = a2;
  result[4] = v12;
  result[2] = a1;
  return result;
}

id DefaultProfileNotificationSettingsSource.__allocating_init(healthStore:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = a1;
  sub_2284BF424();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = a2;
  *&v5[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v6;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall ProfileNotificationSettingsInputSignal.beginObservation(from:configurations:)(HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor_optional from, Swift::OpaquePointer configurations)
{
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 16))(v3, v4);
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + 8);

  v8(sub_2284BF484, v7, v5, v6);
}

uint64_t sub_2284BB95C(void *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = sub_22855BF2C();
      v7 = [v6 hk_isDatabaseAccessibilityError];

      if ((v7 & 1) == 0)
      {
        if (qword_280DE9DF0 != -1)
        {
          swift_once();
        }

        v8 = sub_22855CABC();
        __swift_project_value_buffer(v8, qword_280DE9DF8);
        v9 = a1;
        v10 = sub_22855CA8C();
        v11 = sub_22855D68C();
        sub_2284A6534(a1, 1);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          v14 = a1;
          v15 = _swift_stdlib_bridgeErrorToNSError();
          *(v12 + 4) = v15;
          *v13 = v15;
          _os_log_impl(&dword_2283ED000, v10, v11, "Restarting observation, notification settings observation query failed: %@", v12, 0xCu);
          sub_2284C00F0(v13, sub_22841DCF4);
          MEMORY[0x22AABAD40](v13, -1, -1);
          MEMORY[0x22AABAD40](v12, -1, -1);
        }
      }

      v16 = v5[7];
      v17 = v5[8];
      __swift_project_boxed_opaque_existential_1(v5 + 4, v16);
      (*(v17 + 16))(v16, v17);
      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      sub_228506C84(sub_2284C016C, v5);
    }

    else
    {
      sub_22847D65C(MEMORY[0x277D84F90]);

      v18 = v5[2];
      v19 = v5[3];
      swift_getObjectType();
      type metadata accessor for ProfileNotificationSettingsInputSignal();
      sub_2284BFBAC(qword_280DEA138, v20, type metadata accessor for ProfileNotificationSettingsInputSignal);
      sub_22855C78C();
    }
  }

  return result;
}

HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor __swiftcall ProfileNotificationSettingsInputSignal.Anchor.init(notificationEnabledByType:)(Swift::OpaquePointer notificationEnabledByType)
{
  v3 = v1;
  sub_22847D65C(MEMORY[0x277D84F90]);

  v3->_rawValue = notificationEnabledByType._rawValue;
  return result;
}

uint64_t sub_2284BBC64(void *a1)
{
  v1 = a1[7];
  v2 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 8);

  v4(sub_2284C0184, v3, v1, v2);
}

Swift::Void __swiftcall ProfileNotificationSettingsInputSignal.stopObservation()()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t ProfileNotificationSettingsInputSignal.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v0;
}

uint64_t ProfileNotificationSettingsInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2284BBDD0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_2284BBDFC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v2);
  (*(v3 + 16))(v2, v3);
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 8);

  v7(sub_2284C0184, v6, v4, v5);
}

uint64_t sub_2284BBEDC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2284BBF34(uint64_t a1, uint64_t a2)
{
  v3 = sub_2284BFBAC(qword_280DEA138, a2, type metadata accessor for ProfileNotificationSettingsInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor __swiftcall ProfileNotificationSettingsInputSignal.Anchor.merged(with:)(HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor with)
{
  v3 = v1;
  v4 = *with.notificationEnabledByType._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_2284BF490(v4, sub_2284BF2D4, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;
  sub_22847D65C(MEMORY[0x277D84F90]);

  *v3 = v7;
  return result;
}

uint64_t sub_2284BC19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000228571440 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22855E15C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2284BC230(uint64_t a1)
{
  v2 = sub_2284BF6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284BC26C(uint64_t a1)
{
  v2 = sub_2284BF6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProfileNotificationSettingsInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_2284BF7EC(0, &qword_27D83FCF8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284BF6E0();

  sub_22855E31C();
  v12[1] = v9;
  sub_2284BF734();
  sub_2284BF850(&qword_27D83FD10, sub_2284BF798);
  sub_22855E0CC();

  return (*(v5 + 8))(v8, v4);
}

uint64_t ProfileNotificationSettingsInputSignal.Anchor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2284BF7EC(0, &qword_27D83FD20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  sub_22847D65C(MEMORY[0x277D84F90]);

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284BF6E0();
  sub_22855E30C();
  if (!v2)
  {
    sub_2284BF734();
    sub_2284BF850(&qword_27D83FD28, sub_2284BF8C8);
    sub_22855E03C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2284BC640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_2284BF490(v4, sub_2284BF2D4, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;
  sub_22847D65C(MEMORY[0x277D84F90]);

  *a2 = v7;
  return result;
}

uint64_t ProfileNotificationSettingsInputSignal.Configuration.notificationTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2284BC7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x73646E657274;
      }

      else
      {
        v8 = 0x73657461647075;
      }

      if (v6 == 1)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x737472656C61;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 == 1)
      {
        v12 = 0x73646E657274;
      }

      else
      {
        v12 = 0x73657461647075;
      }

      if (v7 == 1)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x737472656C61;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_22855E15C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2284BC8F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284BC94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginSharableModel();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_22848DB1C(v14, v11);
        sub_22848DB1C(v15, v8);
        v17 = static PluginSharableModel.== infix(_:_:)(v11, v8);
        sub_2284C00F0(v8, type metadata accessor for PluginSharableModel);
        sub_2284C00F0(v11, type metadata accessor for PluginSharableModel);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _s14HealthPlatform22SharableModelPredicateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22855E15C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2284BCBDC(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_2283EF310(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AAB9D20](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AAB9D20](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_22855D9AC();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_22855D9AC();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_22855DB4C();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_22855DB4C();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2284BCE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_2284BFBAC(v32, 255, v33);
    v26 = sub_22855D16C();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProfileNotificationSettingsInputSignal.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x22AABA2B0](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_22855D20C();

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ProfileNotificationSettingsInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_2284BF0A0(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284BD194()
{
  v1 = *v0;
  sub_22855E22C();
  sub_2284BF0A0(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284BD1E4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_2284BF0A0(v3, v1);
  return sub_22855E27C();
}

id DefaultProfileNotificationSettingsSource.init(healthStore:userDefaults:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = a1;
  sub_2284BF424();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = a2;
  *&v2[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t DefaultProfileNotificationSettingsSource.fetchAndObserve(handler:)(void (*a1)(void, void), uint64_t a2)
{
  swift_getObjectType();
  v5 = sub_22855C1DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DEEC98);
  v11 = v2;
  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v34 = v16;
    *v15 = 136446466;
    v18 = sub_22855E34C();
    v20 = sub_2283F8938(v18, v19, &v34);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [*&v11[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] profileIdentifier];
    v22 = [v21 identifier];

    sub_22855C1BC();
    v23 = sub_22855C17C();
    v25 = v24;
    (*(v6 + 8))(v9, v5);
    v26 = sub_2283F8938(v23, v25, &v34);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%{public}s_%s] Starting observation", v15, 0x16u);
    swift_arrayDestroy();
    v27 = v17;
    a2 = v32;
    MEMORY[0x22AABAD40](v27, -1, -1);
    v28 = v15;
    a1 = v33;
    MEMORY[0x22AABAD40](v28, -1, -1);
  }

  v29 = *&v11[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState];
  MEMORY[0x28223BE20](v30);
  *(&v32 - 4) = v11;
  *(&v32 - 3) = a1;
  *(&v32 - 2) = a2;
  os_unfair_lock_lock(v29 + 10);
  sub_2284BF91C(&v29[4], &v34);
  os_unfair_lock_unlock(v29 + 10);
  a1(v34, 0);
}

void sub_2284BD634(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  sub_2284BD6C4(*a1);
  if (!v4)
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);

    sub_228416CF8(v10);
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    sub_2284BE1B0(v9);
    *a4 = sub_2284BE428(v9);
  }
}

void sub_2284BD6C4(id a1)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v105 = sub_22855C1DC();
  v5 = *(v105 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v1;
  v8 = *&v1[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore];
  v100 = [v8 profileIdentifier];
  v9 = *MEMORY[0x277CCE3E0];
  v10 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v91 = v8;
  v94 = [v10 initWithCategory:1 domainName:v9 healthStore:v8];
  v11 = 0;
  v102 = (v5 + 8);
  v98 = 0x8000000228571320;
  v99 = 0x8000000228571340;
  *&v12 = 136446722;
  v87 = v12;
  *&v12 = 136446978;
  v86 = v12;
  v90 = a1;
  while (1)
  {
    v13 = byte_283B7F3C0[v11 + 32];
    *&v104[0] = 0;
    *(&v104[0] + 1) = 0xE000000000000000;
    sub_22855DC6C();

    *&v104[0] = 0xD000000000000019;
    *(&v104[0] + 1) = v99;
    v14 = [v100 identifier];
    v15 = v103;
    sub_22855C1BC();

    v16 = sub_22855C17C();
    v18 = v17;
    v101 = *v102;
    v101(v15, v105);
    MEMORY[0x22AAB92A0](v16, v18);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    if (v13)
    {
      v19 = v13 == 1 ? 0xD000000000000012 : 0x73657461647075;
      v20 = v13 == 1 ? v98 : 0xE700000000000000;
    }

    else
    {
      v20 = 0xE600000000000000;
      v19 = 0x737472656C61;
    }

    MEMORY[0x22AAB92A0](v19, v20);

    v21 = v104[0];
    v22 = sub_22855D17C();
    v23 = [a1 objectForKey_];

    if (!v23)
    {
      break;
    }

    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_22843D15C(v104);
LABEL_3:
    if (++v11 == 3)
    {

      return;
    }
  }

  v95 = v21;
  memset(v104, 0, 32);
  sub_22843D15C(v104);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v24 = sub_22855CABC();
  v25 = __swift_project_value_buffer(v24, qword_280DEEC98);
  v26 = v93;
  v27 = sub_22855CA8C();
  v28 = sub_22855D6AC();

  v29 = os_log_type_enabled(v27, v28);
  v97 = *(&v21 + 1);
  if (v29)
  {
    v88 = v26;
    v89 = v25;
    v96 = v3;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v104[0] = v31;
    *v30 = v87;
    v32 = sub_22855E34C();
    v34 = sub_2283F8938(v32, v33, v104);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = [v91 profileIdentifier];
    v36 = [v35 identifier];

    v37 = v103;
    sub_22855C1BC();

    v38 = sub_22855C17C();
    v40 = v39;
    v101(v37, v105);
    v41 = sub_2283F8938(v38, v40, v104);

    *(v30 + 14) = v41;
    *(v30 + 22) = 2080;
    if (v13)
    {
      if (v13 == 1)
      {
        v42 = 0x73646E657274;
      }

      else
      {
        v42 = 0x73657461647075;
      }

      if (v13 == 1)
      {
        v43 = 0xE600000000000000;
      }

      else
      {
        v43 = 0xE700000000000000;
      }
    }

    else
    {
      v43 = 0xE600000000000000;
      v42 = 0x737472656C61;
    }

    v44 = sub_2283F8938(v42, v43, v104);

    *(v30 + 24) = v44;
    _os_log_impl(&dword_2283ED000, v27, v28, "[%{public}s_%s] No settings for %s, migrating from legacy key value domain", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v31, -1, -1);
    MEMORY[0x22AABAD40](v30, -1, -1);

    v3 = v96;
    v26 = v88;
  }

  else
  {
  }

  v45 = sub_22855D76C();
  if (!v3)
  {
    v46 = v45;

    if (v46 == 2)
    {
      v48 = [v100 type] != 1 || v13 != 1;
      v49 = v26;
      v50 = sub_22855CA8C();
      v51 = sub_22855D6AC();

      if (os_log_type_enabled(v50, v51))
      {
        LODWORD(v89) = v48;
        v96 = 0;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v104[0] = v53;
        *v52 = v86;
        v54 = sub_22855E34C();
        v56 = sub_2283F8938(v54, v55, v104);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = [v91 profileIdentifier];
        v58 = [v57 identifier];

        v59 = v103;
        sub_22855C1BC();

        v60 = sub_22855C17C();
        v62 = v61;
        v101(v59, v105);
        v63 = sub_2283F8938(v60, v62, v104);

        *(v52 + 14) = v63;
        *(v52 + 22) = 2080;
        if (v13)
        {
          if (v13 == 1)
          {
            v64 = 0xE600000000000000;
            v65 = 0x73646E657274;
          }

          else
          {
            v64 = 0xE700000000000000;
            v65 = 0x73657461647075;
          }
        }

        else
        {
          v64 = 0xE600000000000000;
          v65 = 0x737472656C61;
        }

        v48 = v89;
        v82 = sub_2283F8938(v65, v64, v104);

        *(v52 + 24) = v82;
        *(v52 + 32) = 1024;
        *(v52 + 34) = v48;
        _os_log_impl(&dword_2283ED000, v50, v51, "[%{public}s_%s] Setting %s using default value: %{BOOL}d", v52, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v53, -1, -1);
        MEMORY[0x22AABAD40](v52, -1, -1);

        v3 = v96;
      }

      else
      {
      }

      v83 = sub_22855D17C();

      a1 = v90;
      [v90 setBool:v48 forKey:{v83, v86}];
    }

    else
    {
      v66 = v26;
      v67 = sub_22855CA8C();
      v68 = sub_22855D6AC();

      if (os_log_type_enabled(v67, v68))
      {
        v96 = 0;
        v69 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v104[0] = v89;
        *v69 = v86;
        v70 = sub_22855E34C();
        v72 = sub_2283F8938(v70, v71, v104);

        *(v69 + 4) = v72;
        *(v69 + 12) = 2080;
        v73 = [v91 profileIdentifier];
        v74 = [v73 identifier];

        v75 = v103;
        sub_22855C1BC();

        v76 = sub_22855C17C();
        v78 = v77;
        v101(v75, v105);
        v79 = sub_2283F8938(v76, v78, v104);

        *(v69 + 14) = v79;
        *(v69 + 22) = 2080;
        if (v13)
        {
          if (v13 == 1)
          {
            v80 = 0xE600000000000000;
            v81 = 0x73646E657274;
          }

          else
          {
            v80 = 0xE700000000000000;
            v81 = 0x73657461647075;
          }
        }

        else
        {
          v80 = 0xE600000000000000;
          v81 = 0x737472656C61;
        }

        v84 = sub_2283F8938(v81, v80, v104);

        *(v69 + 24) = v84;
        *(v69 + 32) = 1024;
        *(v69 + 34) = v46 & 1;
        _os_log_impl(&dword_2283ED000, v67, v68, "[%{public}s_%s] Setting %s using value in legacy key value domain: %{BOOL}d", v69, 0x26u);
        v85 = v89;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v85, -1, -1);
        MEMORY[0x22AABAD40](v69, -1, -1);

        v3 = v96;
      }

      else
      {
      }

      v83 = sub_22855D17C();

      a1 = v90;
      [v90 setBool:v46 & 1 forKey:{v83, v86}];
    }

    goto LABEL_3;
  }
}

void sub_2284BE1B0(void *a1)
{
  v24 = a1;
  v23 = sub_22855C1DC();
  v2 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v25 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore);
  v21 = 0x8000000228571340;
  v22 = v6;
  v8 = (v7 + 8);
  do
  {
    v9 = byte_283B7F3E8[v5++ + 32];
    v10 = [v22 profileIdentifier];
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_22855DC6C();

    v26 = 0xD000000000000019;
    v27 = v21;
    v11 = [v10 identifier];
    sub_22855C1BC();

    v12 = sub_22855C17C();
    v14 = v13;
    (*v8)(v4, v23);
    MEMORY[0x22AAB92A0](v12, v14);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    v15 = 0x73657461647075;
    if (v9 == 1)
    {
      v15 = 0xD000000000000012;
    }

    v16 = 0xE700000000000000;
    if (v9 == 1)
    {
      v16 = 0x8000000228571320;
    }

    if (v9)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x737472656C61;
    }

    if (v9)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE600000000000000;
    }

    MEMORY[0x22AAB92A0](v17, v18);

    v19 = sub_22855D17C();

    [v24 addObserver:v25 forKeyPath:v19 options:1 context:0];
  }

  while (v5 != 3);
}

uint64_t sub_2284BE428(void *a1)
{
  v40 = a1;
  v39 = sub_22855C1DC();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22847D65C(MEMORY[0x277D84F90]);
  v7 = 0;
  v8 = *(v1 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore);
  v37 = 0x8000000228571340;
  v38 = v8;
  v9 = (v2 + 8);
  v36 = 0x8000000228571320;
  while (1)
  {
    v10 = byte_283B7F410[v7++ + 32];
    v11 = [v38 profileIdentifier];
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_22855DC6C();

    v41 = 0xD000000000000019;
    v42 = v37;
    v12 = [v11 identifier];
    sub_22855C1BC();

    v13 = sub_22855C17C();
    v15 = v14;
    (*v9)(v5, v39);
    MEMORY[0x22AAB92A0](v13, v15);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    v16 = 0x73657461647075;
    if (v10 == 1)
    {
      v16 = 0xD000000000000012;
    }

    v17 = v36;
    if (v10 != 1)
    {
      v17 = 0xE700000000000000;
    }

    v18 = v10 ? v16 : 0x737472656C61;
    v19 = v10 ? v17 : 0xE600000000000000;
    MEMORY[0x22AAB92A0](v18, v19);

    v20 = sub_22855D17C();

    v21 = [v40 BOOLForKey_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v6;
    v24 = sub_228443AB4(v10);
    v25 = v6[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v6[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = v41;
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_228449744();
        v6 = v41;
        if ((v28 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_2:
      *(v6[7] + v24) = v21;
      if (v7 == 3)
      {
        return v6;
      }
    }

    else
    {
      sub_228446E70(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_228443AB4(v10);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

      v24 = v29;
      v6 = v41;
      if (v28)
      {
        goto LABEL_2;
      }

LABEL_20:
      v6[(v24 >> 6) + 8] |= 1 << v24;
      *(v6[6] + v24) = v10;
      *(v6[7] + v24) = v21;
      v31 = v6[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_27;
      }

      v6[2] = v33;
      if (v7 == 3)
      {
        return v6;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DefaultProfileNotificationSettingsSource.stop()()
{
  swift_getObjectType();
  v1 = sub_22855C1DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DEEC98);
  v7 = v0;
  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136446466;
    v12 = sub_22855E34C();
    v14 = sub_2283F8938(v12, v13, v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [*&v7[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] profileIdentifier];
    v16 = [v15 identifier];

    sub_22855C1BC();
    v17 = sub_22855C17C();
    v19 = v18;
    (*(v2 + 8))(v5, v1);
    v20 = sub_2283F8938(v17, v19, v23);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_2283ED000, v8, v9, "[%{public}s_%s] Stopping observation", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  v21 = *&v7[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState];
  MEMORY[0x28223BE20](v22);
  v23[-2] = v7;
  os_unfair_lock_lock(v21 + 10);
  sub_2284BF93C(&v21[4]);
  os_unfair_lock_unlock(v21 + 10);
}

void sub_2284BEAA8(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
    sub_228416CF8(*(a1 + 8));
    *v1 = 0;
    v1[1] = 0;
    sub_2284BEB00(*a1);
  }
}

void sub_2284BEB00(void *a1)
{
  v24 = a1;
  v23 = sub_22855C1DC();
  v2 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v25 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore);
  v21 = 0x8000000228571340;
  v22 = v6;
  v8 = (v7 + 8);
  do
  {
    v9 = byte_283B7F438[v5++ + 32];
    v10 = [v22 profileIdentifier];
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_22855DC6C();

    v26 = 0xD000000000000019;
    v27 = v21;
    v11 = [v10 identifier];
    sub_22855C1BC();

    v12 = sub_22855C17C();
    v14 = v13;
    (*v8)(v4, v23);
    MEMORY[0x22AAB92A0](v12, v14);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    v15 = 0x73657461647075;
    if (v9 == 1)
    {
      v15 = 0xD000000000000012;
    }

    v16 = 0xE700000000000000;
    if (v9 == 1)
    {
      v16 = 0x8000000228571320;
    }

    if (v9)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x737472656C61;
    }

    if (v9)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE600000000000000;
    }

    MEMORY[0x22AAB92A0](v17, v18);

    v19 = sub_22855D17C();

    [v24 removeObserver:v25 forKeyPath:v19];
  }

  while (v5 != 3);
}

uint64_t sub_2284BED7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2284BE428(*a1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_22841C0AC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v8;
  a2[2] = v7;
  return sub_22840FE74(v5);
}

id DefaultProfileNotificationSettingsSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultProfileNotificationSettingsSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2284BF0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AABA2B0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_22855D20C();

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2284BF160(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_22855DB4C();
    MEMORY[0x22AABA2B0](v8);
    v3 = sub_22855DB4C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AABA2B0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x22AAB9D20](i, a2);
      sub_22855D9BC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_22855D9BC();

      --v3;
    }

    while (v3);
  }
}

void *sub_2284BF250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[7] = a5;
  a4[8] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 4);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[2] = a1;
  a4[3] = a2;
  return a4;
}

_BYTE *sub_2284BF2D4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void *sub_2284BF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a3, a5);
  v15[7] = a5;
  v15[8] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15 + 4);
  (*(v11 + 32))(boxed_opaque_existential_1, v14, a5);
  v15[2] = a1;
  v15[3] = a2;
  return v15;
}

void sub_2284BF424()
{
  if (!qword_280DE90D0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90D0);
    }
  }
}

uint64_t sub_2284BF490(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v35 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v13)
  {
    v12 = v9;
    v13 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = *(*(a1 + 48) + v15);
    LOBYTE(v15) = *(*(a1 + 56) + v15);
    v39[0] = v16;
    v39[1] = v15;
    a2(&v40, v39);
    v17 = v40;
    if ((v40 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_228407958();
    }

    v18 = a4;
    v19 = BYTE1(v40);
    v20 = *a5;
    v21 = sub_228443AB4(v40);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((v18 & 1) == 0)
      {
        v33 = v21;
        sub_228449744();
        v21 = v33;
      }
    }

    else
    {
      sub_228446E70(v26, v18 & 1);
      v28 = *a5;
      v21 = sub_228443AB4(v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 = (v12 - 1) & v12;
    v30 = *a5;
    if (v27)
    {
      *(v30[7] + v21) &= v19 & 1;
    }

    else
    {
      v30[(v21 >> 6) + 8] |= 1 << v21;
      *(v30[6] + v21) = v17;
      *(v30[7] + v21) = v19;
      v31 = v30[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v30[2] = v32;
    }

    a4 = 1;
  }

  v14 = i;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v6 + 8 * v13);
    ++v14;
    if (v12)
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
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

unint64_t sub_2284BF6E0()
{
  result = qword_27D83FD00;
  if (!qword_27D83FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD00);
  }

  return result;
}

void sub_2284BF734()
{
  if (!qword_27D83FD08)
  {
    sub_22844BE30();
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FD08);
    }
  }
}

unint64_t sub_2284BF798()
{
  result = qword_27D83FD18;
  if (!qword_27D83FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD18);
  }

  return result;
}

void sub_2284BF7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284BF6E0();
    v7 = a3(a1, &type metadata for ProfileNotificationSettingsInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284BF850(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2284BF734();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284BF8C8()
{
  result = qword_27D83FD30;
  if (!qword_27D83FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD30);
  }

  return result;
}

uint64_t sub_2284BF958(uint64_t a1, uint64_t a2)
{
  if (a2 && (v3 = v2, *(a2 + 16)) && (v5 = sub_22844C56C(*MEMORY[0x277CCA2F0]), (v6 & 1) != 0))
  {
    sub_2283F6E48(*(a2 + 56) + 32 * v5, v11);
    v7 = sub_22843D15C(v11);
    v8 = *(v3 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock(v8 + 10);
    sub_2284C0150(&v8[4], v11);
    os_unfair_lock_unlock(v8 + 10);
    v9 = *(&v11[0] + 1);
    if (*(&v11[0] + 1))
    {
      BYTE8(v11[0]) = 0;

      v9(v11);

      sub_228416CF8(v9);
      return sub_228416CF8(v9);
    }

    else
    {
    }
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    return sub_22843D15C(v11);
  }
}

unint64_t sub_2284BFA90()
{
  result = qword_27D83FD38;
  if (!qword_27D83FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD38);
  }

  return result;
}

unint64_t sub_2284BFAE8()
{
  result = qword_27D83FD40;
  if (!qword_27D83FD40)
  {
    sub_2284C004C(255, &qword_27D83FD48, &type metadata for ProfileNotificationType, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD40);
  }

  return result;
}

uint64_t sub_2284BFBAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284BFBF8()
{
  result = qword_27D83FD50;
  if (!qword_27D83FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD50);
  }

  return result;
}

unint64_t sub_2284BFC50()
{
  result = qword_27D83FD58;
  if (!qword_27D83FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD58);
  }

  return result;
}

unint64_t sub_2284BFCA8()
{
  result = qword_27D83FD60;
  if (!qword_27D83FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD60);
  }

  return result;
}

unint64_t sub_2284BFD00()
{
  result = qword_27D83FD68;
  if (!qword_27D83FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD68);
  }

  return result;
}

unint64_t sub_2284BFD58()
{
  result = qword_27D83FD70;
  if (!qword_27D83FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD70);
  }

  return result;
}

unint64_t sub_2284BFDB0()
{
  result = qword_27D83FD78;
  if (!qword_27D83FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD78);
  }

  return result;
}

unint64_t sub_2284BFE08()
{
  result = qword_27D83FD80;
  if (!qword_27D83FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySDy14HealthPlatform23ProfileNotificationTypeOSbGs5Error_pGIeghg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2284BFF48()
{
  result = qword_27D83FD88;
  if (!qword_27D83FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD88);
  }

  return result;
}

unint64_t sub_2284BFFA0()
{
  result = qword_27D83FD90;
  if (!qword_27D83FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD90);
  }

  return result;
}

unint64_t sub_2284BFFF8()
{
  result = qword_27D83FD98;
  if (!qword_27D83FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD98);
  }

  return result;
}

void sub_2284C004C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2284C009C()
{
  result = qword_27D83FDA0;
  if (!qword_27D83FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDA0);
  }

  return result;
}

uint64_t sub_2284C00F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedItem.FavoriteStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x657469726F766166;
  }

  if (a1 == 1)
  {
    return 0x726F766146746F6ELL;
  }

  return 0x626967696C656E69;
}

uint64_t FeedItem.FavoriteStatus.isFavorite.getter(char a1)
{
  if (a1)
  {
    v1 = sub_22855E15C();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_2284C02C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F766146746F6ELL;
  v4 = 0xEC00000064657469;
  if (v2 != 1)
  {
    v3 = 0x626967696C656E69;
    v4 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657469726F766166;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x726F766146746F6ELL;
  v8 = 0xEC00000064657469;
  if (*a2 != 1)
  {
    v7 = 0x626967696C656E69;
    v8 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657469726F766166;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_22855E15C();
  }

  return v11 & 1;
}

uint64_t sub_2284C03E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14HealthPlatform8FeedItemC14FavoriteStatusO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_2284C0410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC00000064657469;
  v5 = 0x726F766146746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x626967696C656E69;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657469726F766166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2284C0480()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284C0534()
{
  *v0;
  *v0;
  sub_22855D20C();
}

uint64_t sub_2284C05D4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t _s14HealthPlatform8FeedItemC14FavoriteStatusO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_22855DFBC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2284C06D4()
{
  result = qword_27D83FDB8;
  if (!qword_27D83FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDB8);
  }

  return result;
}

double BasicSharableModelGeneratorPipeline.init(generator:domain:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C0B8C(0, &qword_27D83FDC0, sub_2284C08CC);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  v12 = *a2;
  v13 = *(a2 + 24);
  sub_2283F9B10(a1, v17);
  sub_2284C08CC();
  *v16 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284C0C30(&qword_27D83FDD0, &qword_27D83FDC0, sub_2284C08CC);
  v14 = sub_22855CE6C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v8 + 8))(v11, v7);
  *a3 = v14;
  *(a3 + 8) = v12;
  result = v16[0];
  *(a3 + 16) = *v16;
  *(a3 + 32) = v13;
  return result;
}

unint64_t sub_2284C08CC()
{
  result = qword_27D83FDC8;
  if (!qword_27D83FDC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D83FDC8);
  }

  return result;
}

uint64_t BasicSharableModelGenerator.publisher.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

__n128 sub_2284C098C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);

  *(v1 + 8) = v3;
  result = *(a1 + 1);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

__n128 BasicSharableModelGenerator.init(publisher:domain:)@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = v3;
  result = *(a2 + 8);
  a3[1] = result;
  a3[2].n128_u8[0] = v4;
  return result;
}

double BasicSharableModelGenerator.init(changes:domain:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C0B8C(0, &qword_280DE9828, sub_2284C0BE0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  v12 = *a2;
  v13 = *(a2 + 24);
  v17 = a1;
  sub_2284C0BE0();
  *v16 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284C0C30(&qword_280DE9830, &qword_280DE9828, sub_2284C0BE0);
  v14 = sub_22855CE6C();
  (*(v8 + 8))(v11, v7);
  *a3 = v14;
  *(a3 + 8) = v12;
  result = v16[0];
  *(a3 + 16) = *v16;
  *(a3 + 32) = v13;
  return result;
}

void sub_2284C0B8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2284C0BE0()
{
  if (!qword_280DE9620)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9620);
    }
  }
}

uint64_t sub_2284C0C30(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284C0B8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EncodedFeatureTag.__allocating_init(context:name:data:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = objc_opt_self();
  v11 = sub_22855D17C();
  v12 = [v10 entityForName:v11 inManagedObjectContext:a1];

  if (v12)
  {
    v13 = [objc_allocWithZone(v6) initWithEntity:v12 insertIntoManagedObjectContext:a1];
    v14 = sub_22855D17C();

    [v13 setName_];

    v15 = sub_22855C08C();
    [v13 setData_];

    sub_22842B38C(a4, a5);
    return v13;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

HealthPlatform::DailyRoutineKind_optional __swiftcall DailyRoutineKind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v1.value = HealthPlatform_DailyRoutineKind_evening;
  }

  else
  {
    v1.value = HealthPlatform_DailyRoutineKind_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t DailyRoutineKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284C0E7C()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t sub_2284C0ECC()
{
  if (*v0)
  {
    v1 = 10;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x22AABA2B0](v1);
}

uint64_t sub_2284C0F04()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

void *sub_2284C0F50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_2284C0F70(uint64_t *a1@<X8>)
{
  v2 = 10;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

unint64_t sub_2284C1050()
{
  result = qword_27D83FDD8;
  if (!qword_27D83FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDD8);
  }

  return result;
}

unint64_t sub_2284C10C4()
{
  result = qword_27D83FDE0;
  if (!qword_27D83FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDE0);
  }

  return result;
}

uint64_t Publisher.tupleWithPrevious()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v31[0] = a2;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_22855DA2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = v31 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v33 = sub_22855CB7C();
  v35 = *(v33 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v19 = v31 - v18;
  v20 = *(*(AssociatedTypeWitness - 8) + 56);
  v31[1] = AssociatedTypeWitness;
  v20(v16, 1, 1, AssociatedTypeWitness);
  v20(v14, 1, 1, AssociatedTypeWitness);
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = *(v10 + 32);
  v22(v9, v16, v4);
  v22(&v9[v21], v14, v4);
  v23 = swift_allocObject();
  v24 = v32;
  v25 = v31[0];
  *(v23 + 16) = v32;
  *(v23 + 24) = v25;
  v26 = v24;
  v27 = v25;
  sub_22855CE9C();

  (*(v34 + 8))(v9, TupleTypeMetadata2);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  swift_getTupleTypeMetadata2();
  v29 = v33;
  swift_getWitnessTable();
  sub_22855CE7C();

  return (*(v35 + 8))(v19, v29);
}

uint64_t sub_2284C14FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_22855DA2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v18 - v11;
  v13 = *(v10 + 48);
  (*(v14 + 16))(&v18 - v11, a1, TupleTypeMetadata2);
  v15 = *(v7 - 8);
  (*(v15 + 32))(a3, &v12[*(TupleTypeMetadata2 + 48)], v7);
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 16))(a3 + v13, a2, AssociatedTypeWitness);
  (*(v16 + 56))(a3 + v13, 0, 1, AssociatedTypeWitness);
  return (*(v15 + 8))(v12, v7);
}

uint64_t sub_2284C16E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_2284C14FC(a1, a2, a3);
}

uint64_t sub_2284C16F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_22855DA2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v26 - v15;
  v32 = *(v6 + 16);
  v32(v12, a1, TupleTypeMetadata2);
  v17 = *(TupleTypeMetadata2 + 48);
  if ((*(v13 + 48))(&v12[v17], 1, AssociatedTypeWitness) == 1)
  {
    v18 = *(*(v4 - 8) + 8);
    v18(&v12[v17], v4);
    v18(v12, v4);
    v19 = swift_getTupleTypeMetadata2();
    return (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  }

  else
  {
    v29 = *(v13 + 32);
    v29(v16, &v12[v17], AssociatedTypeWitness);
    v21 = *(v4 - 8);
    v28 = a1;
    v30 = *(v21 + 8);
    v30(v12, v4);
    v22 = swift_getTupleTypeMetadata2();
    v27 = *(v22 + 48);
    v23 = v31;
    v32(v31, v28, TupleTypeMetadata2);
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v33;
    (*(v21 + 32))(v33, v23, v4);
    v29((v25 + v27), v16, AssociatedTypeWitness);
    (*(*(v22 - 8) + 56))(v25, 0, 1, v22);
    return (v30)(&v23[v24], v4);
  }
}

uint64_t sub_2284C1AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2284C16F0(a1, a2);
}

uint64_t sub_2284C1AC0()
{
  v1 = v0;
  v2 = (off_281860230[0])(&type metadata for ProminenceFeatureTag, &protocol witness table for ProminenceFeatureTag);
  v4 = v3;
  v5 = sub_2284573B0();
  v7 = v6;
  v8 = [v0 managedObjectContext];
  if (v8)
  {
    v9 = v8;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v2, v4);
    type metadata accessor for EncodedFeatureTag();
    v10 = v9;
    sub_22842B3E0(v5, v7);
    v11 = EncodedFeatureTag.__allocating_init(context:name:data:)(v10, v2, v4, v5, v7);
    [v1 addFeatureTagsObject_];

    return sub_22842B38C(v5, v7);
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284C1C30()
{
  v1 = v0;
  v2 = off_2818602A8(&type metadata for NoveltyFeatureTag, &protocol witness table for NoveltyFeatureTag);
  v4 = v3;
  v5 = sub_2284570B0();
  v7 = v6;
  v8 = [v0 managedObjectContext];
  if (v8)
  {
    v9 = v8;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v2, v4);
    type metadata accessor for EncodedFeatureTag();
    v10 = v9;
    sub_22842B3E0(v5, v7);
    v11 = EncodedFeatureTag.__allocating_init(context:name:data:)(v10, v2, v4, v5, v7);
    [v1 addFeatureTagsObject_];

    return sub_22842B38C(v5, v7);
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void PluginFeedItem.init(feedItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2284C3874(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v196 - v6;
  v206 = type metadata accessor for PluginFeedItem();
  v8 = *(*(v206 - 1) + 64);
  MEMORY[0x28223BE20](v206);
  v10 = v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uniqueIdentifier];
  v12 = sub_22855D1AC();
  v14 = v13;

  v15 = FeedItem.userInterface.getter();
  v198 = v16;
  v199 = v15;
  LODWORD(v197) = v17;
  v203 = a1;
  v18 = [a1 userData];
  v201 = v12;
  v202 = a2;
  *&v205 = v7;
  v200 = v14;
  if (v18)
  {
    v19 = v18;
    v20 = sub_22855C09C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = v203;
  FeedItem.contentKind.getter(&v208);
  v24 = v208;
  v25 = [v23 profiles];
  v26 = type metadata accessor for Profile();
  v27 = sub_2284C3820(&qword_280DED540, type metadata accessor for Profile);
  v196[3] = v26;
  v196[2] = v27;
  v28 = sub_22855D51C();

  v29 = sub_22841FCB4(v28);
  v204 = 0;

  v30 = sub_22842941C(v29);

  v31 = sub_2284C2B70(v30);

  v10[33] = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0xF000000000000000;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  *(v10 + 12) = 0xF000000000000000;
  v32 = v206;
  v33 = v206[11];
  v34 = type metadata accessor for RelevantDateInterval();
  (*(*(v34 - 8) + 56))(&v10[v33], 1, 1, v34);
  v35 = MEMORY[0x277D84FA0];
  *&v10[v32[13]] = MEMORY[0x277D84FA0];
  *&v10[v32[14]] = v35;
  *&v10[v32[15]] = v35;
  v36 = &v10[v32[16]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = v32[17];
  *&v10[v37] = MEMORY[0x277D84F98];
  *&v10[v32[18]] = v35;
  v38 = &v10[v32[20]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v10[v32[21]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v10[v32[22]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *&v10[v32[23]] = 0;
  v10[v32[24]] = 13;
  v10[v32[25]] = 1;
  v10[v32[26]] = 2;
  v41 = &v10[v32[27]];
  *v41 = 0;
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  v42 = &v10[v32[28]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v10[v32[29]] = 0;
  v43 = v200;
  *v10 = v201;
  *(v10 + 1) = v43;
  v44 = v198;
  *(v10 + 2) = v199;
  *(v10 + 3) = v44;
  v10[32] = v197;
  v45 = *(v10 + 11);
  v46 = *(v10 + 12);
  *(v10 + 11) = v20;
  *(v10 + 12) = v22;
  v47 = v22;
  sub_22843560C(v20, v22);
  sub_22842B378(v45, v46);
  v10[v32[12]] = v24;
  *&v10[v32[19]] = v31;
  v48 = off_281860230[0];
  v49 = v31;
  v50 = v48(&type metadata for ProminenceFeatureTag, &protocol witness table for ProminenceFeatureTag);
  v52 = v51;
  v53 = sub_2284573B0();
  v55 = v54;
  v56 = *&v10[v37];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v210 = *&v10[v37];
  v58 = v53;
  v59 = v203;
  sub_22845AF24(v58, v55, v50, v52, isUniquelyReferenced_nonNull_native);

  sub_22842B378(v20, v47);

  *&v10[v37] = v210;
  v60 = v202;
  sub_22844BC28(v10, v202);
  *(v60 + 33) = [v59 usesPlatformView];
  v61 = [v59 actionHandlerClassName];
  if (v61)
  {
    v62 = v61;
    v63 = sub_22855D1AC();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = *(v60 + 48);

  *(v60 + 40) = v63;
  *(v60 + 48) = v65;
  v67 = [v59 actionHandlerUserData];
  if (v67)
  {
    v68 = v67;
    v69 = sub_22855C09C();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xF000000000000000;
  }

  sub_22842B378(*(v60 + 56), *(v60 + 64));
  *(v60 + 56) = v69;
  *(v60 + 64) = v71;
  v72 = [v59 baseAutomationIdentifier];
  if (v72)
  {
    v73 = v72;
    v74 = sub_22855D1AC();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0;
  }

  v77 = *(v60 + 80);

  *(v60 + 72) = v74;
  *(v60 + 80) = v76;
  v78 = v205;
  FeedItem.relevantDateInterval.getter(v205);
  v79 = v206;
  sub_228457FD0(v78, v60 + v206[11]);
  v80 = [v59 dataTypes];
  type metadata accessor for DataType();
  sub_2284C3820(&qword_280DED538, type metadata accessor for DataType);
  v81 = sub_22855D51C();

  v82 = v204;
  sub_22841F19C(v81);
  v84 = v83;

  v85 = sub_228428BF8(v84);

  v86 = v79[13];
  v87 = *(v60 + v86);

  *(v60 + v86) = v85;
  v88 = [v59 measureIdentifiers];
  type metadata accessor for MeasureIdentifierManagedObject();
  sub_2284C3820(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
  v89 = sub_22855D51C();

  v90 = sub_22841F8B0(v89);

  v91 = sub_2284291F0(v90);

  v92 = v79[14];
  v93 = *(v60 + v92);

  *(v60 + v92) = v91;
  v94 = [v59 sharableModelReferences];
  type metadata accessor for SharableModelReference();
  sub_2284C3820(&qword_280DED6B8, type metadata accessor for SharableModelReference);
  v95 = sub_22855D51C();

  sub_2284200C4(v95);
  v97 = v96;
  v197 = v82;

  v98 = sub_228429AB8(v97);

  v99 = v79[15];
  v100 = *(v60 + v99);

  *(v60 + v99) = v98;
  v101 = [v59 categoryIdentifier];
  if (v101)
  {
    v102 = v101;
    v103 = sub_22855D1AC();
    v105 = v104;
  }

  else
  {
    v103 = 0;
    v105 = 0;
  }

  v106 = (v60 + v206[16]);
  v107 = v106[1];

  *v106 = v103;
  v106[1] = v105;
  v108 = [v59 featureTags];
  v109 = type metadata accessor for EncodedFeatureTag();
  sub_2284C3820(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v110 = sub_22855D51C();

  v198 = v109;
  if ((v110 & 0xC000000000000001) != 0)
  {
    sub_22855DAFC();
    sub_22855D56C();
    v110 = v210;
    v111 = v211;
    v112 = v212;
    v113 = v213;
    v114 = v214;
  }

  else
  {
    v113 = 0;
    v115 = -1 << *(v110 + 32);
    v111 = v110 + 56;
    v112 = ~v115;
    v116 = -v115;
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    else
    {
      v117 = -1;
    }

    v114 = v117 & *(v110 + 56);
  }

  v196[1] = v112;
  v118 = (v112 + 64) >> 6;
  v200 = v111;
  v201 = v110;
  v199 = v118;
  while ((v110 & 0x8000000000000000) == 0)
  {
    v123 = v113;
    v124 = v114;
    v125 = v113;
    if (!v114)
    {
      while (1)
      {
        v125 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          break;
        }

        if (v125 >= v118)
        {
          goto LABEL_45;
        }

        v124 = *(v111 + 8 * v125);
        ++v123;
        if (v124)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      sub_22855E1BC();
      __break(1u);
      return;
    }

LABEL_30:
    v126 = (v124 - 1) & v124;
    v127 = *(*(v110 + 48) + ((v125 << 9) | (8 * __clz(__rbit64(v124)))));
    if (!v127)
    {
      goto LABEL_45;
    }

LABEL_34:
    v204 = v126;
    v129 = v127;
    v130 = [v127 name];
    v131 = sub_22855D1AC();
    v133 = v132;

    *&v205 = v129;
    v134 = [v129 data];
    v135 = sub_22855C09C();
    v137 = v136;

    v138 = v206[17];
    v139 = *(v60 + v138);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *&v208 = *(v60 + v138);
    v141 = v208;
    v143 = sub_2283F6D18(v131, v133);
    v144 = *(v141 + 16);
    v145 = (v142 & 1) == 0;
    v146 = v144 + v145;
    if (__OFADD__(v144, v145))
    {
      goto LABEL_59;
    }

    v147 = v142;
    if (*(v141 + 24) >= v146)
    {
      if (v140)
      {
        if (v142)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_228448608();
        if (v147)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_228445528(v146, v140);
      v148 = sub_2283F6D18(v131, v133);
      if ((v147 & 1) != (v149 & 1))
      {
        goto LABEL_61;
      }

      v143 = v148;
      if (v147)
      {
LABEL_23:

        v119 = v208;
        v120 = (*(v208 + 56) + 16 * v143);
        v121 = *v120;
        v122 = v120[1];
        *v120 = v135;
        v120[1] = v137;
        sub_22842B38C(v121, v122);

        goto LABEL_24;
      }
    }

    v119 = v208;
    *(v208 + 8 * (v143 >> 6) + 64) |= 1 << v143;
    v150 = (v119[6] + 16 * v143);
    *v150 = v131;
    v150[1] = v133;
    v151 = (v119[7] + 16 * v143);
    *v151 = v135;
    v151[1] = v137;

    v152 = v119[2];
    v153 = __OFADD__(v152, 1);
    v154 = v152 + 1;
    if (v153)
    {
      goto LABEL_60;
    }

    v119[2] = v154;
LABEL_24:
    v110 = v201;
    v60 = v202;
    *(v202 + v138) = v119;
    v113 = v125;
    v59 = v203;
    v114 = v204;
    v118 = v199;
    v111 = v200;
  }

  v128 = sub_22855DB8C();
  if (v128)
  {
    v207 = v128;
    swift_dynamicCast();
    v127 = v208;
    v125 = v113;
    v126 = v114;
    if (v208)
    {
      goto LABEL_34;
    }
  }

LABEL_45:
  sub_228407958();
  v155 = [v59 keywords];
  type metadata accessor for Keyword();
  sub_2284C3820(qword_280DED548, type metadata accessor for Keyword);
  v156 = sub_22855D51C();

  sub_22841F558(v156);
  v158 = v157;

  v159 = sub_228406280(v158);

  v160 = v206;
  v161 = v206[18];
  v162 = *(v60 + v161);

  *(v60 + v161) = v159;
  v163 = [v59 profiles];
  v164 = sub_22855D51C();

  v165 = sub_22841FCB4(v164);

  v166 = sub_22842941C(v165);

  v167 = sub_2284C2B70(v166);

  v168 = v160[19];

  *(v60 + v168) = v167;
  v169 = [v59 localizedCategoryName];
  if (v169)
  {
    v170 = v169;
    v171 = sub_22855D1AC();
    v173 = v172;
  }

  else
  {
    v171 = 0;
    v173 = 0;
  }

  v174 = (v60 + v206[20]);
  v175 = v174[1];

  *v174 = v171;
  v174[1] = v173;
  v176 = [v59 localizedTitle];
  if (v176)
  {
    v177 = v176;
    v178 = sub_22855D1AC();
    v180 = v179;
  }

  else
  {
    v178 = 0;
    v180 = 0;
  }

  v181 = (v60 + v206[21]);
  v182 = v181[1];

  *v181 = v178;
  v181[1] = v180;
  v183 = [v59 localizedDescription];
  if (v183)
  {
    v184 = v183;
    v185 = sub_22855D1AC();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0;
  }

  v188 = v206;
  v189 = (v60 + v206[22]);
  v190 = v189[1];

  *v189 = v185;
  v189[1] = v187;
  *(v60 + v188[23]) = [v59 sortHint];
  if (([v59 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    v191 = 13;
  }

  else
  {
    v191 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v59 searchSectionHintRawValue]);
  }

  v192 = v206;
  *(v60 + v206[24]) = v191;
  *(v60 + v192[25]) = [v59 indexForSearch];
  *(v60 + v192[26]) = [v59 hideInDiscover];
  FeedItem.getPinnedContentIdentifier()();
  v205 = v208;
  v193 = v209;
  v194 = v60 + v192[27];
  v195 = *(v194 + 16);

  *v194 = v205;
  *(v194 + 16) = v193;
  FeedItem.hostViewStyle.getter(&v208);

  *(v60 + v192[29]) = v208;
}