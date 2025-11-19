uint64_t sub_1BF4B881C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BF4B88C8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFB59570](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BF4E9204();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1BF4B89F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v13 = a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v14 = type metadata accessor for WidgetExtensionInfo();
  v15 = *(v14 + 28);
  v16 = a2 + v12;
  if ((sub_1BF4E7364() & 1) == 0)
  {
    goto LABEL_14;
  }

  v36 = a2;
  v37 = v8;
  v38 = v5;
  v39 = v4;
  v17 = [*v13 tokenString];
  v18 = sub_1BF4E8914();
  v20 = v19;

  v21 = [*v16 tokenString];
  v22 = sub_1BF4E8914();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {
  }

  else
  {
    v26 = sub_1BF4E9734();

    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = 0;
      return v31 & 1;
    }
  }

  if ((*(v13 + 8) != *(v16 + 8) || *(v13 + 16) != *(v16 + 16)) && (sub_1BF4E9734() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = *(v14 + 32);
  if ((sub_1BF4E72D4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = [*(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  sub_1BF4E7374();

  v29 = [*(v36 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  v30 = v37;
  sub_1BF4E7374();

  v31 = sub_1BF4E7364();
  v32 = *(v38 + 8);
  v33 = v30;
  v34 = v39;
  v32(v33, v39);
  v32(v11, v34);
  return v31 & 1;
}

void sub_1BF4B8C98(void *a1)
{
  v2 = v1;
  v4 = [a1 entitlements];
  v5 = sub_1BF4E88E4();
  sub_1BF3901C0(0, &qword_1EDC9F9A8, 0x1E696AEC0);
  v6 = [v4 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];

  if (v6)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56[0] = v54;
  v56[1] = v55;
  if (!*(&v55 + 1))
  {
    sub_1BF38C9B4(v56, &qword_1EBDD8AD0, &unk_1BF4F53F0);
LABEL_12:
    if (![a1 containingBundleRecord])
    {
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA69A0);
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E84();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1BF389000, v21, v22, "No effective container bundle identifier found.", v23, 2u);
        MEMORY[0x1BFB5A5D0](v23, -1, -1);
      }

      sub_1BF4B86EC();
      swift_allocError();
      *v24 = 3;
      swift_willThrow();
    }

    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = v52;
  v8 = v53;
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF4E7B54();
  __swift_project_value_buffer(v9, qword_1EDCA69A0);
  v10 = a1;
  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E84();

  if (os_log_type_enabled(v11, v12))
  {
    v57 = v52;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v56[0] = v14;
    *v13 = 136446210;
    v15 = [v10 bundleIdentifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BF4E8914();
      v19 = v18;
    }

    else
    {
      v17 = 7104878;
      v19 = 0xE300000000000000;
    }

    v8 = v53;
    v25 = sub_1BF38D65C(v17, v19, v56);

    *(v13 + 4) = v25;
    _os_log_impl(&dword_1BF389000, v11, v12, "Explicit effective container specified for extension: %{public}s - looking for effective container bundle.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
    MEMORY[0x1BFB5A5D0](v13, -1, -1);

    v7 = v57;
  }

  else
  {
  }

  v26 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v27 = sub_1BF4B8740(v7, v8, 0);
  if (v1)
  {
    goto LABEL_22;
  }

  if (!v27)
  {
    v47 = sub_1BF4E7B34();
    v48 = sub_1BF4E8E84();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1BF389000, v47, v48, "Effective container specified, but no effective container bundle found.", v49, 2u);
      MEMORY[0x1BFB5A5D0](v49, -1, -1);
    }

    sub_1BF4B86EC();
    v2 = swift_allocError();
    *v50 = 3;
    swift_willThrow();
LABEL_22:
    v28 = v2;
    v29 = sub_1BF4E7B34();
    v30 = sub_1BF4E8E84();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = v2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1BF389000, v29, v30, "Effective container specified, but error finding container bundle: %{public}@", v31, 0xCu);
      sub_1BF38C9B4(v32, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v32, -1, -1);
      MEMORY[0x1BFB5A5D0](v31, -1, -1);
    }

    sub_1BF4B86EC();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();

    return;
  }

  v36 = v27;
  v37 = sub_1BF4E7B34();
  v38 = sub_1BF4E8E84();
  v39 = v36;

  if (os_log_type_enabled(v37, v38))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v56[0] = v41;
    *v40 = 136446210;
    v42 = [v39 bundleIdentifier];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1BF4E8914();
      v46 = v45;
    }

    else
    {
      v44 = 7104878;
      v46 = 0xE300000000000000;
    }

    v51 = sub_1BF38D65C(v44, v46, v56);

    *(v40 + 4) = v51;
    _os_log_impl(&dword_1BF389000, v37, v38, "Found effective container bundle identifier: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1BFB5A5D0](v41, -1, -1);
    MEMORY[0x1BFB5A5D0](v40, -1, -1);
  }
}

uint64_t sub_1BF4B9360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PowerlogUpdateIdentity.init(widget:identifier:location:suggestionIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 48) = v8;
  *(a7 + 16) = a3;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  *(a7 + 40) = v7;
  return result;
}

uint64_t PowerlogControlUpdateIdentity.init(control:identifier:location:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 32) = v6;
  return result;
}

ChronoKit::PowerlogUpdateCost_optional __swiftcall PowerlogUpdateCost.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

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

uint64_t PowerlogUpdateCost.rawValue.getter()
{
  if (*v0)
  {
    result = 1701147238;
  }

  else
  {
    result = 0x6465746567647562;
  }

  *v0;
  return result;
}

uint64_t sub_1BF4B94AC()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4B9528()
{
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF4B9590()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4B9608@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BF4E9514();

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

void sub_1BF4B9668(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (!*v1)
  {
    v2 = 0x6465746567647562;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BF4B96A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1701147238;
  }

  else
  {
    v4 = 0x6465746567647562;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1701147238;
  }

  else
  {
    v6 = 0x6465746567647562;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();
  }

  return v9 & 1;
}

ChronoKit::PowerlogWakeReason_optional __swiftcall PowerlogWakeReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PowerlogWakeReason.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x656C617473;
      break;
    case 2:
      result = 0x6765726F46707061;
      break;
    case 3:
      result = 0x6973736553707061;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C616E7265747865;
      break;
    case 7:
      result = 0x65526D6574737973;
      break;
    case 8:
      result = 0x746F687370616E73;
      break;
    case 9:
      result = 0x6775626564;
      break;
    case 0xA:
      result = 0x6D706F6C65766564;
      break;
    case 0xB:
      result = 0x7463617265746E69;
      break;
    case 0xC:
      result = 0x6550746E65746E69;
      break;
    case 0xD:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF4B9944()
{
  v1 = *v0;
  sub_1BF4E9804();
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4B99AC()
{
  v2 = *v0;
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();
}

uint64_t sub_1BF4B9A10()
{
  v1 = *v0;
  sub_1BF4E9804();
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

unint64_t sub_1BF4B9A80@<X0>(unint64_t *a1@<X8>)
{
  result = PowerlogWakeReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF4B9AA8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PowerlogWakeReason.rawValue.getter();
  v4 = v3;
  if (v2 == PowerlogWakeReason.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BF4E9734();
  }

  return v7 & 1;
}

uint64_t PowerlogUpdateIdentity.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PowerlogUpdateIdentity.suggestionIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void PowerlogUpdateIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t PowerlogUpdateIdentity.init(widget:identifier:location:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  return result;
}

uint64_t PowerlogUpdateIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000001FLL, 0x80000001BF4FE730);
  v8 = [v2 description];
  v9 = sub_1BF4E8914();
  v11 = v10;

  MEMORY[0x1BFB58C90](v9, v11);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
  if (v5)
  {
    v12 = v4;
  }

  else
  {
    v12 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1BFB58C90](v12, v5);

  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v13 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogUpdateIdentity.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v0 + 48);
  v7 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (!v5)
  {
    sub_1BF4E9824();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1BFB59A70](3);
    return MEMORY[0x1BFB59A70](v4);
  }

  sub_1BF4E9824();
  sub_1BF4E89F4();
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = qword_1BF4F67A0[v4];
  return MEMORY[0x1BFB59A70](v4);
}

uint64_t PowerlogUpdateIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (!v6)
  {
    sub_1BF4E9824();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1BFB59A70](3);
    goto LABEL_6;
  }

  sub_1BF4E9824();
  sub_1BF4E89F4();
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1BF4F67A0[v5];
LABEL_6:
  MEMORY[0x1BFB59A70](v5);
  return sub_1BF4E9844();
}

void sub_1BF4B9F2C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t sub_1BF4B9F44()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 48);
  sub_1BF4E9804();
  PowerlogUpdateIdentity.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4B9FB4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 48);
  sub_1BF4E9804();
  PowerlogUpdateIdentity.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t PowerlogControlUpdateIdentity.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void PowerlogControlUpdateIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t PowerlogControlUpdateIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000027, 0x80000001BF4FE750);
  v6 = [v2 description];
  v7 = sub_1BF4E8914();
  v9 = v8;

  MEMORY[0x1BFB58C90](v7, v9);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v10 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogControlUpdateIdentity.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 32);
  v5 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v4)
  {
    v2 = qword_1BF4F67A0[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v2);
}

BOOL static PowerlogControlUpdateIdentity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v12 = v2 == v7 && v4 == v9;
  if (!v12 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    v13 = qword_1BF4F67A0[v5];
    if (!v11)
    {
      v14 = 3;
      return v13 == v14;
    }

LABEL_13:
    v14 = 7;
    v16 = 8;
    if (v10 != 7)
    {
      v16 = 9;
    }

    if (v10 != 6)
    {
      v14 = v16;
    }

    v17 = 5;
    if (v10 != 4)
    {
      v17 = 6;
    }

    if (v10 <= 5)
    {
      v14 = v17;
    }

    v18 = 4;
    if (v10 < 3)
    {
      v18 = v10;
    }

    if (v10 <= 3)
    {
      v14 = v18;
    }

    return v13 == v14;
  }

  if (v11)
  {
    v13 = 3;
    goto LABEL_13;
  }

  return v5 == v10;
}

uint64_t PowerlogControlUpdateIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v5)
  {
    v3 = qword_1BF4F67A0[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4BA400()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 32);
  v5 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v4)
  {
    v2 = qword_1BF4F67A0[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v2);
}

uint64_t sub_1BF4BA480()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v5)
  {
    v3 = qword_1BF4F67A0[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

BOOL sub_1BF4BA518(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v12 = v2 == v7 && v4 == v9;
  if (!v12 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    v13 = qword_1BF4F67A0[v5];
    if (!v11)
    {
      return v13 == 3;
    }

LABEL_13:
    v16 = 7;
    v17 = 8;
    if (v10 != 7)
    {
      v17 = 9;
    }

    if (v10 != 6)
    {
      v16 = v17;
    }

    v18 = 5;
    if (v10 != 4)
    {
      v18 = 6;
    }

    if (v10 <= 5)
    {
      v16 = v18;
    }

    v19 = 4;
    if (v10 < 3)
    {
      v19 = v10;
    }

    if (v10 <= 3)
    {
      v16 = v19;
    }

    return v13 == v16;
  }

  if (v11)
  {
    v13 = 3;
    goto LABEL_13;
  }

  return v5 == v10;
}

BOOL _s9ChronoKit22PowerlogUpdateIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v17 = a1[5];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v20 = a2[5];
  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0 || (v3 != v7 || v5 != v10) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v11 || (v4 != v9 || v6 != v11) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v18 & 1) == 0)
  {
    v13 = v20;
    if ((v19 & 1) == 0)
    {
      return v17 == v20;
    }

    v12 = 3;
    goto LABEL_17;
  }

  v12 = qword_1BF4F67A0[v17];
  v13 = v20;
  if (v19)
  {
LABEL_17:
    if (v13 <= 3)
    {
      v14 = 4;
      if (v13 < 3)
      {
        v14 = v13;
      }
    }

    else if (v13 <= 5)
    {
      if (v13 == 4)
      {
        v14 = 5;
      }

      else
      {
        v14 = 6;
      }
    }

    else if (v13 == 6)
    {
      v14 = 7;
    }

    else if (v13 == 7)
    {
      v14 = 8;
    }

    else
    {
      v14 = 9;
    }

    return v12 == v14;
  }

  v14 = 3;
  return v12 == v14;
}

unint64_t sub_1BF4BA7E0()
{
  result = qword_1EBDD9BE0;
  if (!qword_1EBDD9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9BE0);
  }

  return result;
}

unint64_t sub_1BF4BA838()
{
  result = qword_1EBDD9BE8;
  if (!qword_1EBDD9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9BE8);
  }

  return result;
}

unint64_t sub_1BF4BA88C(uint64_t a1)
{
  result = sub_1BF4BA8B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF4BA8B4()
{
  result = qword_1EDC974D8[0];
  if (!qword_1EDC974D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC974D8);
  }

  return result;
}

unint64_t sub_1BF4BA90C()
{
  result = qword_1EDC974D0;
  if (!qword_1EDC974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC974D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerlogWakeReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF4BAA4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BF4BAA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1BF4BAAF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BF4BAB40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF4BAB94@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = sub_1BF4E76B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF4BABD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  return sub_1BF4E76C4();
}

uint64_t sub_1BF4BAC2C()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](60, 0xE100000000000000);
  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4F68C0);
  MEMORY[0x1BFB58C90](0x746E656469202D20, 0xEF203A7265696669);
  v6 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v7 = [*v6 description];
  v8 = sub_1BF4E8914();
  v10 = v9;

  MEMORY[0x1BFB58C90](v8, v10);

  MEMORY[0x1BFB58C90](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  MEMORY[0x1BFB58C90](*(v6 + 8), *(v6 + 16));
  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FABD0);
  v11 = type metadata accessor for WidgetExtensionInfo();
  MEMORY[0x1BFB58C90](*(v6 + v11[18]), *(v6 + v11[18] + 8));
  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FE780);
  (*(v2 + 16))(v5, v6 + v11[8], v1);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDC9F0F8;
  v13 = sub_1BF4E7254();
  v14 = [v12 stringFromDate_];

  v15 = sub_1BF4E8914();
  v17 = v16;

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1BFB58C90](v15, v17);

  MEMORY[0x1BFB58C90](0x7265746E49736920, 0xED0000203A6C616ELL);
  if (*(v6 + v11[9]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v6 + v11[9]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v18, v19);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v21[0];
}

uint64_t type metadata accessor for RemoteWidgetExtension()
{
  result = qword_1EDC998C8;
  if (!qword_1EDC998C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteWidgetExtension.identifier.getter()
{
  v1 = [*(v0 + *(type metadata accessor for RemoteWidgetExtension() + 20)) tokenString];
  v2 = sub_1BF4E8914();

  return v2;
}

uint64_t RemoteWidgetExtension.version.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  return v2;
}

uint64_t RemoteWidgetExtension.pluginUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 28);
  v5 = sub_1BF4E7394();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 40);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.containerBundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 60);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.containerBundleVersion.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RemoteWidgetExtension.containerBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteWidgetExtension() + 20));
  v2 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = (*(*(v3 - 8) + 48))(v1 + v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1BF4E76B4();
    swift_endAccess();
    return v5;
  }

  return result;
}

uint64_t RemoteWidgetExtension.effectiveContainerBundleIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RemoteWidgetExtension.sdkVersion.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 76));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RemoteWidgetExtension.watchKitExtensionIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 84));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RemoteWidgetExtension.pushEnvironment.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = (v1 + *(type metadata accessor for WidgetExtensionInfo() + 88));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RemoteWidgetExtension.dataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 44);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.systemDataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 48);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.availableLocalizations.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo() + 96));
}

void *RemoteWidgetExtension.entitlements.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo() + 108));
  v3 = v2;
  return v2;
}

uint64_t RemoteWidgetExtension.requestedDataProtection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BF4E8424();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t RemoteWidgetExtension.nominatedContainingBundleIdentifiers.getter()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - v3;
  v4 = v0 + *(type metadata accessor for RemoteWidgetExtension() + 20);
  v5 = *(v4 + *(type metadata accessor for WidgetExtensionInfo() + 104));
  KeyPath = swift_getKeyPath();
  v7 = *(v5 + 16);
  if (v7)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v7, 0);
    v8 = v30;
    v10 = *(v1 + 16);
    v9 = v1 + 16;
    v11 = v5 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    v12 = (v9 - 8);
    do
    {
      v14 = v26;
      v13 = v27;
      v15 = v9;
      v25(v26, v11, v27);
      v16 = KeyPath;
      swift_getAtKeyPath();
      (*v12)(v14, v13);
      v17 = v28;
      v18 = v29;
      v30 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF3A31DC((v19 > 1), v20 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v11 += v24;
      --v7;
      v9 = v15;
      KeyPath = v16;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t RemoteWidgetExtension.init(info:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RemoteWidgetExtension();
  result = sub_1BF4BD204(a1, a3 + *(v6 + 20), type metadata accessor for WidgetExtensionInfo);
  *a3 = a2;
  return result;
}

uint64_t sub_1BF4BBB48(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) tokenString];
  v3 = sub_1BF4E8914();

  return v3;
}

