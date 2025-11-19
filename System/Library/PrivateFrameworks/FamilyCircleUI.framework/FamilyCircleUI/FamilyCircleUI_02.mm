unint64_t sub_21BBB31A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21BE293FC();

  return sub_21BBB3554(a1, v5);
}

unint64_t sub_21BBB31E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21BE2956C();

  return sub_21BBB3628(a1, v5);
}

unint64_t sub_21BBB3230(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21BC5A934();

  return sub_21BBB36F0(a1, v4);
}

unint64_t sub_21BBB3274(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21BE29ACC();
  sub_21BC5C62C(a1);
  sub_21BE28ABC();

  v4 = sub_21BE29B0C();

  return sub_21BBB39C0(a1, v4);
}

unint64_t sub_21BBB32FC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_21BE29ACC();
  sub_21BE28ABC();

  v4 = sub_21BE29B0C();

  return sub_21BBB3ECC(a1, v4);
}

unint64_t sub_21BBB340C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21BE28A0C();
  sub_21BE29ACC();
  sub_21BE28ABC();
  v4 = sub_21BE29B0C();

  return sub_21BBB40B0(a1, v4);
}

unint64_t sub_21BBB349C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21BE2995C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21BBB3554(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21BE2940C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21BBB3628(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21BBB71DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CF04720](v9, a1);
      sub_21BBB7238(v9);
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

unint64_t sub_21BBB36F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x7069726373627573;
          }

          else
          {
            v8 = 0x646C696843726F66;
          }

          if (v7 == 1)
          {
            v9 = 0xED0000736E6F6974;
          }

          else
          {
            v9 = 0xEB000000006E6572;
          }
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x756F59726F66;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xD000000000000014;
          v9 = 0x800000021BE542B0;
        }

        else
        {
          v8 = 0x4D65726F6C707865;
          v9 = 0xEB0000000065726FLL;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x746553646C696863;
        }

        else
        {
          v8 = 0x7250797465666173;
        }

        if (v7 == 3)
        {
          v9 = 0xEA00000000007075;
        }

        else
        {
          v9 = 0xED00007963617669;
        }
      }

      v10 = 0xD000000000000014;
      if (v6 != 5)
      {
        v10 = 0x4D65726F6C707865;
      }

      v11 = 0xEB0000000065726FLL;
      if (v6 == 5)
      {
        v11 = 0x800000021BE542B0;
      }

      v12 = 0x746553646C696863;
      if (v6 != 3)
      {
        v12 = 0x7250797465666173;
      }

      v13 = 0xED00007963617669;
      if (v6 == 3)
      {
        v13 = 0xEA00000000007075;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x7069726373627573;
      if (v6 != 1)
      {
        v14 = 0x646C696843726F66;
      }

      v15 = 0xED0000736E6F6974;
      if (v6 != 1)
      {
        v15 = 0xEB000000006E6572;
      }

      if (!v6)
      {
        v14 = 0x756F59726F66;
        v15 = 0xE600000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_21BE2995C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21BBB39C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x696D694C6D6D6F63;
          v7 = 0xEE006D6574497374;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000021BE543D0;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x800000021BE543F0;
          break;
        case 4:
          v8 = 0x6E6F697461636F6CLL;
          v7 = 0xEC0000006D657449;
          break;
        case 5:
          v8 = 0xD000000000000013;
          v7 = 0x800000021BE54420;
          break;
        case 6:
          v8 = 0x69636966656E6562;
          v7 = 0xEF6D657449797261;
          break;
        case 7:
          v7 = 0xEE006D6574497375;
          v8 = 0x6C5064756F6C4369;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x6D657449656D6F68;
          break;
        case 9:
          v8 = 0xD000000000000013;
          v7 = 0x800000021BE54460;
          break;
        case 0xA:
          v8 = 0x736143656C707061;
          v7 = 0xED00006D65744968;
          break;
        case 0xB:
          v8 = 0x49746361746E6F63;
          v7 = 0xEB000000006D6574;
          break;
        case 0xC:
          v8 = 0xD000000000000012;
          v7 = 0x800000021BE54490;
          break;
        case 0xD:
          v8 = 0xD000000000000015;
          v7 = 0x800000021BE544B0;
          break;
        case 0xE:
          v8 = 0xD000000000000018;
          v7 = 0x800000021BE544D0;
          break;
        case 0xF:
          v8 = 0xD000000000000012;
          v7 = 0x800000021BE544F0;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v9 = 0xEE006D6574497374;
          if (v8 == 0x696D694C6D6D6F63)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v9 = 0x800000021BE543D0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v9 = 0x800000021BE543F0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v9 = 0xEC0000006D657449;
          if (v8 != 0x6E6F697461636F6CLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v9 = 0x800000021BE54420;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v9 = 0xEF6D657449797261;
          if (v8 != 0x69636966656E6562)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 7:
          v9 = 0xEE006D6574497375;
          if (v8 != 0x6C5064756F6C4369)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v9 = 0xE800000000000000;
          if (v8 != 0x6D657449656D6F68)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v9 = 0x800000021BE54460;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v10 = 0x736143656C707061;
          v9 = 0xED00006D65744968;
          goto LABEL_47;
        case 11:
          v9 = 0xEB000000006D6574;
          if (v8 != 0x49746361746E6F63)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v9 = 0x800000021BE54490;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v9 = 0x800000021BE544B0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v9 = 0x800000021BE544D0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v9 = 0x800000021BE544F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v10)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_49:
          v11 = sub_21BE2995C();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21BBB3ECC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v23 = v4;
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x43726F46796C6E6FLL : 0x47726F46796C6E6FLL;
      v7 = v5 == 2 ? 0xEF6E6572646C6968 : 0xEF6E616964726175;
      v8 = *(*(v22 + 48) + v4) ? 0x41726F46796C6E6FLL : 0xD000000000000010;
      v9 = v5 ? 0xEC000000746C7564 : 0x800000021BE54660;
      v10 = v5 <= 1 ? v8 : v6;
      v11 = v5 <= 1 ? v9 : v7;
      v12 = v21 == 2 ? 0x43726F46796C6E6FLL : 0x47726F46796C6E6FLL;
      v13 = v21 == 2 ? 0xEF6E6572646C6968 : 0xEF6E616964726175;
      v14 = v21 ? 0x41726F46796C6E6FLL : 0xD000000000000010;
      v15 = v21 ? 0xEC000000746C7564 : 0x800000021BE54660;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_21BE2995C();

      if (v18)
      {
        return v23;
      }

      v4 = (v23 + 1) & v20;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v23;
  }

  return v4;
}

unint64_t sub_21BBB40B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21BE28A0C();
      v9 = v8;
      if (v7 == sub_21BE28A0C() && v9 == v10)
      {
        break;
      }

      v12 = sub_21BE2995C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_21BBB41B4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB42A8;

  return v6(v2 + 32);
}

uint64_t sub_21BBB42A8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21BBB43BC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EC8;

  return v6(v2 + 16);
}

uint64_t sub_21BBB44B0(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB45A4;

  return v6(v2 + 16);
}

uint64_t sub_21BBB45A4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

id sub_21BBB46D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FAFamilySettingsViewControllerV2());

  return sub_21BBB475C(a1, a2, a3, a4, a5, a6, v12);
}

id sub_21BBB475C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v72 = a6;
  v81 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v74 = *(v75 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v70 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v79 = *(v80 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v70 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v76 = *(v77 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v18 = &v70 - v17;
  v19 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
  *&a7[v19] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v20 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  *&a7[v20] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = 0;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler] = 0;
  v21 = &a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v22 = qword_280BD79E0;
  v21[3] = type metadata accessor for FamilyCircleStore(0);
  v21[4] = &protocol witness table for FamilyCircleStore;
  *v21 = v22;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v23 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v23 = MEMORY[0x277D84FA0];
  }

  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_cancellables] = v23;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter] = 0;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController] = 0;
  a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled] = 0;
  v24 = type metadata accessor for FamilySignpost();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_timeToView] = sub_21BC84D18(0x746E6F4377656976, 0xEF3272656C6C6F72, "initToView", 10, 2);
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount] = a1;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner] = a2;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_pictureStore] = a4;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_accountManager] = a5;
  v27 = objc_allocWithZone(type metadata accessor for FAFamilyLandingPageViewModel());
  v28 = a1;
  v29 = a2;
  v30 = a4;
  v31 = a5;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_viewModel] = FAFamilyLandingPageViewModel.init(appleAccount:)(v28);
  v32 = qword_27CDD4290;
  if (qword_27CDD4290)
  {
    v33 = qword_27CDD4290;
  }

  else
  {
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    v34 = type metadata accessor for ScreenTimeConfiguration();
    memset(v83, 0, sizeof(v83));
    v84 = 0;
    v35 = [objc_allocWithZone(v34) init];
    v36 = objc_allocWithZone(type metadata accessor for LocationViewModel());
    v33 = sub_21BDD21D4(v35, &v87, v85, v83, v36);
  }

  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_locationViewModel] = v33;
  v37 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v38 = v32;
  v39 = [v37 init];
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton] = v39;
  v40 = [objc_allocWithZone(FAFamilySettingsViewControllerHelper) initWithAppleAccount:v28 grandSlamSigner:v29 familyPictureStore:v30 accountManager:v31];
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_familySettingsHelper] = v40;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] = v72;
  v71 = v30;
  v70 = v29;
  v72 = v31;
  if (qword_280BD7508 != -1)
  {
    swift_once();
  }

  v41 = qword_280BDCB60;
  v42 = [objc_allocWithZone(FAAppleCardUtilities) init];
  v43 = type metadata accessor for AppleCardStore();
  *(&v88 + 1) = v43;
  v89 = &off_282D9A530;
  *&v87 = v41;
  v44 = objc_allocWithZone(type metadata accessor for AppleCardFamilySettingsViewModel());
  v45 = __swift_mutable_project_boxed_opaque_existential_1(&v87, v43);
  v46 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = (&v70 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v48;

  v51 = sub_21BDD2ECC(v22, v42, v50, v44);

  __swift_destroy_boxed_opaque_existential_0Tm(&v87);
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCardFamilySettingsViewModel] = v51;
  v52 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v82.receiver = a7;
  v82.super_class = v52;
  v53 = objc_msgSendSuper2(&v82, sel_initWithNibName_bundle_, 0, 0);
  sub_21BB3A35C(v53 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore, &v87);
  v54 = *(&v88 + 1);
  v55 = v89;
  __swift_project_boxed_opaque_existential_1Tm(&v87, *(&v88 + 1));
  v56 = v55[4];
  v57 = v53;
  v56(v54, v55);
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = sub_21BE2635C();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v63 = v73;
  v64 = v77;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v65 = v78;
  v66 = v75;
  sub_21BE26CFC();
  (*(v74 + 8))(v63, v66);
  v67 = swift_allocObject();
  v67[2] = v62;
  v67[3] = &unk_21BE32BB0;
  v67[4] = v58;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v68 = v80;
  sub_21BE26D1C();

  (*(v79 + 8))(v65, v68);
  (*(v76 + 8))(v18, v64);
  __swift_destroy_boxed_opaque_existential_0Tm(&v87);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  return v57;
}

uint64_t sub_21BBB5114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBB515C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyLandingPageMainView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBB51C0(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBB521C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBAA7EC();
}

unint64_t sub_21BBB52D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, &v13, &qword_27CDB57D8, &qword_21BE32860);
      v5 = v13;
      v6 = v14;
      result = sub_21BBB3120(v13, v14, sub_21BBB349C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21BB414D0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21BBB541C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5888, &qword_21BE32980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5890, &qword_21BE32988);
    v8 = sub_21BE297DC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21BBA3854(v10, v6, &qword_27CDB5888, &qword_21BE32980);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21BBB3120(*v6, v13, sub_21BBB349C);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_21BE25B9C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_21BBB561C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
    v3 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21BBB31A4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_21BBB570C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController) = 0;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler) = 0;
  v3 = (v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280BD79E0;
  v3[3] = type metadata accessor for FamilyCircleStore(0);
  v3[4] = &protocol witness table for FamilyCircleStore;
  *v3 = v4;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v5 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_cancellables) = v5;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter) = 0;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController) = 0;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) = 0;
  sub_21BE2978C();
  __break(1u);
}

