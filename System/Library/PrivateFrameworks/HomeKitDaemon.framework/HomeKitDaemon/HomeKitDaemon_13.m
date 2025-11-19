unint64_t sub_229678A8C()
{
  result = qword_281401770;
  if (!qword_281401770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401770);
  }

  return result;
}

__n128 sub_229678AD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(_s10SerializerVMa() + 36);
  sub_22A4DC3AC();
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_229678B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_229678BD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 33) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 33) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_229678D5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 33) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 33] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    a1[32] = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_229678FE4()
{
  v1 = OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_updateTask;
  if (*(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_updateTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_updateTask);

    sub_22A4DDA7C();
  }

  v3 = *(v0 + 160);

  sub_2296792B0(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_updateStream);
  v4 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_frameworkAdapters);

  v5 = *(v0 + v1);

  v6 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_observers);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DeviceMediaState.Observer()
{
  result = qword_27D87E6E0;
  if (!qword_27D87E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296790F8()
{
  sub_2296791B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2296791B4()
{
  if (!qword_27D87EC70)
  {
    v0 = _s6StreamVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87EC70);
    }
  }
}

unint64_t sub_229679230(uint64_t a1)
{
  result = sub_229679258();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_229679258()
{
  result = qword_27D87E6F0;
  if (!qword_27D87E6F0)
  {
    type metadata accessor for DeviceMediaState.Observer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E6F0);
  }

  return result;
}

uint64_t sub_2296792B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC80, &qword_22A57CFC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_229679328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E7A8, &qword_22A57C4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E7A8, &qword_22A57C4A0);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

__n128 sub_229679528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E7A0, &unk_22A57FDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E7A0, &unk_22A57FDF0);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

__n128 sub_229679728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E798, &qword_22A57C498);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E798, &qword_22A57C498);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

__n128 sub_229679928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D320, &qword_22A5784A8) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

__n128 sub_229679B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E780, &unk_22A57DCB0) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

__n128 sub_229679D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E790, &qword_22A57C490) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

__n128 sub_229679F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v17 = *(a2 + 16);
    v18 = *a2;
    v19 = v17;
    v20 = *(a2 + 32);
    if (!*(&v17 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v18, v21);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v13 = *(v2 + 16);
  v18 = *v2;
  v19 = v13;
  LOBYTE(v20) = *(v2 + 32);
  sub_2297E3C8C(&v18, v11);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v15 + 32))(v11, v14, v15);
  sub_22967B18C(&v11[*(v8 + 36)], v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC30, &unk_22A577960) + 36);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v11, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

uint64_t sub_22967A128(uint64_t a1)
{
  v2 = v1;
  v13 = _s21EventMetadataInternalVMa(0);
  v14 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_22967B18C(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v12);
  sub_22953EAE4(v12, &qword_27D882000, &qword_22A578390);
  v5 = _s13MicroLocationO5EventVMa();
  sub_2297C2ED4(0xD000000000000011, 0x800000022A58FB00, v1 + v5[5]);
  sub_2297C30F0(0xD000000000000013, 0x800000022A58FB20, v1 + v5[6]);
  v6 = *(v1 + v5[7]);
  v14 = sub_22967A3E0();
  v12[0] = sub_229588D4C(v6);
  sub_229890DC4(v12, 0xD000000000000011, 0x800000022A58FB40);
  v7 = *(v2 + v5[8]);
  v8 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v8;
  v16 = *(a1 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v14 = sub_22958872C();
  v12[0] = sub_2295887A8(v15, v7);
  sub_229890DC4(v12, 0xD000000000000010, 0x800000022A58FB60);
  v9 = *(v2 + v5[9]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E708, "bP\b");
  v14 = sub_22967AB38();
  v12[0] = sub_229588E04(v9);
  sub_229890DC4(v12, 0x6F63536563616C70, 0xEB00000000736572);
  v10 = *(v2 + v5[10]);
  v13 = MEMORY[0x277D84CC0];
  v14 = &off_283CDFC58;
  LODWORD(v12[0]) = v10;
  return sub_229890DC4(v12, 0x6E656469666E6F63, 0xEA00000000006563);
}

uint64_t _s13MicroLocationO5EventVMa()
{
  result = qword_27D87E718;
  if (!qword_27D87E718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22967A3E0()
{
  result = qword_27D87E700;
  if (!qword_27D87E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E700);
  }

  return result;
}

uint64_t sub_22967A45C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  KeyPath = swift_getKeyPath();
  *(&v38 + 1) = _s21EventMetadataInternalVMa(0);
  v39 = sub_22967B0E0(&qword_27D87CC28, _s21EventMetadataInternalVMa);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  sub_22967B18C(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679B28(KeyPath, &v37);

  if (*(&v38 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v37);
  }

  v15 = _s13MicroLocationO5EventVMa();
  v16 = v15[5];
  LOBYTE(v39) = *(a1 + 32);
  v17 = *(a1 + 16);
  v37 = *a1;
  v38 = v17;
  sub_229564F88(v1 + v16, v12, &unk_27D87D2A0, &unk_22A578BD0);
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v18 = sub_2296B2730(&v37);
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E780, &unk_22A57DCB0) + 36);
    v22 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 36) + v21);
    v23 = v22[1];

    *v22 = v18;
    v22[1] = v20;
  }

  v24 = swift_getKeyPath();
  sub_2296B2AA4(v24, v2 + v15[6]);

  v25 = sub_229588D4C(*(v2 + v15[7]));
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E780, &unk_22A57DCB0) + 36));
  v27 = *v26;

  *v26 = v25;
  v28 = *(v2 + v15[8]);
  v29 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v29;
  v41 = *(a1 + 32);
  v30 = sub_2295887A8(v40, v28);
  v31 = v26[1];

  v26[1] = v30;
  v32 = sub_229588E04(*(v2 + v15[9]));
  v33 = v26[2];

  v26[2] = v32;
  v34 = *(v2 + v15[10]);
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v36 = v26 + *(result + 44);
  *v36 = v34;
  v36[4] = 0;
  return result;
}

uint64_t sub_22967A7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  sub_229564F88(a1 + *(v8 + 32), v7, &qword_27D87CC38, &unk_22A5784B0);
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22967B128(v7, a2);
  }

  sub_22A4DC28C();
  v11 = *(v9 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_27D87DF28;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_22967A954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22967B18C(a1, v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v9 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 32);
  sub_22953EAE4(a2 + v9, &qword_27D87CC38, &unk_22A5784B0);
  sub_22967B128(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t sub_22967AA74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22967AAD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

unint64_t sub_22967AB38()
{
  result = qword_27D87E710;
  if (!qword_27D87E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E708, "bP\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E710);
  }

  return result;
}

void sub_22967ABDC()
{
  _s21EventMetadataInternalVMa(319);
  if (v0 <= 0x3F)
  {
    sub_22967AE30(319, &qword_27D87E728, &unk_27D87D2A0, &unk_22A578BD0, sub_22967ADB4);
    if (v1 <= 0x3F)
    {
      sub_22967AE30(319, &qword_27D87E738, &unk_27D881AA0, &qword_22A57BC20, sub_22967AEA0);
      if (v2 <= 0x3F)
      {
        if (v3 <= 0x3F)
        {
          sub_22967AE30(319, &qword_27D87D2F0, &qword_27D87D2F8, &unk_22A585F10, sub_22958900C);
          if (v4 <= 0x3F)
          {
            sub_22967AE30(319, &qword_27D87E758, &qword_27D87E708, "bP\b", sub_22967AF98);
            if (v5 <= 0x3F)
            {
              sub_229564D4C();
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

unint64_t sub_22967ADB4()
{
  result = qword_27D87E730;
  if (!qword_27D87E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87D2A0, &unk_22A578BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E730);
  }

  return result;
}

void sub_22967AE30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = _s7SecuredVMa();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22967AEA0()
{
  result = qword_27D87E740;
  if (!qword_27D87E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D881AA0, &qword_22A57BC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E740);
  }

  return result;
}

unint64_t sub_22967AF1C()
{
  result = qword_27D87E750;
  if (!qword_27D87E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E750);
  }

  return result;
}

unint64_t sub_22967AF98()
{
  result = qword_27D87E760;
  if (!qword_27D87E760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E708, "bP\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E760);
  }

  return result;
}

uint64_t sub_22967B05C(uint64_t a1)
{
  *(a1 + 16) = sub_22967B0E0(&qword_27D87E770, _s13MicroLocationO5EventVMa);
  result = sub_22967B0E0(&qword_27D87E778, _s13MicroLocationO5EventVMa);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22967B0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22967B128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22967B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s23AccessoryPresenceUpdateVMa()
{
  result = qword_27D87E7B0;
  if (!qword_27D87E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22967B278()
{
  result = sub_22967B2FC();
  if (v1 <= 0x3F)
  {
    result = _s13PresenceStateOMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22967B2FC()
{
  result = qword_27D87E7C0;
  if (!qword_27D87E7C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D87E7C0);
  }

  return result;
}

uint64_t sub_22967B364()
{
  v1 = v0;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000023, 0x800000022A58FB80);
  v2 = [*v0 shortDescription];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  MEMORY[0x22AAD08C0](v3, v5);

  MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A58FBB0);
  v6 = v1 + *(_s23AccessoryPresenceUpdateVMa() + 20);
  v7 = sub_229698D5C();
  MEMORY[0x22AAD08C0](v7);

  MEMORY[0x22AAD08C0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22967B478(id *a1, id *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = [*a1 uuid];
  sub_22A4DB79C();

  v13 = [*a2 uuid];
  sub_22A4DB79C();

  LOBYTE(v13) = sub_22A4DB78C();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  if (v13)
  {
    updated = _s23AccessoryPresenceUpdateVMa();
    v16 = sub_229698B2C(a2 + *(updated + 20));
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22967B600()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);

  v6 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectorHandlerTasks);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s35AggregatedAccessoryPresenceDetectorCMa()
{
  result = qword_27D87E7E8;
  if (!qword_27D87E7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22967B744()
{
  sub_22967B860(319, &qword_27D87E7F8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22967B860(319, &qword_27D87E800, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22967B860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    updated = _s23AccessoryPresenceUpdateVMa();
    v7 = a3(a1, updated);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22967B8E0()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectorHandlerTasks);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;

      sub_22A4DDA7C();

      --v3;
    }

    while (v3);
    v1 = v0[7];
  }

  v6 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);
  v0[8] = v6;
  v7 = *(v6 + 16);
  v0[9] = v7;
  if (v7)
  {
    v0[10] = 0;
    sub_22957F1C4(v6 + 32, (v0 + 2));
    v8 = v0[5];
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v8);
    v10 = *(v9 + 16);
    v15 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_22967BAE0;

    return v15(v8, v9);
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22967BAE0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 56);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_22967BBF8, v3, 0);
}

uint64_t sub_22967BBF8()
{
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[10] = v1;
    sub_22957F1C4(v0[8] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v4);
    v6 = *(v5 + 16);
    v9 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_22967BAE0;

    return v9(v4, v5);
  }
}

uint64_t sub_22967BD7C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_22967BDA0, v2, 0);
}

void sub_22967BDA0()
{
  v1 = *(v0[11] + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v0[14] = 0;
    if (*(v1 + 16))
    {
      sub_22957F1C4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
      v5 = *(v4 + 24);
      v12 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[15] = v7;
      *v7 = v0;
      v7[1] = sub_22967BF8C;
      v8 = v0[9];
      v9 = v0[10];

      v12(v8, v9, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for HMError(0);
    v0[8] = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v10 = v0[7];
    swift_willThrow();
    v11 = v0[1];

    v11();
  }
}

uint64_t sub_22967BF8C()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[11];
  __swift_destroy_boxed_opaque_existential_0(v2 + 2);
  if (v0)
  {
    v6 = sub_22967C0C4;
  }

  else
  {
    v6 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22967C0C4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112) + 1;

  if (v2 == v1)
  {
    type metadata accessor for HMError(0);
    *(v0 + 64) = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v3 = *(v0 + 56);
    swift_willThrow();
    v4 = *(v0 + 8);

    v4();
  }

  else
  {
    v5 = *(v0 + 112) + 1;
    *(v0 + 112) = v5;
    v6 = *(v0 + 96);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_22957F1C4(v6 + 40 * v5 + 32, v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), v7);
      v9 = *(v8 + 24);
      v14 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      *(v0 + 120) = v11;
      *v11 = v0;
      v11[1] = sub_22967BF8C;
      v12 = *(v0 + 72);
      v13 = *(v0 + 80);

      v14(v12, v13, v7, v8);
    }
  }
}

uint64_t sub_22967C2C0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22967C2E0, v1, 0);
}

uint64_t sub_22967C2E0()
{
  v1 = *(v0[8] + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);
  v0[9] = v1;
  v2 = *(v1 + 16);
  v0[10] = v2;
  if (v2)
  {
    v0[11] = 0;
    sub_22957F1C4(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
    v5 = *(v4 + 32);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_22967C470;
    v8 = v0[7];

    return v11(v8, v3, v4);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22967C470()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_22967C588, v3, 0);
}

uint64_t sub_22967C588()
{
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[11] = v1;
    sub_22957F1C4(v0[9] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v4);
    v6 = *(v5 + 32);
    v10 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_22967C470;
    v9 = v0[7];

    return v10(v9, v4, v5);
  }
}

uint64_t sub_22967C714(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22967C734, v3, 0);
}

uint64_t sub_22967C734()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22967C7E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_22967B8C0();
}

uint64_t sub_22967C878(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229569B30;

  return sub_22967BD7C(a1, a2);
}

uint64_t sub_22967C924(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22967C2C0(a1);
}

uint64_t sub_22967C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  updated = _s23AccessoryPresenceUpdateVMa();
  v5[7] = updated;
  v10 = *(updated - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E830, &qword_22A57CDF0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E838, &unk_22A57C640);
  v5[15] = v16;
  v17 = *(v16 - 8);
  v5[16] = v17;
  v18 = *(v17 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22967CBF8, 0, 0);
}

uint64_t sub_22967CBF8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_22967CD24;
  v7 = v0[14];

  return v9(v7, v2, v3);
}

uint64_t sub_22967CD24()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22967CE20, 0, 0);
}

uint64_t sub_22967CE20()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_22A4DDA3C();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_22967CEFC;
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[11];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_22967CEFC()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22967CFF8, 0, 0);
}

uint64_t sub_22967CFF8()
{
  v1 = v0[11];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
LABEL_4:
    v5 = v0[14];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[6];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v9 = v0[1];

    return v9();
  }

  sub_22967E294(v1, v0[10]);
  v2 = sub_22A4DDAAC();
  v3 = v0[10];
  if (v2)
  {
    sub_22967E35C(v0[10]);
    v4 = v0[11];
    goto LABEL_4;
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[3];
  v14 = v0[4];
  sub_22967E2F8(v0[10], v0[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v14);
  sub_22967E35C(v3);
  v15 = *(MEMORY[0x277D85798] + 4);
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_22967CEFC;
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[11];

  return MEMORY[0x2822003E8](v19, 0, 0, v18);
}

uint64_t sub_22967D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E818, &qword_22A57C610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - v8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v26 = type metadata accessor for DefaultLocalPresenceDetectorDataSource();
  v27 = &off_283CDF8B0;
  *&v25 = a2;
  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_stream;
  v22 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_continuation;
  *v9 = 1;
  (*(v6 + 104))(v9, *MEMORY[0x277D85768], v5);
  _s23AccessoryPresenceUpdateVMa();
  sub_22A4DD9EC();
  (*(v6 + 8))(v9, v5);
  (*(v15 + 32))(a3 + v19, v18, v14);
  (*(v10 + 32))(a3 + v22, v13, v23);
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks) = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories;
  *(a3 + v20) = [objc_opt_self() weakObjectsHashTable];
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationCenter) = v24;
  sub_229557188(&v25, a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_dataSource);
  return a3;
}

uint64_t sub_22967D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E818, &qword_22A57C610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - v8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v26 = type metadata accessor for DefaultLocalPresenceDetectorDataSource();
  v27 = &off_283CDF8B0;
  *&v25 = a2;
  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_stream;
  v22 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_continuation;
  *v9 = 1;
  (*(v6 + 104))(v9, *MEMORY[0x277D85768], v5);
  _s23AccessoryPresenceUpdateVMa();
  sub_22A4DD9EC();
  (*(v6 + 8))(v9, v5);
  (*(v15 + 32))(a3 + v19, v18, v14);
  (*(v10 + 32))(a3 + v22, v13, v23);
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks) = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories;
  *(a3 + v20) = [objc_opt_self() weakObjectsHashTable];
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationCenter) = v24;
  sub_229557188(&v25, a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_dataSource);
  return a3;
}

void *sub_22967D7FC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v3 = *(v42 - 8);
  v41 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v32 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = a1 + 32;
  v38 = sub_22A4DD9DC();
  v13 = *(v38 - 8);
  v14 = *(v13 + 56);
  v13 += 56;
  v37 = v14;
  v34 = v3 + 32;
  v35 = v3 + 16;
  v33 = (v13 - 8);
  v36 = v13;
  v32 = (v13 - 48);
  v15 = MEMORY[0x277D84F90];
  v39 = v3;
  do
  {
    v44 = v15;
    v16 = v45;
    v17 = v38;
    v37(v45, 1, 1, v38);
    sub_22957F1C4(v12, v50);
    v18 = v40;
    v19 = v42;
    (*(v3 + 16))(v40, v43, v42);
    v20 = (*(v3 + 80) + 72) & ~*(v3 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    sub_229557188(v50, v21 + 32);
    (*(v3 + 32))(v21 + v20, v18, v19);
    sub_229569C24(v16, v9);
    LODWORD(v20) = (*v33)(v9, 1, v17);

    if (v20 == 1)
    {
      sub_229631C7C(v9);
    }

    else
    {
      sub_22A4DD9CC();
      (*v32)(v9, v17);
    }

    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    swift_unknownObjectRetain();

    v15 = v44;
    if (v22)
    {
      swift_getObjectType();
      v24 = sub_22A4DD8CC();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_229631C7C(v45);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_22A57C620;
    *(v27 + 24) = v21;
    if (v26 | v24)
    {
      v46 = 0;
      v47 = 0;
      v48 = v24;
      v49 = v26;
    }

    v3 = v39;
    v28 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_22958A8B4(0, v15[2] + 1, 1, v15);
    }

    v30 = v15[2];
    v29 = v15[3];
    if (v30 >= v29 >> 1)
    {
      v15 = sub_22958A8B4((v29 > 1), v30 + 1, 1, v15);
    }

    v15[2] = v30 + 1;
    v15[v30 + 4] = v28;
    v12 += 40;
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_22967DC34(uint64_t a1)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E818, &qword_22A57C610);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  swift_defaultActor_initialize();
  v22 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_stream;
  v16 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_continuation;
  *v6 = 1;
  (*(v3 + 104))(v6, *MEMORY[0x277D85768], v2);
  _s23AccessoryPresenceUpdateVMa();
  sub_22A4DD9EC();
  (*(v3 + 8))(v6, v2);
  (*(v12 + 32))(v1 + v22, v15, v11);
  v17 = v23;
  (*(v7 + 32))(v1 + v16, v10, v23);
  *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors) = v24;
  (*(v7 + 16))(v10, v1 + v16, v17);

  v19 = sub_22967D7FC(v18, v10);
  (*(v7 + 8))(v10, v17);
  *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectorHandlerTasks) = v19;
  return v1;
}