uint64_t sub_1BF4BBBA4(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);

  return v3;
}

uint64_t sub_1BF4BBBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo() + 28);
  v6 = sub_1BF4E7394();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo() + 32);
  v6 = sub_1BF4E7334();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo() + 40);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo() + 44);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo() + 48);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBEA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BF4E8424();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1BF4BBF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo() + 60);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBFC8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  v3 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = (*(*(v4 - 8) + 48))(v2 + v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1BF4E76B4();
    swift_endAccess();
    return v6;
  }

  return result;
}

uint64_t sub_1BF4BC098(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 72));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t sub_1BF4BC0E0(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 64));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t sub_1BF4BC128(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 76));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t sub_1BF4BC1A4(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 84));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t sub_1BF4BC1EC(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 88));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t sub_1BF4BC268(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo() + 96));
}

void *sub_1BF4BC2E4(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo() + 108));
  v4 = v3;
  return v3;
}

uint64_t sub_1BF4BC320(uint64_t a1, uint64_t a2)
{
  sub_1BF4BCC68(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t RemoteWidgetExtension.makeSession(schedulingPriority:suspensionObserver:)(uint64_t a1, uint64_t a2)
{
  sub_1BF4BCC68(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t RemoteWidgetExtension.makeSessionAsync(schedulingPriority:suspensionObserver:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v26 = a2;
  v27 = sub_1BF4E8464();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1BF4E83D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BF4E8634();
  v18 = *(v25 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v12, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E6985960], v13);
    if (v22(v12, 1, v13) != 1)
    {
      sub_1BF38C9B4(v12, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  sub_1BF38C94C(v26, v31, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v5 + 104))(v8, *MEMORY[0x1E6985A40], v27);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  v30(*v28);
  return (*(v18 + 8))(v21, v25);
}

uint64_t sub_1BF4BC73C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF4BCA3C(v4, v1, v2, v3);
}

uint64_t RemoteWidgetExtension.matches(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF4BCA3C(v4, v1, v2, v3);
}

id sub_1BF4BC7E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 20));
  *a2 = v3;
  return v3;
}

uint64_t sub_1BF4BC7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C08, &unk_1BF4F68F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for RemoteWidgetExtension();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[3] = v11;
  v18[4] = sub_1BF4BD154(&unk_1EBDD92B0, type metadata accessor for RemoteWidgetExtension);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  sub_1BF4BD19C(a1, boxed_opaque_existential_0, type metadata accessor for RemoteWidgetExtension);
  sub_1BF38E49C(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if (v13)
  {
    v14(v5, 0, 1, v6);
    sub_1BF4BD204(v5, v10, type metadata accessor for RemoteWidgetExtension);
    v15 = WidgetExtensionInfo.matches(_:)(&v10[*(v6 + 20)]);
    sub_1BF4BD26C(v10);
  }

  else
  {
    v14(v5, 1, 1, v6);
    sub_1BF38C9B4(v5, &qword_1EBDD9C08, &unk_1BF4F68F8);
    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15 & 1;
}

uint64_t sub_1BF4BCA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C08, &unk_1BF4F68F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for RemoteWidgetExtension();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1BF38E49C(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v10, 0, 1, v11);
    sub_1BF4BD204(v10, v15, type metadata accessor for RemoteWidgetExtension);
    v19 = WidgetExtensionInfo.matches(_:)(&v15[*(v11 + 20)]);
    sub_1BF4BD26C(v15);
  }

  else
  {
    v18(v10, 1, 1, v11);
    sub_1BF38C9B4(v10, &qword_1EBDD9C08, &unk_1BF4F68F8);
    v19 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v19 & 1;
}

uint64_t sub_1BF4BCC68(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = sub_1BF4E8464();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_1BF4E83D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF4E8634();
  v16 = *(v23 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E6985960], v11);
    if (v20(v10, 1, v11) != 1)
    {
      sub_1BF38C9B4(v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  sub_1BF38C94C(v24, v27, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v3 + 104))(v6, *MEMORY[0x1E6985A40], v25);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  (*(v16 + 8))(v19, v23);
  return *v26;
}

uint64_t sub_1BF4BCFB4(void *a1)
{
  a1[1] = sub_1BF4BD154(&qword_1EBDD9BF0, type metadata accessor for RemoteWidgetExtension);
  a1[2] = sub_1BF4BD154(&qword_1EBDD9BF8, type metadata accessor for RemoteWidgetExtension);
  result = sub_1BF4BD154(&qword_1EBDD9C00, type metadata accessor for RemoteWidgetExtension);
  a1[3] = result;
  return result;
}

uint64_t sub_1BF4BD0D0()
{
  result = type metadata accessor for RemoteWidgetExtensionSession();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WidgetExtensionInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF4BD154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF4BD19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4BD204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4BD26C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteWidgetExtension();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReloadStateService.__allocating_init(persistenceStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v5;
  sub_1BF38E610(a1, v2 + 16);
  return v2;
}

uint64_t ReloadStateService.init(persistenceStore:)(__int128 *a1)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(v1 + 56) = v3;
  *(v1 + 64) = v5;
  sub_1BF38E610(a1, v1 + 16);
  return v1;
}