id sub_21BBB58B4()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_21BE289CC();
  v7 = [v5 acknowledgementNeededForPrivacyIdentifier_];

  sub_21BE2614C();
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_21BB3D81C(0xD000000000000010, 0x800000021BE56390, &v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v7;
    _os_log_impl(&dword_21BB35000, v8, v9, "%s result %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v7;
}

unint64_t sub_21BBB5AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5938, &qword_21BE32B08);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_21BBB5BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBAF20C(a1, v4, v5, v6);
}

uint64_t sub_21BBB5C70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BBAFCFC();
}

unint64_t sub_21BBB5D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, v13, &qword_27CDB5900, &qword_21BE32AB0);
      result = sub_21BBB31E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21BB414D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21BBB5E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, &v16, &qword_27CDB57E8, &qword_21BE32890);
      v5 = v16;
      v6 = v17;
      result = sub_21BBB3120(v16, v17, sub_21BBB349C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

uint64_t sub_21BBB5FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBB13C8(a1, v4, v5, v6);
}

unint64_t sub_21BBB6068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5880, &qword_21BE3BF30);
    v3 = sub_21BE297DC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_21BBB61E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_21BBB62F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E0, &qword_21BE32A78);
    v3 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_21BBB340C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21BBB63EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D8, &qword_21BE329E8);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_21BBB3230(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21BBB650C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_21BBB6600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E8, &qword_21BE32A80);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21BBB6718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5908, &qword_21BE32AB8);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21BBB686C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C8, &qword_21BE329C0);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21BBB6984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58B8, &qword_21BE329B0);
    v3 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21BBB31A4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21BBB6A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5878, &unk_21BE32970);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21BBB6B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C0, &qword_21BE329B8);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21BBB6CBC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_21BE297DC();
    v10 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_21BBB340C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_21BB414D0(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

void _s14FamilyCircleUI32FAFamilySettingsViewControllerV2C23didTapAddRemoteGuardian3forySo0D6MemberC_tF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "Attempting to Remote family guardian", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v15 = sub_21BE28DAC();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_21BE28D7C();
  v16 = v1;
  v17 = v14;
  v18 = sub_21BE28D6C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = v17;
  sub_21BBA962C(0, 0, v5, &unk_21BE32AC8, v19);
}

uint64_t sub_21BBB728C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB44B0(a1, v5);
}

uint64_t sub_21BBB7344()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBB2B4C();
}

uint64_t sub_21BBB73F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB2020(v2, v3, v5, v4);
}

uint64_t sub_21BBB74B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BDC4DC0(v2, v3, v5);
}

uint64_t sub_21BBB7570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BDC4EA8(a1, v4, v5, v7);
}

uint64_t sub_21BBB763C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBAED34(v2, v3, v4, v5, v6);
}

uint64_t sub_21BBB7704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBAD5A4(v2, v3, v4);
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BBB77F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBA8948();
}

uint64_t sub_21BBB78D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB41B4(a1, v5);
}

uint64_t sub_21BBB798C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BBB22FC(a1, v4, v5, v7, v6);
}

uint64_t sub_21BBB7A4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB43BC(a1, v5);
}

void sub_21BBB7B10()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21BBB1A34(v0 + v2, v3);
}

void sub_21BBB7BA8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_21BBB1AF8(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BBB7CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBB2C4C(a1, v4, v5, v6);
}

uint64_t sub_21BBB7D84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21BBB7DEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BBA7464(a1, v1);
}

uint64_t sub_21BBB7ED0(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_21BE26A4C();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BBB7F94, 0, 0);
}

uint64_t sub_21BBB7F94()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[36] = v3;
  v4 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[37] = v4;
  v0[22] = sub_21BBB8754;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_0;
  v5 = _Block_copy(v0 + 18);
  [v4 setPresentationHandler_];
  _Block_release(v5);
  v6 = [*(v1 + 16) me];
  v0[38] = v6;
  [v4 setPresentationType_];
  [v4 setModalPresentationStyle_];
  v7 = sub_21BBB6068(MEMORY[0x277D84F90]);
  v0[27] = v7;
  v8 = v0 + 27;
  if (v6)
  {
    v9 = v6;
    v10 = [v9 dsid];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 stringValue];

      v13 = sub_21BE28A0C();
      v15 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21BC7F9A8(v13, v15, 0x64497265626D656DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      *v8 = v7;
    }

    v17 = [v9 altDSID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21BE28A0C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_21BD400D8(v19, v21, 0x44495344746C61, 0xE700000000000000);

    v7 = *v8;
  }

  v22 = v0[31];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_21BC7F9A8(0x6843796C696D6146, 0xEF7473696C6B6365, 0x6574736575716572, 0xE900000000000072, v23);
  sub_21BCA2A64(v7);

  v24 = sub_21BE288EC();

  [v3 setAdditionalParameters_];

  v25 = sub_21BE25B2C();
  [v3 setUrlForContext_];

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_21BBB83CC;
  v26 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_4;
  v0[14] = v26;
  [v4 performWithContext:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BBB83CC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BBB84AC, 0, 0);
}

uint64_t sub_21BBB84AC()
{
  v35 = v0;
  v1 = *(v0 + 224);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 280);
    sub_21BE2614C();
    v5 = v3;
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FFC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 296);
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 264);
    v13 = *(v0 + 272);
    if (v8)
    {
      v33 = *(v0 + 304);
      v32 = *(v0 + 288);
      v14 = swift_slowAlloc();
      v30 = v9;
      v15 = swift_slowAlloc();
      v34 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v31 = v10;
      v17 = *(v0 + 192);
      v16 = *(v0 + 200);
      v18 = *(v0 + 208);
      v19 = sub_21BE29A5C();
      v29 = v12;
      v21 = sub_21BB3D81C(v19, v20, &v34);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_21BB35000, v6, v7, "Error loading stateController for family shared services: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);

      (*(v13 + 8))(v31, v29);
    }

    else
    {

      (*(v13 + 8))(v10, v12);
    }
  }

  else
  {
    v22 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4E90 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 288);
    [v22 postNotificationName:qword_27CDB7E40 object:0];
  }

  v26 = *(v0 + 280);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_21BBB8754()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "iCloud Plus Presented", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BBB8888()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BBB8910(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8A28;

  return v9(a1, a2);
}

uint64_t sub_21BBB8A28(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21BBB8B24(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8C3C;

  return v9(a1, a2);
}

uint64_t sub_21BBB8C3C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for SidebarItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SidebarItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BBB8E90()
{
  result = qword_27CDB59A0;
  if (!qword_27CDB59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB59A0);
  }

  return result;
}

uint64_t _s14FamilyCircleUI20AgeRangeSettingsViewO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BBB8F2C()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BBB8F70()
{
  if (*v0)
  {
    result = 1701669236;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_21BBB8F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_21BE2995C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();

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

uint64_t sub_21BBB9078(uint64_t a1)
{
  v2 = sub_21BBBEB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BBB90B4(uint64_t a1)
{
  v2 = sub_21BBBEB98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BBB90F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A18, &qword_21BE32F80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BBBEB98();
  sub_21BE29B6C();
  v10[15] = 0;
  sub_21BE298DC();
  if (!v1)
  {
    v10[14] = 1;
    sub_21BE298EC();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_21BBB928C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_21BBBE120(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_21BBB92BC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_21BBB90F0(a1);
}

uint64_t sub_21BBB9320(const char *a1)
{
  v3 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v3 synchronize];
  sub_21BE261BC();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_21BB35000, v10, v11, a1, v12, 8u);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21BBB9480()
{
  v1 = [*v0 dictionaryRepresentation];
  v2 = sub_21BE2890C();

  return v2;
}

double sub_21BBB9518@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_21BE289CC();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_21BE294BC();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_21BBB95B0(uint64_t a1)
{
  sub_21BBBEBEC(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_21BE2994C();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_21BE289CC();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_21BBB9710()
{
  sub_21BBBB4C4(v6);
  sub_21BB3A35C(v6, v5);
  v0 = type metadata accessor for ChecklistUserPreferences();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_21BBBAF18(v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
  off_27CDB59A8 = v3;
  return result;
}

uint64_t static ChecklistUserPreferences.shared.getter()
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ChecklistUserPreferences.shared.setter(void *a1)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CDB59A8 = a1;
}

uint64_t (*static ChecklistUserPreferences.shared.modify())()
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21BBB98F8@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27CDB59A8;
}

uint64_t sub_21BBB9978(void **a1)
{
  v1 = *a1;
  v2 = qword_27CDB4E20;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CDB59A8 = v1;
}

uint64_t sub_21BBB9A00()
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_21BBB9A88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21BBB9B18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F0C();
}

uint64_t sub_21BBB9BB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
}

uint64_t sub_21BBB9C1C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BB3A35C(v1 + 56, a1);
}

uint64_t sub_21BBB9CAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BB3A35C(v3 + 56, a2);
}

uint64_t sub_21BBB9D3C(uint64_t a1, uint64_t *a2)
{
  sub_21BB3A35C(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F0C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t sub_21BBB9DEC(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + 56));
  sub_21BB3D104(v4, a1 + 56);
  return swift_endAccess();
}

uint64_t sub_21BBB9E5C()
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  return *(v0 + 96);
}

uint64_t sub_21BBB9ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_21BBB9F6C(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBBC1D0();
    sub_21BE25F0C();
  }

  return result;
}