uint64_t sub_22967DF30(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E810, &qword_22A57C608);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22A5761A0;
  v3 = type metadata accessor for DefaultLocalPresenceDetectorDataSource();
  v30 = v3;
  v31 = &off_283CDF8B0;
  v29[0] = swift_allocObject();
  v4 = _s28HAPAccessoryPresenceDetectorCMa();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_0(v29, v3);
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *(v9 + 16);
  v12(&v29[-1] - v11);
  v13 = *(&v29[-1] - v11);
  v14 = a1;
  v15 = sub_22967D1E4(v14, v13, v7);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *(v2 + 56) = v4;
  *(v2 + 64) = &off_283CDF720;
  *(v2 + 32) = v15;
  v16 = swift_allocObject();
  v30 = v3;
  v31 = &off_283CDF8B0;
  v29[0] = v16;
  v17 = _s31MatterAccessoryPresenceDetectorCMa();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v29, v3);
  MEMORY[0x28223BE20](v21);
  v12(&v29[-1] - v11);
  v22 = sub_22967D4F0(v14, *(&v29[-1] - v11), v20);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *(v2 + 96) = v17;
  *(v2 + 104) = &off_283CDF7E8;
  *(v2 + 72) = v22;
  v23 = _s35AggregatedAccessoryPresenceDetectorCMa();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_22967DC34(v2);

  return v26;
}

uint64_t sub_22967E194(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_22967C9BC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_22967E294(uint64_t a1, uint64_t a2)
{
  updated = _s23AccessoryPresenceUpdateVMa();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_22967E2F8(uint64_t a1, uint64_t a2)
{
  updated = _s23AccessoryPresenceUpdateVMa();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_22967E35C(uint64_t a1)
{
  updated = _s23AccessoryPresenceUpdateVMa();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_22967E3BC()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB768);
  __swift_project_value_buffer(v0, qword_27D8AB768);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22967E434()
{
  sub_22A4DE1FC();
  v0 = sub_22A4DD5EC();
  v2 = v1;

  result = MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A58FD40);
  qword_27D8AB780 = v0;
  *algn_27D8AB788 = v2;
  return result;
}

uint64_t sub_22967E4CC()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_dataSource));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s28HAPAccessoryPresenceDetectorCMa()
{
  result = qword_27D87E878;
  if (!qword_27D87E878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22967E630()
{
  sub_22967B860(319, &qword_27D87E7F8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22967B860(319, &qword_27D87E800, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22967E764()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = 32;
    do
    {
      v5 = *(v2 + v4);

      sub_22A4DDA7C();

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v21 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories);
  v6 = [v21 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    result = sub_22A4DE0EC();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_22:

    return [v21 removeAllObjects];
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_7:
  v9 = result - 1;
  if (result >= 1)
  {
    v10 = 0;
    v11 = v7 & 0xC000000000000001;
    v22 = v7;
    while (1)
    {
      if (v11)
      {
        MEMORY[0x22AAD13F0](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_22967EA58();
      if (!v15)
      {
        break;
      }

      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22A576190;
      *(v17 + 32) = v16;
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v18 = v16;
      v19 = sub_22A4DD81C();

      if (qword_27D87B970 != -1)
      {
        swift_once();
      }

      v20 = sub_22A4DD5AC();
      [v14 setNotificationsEnabled:0 forCharacteristics:v19 clientIdentifier:v20];
      swift_unknownObjectRelease_n();

      v7 = v22;
      if (v9 == v10)
      {
        goto LABEL_22;
      }

LABEL_11:
      ++v10;
    }

    swift_unknownObjectRelease();
LABEL_10:
    swift_unknownObjectRelease();
    if (v9 == v10)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_22967EA58()
{
  v1 = v0;
  v2 = [v0 primaryService];
  if (!v2 || (v3 = v2, v4 = sub_2296844A8(), v3, !v4))
  {
    v5 = [v1 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v6 = sub_22A4DD83C();

    v19 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AAD13F0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v10 isPrimary])
        {
        }

        else
        {
          sub_22A4DE27C();
          v9 = *(v19 + 16);
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        ++v8;
        if (v12 == i)
        {
          v13 = v19;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_20:

    if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
    {
LABEL_37:
      v14 = sub_22A4DE0EC();
    }

    else
    {
      v14 = *(v13 + 16);
    }

    v15 = 0;
    while (v14 != v15)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAD13F0](v15, v13);
      }

      else
      {
        if (v15 >= *(v13 + 16))
        {
          goto LABEL_36;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v4 = sub_2296844A8();

      ++v15;
      if (v4)
      {
        goto LABEL_33;
      }
    }

    v4 = 0;
LABEL_33:
  }

  return v4;
}

uint64_t sub_22967ECB0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E890, &qword_22A57C718);
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = _s13PresenceStateOMa();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22967EE18, v2, 0);
}

uint64_t sub_22967EE18()
{
  v94 = v0;
  v1 = *(v0 + 64);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 160) = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *(v0 + 64);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  swift_unknownObjectRetain();
  v5 = [v3 matterNodeID];
  v6 = sub_22A4DDEBC();
  v7 = sub_22A4DDEDC();

  if ((v7 & 1) == 0 || (v8 = sub_22967EA58(), (*(v0 + 168) = v8) == 0))
  {
    v21 = *(v0 + 64);
    swift_unknownObjectRelease();
LABEL_8:
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v24 = *(v0 + 136);
    v25 = *(v0 + 104);
    v26 = *(v0 + 112);
    v27 = *(v0 + 96);
    v92 = *(v0 + 88);
    type metadata accessor for HMError(0);
    *(v0 + 48) = 43;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_229684CE8(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v28 = *(v0 + 40);
    swift_willThrow();

    v29 = *(v0 + 8);
LABEL_9:

    return v29();
  }

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v89 = v8;
  sub_22967FA60(v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v90 = *(*(v15 - 8) + 56);
  v91 = v15;
  v90(v12, 2, 2);
  (*(v9 + 56))(v12, 0, 1, v10);
  v16 = *(v14 + 48);
  sub_229564F88(v11, v13, &qword_27D87EBB0, &qword_22A57C720);
  sub_229564F88(v12, v13 + v16, &qword_27D87EBB0, &qword_22A57C720);
  v17 = *(v9 + 48);
  v18 = v17(v13, 1, v10);
  v19 = *(v0 + 120);
  if (v18 != 1)
  {
    sub_229564F88(*(v0 + 88), *(v0 + 96), &qword_27D87EBB0, &qword_22A57C720);
    if (v17(v13 + v16, 1, v19) != 1)
    {
      v35 = *(v0 + 144);
      v36 = *(v0 + 104);
      v88 = *(v0 + 112);
      v37 = *(v0 + 88);
      v38 = *(v0 + 96);
      sub_2296850E4(v13 + v16, v35, _s13PresenceStateOMa);
      v39 = sub_229698FEC(v38, v35);
      sub_2296851B4(v35, _s13PresenceStateOMa);
      sub_22953EAE4(v36, &qword_27D87EBB0, &qword_22A57C720);
      sub_22953EAE4(v88, &qword_27D87EBB0, &qword_22A57C720);
      sub_2296851B4(v38, _s13PresenceStateOMa);
      sub_22953EAE4(v37, &qword_27D87EBB0, &qword_22A57C720);
      if (v39)
      {
        goto LABEL_17;
      }

LABEL_15:
      v33 = *(v0 + 152);
      sub_22A4DB68C();
      v34 = 0;
      goto LABEL_18;
    }

    v31 = *(v0 + 112);
    v32 = *(v0 + 96);
    sub_22953EAE4(*(v0 + 104), &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v31, &qword_27D87EBB0, &qword_22A57C720);
    sub_2296851B4(v32, _s13PresenceStateOMa);
LABEL_14:
    sub_22953EAE4(*(v0 + 88), &qword_27D87E890, &qword_22A57C718);
    goto LABEL_15;
  }

  v20 = *(v0 + 112);
  sub_22953EAE4(*(v0 + 104), &qword_27D87EBB0, &qword_22A57C720);
  sub_22953EAE4(v20, &qword_27D87EBB0, &qword_22A57C720);
  if (v17(v13 + v16, 1, v19) != 1)
  {
    goto LABEL_14;
  }

  sub_22953EAE4(*(v0 + 88), &qword_27D87EBB0, &qword_22A57C720);
LABEL_17:
  v34 = 2;
LABEL_18:
  v40 = *(v0 + 72);
  (v90)(*(v0 + 152), v34, 2, v91);
  v41 = *(v40 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories);
  *(v0 + 176) = v41;
  if ([v41 containsObject_])
  {
    v42 = *(v0 + 152);
    v44 = *(v0 + 56);
    v43 = *(v0 + 64);
    swift_unknownObjectRelease();

    v45 = v42;
    v46 = v44;
LABEL_29:
    sub_2296850E4(v45, v46, _s13PresenceStateOMa);
    v80 = *(v0 + 144);
    v79 = *(v0 + 152);
    v81 = *(v0 + 136);
    v83 = *(v0 + 104);
    v82 = *(v0 + 112);
    v85 = *(v0 + 88);
    v84 = *(v0 + 96);

    v29 = *(v0 + 8);
    goto LABEL_9;
  }

  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 152);
  v48 = *(v0 + 136);
  v49 = *(v0 + 64);
  v50 = sub_22A4DD07C();
  __swift_project_value_buffer(v50, qword_27D8AB768);
  sub_22968514C(v47, v48, _s13PresenceStateOMa);
  swift_unknownObjectRetain();
  v51 = sub_22A4DD05C();
  v52 = sub_22A4DDCCC();
  swift_unknownObjectRelease();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 136);
  if (v53)
  {
    v55 = *(v0 + 64);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v93[0] = v57;
    *v56 = 136315650;
    *(v56 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, v93);
    *(v56 + 12) = 2080;
    v58 = [v55 shortDescription];
    v59 = sub_22A4DD5EC();
    v61 = v60;

    v62 = sub_2295A3E30(v59, v61, v93);

    *(v56 + 14) = v62;
    *(v56 + 22) = 2080;
    v63 = sub_229698D5C();
    v65 = v64;
    sub_2296851B4(v54, _s13PresenceStateOMa);
    v66 = sub_2295A3E30(v63, v65, v93);

    *(v56 + 24) = v66;
    _os_log_impl(&dword_229538000, v51, v52, "%s - accessory: %s, presenceState: %s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v57, -1, -1);
    MEMORY[0x22AAD4E50](v56, -1, -1);
  }

  else
  {

    sub_2296851B4(v54, _s13PresenceStateOMa);
  }

  v67 = *(v0 + 72);
  v68 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  if (*(*(v67 + v68) + 16))
  {
    v69 = *(v0 + 168);
    [*(v0 + 176) addObject_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_22A576190;
    *(v70 + 32) = v69;
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v71 = v69;
    v72 = sub_22A4DD81C();

    if (qword_27D87B970 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 160);
    v74 = *(v0 + 168);
    v75 = *(v0 + 152);
    v77 = *(v0 + 56);
    v76 = *(v0 + 64);
    v78 = sub_22A4DD5AC();
    [v73 setNotificationsEnabled:1 forCharacteristics:v72 clientIdentifier:v78];
    swift_unknownObjectRelease();

    v45 = v75;
    v46 = v77;
    goto LABEL_29;
  }

  v86 = swift_task_alloc();
  *(v0 + 184) = v86;
  *v86 = v0;
  v86[1] = sub_22967F778;
  v87 = *(v0 + 72);

  return sub_22967FEE0();
}

uint64_t sub_22967F778()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22967F888, v2, 0);
}

uint64_t sub_22967F888()
{
  v1 = *(v0 + 168);
  [*(v0 + 176) addObject_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22A576190;
  *(v2 + 32) = v1;
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v3 = v1;
  v4 = sub_22A4DD81C();

  if (qword_27D87B970 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = sub_22A4DD5AC();
  [v5 setNotificationsEnabled:1 forCharacteristics:v4 clientIdentifier:v10];
  swift_unknownObjectRelease();

  sub_2296850E4(v7, v9, _s13PresenceStateOMa);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 136);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v17 = *(v0 + 88);
  v16 = *(v0 + 96);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22967FA60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - v5;
  v7 = sub_22A4DB74C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  sub_22968482C(v37);
  if (!v38)
  {
    goto LABEL_9;
  }

  v15 = v39;
  v29 = v40;
  if (![v1 value])
  {

    v33 = 0u;
    v34 = 0u;
LABEL_8:
    sub_22953EAE4(&v33, &unk_27D87FC20, &unk_22A578810);
LABEL_9:
    v25 = _s13PresenceStateOMa();
    return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }

  v27[1] = v15;
  v28 = a1;
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_0(v31, v32);
  v30[3] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
  sub_229543C58(v30, &v33);
  __swift_destroy_boxed_opaque_existential_0(v31);
  if (!*(&v34 + 1))
  {

    a1 = v28;
    goto LABEL_8;
  }

  sub_229543C58(&v33, v35);
  v19 = v36;
  v20 = __swift_project_boxed_opaque_existential_0(v35, v36);
  *(&v34 + 1) = v19;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(v19 - 8) + 16))(v21, v20, v19);

  v22 = [v1 lastKnownValueUpdateTime];
  if (v22)
  {
    v23 = v22;
    sub_22A4DB70C();

    v24 = *(v8 + 32);
    v24(v6, v12, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v24(v14, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_22A4DB68C();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_22953EAE4(v6, &unk_27D881AA0, &qword_22A57BC20);
    }
  }

  v29(&v33, v14);

  (*(v8 + 8))(v14, v7);
  sub_22953EAE4(&v33, &unk_27D87DE60, &unk_22A57A960);
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_22967FEE0()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_22967FF28, v0, 0);
}

uint64_t sub_22967FF28()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  v3 = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[5];
    v12 = v0[6];
    v0[7] = *(v11 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationCenter);
    v13 = sub_22A4DDE5C();
    v0[8] = v13;
    v14 = sub_229684CE8(&qword_27D87E898, _s28HAPAccessoryPresenceDetectorCMa);
    v0[9] = v14;
    v15 = swift_task_alloc();
    v0[10] = v15;
    v15[2] = v11;
    v15[3] = v13;
    v15[4] = v12;
    v16 = *(MEMORY[0x277D859E0] + 4);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_2296800C0;
    v8 = sub_229684AD0;
    v7 = 0x800000022A58FDB0;
    v10 = MEMORY[0x277D84F78] + 8;
    v4 = v11;
    v5 = v14;
    v6 = 0xD00000000000001FLL;
    v9 = v15;
  }

  return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2296800C0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2296801EC, v3, 0);
}

uint64_t sub_2296801EC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_22A4DDE5C();
  v0[12] = v5;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_229680310;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v4, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_229684B10, v6, v9);
}

uint64_t sub_229680310()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22968043C, v3, 0);
}

uint64_t sub_22968043C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_22A4DDE5C();
  v0[15] = v5;
  v6 = swift_task_alloc();
  v0[16] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_229680560;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v4, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_229684B50, v6, v9);
}

uint64_t sub_229680560()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22968068C, v3, 0);
}

uint64_t sub_22968068C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

void sub_229680704(void *a1)
{
  v2 = v1;
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  swift_unknownObjectRetain();
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A58FD20, &v22);
    *(v7 + 12) = 2080;
    v9 = [a1 shortDescription];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v13 = sub_2295A3E30(v10, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_229538000, v5, v6, "%s - %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories) removeObject_];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = sub_22967EA58();
    if (v16)
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22A576190;
      *(v18 + 32) = v17;
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v19 = v17;
      v20 = sub_22A4DD81C();

      if (qword_27D87B970 != -1)
      {
        swift_once();
      }

      v21 = sub_22A4DD5AC();
      [v15 setNotificationsEnabled:0 forCharacteristics:v20 clientIdentifier:v21];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_229680A68(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229680A88, v3, 0);
}

uint64_t sub_229680A88()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_229680B3C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_229680B5C, v2, 0);
}

uint64_t sub_229680B5C()
{
  v1 = *(v0 + 16);
  sub_22967E764();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229680BBC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229569B30;

  return sub_22967ECB0(a1, a2);
}

uint64_t sub_229680C68(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229680C88, v3, 0);
}