void sub_1BF4BD3BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(v4 + 56);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF4BD454(a1, a2, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1BF4BD454@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v73 = a2;
  v72 = a3;
  v75 = a4;
  v76 = sub_1BF4E7334();
  v77 = *(v76 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = v74;
  sub_1BF4BE268(a1, v73, v72, &v65 - v30);
  if (v32)
  {
    v33 = v77;

    v34 = 1;
    v35 = v75;
    v36 = v76;
  }

  else
  {
    v73 = v22;
    v74 = v19;
    v72 = v16;
    sub_1BF4BE268(a1, 0, 0, v28);
    v38 = v31;
    v39 = v25;
    sub_1BF3ABF74(v31, v25);
    v33 = v77;
    v40 = *(v77 + 48);
    v41 = v76;
    if (v40(v39, 1, v76) == 1)
    {
      v42 = v39;
      v36 = v41;
      goto LABEL_9;
    }

    v43 = v28;
    v44 = v69;
    v66 = *(v33 + 32);
    v66(v69, v39, v41);
    v67 = v43;
    v45 = v43;
    v42 = v73;
    sub_1BF3ABF74(v45, v73);
    v36 = v41;
    if (v40(v42, 1, v41) == 1)
    {
      v33 = v77;
      (*(v77 + 8))(v44, v41);
      v28 = v67;
LABEL_9:
      sub_1BF38C9B4(v42, &qword_1EBDD9B00, &qword_1BF4F1E50);
      v46 = v38;
      v47 = v74;
      sub_1BF4BECF8(v46, v74);
      v48 = v40(v47, 1, v36);
      v50 = v70;
      v49 = v71;
      if (v48 == 1)
      {
        sub_1BF38C9B4(v47, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v51 = v72;
        sub_1BF4BECF8(v28, v72);
        v52 = v40(v51, 1, v36);
        v53 = v75;
        if (v52 == 1)
        {
          sub_1BF38C9B4(v51, &qword_1EBDD9B00, &qword_1BF4F1E50);
          v34 = 1;
          v35 = v53;
          return (*(v33 + 56))(v35, v34, 1, v36);
        }

        v54 = *(v33 + 32);
        v54(v49, v51, v36);
        v55 = v53;
        v56 = v49;
      }

      else
      {
        sub_1BF38C9B4(v28, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v54 = *(v33 + 32);
        v54(v50, v47, v36);
        v53 = v75;
        v55 = v75;
        v56 = v50;
      }

      v54(v55, v56, v36);
      v35 = v53;
      v34 = 0;
      return (*(v33 + 56))(v35, v34, 1, v36);
    }

    v57 = v44;
    v58 = v68;
    v59 = v41;
    v60 = v66;
    v66(v68, v42, v59);
    sub_1BF3B5254();
    v61 = sub_1BF4E88B4();
    sub_1BF38C9B4(v67, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v36 = v76;
    sub_1BF38C9B4(v38, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v62 = v77;
    if (v61)
    {
      v63 = v57;
    }

    else
    {
      v63 = v58;
    }

    if ((v61 & 1) == 0)
    {
      v58 = v57;
    }

    (*(v77 + 8))(v63, v36);
    v64 = v75;
    v60(v75, v58, v36);
    v35 = v64;
    v34 = 0;
    v33 = v62;
  }

  return (*(v33 + 56))(v35, v34, 1, v36);
}

uint64_t sub_1BF4BD9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23[-v13];
  (*(v10 + 16))(&v23[-v13], a2, v9, v12);
  v15 = type metadata accessor for _ReloadStateKey(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier, v14, v9);
  v19 = (v18 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v19 = a3;
  v19[1] = a4;
  v20 = v4[7];
  v21 = *(v20 + 16);

  os_unfair_lock_lock(v21);
  sub_1BF4BDB88(v4, v18, a1);
  os_unfair_lock_unlock(*(v20 + 16));
}

void sub_1BF4BDB88(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - v13;
  swift_beginAccess();
  v15 = a1[8];

  v16 = sub_1BF427624(a2, v15);

  if (v16)
  {
    v58 = *(v7 + 16);
    v58(v14, a3, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    v17 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
    swift_beginAccess();
    sub_1BF3AC398(v14, v16 + v17);
  }

  else
  {
    v56 = a3;
    v57 = v10;
    v58 = *(v7 + 16);
    v58(v14, a3, v6);
    v18 = *(v7 + 56);
    v18(v14, 0, 1, v6);
    v19 = type metadata accessor for _ReloadState(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    v18((v22 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested), 1, 1, v6);
    *(v22 + 16) = a2;
    v23 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
    swift_beginAccess();

    sub_1BF3AC398(v14, v22 + v23);
    swift_endAccess();
    swift_beginAccess();
    v24 = a1[8];
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v25 = a1[8];
      }

      else
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = sub_1BF4E9204();
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return;
      }

      a1[8] = sub_1BF4E4368(v25, v26 + 1);
    }

    else
    {
      v27 = a1[8];
    }

    a3 = v56;
    v10 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = a1[8];
    sub_1BF3D7B44(v22, a2, isUniquelyReferenced_nonNull_native);
    a1[8] = v61;
  }

  swift_endAccess();

  v29 = a1[5];
  v30 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v29);
  v31 = v59;
  (*(v30 + 16))(a3, a2, v29, v30);
  if (v31)
  {
    if (qword_1EDC9D4D0 != -1)
    {
      swift_once();
    }

    v32 = sub_1BF4E7B54();
    __swift_project_value_buffer(v32, qword_1EDCA6958);

    v33 = v31;
    v34 = sub_1BF4E7B34();
    v35 = sub_1BF4E8E64();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60[0] = v38;
      *v36 = 136446466;
      v39 = sub_1BF4E2654();
      v41 = sub_1BF38D65C(v39, v40, v60);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2114;
      v42 = v31;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      *v37 = v43;
      _os_log_impl(&dword_1BF389000, v34, v35, "Error setting last requested reload date for key: %{public}s: %{public}@", v36, 0x16u);
      sub_1BF38C9B4(v37, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
      MEMORY[0x1BFB5A5D0](v36, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDC9D4D0 != -1)
    {
      swift_once();
    }

    v44 = sub_1BF4E7B54();
    __swift_project_value_buffer(v44, qword_1EDCA6958);
    v58(v10, a3, v6);

    v45 = sub_1BF4E7B34();
    v46 = sub_1BF4E8E84();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60[0] = v59;
      *v47 = 136446466;
      v48 = sub_1BF4E2654();
      v50 = sub_1BF38D65C(v48, v49, v60);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2082;
      v51 = sub_1BF4E7314();
      v53 = v52;
      (*(v7 + 8))(v10, v6);
      v54 = sub_1BF38D65C(v51, v53, v60);

      *(v47 + 14) = v54;
      _os_log_impl(&dword_1BF389000, v45, v46, "Setting last requested reload date for key: %{public}s: %{public}s", v47, 0x16u);
      v55 = v59;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v55, -1, -1);
      MEMORY[0x1BFB5A5D0](v47, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1BF4BE268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  os_unfair_lock_assert_owner(*(v4[7] + 16));
  (*(v11 + 16))(v14, a1, v10);
  v15 = type metadata accessor for _ReloadStateKey(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier, v14, v10);
  v19 = (v18 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v19 = a2;
  v19[1] = a3;
  swift_beginAccess();
  v20 = v4[8];

  v21 = sub_1BF427624(v18, v20);

  if (v21)
  {
    goto LABEL_2;
  }

  v24 = v4[5];
  v25 = v4[6];
  v26 = v4;
  __swift_project_boxed_opaque_existential_1(v4 + 2, v24);
  v27 = (*(v25 + 8))(v18, v24, v25);
  if (v5)
  {
    if (qword_1EDC9D4D0 != -1)
    {
      swift_once();
    }

    v28 = sub_1BF4E7B54();
    __swift_project_value_buffer(v28, qword_1EDCA6958);

    v29 = v5;
    v30 = sub_1BF4E7B34();
    v31 = sub_1BF4E8E64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = a4;
      v34 = v33;
      v35 = swift_slowAlloc();
      v50 = v35;
      *v32 = 136446466;

      v36 = sub_1BF4E2654();
      v38 = v37;

      v39 = sub_1BF38D65C(v36, v38, &v50);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2114;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v41;
      *v34 = v41;
      _os_log_impl(&dword_1BF389000, v30, v31, "Error fetching reload state for key: %{public}s: %{public}@", v32, 0x16u);
      sub_1BF38C9B4(v34, &unk_1EBDD9260, &qword_1BF4EC380);
      v42 = v34;
      a4 = v49;
      MEMORY[0x1BFB5A5D0](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
      MEMORY[0x1BFB5A5D0](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v21 = v27;
  if (!v27)
  {

LABEL_17:
    v45 = sub_1BF4E7334();
    return (*(*(v45 - 8) + 56))(a4, 1, 1, v45);
  }

  swift_beginAccess();
  v43 = v4[8];
  if ((v43 & 0xC000000000000001) == 0)
  {
    v46 = v4[8];

    goto LABEL_19;
  }

  if (v43 < 0)
  {
    v44 = v4[8];
  }

  else
  {
    v44 = v43 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1BF4E9204();
  if (!__OFADD__(result, 1))
  {
    v26[8] = sub_1BF4E4368(v44, result + 1);
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v26[8];
    sub_1BF3D7B44(v21, v18, isUniquelyReferenced_nonNull_native);
    v26[8] = v51;

    swift_endAccess();
LABEL_2:

    v22 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
    swift_beginAccess();
    sub_1BF3ABF74(v21 + v22, a4);
  }

  __break(1u);
  return result;
}

uint64_t *ReloadStateService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t ReloadStateService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

void sub_1BF4BE7E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(*v4 + 56);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF4BD454(a1, a2, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t ReloadStatePersistenceStore.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF4BE8E4(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 88);

  v4 = sub_1BF4E3150(a1);

  return v4;
}

uint64_t sub_1BF4BE93C(uint64_t a1, uint64_t a2)
{
  v9[3] = a2;
  v3 = *(v2 + 16);
  v9[2] = a1;
  v4 = *(v3 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v5 = sub_1BF4A4E98();
  v6 = *(v3 + 136);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v3 + 16);

  sub_1BF3E7904(0xD00000000000001ALL, 0x80000001BF4FE7A0, v7, sub_1BF4BEAFC, v9, v5);

  os_unfair_lock_unlock(*(v6 + 16));
  sub_1BF48EBD0();
}

uint64_t ReloadStatePersistenceStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ReloadStatePersistenceStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4BEA7C(uint64_t a1)
{
  v3 = *(*(*v1 + 16) + 88);

  v4 = sub_1BF4E3150(a1);

  return v4;
}

uint64_t sub_1BF4BEAFC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 80);
  return sub_1BF4E3B30(v3, v2);
}

uint64_t sub_1BF4BECF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4BED68()
{
  v2 = v0;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](88);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v17 = sub_1BF3E4F48(v3);
    if (v1)
    {
    }

    else
    {
      v18 = v17;

      v2 = sub_1BF4BF1C8(v18);
    }

    return v2;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void *sub_1BF4BF1C8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C18, &qword_1BF4F6AA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - v6;
  v23 = type metadata accessor for PushSubscription();
  v8 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (a1 + 32);
  v21[0] = v11;
  v16 = (v11 + 48);
  v17 = MEMORY[0x1E69E7CC0];
  v21[1] = v2;
  do
  {
    v24 = *v15;

    sub_1BF4BF480(&v24, v7);

    if ((*v16)(v7, 1, v23) == 1)
    {
      sub_1BF38C9B4(v7, &qword_1EBDD9C18, &qword_1BF4F6AA8);
    }

    else
    {
      sub_1BF4C40E0(v7, v13, type metadata accessor for PushSubscription);
      sub_1BF4C40E0(v13, v22, type metadata accessor for PushSubscription);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BF432BCC(0, v17[2] + 1, 1, v17);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1BF432BCC(v18 > 1, v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      sub_1BF4C40E0(v22, v17 + ((*(v21[0] + 80) + 32) & ~*(v21[0] + 80)) + *(v21[0] + 72) * v19, type metadata accessor for PushSubscription);
    }

    ++v15;
    --v14;
  }

  while (v14);
  return v17;
}

uint64_t sub_1BF4BF480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v143 = type metadata accessor for PushSubscription();
  v4 = *(v143 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v133 = &v122[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = type metadata accessor for Budget();
  v7 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v138 = &v122[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BF4E7334();
  v136 = *(v9 - 8);
  v137 = v9;
  v10 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v122[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v122[-v14];
  v15 = *a1;
  v16 = sub_1BF4E92F4();
  v18 = sub_1BF48063C(v16, v17, v15);
  v20 = v19;
  v22 = v21;
  v23 = ~v21;

  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = sub_1BF4244EC(v18, v20, v22);
  v26 = v25;
  sub_1BF3DB1FC(v18, v20, v22);
  if (!v26)
  {
    goto LABEL_22;
  }

  v131 = v24;
  v132 = v2;
  v27 = sub_1BF4E92F4();
  v29 = sub_1BF48063C(v27, v28, v15);
  v31 = v30;
  v33 = v32;
  v34 = ~v32;

  if (!v34)
  {
    goto LABEL_21;
  }

  v130 = sub_1BF4244E0(v29, v31, v33);
  v36 = v35;
  sub_1BF3DB1FC(v29, v31, v33);
  if (v36)
  {
    goto LABEL_21;
  }

  v37 = sub_1BF4E92F4();
  v39 = sub_1BF48063C(v37, v38, v15);
  v41 = v40;
  v43 = v42;
  v44 = ~v42;

  if (!v44)
  {
    goto LABEL_21;
  }

  v129 = sub_1BF4244E0(v39, v41, v43);
  v46 = v45;
  sub_1BF3DB1FC(v39, v41, v43);
  if (v46)
  {
    goto LABEL_21;
  }

  v47 = sub_1BF4E92F4();
  v49 = sub_1BF48063C(v47, v48, v15);
  v51 = v50;
  v53 = v52;
  v54 = ~v52;

  if (!v54)
  {
    goto LABEL_21;
  }

  v128 = sub_1BF424634(v49, v51, v53);
  v56 = v55;
  sub_1BF3DB1FC(v49, v51, v53);
  if (v56)
  {
    goto LABEL_21;
  }

  v57 = sub_1BF4E92F4();
  v59 = sub_1BF48063C(v57, v58, v15);
  v61 = v60;
  v63 = v62;
  v64 = ~v62;

  if (!v64)
  {
    goto LABEL_21;
  }

  v127 = sub_1BF4244E0(v59, v61, v63);
  v66 = v65;
  sub_1BF3DB1FC(v59, v61, v63);
  if (v66)
  {
    goto LABEL_21;
  }

  v67 = sub_1BF4E92F4();
  v69 = sub_1BF48063C(v67, v68, v15);
  v71 = v70;
  v73 = v72;
  v74 = ~v72;

  if (!v74 || (v75 = sub_1BF4244EC(v69, v71, v73), v77 = v76, sub_1BF3DB1FC(v69, v71, v73), !v77))
  {
LABEL_21:

LABEL_22:
    v90 = *(v4 + 56);
    v91 = v139;
    v92 = 1;
    v93 = v143;
    return v90(v91, v92, 1, v93);
  }

  v78._countAndFlagsBits = v131;
  v78._object = v26;
  Topic.init(suffixed:)(v78);
  if (v141)
  {
    v125 = v75;
    v126 = v141;
    v131 = v77;
    v124 = v140;
    v123 = v142;
    if (v130 == 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = 2;
    }

    if (!v130)
    {
      v79 = 0;
    }

    LODWORD(v130) = v79;
    v80 = v135;
    sub_1BF4E71E4();
    LODWORD(v128) = v127 != 0;
    v81 = v136;
    v82 = v137;
    (*(v136 + 16))(v12, v80, v137);
    v83 = v138;
    sub_1BF4E7214();
    v84 = v134;
    v85 = *(v134 + 20);
    v86 = v12;
    v87 = v82;
    (*(v81 + 40))(v83, v86, v82);
    *&v83[v85] = v129;
    v83[v84[6]] = v128;
    *&v83[v84[7]] = 0;
    *&v83[v84[8]] = 0;
    v88 = v143;
    if (v130 == 2)
    {
      (*(v81 + 8))(v80, v87);

      sub_1BF4C4148(v83);
      return (*(v4 + 56))(v139, 1, 1, v88);
    }

    if (v130)
    {
      v99 = sub_1BF4C39C8(v15);
      v100 = v133;
      v102 = v135;
      v101 = v136;
      if (v99)
      {
        v103 = v99;
        v104 = v138;
        sub_1BF3F1C8C(v138, &v133[*(v88 + 24)]);
        v105 = v125;
        *(v100 + 24) = v103;
        *(v100 + 32) = v105;
        *(v100 + 48) = 0;
        *(v100 + 56) = 0;
        *(v100 + 40) = v131;
        *(v100 + 64) = 1;
        (*(v101 + 8))(v102, v137);
LABEL_34:
        v120 = v126;
        *v100 = v124;
        *(v100 + 8) = v120;
        *(v100 + 16) = v123 & 1;
        sub_1BF4C4148(v104);
        v121 = v139;
        sub_1BF4C40E0(v100, v139, type metadata accessor for PushSubscription);
        v90 = *(v4 + 56);
        v91 = v121;
        v92 = 0;
LABEL_36:
        v93 = v88;
        return v90(v91, v92, 1, v93);
      }
    }

    else
    {
      v106 = sub_1BF4C3364(v15);
      v100 = v133;
      if (v106)
      {
        v107 = v106;
        v104 = v138;
        sub_1BF3F1C8C(v138, &v133[*(v88 + 24)]);
        v108 = [v107 extensionIdentity];
        v109 = *MEMORY[0x1E69941B8];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
        v110 = sub_1BF4E76B4();
        v112 = v111;
        swift_endAccess();

        v140 = v110;
        v141 = v112;
        MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
        v113 = [v107 kind];
        v114 = sub_1BF4E8914();
        v116 = v115;

        MEMORY[0x1BFB58C90](v114, v116);

        v117 = v140;
        v118 = v141;
        (*(v136 + 8))(v135, v137);
        *(v100 + 24) = v117;
        *(v100 + 32) = v118;
        v119 = v125;
        *(v100 + 40) = v107;
        *(v100 + 48) = v119;
        *(v100 + 56) = v131;
        *(v100 + 64) = 0;
        goto LABEL_34;
      }
    }

    (*(v136 + 8))(v135, v137);

    sub_1BF4C4148(v138);
    v90 = *(v4 + 56);
    v91 = v139;
    v92 = 1;
    goto LABEL_36;
  }

  v94 = v143;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v95 = sub_1BF4E7B54();
  __swift_project_value_buffer(v95, qword_1EDCA6898);
  v96 = sub_1BF4E7B34();
  v97 = sub_1BF4E8E64();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_1BF389000, v96, v97, "Encountered malformed string for topic in push subscription.", v98, 2u);
    MEMORY[0x1BFB5A5D0](v98, -1, -1);
  }

  return (*(v4 + 56))(v139, 1, 1, v94);
}

uint64_t sub_1BF4BFD70(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_46;
  }

  v5 = *(Strong + 24);
  v6 = Strong;
  os_unfair_lock_lock(*(v5 + 16));
  v7 = *(v6 + 64);
  os_unfair_lock_unlock(*(v5 + 16));

  if (!v7)
  {
    __break(1u);
LABEL_46:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v8 = a1 + *(type metadata accessor for PushSubscription() + 24);
  sub_1BF4E71F4();
  v10 = v9;
  v11 = type metadata accessor for Budget();
  v255 = *(v8 + *(v11 + 20));
  v256 = *(v8 + *(v11 + 24));
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(a1 + 56);
  v257 = *(a1 + 64);
  v246 = a1;
  if (v257)
  {
    v17 = v12;

    v18 = [v17 tokenString];
    v247 = sub_1BF4E8914();
    v248 = v19;

    sub_1BF3F1B98(v12, v13, v15, v14, v16, 1);
    v258 = 0;
    v20 = 0xF000000000000000;
    v251 = 0;
    v252 = 0xE000000000000000;
    v249 = 0;
    v250 = 0xE000000000000000;
  }

  else
  {
    v253 = *(a1 + 48);

    v21 = v15;

    v22 = [v21 intentReference];
    if (v22)
    {
      v23 = v22;
      sub_1BF4E78B4();
      v24 = v23;
      v25 = sub_1BF4E78A4();
      v27 = v26;
      v2 = v1;

      if (v1)
      {

        return sub_1BF3F1B98(v12, v13, v15, v253, v16, 0);
      }

      v258 = v25;
      v20 = v27;
      v263 = [v24 stableHash];
      v251 = sub_1BF4E96A4();
      v252 = v29;
    }

    else
    {
      v258 = 0;
      v20 = 0xF000000000000000;
      v251 = 0;
      v252 = 0xE000000000000000;
    }

    v30 = [v21 extensionIdentity];
    v31 = [v30 tokenString];

    v247 = sub_1BF4E8914();
    v248 = v32;

    v33 = [v21 kind];
    v249 = sub_1BF4E8914();
    v250 = v34;

    sub_1BF3F1B98(v12, v13, v15, v253, v16, 0);
    a1 = v246;
  }

  v254 = v20;
  v263 = 0;
  v264 = 0xE000000000000000;
  v35 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](275);
  v267[0] = 0;
  v267[1] = 0xE000000000000000;
  v268 = v35;
  MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
  v36 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v36);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v37 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v37);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v38 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v39 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v39);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v40 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v40);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v41 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v41);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v42 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v42);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v43 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v43);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v44);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v45 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v45);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v46 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v46);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v47 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v47);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  v48 = *(a1 + 24);
  v49 = *(a1 + 32);
  v245 = v2;
  if (*(a1 + 64))
  {
    v51 = *(a1 + 48);
    v50 = *(a1 + 56);
    v52 = a1;
    v53 = *(a1 + 40);
    v54 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    v55 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v56 = sub_1BF4E76B4();
    v58 = v57;
    swift_endAccess();
    sub_1BF3F1B98(v48, v49, v53, v51, v50, 1);
    v48 = v56;
    v49 = v58;
  }

  else
  {

    v52 = a1;
  }

  v59 = sub_1BF3D8148(v48, v49);
  v61 = v60;
  v63 = v62;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v35 + 16) + 1;
  v64 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v64);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v59, v61, v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v59, v61, v63, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v59, v61, v63);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v66 = 56;
  if (*(v52 + 64))
  {
    v66 = 40;
  }

  v67 = 48;
  if (*(v52 + 64))
  {
    v67 = 32;
  }

  v68 = *(v52 + v66);
  v69 = *(v52 + v67);
  swift_bridgeObjectRetain_n();
  v70 = sub_1BF3D8148(v69, v68);
  v72 = v71;
  v74 = v73;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v75 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v75);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v70, v72, v74);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v70, v72, v74, 0x676E69646E696240, 0xE800000000000000, v76);

  sub_1BF3D88B8(v70, v72, v74);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v77 = *(v52 + 8);
  if (*(v52 + 16))
  {
    v78 = 0xD000000000000012;
  }

  else
  {
    v78 = 0xD000000000000013;
  }

  if (*(v52 + 16))
  {
    v79 = "extensionIdentity: ";
  }

  else
  {
    v79 = "; subscriptionType: ";
  }

  v243 = *v52;
  v244 = *(v52 + 8);
  v263 = *v52;
  v264 = v77;

  MEMORY[0x1BFB58C90](v78, v79 | 0x8000000000000000);

  v80 = sub_1BF3D8148(v263, v264);
  v82 = v81;
  v84 = v83;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v85 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v85);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v80, v82, v84);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v80, v82, v84, 0x676E69646E696240, 0xE800000000000000, v86);

  sub_1BF3D88B8(v80, v82, v84);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v87 = sub_1BF3D833C(v10);
  v89 = v88;
  LOBYTE(v82) = v90;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v91 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v91);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v87, v89, v82);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v87, v89, v82, 0x676E69646E696240, 0xE800000000000000, v92);

  sub_1BF3D88B8(v87, v89, v82);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v93 = sub_1BF3D7F44(v255);
  v95 = v94;
  LOBYTE(v82) = v96;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v97 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v97);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v93, v95, v82);
  v98 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v93, v95, v82, 0x676E69646E696240, 0xE800000000000000, v98);

  sub_1BF3D88B8(v93, v95, v82);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v99 = sub_1BF3D7F44(v256);
  v101 = v100;
  LOBYTE(v82) = v102;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v103 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v103);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v99, v101, v82);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v99, v101, v82, 0x676E69646E696240, 0xE800000000000000, v104);

  sub_1BF3D88B8(v99, v101, v82);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v105 = sub_1BF3D7F44(v257);
  v107 = v106;
  LOBYTE(v82) = v108;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v109 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v109);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v105, v107, v82);
  v110 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v105, v107, v82, 0x676E69646E696240, 0xE800000000000000, v110);

  sub_1BF3D88B8(v105, v107, v82);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  swift_bridgeObjectRetain_n();
  v111 = sub_1BF3D8148(v247, v248);
  v113 = v112;
  LOBYTE(v82) = v114;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v115 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v115);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v111, v113, v82);
  v116 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v111, v113, v82, 0x676E69646E696240, 0xE800000000000000, v116);

  sub_1BF3D88B8(v111, v113, v82);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  swift_bridgeObjectRetain_n();
  v117 = sub_1BF3D8148(v249, v250);
  v119 = v118;
  LOBYTE(v82) = v120;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v121 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v121);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v117, v119, v82);
  v122 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v117, v119, v82, 0x676E69646E696240, 0xE800000000000000, v122);

  sub_1BF3D88B8(v117, v119, v82);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  swift_bridgeObjectRetain_n();
  v123 = sub_1BF3D8148(v251, v252);
  v125 = v124;
  LOBYTE(v82) = v126;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v127 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v127);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v123, v125, v82);
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v123, v125, v82, 0x676E69646E696240, 0xE800000000000000, v128);

  sub_1BF3D88B8(v123, v125, v82);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  if (v254 >> 60 == 15)
  {
    v262 = 0;
    v260 = 0u;
    v261 = 0u;
    v129 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v265 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v266 = &off_1F3DF0088;
    v263 = v129;
    v130 = v258;
  }

  else
  {
    *(&v261 + 1) = MEMORY[0x1E6969080];
    v262 = &off_1F3DF00A8;
    v130 = v258;
    *&v260 = v258;
    *(&v260 + 1) = v254;
    sub_1BF38E610(&v260, &v263);
  }

  v259 = v130;
  v131 = v265;
  v132 = v266;
  v133 = __swift_project_boxed_opaque_existential_1(&v263, v265);
  sub_1BF48055C(v130, v254);
  sub_1BF478C08(v133, v267, v131, v132);
  __swift_destroy_boxed_opaque_existential_1Tm(&v263);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FE940);
  v134 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v134);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FE960);
  v135 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v135);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v136 = 56;
  if (*(v246 + 64))
  {
    v136 = 40;
  }

  v137 = 48;
  if (*(v246 + 64))
  {
    v137 = 32;
  }

  v138 = *(v246 + v136);
  v139 = *(v246 + v137);
  swift_bridgeObjectRetain_n();
  v140 = sub_1BF3D8148(v139, v138);
  v142 = v141;
  v144 = v143;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v268 + 16) + 1;
  v145 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v145);

  v147 = v263;
  v146 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v140, v142, v144);
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v140, v142, v144, v147, v146, v148);

  sub_1BF3D88B8(v140, v142, v144);

  v149 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v150 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v150);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  if (*(v246 + 16))
  {
    v151 = 0xD000000000000012;
  }

  else
  {
    v151 = 0xD000000000000013;
  }

  if (*(v246 + 16))
  {
    v152 = "extensionIdentity: ";
  }

  else
  {
    v152 = "; subscriptionType: ";
  }

  v263 = v243;
  v264 = v244;

  MEMORY[0x1BFB58C90](v151, v152 | 0x8000000000000000);

  v153 = v263;
  v154 = v264;

  v155 = sub_1BF3D8148(v153, v154);
  v157 = v156;
  v159 = v158;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v149 + 16) + 1;
  v160 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v160);

  v161 = v263;
  v162 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v155, v157, v159);
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v155, v157, v159, v161, v162, v163);

  sub_1BF3D88B8(v155, v157, v159);

  v164 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v165 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v165);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v166 = sub_1BF3D833C(v10);
  v168 = v167;
  LOBYTE(v157) = v169;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v164 + 16) + 1;
  v170 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v170);

  v171 = v263;
  v172 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v166, v168, v157);
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v166, v168, v157, v171, v172, v173);

  sub_1BF3D88B8(v166, v168, v157);
  v174 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v175 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v175);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v176 = sub_1BF3D7F44(v255);
  v178 = v177;
  LOBYTE(v157) = v179;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v174 + 16) + 1;
  v180 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v180);

  v181 = v263;
  v182 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v176, v178, v157);
  v183 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v176, v178, v157, v181, v182, v183);

  sub_1BF3D88B8(v176, v178, v157);
  v184 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v185 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v185);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v186 = sub_1BF3D7F44(v256);
  v188 = v187;
  LOBYTE(v157) = v189;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v184 + 16) + 1;
  v190 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v190);

  v191 = v263;
  v192 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v186, v188, v157);
  v193 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v186, v188, v157, v191, v192, v193);

  sub_1BF3D88B8(v186, v188, v157);
  v194 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v195 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v195);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v196 = sub_1BF3D7F44(v257);
  v198 = v197;
  LOBYTE(v157) = v199;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v194 + 16) + 1;
  v200 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v200);

  v201 = v263;
  v202 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v196, v198, v157);
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v196, v198, v157, v201, v202, v203);

  sub_1BF3D88B8(v196, v198, v157);
  v204 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v205 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v205);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

  v206 = sub_1BF3D8148(v247, v248);
  v208 = v207;
  LOBYTE(v157) = v209;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v204 + 16) + 1;
  v210 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v210);

  v211 = v263;
  v212 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v206, v208, v157);
  v213 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v206, v208, v157, v211, v212, v213);

  sub_1BF3D88B8(v206, v208, v157);

  v214 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90]();
  v215 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v215);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

  v216 = sub_1BF3D8148(v249, v250);
  v218 = v217;
  LOBYTE(v157) = v219;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v214 + 16) + 1;
  v220 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v220);

  v221 = v263;
  v222 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v216, v218, v157);
  v223 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v216, v218, v157, v221, v222, v223);

  sub_1BF3D88B8(v216, v218, v157);

  v224 = v263;
  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v225 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v225);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

  v226 = sub_1BF3D8148(v251, v252);
  v228 = v227;
  LOBYTE(v157) = v229;
  v263 = 0x676E69646E696240;
  v264 = 0xE800000000000000;
  *&v260 = *(v224 + 16) + 1;
  v230 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v230);

  v231 = v263;
  v232 = v264;
  MEMORY[0x1BFB58C90](v263, v264);
  sub_1BF3D8840(v226, v228, v157);
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v263 = v268;
  sub_1BF3D6680(v226, v228, v157, v231, v232, v233);

  sub_1BF3D88B8(v226, v228, v157);

  v268 = v263;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v234 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v234);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  if (v254 >> 60 == 15)
  {
    v262 = 0;
    v260 = 0u;
    v261 = 0u;
    v235 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v265 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v266 = &off_1F3DF0088;
    v263 = v235;
    v236 = v245;
    v237 = v259;
    v238 = v254;
    if (*(&v261 + 1))
    {
      sub_1BF38C9B4(&v260, &qword_1EBDD99D0, &qword_1BF4F7B80);
    }
  }

  else
  {
    *(&v261 + 1) = MEMORY[0x1E6969080];
    v262 = &off_1F3DF00A8;
    v237 = v259;
    v238 = v254;
    *&v260 = v259;
    *(&v260 + 1) = v254;
    sub_1BF38E610(&v260, &v263);
    v236 = v245;
  }

  v239 = v265;
  v240 = v266;
  v241 = __swift_project_boxed_opaque_existential_1(&v263, v265);
  sub_1BF48055C(v237, v238);
  sub_1BF478C08(v241, v267, v239, v240);
  __swift_destroy_boxed_opaque_existential_1Tm(&v263);
  v242 = v268;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_46;
  }

  sub_1BF3E4F48(v242);
  if (!v236)
  {
  }

  sub_1BF3DB210(v237, v238);
}