void *ChecklistUserPreferences.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI24ChecklistUserPreferences___observationRegistrar;
  v6 = sub_21BE25F5C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t ChecklistUserPreferences.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI24ChecklistUserPreferences___observationRegistrar;
  v6 = sub_21BE25F5C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BBBA200()
{
  v82 = sub_21BE26A4C();
  v1 = *(v82 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v82);
  v85 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v92 = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, &v92);
  v4 = *(&v93 + 1);
  v5 = v94;
  __swift_project_boxed_opaque_existential_1Tm(&v92, *(&v93 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v81 = "handleChange(notification:)";
  v80 = (v1 + 8);

  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  *(&v15 + 1) = 2;
  v79 = xmmword_21BE32770;
  *&v15 = 136315138;
  v78 = v15;
  for (i = v10; v9; v13 = v88)
  {
    v87 = v14;
LABEL_9:
    v17 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v6 + 16);

    v88 = v13;
    if (v20 && (v21 = sub_21BBB3108(v19, v18), (v22 & 1) != 0) && (sub_21BB3DCD4(*(v6 + 56) + 32 * v21, &v92), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800), (swift_dynamicCast() & 1) != 0))
    {
      *&v92 = v90;
      sub_21BBBF03C();
      v23 = sub_21BE2897C();
      v25 = v24;

      *&v92 = v19;
      *(&v92 + 1) = v18;
      MEMORY[0x21CF03CA0](1528839456, 0xE400000000000000);
      MEMORY[0x21CF03CA0](v23, v25);

      MEMORY[0x21CF03CA0](93, 0xE100000000000000);
    }

    else
    {
      if (!*(v6 + 16) || (v26 = sub_21BBB3108(v19, v18), (v27 & 1) == 0) || (sub_21BB3DCD4(*(v6 + 56) + 32 * v26, &v92), (swift_dynamicCast() & 1) == 0))
      {
        if (*(v6 + 16))
        {
          v33 = sub_21BBB3108(v19, v18);
          if (v34)
          {
            sub_21BB3DCD4(*(v6 + 56) + 32 * v33, &v92);
            if (swift_dynamicCast())
            {
              v35 = v90;
              v36 = v91;
              v37 = sub_21BE2578C();
              v38 = *(v37 + 48);
              v39 = *(v37 + 52);
              swift_allocObject();
              sub_21BBBEE74(v35, v36);
              sub_21BE2577C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA8, &qword_21BE33020);
              sub_21BBBEE74(v35, v36);
              sub_21BBBEEC8(&qword_27CDB5AC8, sub_21BBBEF40);
              v83 = v36;
              v84 = v35;
              v40 = v88;
              sub_21BE2576C();
              v88 = v40;
              if (v40)
              {

                sub_21BBBEF94(v84, v83);
                sub_21BE261BC();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
                v41 = swift_allocObject();
                *(v41 + 16) = v79;
                swift_getErrorValue();
                v77 = v89;
                v42 = v40;
                v43 = v40;
                v44 = sub_21BE29A5C();
                v46 = v45;
                *(v41 + 56) = MEMORY[0x277D837D0];
                *(v41 + 64) = sub_21BBBEFE8();
                *(v41 + 32) = v44;
                *(v41 + 40) = v46;
                v47 = sub_21BE28A2C();
                v49 = v48;
                v50 = sub_21BE26A2C();
                v51 = sub_21BE28FDC();
                if (os_log_type_enabled(v50, v51))
                {
                  v52 = swift_slowAlloc();
                  v77 = v50;
                  v53 = v49;
                  v54 = v52;
                  v55 = swift_slowAlloc();
                  v56 = v47;
                  v57 = v55;
                  *&v92 = v55;
                  *v54 = v78;
                  v76 = sub_21BB3D81C(v56, v53, &v92);

                  *(v54 + 4) = v76;
                  v58 = v77;
                  _os_log_impl(&dword_21BB35000, v77, v51, "%s", v54, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v57);
                  MEMORY[0x21CF05C50](v57, -1, -1);
                  MEMORY[0x21CF05C50](v54, -1, -1);

                  v59 = v88;
                }

                else
                {

                  v59 = v88;
                }

                sub_21BBBEF94(v84, v83);
                (*v80)(v85, v82);
                v88 = 0;
                v70 = MEMORY[0x277D84F90];
              }

              else
              {

                v68 = v83;
                v69 = v84;
                sub_21BBBEF94(v84, v83);
                sub_21BBBEF94(v69, v68);
                v70 = v92;
              }

              *&v92 = v19;
              *(&v92 + 1) = v18;
              MEMORY[0x21CF03CA0](2112800, 0xE300000000000000);
              v71 = MEMORY[0x21CF03DF0](v70, &type metadata for DismissedChecklistItem);
              v73 = v72;

              MEMORY[0x21CF03CA0](v71, v73);

              v32 = *(&v92 + 1);
              v31 = v92;
              v14 = v87;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_21BBBC990(0, *(v14 + 2) + 1, 1, v14);
              }

              v10 = i;
              v65 = *(v14 + 2);
              v74 = *(v14 + 3);
              v66 = v65 + 1;
              if (v65 >= v74 >> 1)
              {
                v14 = sub_21BBBC990((v74 > 1), v65 + 1, 1, v14);
              }

              result = sub_21BBBEF94(v84, v83);
              goto LABEL_41;
            }
          }
        }

        v90 = v19;
        v91 = v18;

        MEMORY[0x21CF03CA0](2112800, 0xE300000000000000);
        if (*(v6 + 16))
        {
          v60 = sub_21BBB3108(v19, v18);
          v62 = v61;

          if (v62)
          {
            sub_21BB3DCD4(*(v6 + 56) + 32 * v60, &v92);
            goto LABEL_37;
          }
        }

        else
        {
        }

        v92 = 0u;
        v93 = 0u;
LABEL_37:
        v10 = i;
        v14 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5940, &unk_21BE32B10);
        v63 = sub_21BE28A5C();
        MEMORY[0x21CF03CA0](v63);

        v31 = v90;
        v32 = v91;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21BBBC990(0, *(v14 + 2) + 1, 1, v14);
          v14 = result;
        }

        goto LABEL_39;
      }

      v28 = v90;
      *&v92 = v19;
      *(&v92 + 1) = v18;
      MEMORY[0x21CF03CA0](2112800, 0xE300000000000000);
      if (v28)
      {
        v29 = 1702195828;
      }

      else
      {
        v29 = 0x65736C6166;
      }

      if (v28)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      MEMORY[0x21CF03CA0](v29, v30);
    }

    v32 = *(&v92 + 1);
    v31 = v92;
    v14 = v87;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BBBC990(0, *(v14 + 2) + 1, 1, v14);
      v14 = result;
    }

    v10 = i;
LABEL_39:
    v65 = *(v14 + 2);
    v64 = *(v14 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_21BBBC990((v64 > 1), v65 + 1, 1, v14);
      v14 = result;
    }

LABEL_41:
    v9 &= v9 - 1;
    *(v14 + 2) = v66;
    v67 = &v14[16 * v65];
    *(v67 + 4) = v31;
    *(v67 + 5) = v32;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      *&v92 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
      sub_21BBBF03C();
      v75 = sub_21BE2897C();

      return v75;
    }

    v9 = *(v6 + 64 + 8 * v16);
    ++v12;
    if (v9)
    {
      v87 = v14;
      v12 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BBBABA0()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v17[0] = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, v17);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  (*(v7 + 24))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  sub_21BBBBD44();
  sub_21BE261BC();

  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_21BB3D81C(0xD00000000000001BLL, 0x800000021BE566B0, v17);
    *(v10 + 12) = 2080;
    v12 = sub_21BBBA200();
    v14 = sub_21BB3D81C(v12, v13, v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_21BB35000, v8, v9, "%s KeyStore on handleChange: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_21BBBAF18(uint64_t *a1)
{
  v2 = v1;
  v4 = 5789784;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 96) = 0;
  sub_21BE25F4C();
  sub_21BB3A35C(a1, v1 + 56);
  v5 = [objc_opt_self() defaultStore];
  if (v5 && (v6 = v5, v7 = [v5 aa_primaryAppleAccount], v6, v7) && (v8 = objc_msgSend(v7, sel_aa_altDSID), v7, v8))
  {
    v4 = sub_21BE28A0C();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  v37 = a1;
  if ((*(v12 + 16))(v11, v12))
  {

    v4 = 0;
    v10 = 0xE000000000000000;
  }

  v39[1] = 0x800000021BE56700;
  MEMORY[0x21CF03CA0](v4, v10);

  v2[2] = 0xD00000000000001DLL;
  v2[3] = 0x800000021BE56700;
  v2[4] = 0xD000000000000028;
  v2[5] = 0x800000021BE56720;
  swift_getKeyPath();
  v39[0] = v2;
  sub_21BBBC1D0();

  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C((v2 + 7), v39);
  v13 = v40;
  v14 = v41;
  __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  v15 = (*(v14 + 16))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  if (v15)
  {

    v16 = [objc_opt_self() defaultCenter];
    v17 = *MEMORY[0x277CCA7C0];
    swift_getKeyPath();
    v39[0] = v2;

    sub_21BE25F1C();

    sub_21BB3A35C((v2 + 7), v39);
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v18 = sub_21BE2994C();
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    [v16 addObserver:v2 selector:sel_handleChangeWithNotification_ name:v17 object:v18];

    swift_unknownObjectRelease();
LABEL_27:
    swift_getKeyPath();
    v39[0] = v2;
    sub_21BE25F1C();

    sub_21BB3A35C((v2 + 7), v39);
    v35 = v40;
    v36 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    (*(v36 + 24))(v35, v36);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    sub_21BBBBD44();
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    return v2;
  }

  else
  {
    swift_getKeyPath();
    v39[0] = v2;
    sub_21BE25F1C();

    sub_21BB3A35C((v2 + 7), v39);
    v19 = v40;
    v20 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    result = (*(v20 + 8))(v19, v20);
    v22 = 0;
    v23 = result + 64;
    v38 = result;
    v24 = 1 << *(result + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(result + 64);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_19:
      v29 = (*(v38 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v26)))));
      v31 = *v29;
      v30 = v29[1];
      sub_21BBBF0E4();
      sub_21BBBF138();

      if (sub_21BE2896C())
      {
        v32 = v31 == 0xD00000000000001DLL && v30 == 0x800000021BE56700;
        if (!v32 && (sub_21BE2995C() & 1) == 0)
        {
          v33 = v40;
          v34 = v41;
          __swift_project_boxed_opaque_existential_1Tm(v39, v40);
          (*(v34 + 56))(v31, v30, v33, v34);
        }
      }

      v26 &= v26 - 1;
    }

    while (1)
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        goto LABEL_27;
      }

      v26 = *(v23 + 8 * v28);
      ++v22;
      if (v26)
      {
        v22 = v28;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_21BBBB4C4@<X0>(void *a1@<X8>)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  sub_21BE25F9C();
  v10 = sub_21BE263AC();

  if (v10)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    result = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
    v13 = &off_282D88250;
LABEL_7:
    a1[3] = result;
    a1[4] = v13;
    goto LABEL_8;
  }

  v14 = [objc_opt_self() keyStoreForChecklist];
  if (v14)
  {
    v11 = v14;
    sub_21BBB9320("NSUbiquitousKeyValueStore syncWithStore (keystore) %{BOOL}d");
    sub_21BE261BC();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "ClientPreferencesProvider created", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    result = sub_21BB3A2A4(0, &qword_27CDB5B00, 0x277CCAD80);
    v13 = &off_282D88210;
    goto LABEL_7;
  }

  sub_21BE261BC();
  v18 = sub_21BE26A2C();
  v19 = sub_21BE28FDC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21BB35000, v18, v19, "Failed to create synchronizing store! Fallback to UserDefaults", v20, 2u);
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  if (qword_280BD8A50 != -1)
  {
    swift_once();
  }

  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_21BE289CC();
  v11 = [v21 initWithSuiteName_];

  result = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
  a1[3] = result;
  a1[4] = &off_282D88250;
  if (!v11)
  {
    result = [objc_opt_self() standardUserDefaults];
    v11 = result;
  }

LABEL_8:
  *a1 = v11;
  return result;
}

uint64_t sub_21BBBB83C()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v34[0] = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, v34);
  v5 = v35;
  v6 = v36;
  v28[1] = __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  swift_getKeyPath();
  v32[0] = v0;
  sub_21BE25F1C();

  swift_beginAccess();
  v7 = *(v0 + 48);
  v8 = sub_21BE257BC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  sub_21BE257AC();
  v32[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA8, &qword_21BE33020);
  sub_21BBBEEC8(&qword_27CDB5AB0, sub_21BBBEE20);
  v11 = sub_21BE2579C();
  v13 = v12;

  v33 = MEMORY[0x277CC9318];
  v32[0] = v11;
  v32[1] = v13;
  (*(v6 + 48))(v32, v1[2], v1[3], v5, v6);
  sub_21BBBC274(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  swift_getKeyPath();
  v34[0] = v0;
  sub_21BE25F1C();

  sub_21BB3A35C(v0 + 56, v34);
  v14 = v35;
  v15 = v36;
  __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  swift_getKeyPath();
  v32[0] = v0;
  sub_21BE25F1C();

  v16 = *(v0 + 96);
  v33 = MEMORY[0x277D839B0];
  LOBYTE(v32[0]) = v16;
  (*(v15 + 48))(v32, v1[4], v1[5], v14, v15);
  sub_21BBBC274(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  swift_getKeyPath();
  v34[0] = v0;
  sub_21BE25F1C();

  sub_21BB3A35C(v0 + 56, v34);
  v17 = v35;
  v18 = v36;
  __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  (*(v18 + 24))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  v19 = v29;
  sub_21BE261BC();

  v20 = sub_21BE26A2C();
  v21 = sub_21BE28FCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_21BB3D81C(0x74536F5465766173, 0xED0000292865726FLL, v34);
    *(v22 + 12) = 2080;
    v24 = sub_21BBBA200();
    v26 = sub_21BB3D81C(v24, v25, v34);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_21BB35000, v20, v21, "%s KeyStore updated: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v23, -1, -1);
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  return (*(v30 + 8))(v19, v31);
}

uint64_t sub_21BBBBD44()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v33[0] = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, v30);
  v6 = v31;
  v7 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  (*(v7 + 32))(v33, *(v1 + 16), *(v1 + 24), v6, v7);
  if (v33[3])
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v28;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v29;
    }

    else
    {
      v10 = 0xF000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    sub_21BBBC274(v33);
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = sub_21BBBE2FC(v9, v10);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v25 - 2) = v1;
  *(&v25 - 1) = v11;
  v30[0] = v1;
  sub_21BE25F0C();

  swift_getKeyPath();
  v30[0] = v1;
  sub_21BE25F1C();

  sub_21BB3A35C(v1 + 56, v30);
  v13 = v31;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v15 = (*(v14 + 40))(*(v1 + 32), *(v1 + 40), v13, v14) & 1;
  if (v15 == *(v1 + 96))
  {
    *(v1 + 96) = v15;
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    *(&v25 - 2) = v1;
    *(&v25 - 8) = v15;
    v33[0] = v1;
    sub_21BE25F0C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  sub_21BE261BC();

  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FCC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE565F0, v30);
    *(v19 + 12) = 2080;
    v21 = sub_21BBBA200();
    v23 = sub_21BB3D81C(v21, v22, v30);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_21BB35000, v17, v18, "%s KeyStore refreshed: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v20, -1, -1);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  return (*(v26 + 8))(v5, v27);
}