uint64_t sub_229680C88()
{
  v1 = *(v0 + 24);
  sub_229680704(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229680CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = sub_22A4DB21C();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[30] = v11;
  v12 = *(v11 - 8);
  v6[31] = v12;
  v13 = *(v12 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229680E40, 0, 0);
}

uint64_t sub_229680E40()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[33] = @"kModifiedCharacteristicsKey";
  v5 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_229680F80;
  v8 = v0[32];
  v9 = v0[29];
  v10 = v0[30];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_229680F80()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_2296815FC;
  }

  else
  {
    v3 = sub_229681094;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296810B0()
{
  v32 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v13 = *(v0 + 224);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    v14 = *(v0 + 8);

    return v14();
  }

  (*(v3 + 32))(*(v0 + 224), v1, v2);
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v31);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received characteristics changed notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = *(v0 + 200);
  Strong = swift_weakLoadStrong();
  *(v0 + 288) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v12 = *(v0 + 232);
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v16 = *(v0 + 224);
  sub_22A4DB1FC();
  if (!*(v0 + 80))
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v24 = v0 + 56;
LABEL_29:
    sub_22953EAE4(v24, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_30;
  }

  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    goto LABEL_30;
  }

  v17 = *(v0 + 168);
  *(v0 + 296) = v17;
  v18 = sub_22A4DB20C();
  if (!v18)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    goto LABEL_28;
  }

  v19 = v18;
  v20 = *(v0 + 264);
  *(v0 + 144) = sub_22A4DD5EC();
  *(v0 + 152) = v21;
  sub_22A4DE18C();
  if (!*(v19 + 16) || (v22 = sub_2295402E8(v0 + 16), (v23 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    goto LABEL_26;
  }

  sub_2295404B0(*(v19 + 56) + 32 * v22, v0 + 88);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 112))
  {
LABEL_26:
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

LABEL_28:
    v24 = v0 + 88;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
  if (swift_dynamicCast())
  {
    *(v0 + 304) = *(v0 + 176);

    return MEMORY[0x2822009F8](sub_229681688, v11, 0);
  }

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

LABEL_30:
  v25 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v26 = *(MEMORY[0x277D856D0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_229680F80;
  v28 = *(v0 + 256);
  v29 = *(v0 + 232);
  v30 = *(v0 + 240);

  return MEMORY[0x282200308](v29, v30, v25);
}

uint64_t sub_2296815FC()
{
  *(v0 + 160) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229681688()
{
  v1 = v0[36];
  sub_22968180C(v0[37], v0[38]);

  return MEMORY[0x2822009F8](sub_229681700, 0, 0);
}

uint64_t sub_229681700()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];

  (*(v4 + 8))(v3, v5);
  v6 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_229680F80;
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[30];

  return MEMORY[0x282200308](v10, v11, v6);
}

void sub_22968180C(uint64_t a1, unint64_t a2)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v5 = *(v95 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v85 - v10;
  v11 = sub_22A4DB74C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v100 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v85 - v20;
  v113 = _s13PresenceStateOMa();
  v22 = *(v113 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v113);
  v98 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = _s23AccessoryPresenceUpdateVMa();
  v25 = *(*(updated - 8) + 64);
  v26 = MEMORY[0x28223BE20](updated);
  v92 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v91 = &v85 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v90 = (&v85 - v31);
  MEMORY[0x28223BE20](v30);
  v99 = &v85 - v32;
  v96 = v2;
  if ([*(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories) containsObject_])
  {
    if (a2 >> 62)
    {
      v34 = sub_22A4DE0EC();
      if (!v34)
      {
        return;
      }
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        return;
      }
    }

    if (v34 >= 1)
    {
      v35 = 0;
      v88 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_continuation;
      v97 = (v12 + 32);
      v103 = (v12 + 56);
      v89 = (v12 + 48);
      v102 = (v12 + 8);
      v101 = (v22 + 48);
      v86 = "sReachableNotification(from:)";
      v87 = (v5 + 8);
      v36 = a2 & 0xC000000000000001;
      v112 = (v22 + 56);
      *&v33 = 136315650;
      v85 = v33;
      v109 = a2;
      v105 = v11;
      v104 = v17;
      v110 = v21;
      v111 = v34;
      v108 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v36)
        {
          v37 = MEMORY[0x22AAD13F0](v35, a2);
        }

        else
        {
          v37 = *(a2 + 8 * v35 + 32);
        }

        v38 = v37;
        sub_22968482C(v121);
        if (!v122)
        {
          goto LABEL_8;
        }

        v40 = v123;
        v39 = v124;
        if (![v38 value])
        {
          break;
        }

        sub_22A4DE01C();
        swift_unknownObjectRelease();
        v41 = v116;
        v42 = __swift_project_boxed_opaque_existential_0(&v115, v116);
        v114[3] = v41;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
        (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v42, v41);
        sub_229543C58(v114, &v117);
        __swift_destroy_boxed_opaque_existential_0(&v115);
        if (!*(&v118 + 1))
        {

          a2 = v109;
          goto LABEL_7;
        }

        sub_229543C58(&v117, &v119);
        v44 = v120;
        v45 = __swift_project_boxed_opaque_existential_0(&v119, v120);
        *(&v118 + 1) = v44;
        v46 = __swift_allocate_boxed_opaque_existential_1(&v117);
        (*(*(v44 - 8) + 16))(v46, v45, v44);

        v47 = [v38 lastKnownValueUpdateTime];
        if (v47)
        {
          v48 = v100;
          v49 = v47;
          sub_22A4DB70C();

          v106 = v40;
          v50 = *v97;
          v51 = v107;
          v52 = v48;
          v53 = v105;
          (*v97)(v107, v52, v105);
          (*v103)(v51, 0, 1, v53);
          v54 = v104;
          v50(v104, v51, v53);
          a2 = v109;
        }

        else
        {
          v55 = v107;
          v53 = v105;
          (*v103)(v107, 1, 1, v105);
          v54 = v104;
          sub_22A4DB68C();
          v56 = (*v89)(v55, 1, v53);
          a2 = v109;
          if (v56 != 1)
          {
            sub_22953EAE4(v107, &unk_27D881AA0, &qword_22A57BC20);
          }
        }

        v57 = v110;
        v39(&v117, v54);
        v21 = v57;

        (*v102)(v54, v53);
        sub_22953EAE4(&v117, &unk_27D87DE60, &unk_22A57A960);
        __swift_destroy_boxed_opaque_existential_0(&v119);
        v58 = (*v101)(v57, 1, v113);
        v34 = v111;
        v36 = v108;
        if (v58 != 1)
        {
          v59 = v98;
          sub_2296850E4(v21, v98, _s13PresenceStateOMa);
          v60 = [v38 accessory];

          if (v60)
          {
            v61 = v90;
            *v90 = v60;
            sub_2296850E4(v59, v61 + *(updated + 20), _s13PresenceStateOMa);
            v62 = v99;
            sub_2296850E4(v61, v99, _s23AccessoryPresenceUpdateVMa);
            if (qword_27D87B968 != -1)
            {
              swift_once();
            }

            v63 = sub_22A4DD07C();
            __swift_project_value_buffer(v63, qword_27D8AB768);
            v64 = v62;
            v65 = v91;
            sub_22968514C(v64, v91, _s23AccessoryPresenceUpdateVMa);
            v66 = v38;
            v67 = sub_22A4DD05C();
            v68 = sub_22A4DDCCC();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v119 = v70;
              *v69 = v85;
              *(v69 + 4) = sub_2295A3E30(0xD00000000000003FLL, v86 | 0x8000000000000000, &v119);
              *(v69 + 12) = 2080;
              v71 = [v66 shortDescription];
              v72 = sub_22A4DD5EC();
              v106 = v66;
              v73 = v72;
              v75 = v74;

              v76 = sub_2295A3E30(v73, v75, &v119);

              *(v69 + 14) = v76;
              *(v69 + 22) = 2080;
              v77 = sub_22967B364();
              v79 = v78;
              sub_2296851B4(v65, _s23AccessoryPresenceUpdateVMa);
              v80 = sub_2295A3E30(v77, v79, &v119);

              *(v69 + 24) = v80;
              _os_log_impl(&dword_229538000, v67, v68, "%s - %s => %s", v69, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v70, -1, -1);
              v81 = v69;
              v21 = v110;
              MEMORY[0x22AAD4E50](v81, -1, -1);

              v82 = v106;
            }

            else
            {

              sub_2296851B4(v65, _s23AccessoryPresenceUpdateVMa);
              v82 = v66;
            }

            v83 = v99;
            sub_22968514C(v99, v92, _s23AccessoryPresenceUpdateVMa);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
            v84 = v94;
            sub_22A4DDA0C();

            (*v87)(v84, v95);
            sub_2296851B4(v83, _s23AccessoryPresenceUpdateVMa);
            a2 = v109;
            v34 = v111;
          }

          else
          {
            sub_2296851B4(v59, _s13PresenceStateOMa);
          }

          v36 = v108;
          goto LABEL_10;
        }

LABEL_9:

        sub_22953EAE4(v21, &qword_27D87EBB0, &qword_22A57C720);
LABEL_10:
        if (v34 == ++v35)
        {
          return;
        }
      }

      v117 = 0u;
      v118 = 0u;
LABEL_7:
      sub_22953EAE4(&v117, &unk_27D87FC20, &unk_22A578810);
      v21 = v110;
      v34 = v111;
LABEL_8:
      (*v112)(v21, 1, 1, v113);
      goto LABEL_9;
    }

    __break(1u);
  }
}

uint64_t sub_229682494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_22A4DB21C();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v13 = *(v12 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296825EC, 0, 0);
}

uint64_t sub_2296825EC()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v5 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_22968271C;
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[18];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_22968271C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_229682C34;
  }

  else
  {
    v3 = sub_229682830;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22968284C()
{
  v24 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v13 = v0[16];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v14 = v0[1];

    return v14();
  }

  (*(v3 + 32))(v0[16], v1, v2);
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v23);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is reachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[15] + 8))(v0[16], v0[14]);
    v12 = v0[17];
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v16 = v0[16];
  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[24] = v0[10];

      return MEMORY[0x2822009F8](sub_229682CC0, v11, 0);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v17 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v18 = *(MEMORY[0x277D856D0] + 4);
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_22968271C;
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[18];

  return MEMORY[0x282200308](v21, v22, v17);
}

uint64_t sub_229682C34()
{
  *(v0 + 72) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229682CC0()
{
  v1 = *(v0 + 184);
  sub_229682E34(*(v0 + 192));

  return MEMORY[0x2822009F8](sub_229682D28, 0, 0);
}

uint64_t sub_229682D28()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);
  v6 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_22968271C;
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];

  return MEMORY[0x282200308](v10, v11, v6);
}

void sub_229682E34(void *a1)
{
  updated = _s23AccessoryPresenceUpdateVMa();
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = _s13PresenceStateOMa();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return;
  }

  v35 = v5;
  v21 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories);
  v39 = a1;
  if ([v21 containsObject_])
  {
    v22 = sub_22967EA58();
    if (v22)
    {
      v23 = v22;
      sub_22967FA60(v12);

      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        sub_2296850E4(v12, v20, _s13PresenceStateOMa);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v24 - 8) + 56))(v18, 2, 2, v24);
        v25 = sub_229698FEC(v20, v18);
        sub_2296851B4(v18, _s13PresenceStateOMa);
        if (v25)
        {
          v26 = v38;
          sub_22968514C(v20, &v38[*(updated + 20)], _s13PresenceStateOMa);
          v27 = v39;
          *v26 = v39;
          v28 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
          sub_22A4DDA0C();

          (*(v37 + 8))(v8, v35);
          sub_2296851B4(v20, _s13PresenceStateOMa);
          return;
        }

        sub_2296851B4(v20, _s13PresenceStateOMa);
        goto LABEL_12;
      }
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    sub_22953EAE4(v12, &qword_27D87EBB0, &qword_22A57C720);
LABEL_12:
    if (qword_27D87B968 != -1)
    {
      swift_once();
    }

    v30 = sub_22A4DD07C();
    __swift_project_value_buffer(v30, qword_27D8AB768);
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCCC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58FE20, &v40);
      _os_log_impl(&dword_229538000, v31, v32, "%s - Skipping update as presence is not occupied", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    return;
  }

  v29 = v39;
}

uint64_t sub_229683394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a3;
  v37 = a7;
  v35 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_22A4DD9DC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v17;
  v22 = v9;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v20, v13, v22);
  v25 = v35;
  *(v24 + v21) = v36;
  *(v24 + v23) = v19;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;

  v26 = sub_22957F3C0(0, 0, v34, v37, v24);
  v27 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v28 = *(a2 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v27) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_22958A8B4(0, v28[2] + 1, 1, v28);
    *(a2 + v27) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_22958A8B4((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v28[v31 + 4] = v26;
  *(a2 + v27) = v28;
  return swift_endAccess();
}

uint64_t sub_2296836A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  updated = _s23AccessoryPresenceUpdateVMa();
  v6[14] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v6[16] = v9;
  v10 = *(v9 - 8);
  v6[17] = v10;
  v11 = *(v10 + 64) + 15;
  v6[18] = swift_task_alloc();
  v12 = sub_22A4DB21C();
  v6[19] = v12;
  v13 = *(v12 - 8);
  v6[20] = v13;
  v14 = *(v13 + 64) + 15;
  v6[21] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v16 = sub_22A4DDE4C();
  v6[23] = v16;
  v17 = *(v16 - 8);
  v6[24] = v17;
  v18 = *(v17 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229683898, 0, 0);
}

uint64_t sub_229683898()
{
  v1 = v0[25];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v5 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_2296839C8;
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_2296839C8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_229683EF8;
  }

  else
  {
    v3 = sub_229683ADC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229683AF8()
{
  v26 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v13 = v0[21];
    v14 = v0[18];
    v15 = v0[15];
    (*(v0[24] + 8))(v0[25], v0[23]);

    v16 = v0[1];

    return v16();
  }

  (*(v3 + 32))(v0[21], v1, v2);
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v25);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is unreachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[20] + 8))(v0[21], v0[19]);
    v12 = v0[22];
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v18 = v0[21];
  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[29] = v0[10];

      return MEMORY[0x2822009F8](sub_229683F84, v11, 0);
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v19 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v20 = *(MEMORY[0x277D856D0] + 4);
  v21 = swift_task_alloc();
  v0[26] = v21;
  *v21 = v0;
  v21[1] = sub_2296839C8;
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[23];

  return MEMORY[0x282200308](v23, v24, v19);
}

uint64_t sub_229683EF8()
{
  *(v0 + 72) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229683F84()
{
  v1 = *(v0 + 232);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = [*(*(v0 + 224) + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories) containsObject_];
    v3 = *(v0 + 232);
    if (v2)
    {
      v4 = *(v0 + 224);
      v6 = *(v0 + 136);
      v5 = *(v0 + 144);
      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      v9 = *(*(v0 + 112) + 20);
      sub_22A4DB71C();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      (*(*(v10 - 8) + 56))(&v8[v9], 0, 2, v10);
      *v8 = v3;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
      sub_22A4DDA0C();

      (*(v6 + 8))(v5, v7);
    }

    else
    {
    }
  }

  return MEMORY[0x2822009F8](sub_229684114, 0, 0);
}

uint64_t sub_229684114()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  (*(v4 + 8))(v3, v5);
  v6 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_2296839C8;
  v9 = v0[25];
  v10 = v0[22];
  v11 = v0[23];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_229684260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E888, &qword_22A57C708);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A576180;
  v1 = *MEMORY[0x277CFE8E0];
  v2 = sub_22A4DD5EC();
  v4 = v3;
  v5 = *MEMORY[0x277CFE690];
  result = sub_22A4DD5EC();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 48) = result;
  *(v0 + 56) = v7;
  *(v0 + 64) = sub_229684300;
  *(v0 + 72) = 0;
  off_27D87E840 = v0;
  return result;
}

uint64_t sub_229684300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_229564F88(a1, v12, &unk_27D87DE60, &unk_22A57A960);
  if (!v13)
  {
    sub_22953EAE4(v12, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_9;
  }

  if (v11)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    (*(*(v5 - 8) + 56))(a3, 2, 2, v5);
  }

  else
  {
    v7 = sub_22A4DB74C();
    (*(*(v7 - 8) + 16))(a3, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    (*(*(v8 - 8) + 56))(a3, 0, 2, v8);
  }

  v6 = 0;
LABEL_9:
  v9 = _s13PresenceStateOMa();
  return (*(*(v9 - 8) + 56))(a3, v6, 1, v9);
}

id sub_2296844A8()
{
  v1 = [v0 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = v2 + 32;
    v8 = &selRef_runTransformWithError_;
    v32 = i;
    v33 = v2;
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v31 = v2 & 0xC000000000000001;
    v29 = v2 + 32;
    while (1)
    {
      while (1)
      {
        if (v5)
        {
          v9 = MEMORY[0x22AAD13F0](v4, v2);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_35;
          }

          v9 = *(v7 + 8 * v4);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_34;
          }
        }

        v11 = v9;
        v12 = [v11 v8[435]];
        if (v12)
        {
          break;
        }

        if (v4 == i)
        {
          goto LABEL_37;
        }
      }

      v34 = v4;
      v13 = v12;
      v2 = [v12 type];

      v14 = sub_22A4DD5EC();
      v16 = v15;

      if (qword_27D87B978 != -1)
      {
        swift_once();
      }

      v36 = off_27D87E840;
      v35 = *(off_27D87E840 + 2);
      if (v35)
      {
        break;
      }

LABEL_4:

      i = v32;
      v2 = v33;
      v4 = v34;
      v6 = v30;
      v5 = v31;
      v7 = v29;
      v8 = &selRef_runTransformWithError_;
      if (v34 == v32)
      {
        goto LABEL_37;
      }
    }

    v17 = 0;
    v18 = (off_27D87E840 + 40);
    while (v17 < v36[2])
    {
      v19 = v18[2];
      v37 = v18[1];
      v20 = v18[4];
      v21 = *(v18 - 1) == v14 && *v18 == v16;
      if (v21 || (sub_22A4DE60C() & 1) != 0)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v22 = [v11 type];
        v23 = sub_22A4DD5EC();
        v2 = v24;

        if (v37 == v23 && v19 == v2)
        {

LABEL_32:

          v27 = v11;

          return v27;
        }

        v26 = sub_22A4DE60C();

        if (v26)
        {
          goto LABEL_32;
        }
      }

      ++v17;
      v18 += 6;
      if (v35 == v17)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  return 0;
}