uint64_t sub_1BF4C1C0C(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v12 = sub_1BF3D8148(a1, a2);
  v14 = v13;
  v16 = v15;
  v20 = *(v9 + 16) + 1;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v12, v14, v16);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v9);

  if (!v2)
  {
  }

  return result;
}

uint64_t sub_1BF4C1EFC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](40);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v7 = sub_1BF3E4F48(v1);
    if (v0)
    {
    }

    else
    {
      v8 = v7;

      v1 = sub_1BF4C3BC0(v8);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4C219C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v69 - v7;
  v9 = *a1;
  v10 = sub_1BF4E92F4();
  v12 = sub_1BF48063C(v10, v11, v9);
  v14 = v13;
  v16 = v15;
  v17 = ~v15;

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = sub_1BF4244EC(v12, v14, v16);
  v20 = v19;
  sub_1BF3DB1FC(v12, v14, v16);
  if (!v20)
  {
    goto LABEL_12;
  }

  v75 = v18;
  v78 = v2;
  v21 = sub_1BF4E92F4();
  v23 = sub_1BF48063C(v21, v22, v9);
  v25 = v24;
  v27 = v26;
  v28 = ~v26;

  if (!v28 || (v29 = sub_1BF4244EC(v23, v25, v27), v31 = v30, sub_1BF3DB1FC(v23, v25, v27), !v31))
  {
LABEL_11:

LABEL_12:
    v53 = type metadata accessor for PushToken();
    return (*(*(v53 - 8) + 56))(a2, 1, 1, v53);
  }

  v73 = v29;
  v74 = v31;
  v32 = sub_1BF4E92F4();
  v34 = sub_1BF48063C(v32, v33, v9);
  v36 = v35;
  v38 = v37;
  v39 = ~v37;

  if (!v39 || (v40 = sub_1BF4244EC(v34, v36, v38), v41 = v38, v43 = v42, sub_1BF3DB1FC(v34, v36, v41), !v43))
  {

    goto LABEL_11;
  }

  v72 = v40;
  v44 = sub_1BF4E92F4();
  v46 = sub_1BF48063C(v44, v45, v9);
  v48 = v47;
  v50 = v49;
  v51 = ~v49;

  if (!v51 || (sub_1BF424370(v46, v48, v50, &v76), sub_1BF3DB1FC(v46, v48, v50), v52 = *(&v76 + 1), *(&v76 + 1) >> 60 == 15))
  {

    goto LABEL_11;
  }

  v55 = v76;
  v56._countAndFlagsBits = v72;
  v56._object = v43;
  Topic.init(suffixed:)(v56);
  v57 = *(&v76 + 1);
  if (!*(&v76 + 1))
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v65 = sub_1BF4E7B54();
    __swift_project_value_buffer(v65, qword_1EDCA6898);
    v66 = sub_1BF4E7B34();
    v67 = sub_1BF4E8E64();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1BF389000, v66, v67, "Encountered malformed string for topic in push subscription.", v68, 2u);
      MEMORY[0x1BFB5A5D0](v68, -1, -1);
    }

    sub_1BF3DB210(v55, v52);

    goto LABEL_12;
  }

  LODWORD(v72) = v77;
  v71 = v76;
  v58 = sub_1BF4E7334();
  v59 = *(*(v58 - 8) + 56);
  v59(v8, 1, 1, v58);
  v60 = type metadata accessor for PushToken();
  v69 = v55;
  v70 = v52;
  v61 = v60;
  v62 = *(v60 + 32);
  v59((a2 + v62), 1, 1, v58);
  *(a2 + 16) = v75;
  *(a2 + 24) = v20;
  v63 = v74;
  *(a2 + 32) = v73;
  *(a2 + 40) = v63;
  *(a2 + 48) = v71;
  *(a2 + 56) = v57;
  *(a2 + 64) = v72 & 1;
  v64 = v70;
  *a2 = v69;
  *(a2 + 8) = v64;
  sub_1BF3AC398(v8, a2 + v62);
  return (*(*(v61 - 8) + 56))(a2, 0, 1, v61);
}

uint64_t sub_1BF4C2668(uint64_t *a1)
{
  v2 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](35);
  MEMORY[0x1BFB58C90](0x20455441445055, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x2020200A5445530ALL, 0xE900000000000020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v5 = *a1;
  v6 = a1[1];
  sub_1BF3D8864(*a1, v6);
  v7 = sub_1BF3D8134(v5, v6);
  v9 = v8;
  LOBYTE(v5) = v10;
  v24 = *(v2 + 16) + 1;
  v11 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v7, v9, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v7, v9, v5, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v7, v9, v5);
  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v15 = a1[2];
  v14 = a1[3];

  v16 = sub_1BF3D8148(v15, v14);
  v18 = v17;
  LOBYTE(v7) = v19;
  v25 = *(v2 + 16) + 1;
  v20 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v16, v18, v7);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v16, v18, v7, 0x676E69646E696240, 0xE800000000000000, v21);

  sub_1BF3D88B8(v16, v18, v7);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    sub_1BF3E4F48(v2);

    if (!v23)
    {
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4C2AA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](31);
  MEMORY[0x1BFB58C90](0x20455441445055, 0xE700000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x2020200A5445530ALL, 0xE900000000000020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7 = sub_1BF3D852C(v6);
  v9 = v8;
  v11 = v10;
  v24 = *(v3 + 16) + 1;
  v12 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v7, v9, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v7, v9, v11, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v7, v9, v11);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v15 = sub_1BF3D8148(a1, a2);
  v17 = v16;
  LOBYTE(v7) = v18;
  v25 = *(v3 + 16) + 1;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v15, v17, v7);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v15, v17, v7, 0x676E69646E696240, 0xE800000000000000, v20);

  sub_1BF3D88B8(v15, v17, v7);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    sub_1BF3E4F48(v3);

    if (!v23)
    {
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t ChronoMetadataStore.MutablePushTokenStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C2EFC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](277);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FEA90);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x200A2C424F4C4220, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FEAB0);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

id sub_1BF4C3364(uint64_t a1)
{
  v2 = sub_1BF4E92F4();
  v4 = sub_1BF48063C(v2, v3, a1);
  v6 = v5;
  v8 = v7;
  v9 = ~v7;

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = sub_1BF4244EC(v4, v6, v8);
  v12 = v11;
  sub_1BF3DB1FC(v4, v6, v8);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = sub_1BF4E92F4();
  v15 = sub_1BF48063C(v13, v14, a1);
  v17 = v16;
  v19 = v18;
  v20 = ~v18;

  if (!v20 || (sub_1BF4244EC(v15, v17, v19), v22 = v21, sub_1BF3DB1FC(v15, v17, v19), !v22))
  {

LABEL_10:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v36 = sub_1BF4E7B54();
    __swift_project_value_buffer(v36, qword_1EDCA6898);
    v37 = sub_1BF4E7B34();
    v38 = sub_1BF4E8E64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BF389000, v37, v38, "Encountered malformed result for control identity in push subscription.", v39, 2u);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
    }

    return 0;
  }

  sub_1BF4E9034();

  v23 = sub_1BF4E9004();
  if (!v23)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v41 = sub_1BF4E7B54();
    __swift_project_value_buffer(v41, qword_1EDCA6898);

    v42 = sub_1BF4E7B34();
    v43 = sub_1BF4E8E64();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v51 = v45;
      *v44 = 136446210;
      v46 = sub_1BF38D65C(v10, v12, &v51);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_1BF389000, v42, v43, "Encountered malformed subscription extension, %{public}s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1BFB5A5D0](v45, -1, -1);
      MEMORY[0x1BFB5A5D0](v44, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v24 = v23;
  v25 = sub_1BF4E92F4();
  v27 = sub_1BF48063C(v25, v26, a1);
  v29 = v28;
  v31 = v30;
  v32 = ~v30;

  if (!v32)
  {
    v33 = 0;
    v34 = 0xF000000000000000;
    goto LABEL_21;
  }

  sub_1BF424370(v27, v29, v31, &v51);
  sub_1BF3DB1FC(v27, v29, v31);
  v34 = *(&v51 + 1);
  v33 = v51;
  if (*(&v51 + 1) >> 60 == 15)
  {
LABEL_21:

    v50 = 0;
    goto LABEL_22;
  }

  sub_1BF4E78B4();
  sub_1BF3901C0(0, &unk_1EDC96360, 0x1E69942D0);
  sub_1BF3D8864(v33, v34);
  v35 = sub_1BF4E7894();
  sub_1BF3DB210(v33, v34);

  v50 = v35;
LABEL_22:
  v47 = objc_allocWithZone(MEMORY[0x1E6994260]);
  v48 = sub_1BF4E88E4();

  v49 = [v47 initWithExtensionIdentity:v24 kind:v48 intentReference:v50];

  sub_1BF3DB210(v33, v34);
  return v49;
}

uint64_t sub_1BF4C39C8(uint64_t a1)
{
  v2 = sub_1BF4E92F4();
  v4 = sub_1BF48063C(v2, v3, a1);
  v6 = v5;
  v8 = v7;
  v9 = ~v7;

  if (v9)
  {
    sub_1BF4244EC(v4, v6, v8);
    v11 = v10;
    sub_1BF3DB1FC(v4, v6, v8);
    if (v11)
    {
      v12 = sub_1BF4E92F4();
      v14 = sub_1BF48063C(v12, v13, a1);
      v16 = v15;
      v18 = v17;
      v19 = ~v17;

      if (v19)
      {
        v20 = sub_1BF4244E0(v14, v16, v18);
        v22 = v21;
        sub_1BF3DB1FC(v14, v16, v18);
        if ((v22 & 1) == 0 && v20 == 1)
        {
          sub_1BF4E9034();
          return sub_1BF4E9004();
        }
      }
    }
  }

  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v24 = sub_1BF4E7B54();
  __swift_project_value_buffer(v24, qword_1EDCA6898);
  v25 = sub_1BF4E7B34();
  v26 = sub_1BF4E8E64();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1BF389000, v25, v26, "Encountered malformed result for widget identity in push subscription.", v27, 2u);
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
  }

  return 0;
}

void *sub_1BF4C3BC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C10, &unk_1BF4F6A98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for PushToken();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v22 = &v21 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (a1 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    v25 = *v15;
    sub_1BF4C219C(&v25, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1BF38C9B4(v7, &qword_1EBDD9C10, &unk_1BF4F6A98);
    }

    else
    {
      v23 = v2;
      v17 = v22;
      sub_1BF4C40E0(v7, v22, type metadata accessor for PushToken);
      sub_1BF4C40E0(v17, v24, type metadata accessor for PushToken);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1BF432BF4(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_1BF432BF4(v18 > 1, v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_1BF4C40E0(v24, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, type metadata accessor for PushToken);
      v2 = v23;
    }

    ++v15;
    --v14;
  }

  while (v14);
  return v16;
}

uint64_t sub_1BF4C40E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4C4148(uint64_t a1)
{
  v2 = type metadata accessor for Budget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF4C41D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1BF4E93A4();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1BF38D324(i, v10);
    sub_1BF3901C0(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BF4E9374();
    v8 = *(v11 + 16);
    sub_1BF4E93B4();
    sub_1BF4E93C4();
    sub_1BF4E9384();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t DuetWidgetViewEntry.identity.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;

  v6 = v4;
}

uint64_t sub_1BF4C432C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  sub_1BF4E89F4();
  v13 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v13, v6);
  sub_1BF4C6B48(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_1BF4E8884();
  v15 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3ABF74(v1 + v15, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1BF4E9824();
  sub_1BF4E8884();
  return (v14)(v10, v6);
}

char *DuetWidgetViewEntry.deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v6(&v0[OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_staleContentDate], v5);
  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate], &qword_1EBDD9B00, &qword_1BF4F1E50);
  return v0;
}

uint64_t DuetWidgetViewEntry.__deallocating_deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v6(&v0[OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_staleContentDate], v5);
  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate], &qword_1EBDD9B00, &qword_1BF4F1E50);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C4788()
{
  sub_1BF4E9804();
  sub_1BF4C432C();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C47C8()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4C432C();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C4830()
{
  sub_1BF4E9804();
  v1 = *v0;
  sub_1BF4C432C();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C487C@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v60 = a2;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v56 - v6;
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  v21 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  v22 = *(v9 + 16);
  v57 = v21;
  v62 = v20;
  v22(v20, &a1[v21], v8);
  v23 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3ABF74(&a1[v23], v7);
  v24 = *(v9 + 48);
  if (v24(v7, 1, v8) == 1)
  {
    v22(v17, v60, v8);
    if (v24(v7, 1, v8) != 1)
    {
      sub_1BF38C9B4(v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
    }
  }

  else
  {
    (*(v9 + 32))(v17, v7, v8);
  }

  sub_1BF4C6B48(&qword_1EDC9F0C8, MEMORY[0x1E6969530]);
  v25 = v62;
  v26 = sub_1BF4E88B4();
  v59 = v9;
  v56[0] = v22;
  v56[1] = v9 + 16;
  if (v26)
  {
    v27 = *(v9 + 32);
    v27(v14, v17, v8);
  }

  else
  {
    (*(v9 + 8))(v17, v8);
    v22(v14, v25, v8);
    v27 = *(v9 + 32);
  }

  v27(v17, v14, v8);
  v28 = *(a1 + 2);
  v29 = *(a1 + 3);
  v30 = v17;
  v32 = *(a1 + 5);
  v31 = *(a1 + 6);
  v33 = *(a1 + 4);
  v34 = [v33 extensionBundleIdentifier];
  if (!v34)
  {
    sub_1BF4E8914();
    v34 = sub_1BF4E88E4();
  }

  v35 = objc_allocWithZone(MEMORY[0x1E699A4D0]);
  v36 = sub_1BF4E88E4();
  v37 = sub_1BF4E88E4();
  v38 = sub_1BF4E7254();
  v60 = v30;
  v39 = sub_1BF4E7254();
  v40 = [v35 initWithViewID:v36 budgetID:v37 extensionBundleID:v34 from:v38 to:v39];

  v41 = [v33 container];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 isStack];
  }

  else
  {
    v43 = 0;
  }

  v44 = v59;
  [v40 setInStack_];
  v45 = v58;
  (v56[0])(v58, &a1[v57], v8);
  sub_1BF4E7234();
  v47 = v46;
  v48 = *(v44 + 8);
  v48(v45, v8);
  [v40 setTimeUntilContentExpiration_];
  v49 = [v33 container];
  v50 = v60;
  if (v49)
  {
    v51 = v49;
    if ([v49 location] == 2)
    {
      v52 = *MEMORY[0x1E699A5F8];
    }

    else
    {
      v52 = [v51 page];
    }

    [v40 setPageID_];
  }

  v53 = sub_1BF3901C0(0, &qword_1EDC96388, 0x1E699A4D0);
  v54 = v61;
  v61[3] = v53;
  *v54 = v40;
  v48(v50, v8);
  return (v48)(v62, v8);
}