unint64_t sub_21BBBC1D0()
{
  result = qword_27CDB59B8;
  if (!qword_27CDB59B8)
  {
    type metadata accessor for ChecklistUserPreferences();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB59B8);
  }

  return result;
}

uint64_t type metadata accessor for ChecklistUserPreferences()
{
  result = qword_27CDB59C0;
  if (!qword_27CDB59C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBBC274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5940, &unk_21BE32B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBBC2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21BE25D0C();
  sub_21BE25C2C();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  v20 = v3;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  v20 = v3;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  v13 = *(v3 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 48) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_21BBBCA9C(0, *(v13 + 2) + 1, 1, v13);
    *(v3 + 48) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_21BBBCA9C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  *(v17 + 6) = v12;
  *(v3 + 48) = v13;
  swift_endAccess();
  v20 = v3;
  swift_getKeyPath();
  sub_21BE25F2C();

  return sub_21BBBB83C();
}

uint64_t sub_21BBBC518(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21BBBC1D0();

  sub_21BE25F1C();

  v8 = v2;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  v5 = sub_21BBBE5E4((v2 + 48), a1, a2);

  v7 = *(*(v8 + 48) + 16);
  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_21BBBED48(v5, v7, sub_21BBBCA9C, sub_21BBBE788);
    swift_endAccess();
    swift_getKeyPath();
    sub_21BE25F2C();

    return sub_21BBBB83C();
  }

  return result;
}

BOOL sub_21BBBC694(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 3;
  }

  while ((sub_21BE2995C() & 1) == 0);
  return v7 != 0;
}

uint64_t sub_21BBBC76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  v7 = *(v3 + 48);
  v8 = (v7 + 48);
  v9 = *(v7 + 16) + 1;
  while (--v9)
  {
    v10 = *v8;
    if (*(v8 - 2) != a1 || *(v8 - 1) != a2)
    {
      v8 += 3;
      if ((sub_21BE2995C() & 1) == 0)
      {
        continue;
      }
    }

    sub_21BE25C1C();
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:
  v13 = sub_21BE25D1C();
  return (*(*(v13 - 8) + 56))(a3, v12, 1, v13);
}

uint64_t sub_21BBBC8A4(char a1)
{
  if (*(v1 + 96) == (a1 & 1))
  {
    *(v1 + 96) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBBC1D0();
    sub_21BE25F0C();
  }

  return sub_21BBBB83C();
}

char *sub_21BBBC990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
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

char *sub_21BBBCA9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AC0, &qword_21BE33028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBCBFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59D8, &qword_21BE32F48);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21BBBCD50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_21BBBCE60(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21BBBCF94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F0, &qword_21BE32F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA0, &qword_21BE33018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD1F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A58, &qword_21BE32FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD32C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_21BBBD448(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E0, &unk_21BE32F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD590(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A48, &qword_21BE390A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD6B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A40, &unk_21BE32FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD7F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A98, &qword_21BE33010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD93C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59D0, &qword_21BE32F38);
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

char *sub_21BBBDA48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A38, &unk_21BE32FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBDB64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A30, &qword_21BE32F98);
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

char *sub_21BBBDC70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A28, &qword_21BE32F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21BBBDDBC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21BBBDFC0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21BB3D81C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_21BBBE01C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AE8, &qword_21BE33040);
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

_BYTE **sub_21BBBE110(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

double sub_21BBBE120(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A08, &qword_21BE32F78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BBBEB98();
  sub_21BE29B4C();
  if (!v1)
  {
    v14 = 0;
    sub_21BE2986C();
    v13 = 1;
    sub_21BE2988C();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_21BBBE2FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_21BE2578C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_21BE2577C();
  if (a2 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA8, &qword_21BE33020);
  sub_21BBBF0A0(a1, a2);
  sub_21BBBEEC8(&qword_27CDB5AC8, sub_21BBBEF40);
  sub_21BE2576C();

  sub_21BBBF0B4(a1, a2);
  sub_21BBBEF94(v9, v10);
  return v12;
}

uint64_t sub_21BBBE544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 3)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_21BE2995C() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_21BBBE5E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_21BBBE544(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 24 * result;
    while (v10 < v11)
    {
      v15 = *(v6 + v12 + 56);
      v16 = *(v6 + v12 + 64);
      if (v15 != a2 || v16 != a3)
      {
        v18 = *(v6 + v12 + 56);
        v19 = *(v6 + v12 + 64);
        result = sub_21BE2995C();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v20 = (v6 + 32 + 24 * v9);
            v21 = v20[1];
            v26 = *v20;
            v22 = v20[2];
            v23 = *(v6 + v12 + 72);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21BD93808(v6);
            }

            v24 = (v6 + 24 * v9);
            v25 = v24[5];
            v24[4] = v15;
            v24[5] = v16;
            v24[6] = v23;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = (v6 + v12);
            v14 = *(v6 + v12 + 64);
            v13[7] = v26;
            v13[8] = v21;
            v13[9] = v22;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 24;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21BBBE788(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBBE920()
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BBBEB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21BBBEB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BBBEB98()
{
  result = qword_27CDB5A10;
  if (!qword_27CDB5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5A10);
  }

  return result;
}

uint64_t sub_21BBBEBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5940, &unk_21BE32B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBBEC5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBBED48(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_21BBBEE20()
{
  result = qword_27CDB5AB8;
  if (!qword_27CDB5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5AB8);
  }

  return result;
}

uint64_t sub_21BBBEE74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21BBBEEC8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5AA8, &qword_21BE33020);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BBBEF40()
{
  result = qword_27CDB5AD0;
  if (!qword_27CDB5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5AD0);
  }

  return result;
}

uint64_t sub_21BBBEF94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21BBBEFE8()
{
  result = qword_280BD69C8;
  if (!qword_280BD69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD69C8);
  }

  return result;
}

unint64_t sub_21BBBF03C()
{
  result = qword_27CDB5AE0;
  if (!qword_27CDB5AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6EF0, &unk_21BE33800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5AE0);
  }

  return result;
}

uint64_t sub_21BBBF0A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21BBBEE74(a1, a2);
  }

  return a1;
}

uint64_t sub_21BBBF0B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21BBBEF94(a1, a2);
  }

  return a1;
}

unint64_t sub_21BBBF0E4()
{
  result = qword_27CDB5AF0;
  if (!qword_27CDB5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5AF0);
  }

  return result;
}

unint64_t sub_21BBBF138()
{
  result = qword_27CDB5AF8;
  if (!qword_27CDB5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DismissedChecklistItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DismissedChecklistItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BBBF2E0()
{
  result = qword_27CDB5B08;
  if (!qword_27CDB5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5B08);
  }

  return result;
}

unint64_t sub_21BBBF338()
{
  result = qword_27CDB5B10;
  if (!qword_27CDB5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5B10);
  }

  return result;
}

unint64_t sub_21BBBF390()
{
  result = qword_27CDB5B18;
  if (!qword_27CDB5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5B18);
  }

  return result;
}

unint64_t sub_21BBBF3E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21BBBF50C(uint64_t a1)
{
  v1 = *(a1 + 232);
  sub_21BE28CBC();
  result = sub_21BE26CCC();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BBBF5B8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v4;
}

uint64_t sub_21BBBF678()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  return sub_21BE26CBC();
}

void sub_21BBBF738()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  sub_21BE28CBC();
  v4 = sub_21BE26CCC();
  (*(*(v4 - 8) + 8))(&v0[v2], v4);
  v5 = *&v0[*((*v1 & *v0) + 0x100)];
}

id sub_21BBBF808()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  [*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x100)) removeAccountChangeObserver_];
  v3 = *((v2 & v1) + 0xE8);
  v4 = *((v2 & v1) + 0xF0);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ICloudDependentChecklistItemProvider();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_21BBBF8D8(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0xF8);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xE8);
  sub_21BE28CBC();
  v5 = sub_21BE26CCC();
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  v6 = *&a1[*((*v2 & *a1) + 0x100)];
}

uint64_t sub_21BBBF9AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = v0;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE33200, v8);
}

uint64_t sub_21BBBFAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *MEMORY[0x277D85000];
  v4[2] = sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v4[4] = v7;
  v8 = *((v6 & v5) + 0xE8);
  v9 = *((v6 & v5) + 0xF0);
  v10 = type metadata accessor for ICloudDependentChecklistItemProvider();
  WitnessTable = swift_getWitnessTable();
  *v7 = v4;
  v7[1] = sub_21BBAFDA8;

  return sub_21BBE6BBC(v10, WitnessTable);
}

void sub_21BBBFBF0(void *a1)
{
  v1 = a1;
  sub_21BBBF9AC();
}

uint64_t sub_21BBBFC58(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBBFCB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBBFAD0(a1, v4, v5, v6);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BBBFD8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21BBBFDD4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21BBBFE50()
{
  v0 = sub_21BE278CC();
  __swift_allocate_value_buffer(v0, qword_27CDB5BA8);
  __swift_project_value_buffer(v0, qword_27CDB5BA8);
  return sub_21BE278AC();
}

uint64_t sub_21BBBFE9C()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v11, &qword_27CDB5C50, &qword_21BE33490);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BBBFFF8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = swift_allocBox();
  sub_21BBBFE9C();
  type metadata accessor for ChecklistStateVars();
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE2864C();
  v4 = *(v1 + 9);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  if ((v4 & 0x100) != 0)
  {
    v23 = sub_21BE2599C();
    v25 = v24;

    v26 = [v6 bundleForClass_];
    v27 = sub_21BE2599C();
    v29 = v28;

    *&v57 = v27;
    *(&v57 + 1) = v29;
    v30 = sub_21BE28B8C();
    v32 = v31;
    v33 = sub_21BBC77E8();
    v54 = &type metadata for FamilyMessageItemDataItem;
    v55 = sub_21BBC7914();
    v56 = 0;
    v53 = v4;
    v43 = v23;
    v44 = v25;
    v45 = 0;
    v46 = 0;
    v47 = v30;
    v48 = v32;
    v49 = v33;
    v50 = sub_21BBC78E4;
    v51 = v3;
    v52 = 0;
    sub_21BBC7A18(&v43, v41);
    v42 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();

    sub_21BE2784C();
    sub_21BBC7A74(&v43);
  }

  else
  {
    v8 = sub_21BE2599C();
    v39 = v9;
    v40 = v8;

    v10 = [v6 &selRef:ObjCClassFromMetadata :0x800000021BE567E0 launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    v11 = sub_21BE2599C();
    v13 = v12;

    *&v57 = v11;
    *(&v57 + 1) = v13;
    v14 = sub_21BE28B8C();
    v16 = v15;
    v17 = sub_21BBC77E8();
    v18 = v3;

    v19 = [v6 bundleForClass_];
    v20 = sub_21BE2599C();
    v22 = v21;

    v54 = &type metadata for FamilyMessageItemDataItem;
    v55 = sub_21BBC7914();
    v56 = 0;
    v53 = v4;
    v43 = v40;
    v44 = v39;
    v45 = v14;
    v46 = v16;
    v47 = v17;
    v48 = sub_21BBC78E4;
    v49 = v18;
    v50 = v20;
    v51 = v22;
    v52 = 0;
    sub_21BBC7968(&v43, v41);
    v42 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    sub_21BBC79C4(&v43);
  }

  v34 = v64;
  *(a1 + 96) = v63;
  *(a1 + 112) = v34;
  *(a1 + 128) = v65;
  v35 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v35;
  v36 = v62;
  *(a1 + 64) = v61;
  *(a1 + 80) = v36;
  v37 = v58;
  *a1 = v57;
  *(a1 + 16) = v37;
}