id sub_22968482C@<X0>(uint64_t a1@<X8>)
{
  result = [v1 service];
  v4 = 0uLL;
  if (result)
  {
    v24 = a1;
    v5 = result;
    v6 = [result type];

    v7 = sub_22A4DD5EC();
    v9 = v8;

    if (qword_27D87B978 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v28 = off_27D87E840;
      v27 = *(off_27D87E840 + 2);
      if (!v27)
      {
        break;
      }

      v10 = 0;
      v11 = off_27D87E840 + 40;
      while (v10 < v28[2])
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v29 = *(v11 + 1);
        v30 = *(v11 + 1);
        v14 = *(v11 + 4);
        v15 = v12 == v7 && v13 == v9;
        if (v15 || (sub_22A4DE60C() & 1) != 0)
        {
          v25 = v12;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v16 = [v26 type];
          v17 = sub_22A4DD5EC();
          v19 = v18;

          v20 = v29;
          if (v29 == v17 && v30 == v19)
          {

LABEL_21:

            v4 = v30;
            a1 = v24;
            v23 = v25;
            goto LABEL_22;
          }

          v22 = sub_22A4DE60C();

          if (v22)
          {
            goto LABEL_21;
          }
        }

        ++v10;
        v11 += 48;
        if (v27 == v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

LABEL_18:

    v23 = 0;
    v13 = 0;
    v20 = 0;
    v14 = 0;
    a1 = v24;
    v4 = 0uLL;
  }

  else
  {
    v23 = 0;
    v13 = 0;
    v20 = 0;
    v14 = 0;
  }

LABEL_22:
  *a1 = v23;
  *(a1 + 8) = v13;
  *(a1 + 16) = v20;
  *(a1 + 24) = v4;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_229684B90(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_2296836A8(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_229684CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229684D30(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229569B30;

  return sub_229682494(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t objectdestroy_14Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_229684F8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_229680CE8(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2296850E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22968514C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296851B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_229685214(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_22A4DE0EC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAD13F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        swift_unknownObjectRelease();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_229685390@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

void *sub_229685564(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_229685678()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB790);
  __swift_project_value_buffer(v0, qword_27D8AB790);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296856F0()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_dataSource));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s31MatterAccessoryPresenceDetectorCMa()
{
  result = qword_27D87E8D8;
  if (!qword_27D87E8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229685854()
{
  sub_22967B860(319, &qword_27D87E7F8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22967B860(319, &qword_27D87E800, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_229685988(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E890, &qword_22A57C718);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = sub_22A4DCDFC();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_22A4DC77C();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v3[20] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v16 = _s13PresenceStateOMa();
  v3[26] = v16;
  v17 = *(v16 - 8);
  v3[27] = v17;
  v18 = *(v17 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v3[32] = v20;
  v21 = *(v20 - 8);
  v3[33] = v21;
  v22 = *(v21 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229685D28, v2, 0);
}

uint64_t sub_229685D28()
{
  v228 = v0;
  v1 = *(v0 + 72);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 344) = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = *(v0 + 72);
  swift_unknownObjectRetain();
  v5 = [v3 matterNodeID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v6 = sub_22A4DDEBC();
  v7 = sub_22A4DDEDC();

  if (v7)
  {
    v8 = *(v0 + 72);
    swift_unknownObjectRelease();
LABEL_6:
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    v18 = *(v0 + 296);
    v19 = *(v0 + 304);
    v174 = *(v0 + 288);
    v176 = *(v0 + 280);
    v179 = *(v0 + 272);
    v182 = *(v0 + 248);
    v184 = *(v0 + 240);
    v189 = *(v0 + 232);
    v192 = *(v0 + 224);
    v195 = *(v0 + 200);
    v198 = *(v0 + 192);
    v202 = *(v0 + 184);
    v205 = *(v0 + 176);
    v208 = *(v0 + 168);
    v211 = *(v0 + 152);
    v216 = *(v0 + 128);
    v219 = *(v0 + 120);
    v223 = *(v0 + 96);
    type metadata accessor for HMError(0);
    *(v0 + 48) = 43;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22968FFA8(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v20 = *(v0 + 40);
    swift_willThrow();

    v21 = *(v0 + 8);
LABEL_7:

    return v21();
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 248);
  sub_229687758(v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 248);
    v13 = *(v0 + 72);
    swift_unknownObjectRelease();
    sub_22953EAE4(v12, &qword_27D87E8F8, &qword_22A57C848);
    goto LABEL_6;
  }

  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  v212 = *(v0 + 320);
  v25 = *(v0 + 256);
  v199 = v25;
  v26 = *(v0 + 176);
  v27 = *(v0 + 160);
  sub_22957F2F8(*(v0 + 248), v24, &qword_27D87E900, &unk_22A57C850);
  v185 = v23;
  sub_229564F88(v24, v23, &qword_27D87E900, &unk_22A57C850);
  v28 = v23 + *(v25 + 48);
  v29 = v27[12];
  v30 = v27[16];
  v31 = (v28 + v27[20]);
  v32 = *v31;
  v33 = v31[1];
  v34 = sub_22A4DC52C();
  v206 = *(v34 - 8);
  v217 = v34;
  (*(v206 + 16))(v26, v28);
  v35 = v27[12];
  v36 = sub_22A4DCC4C();
  v203 = *(v36 - 8);
  v193 = v29;
  v224 = v36;
  (*(v203 + 16))(v26 + v35, v28 + v29);
  v37 = v27[16];
  v38 = sub_22A4DCDAC();
  v209 = *(v38 - 8);
  v190 = v30;
  v220 = v38;
  (*(v209 + 16))(v26 + v37, v28 + v30);
  v39 = (v26 + v27[20]);
  *v39 = v32;
  v39[1] = v33;
  v40 = sub_22A4DCD0C();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v212, v185, v40);
  sub_22957F2F8(v26, v212 + *(v199 + 48), &qword_27D87E8F0, &unk_22A57C838);

  v42 = [v3 chipAccessoryServer];
  v43 = [v42 matterDevice];

  v44 = *(v0 + 320);
  v175 = v43;
  v196 = v41;
  if (!v43)
  {

    sub_22953EAE4(v44, &qword_27D87E900, &unk_22A57C850);
    v63 = v40;
LABEL_15:
    (*(*(v0 + 216) + 56))(*(v0 + 200), 1, 1, *(v0 + 208));
    v70 = v206;
    v71 = *(v209 + 8);
    v73 = v217;
    v72 = v220;
    v74 = v224;
    v75 = v203;
    goto LABEL_16;
  }

  v172 = v3;
  v173 = v28;
  v46 = *(v0 + 304);
  v45 = *(v0 + 312);
  v213 = v40;
  v180 = *(v0 + 296);
  v183 = *(v0 + 288);
  v166 = *(v0 + 280);
  v47 = v41;
  v48 = *(v0 + 168);
  v171 = *(v0 + 128);
  v186 = *(v0 + 120);
  sub_229564F88(v44, v45, &qword_27D87E900, &unk_22A57C850);
  v49 = v45 + *(v199 + 48);
  v50 = v27[12];
  v51 = v27[16];
  v177 = *(v49 + v27[20]);
  (*(v206 + 32))(v48, v49, v217);
  (*(v203 + 32))(v48 + v27[12], v49 + v50, v224);
  (*(v209 + 32))(v48 + v27[16], v49 + v51, v220);
  *(v48 + v27[20]) = v177;
  (*(v47 + 32))(v46, v45, v40);
  sub_22957F2F8(v48, v46 + *(v199 + 48), &qword_27D87E8F0, &unk_22A57C838);
  sub_229564F88(v46, v180, &qword_27D87E900, &unk_22A57C850);
  v165 = v180 + *(v199 + 48);
  v168 = v27[16];
  v170 = v27[12];
  v52 = *(v165 + v27[20] + 8);

  sub_229564F88(v46, v183, &qword_27D87E900, &unk_22A57C850);
  v53 = v183 + *(v199 + 48);
  v54 = v27[12];
  v164 = v27[16];
  v55 = *(v53 + v27[20] + 8);

  sub_229564F88(v46, v166, &qword_27D87E900, &unk_22A57C850);
  v56 = v166 + *(v199 + 48);
  v57 = v27[12];
  v58 = v27[16];
  v59 = *(v56 + v27[20] + 8);

  sub_22A4DCE1C();
  sub_22953EAE4(v46, &qword_27D87E900, &unk_22A57C850);
  v178 = *(v203 + 8);
  v178(v56 + v57, v224);
  v181 = *(v206 + 8);
  v181(v56, v217);
  v60 = *(v196 + 8);
  v60(v166, v213);
  v61 = *(v209 + 8);
  v61(v53 + v164, v220);
  v181(v53, v217);
  v167 = v60;
  v60(v183, v213);
  v62 = v165 + v168;
  v169 = v61;
  v61(v62, v220);
  v178(v165 + v170, v224);
  v181(v165, v217);
  sub_22A4DDF3C();
  v64 = *(v0 + 136);
  v65 = *(v0 + 144);
  v66 = *(v0 + 128);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  v67 = (*(v65 + 48))(v66, 1, v64);
  v68 = *(v0 + 320);
  if (v67 == 1)
  {
    v69 = *(v0 + 128);

    sub_22953EAE4(v68, &qword_27D87E900, &unk_22A57C850);
    sub_22953EAE4(v69, &qword_27D87E8E8, &qword_22A57C830);
    v28 = v173;
    v63 = v213;
    v3 = v172;
    goto LABEL_15;
  }

  v152 = *(v0 + 272);
  v153 = *(v0 + 200);
  v154 = *(v0 + 152);
  (*(*(v0 + 144) + 32))(v154, *(v0 + 128), *(v0 + 136));
  sub_229564F88(v68, v152, &qword_27D87E900, &unk_22A57C850);
  v155 = v152 + *(v199 + 48);
  v201 = v27[12];
  v188 = v27[16];
  v156 = v155 + v27[20];
  v157 = *(v156 + 8);
  (*v156)(v154);
  v158 = *(v0 + 320);
  v159 = *(v0 + 144);
  v160 = *(v0 + 152);
  v161 = *(v0 + 136);
  v162 = *(v0 + 272);

  (*(v159 + 8))(v160, v161);
  sub_22953EAE4(v158, &qword_27D87E900, &unk_22A57C850);
  v71 = v169;
  v169(v155 + v188, v220);
  v74 = v224;
  v178(v155 + v201, v224);
  v73 = v217;
  v181(v155, v217);
  v163 = v162;
  v63 = v213;
  v167(v163, v213);
  v70 = v206;
  v72 = v220;
  v28 = v173;
  v75 = v203;
  v3 = v172;
LABEL_16:
  v76 = *(v0 + 328);
  v71(v28 + v190, v72);
  (*(v75 + 8))(v28 + v193, v74);
  (*(v70 + 8))(v28, v73);
  (*(v196 + 8))(v76, v63);
  v77 = *(v0 + 208);
  v78 = *(v0 + 216);
  v80 = *(v0 + 192);
  v79 = *(v0 + 200);
  v81 = *(v0 + 88);
  v82 = *(v0 + 96);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v221 = *(*(v83 - 8) + 56);
  v225 = v83;
  v221(v80, 2, 2);
  (*(v78 + 56))(v80, 0, 1, v77);
  v84 = *(v81 + 48);
  sub_229564F88(v79, v82, &qword_27D87EBB0, &qword_22A57C720);
  sub_229564F88(v80, v82 + v84, &qword_27D87EBB0, &qword_22A57C720);
  v85 = *(v78 + 48);
  v86 = v85(v82, 1, v77);
  v87 = *(v0 + 208);
  if (v86 != 1)
  {
    sub_229564F88(*(v0 + 96), *(v0 + 184), &qword_27D87EBB0, &qword_22A57C720);
    if (v85(v82 + v84, 1, v87) != 1)
    {
      v93 = *(v0 + 232);
      v95 = *(v0 + 192);
      v94 = *(v0 + 200);
      v96 = *(v0 + 184);
      v214 = *(v0 + 96);
      sub_22968FE78(v82 + v84, v93, _s13PresenceStateOMa);
      v97 = sub_229698FEC(v96, v93);
      sub_22968FF48(v93, _s13PresenceStateOMa);
      sub_22953EAE4(v95, &qword_27D87EBB0, &qword_22A57C720);
      sub_22953EAE4(v94, &qword_27D87EBB0, &qword_22A57C720);
      sub_22968FF48(v96, _s13PresenceStateOMa);
      sub_22953EAE4(v214, &qword_27D87EBB0, &qword_22A57C720);
      if (v97)
      {
        goto LABEL_24;
      }

LABEL_22:
      v91 = *(v0 + 240);
      sub_22A4DB68C();
      v92 = 0;
      goto LABEL_25;
    }

    v89 = *(v0 + 200);
    v90 = *(v0 + 184);
    sub_22953EAE4(*(v0 + 192), &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v89, &qword_27D87EBB0, &qword_22A57C720);
    sub_22968FF48(v90, _s13PresenceStateOMa);
LABEL_21:
    sub_22953EAE4(*(v0 + 96), &qword_27D87E890, &qword_22A57C718);
    goto LABEL_22;
  }

  v88 = *(v0 + 200);
  sub_22953EAE4(*(v0 + 192), &qword_27D87EBB0, &qword_22A57C720);
  sub_22953EAE4(v88, &qword_27D87EBB0, &qword_22A57C720);
  if (v85(v82 + v84, 1, v87) != 1)
  {
    goto LABEL_21;
  }

  sub_22953EAE4(*(v0 + 96), &qword_27D87EBB0, &qword_22A57C720);
LABEL_24:
  v92 = 2;
LABEL_25:
  v98 = *(v0 + 80);
  (v221)(*(v0 + 240), v92, 2, v225);
  v99 = *(v98 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);
  *(v0 + 352) = v99;
  if ([v99 containsObject_])
  {
    v100 = *(v0 + 240);
    v102 = *(v0 + 64);
    v101 = *(v0 + 72);
    sub_22953EAE4(*(v0 + 336), &qword_27D87E900, &unk_22A57C850);
    swift_unknownObjectRelease();
    v103 = v100;
    v104 = v102;
LABEL_40:
    sub_22968FE78(v103, v104, _s13PresenceStateOMa);
    v143 = *(v0 + 328);
    v142 = *(v0 + 336);
    v145 = *(v0 + 312);
    v144 = *(v0 + 320);
    v147 = *(v0 + 296);
    v146 = *(v0 + 304);
    v149 = *(v0 + 280);
    v148 = *(v0 + 288);
    v150 = *(v0 + 272);
    v151 = *(v0 + 248);
    v187 = *(v0 + 240);
    v191 = *(v0 + 232);
    v194 = *(v0 + 224);
    v197 = *(v0 + 200);
    v200 = *(v0 + 192);
    v204 = *(v0 + 184);
    v207 = *(v0 + 176);
    v210 = *(v0 + 168);
    v215 = *(v0 + 152);
    v218 = *(v0 + 128);
    v222 = *(v0 + 120);
    v226 = *(v0 + 96);

    v21 = *(v0 + 8);
    goto LABEL_7;
  }

  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v105 = *(v0 + 240);
  v106 = *(v0 + 224);
  v107 = *(v0 + 72);
  v108 = sub_22A4DD07C();
  *(v0 + 360) = __swift_project_value_buffer(v108, qword_27D8AB790);
  sub_22968FEE0(v105, v106, _s13PresenceStateOMa);
  swift_unknownObjectRetain();
  v109 = sub_22A4DD05C();
  v110 = sub_22A4DDCCC();
  swift_unknownObjectRelease();
  v111 = os_log_type_enabled(v109, v110);
  v112 = *(v0 + 224);
  if (v111)
  {
    v113 = *(v0 + 72);
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v227[0] = v115;
    *v114 = 136315650;
    *(v114 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, v227);
    *(v114 + 12) = 2080;
    v116 = [v113 shortDescription];
    v117 = sub_22A4DD5EC();
    v119 = v118;

    v120 = sub_2295A3E30(v117, v119, v227);

    *(v114 + 14) = v120;
    *(v114 + 22) = 2080;
    v121 = sub_229698D5C();
    v123 = v122;
    sub_22968FF48(v112, _s13PresenceStateOMa);
    v124 = sub_2295A3E30(v121, v123, v227);

    *(v114 + 24) = v124;
    _os_log_impl(&dword_229538000, v109, v110, "%s - accessory: %s, presenceState: %s", v114, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v115, -1, -1);
    MEMORY[0x22AAD4E50](v114, -1, -1);
  }

  else
  {

    sub_22968FF48(v112, _s13PresenceStateOMa);
  }

  v125 = *(v0 + 80);
  v126 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  if (*(*(v125 + v126) + 16))
  {
    v127 = *(v0 + 360);
    v128 = *(v0 + 80);
    [*(v0 + 352) addObject_];

    v129 = sub_22A4DD05C();
    v130 = sub_22A4DDCCC();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = *(v0 + 352);
      v132 = *(v0 + 336);
      v133 = *(v0 + 72);
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v227[0] = v135;
      *v134 = 136315394;
      *(v134 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, v227);
      *(v134 + 12) = 2080;
      *(v0 + 56) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E908, &qword_22A57C860);
      v136 = sub_22A4DBA6C();
      v138 = sub_2295A3E30(v136, v137, v227);

      *(v134 + 14) = v138;
      _os_log_impl(&dword_229538000, v129, v130, "%s - observing accessories %s", v134, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v135, -1, -1);
      MEMORY[0x22AAD4E50](v134, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      v132 = *(v0 + 336);
      v141 = *(v0 + 72);
      swift_unknownObjectRelease();
    }

    sub_22953EAE4(v132, &qword_27D87E900, &unk_22A57C850);
    v103 = *(v0 + 240);
    v104 = *(v0 + 64);
    goto LABEL_40;
  }

  v139 = swift_task_alloc();
  *(v0 + 368) = v139;
  *v139 = v0;
  v139[1] = sub_22968732C;
  v140 = *(v0 + 80);

  return sub_229688B80();
}

uint64_t sub_22968732C()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22968743C, v2, 0);
}

uint64_t sub_22968743C()
{
  v39 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 80);
  [*(v0 + 352) addObject_];

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = *(v0 + 336);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, &v38);
    *(v8 + 12) = 2080;
    *(v0 + 56) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E908, &qword_22A57C860);
    v10 = sub_22A4DBA6C();
    v12 = sub_2295A3E30(v10, v11, &v38);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_229538000, v3, v4, "%s - observing accessories %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(v0 + 336);
    v13 = *(v0 + 72);
    swift_unknownObjectRelease();
  }

  sub_22953EAE4(v6, &qword_27D87E900, &unk_22A57C850);
  sub_22968FE78(*(v0 + 240), *(v0 + 64), _s13PresenceStateOMa);
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 272);
  v23 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 232);
  v28 = *(v0 + 224);
  v29 = *(v0 + 200);
  v30 = *(v0 + 192);
  v31 = *(v0 + 184);
  v32 = *(v0 + 176);
  v33 = *(v0 + 168);
  v34 = *(v0 + 152);
  v35 = *(v0 + 128);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_229687758@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v174 = sub_22A4DD07C();
  v4 = *(v174 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v174);
  v8 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v172 = &v164 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E948, &unk_22A57E3C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v178 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v188 = &v164 - v14;
  v15 = sub_22A4DCD0C();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v164 - v21;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v23 = *(*(v197 - 1) + 64);
  v24 = MEMORY[0x28223BE20](v197);
  v175 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v192 = &v164 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v187 = &v164 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v164 - v30;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E928, &qword_22A57C8B0);
  v181 = *(v196 - 8);
  v32 = *(v181 + 64);
  MEMORY[0x28223BE20](v196);
  v180 = &v164 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E930, &qword_22A57C8B8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v213 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v195 = &v164 - v39;
  MEMORY[0x28223BE20](v38);
  v189 = &v164 - v40;
  v41 = [v2 matterAdapter];
  v194 = v2;
  v183 = v41;
  if (v41)
  {
    goto LABEL_4;
  }

  v212 = v4;
  v43 = v8;
  v44 = [v2 bridge];
  v45 = [v44 matterAdapter];

  v183 = v45;
  if (v45)
  {
    v4 = v212;
LABEL_4:
    v184 = v22;
    v177 = v20;
    v165 = a1;
    if (qword_27D87B988 != -1)
    {
LABEL_35:
      swift_once();
    }

    v208 = 0;
    v46 = off_27D87E8A0;
    v190 = v192 + 8;
    v171 = v175 + 8;
    v47 = *(off_27D87E8A0 + 2);
    v206 = (v181 + 48);
    v207 = (v181 + 56);
    v193 = (v16 + 48);
    v182 = (v16 + 32);
    v179 = (v16 + 8);
    v170 = (v4 + 1);
    v167 = "fication(from:attributeReport:)";
    *&v42 = 136315394;
    v166 = v42;
    v169 = xmmword_22A576190;
    v191 = v15;
    v214 = v31;
    v48 = v196;
    v49 = v213;
    v186 = off_27D87E8A0;
    for (i = v47; ; v47 = i)
    {
      v16 = v208;
      if (v208 == v47)
      {
        v53 = 1;
        v208 = v47;
      }

      else
      {
        if ((v208 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v208 >= v46[2])
        {
          goto LABEL_34;
        }

        sub_229564F88(v46 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v208, v49, &qword_27D87E928, &qword_22A57C8B0);
        v53 = 0;
        v208 = v16 + 1;
      }

      v54 = *v207;
      v55 = 1;
      (*v207)(v49, v53, 1, v48);
      v56 = *v206;
      if ((*v206)(v49, 1, v48) != 1)
      {
        v57 = (v49 + *(v48 + 48));
        v58 = v197;
        v212 = v56;
        v59 = v197[12];
        *&v203 = v197[16];
        *&v210 = v197[20];
        v205 = sub_22A4DC52C();
        v60 = *(v205 - 8);
        v204 = *(v60 + 32);
        v209 = v60 + 32;
        v61 = v180;
        v204(v180, v213, v205);
        v62 = v58[12];
        v202 = v62;
        v63 = sub_22A4DCC4C();
        v64 = *(v63 - 8);
        v200 = *(v64 + 32);
        v201 = (v64 + 32);
        (v200)(&v62[v61], &v213[v59], v63);
        v65 = v58[16];
        v198 = v65;
        v66 = sub_22A4DCDAC();
        v67 = *(*(v66 - 8) + 32);
        v211 = v54;
        v67(&v61[v65], &v213[v203], v66);
        v68 = v57[1];
        *&v203 = *v57;
        v199 = v68;
        v69 = v195;
        v70 = &v195[*(v48 + 48)];
        v71 = v58[12];
        v72 = v58[16];
        v73 = v58[20];
        v210 = *&v213[v210];
        v204(v195, v61, v205);
        (v200)(&v69[v71], &v202[v61], v63);
        v74 = v66;
        v56 = v212;
        v67(&v69[v72], &v61[v198], v74);
        v54 = v211;
        v55 = 0;
        *&v69[v73] = v210;
        v75 = v199;
        *v70 = v203;
        *(v70 + 1) = v75;
        v48 = v196;
      }

      v76 = v195;
      v54(v195, v55, 1, v48);
      v77 = v76;
      v78 = v189;
      sub_22957F2F8(v77, v189, &qword_27D87E930, &qword_22A57C8B8);
      if (v56(v78, 1, v48) == 1)
      {

        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
        v146 = *(*(v145 - 8) + 56);
        v147 = v165;
        return v146(v147, 1, 1, v145);
      }

      v79 = v197;
      v80 = v197[12];
      v81 = v197[16];
      v82 = v197[20];
      v83 = (v78 + *(v48 + 48));
      v84 = *v83;
      v204 = v83[1];
      v205 = v84;
      v85 = sub_22A4DC52C();
      v211 = *(v85 - 8);
      v212 = v85;
      v202 = *(v211 + 4);
      v203 = *(v78 + v82);
      v86 = v187;
      (v202)(v187, v78, v85);
      v87 = sub_22A4DCC4C();
      v209 = *(v87 - 8);
      *&v210 = v87;
      v200 = *(v209 + 32);
      v201 = v80;
      (v200)(&v80[v86], &v80[v78], v87);
      v88 = sub_22A4DCDAC();
      v89 = *(v88 - 8);
      v90 = *(v89 + 32);
      v199 = v81;
      v90(&v81[v86], &v81[v78], v88);
      v91 = v79[12];
      v92 = v79[16];
      v198 = v79[20];
      (v202)(v214, v86, v212);
      v93 = v210;
      (v200)(&v214[v91], &v201[v86], v210);
      v31 = v214;
      v90(&v214[v92], &v199[v86], v88);
      *&v31[v198] = v203;
      v94 = v192;
      sub_229564F88(v31, v192, &qword_27D87E8F0, &unk_22A57C838);
      v95 = v79[12];
      v96 = v79[16];
      v97 = *(v190 + v79[20]);

      v98 = sub_22A4DC51C();
      v99 = *(v211 + 1);
      v4 = v191;
      v211 = (v211 + 8);
      v201 = v99;
      (v99)(v94, v212);
      v100 = *(v89 + 8);
      v202 = (v89 + 8);
      *&v203 = v88;
      v200 = v100;
      (v100)(v94 + v96, v88);
      v101 = *(v209 + 8);
      v102 = v209 + 8;
      v101(v94 + v95, v93);
      v103 = v188;
      v15 = v205;
      v104 = v204;
      sub_22968F6F8(v205, v204, v188);
      v105 = *v193;
      if ((*v193)(v103, 1, v4) == 1)
      {
        sub_22953EAE4(v31, &qword_27D87E8F0, &unk_22A57C838);

        v50 = v103;
        v51 = &qword_27D87E948;
        v52 = &unk_22A57E3C0;
        goto LABEL_7;
      }

      v199 = v101;
      v106 = v184;
      v107 = v103;
      v108 = *v182;
      (*v182)(v184, v107, v4);
      sub_22A4DCCFC();
      v109 = sub_22A4DE7CC();
      v110 = [v183 isEndpointConformingToDeviceTypeID:v98 endpointID:v109];

      if (!v110)
      {
        break;
      }

      v111 = v108;
      v112 = v178;
      v113 = v194;
      sub_22968F6F8(v15, v104, v178);

      v15 = &unk_22A57C838;
      if (v105(v112, 1, v4) != 1)
      {
        v168 = v111;
        v111(v177, v112, v4);
        sub_22A4DCCFC();
        v204 = sub_22A4DE7CC();
        v124 = v192;
        sub_229564F88(v31, v192, &qword_27D87E8F0, &unk_22A57C838);
        v125 = v197;
        v126 = v197[12];
        v205 = v197[16];
        v127 = *(v190 + v197[20]);

        sub_22A4DCC3C();
        v176 = sub_22A4DE7DC();
        v128 = v124 + v126;
        v209 = v102;
        v129 = v199;
        (v199)(v128, v210);
        v130 = v175;
        sub_229564F88(v31, v175, &qword_27D87E8F0, &unk_22A57C838);
        v198 = v125[12];
        v131 = v125[16];
        v132 = *(v171 + v125[20]);

        sub_22A4DCD9C();
        v133 = sub_22A4DE7DC();
        v4 = v203;
        v31 = v200;
        (v200)(v130 + v131, v203);
        v134 = objc_opt_self();
        v135 = v204;
        v136 = v176;
        v137 = [v134 attributePathWithEndpointID:v204 clusterID:v176 attributeID:v133];

        v138 = v191;
        v129(v130 + v198, v210);
        v139 = v130;
        v140 = v212;
        v15 = v201;
        (v201)(v139, v212);
        (v31)(v124 + v205, v4);
        (v15)(v124, v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v141 = swift_allocObject();
        *(v141 + 16) = v169;
        *(v141 + 32) = v137;
        sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
        v142 = v137;
        v143 = sub_22A4DD81C();

        LODWORD(v140) = [v183 isImplementingAttributePaths_];

        v144 = *v179;
        (*v179)(v184, v138);
        if (v140)
        {

          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
          v162 = *(v161 + 48);
          v163 = v165;
          v168(v165, v177, v138);
          sub_22957F2F8(v214, v163 + v162, &qword_27D87E8F0, &unk_22A57C838);
          return (*(*(v161 - 8) + 56))(v163, 0, 1, v161);
        }

        v144(v177, v138);
        v50 = v214;
        goto LABEL_25;
      }

      sub_22953EAE4(v112, &qword_27D87E948, &unk_22A57E3C0);
      v114 = v172;
      sub_229785E38();
      v115 = v113;
      v116 = sub_22A4DD05C();
      v117 = sub_22A4DDCCC();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v215 = v15;
        *v118 = v166;
        *(v118 + 4) = sub_2295A3E30(0xD000000000000013, v167 | 0x8000000000000000, &v215);
        *(v118 + 12) = 2080;
        v119 = [v115 shortDescription];
        v120 = sub_22A4DD5EC();
        v122 = v121;

        v123 = sub_2295A3E30(v120, v122, &v215);

        *(v118 + 14) = v123;
        _os_log_impl(&dword_229538000, v116, v117, "%s - accessory: %s no endpoint matching", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v15, -1, -1);
        MEMORY[0x22AAD4E50](v118, -1, -1);

        (*v170)(v114, v174);
        (*v179)(v184, v4);
        goto LABEL_22;
      }

      (*v170)(v114, v174);
      (*v179)(v184, v4);
      v50 = v31;
      v51 = &qword_27D87E8F0;
      v52 = &unk_22A57C838;
LABEL_7:
      sub_22953EAE4(v50, v51, v52);
      v48 = v196;
      v49 = v213;
      v46 = v186;
    }

    (*v179)(v106, v4);
LABEL_22:
    v50 = v31;
LABEL_25:
    v51 = &qword_27D87E8F0;
    v52 = &unk_22A57C838;
    goto LABEL_7;
  }

  sub_229785E38();
  v149 = v2;
  v150 = sub_22A4DD05C();
  v151 = sub_22A4DDCCC();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = a1;
    v154 = swift_slowAlloc();
    v215 = v154;
    *v152 = 136315394;
    *(v152 + 4) = sub_2295A3E30(0xD000000000000013, 0x800000022A58FFC0, &v215);
    *(v152 + 12) = 2080;
    v155 = [v149 shortDescription];
    v156 = sub_22A4DD5EC();
    v158 = v157;

    v159 = sub_2295A3E30(v156, v158, &v215);

    *(v152 + 14) = v159;
    _os_log_impl(&dword_229538000, v150, v151, "%s - accessory: %s no matter adapter", v152, 0x16u);
    swift_arrayDestroy();
    v160 = v154;
    a1 = v153;
    MEMORY[0x22AAD4E50](v160, -1, -1);
    MEMORY[0x22AAD4E50](v152, -1, -1);
  }

  (v212[1])(v43, v174);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v146 = *(*(v145 - 8) + 56);
  v147 = a1;
  return v146(v147, 1, 1, v145);
}

uint64_t sub_229688B80()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_229688BC8, v0, 0);
}