void sub_1BF4C4E20(uint64_t a1)
{
  if (sub_1BF4C41D0(a1, &qword_1EDC96388, 0x1E699A4D0))
  {
    v1 = [objc_opt_self() sharedScheduler];
    sub_1BF3901C0(0, &qword_1EDC96388, 0x1E699A4D0);
    v2 = sub_1BF4E8B84();

    [v1 recordWidgetViews_];
  }
}

uint64_t static DuetWidgetViewRecorder.shared.getter()
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DuetWidgetViewRecorder.shared.setter(uint64_t a1)
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC99660 = a1;
}

uint64_t (*static DuetWidgetViewRecorder.shared.modify())()
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BF4C5070@<X0>(void *a1@<X8>)
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC99660;
}

uint64_t sub_1BF4C50F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDC99658;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC99660 = v1;
}

uint64_t DuetWidgetViewRecorder.deinit()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 invalidate];
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return v0;
}

uint64_t DuetWidgetViewRecorder.__deallocating_deinit()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 invalidate];
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C5258(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BF4E7FF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E8064();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E8004();
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v71 - v19;
  v90 = sub_1BF4E7334();
  v82 = *(v90 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v71 - v24;
  BSDispatchQueueAssertMain();
  [*(v2 + 88) invalidate];
  v25 = *(v2 + 88);
  *(v2 + 88) = 0;

  swift_beginAccess();
  v89 = v2;
  v26 = *(v2 + 72);
  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v75 = v9;
    v76 = a1;
    v77 = a2;
    v73 = v14;
    v78 = v13;
    v100 = MEMORY[0x1E69E7CC0];
    result = sub_1BF4E7324();
    v28 = v89[9];
    if (v28 >> 62)
    {
      if (v28 < 0)
      {
        v69 = v89[9];
      }

      result = sub_1BF4E9204();
      v29 = result;
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v90;
    v74 = v10;
    if (v29)
    {
      if (v29 < 1)
      {
        __break(1u);
        return result;
      }

      v71 = v6;
      v72 = v5;
      v31 = v28 & 0xC000000000000001;
      v88 = (v82 + 48);
      v84 = (v82 + 16);
      v83 = (v82 + 40);

      v32 = 0;
      v33 = MEMORY[0x1E69E7CC0];
      v86 = MEMORY[0x1E69E7CC0];
      v85 = v28 & 0xC000000000000001;
      do
      {
        if (v31)
        {
          MEMORY[0x1BFB59570](v32, v28);
        }

        else
        {
          v34 = *(v28 + 8 * v32 + 32);
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v36 = Strong;
          __swift_project_boxed_opaque_existential_1(v89 + 4, v89[7]);
          sub_1BF4C487C(v36, v91, &v92);
          if (v93)
          {
            sub_1BF38EB2C(&v92, &aBlock);
            sub_1BF38D324(&aBlock, &v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_1BF432C1C(0, *(v33 + 2) + 1, 1, v33);
            }

            v38 = *(v33 + 2);
            v37 = *(v33 + 3);
            if (v38 >= v37 >> 1)
            {
              v33 = sub_1BF432C1C((v37 > 1), v38 + 1, 1, v33);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
            *(v33 + 2) = v38 + 1;
            sub_1BF38EB2C(&v92, &v33[32 * v38 + 32]);
            v30 = v90;
          }

          else
          {
            sub_1BF38C9B4(&v92, &qword_1EBDD8AD0, &unk_1BF4F53F0);
          }

          v39 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
          swift_beginAccess();
          sub_1BF3ABF74(&v36[v39], v20);
          if ((*v88)(v20, 1, v30) == 1)
          {
            v40 = v33;
            v41 = v28;
            v42 = v29;
            sub_1BF38C9B4(v20, &qword_1EBDD9B00, &qword_1BF4F1E50);
            v43 = v87;
            (*v84)(v87, v91, v30);
            v44 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
            swift_beginAccess();
            (*v83)(&v36[v44], v43, v30);
            swift_endAccess();

            MEMORY[0x1BFB58DD0](v45);
            if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BF4E8BE4();
            }

            sub_1BF4E8C24();

            v86 = v100;
            v30 = v90;
            v29 = v42;
            v28 = v41;
            v33 = v40;
            v31 = v85;
          }

          else
          {

            sub_1BF38C9B4(v20, &qword_1EBDD9B00, &qword_1BF4F1E50);
          }
        }

        else
        {
        }

        ++v32;
      }

      while (v29 != v32);

      v5 = v72;
      v6 = v71;
      v46 = MEMORY[0x1E69E7CC0];
      v47 = v86;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
      v47 = MEMORY[0x1E69E7CC0];
      v46 = MEMORY[0x1E69E7CC0];
    }

    v48 = v89;
    v49 = v89[9];
    v89[9] = v47;

    swift_beginAccess();
    v50 = v48[10];
    v48[10] = v46;

    v51 = v48[9];
    v52 = v77;
    v53 = v76;
    if (v51 >> 62)
    {
      if (v51 < 0)
      {
        v70 = v48[9];
      }

      if (!sub_1BF4E9204())
      {
        goto LABEL_31;
      }
    }

    else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      if (qword_1EDC9D480 != -1)
      {
        swift_once();
      }

      v54 = sub_1BF4E7B54();
      __swift_project_value_buffer(v54, qword_1EDCA68C8);

      v55 = sub_1BF4E7B34();
      v56 = sub_1BF4E8E84();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&aBlock = v58;
        *v57 = 134349314;
        *(v57 + 4) = *(v33 + 2);

        *(v57 + 12) = 2082;
        *(v57 + 14) = sub_1BF38D65C(v53, v52, &aBlock);
        _os_log_impl(&dword_1BF389000, v55, v56, "View recorder flushing %{public}ld entries for reason: %{public}s", v57, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x1BFB5A5D0](v58, -1, -1);
        MEMORY[0x1BFB5A5D0](v57, -1, -1);
      }

      else
      {
      }

      v59 = v78;
      if (*(v33 + 2))
      {
        v60 = v89;
        sub_1BF4C5DC0();
        sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
        v61 = v80;
        v62 = v79;
        v63 = v73;
        (*(v80 + 104))(v79, *MEMORY[0x1E69E7F98], v73);
        v64 = sub_1BF4E8F74();
        (*(v61 + 8))(v62, v63);
        v65 = swift_allocObject();
        *(v65 + 16) = v60;
        *(v65 + 24) = v33;
        v98 = sub_1BF4C6B38;
        v99 = v65;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v96 = sub_1BF38E868;
        v97 = &block_descriptor_53_0;
        v66 = _Block_copy(&aBlock);

        sub_1BF4E8014();
        v94 = MEMORY[0x1E69E7CC0];
        sub_1BF4C6B48(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
        sub_1BF43E484();
        v67 = v81;
        sub_1BF4E91A4();
        MEMORY[0x1BFB591B0](0, v59, v67, v66);
        _Block_release(v66);

        (*(v6 + 8))(v67, v5);
        (*(v74 + 8))(v59, v75);
        (*(v82 + 8))(v91, v90);
      }

      else
      {
        (*(v82 + 8))(v91, v90);
      }
    }

    sub_1BF3C36CC();
    goto LABEL_31;
  }

  if (v26 < 0)
  {
    v68 = *(v2 + 72);
  }

  result = sub_1BF4E9204();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1BF4C5D78(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  type metadata accessor for _DuetWidgetViewProvider();
  sub_1BF4C4E20(a2);
}

void sub_1BF4C5DC0()
{
  v1 = v0;
  sub_1BF4C5FF4();
  if (*(v0 + 104))
  {
    [*(v0 + 96) invalidate];
    v2 = *(v0 + 96);
    *(v0 + 96) = 0;

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BF4E92E4();

    v3 = [*(v0 + 112) description];
    v4 = sub_1BF4E8914();
    v6 = v5;

    MEMORY[0x1BFB58C90](v4, v6);

    MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FECE0);
    v7 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v8 = sub_1BF4E88E4();

    v9 = [v7 initWithIdentifier_];

    sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v10 = sub_1BF4E8F34();
    v11 = swift_allocObject();
    swift_weakInit();
    v18 = sub_1BF3CB514;
    v19 = v11;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1BF3CAF50;
    v17 = &block_descriptor_15;
    v12 = _Block_copy(&v14);

    [v9 scheduleWithFireInterval:v10 leewayInterval:v12 queue:10.0 handler:1.0];
    _Block_release(v12);

    v13 = *(v1 + 96);
    *(v1 + 96) = v9;
  }
}

void sub_1BF4C5FF4()
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (!*(v0 + 104))
  {
    v1 = sub_1BF4E88E4();
    v2 = sub_1BF4E88E4();
    v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

    v4 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9270, &unk_1BF4F0880);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BF4F4940;
    *(v5 + 32) = v3;
    v6 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v7 = v3;
    v8 = sub_1BF4E88E4();
    sub_1BF3901C0(0, &qword_1EDC963A0, 0x1E69C7550);
    v9 = sub_1BF4E8B84();

    v10 = [v6 initWithExplanation:v8 target:v4 attributes:v9];

    v31[0] = 0;
    v11 = [v10 acquireWithError_];
    v12 = v31[0];
    if (v11)
    {
      v13 = *(v0 + 104);
      *(v0 + 104) = v10;
      v14 = v12;
      v15 = v10;

      if (qword_1EDC9D480 != -1)
      {
        swift_once();
      }

      v16 = sub_1BF4E7B54();
      __swift_project_value_buffer(v16, qword_1EDCA68C8);
      v17 = sub_1BF4E7B34();
      v18 = sub_1BF4E8E84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BF389000, v17, v18, "Acquired runtime assertion for DuetWidgetViewRecorder.flushIfNecessary", v19, 2u);
        MEMORY[0x1BFB5A5D0](v19, -1, -1);
      }
    }

    else
    {
      v20 = v31[0];
      v21 = sub_1BF4E6FF4();

      swift_willThrow();
      if (qword_1EDC9D480 != -1)
      {
        swift_once();
      }

      v22 = sub_1BF4E7B54();
      __swift_project_value_buffer(v22, qword_1EDCA68C8);
      v23 = v21;
      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E64();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1BF389000, v24, v25, "Unable to acquire runtime assertion for WidgetArchiver.unarchive - error: %{public}@", v26, 0xCu);
        sub_1BF38C9B4(v27, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v27, -1, -1);
        MEMORY[0x1BFB5A5D0](v26, -1, -1);
      }

      else
      {
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BF4C6404()
{
  if (qword_1EDC9D480 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF4E7B54();
  __swift_project_value_buffer(v0, qword_1EDCA68C8);
  v1 = sub_1BF4E7B34();
  v2 = sub_1BF4E8E84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF389000, v1, v2, "View recorder flush timer fired.", v3, 2u);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF4C5258(0x72656D6954, 0xE500000000000000);
  }

  return result;
}