uint64_t sub_21BBC04C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 26) == 1)
  {
    *(v6 + 26) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BBC06C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC8, &qword_21BE33388);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38[0] = v38 - v12;
  v13 = swift_allocBox();
  v15 = v14;
  sub_21BBBFE9C();
  type metadata accessor for ChecklistStateVars();
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE2864C();
  sub_21BBBFFF8(v42);
  (*(v4 + 16))(v8, v15, v3);
  sub_21BE2863C();
  v16 = *(v4 + 8);
  v16(v8, v3);
  swift_getKeyPath();
  sub_21BE2865C();

  v16(v10, v3);
  v17 = swift_allocObject();
  v18 = v1[1];
  *(v17 + 16) = *v1;
  *(v17 + 32) = v18;
  v19 = v1[3];
  *(v17 + 48) = v1[2];
  *(v17 + 64) = v19;
  *(v17 + 80) = v13;
  sub_21BBC2410(v1, v41);
  v38[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BD0, &qword_21BE3E310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BD8, &qword_21BE333C0);
  sub_21BBC2448();
  sub_21BB3B038(&qword_27CDB5BF8, &qword_27CDB5BD8, &qword_21BE333C0);
  v20 = v38[0];
  sub_21BE2812C();

  sub_21BB3A4CC(v42, &qword_27CDB5BD0, &qword_21BE3E310);
  v21 = swift_allocObject();
  v22 = v1[1];
  *(v21 + 1) = *v1;
  *(v21 + 2) = v22;
  v23 = v1[3];
  *(v21 + 3) = v1[2];
  *(v21 + 4) = v23;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C00, &qword_21BE333C8) + 36);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21BBC2410(v1, v42);
  v26 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v27 = type metadata accessor for ActiveStateChange(0);
  v28 = (v20 + v24 + *(v27 + 20));
  *v28 = sub_21BBC257C;
  v28[1] = v21;
  v29 = (v20 + v24 + *(v27 + 24));
  *v29 = 0xD000000000000030;
  v29[1] = 0x800000021BE56780;
  v30 = swift_allocObject();
  v31 = v2[1];
  *(v30 + 1) = *v2;
  *(v30 + 2) = v31;
  v32 = v2[3];
  *(v30 + 3) = v2[2];
  *(v30 + 4) = v32;
  v33 = (v20 + *(v39 + 36));
  *v33 = sub_21BBC7100;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  v41[0] = v2[3];
  sub_21BBC2410(v2, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  LOBYTE(v41[0]) = v42[0];
  v34 = swift_allocObject();
  v35 = v2[1];
  v34[1] = *v2;
  v34[2] = v35;
  v36 = v2[3];
  v34[3] = v2[2];
  v34[4] = v36;
  sub_21BBC2410(v2, v42);
  sub_21BBC7140();
  sub_21BE281BC();

  sub_21BB3A4CC(v20, &qword_27CDB5BC8, &qword_21BE33388);
}

uint64_t sub_21BBC0CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C20, &qword_21BE33458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5C28, &unk_21BE33460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BBC75DC();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

uint64_t sub_21BBC0E28@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  v20[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C28, &unk_21BE33460);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v24 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v9 = v21;
  v10 = v22;
  v11 = v23;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BBC7324(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);

  *&v24 = sub_21BE270CC();
  *(&v24 + 1) = v12;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v13 = swift_allocObject();
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v15 = a1[3];
  v13[3] = a1[2];
  v13[4] = v15;
  sub_21BBC2410(a1, &v21);
  v16 = sub_21BBC75DC();
  sub_21BE27F1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  v21 = &type metadata for ListOfMembers;
  v22 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  v18 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  v21 = v17;
  v22 = v18;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21BBC1148(uint64_t a1)
{
  v1[5] = a1;
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_21BBC11E0, v3, v2);
}

uint64_t sub_21BBC11E0()
{
  v1 = *(*(v0 + 40) + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = *(v0 + 32);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D08068] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_21BBC134C;

    return MEMORY[0x28215E528](1);
  }

  else
  {
    v5 = *(v0 + 48);

    *(v0 + 16) = *(*(v0 + 40) + 48);
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21BBC134C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBC148C, v5, v4);
}

uint64_t sub_21BBC148C()
{
  v1 = *(v0 + 48);

  *(v0 + 16) = *(*(v0 + 40) + 48);
  *(v0 + 88) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBC1528()
{
  v0 = sub_21BE278CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  if (qword_27CDB4E28 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27CDB5BA8);
  (*(v1 + 16))(v4, v10, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  sub_21BE26EDC();
  v11 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  MEMORY[0x21CF02AD0](v9, v5, v11);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21BBC1794()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();

  return sub_21BE2845C();
}

uint64_t sub_21BBC1898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 26))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 26) = 0;
  }
}

uint64_t sub_21BBC1A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_21BE28D7C();
  v4[5] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_21BBC1B30, v6, v5);
}

uint64_t sub_21BBC1B30()
{
  v1 = *(*(v0 + 32) + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = *(v0 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D08068] + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_21BBC1C74;

    return MEMORY[0x28215E528](0);
  }

  else
  {
    v5 = *(v0 + 40);

    **(v0 + 24) = *(v0 + 64) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21BBC1C74()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21BBC83AC, v5, v4);
}

uint64_t sub_21BBC1DB4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21BE28D7C();
  sub_21BBC2410(a1, v16);
  v10 = sub_21BE28D6C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  v14 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v14;
  sub_21BBA9018(0, 0, v8, a3, v11);
}

uint64_t sub_21BBC1EE8(unsigned __int8 *a1, unsigned __int8 *a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17[-v9];
  if (*a1 != *a2)
  {
    v11 = sub_21BE28DAC();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_21BE28D7C();
    sub_21BBC2410(a3, v17);
    v12 = sub_21BE28D6C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    v15 = a3[1];
    *(v13 + 32) = *a3;
    *(v13 + 48) = v15;
    v16 = a3[3];
    *(v13 + 64) = a3[2];
    *(v13 + 80) = v16;
    sub_21BBA9018(0, 0, v10, &unk_21BE333E8, v13);
  }

  return result;
}

uint64_t sub_21BBC2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_21BE28D7C();
  v4[5] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_21BBC20D0, v6, v5);
}

uint64_t sub_21BBC20D0()
{
  v1 = *(*(v0 + 32) + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = *(v0 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D08068] + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_21BBC2214;

    return MEMORY[0x28215E528](0);
  }

  else
  {
    v5 = *(v0 + 40);

    **(v0 + 24) = *(v0 + 64) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21BBC2214()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21BBC2354, v5, v4);
}

uint64_t sub_21BBC2354()
{
  v1 = *(v0 + 40);

  **(v0 + 24) = *(v0 + 64) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBC23C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BBC06C8(a1);
}

unint64_t sub_21BBC2448()
{
  result = qword_27CDB5BE0;
  if (!qword_27CDB5BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD0, &qword_21BE3E310);
    sub_21BBC24D4();
    sub_21BBC2528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5BE0);
  }

  return result;
}

unint64_t sub_21BBC24D4()
{
  result = qword_27CDB5BE8;
  if (!qword_27CDB5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5BE8);
  }

  return result;
}

unint64_t sub_21BBC2528()
{
  result = qword_27CDB5BF0;
  if (!qword_27CDB5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5BF0);
  }

  return result;
}

uint64_t sub_21BBC25B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C70, &unk_21BE3E470);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C78, &qword_21BE33540);
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = v67[8];
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C80, &qword_21BE33548);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C88, &qword_21BE33550);
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = v63[8];
  v20 = MEMORY[0x28223BE20](v18);
  v62 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  *v17 = sub_21BE2770C();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C90, &qword_21BE33558);
  sub_21BBC2C28(&v17[*(v24 + 44)]);
  sub_21BB3B038(&qword_27CDB5C98, &qword_27CDB5C80, &qword_21BE33548);
  v58 = v23;
  sub_21BE285EC();
  v71 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CA0, &qword_21BE33560);
  sub_21BBC7BA4();
  sub_21BE2860C();
  String.rebrand.getter(0xD000000000000020, 0x800000021BE568C0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  v72 = v27;
  v73 = v29;
  sub_21BB41FA4();
  v30 = sub_21BE27DBC();
  v32 = v31;
  LOBYTE(v26) = v33;
  sub_21BE27CCC();
  v34 = sub_21BE27D9C();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_21BBC7C7C(v30, v32, v26 & 1);

  v72 = v34;
  v73 = v36;
  v74 = v38 & 1;
  v75 = v40;
  v41 = v66;
  sub_21BE2861C();
  v42 = v62;
  v43 = v63[2];
  v44 = v64;
  v43(v62, v23, v64);
  v57 = v67[2];
  v45 = v65;
  v57(v65, v61, v68);
  v46 = *(v70 + 16);
  v47 = v59;
  v46(v59, v41, v69);
  v48 = v60;
  v43(v60, v42, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CB8, &unk_21BE33568);
  v50 = v68;
  v57(&v48[*(v49 + 48)], v45, v68);
  v51 = v69;
  v46(&v48[*(v49 + 64)], v47, v69);
  v52 = *(v70 + 8);
  v52(v66, v51);
  v53 = v67[1];
  v53(v61, v50);
  v54 = v64;
  v55 = v63[1];
  v55(v58, v64);
  v52(v47, v51);
  v53(v65, v50);
  return (v55)(v62, v54);
}