uint64_t sub_229688BC8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  v3 = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[5];
    v12 = v0[6];
    v0[7] = *(v11 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationCenter);
    v13 = sub_22A4DDE5C();
    v0[8] = v13;
    v14 = sub_22968FFA8(&qword_27D87E910, _s31MatterAccessoryPresenceDetectorCMa);
    v0[9] = v14;
    v15 = swift_task_alloc();
    v0[10] = v15;
    v15[2] = v11;
    v15[3] = v13;
    v15[4] = v12;
    v16 = *(MEMORY[0x277D859E0] + 4);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_229688D60;
    v8 = sub_22968F9B0;
    v7 = 0x800000022A58FDB0;
    v10 = MEMORY[0x277D84F78] + 8;
    v4 = v11;
    v5 = v14;
    v6 = 0xD00000000000001FLL;
    v9 = v15;
  }

  return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_229688D60()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229688E8C, v3, 0);
}

uint64_t sub_229688E8C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_22A4DDE5C();
  v0[12] = v5;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_229688FB0;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v4, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_22968F9F0, v6, v9);
}

uint64_t sub_229688FB0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2296890DC, v3, 0);
}

uint64_t sub_2296890DC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_22A4DDE5C();
  v0[15] = v5;
  v6 = swift_task_alloc();
  v0[16] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_229680560;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v4, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_22968FA30, v6, v9);
}

id sub_229689200(void *a1)
{
  v2 = v1;
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  swift_unknownObjectRetain();
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A58FD20, &v16);
    *(v7 + 12) = 2080;
    v9 = [a1 shortDescription];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v13 = sub_2295A3E30(v10, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_229538000, v5, v6, "%s - %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);

  return [v14 removeObject_];
}

uint64_t sub_2296893F4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229689414, v3, 0);
}

uint64_t sub_229689414()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2296894C8()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](sub_2296894E8, v2, 0);
}

uint64_t sub_2296894E8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      v6 = *(v3 + v5);

      sub_22A4DDA7C();

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2296895E0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229569B30;

  return sub_229685988(a1, a2);
}

uint64_t sub_22968968C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2296896AC, v3, 0);
}

uint64_t sub_2296896AC()
{
  v1 = *(v0 + 24);
  sub_229689200(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22968970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E918, &qword_22A57C8A8) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v8 = _s15AttributeReportVMa();
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = sub_22A4DB21C();
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v13 = *(v12 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v6[23] = v15;
  v16 = *(v15 - 8);
  v6[24] = v16;
  v17 = *(v16 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229689904, 0, 0);
}

uint64_t sub_229689904()
{
  v1 = v0[25];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v5 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_229689A34;
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_229689A34()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_229683EF8;
  }

  else
  {
    v3 = sub_229689B48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229689B64()
{
  v42 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[17];
    v16 = v0[14];
    (*(v0[24] + 8))(v0[25], v0[23]);

    v17 = v0[1];

    return v17();
  }

  (*(v3 + 32))(v0[21], v1, v2);
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v41);
    _os_log_impl(&dword_229538000, v5, v6, "%s - received attribute changed notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[19] + 8))(v0[21], v0[18]);
    v12 = v0[22];
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v19 = v0[21];
  sub_22A4DB1FC();
  if (!v0[5])
  {
    (*(v0[19] + 8))(v0[21], v0[18]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_19;
  }

  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v0[19] + 8))(v0[21], v0[18]);

    goto LABEL_19;
  }

  v20 = v0[27];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[18];
  v24 = v0[19];
  v25 = v0[14];
  v26 = v0[10];
  v0[29] = v26;
  (*(v24 + 16))(v22, v21, v23);
  sub_22969003C(v22, v25);
  v27 = v20;
  v28 = v0[15];
  v29 = v0[14];
  v30 = (v0[16] + 56);
  if (v27)
  {
    v31 = v0[21];
    v32 = v0[18];
    v33 = v0[19];

    (*(v33 + 8))(v31, v32);
    (*v30)(v29, 1, 1, v28);
    sub_22953EAE4(v29, &qword_27D87E918, &qword_22A57C8A8);
LABEL_19:
    v34 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
    v35 = *(MEMORY[0x277D856D0] + 4);
    v36 = swift_task_alloc();
    v0[26] = v36;
    *v36 = v0;
    v36[1] = sub_229689A34;
    v37 = v0[25];
    v38 = v0[22];
    v39 = v0[23];

    return MEMORY[0x282200308](v38, v39, v34);
  }

  v40 = v0[17];
  (*v30)(v0[14], 0, 1, v0[15]);
  sub_22968FE78(v29, v40, _s15AttributeReportVMa);

  return MEMORY[0x2822009F8](sub_22968A080, v11, 0);
}

uint64_t sub_22968A080()
{
  v1 = *(v0 + 224);
  sub_22968A220(*(v0 + 232), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22968A0EC, 0, 0);
}

uint64_t sub_22968A0EC()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];

  sub_22968FF48(v6, _s15AttributeReportVMa);
  (*(v5 + 8))(v3, v4);
  v7 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_229689A34;
  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[23];

  return MEMORY[0x282200308](v11, v12, v7);
}

void sub_22968A220(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v75 - v6;
  v7 = _s15AttributeReportVMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = _s23AccessoryPresenceUpdateVMa();
  v10 = *(*(updated - 8) + 64);
  v11 = MEMORY[0x28223BE20](updated);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v81 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v75 - v18;
  v20 = _s13PresenceStateOMa();
  v86 = *(v20 - 8);
  v21 = v86[8];
  MEMORY[0x28223BE20](v20);
  v85 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v75 - v33;
  v35 = *(v7 + 20);
  v87 = a2;
  sub_22968DDC8(v26);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    sub_22957F2F8(v26, v34, &qword_27D87E900, &unk_22A57C850);
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      v41 = a1;
      v42 = [v40 matterNodeID];
      v43 = sub_22968E76C(v34, v42);

      if (!v43)
      {
        sub_22953EAE4(v34, &qword_27D87E900, &unk_22A57C850);

        return;
      }

      v76 = v43;
      sub_229564F88(v34, v32, &qword_27D87E900, &unk_22A57C850);
      v44 = &v32[*(v27 + 48)];
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
      v46 = v45[12];
      v47 = v45[16];
      v48 = &v44[v45[20]];
      v49 = *(v48 + 1);
      (*v48)(v87 + *(v7 + 24));

      v50 = sub_22A4DCDAC();
      (*(*(v50 - 8) + 8))(&v44[v47], v50);
      v51 = sub_22A4DCC4C();
      (*(*(v51 - 8) + 8))(&v44[v46], v51);
      v52 = sub_22A4DC52C();
      (*(*(v52 - 8) + 8))(v44, v52);
      v53 = sub_22A4DCD0C();
      (*(*(v53 - 8) + 8))(v32, v53);
      if ((v86[6])(v19, 1, v20) == 1)
      {
        sub_22953EAE4(v34, &qword_27D87E900, &unk_22A57C850);

        v36 = &qword_27D87EBB0;
        v37 = &qword_22A57C720;
        v38 = v19;
        goto LABEL_16;
      }

      v86 = v41;
      v54 = v19;
      v55 = v85;
      sub_22968FE78(v54, v85, _s13PresenceStateOMa);
      v56 = v81;
      sub_22968FEE0(v55, &v81[*(updated + 20)], _s13PresenceStateOMa);
      *v56 = v76;
      if (qword_27D87B980 != -1)
      {
        swift_once();
      }

      v57 = sub_22A4DD07C();
      __swift_project_value_buffer(v57, qword_27D8AB790);
      v58 = v79;
      sub_22968FEE0(v87, v79, _s15AttributeReportVMa);
      v59 = v78;
      sub_22968FEE0(v56, v78, _s23AccessoryPresenceUpdateVMa);
      v60 = sub_22A4DD05C();
      v61 = sub_22A4DDCCC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v88[0] = v63;
        *v62 = 136315650;
        *(v62 + 4) = sub_2295A3E30(0xD00000000000003FLL, 0x800000022A58FF80, v88);
        *(v62 + 12) = 2080;
        v64 = sub_229690914();
        v65 = v58;
        v67 = v66;
        sub_22968FF48(v65, _s15AttributeReportVMa);
        v68 = sub_2295A3E30(v64, v67, v88);

        *(v62 + 14) = v68;
        *(v62 + 22) = 2080;
        v69 = sub_22967B364();
        v71 = v70;
        sub_22968FF48(v59, _s23AccessoryPresenceUpdateVMa);
        v72 = sub_2295A3E30(v69, v71, v88);

        *(v62 + 24) = v72;
        _os_log_impl(&dword_229538000, v60, v61, "%s - %s => %s", v62, 0x20u);
        swift_arrayDestroy();
        v73 = v63;
        v55 = v85;
        MEMORY[0x22AAD4E50](v73, -1, -1);
        MEMORY[0x22AAD4E50](v62, -1, -1);
      }

      else
      {

        sub_22968FF48(v59, _s23AccessoryPresenceUpdateVMa);
        sub_22968FF48(v58, _s15AttributeReportVMa);
      }

      sub_22968FEE0(v56, v80, _s23AccessoryPresenceUpdateVMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
      v74 = v82;
      sub_22A4DDA0C();

      (*(v83 + 8))(v74, v84);
      sub_22968FF48(v56, _s23AccessoryPresenceUpdateVMa);
      sub_22968FF48(v55, _s13PresenceStateOMa);
    }

    v36 = &qword_27D87E900;
    v37 = &unk_22A57C850;
    v38 = v34;
    goto LABEL_16;
  }

  v36 = &qword_27D87E8F8;
  v37 = &qword_22A57C848;
  v38 = v26;