uint64_t _s9ChronoKit19DuetWidgetViewEntryC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = sub_1BF4E7334();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1BF4E9734() & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = v11;
  v38 = v4;
  v39 = v7;
  v40 = v14;
  v23 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  v24 = *(v16 + 16);
  v24(v22, a1 + v23, v15);
  v25 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  v24(v19, a2 + v25, v15);
  v26 = sub_1BF4E72D4();
  v27 = *(v16 + 8);
  v27(v19, v15);
  v27(v22, v15);
  if ((v26 & 1) == 0 || (sub_1BF4E72D4() & 1) == 0)
  {
LABEL_9:
    v34 = 0;
    return v34 & 1;
  }

  v28 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  v29 = v40;
  sub_1BF3ABF74(a1 + v28, v40);
  v30 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  v31 = v39;
  v32 = *(v38 + 48);
  sub_1BF3ABF74(v29, v39);
  sub_1BF3ABF74(a2 + v30, v31 + v32);
  v33 = *(v16 + 48);
  if (v33(v31, 1, v15) != 1)
  {
    v36 = v37;
    sub_1BF3ABF74(v31, v37);
    if (v33(v31 + v32, 1, v15) != 1)
    {
      (*(v16 + 32))(v22, v31 + v32, v15);
      sub_1BF4C6B48(&qword_1EDC9F0C0, MEMORY[0x1E6969530]);
      v34 = sub_1BF4E88C4();
      v27(v22, v15);
      sub_1BF38C9B4(v40, &qword_1EBDD9B00, &qword_1BF4F1E50);
      v27(v36, v15);
      sub_1BF38C9B4(v31, &qword_1EBDD9B00, &qword_1BF4F1E50);
      return v34 & 1;
    }

    sub_1BF38C9B4(v40, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v27(v36, v15);
    goto LABEL_13;
  }

  sub_1BF38C9B4(v29, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v33(v31 + v32, 1, v15) != 1)
  {
LABEL_13:
    sub_1BF38C9B4(v31, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    v34 = 0;
    return v34 & 1;
  }

  sub_1BF38C9B4(v31, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_1BF4C6B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t KeepAliveTransaction.init(reason:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BF390264(a1, a2);

  return v2;
}

void sub_1BF4C6BFC()
{
  v1 = v0;
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1BF4E7174();
  v2 = sub_1BF4E88E4();

  v3 = [v0 fileExistsAtPath_];

  if (v3)
  {
    sub_1BF4E7174();
    v4 = sub_1BF4E88E4();

    v5 = [v0 isDeletableFileAtPath_];

    if (v5)
    {
      v6 = sub_1BF4E7094();
      v11[0] = 0;
      v7 = [v1 removeItemAtURL:v6 error:v11];

      if (v7)
      {
        v8 = v11[0];
      }

      else
      {
        v9 = v11[0];
        sub_1BF4E6FF4();

        swift_willThrow();
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id sub_1BF4C6D38(void *a1)
{
  v14[10] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B20, &unk_1BF4EC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4EBEF0;
  v4 = *MEMORY[0x1E696A3A0];
  *(inited + 32) = *MEMORY[0x1E696A3A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v5;
  *(inited + 40) = a1;
  v6 = v4;
  v7 = a1;
  sub_1BF3C9454(inited);
  swift_setDeallocating();
  sub_1BF4C72E0(inited + 32);
  type metadata accessor for FileAttributeKey(0);
  sub_1BF3C9DEC(&qword_1EDC9D710, type metadata accessor for FileAttributeKey);
  v8 = sub_1BF4E8744();

  sub_1BF4E7174();
  v9 = sub_1BF4E88E4();

  v14[0] = 0;
  v10 = [v1 setAttributes:v8 ofItemAtPath:v9 error:v14];

  if (v10)
  {
    result = v14[0];
  }

  else
  {
    v12 = v14[0];
    sub_1BF4E6FF4();

    swift_willThrow();
    result = swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1BF4C7158()
{
  v1 = v0;
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BF4E7094();
  v3 = sub_1BF4E7094();
  v7[0] = 0;
  LODWORD(v1) = [v1 moveItemAtURL:v2 toURL:v3 error:v7];

  if (v1)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1BF4E6FF4();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1BF4C723C(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([a1 closeAndReturnError_])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_1BF4E6FF4();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF4C72E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8738, &qword_1BF4F6D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ControlsCacheURLProvider.__allocating_init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0x632D6F6E6F726863;
  result[5] = 0xEF736C6F72746E6FLL;
  return result;
}

void *ControlsCacheURLProvider.init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = 0x632D6F6E6F726863;
  v2[5] = 0xEF736C6F72746E6FLL;
  return v2;
}

size_t sub_1BF4C73DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-v14];
  (*(v5 + 16))(v11, a1, v4, v13);
  swift_beginAccess();
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);

  sub_1BF4E70A4();

  v18 = *(a1 + *(type metadata accessor for ControlCacheKey() + 20));
  if (v18)
  {
    v19 = v18;
    sub_1BF39B13C();
    sub_1BF4E70A4();
  }

  v20 = *(v5 + 32);
  v20(v15, v11, v4);
  v28 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    sub_1BF39ADF0(a1, v8);
    v21 = sub_1BF4323F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1BF4323F4(v22 > 1, v23 + 1, 1, v21);
    }

    (*(v5 + 8))(v15, v4);
    v21[2] = v23 + 1;
    v20(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v8, v4);
    return v21;
  }

  else
  {
    v24 = [objc_opt_self() defaultManager];
    v25 = sub_1BF4E8E34();

    if (v25)
    {

      sub_1BF4C86FC(v25, v2, &v28);
    }

    (*(v5 + 8))(v15, v4);
  }

  return v28;
}

uint64_t sub_1BF4C76DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF4C7860(a1, a3);
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1BF43886C(*(a2 + 16), 0);
  v6 = sub_1BF438FEC(&v8, v5 + 4, v4, a2);

  sub_1BF39A9CC();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v8 = v5;
  sub_1BF4C7BFC(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  sub_1BF4E8894();

  sub_1BF4E70B4();

  sub_1BF4E70C4();
  sub_1BF4E70B4();
  return sub_1BF4E70C4();
}

uint64_t sub_1BF4C7860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  (*(v7 + 16))(v10, a1, v6, v12);
  swift_beginAccess();
  v16 = *(v3 + 16);
  v15 = *(v3 + 24);

  sub_1BF4E70A4();

  v17 = *(a1 + *(type metadata accessor for ControlCacheKey() + 20));
  if (v17)
  {
    v18 = v17;
    sub_1BF39B13C();
    sub_1BF4E70A4();

    v19 = *(v7 + 32);
    v19(v14, v10, v6);
    v20 = [v18 intentReference];
    v32 = a2;
    if (v20)
    {
      v21 = v20;
      v22 = [v20 stableHash];

      v33 = v22;
      v23 = sub_1BF4E96A4();
      v25 = v24;
    }

    else
    {
      v25 = 0xE400000000000000;
      v23 = 1701736302;
    }

    v28 = [v18 kind];
    v29 = sub_1BF4E8914();
    v31 = v30;

    v33 = v29;
    v34 = v31;
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    MEMORY[0x1BFB58C90](v23, v25);

    MEMORY[0x1BFB58C90](0x7374657373612D2DLL, 0xE800000000000000);
    sub_1BF4E70B4();

    return (v19)(v32, v14, v6);
  }

  else
  {
    v26 = *(v7 + 32);
    v26(v14, v10, v6);
    return (v26)(a2, v14, v6);
  }
}

uint64_t ControlsCacheURLProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ControlsCacheURLProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C7BFC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BF4C86E8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BF4C7C68(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF4C7C68(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF4E9694();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BF4E8C04();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BF4C7E30(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF4C7D60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF4C7D60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1BF4E9734(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4C7E30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1BF4C86C0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1BF4C840C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1BF4E9734();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1BF4E9734();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BF4322F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1BF4322F0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1BF4C840C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BF4C86C0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1BF4C8634(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1BF4E9734(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1BF4C840C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1BF4E9734() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1BF4E9734() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1BF4C8634(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BF4C86C0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1BF4C86FC(uint64_t a1, uint64_t a2, size_t *a3)
{
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_1BF4E7194();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1BF4E7004();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8E24();
  v46 = a2;
  swift_beginAccess();
  v18 = sub_1BF48238C();
  sub_1BF4E9104();
  if (v51)
  {
    v19 = (v41 + 56);
    v52 = (v41 + 32);
    v42 = (v41 + 8);
    v39 = (v41 + 16);
    v40 = v13;
    v43 = v18;
    v44 = v17;
    do
    {
      sub_1BF38EB2C(&v50, v49);
      sub_1BF38D324(v49, v48);
      v20 = swift_dynamicCast();
      v21 = *v19;
      if (v20)
      {
        v22 = v14;
        v21(v7, 0, 1, v8);
        v23 = *v52;
        (*v52)(v13, v7, v8);
        sub_1BF4E7174();
        v24 = v13;
        v26 = *(v46 + 32);
        v25 = *(v46 + 40);

        LOBYTE(v26) = sub_1BF4E8A74();

        if (v26)
        {
          (*v39)(v45, v24, v8);
          v27 = v47;
          v28 = *v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v28 = sub_1BF4323F4(0, v28[2] + 1, 1, v28);
            *v47 = v28;
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            v35 = sub_1BF4323F4(v30 > 1, v31 + 1, 1, v28);
            *v47 = v35;
          }

          v32 = v41;
          v33 = v40;
          (*(v41 + 8))(v40, v8);
          v34 = *v47;
          *(v34 + 16) = v31 + 1;
          v13 = v33;
          v23((v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31), v45, v8);
          v14 = v22;
          v17 = v44;
        }

        else
        {
          (*v42)(v24, v8);
          v14 = v22;
          v17 = v44;
          v13 = v24;
        }
      }

      else
      {
        v21(v7, 1, 1, v8);
        sub_1BF3FA9B4(v7);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      sub_1BF4E9104();
    }

    while (v51);
  }

  return (*(v38 + 8))(v17, v14);
}

uint64_t static WidgetCacheKey.allWidgetsAndMetrics(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7194();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = type metadata accessor for WidgetCacheKey();
  v6 = *(result + 24);
  *(a2 + *(result + 20)) = 0;
  *(a2 + v6) = 0;
  return result;
}

id static WidgetCacheKey.allMetrics(of:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1BF4E7194();
  (*(*(v5 - 8) + 16))(a3, a2, v5);
  v6 = type metadata accessor for WidgetCacheKey();
  v7 = *(v6 + 24);
  *(a3 + *(v6 + 20)) = a1;
  *(a3 + v7) = 0;

  return a1;
}

uint64_t WidgetCacheKey.init(baseURL:entryKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = v6;
  sub_1BF393884(a2);
  v9 = type metadata accessor for WidgetCacheKey();
  v10 = *(v9 + 20);
  v11 = *(v9 + 24);
  v12 = sub_1BF4E7194();
  result = (*(*(v12 - 8) + 32))(a3, a1, v12);
  *(a3 + v10) = v7;
  *(a3 + v11) = v8;
  return result;
}

uint64_t WidgetCacheKey.init(baseURL:widget:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WidgetCacheKey();
  v9 = *(v8 + 20);
  v10 = *(v8 + 24);
  v11 = sub_1BF4E7194();
  result = (*(*(v11 - 8) + 32))(a4, a1, v11);
  *(a4 + v9) = a2;
  *(a4 + v10) = a3;
  return result;
}

void *WidgetCacheKey.widget.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetCacheKey() + 20));
  v2 = v1;
  return v1;
}

void *WidgetCacheKey.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetCacheKey() + 24));
  v2 = v1;
  return v1;
}

uint64_t WidgetCacheKey.description.getter()
{
  v1 = type metadata accessor for WidgetCacheKey();
  v2 = *(v0 + *(v1 + 20));
  if (!v2)
  {
    return sub_1BF4E7074();
  }

  if (*(v0 + *(v1 + 24)))
  {
    sub_1BF4E92E4();

    sub_1BF4E7194();
    sub_1BF4C9618(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
    v3 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v3);

    MEMORY[0x1BFB58C90](0x3A74656764697720, 0xE900000000000020);
    v4 = [v2 extensionIdentity];
    v5 = [v4 description];
    v6 = sub_1BF4E8914();
    v8 = v7;

    MEMORY[0x1BFB58C90](v6, v8);

    MEMORY[0x1BFB58C90](0x697274656D202B20, 0xEA00000000007363);
  }

  else
  {
    sub_1BF4E92E4();

    sub_1BF4E7194();
    sub_1BF4C9618(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
    v10 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v10);

    MEMORY[0x1BFB58C90](0x3A74656764697720, 0xE900000000000020);
    v11 = [v2 extensionIdentity];
    v12 = [v11 description];
    v13 = sub_1BF4E8914();
    v15 = v14;

    MEMORY[0x1BFB58C90](v13, v15);
  }

  return 0x3A4C525565736162;
}

void WidgetCacheKey.hash(into:)()
{
  v1 = v0;
  sub_1BF4E7194();
  sub_1BF4C9618(&qword_1EDC9D610, MEMORY[0x1E6968FB0]);
  sub_1BF4E8884();
  v2 = type metadata accessor for WidgetCacheKey();
  v3 = *(v0 + *(v2 + 20));
  sub_1BF4E9824();
  if (v3)
  {
    v4 = v3;
    sub_1BF4E90B4();
  }

  v5 = *(v1 + *(v2 + 24));
  if (v5)
  {
    sub_1BF4E9824();
    v6 = v5;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t WidgetCacheKey.hashValue.getter()
{
  sub_1BF4E9804();
  WidgetCacheKey.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C9438()
{
  sub_1BF4E9804();
  WidgetCacheKey.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C947C()
{
  sub_1BF4E9804();
  WidgetCacheKey.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t _s9ChronoKit14WidgetCacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetCacheKey();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1BF3901C0(0, &qword_1EDC9F120, 0x1E6994370);
    v8 = v7;
    v9 = v6;
    v10 = sub_1BF4E90A4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {
      sub_1BF3901C0(0, &unk_1EDC9F150, 0x1E69943F0);
      v14 = v13;
      v15 = v12;
      v16 = sub_1BF4E90A4();

      if (v16)
      {
        return 1;
      }
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BF4C9618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF4C9660(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1BF4C96A0(a1);
  return v5;
}

uint64_t sub_1BF4C96A0(uint64_t a1)
{
  v3 = qword_1EDC9B168;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  sub_1BF4E8CA4();
  *(v1 + v3) = sub_1BF4E8724();
  v7 = qword_1EDC9B0E0;
  v8 = sub_1BF4E7B54();
  (*(*(v8 - 8) + 32))(v1 + v7, a1, v8);
  return v1;
}

uint64_t sub_1BF4C9794()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  sub_1BF4E8CA4();
  sub_1BF4E8834();
  sub_1BF4E8824();
  return swift_endAccess();
}

uint64_t sub_1BF4C9864(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*(*(*v1 + 80) - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v10[-v5], v4);
  v11 = 0;
  swift_beginAccess();
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  sub_1BF4E8CA4();
  sub_1BF4E8834();
  sub_1BF4E8864();
  return swift_endAccess();
}

uint64_t ReloadHistory.deinit()
{
  v1 = qword_1EDC9B0E0;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EDC9B168);

  return v0;
}

uint64_t ReloadHistory.__deallocating_deinit()
{
  ReloadHistory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C9AB4()
{
  result = sub_1BF4E7B54();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF4C9C58()
{
  result = sub_1BF4E7334();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ReloadTaskPairResolver.init(taskPair:allowDebounce:logger:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + qword_1EDC994A8) = a1;
  *(v3 + qword_1EDC994A0) = a2;
  v5 = qword_1EDC99498;
  v6 = sub_1BF4E7B54();
  (*(*(v6 - 8) + 32))(v3 + v5, a3, v6);
  return v3;
}

uint64_t sub_1BF4C9D84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v135 = a2;
  v9 = *v4;
  v134 = sub_1BF4E7B54();
  v132 = *(v134 - 8);
  v10 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v114[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = v9[10];
  v12 = *(v138 - 1);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v114[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v136 = &v114[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v114[-v22];
  v24 = type metadata accessor for ReloadConfiguration(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v131 = &v114[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114[-v28];
  v140 = *(a3 + *(v30 + 32));
  v139[0] = 0xA000000000000030;
  sub_1BF39C510(v140);
  v31 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v140, v139);
  sub_1BF39C9A4(v140);
  v137 = a4;
  if (v31)
  {
    v32 = v12[2];
    v32(v16, a1, v138);
    v130 = v5;
    v33 = sub_1BF4E7B34();
    v34 = sub_1BF4E8E84();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v140 = v135;
      *v35 = 134349314;
      v36 = v136;
      *(v35 + 4) = v137;
      *(v35 + 12) = 2082;
      v37 = v138;
      v32(v36, v16, v138);
      v38 = v12[1];
      v38(v16, v37);
      v39 = v9[13];
      v40 = sub_1BF4E96A4();
      v42 = v41;
      v38(v36, v37);
      v43 = sub_1BF38D65C(v40, v42, &v140);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1BF389000, v33, v34, "Task [%{public}llu] %{public}s Rejecting attempt to queue an .initial reload", v35, 0x16u);
      v44 = v135;
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      MEMORY[0x1BFB5A5D0](v44, -1, -1);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
    }

    else
    {
      (v12[1])(v16, v138);
    }

    v83 = *&v130[qword_1EDC994A8];
  }

  else
  {
    v128 = a1;
    v45 = v9[11];
    v46 = v9[12];
    v47 = v9[13];
    v48 = v9[14];
    v49 = v9[15];
    v50 = v9[16];
    v51 = v9[17];
    v140 = v138;
    v141 = v45;
    v124 = v45;
    v123 = v46;
    v142 = v46;
    v143 = v47;
    v127 = v47;
    v122 = v48;
    v144 = v48;
    v145 = v49;
    v121 = v49;
    v120 = v50;
    v146 = v50;
    v147 = v51;
    v119 = v51;
    type metadata accessor for ReloadTaskPair();
    v126 = ReloadTaskPair.__allocating_init()();
    v125 = *&v5[qword_1EDC994A8];
    v52 = sub_1BF3AB3E8();
    if (v52)
    {
      v53 = *(*v52 + 168);

      v54 = v29;
      sub_1BF3B4CAC(a3, v29);
      v55 = v12[2];
      v118 = (v12 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v56 = v128;
      (v55)(v23, v128, v138);

      v57 = sub_1BF4E7B34();
      v58 = sub_1BF4E8E84();

      LODWORD(v129) = v58;
      v59 = os_log_type_enabled(v57, v58);
      v60 = v5;
      if (v59)
      {
        v61 = swift_slowAlloc();
        v130 = v55;
        v62 = v61;
        v117 = swift_slowAlloc();
        v140 = v117;
        *v62 = 134349826;
        v63 = v136;
        *(v62 + 4) = v137;
        *(v62 + 12) = 2082;
        v64 = v138;
        (v130)(v63, v23, v138);
        v65 = v60;
        v66 = v12[1];
        v66(v23, v64);
        v116 = v57;
        v67 = sub_1BF4E96A4();
        v69 = v68;
        v66(v63, v64);
        v60 = v65;
        v70 = sub_1BF38D65C(v67, v69, &v140);

        *(v62 + 14) = v70;
        *(v62 + 22) = 2082;
        v71 = sub_1BF42E0F4();
        v73 = sub_1BF38D65C(v71, v72, &v140);

        *(v62 + 24) = v73;
        *(v62 + 32) = 2082;
        swift_beginAccess();
        v74 = ReloadConfiguration.description.getter();
        v76 = sub_1BF38D65C(v74, v75, &v140);
        v77 = v127;

        *(v62 + 34) = v76;
        v78 = v137;
        v79 = v63;
        v56 = v128;
        v80 = v116;
        _os_log_impl(&dword_1BF389000, v116, v129, "Task [%{public}llu] %{public}s Replacing queued task %{public}s with new configuration %{public}s", v62, 0x2Au);
        v81 = v117;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v81, -1, -1);
        v82 = v62;
        v55 = v130;
        MEMORY[0x1BFB5A5D0](v82, -1, -1);
      }

      else
      {
        (v12[1])(v23, v138);

        v79 = v136;
        v78 = v137;
        v77 = v127;
      }
    }

    else
    {
      v117 = v29;
      sub_1BF3B31BC(a3, v29);
      v55 = v12[2];
      v84 = v129;
      v56 = v128;
      (v55)(v129, v128, v138);
      v85 = sub_1BF4E7B34();
      v86 = sub_1BF4E8E84();
      v60 = v5;
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v115 = v86;
        v88 = v87;
        v116 = swift_slowAlloc();
        v140 = v116;
        *v88 = 134349570;
        *(v88 + 4) = v137;
        v130 = v5;
        *(v88 + 12) = 2082;
        v118 = (v12 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v89 = v136;
        v90 = v55;
        v91 = v138;
        (v90)(v136, v84, v138);
        v92 = v12[1];
        v92(v84, v91);
        v129 = v85;
        v93 = v127;
        v94 = sub_1BF4E96A4();
        v96 = v95;
        v97 = v91;
        v55 = v90;
        v92(v89, v97);
        v98 = sub_1BF38D65C(v94, v96, &v140);

        *(v88 + 14) = v98;
        *(v88 + 22) = 2082;
        v60 = v130;
        v99 = v117;
        swift_beginAccess();
        v100 = ReloadConfiguration.description.getter();
        v102 = sub_1BF38D65C(v100, v101, &v140);
        v77 = v93;

        *(v88 + 24) = v102;
        v103 = v129;
        _os_log_impl(&dword_1BF389000, v129, v115, "Task [%{public}llu] %{public}s Added queued task with configuration %{public}s", v88, 0x20u);
        v104 = v116;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v104, -1, -1);
        v105 = v88;
        v78 = v137;
        v79 = v89;
        MEMORY[0x1BFB5A5D0](v105, -1, -1);

        v54 = v99;
      }

      else
      {
        (v12[1])(v84, v138);

        v79 = v136;
        v78 = v137;
        v54 = v117;
        v77 = v127;
      }
    }

    v106 = v138;
    v140 = v138;
    v141 = v124;
    v142 = v123;
    v143 = v77;
    v144 = v122;
    v145 = v121;
    v146 = v120;
    v147 = v119;
    type metadata accessor for ReloadTask();
    (v55)(v79, v56, v106);
    swift_beginAccess();
    v107 = v131;
    sub_1BF3B31BC(v54, v131);
    v108 = &v60[qword_1EDC99498];
    v109 = v133;
    (*(v132 + 16))(v133, v108, v134);
    v110 = v135;

    ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v78, v79, v110, v107, v109);

    v83 = v126;
    sub_1BF410244(v111);
    sub_1BF39B43C();

    sub_1BF3A8AF8(v112);

    sub_1BF3A93B4(v54);
  }

  return v83;
}

uint64_t sub_1BF4CA89C()
{
  v1 = *v0;
  v2 = type metadata accessor for ReloadConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_1EDC994A8);
  if (!sub_1BF3AB3E8())
  {
    goto LABEL_4;
  }

  result = sub_1BF3AB3E8();
  if (result)
  {
    sub_1BF3B31BC(result + *(*result + 168), v5);
    v8 = sub_1BF3C4704(v5);
    sub_1BF3A93B4(v5);
    if (v8)
    {
LABEL_4:
      v9 = 1;
      return v9 & 1;
    }

    result = sub_1BF3AB3E8();
    if (result)
    {
      v10 = *(result + *(*result + 152));
      v11 = *(v1 + 88);
      v12 = *(v1 + 128);

      v13 = sub_1BF4E8D54();

      v9 = v13 ^ 1;
      return v9 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4CAA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v50 = *v3;
  v5 = type metadata accessor for ReloadConfiguration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v50 + 80);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v59 = 0;
  v60 = 0xE000000000000000;
  v17 = *(v3 + qword_1EDC994A8);
  if (sub_1BF39B43C())
  {
    v51 = 0;
    *&v52 = 0xE000000000000000;

    sub_1BF4E92E4();

    v51 = 0x3A746E6572727543;
    *&v52 = 0xEF5B206B73617420;
    v18 = sub_1BF42E0F4();
    MEMORY[0x1BFB58C90](v18);

    MEMORY[0x1BFB58C90](93, 0xE100000000000000);
    MEMORY[0x1BFB58C90](v51, v52);
  }

  v49 = v17;
  v19 = sub_1BF3AB3E8();
  if (v19)
  {
    v51 = 0;
    *&v52 = 0xE000000000000000;
    v20 = v19;

    sub_1BF4E92E4();
    v57 = v51;
    v58 = v52;
    MEMORY[0x1BFB58C90](0x646575657551202CLL, 0xEF206B736174203ALL);
    v21 = *(v50 + 136);
    v51 = v9;
    v52 = *(v50 + 88);
    v53 = *(v50 + 104);
    v54 = *(v50 + 120);
    v55 = v21;
    v56 = v20;
    type metadata accessor for ReloadTask();
    swift_getWitnessTable();
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](v57, v58);
  }

  v22 = v10[2];
  v22(v16, a1, v9);
  sub_1BF3B31BC(v48, v8);
  v23 = v60;
  v48 = v59;

  v24 = sub_1BF4E7B34();
  v25 = sub_1BF4E8E84();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = v24;
    v27 = v26;
    v45 = swift_slowAlloc();
    v51 = v45;
    *v27 = 134349826;
    *(v27 + 4) = v47;
    *(v27 + 12) = 2082;
    LODWORD(v47) = v25;
    v28 = v46;
    v22(v46, v16, v9);
    v29 = v10[1];
    v29(v16, v9);
    v30 = *(v50 + 104);
    v31 = sub_1BF4E96A4();
    v33 = v32;
    v29(v28, v9);
    v34 = sub_1BF38D65C(v31, v33, &v51);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2082;
    v35 = ReloadConfiguration.description.getter();
    v37 = v36;
    sub_1BF3A93B4(v8);
    v38 = sub_1BF38D65C(v35, v37, &v51);

    *(v27 + 24) = v38;
    *(v27 + 32) = 2082;
    v39 = sub_1BF38D65C(v48, v23, &v51);

    *(v27 + 34) = v39;
    v40 = v44;
    _os_log_impl(&dword_1BF389000, v44, v47, "Task [%{public}llu] %{public}s Ignoring low-priority task with configuration: %{public}s; %{public}s", v27, 0x2Au);
    v41 = v45;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v41, -1, -1);
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
  }

  else
  {
    (v10[1])(v16, v9);

    sub_1BF3A93B4(v8);
  }

  return v49;
}

uint64_t sub_1BF4CAF4C()
{
  result = sub_1BF4E7B54();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t EnvironmentProvider.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v1 + 24) = v5;
  sub_1BF4E7F54();
  return v1;
}

uint64_t EnvironmentProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v4 = sub_1BF4E7F64();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1BF4CB144()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  return sub_1BF4E7C84();
}

void sub_1BF4CB1B8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v5 = sub_1BF4E7F64();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF4CB254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[7] = *(v3 + 24);
  v8[2] = a3;
  v8[4] = a1;
  v8[5] = a2;
  v5 = type metadata accessor for UnfairLock();

  sub_1BF38D774(sub_1BF4CB73C, v8, v5, a3, &off_1F3DEE010);

  v6 = *(v3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90);
  sub_1BF4E7C74();
}

uint64_t sub_1BF4CB350(void (*a1)(_BYTE *))
{
  v3 = sub_1BF4E7F64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = *(v1 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  v12 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v4 + 16))(v10, v1 + v12, v3);
  a1(v10);
  (*(v4 + 8))(v10, v3);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v12, v7, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v11 + 16));
  v13 = *(v1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90);
  sub_1BF4E7C74();
}

uint64_t EnvironmentProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  *(v3 + 24) = v7;
  sub_1BF4E7F54();
  return v3;
}