uint64_t sub_21BBC2C28@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  v1 = *(*(v105 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v105);
  v107 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v106 = &v92 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CF0, &qword_21BE335B0);
  v98 = *(v100 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v92 = &v92 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CF8, &qword_21BE335B8);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v9 = &v92 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D00, &qword_21BE335C0);
  v10 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v12 = &v92 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D08, &qword_21BE335C8);
  v13 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v15 = &v92 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D10, &qword_21BE335D0);
  v16 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v103 = &v92 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D18, &qword_21BE335D8);
  v18 = *(*(v102 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v102);
  v104 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v92 - v22;
  MEMORY[0x28223BE20](v21);
  v109 = &v92 - v24;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v95 = objc_opt_self();
  v99 = ObjCClassFromMetadata;
  v26 = [v95 bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  *&v112 = v27;
  *(&v112 + 1) = v29;
  v97 = sub_21BB41FA4();
  v30 = sub_21BE27DBC();
  v32 = v31;
  LOBYTE(v29) = v33;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v37 = sub_21BE27C0C();
  v38 = swift_getKeyPath();
  v39 = v29 & 1;
  v40 = v92;
  LOBYTE(v110) = v39;
  *&v112 = v30;
  *(&v112 + 1) = v32;
  LOBYTE(v113) = v39;
  *(&v113 + 1) = v35;
  *&v114 = KeyPath;
  BYTE8(v114) = 1;
  *&v115 = v38;
  *(&v115 + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D20, &qword_21BE33640);
  sub_21BBC7CF0();
  sub_21BE280BC();
  v119[0] = v112;
  v119[1] = v113;
  v119[2] = v114;
  v119[3] = v115;
  sub_21BB3A4CC(v119, &qword_27CDB5D20, &qword_21BE33640);
  LOBYTE(v32) = sub_21BE27B8C();
  v41 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v32)
  {
    v41 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v98 + 32))(v9, v40, v100);
  v50 = &v9[*(v94 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = &v12[*(v93 + 36)];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v52 = *(v100 + 28);
  v53 = sub_21BE27D7C();
  v54 = *(v53 - 8);
  v94 = *(v54 + 56);
  v98 = v54 + 56;
  (v94)(v51 + v52, 1, 1, v53);
  *v51 = swift_getKeyPath();
  sub_21BBB7D84(v9, v12, &qword_27CDB5CF8, &qword_21BE335B8);
  v55 = sub_21BE2832C();
  v56 = swift_getKeyPath();
  sub_21BBB7D84(v12, v15, &qword_27CDB5D00, &qword_21BE335C0);
  v57 = &v15[*(v101 + 36)];
  *v57 = v56;
  v57[1] = v55;
  v58 = v103;
  sub_21BBB7D84(v15, v103, &qword_27CDB5D08, &qword_21BE335C8);
  *(v58 + *(v96 + 36)) = 256;
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v58, v23, &qword_27CDB5D10, &qword_21BE335D0);
  v59 = &v23[*(v102 + 36)];
  v60 = v117;
  *(v59 + 4) = v116;
  *(v59 + 5) = v60;
  *(v59 + 6) = v118;
  v61 = v113;
  *v59 = v112;
  *(v59 + 1) = v61;
  v62 = v115;
  *(v59 + 2) = v114;
  *(v59 + 3) = v62;
  sub_21BBB7D84(v23, v109, &qword_27CDB5D18, &qword_21BE335D8);
  v63 = [v95 bundleForClass_];
  v64 = sub_21BE2599C();
  v66 = v65;

  v110 = v64;
  v111 = v66;
  v67 = sub_21BE27DBC();
  v69 = v68;
  LOBYTE(v66) = v70;
  sub_21BE27CCC();
  v71 = sub_21BE27D9C();
  v73 = v72;
  LOBYTE(v58) = v74;

  sub_21BBC7C7C(v67, v69, v66 & 1);

  sub_21BE2832C();
  v75 = sub_21BE27D4C();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  sub_21BBC7C7C(v71, v73, v58 & 1);

  v82 = v106;
  v83 = &v106[*(v105 + 36)];
  (v94)(v83 + *(v100 + 28), 1, 1, v53);
  *v83 = swift_getKeyPath();
  *v82 = v75;
  *(v82 + 8) = v77;
  *(v82 + 16) = v79 & 1;
  *(v82 + 24) = v81;
  v84 = v109;
  v85 = v104;
  sub_21BBA3854(v109, v104, &qword_27CDB5D18, &qword_21BE335D8);
  v86 = v107;
  sub_21BBA3854(v82, v107, &qword_27CDB5CE8, &unk_21BE363C0);
  v87 = v108;
  sub_21BBA3854(v85, v108, &qword_27CDB5D18, &qword_21BE335D8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D58, &qword_21BE336C8);
  v89 = v87 + v88[12];
  *v89 = 0;
  *(v89 + 8) = 1;
  sub_21BBA3854(v86, v87 + v88[16], &qword_27CDB5CE8, &unk_21BE363C0);
  v90 = v87 + v88[20];
  *v90 = 0;
  *(v90 + 8) = 1;
  sub_21BB3A4CC(v82, &qword_27CDB5CE8, &unk_21BE363C0);
  sub_21BB3A4CC(v84, &qword_27CDB5D18, &qword_21BE335D8);
  sub_21BB3A4CC(v86, &qword_27CDB5CE8, &unk_21BE363C0);
  return sub_21BB3A4CC(v85, &qword_27CDB5D18, &qword_21BE335D8);
}

uint64_t sub_21BBC36D0(__int128 *a1)
{
  v10 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v8[0])
  {
    v2 = [v8[0] members];

    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v3 = sub_21BE28C3C();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8[2] = v3;
  swift_getKeyPath();
  v4 = *(a1 + 3);
  v9 = *(a1 + 2);
  v5 = swift_allocObject();
  v6 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  sub_21BBA3854(&v10, v8, &qword_27CDB5CC0, &unk_21BE33590);
  sub_21BBC7C94(&v9, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268);
  sub_21BBC7C28();
  return sub_21BE285BC();
}

__n128 sub_21BBC38F4@<Q0>(id *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2[1];
  LOBYTE(v10) = a2[2].n128_u8[0];
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v5 = sub_21BE291BC();
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  sub_21BE283EC();
  sub_21BE283EC();
  sub_21BE283EC();
  type metadata accessor for FamilyPictureStore(0);
  sub_21BBC7324(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);
  v6 = sub_21BE270CC();
  *a3 = v4;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 25) = v5 & 1;
  *(a3 + 26) = v14;
  *(a3 + 30) = v15;
  *(a3 + 32) = v9.n128_u8[0];
  *(a3 + 33) = v9.n128_u32[0];
  *(a3 + 36) = *(v9.n128_u32 + 3);
  *(a3 + 40) = v9.n128_u64[1];
  *(a3 + 48) = v9.n128_u8[0];
  *(a3 + 52) = 0;
  *(a3 + 49) = 0;
  *(a3 + 56) = v9.n128_u64[1];
  result = v9;
  *(a3 + 64) = v9;
  *(a3 + 80) = v10;
  *(a3 + 88) = v6;
  *(a3 + 96) = v8;
  return result;
}

void sub_21BBC3AF8()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_27CDB4F00 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_27CDB7EA8 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_21BBC3BA0@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C58, &qword_21BE33528);
  sub_21BB3B038(&qword_27CDB5C60, &qword_27CDB5C58, &qword_21BE33528);
  sub_21BE27D1C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C68, &unk_21BE33530);
  v4 = (a1 + *(result + 36));
  *v4 = 0;
  v4[1] = 0;
  v4[2] = sub_21BBC3AF8;
  v4[3] = 0;
  return result;
}

uint64_t sub_21BBC3C8C()
{
  v1 = *v0;
  v2 = sub_21BE291CC();
  if (v2)
  {
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
      sub_21BB3B038(&qword_27CDB5AE0, &qword_27CDB6EF0, &unk_21BE33800);
      v3 = sub_21BE2897C();
      v5 = v4;

      if (sub_21BE291BC())
      {
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v7 = [objc_opt_self() bundleForClass_];
        sub_21BE2599C();
      }

      else
      {
        String.rebrand.getter(0xD00000000000002CLL, 0x800000021BE569A0);
        type metadata accessor for ConfirmChildAgeViewModel();
        v14 = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        sub_21BE2599C();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21BE32770;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_21BBBEFE8();
      *(v8 + 32) = v3;
      *(v8 + 40) = v5;
      v9 = sub_21BE28A2C();

      return v9;
    }
  }

  if ([v1 isMe] && (sub_21BE2919C() & 1) == 0)
  {
    String.rebrand.getter(0xD00000000000001DLL, 0x800000021BE56980);
    type metadata accessor for ConfirmChildAgeViewModel();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_21BE2599C();

    return v18;
  }

  else
  {
    sub_21BE2919C();
    type metadata accessor for ConfirmChildAgeViewModel();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_21BE2599C();

    return v12;
  }
}

uint64_t sub_21BBC40CC()
{
  v1 = [*v0 appleID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE28A0C();
  }

  else
  {
    String.rebrand.getter(0xD000000000000020, 0x800000021BE56AD0);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_21BE2599C();
  }

  return v3;
}

uint64_t sub_21BBC41C8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v2 = *v0;
  v3 = [v2 contact];
  if (v3)
  {
    v4 = 1000;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    v6 = [v2 firstName];
    [v5 setFirstName_];

    v7 = [v2 lastName];
    [v5 setLastName_];

    v3 = v5;
    v4 = 0;
  }

  v8 = v3;
  [v1 setStyle_];
  v9 = [v1 stringFromContact_];

  if (v9)
  {
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = sub_21BB41E7C(v10, v12);
  v15 = v14;

  if (v15)
  {
  }

  else
  {
    v16 = [v2 appleID];
    if (v16)
    {
      v17 = v16;
      v13 = sub_21BE28A0C();
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

uint64_t sub_21BBC43A4()
{
  v1 = *v0;
  v2 = [v1 shortName];
  if (v2 || (v2 = [v1 firstName]) != 0)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_21BE2599C();
  }

  v6 = v4;
  v7 = v5;

  if (sub_21BE291BC())
  {
    String.rebrand.getter(0xD00000000000002ALL, 0x800000021BE56BA0);
    type metadata accessor for ConfirmChildAgeViewModel();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21BE32770;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21BBBEFE8();
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
  }

  else
  {
    sub_21BE2919C();
    type metadata accessor for ConfirmChildAgeViewModel();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21BE33260;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21BBBEFE8();
    *(v13 + 64) = v15;
    *(v13 + 32) = v6;
    *(v13 + 40) = v7;
    v16 = sub_21BBC40CC();
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
  }

  v18 = sub_21BE28A2C();

  return v18;
}

uint64_t sub_21BBC46D8()
{
  v1[5] = v0;
  v2 = sub_21BE26A4C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_21BBC47D8, v6, v5);
}

uint64_t sub_21BBC47D8()
{
  v1 = v0[9];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Signin started", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  v0[14] = *v8;
  v10 = *(MEMORY[0x277D08070] + 4);
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_21BBC4920;

  return MEMORY[0x28215E5C8]();
}

uint64_t sub_21BBC4920()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_21BBC4BC4;
  }

  else
  {
    v7 = sub_21BBC4A5C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BBC4A5C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Signin complete", v5, 2u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);

  v7(v8, v10);
  if (sub_21BE291BC())
  {
    v11 = *(v0 + 40);
    v12 = *(v11 + 24);
    *(v0 + 16) = *(v11 + 8);
    *(v0 + 32) = v12;
    *(v0 + 33) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
  }

  v14 = *(v0 + 64);
  v13 = *(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BBC4BC4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_21BBC4C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D78, &qword_21BE337A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D80, &qword_21BE337A8);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = (&v55 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D88, &qword_21BE337B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D90, &qword_21BE337B8);
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D98, &qword_21BE337C0);
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v55 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DA0, &qword_21BE337C8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v55 - v27;
  if (*(v2 + 25))
  {
    v29 = sub_21BE2771C();
    v84 = 1;
    sub_21BBC56B0(v2, &v75);
    v89 = v79;
    v90 = v80;
    v91 = v81;
    v92 = v82;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v93[0] = v75;
    v93[1] = v76;
    v93[2] = v77;
    v93[3] = v78;
    v93[4] = v79;
    v93[5] = v80;
    v93[6] = v81;
    v94 = v82;
    sub_21BBA3854(&v85, &v74, &qword_27CDB5DD8, &qword_21BE337E8);
    sub_21BB3A4CC(v93, &qword_27CDB5DD8, &qword_21BE337E8);
    *(&v83[4] + 7) = v89;
    *(&v83[5] + 7) = v90;
    *(&v83[6] + 7) = v91;
    *(&v83[7] + 7) = v92;
    *(v83 + 7) = v85;
    *(&v83[1] + 7) = v86;
    *(&v83[2] + 7) = v87;
    *(&v83[3] + 7) = v88;
    v30 = v83[5];
    *(v28 + 81) = v83[4];
    *(v28 + 97) = v30;
    *(v28 + 113) = v83[6];
    *(v28 + 8) = *(&v83[6] + 15);
    v31 = v83[1];
    *(v28 + 17) = v83[0];
    *(v28 + 33) = v31;
    v32 = v83[3];
    *(v28 + 49) = v83[2];
    v33 = v84;
    *v28 = v29;
    *(v28 + 1) = 0;
    v28[16] = v33;
    *(v28 + 65) = v32;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DA8, &qword_21BE337D0);
    sub_21BB3B038(&qword_27CDB5DB0, &qword_27CDB5DA8, &qword_21BE337D0);
    sub_21BB3B038(&qword_27CDB5DC8, &qword_27CDB5D78, &qword_21BE337A0);
    return sub_21BE2784C();
  }

  else
  {
    v59 = v20;
    v60 = v25;
    v61 = v7;
    v62 = v4;
    v63 = a1;
    v35 = swift_allocObject();
    v56 = &v55;
    *(v35 + 112) = *(v2 + 96);
    v36 = *(v2 + 80);
    *(v35 + 80) = *(v2 + 64);
    *(v35 + 96) = v36;
    v37 = *(v2 + 16);
    *(v35 + 16) = *v2;
    *(v35 + 32) = v37;
    v38 = *(v2 + 48);
    *(v35 + 48) = *(v2 + 32);
    *(v35 + 64) = v38;
    MEMORY[0x28223BE20](v35);
    *(&v55 - 2) = v2;
    sub_21BBC8070(v2, v93);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DA8, &qword_21BE337D0);
    v57 = sub_21BB3B038(&qword_27CDB5DB0, &qword_27CDB5DA8, &qword_21BE337D0);
    v58 = v39;
    sub_21BE2843C();
    v85 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v40 = sub_21BE2841C();
    v56 = &v55;
    MEMORY[0x28223BE20](v40);
    *(&v55 - 2) = v2;
    sub_21BB3B038(&qword_27CDB5DB8, &qword_27CDB5D90, &qword_21BE337B8);
    v41 = v66;
    sub_21BE280DC();

    (*(v65 + 8))(v19, v41);
    v93[0] = *(v2 + 32);
    sub_21BE283FC();
    v42 = 1;
    if (v85 == 1)
    {
      v43 = sub_21BE275DC();
      v44 = v64;
      *v64 = v43;
      *(v44 + 8) = 0;
      *(v44 + 16) = 1;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DD0, &qword_21BE337E0);
      sub_21BBC5C04((v44 + *(v45 + 44)));
      sub_21BBC80B0(v44, v72);
      v42 = 0;
    }

    v46 = v72;
    (*(v68 + 56))(v72, v42, 1, v69);
    v47 = v71;
    v48 = *(v71 + 16);
    v49 = v67;
    v50 = v59;
    v48(v67, v73, v59);
    v51 = v70;
    sub_21BBA3854(v46, v70, &qword_27CDB5D88, &qword_21BE337B0);
    v52 = v61;
    v48(v61, v49, v50);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DC0, &qword_21BE337D8);
    sub_21BBA3854(v51, v52 + *(v53 + 48), &qword_27CDB5D88, &qword_21BE337B0);
    sub_21BB3A4CC(v51, &qword_27CDB5D88, &qword_21BE337B0);
    v54 = *(v47 + 8);
    v54(v49, v50);
    sub_21BBA3854(v52, v28, &qword_27CDB5D78, &qword_21BE337A0);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB5DC8, &qword_27CDB5D78, &qword_21BE337A0);
    sub_21BE2784C();
    sub_21BB3A4CC(v52, &qword_27CDB5D78, &qword_21BE337A0);
    sub_21BB3A4CC(v46, &qword_27CDB5D88, &qword_21BE337B0);
    return (v54)(v73, v50);
  }
}