LABEL_16:
  sub_22953EAE4(v38, v36, v37);
}

uint64_t sub_22968ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_22A4DB21C();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v13 = *(v12 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22968AE34, 0, 0);
}

uint64_t sub_22968AE34()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v5 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_22968AF64;
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[18];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_22968AF64()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_229682C34;
  }

  else
  {
    v3 = sub_22968B078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22968B094()
{
  v24 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v13 = v0[16];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v14 = v0[1];

    return v14();
  }

  (*(v3 + 32))(v0[16], v1, v2);
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v23);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is reachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[15] + 8))(v0[16], v0[14]);
    v12 = v0[17];
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v16 = v0[16];
  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[24] = v0[10];

      return MEMORY[0x2822009F8](sub_22968B47C, v11, 0);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v17 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v18 = *(MEMORY[0x277D856D0] + 4);
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_22968AF64;
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[18];

  return MEMORY[0x282200308](v21, v22, v17);
}

uint64_t sub_22968B47C()
{
  v1 = *(v0 + 184);
  sub_22968B5F0(*(v0 + 192));

  return MEMORY[0x2822009F8](sub_22968B4E4, 0, 0);
}

uint64_t sub_22968B4E4()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);
  v6 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_22968AF64;
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];

  return MEMORY[0x282200308](v10, v11, v6);
}

void sub_22968B5F0(void *a1)
{
  v2 = v1;
  updated = _s23AccessoryPresenceUpdateVMa();
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v187 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v186 = *(v188 - 8);
  v6 = *(v186 + 64);
  MEMORY[0x28223BE20](v188);
  v185 = &v163 - v7;
  v8 = sub_22A4DCDFC();
  v198 = *(v8 - 8);
  v199 = v8;
  v9 = *(v198 + 64);
  MEMORY[0x28223BE20](v8);
  v204 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v197 = &v163 - v13;
  v14 = sub_22A4DC77C();
  v190 = *(v14 - 8);
  v191 = v14;
  v15 = *(v190 + 64);
  MEMORY[0x28223BE20](v14);
  v183 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v196 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v163 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v202 = &v163 - v25;
  v26 = _s13PresenceStateOMa();
  v200 = *(v26 - 8);
  v201 = v26;
  v27 = *(v200 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v192 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v193 = &v163 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v163 - v33;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v35 = *(v208 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v208);
  v189 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v195 = &v163 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v203 = &v163 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v194 = &v163 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v163 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v163 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v206 = &v163 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v207 = &v163 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v163 - v55;
  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (v57)
  {
    v58 = v57;
    v182 = v56;
    v59 = *(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);
    v205 = a1;
    if ([v59 containsObject_])
    {
      v172 = v2;
      sub_229687758(v34);
      v60 = v208;
      if ((*(v35 + 48))(v34, 1, v208) == 1)
      {

        v61 = &qword_27D87E8F8;
        v62 = &qword_22A57C848;
        v63 = v34;
LABEL_22:
        sub_22953EAE4(v63, v61, v62);
        return;
      }

      v65 = v34;
      v66 = v182;
      sub_22957F2F8(v65, v182, &qword_27D87E900, &unk_22A57C850);
      v67 = v207;
      sub_229564F88(v66, v207, &qword_27D87E900, &unk_22A57C850);
      v68 = v67 + *(v60 + 48);
      v69 = v17[12];
      v70 = v17[16];
      v71 = (v68 + v17[20]);
      v73 = *v71;
      v72 = v71[1];
      v179 = v73;
      v174 = v72;
      v74 = sub_22A4DC52C();
      v177 = *(v74 - 8);
      v75 = v177[2];
      v181 = v74;
      v75(v22, v68);
      v76 = v17[12];
      v77 = sub_22A4DCC4C();
      v176 = *(v77 - 8);
      v78 = *(v176 + 16);
      v171 = v69;
      v180 = v77;
      v78(&v22[v76], v68 + v69);
      v79 = v17[16];
      v80 = sub_22A4DCDAC();
      v178 = *(v80 - 8);
      v81 = *(v178 + 16);
      v170 = v70;
      v175 = v80;
      v81(&v22[v79], v68 + v70);
      v82 = &v22[v17[20]];
      v83 = v174;
      *v82 = v179;
      *(v82 + 1) = v83;
      v84 = sub_22A4DCD0C();
      v85 = *(v84 - 8);
      v86 = *(v85 + 16);
      v87 = v206;
      v179 = v84;
      v86(v206, v67, v84);
      v88 = v208;
      sub_22957F2F8(v22, v87 + *(v208 + 48), &qword_27D87E8F0, &unk_22A57C838);

      v89 = [v58 chipAccessoryServer];
      v90 = [v89 matterDevice];

      v173 = v85;
      if (v90)
      {
        v168 = v68;
        sub_229564F88(v87, v50, &qword_27D87E900, &unk_22A57C850);
        v169 = v90;
        v91 = v88;
        v92 = *(v88 + 48);
        v93 = v85;
        v94 = &v50[v92];
        v95 = v17[12];
        v96 = v17[16];
        v97 = v177[4];
        v167 = *&v50[v92 + v17[20]];
        v98 = v196;
        v97(v196, &v50[v92], v181);
        (*(v176 + 32))(v98 + v17[12], &v94[v95], v180);
        (*(v178 + 32))(v98 + v17[16], &v94[v96], v175);
        *(v98 + v17[20]) = v167;
        (*(v93 + 32))(v47, v50, v179);
        sub_22957F2F8(v98, &v47[*(v91 + 48)], &qword_27D87E8F0, &unk_22A57C838);
        v99 = v194;
        sub_229564F88(v47, v194, &qword_27D87E900, &unk_22A57C850);
        v166 = &v99[*(v91 + 48)];
        v196 = v17[12];
        *&v167 = v17[16];
        v100 = *&v166[v17[20] + 8];

        v101 = v203;
        sub_229564F88(v47, v203, &qword_27D87E900, &unk_22A57C850);
        v102 = &v101[*(v91 + 48)];
        v103 = v17[12];
        v165 = v17[16];
        v104 = &v102[v17[20]];
        v164 = v102;
        v105 = *(v104 + 1);

        v106 = v195;
        sub_229564F88(v47, v195, &qword_27D87E900, &unk_22A57C850);
        v107 = v106 + *(v91 + 48);
        v108 = v17[12];
        v109 = v17[16];
        v110 = *(v107 + v17[20] + 8);

        sub_22A4DCE1C();
        sub_22953EAE4(v47, &qword_27D87E900, &unk_22A57C850);
        v111 = (v176 + 8);
        v194 = *(v176 + 8);
        (v194)(v107 + v108, v180);
        v112 = v177[1];
        v112(v107, v181);
        v114 = (v173 + 8);
        v113 = *(v173 + 8);
        v115 = v179;
        v113(v106, v179);
        v117 = v178 + 8;
        v116 = *(v178 + 8);
        v163 = v17;
        v118 = v164;
        v119 = v175;
        v116(v165 + v164, v175);
        v120 = v118;
        v121 = v181;
        v112(v120, v181);
        v165 = v113;
        v164 = v114;
        v113(v203, v115);
        v122 = v194;
        v123 = v166;
        v203 = v116;
        v195 = v117;
        v116(&v166[v167], v119);
        v124 = v204;
        v125 = &v123[v196];
        v196 = v111;
        (v122)(v125, v180);
        v112(v123, v121);
        v126 = v197;
        sub_22A4DDF3C();
        v129 = v163;
        *&v167 = v112;
        v130 = v178;
        (*(v198 + 8))(v124, v199);
        v132 = v190;
        v131 = v191;
        if ((*(v190 + 48))(v126, 1, v191) != 1)
        {
          v153 = v183;
          (*(v132 + 32))(v183, v126, v131);
          v154 = v189;
          sub_229564F88(v206, v189, &qword_27D87E900, &unk_22A57C850);
          v155 = v154 + *(v208 + 48);
          v204 = v129[12];
          v199 = v129[16];
          v156 = v129[20];
          v208 = v155;
          v157 = v155 + v156;
          v158 = v132;
          v159 = v153;
          v160 = *(v157 + 8);
          v135 = v202;
          (*v157)(v159);

          (*(v158 + 8))(v159, v131);
          sub_22953EAE4(v206, &qword_27D87E900, &unk_22A57C850);
          v161 = v208;
          v162 = v203;
          (v203)(v208 + v199, v119);
          v138 = v180;
          (v122)(&v204[v161], v180);
          v128 = v181;
          (v167)(v161, v181);
          v127 = v179;
          v165(v189);
          v136 = v162;
          v137 = v182;
          v134 = v200;
          v133 = v201;
          v68 = v168;
LABEL_14:
          v139 = v177;
          (v136)(v68 + v170, v175);
          (*(v176 + 8))(v68 + v171, v138);
          (v139[1])(v68, v128);
          (*(v173 + 8))(v207, v127);
          if ((*(v134 + 48))(v135, 1, v133) == 1)
          {
            sub_22953EAE4(v135, &qword_27D87EBB0, &qword_22A57C720);
          }

          else
          {
            v145 = v193;
            sub_22968FE78(v135, v193, _s13PresenceStateOMa);
            v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
            v147 = v192;
            (*(*(v146 - 8) + 56))(v192, 2, 2, v146);
            v148 = sub_229698FEC(v145, v147);
            sub_22968FF48(v147, _s13PresenceStateOMa);
            if (v148)
            {
              v149 = v187;
              sub_22968FEE0(v145, &v187[*(updated + 20)], _s13PresenceStateOMa);
              v150 = v205;
              *v149 = v205;
              v151 = v150;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
              v152 = v185;
              sub_22A4DDA0C();

              (*(v186 + 8))(v152, v188);
              sub_22968FF48(v145, _s13PresenceStateOMa);
LABEL_21:
              v61 = &qword_27D87E900;
              v62 = &unk_22A57C850;
              v63 = v137;
              goto LABEL_22;
            }

            sub_22968FF48(v145, _s13PresenceStateOMa);
          }

          if (qword_27D87B980 != -1)
          {
            swift_once();
          }

          v140 = sub_22A4DD07C();
          __swift_project_value_buffer(v140, qword_27D8AB790);
          v141 = sub_22A4DD05C();
          v142 = sub_22A4DDCCC();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v209 = v144;
            *v143 = 136315138;
            *(v143 + 4) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58FE20, &v209);
            _os_log_impl(&dword_229538000, v141, v142, "%s - Skipping update as presence is not occupied", v143, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v144);
            MEMORY[0x22AAD4E50](v144, -1, -1);
            MEMORY[0x22AAD4E50](v143, -1, -1);
          }

          goto LABEL_21;
        }

        sub_22953EAE4(v206, &qword_27D87E900, &unk_22A57C850);
        sub_22953EAE4(v126, &qword_27D87E8E8, &qword_22A57C830);
        v68 = v168;
        v128 = v181;
        v127 = v179;
      }

      else
      {
        v127 = v179;
        v130 = v178;

        sub_22953EAE4(v87, &qword_27D87E900, &unk_22A57C850);
        v128 = v181;
      }

      v134 = v200;
      v133 = v201;
      v135 = v202;
      (*(v200 + 56))(v202, 1, 1, v201);
      v136 = *(v130 + 8);
      v137 = v182;
      v138 = v180;
      goto LABEL_14;
    }

    v64 = v205;
  }
}

uint64_t sub_22968CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a3;
  v37 = a7;
  v35 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_22A4DD9DC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v17;
  v22 = v9;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v20, v13, v22);
  v25 = v35;
  *(v24 + v21) = v36;
  *(v24 + v23) = v19;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;

  v26 = sub_22957F3C0(0, 0, v34, v37, v24);
  v27 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v28 = *(a2 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v27) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_22958A8B4(0, v28[2] + 1, 1, v28);
    *(a2 + v27) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_22958A8B4((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v28[v31 + 4] = v26;
  *(a2 + v27) = v28;
  return swift_endAccess();
}

uint64_t sub_22968CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  updated = _s23AccessoryPresenceUpdateVMa();
  v6[14] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v6[16] = v9;
  v10 = *(v9 - 8);
  v6[17] = v10;
  v11 = *(v10 + 64) + 15;
  v6[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v6[19] = v12;
  v13 = *(v12 - 8);
  v6[20] = v13;
  v6[21] = v13;
  v14 = *(v13 + 64) + 15;
  v6[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v16 = sub_22A4DB21C();
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v20 = sub_22A4DDE4C();
  v6[30] = v20;
  v21 = *(v20 - 8);
  v6[31] = v21;
  v22 = *(v21 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22968D0EC, 0, 0);
}

uint64_t sub_22968D0EC()
{
  v1 = v0[32];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v5 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_22968D21C;
  v8 = v0[32];
  v9 = v0[29];
  v10 = v0[30];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_22968D21C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_22968D794;
  }

  else
  {
    v3 = sub_22968D330;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22968D34C()
{
  v30 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v13 = v0[28];
    v15 = v0[24];
    v14 = v0[25];
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[18];
    v19 = v0[15];
    (*(v0[31] + 8))(v0[32], v0[30]);

    v20 = v0[1];

    return v20();
  }

  (*(v3 + 32))(v0[28], v1, v2);
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v29);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is unreachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[27] + 8))(v0[28], v0[26]);
    v12 = v0[29];
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v22 = v0[28];
  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[36] = v0[10];

      return MEMORY[0x2822009F8](sub_22968D820, v11, 0);
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v23 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v24 = *(MEMORY[0x277D856D0] + 4);
  v25 = swift_task_alloc();
  v0[33] = v25;
  *v25 = v0;
  v25[1] = sub_22968D21C;
  v26 = v0[32];
  v27 = v0[29];
  v28 = v0[30];

  return MEMORY[0x282200308](v27, v28, v23);
}

uint64_t sub_22968D794()
{
  *(v0 + 72) = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_22968D820()
{
  v1 = *(v0 + 288);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if ([*(*(v0 + 280) + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories) containsObject_])
    {
      v2 = *(v0 + 184);
      v4 = *(v0 + 152);
      v3 = *(v0 + 160);
      sub_229687758(v2);
      v5 = 1;
      if ((*(v3 + 48))(v2, 1, v4) != 1)
      {
        v6 = *(v0 + 184);
        v39 = *(v0 + 192);
        v7 = *(v0 + 176);
        v8 = *(v0 + 152);
        v9 = v6 + *(v8 + 48);
        v46 = sub_22A4DCD0C();
        v45 = *(*(v46 - 8) + 32);
        (v45)(v7, v6, v46);
        v10 = v7 + *(v8 + 48);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
        v12 = v11[12];
        v40 = v11[16];
        v43 = v11[20];
        v42 = sub_22A4DC52C();
        v41 = *(*(v42 - 8) + 32);
        v41(v10, v9, v42);
        v13 = v11[12];
        v38 = v13;
        v14 = sub_22A4DCC4C();
        v37 = *(*(v14 - 8) + 32);
        v37(v10 + v13, v9 + v12, v14);
        v15 = v11[16];
        v36 = v15;
        v16 = sub_22A4DCDAC();
        v17 = *(*(v16 - 8) + 32);
        v17(v10 + v15, v9 + v40, v16);
        v18 = v39 + *(v8 + 48);
        v44 = *(v9 + v43);
        v45();
        v19 = v11[12];
        v20 = v11[16];
        v21 = v11[20];
        v41(v18, v10, v42);
        v37(v18 + v19, v10 + v38, v14);
        v17(v18 + v20, v10 + v36, v16);
        v5 = 0;
        *(v18 + v21) = v44;
      }

      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v24 = *(v0 + 168);
      v25 = *(v0 + 152);
      (*(v24 + 56))(v23, v5, 1, v25);
      sub_22957F2F8(v23, v22, &qword_27D87E8F8, &qword_22A57C848);
      LODWORD(v23) = (*(v24 + 48))(v22, 1, v25);
      sub_22953EAE4(v22, &qword_27D87E8F8, &qword_22A57C848);
      v26 = *(v0 + 288);
      if (v23 == 1)
      {
      }

      else
      {
        v27 = *(v0 + 280);
        v29 = *(v0 + 136);
        v28 = *(v0 + 144);
        v31 = *(v0 + 120);
        v30 = *(v0 + 128);
        v32 = *(*(v0 + 112) + 20);
        sub_22A4DB71C();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v33 - 8) + 56))(&v31[v32], 0, 2, v33);
        *v31 = v26;
        v34 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
        sub_22A4DDA0C();

        (*(v29 + 8))(v28, v30);
      }
    }

    else
    {
    }
  }

  return MEMORY[0x2822009F8](sub_22968DCBC, 0, 0);
}