uint64_t sub_1BF4CB5E4(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = sub_1BF4E7F64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v5 + 16))(v8, a1 + v9, v4);
  a2(v8);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BF4CB73C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  return sub_1BF4CB5E4(*(v0 + 24), *(v0 + 32));
}

uint64_t EnvironmentProvider.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v4 = sub_1BF4E7F64();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1BF4CB8F4()
{
  v48 = type metadata accessor for RemoteActivityArchiveBudget();
  v1 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - v4;
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](28);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_19;
  }

  v9 = sub_1BF3E4F48(v5);
  if (!v0)
  {
    v50 = 0;
    v11 = v9;

    v12 = v11;
    v46 = v11[2];
    if (!v46)
    {
      v10 = MEMORY[0x1E69E7CC8];

      return v10;
    }

    v13 = 0;
    v10 = MEMORY[0x1E69E7CC8];
    v45 = v11;
    while (v13 < v12[2])
    {
      v49 = v10;
      v14 = v12[v13 + 4];

      v15 = sub_1BF4E92F4();
      v17 = sub_1BF48063C(v15, v16, v14);
      v19 = v18;
      v21 = v20;
      v22 = ~v20;

      if (!v22)
      {
        goto LABEL_19;
      }

      v23 = sub_1BF4244EC(v17, v19, v21);
      v25 = v24;
      sub_1BF3DB1FC(v17, v19, v21);
      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = sub_1BF4E92F4();
      v28 = sub_1BF48063C(v26, v27, v14);
      v30 = v29;
      v32 = v31;
      v33 = ~v31;

      if (!v33)
      {
        goto LABEL_18;
      }

      sub_1BF424370(v28, v30, v32, &v51);
      sub_1BF3DB1FC(v28, v30, v32);
      v10 = *(&v51 + 1);
      if (*(&v51 + 1) >> 60 == 15)
      {
        goto LABEL_18;
      }

      v34 = v51;
      v35 = sub_1BF4E6DB4();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      sub_1BF4E6DA4();
      sub_1BF4CC680(&qword_1EBDD8998);
      v38 = v52;
      v39 = v50;
      sub_1BF4E6D94();
      v50 = v39;
      if (v39)
      {

        sub_1BF3DB210(v34, v10);

        return v10;
      }

      ++v13;
      v40 = v38;
      v41 = v47;
      sub_1BF3DF4F4(v40, v47);
      v42 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v51 = v42;
      sub_1BF3D72F4(v41, v23, v25, isUniquelyReferenced_nonNull_native);

      sub_1BF3DB210(v34, v10);

      sub_1BF3DF558(v52);
      v10 = v51;
      v12 = v45;
      if (v46 == v13)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_18:

    while (1)
    {
LABEL_19:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v10 = v0;

  return v10;
}

uint64_t ChronoMetadataStore.RemoteActivityArchiveBudgetStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4CBE80(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    v5 = Strong;
    os_unfair_lock_lock(*(v4 + 16));
    v6 = *(v5 + 64);
    os_unfair_lock_unlock(*(v4 + 16));

    if (v6)
    {
      v7 = sub_1BF4E6DE4();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1BF4E6DD4();
      v10 = type metadata accessor for RemoteActivityArchiveBudget();
      sub_1BF4CC680(&qword_1EBDD89A0);
      v11 = sub_1BF4E6DC4();
      if (v1)
      {
      }

      v13 = v11;
      v36 = v12;
      v14 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](83);
      MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FAD70);
      v15 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v15);

      MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
      v16 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v16);

      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      v17 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v17);

      MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FAD90);
      v18 = (a1 + *(v10 + 24));
      v20 = *v18;
      v19 = v18[1];

      v21 = sub_1BF3D8148(v20, v19);
      v23 = v22;
      v25 = v24;
      v37 = *(v14 + 16) + 1;
      v26 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v26);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v21, v23, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v21, v23, v25, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

      sub_1BF3D88B8(v21, v23, v25);
      v28 = v14;
      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      sub_1BF3D8864(v13, v36);
      sub_1BF3D8864(v13, v36);
      v29 = sub_1BF3D8134(v13, v36);
      v31 = v30;
      LOBYTE(v23) = v32;
      v38 = *(v28 + 16) + 1;
      v33 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v33);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v29, v31, v23);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v29, v31, v23, 0x676E69646E696240, 0xE800000000000000, v34);

      sub_1BF3D88B8(v29, v31, v23);
      sub_1BF3B03C0(v13, v36);
      MEMORY[0x1BFB58C90](0x3B29202020200ALL, 0xE700000000000000);
      if (swift_weakLoadStrong())
      {
        sub_1BF3E4F48(v28);

        sub_1BF3B03C0(v13, v36);
      }
    }

    else
    {
      __break(1u);
    }
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4CC390(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v12 = sub_1BF3D8148(a1, a2);
  v14 = v13;
  v16 = v15;
  v20 = *(v9 + 16) + 1;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v12, v14, v16);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v9);

  if (!v2)
  {
  }

  return result;
}

uint64_t sub_1BF4CC680(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoteActivityArchiveBudget();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF4CC7E4()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](69);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF4CC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v16 - v9;
  sub_1BF38E49C(a1, v17);
  sub_1BF38E49C(a2, v16);
  sub_1BF3E90C8(a3, v10);
  v11 = type metadata accessor for RelevanceCacheManager();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v17, v16, v10);
  if (!v3)
  {
    v15 = result;
    sub_1BF4CCAAC();
    return v15;
  }

  return result;
}

unint64_t sub_1BF4CCAAC()
{
  result = qword_1EDC99AE0;
  if (!qword_1EDC99AE0)
  {
    type metadata accessor for RelevanceCacheManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC99AE0);
  }

  return result;
}

uint64_t MockRelevanceCacheManager.__allocating_init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:beforeFirstUnlock:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v29 - v11;
  v13 = sub_1BF4E6D54();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1BF4E6D64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v5;
  v20 = swift_allocObject();
  v21 = v20;
  if (a4)
  {
    sub_1BF4E6D04();
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF4CE634(&qword_1EDC9F110, 255, MEMORY[0x1E6967E98]);
    sub_1BF4E6FD4();
    sub_1BF4E6CD4();
    (*(v16 + 8))(v19, v15);
    swift_willThrow();
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    *(v20 + 24) = 0;
    sub_1BF38E49C(a1, v31);
    v22 = v32;
    sub_1BF38E49C(v32, v30);
    sub_1BF3E90C8(a3, v12);
    v23 = type metadata accessor for RelevanceCacheManager();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = v29[0];
    v27 = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v31, v30, v12);
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (!v26)
    {
      *(v21 + 16) = v27;
      return v21;
    }
  }

  swift_deallocPartialClassInstance();
  return v21;
}

uint64_t MockRelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:beforeFirstUnlock:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v31 = a2;
  v8 = sub_1BF4E6D54();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1BF4E6D64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v28 - v17;
  if (a4)
  {
    sub_1BF4E6D04();
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF4CE634(&qword_1EDC9F110, 255, MEMORY[0x1E6967E98]);
    sub_1BF4E6FD4();
    sub_1BF4E6CD4();
    (*(v11 + 8))(v14, v10);
    swift_willThrow();
    sub_1BF3FA9B4(a3);
    v19 = v31;
  }

  else
  {
    *(v4 + 24) = 0;
    sub_1BF38E49C(a1, v30);
    v20 = v31;
    sub_1BF38E49C(v31, v29);
    sub_1BF3E90C8(a3, v18);
    v21 = type metadata accessor for RelevanceCacheManager();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = v28[1];
    v25 = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v30, v29, v18);
    if (!v24)
    {
      v27 = v25;
      sub_1BF3FA9B4(a3);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *(v4 + 16) = v27;
      return v4;
    }

    sub_1BF3FA9B4(a3);
    v19 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for MockRelevanceCacheManager();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1BF4CD2A8(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v2 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6994118], v2);
    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v6;
    v8[3] = v7;
    return sub_1BF4CD3DC(sub_1BF4CE538, v8);
  }
}

uint64_t sub_1BF4CD3DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BF4CE858;
    *(v8 + 24) = v7;

    v12 = v4;
    sub_1BF4CE89C(&v12, v13);

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v8;
      }

      __break(1u);
    }

    v8 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return v8;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
  v12 = v4;
  type metadata accessor for RelevanceCacheManager();
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](46, 0xE100000000000000);
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4CD5DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BF4CE858;
    *(v8 + 24) = v7;

    v12 = v4;
    sub_1BF4CE89C(&v12, v13);

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v8;
      }

      __break(1u);
    }

    v8 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return v8;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
  v12 = v4;
  type metadata accessor for RelevanceCacheManager();
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](46, 0xE100000000000000);
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4CD7DC()
{
  if (*(v0 + 24))
  {
    v2 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6994118], v2);
    return swift_willThrow();
  }

  v5 = *(v0 + 16);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BF4CE310;
  *(v6 + 24) = 0;
  v7[0] = v5;
  sub_1BF4CE550(v7);
  v5 = v1;

  result = swift_isEscapingClosureAtFileLocation();
  if (v1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (result)
  {
    __break(1u);
LABEL_10:
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
    v7[3] = v5;
    type metadata accessor for RelevanceCacheManager();
    sub_1BF4E9404();
    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4CD9FC(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v3 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6994118], v3);
    return swift_willThrow();
  }

  v6 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v11[2] = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BF4CE57C;
  *(v8 + 24) = v11;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BF4CE598;
  *(v9 + 24) = v8;

  v12[0] = v6;
  sub_1BF4CE8E4(v12);
  v6 = v2;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
    v12[3] = v6;
    type metadata accessor for RelevanceCacheManager();
    sub_1BF4E9404();
    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF4CDC90(uint64_t a1, void *a2)
{
  v2 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    v5 = *(a1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache);

    v6 = sub_1BF4E7644();

    v7 = a2;
    sub_1BF3FF650(v6, v7);

    if (*(a1 + v2))
    {
      MEMORY[0x1EEE9AC00](v8);

      sub_1BF4E7634();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BF4CDD90(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v2 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6994118], v2);
    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v6;
    return sub_1BF4CD5DC(sub_1BF4CE5C0, v7);
  }
}

uint64_t sub_1BF4CDEC0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (!*(result + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  v8 = *(result + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache);

  v9 = sub_1BF4E7644();

  v10 = sub_1BF3FFD20(v9, a2);

  if (!*(v7 + v5))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);

  sub_1BF4E7634();
  if (v3)
  {
  }

  else
  {

    v11 = sub_1BF3FEB38(v10);

    *a3 = v11;
  }

  return result;
}

uint64_t MockRelevanceCacheManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MockRelevanceCacheManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4CE074(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    v2 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6994118], v2);
    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v6;
    v8[3] = v7;
    return sub_1BF4CD3DC(sub_1BF4CE8FC, v8);
  }
}

uint64_t sub_1BF4CE1DC(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    v2 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6994118], v2);
    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v6;
    return sub_1BF4CD5DC(sub_1BF4CE914, v7);
  }
}