double sub_21BBC554C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  v20 = 1;
  sub_21BBC56B0(a1, &v11);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v30 = v18;
  sub_21BBA3854(&v21, &v10, &qword_27CDB5DD8, &qword_21BE337E8);
  sub_21BB3A4CC(v29, &qword_27CDB5DD8, &qword_21BE337E8);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27;
  *(&v19[7] + 7) = v28;
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  *(a2 + 113) = v19[6];
  *(a2 + 128) = *(&v19[6] + 15);
  v6 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v6;
  result = *&v19[2];
  v8 = v19[3];
  *(a2 + 49) = v19[2];
  v9 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 65) = v8;
  return result;
}

uint64_t sub_21BBC56B0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_21BE275DC();
  sub_21BBC5948(a1, &v35);
  v28 = v35;
  v29 = *v36;
  v30 = *&v36[16];
  v31 = *&v36[32];
  v32[0] = v35;
  v32[1] = *v36;
  v32[2] = *&v36[16];
  v32[3] = *&v36[32];
  sub_21BBA3854(&v28, &v33, &qword_27CDB5DE0, &qword_21BE337F0);
  sub_21BB3A4CC(v32, &qword_27CDB5DE0, &qword_21BE337F0);
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v35 = sub_21BBC3C8C();
  *(&v35 + 1) = v4;
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE2833C();
  v10 = sub_21BE27D4C();
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  sub_21BE27CBC();
  v15 = sub_21BE27D9C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v10, v12, v14 & 1);

  v33 = v26;
  v34[0] = 0;
  *&v34[1] = *v27;
  *&v34[49] = *&v27[48];
  *&v34[33] = *&v27[32];
  *&v34[17] = *&v27[16];
  *&v34[64] = *&v27[63];
  v22 = *v34;
  *a2 = v26;
  *(a2 + 16) = v22;
  v23 = *&v34[16];
  v24 = *&v34[48];
  *(a2 + 48) = *&v34[32];
  *(a2 + 64) = v24;
  *(a2 + 32) = v23;
  *(a2 + 80) = *&v27[63];
  *(a2 + 88) = v15;
  *(a2 + 96) = v17;
  *(a2 + 104) = v19 & 1;
  *(a2 + 112) = v21;
  sub_21BBA3854(&v33, &v35, &qword_27CDB5DE8, &qword_21BE337F8);
  sub_21BBA4A38(v15, v17, v19 & 1);

  sub_21BBC7C7C(v15, v17, v19 & 1);

  v35 = v26;
  v36[0] = 0;
  *&v36[17] = *&v27[16];
  *&v36[33] = *&v27[32];
  *v37 = *&v27[48];
  *&v37[15] = *&v27[63];
  *&v36[1] = *v27;
  return sub_21BB3A4CC(&v35, &qword_27CDB5DE8, &qword_21BE337F8);
}

uint64_t sub_21BBC5948@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E58 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v4 = 48.0;
  }

  else
  {
    v4 = 46.0;
  }

  v5 = *a1;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v24 = v5;
  v22 = sub_21BE2727C();
  v23 = v6;
  sub_21BBC41C8();
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  sub_21BE2832C();
  v12 = sub_21BE27D4C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_21BBC7C7C(v7, v9, v11 & 1);

  *a2 = v4;
  *(a2 + 8) = v24;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  v19 = v22;
  v20 = v24;
  sub_21BBA4A38(v12, v14, v16 & 1);

  sub_21BBC7C7C(v12, v14, v16 & 1);
}

uint64_t sub_21BBC5B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E10, &qword_21BE33868);
  sub_21BE283FC();
  sub_21BB41E7C(v7, v8);
  v5 = v4;

  if (v5)
  {

    return sub_21BBC6AA0(a2);
  }

  else if ([*a1 isMe])
  {
    return sub_21BBC6010(a2);
  }

  else
  {
    return sub_21BBC6DB8(a2);
  }
}

uint64_t sub_21BBC5C04@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v2 = *(v1 - 8);
  v41 = v1 - 8;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  *&v44 = v10;
  *(&v44 + 1) = v12;
  sub_21BB41FA4();
  v13 = sub_21BE27DBC();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_21BE2833C();
  v17 = sub_21BE27D4C();
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v13, v15, v12 & 1);

  sub_21BE27CBC();
  v22 = sub_21BE27D9C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_21BBC7C7C(v17, v19, v21 & 1);

  sub_21BE26EEC();
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
  v29 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v31 = *MEMORY[0x277CDF438];
  v32 = sub_21BE26E7C();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  sub_21BE286BC();
  sub_21BE26F2C();
  v33 = v42;
  v34 = &v7[*(v41 + 44)];
  v35 = v45;
  *v34 = v44;
  *(v34 + 1) = v35;
  *(v34 + 2) = v46;
  sub_21BBA3854(v7, v33, &qword_27CDB5DF0, &unk_21BE33810);
  v36 = v43;
  *v43 = v22;
  v36[1] = v24;
  *(v36 + 16) = v26 & 1;
  v36[3] = v28;
  v36[4] = 0;
  *(v36 + 40) = 1;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E08, &qword_21BE33860);
  sub_21BBA3854(v33, v37 + *(v38 + 64), &qword_27CDB5DF0, &unk_21BE33810);
  sub_21BBA4A38(v22, v24, v26 & 1);

  sub_21BB3A4CC(v7, &qword_27CDB5DF0, &unk_21BE33810);
  sub_21BB3A4CC(v33, &qword_27CDB5DF0, &unk_21BE33810);
  sub_21BBC7C7C(v22, v24, v26 & 1);
}

uint64_t sub_21BBC5FC4@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BBC4C3C(a1);
}

uint64_t sub_21BBC6010@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_21BE2825C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51[4] = v51 - v6;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  v58 = v10;
  v59 = v12;
  sub_21BB41FA4();
  v13 = MEMORY[0x277D837D0];
  v14 = sub_21BE27DBC();
  v54 = v15;
  v55 = v14;
  v52 = v16;
  v53 = v17;
  v18 = ObjCClassFromMetadata;
  v19 = [v8 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21BE32770;
  v21 = sub_21BBC40CC();
  v23 = v22;
  *(v20 + 56) = v13;
  *(v20 + 64) = sub_21BBBEFE8();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v24 = sub_21BE28A2C();
  v26 = v25;

  v58 = v24;
  v59 = v26;
  v51[3] = sub_21BE27DBC();
  v51[2] = v27;
  v51[1] = v28;
  v51[0] = v29 & 1;
  String.rebrand.getter(0xD00000000000001CLL, 0x800000021BE56AB0);
  v30 = [v8 bundleForClass_];
  v31 = sub_21BE2599C();
  v33 = v32;

  v58 = v31;
  v59 = v33;
  v34 = sub_21BE27DBC();
  v36 = v35;
  LOBYTE(v31) = v37;
  v38 = swift_allocObject();
  v39 = *(v1 + 80);
  *(v38 + 80) = *(v1 + 64);
  *(v38 + 96) = v39;
  *(v38 + 112) = *(v1 + 96);
  v40 = *(v1 + 16);
  *(v38 + 16) = *v1;
  *(v38 + 32) = v40;
  v41 = *(v1 + 48);
  *(v38 + 48) = *(v1 + 32);
  *(v38 + 64) = v41;
  sub_21BBC8070(v1, &v58);
  sub_21BE2824C();

  sub_21BBC7C7C(v34, v36, v31 & 1);

  v42 = [v8 bundleForClass_];
  v43 = sub_21BE2599C();
  v45 = v44;

  v58 = v43;
  v59 = v45;
  v46 = sub_21BE27DBC();
  v48 = v47;
  LOBYTE(v43) = v49;
  sub_21BE2823C();
  sub_21BBC7C7C(v46, v48, v43 & 1);

  return sub_21BE2822C();
}

uint64_t sub_21BBC64F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - v4;
  v14[0] = *(a1 + 32);
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  sub_21BBC8070(a1, v14);
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a1 + 80);
  *(v8 + 96) = *(a1 + 64);
  *(v8 + 112) = v10;
  *(v8 + 128) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v11;
  v12 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v12;
  sub_21BBA932C(0, 0, v5, &unk_21BE33888, v8);
}

uint64_t sub_21BBC6674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[20] = sub_21BE28D7C();
  v4[21] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v4[22] = v5;
  *v5 = v4;
  v5[1] = sub_21BBC6724;

  return sub_21BBC46D8();
}