uint64_t sub_22968DCBC()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];

  (*(v4 + 8))(v3, v5);
  v6 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_22968D21C;
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[30];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_22968DDC8@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_22A4DCDAC();
  v74 = *(v1 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v1);
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22A4DCC4C();
  v73 = *(v88 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v88);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v6 = *(*(v84 - 1) + 64);
  MEMORY[0x28223BE20](v84);
  v8 = &v66 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E928, &qword_22A57C8B0);
  v86 = *(v72 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v72);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E930, &qword_22A57C8B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v70 = &v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v69 = v10;
  v16 = MEMORY[0x28223BE20](v15);
  v67 = v10;
  MEMORY[0x28223BE20](v16);
  v68 = v10;
  if (qword_27D87B988 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v17 = off_27D87E8A0;
    v82 = *(off_27D87E8A0 + 2);
    v87 = v1;
    if (!v82)
    {
      break;
    }

    v1 = 0;
    *&v80 = v73 + 16;
    v78 = (v73 + 8);
    v79 = (v74 + 16);
    v75 = (v74 + 8);
    v81 = v10;
    v77 = off_27D87E8A0;
    while (v1 < v17[2])
    {
      sub_229564F88(v17 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v1, v10, &qword_27D87E928, &qword_22A57C8B0);
      v18 = v84;
      v19 = v84[12];
      v20 = v84[16];
      v21 = &v10[v84[20]];
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = sub_22A4DC52C();
      (*(*(v24 - 8) + 16))(v8, v10, v24);
      v25 = v88;
      (*v80)(&v8[v18[12]], &v10[v19], v88);
      v26 = &v10[v20];
      v27 = v87;
      (*v79)(&v8[v18[16]], v26, v87);
      v28 = &v8[v18[20]];
      *v28 = v22;
      *(v28 + 1) = v23;

      v29 = v83;
      sub_22A4DCDCC();
      sub_22968FFA8(&qword_27D87E938, MEMORY[0x277D173C8]);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      (*v78)(v29, v25);
      if (v90 == v89)
      {
        v30 = v76;
        sub_22A4DCDEC();
        sub_22968FFA8(&unk_27D881930, MEMORY[0x277D17430]);
        sub_22A4DD7DC();
        sub_22A4DD7DC();
        (*v75)(v30, v27);
        sub_22953EAE4(v8, &qword_27D87E8F0, &unk_22A57C838);
        if (v90 == v89)
        {
          v31 = v70;
          sub_22957F2F8(v81, v70, &qword_27D87E928, &qword_22A57C8B0);
          v32 = 0;
          v1 = v87;
          goto LABEL_13;
        }
      }

      else
      {
        sub_22953EAE4(v8, &qword_27D87E8F0, &unk_22A57C838);
      }

      ++v1;
      v10 = v81;
      sub_22953EAE4(v81, &qword_27D87E928, &qword_22A57C8B0);
      v17 = v77;
      if (v82 == v1)
      {
        v32 = 1;
        v1 = v87;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v32 = 1;
LABEL_12:
  v31 = v70;
LABEL_13:
  v33 = v86;
  v34 = v72;
  (*(v86 + 56))(v31, v32, 1, v72);
  if ((*(v33 + 48))(v31, 1, v34) == 1)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
    return (*(*(v35 - 8) + 56))(v71, 1, 1, v35);
  }

  else
  {
    v37 = (v31 + *(v34 + 48));
    v38 = v84;
    v39 = v84[12];
    v40 = v84[16];
    *&v80 = v84[20];
    v83 = sub_22A4DC52C();
    v41 = *(v83 - 1);
    v82 = *(v41 + 32);
    v42 = v1;
    v86 = v41 + 32;
    v43 = v69;
    v82(v69, v31, v83);
    v79 = v38[12];
    v44 = v73 + 32;
    v81 = *(v73 + 32);
    (v81)(v79 + v43, v31 + v39, v88);
    v73 = v44;
    v76 = v38[16];
    v45 = v74 + 32;
    v46 = *(v74 + 32);
    v46(&v76[v43], v31 + v40, v42);
    v74 = v45;
    v47 = v46;
    v48 = *v37;
    v77 = v37[1];
    v78 = v48;
    v49 = v42;
    v50 = v67;
    v51 = &v67[*(v34 + 48)];
    v75 = v38[12];
    v52 = v31;
    v53 = v38[16];
    v54 = v38[20];
    v80 = *(v52 + v80);
    v82(v67, v43, v83);
    (v81)(v75 + v50, v79 + v43, v88);
    v47(v50 + v53, &v76[v43], v49);
    *(v50 + v54) = v80;
    v55 = v77;
    *v51 = v78;
    *(v51 + 1) = v55;
    v56 = v68;
    sub_22957F2F8(v50, v68, &qword_27D87E928, &qword_22A57C8B0);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
    v58 = v71;
    v59 = (v71 + *(v57 + 48));
    sub_22A4DCDDC();
    sub_22957F2F8(v56, v43, &qword_27D87E928, &qword_22A57C8B0);
    v60 = v38[12];
    v61 = v38[16];
    v62 = *(v43 + *(v72 + 48) + 8);
    v85 = *(v43 + v38[20]);

    v63 = v38[12];
    v64 = v38[16];
    v65 = v38[20];
    v82(v59, v43, v83);
    (v81)(&v59[v63], v43 + v60, v88);
    v47(&v59[v64], (v43 + v61), v87);
    *&v59[v65] = v85;
    return (*(*(v57 - 8) + 56))(v58, 0, 1, v57);
  }
}

void *sub_22968E76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v35[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v35 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v8 = *(v36 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v36);
  v11 = v35 - v10;
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v12 = sub_22A4DD07C();
  __swift_project_value_buffer(v12, qword_27D8AB790);

  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v8;
    v17 = v11;
    v18 = v16;
    v41[0] = v16;
    *v15 = 136315138;
    v40[0] = *(v3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E908, &qword_22A57C860);
    v19 = sub_22A4DBA6C();
    v21 = sub_2295A3E30(v19, v20, v41);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_229538000, v13, v14, "observing accessories: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v22 = v18;
    v11 = v17;
    v8 = v38;
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  v23 = [*(v3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories) objectEnumerator];
  v24 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
  v25 = [v23 nextObject];
  v26 = v36;
  if (v25)
  {
    v38 = v8 + 6;
    v27 = &qword_281401B70;
    do
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
      sub_2295404B0(v41, v40);
      sub_229562F68(0, v27, off_278666148);
      if (swift_dynamicCast())
      {
        v28 = v39;
        sub_229687758(v7);
        if ((*v38)(v7, 1, v26) == 1)
        {
          __swift_destroy_boxed_opaque_existential_0(v41);

          sub_22953EAE4(v7, &qword_27D87E8F8, &qword_22A57C848);
        }

        else
        {
          v29 = v27;
          v30 = v24;
          sub_22957F2F8(v7, v11, &qword_27D87E900, &unk_22A57C850);
          sub_229562F68(0, &qword_281401760, 0x277D82BB8);
          v31 = v11;
          v32 = [v28 matterNodeID];
          v33 = sub_22A4DDEDC();

          if (v33)
          {
            sub_22A4DCD0C();
            sub_22968FFA8(&qword_27D87E920, MEMORY[0x277D17408]);
            sub_22A4DD7DC();
            sub_22A4DD7DC();
            sub_22953EAE4(v31, &qword_27D87E900, &unk_22A57C850);
            __swift_destroy_boxed_opaque_existential_0(v41);
            if (LOWORD(v40[0]) == v39)
            {

              return v28;
            }

            v11 = v31;

            v26 = v36;
          }

          else
          {

            sub_22953EAE4(v31, &qword_27D87E900, &unk_22A57C850);
            __swift_destroy_boxed_opaque_existential_0(v41);
            v11 = v31;
          }

          v24 = v30;
          v27 = v29;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v41);
      }
    }

    while ([v23 v24[430]]);
  }

  return 0;
}

uint64_t sub_22968EC80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DC59C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22A4DC58C();
  sub_22A4DC57C();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 8))(v7, v3);
  if (v12[15])
  {
    v9 = 2;
  }

  else
  {
    sub_22A4DB73C();
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  (*(*(v10 - 8) + 56))(a1, v9, 2, v10);
  v11 = _s13PresenceStateOMa();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t sub_22968EE50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E928, &qword_22A57C8B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v49 = v0 - 8;
  MEMORY[0x28223BE20](v0 - 8);
  v44 = &v40 - v3;
  v4 = sub_22A4DCDAC();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22A4DCC4C();
  v53 = *(v50 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DC52C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E940, &unk_22A57C8C0);
  v16 = *(v1 + 72);
  v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = xmmword_22A576180;
  v45 = v18 + v17;
  sub_22A4DC53C();
  sub_22A4DCC2C();
  v19 = v7;
  sub_22A4DCD8C();
  v20 = *MEMORY[0x277CD0EC8];
  v21 = sub_22A4DD5EC();
  v46 = v22;
  v47 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v24 = v23[12];
  v25 = v23[16];
  v26 = *(v12 + 32);
  v41 = v24;
  v42 = v12 + 32;
  v43 = v26;
  v27 = v44;
  v26(v44, v15, v11);
  v28 = *(v53 + 32);
  v53 += 32;
  v29 = &v27[v24];
  v30 = v50;
  v28(v29, v10, v50);
  v31 = *(v51 + 32);
  v32 = v25;
  v33 = v19;
  v34 = v52;
  v31(&v27[v25], v33, v52);
  v35 = v45;
  v43(v45, v27, v11);
  v28((v35 + v23[12]), &v27[v41], v30);
  result = (v31)(v35 + v23[16], &v27[v32], v34);
  v37 = (v35 + v23[20]);
  *v37 = sub_22968F244;
  v37[1] = 0;
  v38 = (v35 + *(v49 + 56));
  v39 = v46;
  *v38 = v47;
  v38[1] = v39;
  off_27D87E8A0 = v48;
  return result;
}

BOOL sub_22968F294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  sub_229687758(v9);
  v15 = 1;
  v57 = *(v1 + 48);
  if (v57(v9, 1, v0) != 1)
  {
    v16 = &v9[*(v0 + 48)];
    v56 = sub_22A4DCD0C();
    v17 = *(v56 - 8);
    v18 = *(v17 + 32);
    v53 = v1 + 48;
    v54 = v18;
    v47 = v17 + 32;
    v45 = v4;
    v18(v4, v9, v56);
    v19 = &v4[*(v0 + 48)];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
    v21 = v20[12];
    v48 = v20[16];
    *&v52 = v20[20];
    v50 = sub_22A4DC52C();
    v22 = *(v50 - 8);
    v49 = *(v22 + 32);
    v51 = v22 + 32;
    v49(v19, v16, v50);
    v23 = v20[12];
    v46 = v23;
    v44 = sub_22A4DCC4C();
    v24 = *(v44 - 8);
    v42 = *(v24 + 32);
    v43 = v24 + 32;
    v25 = &v19[v23];
    v26 = v16;
    v42(v25, &v16[v21], v44);
    v27 = v20[16];
    v41 = v27;
    v28 = sub_22A4DCDAC();
    v55 = v14;
    v29 = v28;
    v30 = *(v28 - 8);
    v31 = *(v30 + 32);
    v40 = v30 + 32;
    v31(&v19[v27], &v26[v48], v28);
    v32 = &v12[*(v0 + 48)];
    v52 = *&v26[v52];
    v54(v12, v45, v56);
    v33 = v20[12];
    v56 = v1;
    v34 = v20[16];
    v35 = v20[20];
    v49(v32, v19, v50);
    v42(&v32[v33], &v19[v46], v44);
    v36 = &v32[v34];
    v37 = v29;
    v14 = v55;
    v1 = v56;
    v31(v36, &v19[v41], v37);
    v15 = 0;
    *&v32[v35] = v52;
  }

  (*(v1 + 56))(v12, v15, 1, v0);
  sub_22957F2F8(v12, v14, &qword_27D87E8F8, &qword_22A57C848);
  v38 = v57(v14, 1, v0) != 1;
  sub_22953EAE4(v14, &qword_27D87E8F8, &qword_22A57C848);
  return v38;
}

uint64_t sub_22968F6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = [v4 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v8 = sub_22A4DD83C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_23:

LABEL_24:
    v25 = 1;
    v24 = a3;
    goto LABEL_25;
  }

LABEL_22:
  v9 = sub_22A4DE0EC();
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AAD13F0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v14 = [v11 serviceType];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {
      break;
    }

    v19 = sub_22A4DE60C();

    if (v19)
    {
      goto LABEL_17;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  v20 = [v12 matterEndpointID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v21 = sub_22A4DDEBC();
  v22 = sub_22A4DDEDC();

  if (v22)
  {

    goto LABEL_24;
  }

  v23 = [v12 matterEndpointID];
  [v23 unsignedShortValue];

  v24 = a3;
  sub_22A4DCCEC();

  v25 = 0;
LABEL_25:
  v26 = sub_22A4DCD0C();
  v27 = *(*(v26 - 8) + 56);

  return v27(v24, v25, 1, v26);
}

uint64_t sub_22968FA70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_22968CE44(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_22968FBC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229569B30;

  return sub_22968ACDC(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_22968FD20(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_22968970C(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_22968FE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22968FEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22968FF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22968FFA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22969003C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_22A4DC77C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DCD0C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22A4DCDFC();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v45 - v14;
  v16 = sub_22A4DB1EC();
  v17 = sub_22A4DD5EC();
  v19 = v18;
  if (v17 == sub_22A4DD5EC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_22A4DE60C();

    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  sub_22A4DB1FC();
  if (!v53[3])
  {
    sub_22953EAE4(v53, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_29;
  }

  sub_229690ADC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    type metadata accessor for HMError(0);
    v54[0] = -1;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    goto LABEL_30;
  }

  v23 = v54[0];
  v24 = sub_22A4DB20C();
  if (!v24)
  {

    goto LABEL_29;
  }

  v25 = v24;
  v51 = sub_22A4DD5EC();
  v52 = v26;
  sub_22A4DE18C();
  if (!*(v25 + 16))
  {
    goto LABEL_26;
  }

  v27 = sub_2295402E8(v53);
  if ((v28 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2295404B0(*(v25 + 56) + 32 * v27, v54);
  sub_22954045C(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v29 = v51;
  v51 = sub_22A4DD5EC();
  v52 = v30;
  sub_22A4DE18C();
  if (!*(v25 + 16))
  {
    goto LABEL_26;
  }

  v31 = sub_2295402E8(v53);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2295404B0(*(v25 + 56) + 32 * v31, v54);
  sub_22954045C(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v45[3] = v51;
  v51 = sub_22A4DD5EC();
  v52 = v33;
  sub_22A4DE18C();
  if (!*(v25 + 16))
  {
    goto LABEL_26;
  }

  v34 = sub_2295402E8(v53);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2295404B0(*(v25 + 56) + 32 * v34, v54);
  sub_22954045C(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    goto LABEL_27;
  }

  v45[2] = v51;
  v51 = sub_22A4DD5EC();
  v52 = v36;
  sub_22A4DE18C();
  if (!*(v25 + 16) || (v37 = sub_2295402E8(v53), (v38 & 1) == 0))
  {
LABEL_26:

    sub_22954045C(v53);
LABEL_27:
    type metadata accessor for HMError(0);
    v54[0] = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();

LABEL_30:
    v41 = sub_22A4DB21C();
    (*(*(v41 - 8) + 8))(a1, v41);
    return;
  }

  v45[1] = v29;
  sub_2295404B0(*(v25 + 56) + 32 * v37, v54);
  sub_22954045C(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v39 = v54[5];
  sub_2296907D8(v25, v15);
  if (v39)
  {
    v40 = sub_22A4DB21C();
    (*(*(v40 - 8) + 8))(a1, v40);
  }

  else
  {

    sub_22A4DCCEC();
    sub_22A4DCE0C();
    sub_22A4DC76C();
    v42 = sub_22A4DB21C();
    (*(*(v42 - 8) + 8))(a1, v42);
    v43 = _s15AttributeReportVMa();
    v44 = v48;
    sub_229690B28(v15, &v48[v43[7]]);
    *v44 = v23;
    (*(v49 + 32))(&v44[v43[5]], v11, v8);
    (*(v46 + 32))(&v44[v43[6]], v50, v47);
  }
}

uint64_t sub_2296907D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22A4DD5EC();
  sub_22A4DE18C();
  if (!*(a1 + 16) || (v5 = sub_2295402E8(v10), (v6 & 1) == 0))
  {
    sub_22954045C(v10);
    goto LABEL_7;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v5, v11);
  sub_22954045C(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  result = sub_22A4DC76C();
  if (v2)
  {
    return result;
  }

  v8 = 0;
LABEL_8:
  v9 = sub_22A4DC77C();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_229690914()
{
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A590020);
  v1 = [*v0 shortDescription];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  MEMORY[0x22AAD08C0](v2, v4);

  MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A590040);
  v5 = _s15AttributeReportVMa();
  v6 = *(v5 + 20);
  sub_22A4DCDFC();
  sub_22A4DE31C();
  MEMORY[0x22AAD08C0](0x3A65756C6176202CLL, 0xE900000000000020);
  v7 = *(v5 + 24);
  sub_22A4DC77C();
  sub_22A4DE31C();
  MEMORY[0x22AAD08C0](41, 0xE100000000000000);
  return 0;
}

uint64_t _s15AttributeReportVMa()
{
  result = qword_27D87E950;
  if (!qword_27D87E950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_229690ADC()
{
  result = qword_281401B70;
  if (!qword_281401B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401B70);
  }

  return result;
}

uint64_t sub_229690B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_229690BC0()
{
  sub_229690ADC();
  if (v0 <= 0x3F)
  {
    sub_22A4DCDFC();
    if (v1 <= 0x3F)
    {
      sub_22A4DC77C();
      if (v2 <= 0x3F)
      {
        sub_229690C74();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_229690C74()
{
  if (!qword_27D87E960)
  {
    sub_22A4DC77C();
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87E960);
    }
  }
}

uint64_t sub_229690D74()
{
  v1 = v0;
  v2 = [v0 home];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v5 = [v2 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v6 = sub_22A4DD83C();

    v25 = v3;
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v11 = &selRef_resetAccessoryDiagnosticCounters;
      v23 = v4;
      v24 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v9)
        {
          v18 = MEMORY[0x22AAD13F0](v8, v6);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_16;
          }

          v18 = *(v6 + 8 * v8 + 32);
        }

        v19 = v18;
        v4 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v20 = [v18 v11[327]];

        if (v20 == v1)
        {
          sub_22A4DE27C();
          v12 = v9;
          v13 = i;
          v14 = v6;
          v15 = v1;
          v16 = v11;
          v17 = *(v25 + 16);
          sub_22A4DE2AC();
          v11 = v16;
          v1 = v15;
          v6 = v14;
          i = v13;
          v9 = v12;
          v10 = v24;
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        else
        {
        }

        ++v8;
        if (v4 == i)
        {
          v21 = v25;
          v4 = v23;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_19:

    if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
      v3 = sub_22A4DE3AC();
    }

    else
    {
      v3 = v21;
      sub_22A4DE61C();
    }
  }

  return v3;
}

unint64_t sub_229691098(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
        v5 = isUniquelyReferenced_nonNull_bridgeObject;
        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v29 + 8 * v2);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_42;
        }
      }

      v7 = [v5 lpAccessories];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
      v8 = sub_22A4DD83C();
      swift_unknownObjectRelease();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_22A4DE0EC() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_20;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
LABEL_20:
          sub_22A4DE0EC();
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v34)
          {
            goto LABEL_45;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_2296989B4();
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA58, &qword_22A57CBC8);
              v20 = sub_22958C168(v33, i, v8);
              v22 = *v21;
              swift_unknownObjectRetain();
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v4 = v28;
          v3 = v32;
          if (v34 >= 1)
          {
            v23 = *(v13 + 16);
            v6 = __OFADD__(v23, v34);
            v24 = v23 + v34;
            if (v6)
            {
              goto LABEL_46;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v4 = v28;
      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229691414()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87E970);
  __swift_project_value_buffer(v0, qword_27D87E970);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22969148C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9D8, &qword_22A57CB08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA08, &qword_22A57CB70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = _s13PresenceStateOMa();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v59 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  v29 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  sub_229696298(v2 + v29, v28);
  v30 = *(v15 + 56);
  sub_229696298(a1, v18);
  sub_2296986F8(v28, &v18[v30]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v18, 2, v31);
  if (!v33)
  {
    sub_229696298(v18, v26);
    v34 = v32(&v18[v30], 2, v31);
    v35 = sub_22A4DB74C();
    v36 = *(*(v35 - 8) + 8);
    if (v34)
    {
      v36(v26, v35);
      goto LABEL_8;
    }

    v57 = &v18[v30];
    v58 = v35;
    (v36)(v57);
    v36(v26, v58);
    return sub_229696360(v18);
  }

  if (v33 != 1)
  {
    if (v32(&v18[v30], 2, v31) != 2)
    {
      goto LABEL_8;
    }

    return sub_229696360(v18);
  }

  if (v32(&v18[v30], 2, v31) == 1)
  {
    return sub_229696360(v18);
  }

LABEL_8:
  sub_22953EAE4(v18, &unk_27D87EA10, &qword_22A57CB78);
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v37 = sub_22A4DD07C();
  __swift_project_value_buffer(v37, qword_27D87E970);

  v38 = sub_22A4DD05C();
  v39 = sub_22A4DDCCC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v63[0] = v41;
    *v40 = 136315650;
    v43 = *(v2 + 176);
    v42 = *(v2 + 184);

    v44 = sub_2295A3E30(v43, v42, v63);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_2295A3E30(0xD000000000000014, 0x800000022A590150, v63);
    *(v40 + 22) = 2080;
    sub_229696298(v2 + v29, v23);
    v45 = sub_229698D5C();
    v47 = v46;
    sub_229696360(v23);
    v48 = sub_2295A3E30(v45, v47, v63);

    *(v40 + 24) = v48;
    _os_log_impl(&dword_229538000, v38, v39, "[%s] %s updated to %s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v40, -1, -1);
  }

  v49 = v61;
  v50 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation;
  swift_beginAccess();
  sub_229564F88(v2 + v50, v10, &qword_27D87E9D8, &qword_22A57CB08);
  v51 = v62;
  if ((*(v49 + 48))(v10, 1, v62))
  {
    sub_22953EAE4(v10, &qword_27D87E9D8, &qword_22A57CB08);
    v52 = 1;
    v53 = v60;
  }

  else
  {
    v54 = v59;
    (*(v49 + 16))(v59, v10, v51);
    sub_22953EAE4(v10, &qword_27D87E9D8, &qword_22A57CB08);
    sub_229696298(v2 + v29, v23);
    v53 = v60;
    sub_22A4DDA0C();
    (*(v49 + 8))(v54, v51);
    v52 = 0;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9C8, &unk_22A57CAF8);
  (*(*(v55 - 8) + 56))(v53, v52, 1, v55);
  return sub_22953EAE4(v53, &qword_27D87EA08, &qword_22A57CB70);
}

uint64_t sub_229691B68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = v0[21];
  swift_unknownObjectRelease();
  v2 = v0[23];

  sub_229696360(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation, &qword_27D87E9D8, &qword_22A57CB08);
  v3 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask);

  sub_22953EAE4(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer, &qword_27D87EA00, &qword_22A579B80);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s32DefaultAccessoryPresenceObserverCMa()
{
  result = qword_27D87E9B0;
  if (!qword_27D87E9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229691C64()
{
  v0 = _s13PresenceStateOMa();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_229691D74();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_229691D74()
{
  if (!qword_27D87E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D881920, &qword_22A57CA70);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87E9C0);
    }
  }
}

uint64_t sub_229691DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9C8, &unk_22A57CAF8);
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = sub_22A4DB74C();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9D8, &qword_22A57CB08) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E0, &qword_22A57CB10);
  v4[40] = v13;
  v14 = *(v13 - 8);
  v4[41] = v14;
  v15 = *(v14 + 64) + 15;
  v4[42] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  v4[43] = v16;
  v17 = *(v16 - 8);
  v4[44] = v17;
  v18 = *(v17 + 64) + 15;
  v4[45] = swift_task_alloc();
  v19 = _s13PresenceStateOMa();
  v4[46] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v4[51] = v21;
  v22 = *(v21 - 8);
  v4[52] = v22;
  v4[53] = *(v22 + 64);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229692138, v3, 0);
}

uint64_t sub_229692138()
{
  v25 = v0;
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D87E970);

  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315650;
    v10 = *(v6 + 176);
    v11 = *(v6 + 184);

    v12 = sub_2295A3E30(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2295A3E30(0xD000000000000014, 0x800000022A5901C0, &v24);
    *(v8 + 22) = 2080;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    v14 = MEMORY[0x22AAD0A20](v7, v13);
    v16 = sub_2295A3E30(v14, v15, &v24);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s - %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v17 = *(v0 + 232);
  sub_229692EF0();
  v18 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask;
  *(v0 + 456) = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask;
  if (*(v17 + v18))
  {

    sub_22A4DDA7C();
  }

  v19 = *__swift_project_boxed_opaque_existential_0(*(v0 + 224), *(*(v0 + 224) + 24));
  v20 = swift_task_alloc();
  *(v0 + 464) = v20;
  *v20 = v0;
  v20[1] = sub_229692418;
  v21 = *(v0 + 448);
  v22 = *(v0 + 216);

  return sub_22969534C(v21, v22);
}

uint64_t sub_229692418()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229692528, v2, 0);
}