uint64_t sub_1BF4CE358(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  sub_1BF38E49C(a1, v24);
  sub_1BF38E49C(a2, v23);
  sub_1BF3E90C8(a3, v13);
  type metadata accessor for MockRelevanceCacheManager();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  sub_1BF38E49C(v24, v22);
  sub_1BF38E49C(v23, v21);
  sub_1BF3E90C8(v13, v10);
  v15 = type metadata accessor for RelevanceCacheManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v22, v21, v10);
  if (v3)
  {
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1BF3FA9B4(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v18;
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1BF3FA9B4(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    *(v14 + 16) = v19;
  }

  return v14;
}

uint64_t sub_1BF4CE550(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1BF4CE598()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF4CE5DC(uint64_t a1, uint64_t a2)
{
  result = sub_1BF4CE634(&qword_1EBDD9C40, a2, type metadata accessor for MockRelevanceCacheManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF4CE634(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1BF4CE7F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[2] = a1;
  v7 = *(v2 + 16);
  sub_1BF3FCA18(sub_1BF3FBF20, v6);
  if (!v3)
  {
    *a2 = v5;
  }
}

void *sub_1BF4CE858@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void *sub_1BF4CE89C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t static VariantIdentifier<>.mock(extensionIdentity:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ActivityKey();
  v5 = *(v4 + 20);
  sub_1BF409B0C();
  sub_1BF4E7444();
  *a2 = a1;
  v6 = (a2 + *(v4 + 24));
  *v6 = 0x7974697669746361;
  v6[1] = 0xEB00000000314449;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0) + 68);
  v8 = a1;
  sub_1BF4E8654();
  v9 = type metadata accessor for ActivityVariantKey();
  v10 = &v7[*(v9 + 20)];
  sub_1BF4E8344();
  if (qword_1EDC9F028 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v12 = __swift_project_value_buffer(v11, qword_1EDC9F030);
  v13 = *(*(v11 - 8) + 16);
  v14 = &v7[*(v9 + 24)];

  return v13(v14, v12, v11);
}

uint64_t static LocaleChangeCoordinator.localeDidChangePublisher.getter()
{
  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  sub_1BF38C8B4(&qword_1EDC9D3B8, &qword_1EBDD9808, &qword_1BF4F7200);
  return sub_1BF4E7C84();
}

void sub_1BF4CEB48()
{
  type metadata accessor for _PerAppLanguageOverrideObserver();
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C60, &qword_1BF4F7230);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  v4 = objc_opt_self();
  v6[4] = sub_1BF4D1174;
  v6[5] = v0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BF4CED78;
  v6[3] = &block_descriptor_31;
  v5 = _Block_copy(v6);

  [v4 subscribeToAppLanguageChanges_];
  _Block_release(v5);
  off_1EDC96FB8 = v0;
}

uint64_t sub_1BF4CEC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(a3 + 16);

  sub_1BF4E7694();
  sub_1BF4E7C14();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF4CED78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1BF4E8914();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1BF4CEDE4()
{
  [objc_opt_self() unsubscribeFromAppLanguageChanges];
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4CEE34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1BF4E7C34();
  qword_1EDC99410 = result;
  return result;
}

uint64_t LocaleChangeCoordinator.__allocating_init(with:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LocaleChangeCoordinator.init(with:)(a1);
  return v2;
}

uint64_t LocaleChangeCoordinator.init(with:)(uint64_t *a1)
{
  v3 = sub_1BF4E9044();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C48, &unk_1BF4F7208);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95E8, &qword_1BF4F1CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = v48 - v11;
  v65 = sub_1BF4E8F14();
  v55 = *(v65 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v54 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C50, &qword_1BF4F7218);
  v52 = *(v53 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v48 - v15;
  v16 = sub_1BF4E8ED4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BF4E8F24();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v50 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF4E8064();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v66 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  v25 = [objc_opt_self() preferredLanguages];
  v26 = sub_1BF4E8BA4();

  *(v1 + 80) = v26;
  v63 = a1;
  sub_1BF38E49C(a1, v68);
  swift_beginAccess();
  sub_1BF4CF928(v68, v1 + 32);
  swift_endAccess();
  v27 = sub_1BF3DC720();
  v49 = "beforeFirstUnlock";
  sub_1BF4E8034();
  (*(v20 + 104))(v50, *MEMORY[0x1E69E8098], v19);
  v68[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A118C(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF4E91A4();
  v28 = v1 + 16;
  v64 = v27;
  *(v1 + 24) = sub_1BF4E8F64();
  if (qword_1EDC96FB0 != -1)
  {
    swift_once();
  }

  v68[0] = *(off_1EDC96FB8 + 2);

  v29 = v54;
  sub_1BF4E8F04();
  v67 = *(v66 + 24);
  v30 = v67;
  v31 = sub_1BF4E8EF4();
  v32 = *(v31 - 8);
  v49 = *(v32 + 56);
  v50 = (v32 + 56);
  v33 = v56;
  (v49)(v56, 1, 1, v31);
  v34 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C60, &qword_1BF4F7230);
  sub_1BF38C8B4(&unk_1EDC9D3D0, &qword_1EBDD9C60, &qword_1BF4F7230);
  v48[2] = sub_1BF3A118C(&qword_1EDC9D718, sub_1BF3DC720);
  v35 = v51;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v33, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v55 = *(v55 + 8);
  (v55)(v29, v65);

  swift_allocObject();
  v36 = v66;
  swift_weakInit();
  v48[1] = MEMORY[0x1E695BE50];
  sub_1BF38C8B4(&qword_1EDC9D430, &qword_1EBDD9C50, &qword_1BF4F7218);

  v37 = v53;
  sub_1BF4E7D14();

  (*(v52 + 8))(v35, v37);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v38 = [objc_opt_self() defaultCenter];
  v39 = *MEMORY[0x1E695D8F0];
  v53 = v28;
  v40 = v57;
  sub_1BF4E9054();

  sub_1BF4E8F04();
  v68[0] = *(v36 + 24);
  v41 = v68[0];
  (v49)(v33, 1, 1, v31);
  sub_1BF3A118C(&qword_1EDC9D6B8, MEMORY[0x1E6969F20]);
  v42 = v41;
  v44 = v59;
  v43 = v60;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v33, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  (v55)(v29, v65);
  (*(v58 + 8))(v40, v44);
  swift_allocObject();
  swift_weakInit();
  v45 = v36;

  sub_1BF38C8B4(&qword_1EDC9D420, &qword_1EBDD9C48, &unk_1BF4F7208);
  v46 = v62;
  sub_1BF4E7D14();

  (*(v61 + 8))(v43, v46);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return v45;
}

uint64_t sub_1BF4CF928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C58, &unk_1BF4F7220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4CF998(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF4CFC8C(a1);
  }

  return result;
}

uint64_t sub_1BF4CFA00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 80);
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_opt_self() preferredLanguages];
  v3 = sub_1BF4E8BA4();

  if (!v1)
  {

LABEL_10:
    type metadata accessor for KeepAliveTransaction();
    swift_initStackObject();
    sub_1BF390264(0x6843656C61636F6CLL, 0xEC00000065676E61);

    if (qword_1EDC9EFF8 != -1)
    {
      swift_once();
    }

    v6 = sub_1BF4E7B54();
    __swift_project_value_buffer(v6, qword_1EDCA6AA8);
    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BF389000, v7, v8, "Locale preferred languages changed - exiting.", v9, 2u);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
    }

    exit(0);
  }

  v4 = sub_1BF4D1C7C(v1, v3);

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF4D0230(0);
  }

  return result;
}

uint64_t static LocaleChangeCoordinator._simulateLocaleChangesForExtensions(_:)()
{
  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  sub_1BF4E7C14();
}

uint64_t sub_1BF4CFC8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v44 - v7;
  swift_beginAccess();
  sub_1BF4D10FC(v1 + 32, v57);
  if (!v58)
  {
    return sub_1BF38C9B4(v57, &qword_1EBDD9C58, &unk_1BF4F7220);
  }

  sub_1BF38E49C(v57, v54);
  sub_1BF38C9B4(v57, &qword_1EBDD9C58, &unk_1BF4F7220);
  v9 = v55;
  v10 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v11 = (*(v10 + 32))(a1, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v53 = MEMORY[0x1E69E7CC0];
  v13 = *(v11 + 16);
  if (v13)
  {
    v44[1] = v2;
    v44[0] = v11;
    v14 = v11 + 32;
    v15 = (v5 + 16);
    v51 = (v5 + 8);
    *&v12 = 138543618;
    v45 = v12;
    v46 = (v5 + 16);
    v47 = a1;
    do
    {
      sub_1BF38E49C(v14, v57);
      v16 = v58;
      v17 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v18 = (*(v17 + 40))(v16, v17);
      MEMORY[0x1BFB58DD0](v18);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();
      v19 = v53;
      if (qword_1EDC9EFF8 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA6AA8);
      sub_1BF38E49C(v57, v54);
      (*v15)(v8, a1, v4);
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E84();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v52 = v50;
        *v23 = v45;
        v49 = v22;
        v24 = v14;
        v25 = v19;
        v26 = v13;
        v27 = v8;
        v28 = v4;
        v30 = v55;
        v29 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        v31 = v30;
        v4 = v28;
        v8 = v27;
        v13 = v26;
        v19 = v25;
        v14 = v24;
        v32 = (*(v29 + 40))(v31, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        *(v23 + 4) = v32;
        v33 = v48;
        *v48 = v32;
        *(v23 + 12) = 2082;
        sub_1BF38C8B4(&qword_1EBDD9C68, &qword_1EBDD8A38, &unk_1BF4EC4D0);
        v34 = sub_1BF4E96A4();
        v36 = v35;
        (*v51)(v8, v4);
        v37 = sub_1BF38D65C(v34, v36, &v52);
        v15 = v46;

        *(v23 + 14) = v37;
        _os_log_impl(&dword_1BF389000, v21, v49, "[Locale] Per app language change detected for extension: %{public}@ (container: %{public}s).", v23, 0x16u);
        sub_1BF38C9B4(v33, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v33, -1, -1);
        v38 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x1BFB5A5D0](v38, -1, -1);
        v39 = v23;
        a1 = v47;
        MEMORY[0x1BFB5A5D0](v39, -1, -1);
      }

      else
      {

        (*v51)(v8, v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      sub_1BF38E49C(v57, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      type metadata accessor for WidgetExtension();
      if (swift_dynamicCast())
      {
        v40 = v52;
        v41 = *(v52 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);
        os_unfair_lock_lock(*(v41 + 16));
        *(v40 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) = 1;
        os_unfair_lock_unlock(*(v41 + 16));
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF4D0230(v19);
}

char *sub_1BF4D0230(unint64_t a1)
{
  v4 = v1;
  v6 = sub_1BF4E7FF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BF4E8064();
  v100 = *(v102 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BF4E7FE4();
  v97 = *(v98 - 1);
  v12 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = (&v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BF4E80A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v21 = v4[9];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_51;
  }

  v90 = v20;
  v91 = &v85 - v18;
  v92 = v19;
  v93 = v17;
  v94 = v7;
  v95 = v6;
  v4[9] = v23;
  if (qword_1EDC9EFF8 != -1)
  {
LABEL_51:
    swift_once();
  }

  v24 = sub_1BF4E7B54();
  v25 = __swift_project_value_buffer(v24, qword_1EDCA6AA8);

  v89 = v25;
  v26 = sub_1BF4E7B34();
  v27 = sub_1BF4E8E84();

  v28 = os_log_type_enabled(v26, v27);
  v103 = v4;
  if (!v28)
  {
    goto LABEL_20;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  aBlock[0] = v3;
  *v2 = 136446210;
  if (!a1)
  {
    v46 = 0xEE00736E6F69736ELL;
    v44 = 0x65747865206C6C61;
    goto LABEL_19;
  }

  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
  {
    v30 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v85 = v3;
      v86 = v2;
      v87 = v27;
      v88 = v26;
      *&v107 = MEMORY[0x1E69E7CC0];
      result = sub_1BF3A31DC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v32 = 0;
      v30 = v107;
      v33 = a1 & 0xC000000000000001;
      v34 = a1;
      do
      {
        if (v33)
        {
          v35 = MEMORY[0x1BFB59570](v32, a1);
        }

        else
        {
          v35 = *(a1 + 8 * v32 + 32);
        }

        v36 = v35;
        v37 = [v35 description];
        v38 = sub_1BF4E8914();
        v40 = v39;

        *&v107 = v30;
        v42 = *(v30 + 16);
        v41 = *(v30 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1BF3A31DC((v41 > 1), v42 + 1, 1);
          v30 = v107;
        }

        ++v32;
        *(v30 + 16) = v42 + 1;
        v43 = v30 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        a1 = v34;
      }

      while (i != v32);
      v26 = v88;
      v27 = v87;
      v2 = v86;
      v3 = v85;
    }

    *&v107 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
    v44 = sub_1BF4E8894();
    v46 = v45;

    v4 = v103;
LABEL_19:
    v47 = sub_1BF38D65C(v44, v46, aBlock);

    *(v2 + 4) = v47;
    _os_log_impl(&dword_1BF389000, v26, v27, "[Locale] Locale changed detected for %{public}s!  Killing...", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
    MEMORY[0x1BFB5A5D0](v2, -1, -1);
LABEL_20:

    if (!a1)
    {
      break;
    }

    if (a1 >> 62)
    {
      v48 = sub_1BF4E9204();
      if (!v48)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_48;
      }
    }

    if (v48 >= 1)
    {
      swift_beginAccess();
      v49 = 0;
      v50 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1BFB59570](v49, a1);
        }

        else
        {
          v51 = *(a1 + 8 * v49 + 32);
        }

        v52 = v51;
        sub_1BF4D10FC((v4 + 4), aBlock);
        if (v111)
        {
          sub_1BF38E49C(aBlock, v104);
          sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
          v53 = v105;
          v54 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          ExtensionManaging.extension(for:)(v52, v53, v54);
          __swift_destroy_boxed_opaque_existential_1Tm(v104);
          if (*(&v108 + 1))
          {
            sub_1BF38E60C(&v107, aBlock);
            sub_1BF38E49C(aBlock, &v107);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1BF38E628(0, v50[2] + 1, 1, v50);
            }

            v56 = v50[2];
            v55 = v50[3];
            if (v56 >= v55 >> 1)
            {
              v50 = sub_1BF38E628((v55 > 1), v56 + 1, 1, v50);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
            v50[2] = v56 + 1;
            sub_1BF38E60C(&v107, &v50[5 * v56 + 4]);
            v4 = v103;
            goto LABEL_27;
          }

          v4 = v103;
        }

        else
        {

          sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
          v107 = 0u;
          v108 = 0u;
          v109 = 0;
        }

        sub_1BF38C9B4(&v107, &unk_1EBDD91B0, &unk_1BF4F0720);
LABEL_27:
        if (v48 == ++v49)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
LABEL_55:
    ;
  }

  swift_beginAccess();
  sub_1BF4D10FC((v4 + 4), aBlock);
  v57 = v111;
  if (v111)
  {
    v58 = v112;
    v59 = __swift_project_boxed_opaque_existential_1(aBlock, v111);
    v60 = *(v57 - 1);
    v61 = *(v60 + 64);
    v62 = MEMORY[0x1EEE9AC00](v59);
    v64 = &v85 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v64, v62);
    sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
    v50 = (*(v58 + 2))(v57, v58);
    (*(v60 + 8))(v64, v57);
LABEL_41:
    v65 = v50[2];
    if (v65)
    {
      goto LABEL_42;
    }
  }

  sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
LABEL_48:
  v50 = MEMORY[0x1E69E7CC0];
  v65 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v65)
  {
  }

LABEL_42:
  v66 = MEMORY[0x1E69E7CC0];
  v67 = (v50 + 4);
  do
  {
    sub_1BF38E49C(v67, aBlock);
    v68 = v111;
    v69 = v112;
    __swift_project_boxed_opaque_existential_1(aBlock, v111);
    (*(v69 + 38))(v68, v69);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v67 += 40;
    --v65;
  }

  while (v65);

  v70 = sub_1BF4E7B34();
  v71 = sub_1BF4E8E84();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1BF389000, v70, v71, "[Locale] Terminations completed!", v72, 2u);
    MEMORY[0x1BFB5A5D0](v72, -1, -1);
  }

  v103 = v103[3];
  v73 = v90;
  sub_1BF4E8084();
  v74 = v96;
  *v96 = 2;
  v75 = v97;
  v76 = v98;
  (*(v97 + 104))(v74, *MEMORY[0x1E69E7F48], v98);
  v77 = v91;
  sub_1BF4E8094();
  (*(v75 + 8))(v74, v76);
  v98 = *(v92 + 8);
  v78 = v93;
  (v98)(v73, v93);
  v79 = swift_allocObject();
  *(v79 + 16) = a1;
  v112 = sub_1BF4D116C;
  v113 = v79;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  v111 = &block_descriptor_16;
  v80 = _Block_copy(aBlock);

  v81 = v99;
  sub_1BF4E8014();
  v104[0] = v66;
  sub_1BF3A118C(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  v82 = v101;
  v83 = v95;
  sub_1BF4E91A4();
  v84 = v103;
  MEMORY[0x1BFB59140](v77, v81, v82, v80);
  _Block_release(v80);

  (*(v94 + 8))(v82, v83);
  (*(v100 + 8))(v81, v102);
  (v98)(v77, v78);
}