uint64_t sub_21BBC6724()
{
  v2 = v0;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 184) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BBC6918;
  }

  else
  {
    v8 = sub_21BBC6880;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BBC6880()
{
  v1 = *(v0 + 168);

  *(v0 + 112) = *(*(v0 + 152) + 32);
  *(v0 + 193) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBC6918()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  swift_getErrorValue();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = sub_21BE29A5C();
  v8 = *(v3 + 80);
  *(v0 + 40) = *(v3 + 64);
  *(v0 + 56) = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E10, &qword_21BE33868);
  sub_21BE2840C();
  *(v0 + 64) = *(v3 + 48);
  *(v0 + 96) = *(v3 + 48);
  *(v0 + 192) = 1;
  *(v0 + 128) = *(v0 + 72);
  sub_21BBA3854(v0 + 128, v0 + 144, &qword_27CDB5E28, &qword_21BE33898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  sub_21BB3A4CC(v0 + 64, &qword_27CDBBB50, &unk_21BE333D0);
  *(v0 + 112) = *(*(v0 + 152) + 32);
  *(v0 + 193) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BBC6AA0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - v4;
  sub_21BE2767C();
  v6 = sub_21BE27DAC();
  v27 = v7;
  v28 = v6;
  v25 = v8;
  v26 = v9;
  v33 = *(v1 + 64);
  v10 = *(v1 + 80);
  v35[0] = v33;
  v34 = v10;
  v31 = *(v1 + 64);
  v32 = v10;
  sub_21BBC8120(v35, &v30);
  sub_21BBA3854(&v34, &v30, &qword_27CDB5E20, &qword_21BE33878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E10, &qword_21BE33868);
  sub_21BE283FC();
  v31 = v30;
  sub_21BB41FA4();
  v24[2] = sub_21BE27DBC();
  v24[1] = v11;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  *&v31 = v14;
  *(&v31 + 1) = v16;
  v17 = sub_21BE27DBC();
  v19 = v18;
  v21 = v20;
  sub_21BE2824C();
  sub_21BBC7C7C(v17, v19, v21 & 1);

  v22 = sub_21BE2825C();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  sub_21BE2821C();
  v31 = v33;
  v32 = v10;
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_21BE2840C();
  sub_21BB3A250(v35);
  return sub_21BB3A4CC(&v34, &qword_27CDB5E20, &qword_21BE33878);
}

uint64_t sub_21BBC6DB8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v27 - v3;
  v5 = sub_21BE2766C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  v32 = v10;
  v33 = v12;
  sub_21BB41FA4();
  v13 = sub_21BE27DBC();
  v29 = v14;
  v30 = v13;
  v27[3] = v15;
  v28 = v16;
  sub_21BE2765C();
  sub_21BE2764C();
  sub_21BBC43A4();
  sub_21BE2763C();

  sub_21BE2764C();
  sub_21BE2768C();
  sub_21BE27DAC();
  v17 = [v8 bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  v32 = v18;
  v33 = v20;
  v21 = sub_21BE27DBC();
  v23 = v22;
  LOBYTE(v20) = v24;
  sub_21BE2824C();
  sub_21BBC7C7C(v21, v23, v20 & 1);

  v25 = sub_21BE2825C();
  (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
  return sub_21BE2821C();
}

unint64_t sub_21BBC7140()
{
  result = qword_27CDB5C08;
  if (!qword_27CDB5C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BC8, &qword_21BE33388);
    sub_21BBC71CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5C08);
  }

  return result;
}

unint64_t sub_21BBC71CC()
{
  result = qword_27CDB5C10;
  if (!qword_27CDB5C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5C00, &qword_21BE333C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD0, &qword_21BE3E310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD8, &qword_21BE333C0);
    sub_21BBC2448();
    sub_21BB3B038(&qword_27CDB5BF8, &qword_27CDB5BD8, &qword_21BE333C0);
    swift_getOpaqueTypeConformance2();
    sub_21BBC7324(&qword_27CDB5C18, type metadata accessor for ActiveStateChange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5C10);
  }

  return result;
}

uint64_t sub_21BBC7324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBC736C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBC2038(a1, v4, v5, v1 + 32);
}

uint64_t sub_21BBC741C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBC1A98(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_21BBC7524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBC1A98(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BBC75DC()
{
  result = qword_27CDB5C30;
  if (!qword_27CDB5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5C30);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_21BBC7680()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBB7EB8;

  return sub_21BBC1148(v0 + 16);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_21BBC77E8()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

unint64_t sub_21BBC7914()
{
  result = qword_27CDB5C48;
  if (!qword_27CDB5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5C48);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BBC7ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21BBC7B24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21BBC7BA4()
{
  result = qword_27CDB5CA8;
  if (!qword_27CDB5CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5CA0, &qword_21BE33560);
    sub_21BBC7C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5CA8);
  }

  return result;
}

unint64_t sub_21BBC7C28()
{
  result = qword_27CDB5CB0;
  if (!qword_27CDB5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5CB0);
  }

  return result;
}

uint64_t sub_21BBC7C7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21BBC7CF0()
{
  result = qword_27CDB5D28;
  if (!qword_27CDB5D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D20, &qword_21BE33640);
    sub_21BBC7DA8();
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5D28);
  }

  return result;
}

unint64_t sub_21BBC7DA8()
{
  result = qword_27CDB5D30;
  if (!qword_27CDB5D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D38, &qword_21BE33648);
    sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5D30);
  }

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

uint64_t sub_21BBC7E8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21BBC7ED4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21BBC7F3C()
{
  result = qword_27CDB5D60;
  if (!qword_27CDB5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5C68, &unk_21BE33530);
    sub_21BB3B038(&qword_27CDB5D68, &qword_27CDB5D70, &qword_21BE33748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5D60);
  }

  return result;
}

uint64_t sub_21BBC8010()
{
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BBC80B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D80, &qword_21BE337A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_21BBC81F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BBC6674(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BBC82A4()
{
  result = qword_27CDB5E30;
  if (!qword_27CDB5E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5E38, qword_21BE338A0);
    sub_21BB3B038(&qword_27CDB5DB0, &qword_27CDB5DA8, &qword_21BE337D0);
    sub_21BB3B038(&qword_27CDB5DC8, &qword_27CDB5D78, &qword_21BE337A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5E30);
  }

  return result;
}

void *sub_21BBC83B0()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *v0;

    sub_21BE28FEC();
    v9 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BBC9024(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

void sub_21BBC8500(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = sub_21BBC83B0();
    if (v9)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277CECA10]) initWithAccountManager_];
      v12 = type metadata accessor for RecoveryContactNotSetupCell();
      [v11 setDelegate_];
      [v11 start];
      v13 = [v11 navigationController];
      [v8 presentViewController:v13 animated:1 completion:0];

      v14 = (v1 + *(v12 + 32));
      v16 = v14[1];
      v24[0] = *v14;
      v15 = v24[0];
      v24[1] = v16;
      v23[1] = v11;

      v17 = v11;
      v18 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E90, &qword_21BE33968);
      sub_21BE2840C();

      return;
    }
  }

  sub_21BE261BC();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_21BB3D81C(0xD000000000000037, 0x800000021BE56CA0, v24);
    _os_log_impl(&dword_21BB35000, v19, v20, "%s unable to start flow because navigation controller or accountManager is nil", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x21CF05C50](v22, -1, -1);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_21BBC87B8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RecoveryContactNotSetupCell();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BBC91F4(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecoveryContactNotSetupCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BBC9030(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BBC9094;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BBC8920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v5 = type metadata accessor for RecoveryContactNotSetupCell();
  v6 = v5 - 8;
  v37 = *(v5 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_21BE2599C();
  v38 = v13;
  v39 = v12;

  v14 = [v10 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  v15 = sub_21BE2599C();
  v17 = v16;

  v41 = v15;
  v42 = v17;
  v18 = sub_21BE28B8C();
  v35 = v19;
  v36 = v18;
  v20 = *(v40 + 16);
  sub_21BBC91F4(v40, v8, type metadata accessor for RecoveryContactNotSetupCell);
  v21 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_21BBC9030(v8, v23 + v21);
  *(v23 + v22) = a1;
  v24 = a1;
  v25 = v20;
  v26 = [v10 bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  v30 = *(v6 + 32);
  a3[13] = type metadata accessor for RecoveryContactDataItem(0);
  a3[14] = sub_21BBC919C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 10);
  result = sub_21BBC91F4(v40 + v30, boxed_opaque_existential_1, type metadata accessor for RecoveryContactDataItem);
  v33 = v38;
  *a3 = v39;
  a3[1] = v33;
  v34 = v35;
  a3[2] = v36;
  a3[3] = v34;
  a3[4] = v25;
  a3[5] = sub_21BBC9114;
  a3[6] = v23;
  a3[7] = v27;
  a3[8] = v29;
  a3[9] = 0;
  a3[15] = 0;
  return result;
}

id sub_21BBC8D74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianSetupFlowDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RecoveryContactNotSetupCell()
{
  result = qword_27CDB5E40;
  if (!qword_27CDB5E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBC8E40()
{
  sub_21BBC8FA4(319, &qword_27CDB5E50, &qword_27CDB5E58, &qword_21BE33900, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21BBC8F58();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RecoveryContactDataItem(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CustodianSetupFlowDelegate();
        sub_21BBC8FA4(319, &qword_27CDB5E68, &unk_27CDB5E70, &qword_21BE33908, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21BBC8F58()
{
  result = qword_27CDB5E60;
  if (!qword_27CDB5E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB5E60);
  }

  return result;
}

void sub_21BBC8FA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21BBC9024(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21BBC9030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryContactNotSetupCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBC9094@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for RecoveryContactNotSetupCell() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BBC8920(a1, v6, a2);
}

unint64_t sub_21BBC919C()
{
  result = qword_27CDB5E88;
  if (!qword_27CDB5E88)
  {
    type metadata accessor for RecoveryContactDataItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5E88);
  }

  return result;
}

uint64_t sub_21BBC91F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BBC925C()
{
  result = qword_27CDB5E98;
  if (!qword_27CDB5E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB5EA0, &unk_21BE33970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5E98);
  }

  return result;
}

uint64_t type metadata accessor for FindMyButton()
{
  result = qword_27CDB5EB8;
  if (!qword_27CDB5EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBC9334()
{
  sub_21BBC9430(319, &qword_27CDB5EC8, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21BE25B9C();
    if (v1 <= 0x3F)
    {
      sub_21BBC9430(319, &qword_27CDB5ED0, sub_21BBC9494, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBC9430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21BBC9494()
{
  result = qword_27CDB5ED8;
  if (!qword_27CDB5ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB5ED8);
  }

  return result;
}

uint64_t sub_21BBC94FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  MyButton = type metadata accessor for FindMyButton();
  v5 = *(MyButton - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](MyButton);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *(v2 + *(MyButton + 24));
  if (v12)
  {
    v25 = v9;
    v13 = *(MyButton + 20);
    v14 = v12;
    if (sub_21BDE4F40())
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = v5;
      v16 = [objc_opt_self() bundleForClass_];
      v17 = sub_21BE2599C();
      v19 = v18;

      v26 = v17;
      v27 = v19;
      sub_21BBC99D4(v2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v21 = swift_allocObject();
      sub_21BBC9A38(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
      sub_21BB41FA4();
      sub_21BE2845C();

      (*(v25 + 32))(a1, v11, v7);
      return (*(v25 + 56))(a1, 0, 1, v7);
    }

    v9 = v25;
  }

  v23 = *(v9 + 56);

  return v23(a1, 1, 1, v7);
}

uint64_t sub_21BBC9804()
{
  v0 = sub_21BE26FEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BD20368(v4);
  v5 = *(type metadata accessor for FindMyButton() + 20);
  sub_21BE26FBC();
  (*(v1 + 8))(v4, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v10 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000021BE56CE0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v7 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v10, v7);
}

uint64_t sub_21BBC99D4(uint64_t a1, uint64_t a2)
{
  MyButton = type metadata accessor for FindMyButton();
  (*(*(MyButton - 8) + 16))(a2, a1, MyButton);
  return a2;
}

uint64_t sub_21BBC9A38(uint64_t a1, uint64_t a2)
{
  MyButton = type metadata accessor for FindMyButton();
  (*(*(MyButton - 8) + 32))(a2, a1, MyButton);
  return a2;
}

uint64_t sub_21BBC9A9C()
{
  v0 = *(*(type metadata accessor for FindMyButton() - 8) + 80);

  return sub_21BBC9804();
}

uint64_t sub_21BBC9AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BBC9B64()
{
  result = qword_27CDB5EE0;
  if (!qword_27CDB5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5EE8, &qword_21BE339E8);
    sub_21BBC9BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5EE0);
  }

  return result;
}

unint64_t sub_21BBC9BE8()
{
  result = qword_27CDB5598;
  if (!qword_27CDB5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5598);
  }

  return result;
}

uint64_t sub_21BBC9C4C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21BBC9D40, v6, v5);
}