uint64_t sub_229692528()
{
  v1 = *__swift_project_boxed_opaque_existential_0(*(v0 + 224), *(*(v0 + 224) + 24));
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_2296925E4;
  v3 = *(v0 + 400);
  v4 = *(v0 + 216);

  return sub_229694A80(v3, v4);
}

uint64_t sub_2296925E4()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2296926F4, v2, 0);
}

uint64_t sub_2296926F4()
{
  v61 = v0[55];
  v69 = v0[54];
  v72 = v0[57];
  v1 = v0[52];
  v79 = v0[56];
  v81 = v0[53];
  v75 = v0[49];
  v77 = v0[50];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v65 = v0[38];
  v67 = v0[51];
  v63 = v0[29];
  *v7 = 1;
  (*(v6 + 104))(v7, *MEMORY[0x277D85768], v8);
  sub_22A4DD9EC();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 16))(v9, v3, v4);
  (*(v5 + 56))(v9, 0, 1, v4);
  v10 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation;
  swift_beginAccess();
  sub_2295E90C8(v9, v63 + v10, &qword_27D87E9D8, &qword_22A57CB08);
  swift_endAccess();
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v65, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v1 + 16))(v69, v79, v67);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  v15 = *(v1 + 32);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v80 = v15;
  v15(v14 + v13, v69, v67);
  *(v14 + ((v81 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v16 = sub_22957F3C0(0, 0, v65, &unk_22A57CB38, v14);
  v17 = *(v63 + v72);
  *(v63 + v72) = v16;

  sub_229696298(v77, v75);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v75, 2, v18);
  if (v20)
  {
    if (v20 == 1)
    {
      goto LABEL_9;
    }

    v22 = v0[47];
    v21 = v0[48];
    v23 = v0[29];
    (*(v19 + 56))(v21, 2, 2, v18);
    v24 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
    swift_beginAccess();
    sub_229696298(v23 + v24, v22);
    swift_beginAccess();
    sub_2296962FC(v21, v23 + v24);
    swift_endAccess();
    sub_22969148C(v22);
    sub_229696360(v22);
    sub_229696360(v21);
  }

  else
  {
    v25 = v0[36];
    v27 = v0[34];
    v26 = v0[35];
    v28 = v0[33];
    v29 = v0[29];
    (*(v27 + 32))(v0[37], v0[49], v28);
    v30 = [*(v29 + 168) now];
    sub_22A4DB70C();

    v70 = v29;
    v73 = *(v29 + 120);
    v76 = *(v29 + 112);
    sub_22A4DE81C();
    sub_22A4DB6EC();
    v31 = *(v27 + 8);
    v31(v26, v28);
    LOBYTE(v29) = sub_22A4DB6CC();
    v31(v25, v28);
    v32 = v0[47];
    v33 = v0[48];
    v34 = v0[37];
    v35 = v0[33];
    v36 = v0[29];
    if (v29)
    {
      (*(v0[34] + 16))(v0[48], v0[37], v0[33]);
      (*(v19 + 56))(v33, 0, 2, v18);
      v37 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
      swift_beginAccess();
      sub_229696298(v36 + v37, v32);
      swift_beginAccess();
      sub_2296962FC(v33, v36 + v37);
      swift_endAccess();
      sub_22969148C(v32);
      sub_229696360(v32);
      sub_229696360(v33);
    }

    else
    {
      v38 = v0[36];
      (*(v19 + 56))(v0[48], 2, 2, v18);
      v39 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
      swift_beginAccess();
      sub_229696298(v36 + v39, v32);
      swift_beginAccess();
      sub_2296962FC(v33, v36 + v39);
      swift_endAccess();
      sub_22969148C(v32);
      sub_229696360(v32);
      sub_229696360(v33);
      v40 = [*(v70 + 168) now];
      sub_22A4DB70C();

      sub_22A4DB65C();
      sub_22A4DB65C();
      sub_22A4DE88C();
      v31(v38, v35);
      sub_22A4DE86C();
      sub_229694014();
    }

    v31(v34, v35);
  }

  v41 = v0[48];
  v42 = v0[45];
  v43 = v0[43];
  v45 = v0[31];
  v44 = v0[32];
  v47 = v0[29];
  v46 = v0[30];
  v48 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  sub_229696298(v47 + v48, v41);
  sub_22A4DDA0C();
  (*(v45 + 8))(v44, v46);
LABEL_9:
  v49 = v0[55];
  v50 = v0[56];
  v51 = v0[54];
  v52 = v0[51];
  v53 = v0[52];
  v55 = v0[49];
  v54 = v0[50];
  v60 = v0[48];
  v62 = v0[47];
  v64 = v0[42];
  v66 = v0[39];
  v68 = v0[38];
  v71 = v0[37];
  v74 = v0[36];
  v56 = v0[35];
  v78 = v0[32];
  v57 = v0[26];
  (*(v0[44] + 8))(v0[45], v0[43]);
  sub_229696360(v54);
  (*(v53 + 8))(v50, v52);
  v80(v57, v49, v52);

  v58 = v0[1];

  return v58();
}

uint64_t sub_229692EF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  swift_beginAccess();
  sub_229564F88(v0 + v2, &v12, &qword_27D87EA00, &qword_22A579B80);
  if (v13)
  {
    sub_229557188(&v12, &v14);
    if (qword_27D87B990 != -1)
    {
      swift_once();
    }

    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D87E970);

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v12 = v7;
      *v6 = 136315394;
      v8 = *(v1 + 176);
      v9 = *(v1 + 184);

      v10 = sub_2295A3E30(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2295A3E30(0xD000000000000019, 0x800000022A5902E0, &v12);
      _os_log_impl(&dword_229538000, v4, v5, "[%s] %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0(&v14, *(&v15 + 1));
    sub_22A4DBC8C();
    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
    sub_22953EAE4(&v12, &qword_27D87EA00, &qword_22A579B80);
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  swift_beginAccess();
  sub_2295E90C8(&v14, v1 + v2, &qword_27D87EA00, &qword_22A579B80);
  return swift_endAccess();
}

uint64_t sub_229693164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = _s13PresenceStateOMa();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA20, &unk_22A585610);
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296932C4, 0, 0);
}

uint64_t sub_2296932C4()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  sub_22A4DDA3C();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2296933A8;
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_2296933A8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2296934A4, 0, 0);
}

uint64_t sub_2296934A4()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
LABEL_6:
    v5 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v6 = v0[1];

    return v6();
  }

  v2 = v0[6];
  sub_2296986F8(v1, v0[9]);
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
LABEL_5:
    sub_229696360(v0[9]);
    v4 = v0[10];
    goto LABEL_6;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_5;
  }

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_229693614;
  v9 = v0[9];

  return sub_2296937C8(v9);
}

uint64_t sub_229693614()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229693710, 0, 0);
}

uint64_t sub_229693710()
{
  v1 = v0[15];
  v2 = v0[9];

  sub_229696360(v2);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_2296933A8;
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2296937C8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_22A4DB74C();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v2[24] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = *(*(_s13PresenceStateOMa() - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229693920, v1, 0);
}

uint64_t sub_229693920()
{
  v84 = v0;
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[18];
  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D87E970);
  sub_229696298(v2, v1);

  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[28];
  if (v7)
  {
    v9 = v0[27];
    v10 = v0[18];
    v11 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v83 = v80;
    *v11 = 136315906;
    v12 = *(v10 + 176);
    v13 = *(v10 + 184);

    v14 = sub_2295A3E30(v12, v13, &v83);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD000000000000012, 0x800000022A590230, &v83);
    *(v11 + 22) = 2080;
    v15 = sub_229698D5C();
    v17 = v16;
    sub_229696360(v8);
    v18 = sub_2295A3E30(v15, v17, &v83);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2080;
    v19 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
    swift_beginAccess();
    sub_229696298(v10 + v19, v9);
    v20 = sub_229698D5C();
    v22 = v21;
    sub_229696360(v9);
    v23 = sub_2295A3E30(v20, v22, &v83);

    *(v11 + 34) = v23;
    _os_log_impl(&dword_229538000, v5, v6, "[%s] %s - new: %s, current: %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v80, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  else
  {

    sub_229696360(v8);
  }

  v24 = v0[24];
  v25 = v0[25];
  v26 = v0[17];
  v27 = v0[18];
  v28 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  v29 = *(v24 + 48);
  sub_229696298(v26, v25);
  sub_229696298(v27 + v28, v25 + v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v32(v25, 2, v30);
  if (v33)
  {
    if (v33 != 1)
    {
      v35 = v0[26];
      v34 = v0[27];
      v36 = v0[18];
      sub_229692EF0();
      (*(v31 + 56))(v34, 2, 2, v30);
      sub_229696298(v27 + v28, v35);
      swift_beginAccess();
      sub_2296962FC(v34, v27 + v28);
      swift_endAccess();
      sub_22969148C(v35);
      sub_229696360(v35);
      sub_229696360(v34);
    }

    sub_229696360(v25 + v29);
  }

  else
  {
    v46 = v32(v25 + v29, 2, v30);
    if (v46)
    {
      if (v46 == 1)
      {
        v48 = v0[26];
        v47 = v0[27];
        v49 = v0[25];
        v50 = v0[19];
        v51 = v0[20];
        v52 = v0[18];
        sub_229696298(v0[17], v47);
        sub_229696298(v27 + v28, v48);
        swift_beginAccess();
        sub_2296962FC(v47, v27 + v28);
        swift_endAccess();
        sub_22969148C(v48);
        sub_229696360(v48);
        sub_229696360(v47);
        (*(v51 + 8))(v49, v50);
      }

      else
      {
        v56 = v0[25];
        v78 = v0[22];
        v81 = v0[23];
        v58 = v0[20];
        v57 = v0[21];
        v59 = v0[18];
        v60 = v0[19];
        (*(v58 + 32))();
        v61 = [*(v59 + 168) now];
        sub_22A4DB70C();

        v75 = v59;
        v76 = *(v59 + 120);
        v77 = *(v59 + 112);
        sub_22A4DE81C();
        sub_22A4DB6EC();
        v62 = *(v58 + 8);
        v62(v57, v60);
        LOBYTE(v58) = sub_22A4DB6CC();
        v63 = v62;
        v62(v78, v60);
        if (v58)
        {
          v65 = v0[26];
          v64 = v0[27];
          v66 = v0[19];
          v79 = v66;
          v82 = v0[23];
          v67 = v0[18];
          (*(v0[20] + 16))(v64);
          (*(v31 + 56))(v64, 0, 2, v30);
          sub_229696298(v27 + v28, v65);
          swift_beginAccess();
          sub_2296962FC(v64, v27 + v28);
          swift_endAccess();
          sub_22969148C(v65);
          sub_229696360(v65);
          sub_229696360(v64);
          v69 = v79;
          v68 = v82;
        }

        else
        {
          v71 = v0[22];
          v70 = v0[23];
          v73 = v0[18];
          v72 = v0[19];
          v74 = [*(v75 + 168) now];
          sub_22A4DB70C();

          sub_22A4DB65C();
          sub_22A4DB65C();
          sub_22A4DE88C();
          v63(v71, v72);
          sub_22A4DE86C();
          sub_229694014();
          v68 = v70;
          v69 = v72;
        }

        v63(v68, v69);
      }
    }

    else
    {
      v53 = v0[25];
      v54 = v0[19];
      v55 = *(v0[20] + 8);
      v55(v25 + v29, v54);
      v55(v53, v54);
    }
  }

  v38 = v0[27];
  v37 = v0[28];
  v40 = v0[25];
  v39 = v0[26];
  v42 = v0[22];
  v41 = v0[23];
  v43 = v0[21];

  v44 = v0[1];

  return v44();
}

uint64_t sub_229694014()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4 + 40;
  v6 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  swift_beginAccess();
  sub_229564F88(v0 + v6, v23, &qword_27D87EA00, &qword_22A579B80);
  v7 = AssociatedTypeWitness;
  result = sub_22953EAE4(v23, &qword_27D87EA00, &qword_22A579B80);
  if (!v7)
  {
    if (qword_27D87B990 != -1)
    {
      swift_once();
    }

    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D87E970);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v12 = 136315650;
      v13 = v1[22];
      v14 = v1[23];

      v15 = sub_2295A3E30(v13, v14, v23);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A5901E0, v23);
      *(v12 + 22) = 2080;
      v16 = sub_22A4DE82C();
      v18 = sub_2295A3E30(v16, v17, v23);

      *(v12 + 24) = v18;
      _os_log_impl(&dword_229538000, v10, v11, "[%s] %s for %s", v12, 0x20u);
      v19 = v22;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    v20 = v1[20];
    __swift_project_boxed_opaque_existential_0(v1 + 16, v1[19]);
    sub_22A4DD98C();
    v21 = sub_22A4DD9DC();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    swift_allocObject();
    swift_weakInit();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v23);

    sub_22A4DBAFC();

    sub_22953EAE4(v5, &unk_27D87D8F0, &qword_22A578D70);

    swift_beginAccess();
    sub_2295E90C8(v23, v1 + v6, &qword_27D87EA00, &qword_22A579B80);
    return swift_endAccess();
  }

  return result;
}